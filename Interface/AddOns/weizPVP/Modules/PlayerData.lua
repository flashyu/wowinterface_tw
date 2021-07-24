---------------------------------------------------------------------------------------------------
-- |> DATA PROCESSING
-- 📌 Functions that help acquire and manage data involving the PlayerDB
---------------------------------------------------------------------------------------------------
local _, NS = ...

--: ⬆️ Upvalues :----------------------
local UnitName = UnitName
local GetGuildInfo = GetGuildInfo
local UnitCanAttack = UnitCanAttack
local UnitExists = UnitExists
local UnitClass = UnitClass
local UnitRace = UnitRace
local UnitIsDeadOrGhost = UnitIsDeadOrGhost
local UnitOnTaxi = UnitOnTaxi
local UnitIsPlayer = UnitIsPlayer
local GetUnitName = GetUnitName
local UnitLevel = UnitLevel
local UnitHealth = UnitHealth
local UnitHealthMax = UnitHealthMax
local UnitIsEnemy = UnitIsEnemy
local UnitGUID = UnitGUID
local UnitFactionGroup = UnitFactionGroup
local select = select
local gsub = gsub
local time = time

--> AddNewPlayer <---------------------------------------------------
-- : Updates data in the PlayerActiveCache
-- : Sends data off the Lists to be processed
local function AddNewPlayer(GUID, name)
  -- Update PlayerCache info
  NS.PlayerActiveCache[GUID] = NS.PlayerActiveCache[GUID] or {}
  NS.PlayerActiveCache[GUID].GUID = GUID
  -- NAME
  NS.PlayerActiveCache[GUID].Name = name

  -- DISPLAY NAME
  if NS.Options.Region.ConvertRussianNames == true then
    NS.PlayerActiveCache[GUID].displayName = NS.ConvertString_CyrillicToRomanian(gsub(name, "-(.*)", ""))
  else
    NS.PlayerActiveCache[GUID].displayName = gsub(name, "-(.*)", "")
  end

  -- DISPLAY GUILD
  if NS.Options.Region.ConvertRussianGuilds then
    NS.PlayerActiveCache[GUID].displayGuild = NS.ConvertString_CyrillicToRomanian(NS.PlayerDB[name].G)
  else
    NS.PlayerActiveCache[GUID].displayGuild = NS.PlayerDB[name].G
  end

  -- LEVEL
  NS.PlayerActiveCache[GUID].L = NS.PlayerDB[name].L
  NS.PlayerActiveCache[GUID].E = NS.PlayerDB[name].E
end

--> UpdatePlayerActiveCache <----------------------------------------
function NS.UpdatePlayerActiveCache(name, stealth, dead, role, GUID)
  -- Verify GUID exists
  if not GUID or not name then
    return
  end

  -- : Check for player already in cache
  local newPlayerOnList = false
  if not NS.PlayerActiveCache[GUID] then
    AddNewPlayer(GUID, name)
    newPlayerOnList = true
  end

  -- : STEALTH
  if stealth ~= nil then
    NS.PlayerActiveCache[GUID].Stealth = stealth
  end

  -- : DEAD
  if dead ~= nil then
    NS.PlayerActiveCache[GUID].Dead = dead
    if dead then
      NS.PlayerActiveCache[GUID].Health = 0
    elseif not dead and NS.PlayerActiveCache[GUID].Health == 0 then
      NS.PlayerActiveCache[GUID].Health = 1
    end
  end

  -- : Formatted Guild
  if (not NS.PlayerActiveCache[GUID].displayGuild) and NS.PlayerDB[name].G then
    NS.PlayerActiveCache[GUID].displayGuild = NS.ConvertString_CyrillicToRomanian(NS.PlayerDB[name].G)
  end

  -- : ROLE
  if role ~= nil then
    NS.PlayerActiveCache[GUID].RL = role
    NS.PlayerDB[name].RL = role
  end

  NS.AddPlayerDataToNearby(GUID, newPlayerOnList)
end

--> Static Role Assignment <-----------------------------------------
function NS.ClassRoleAssign(class)
  if class == "ROGUE" or class == "MAGE" or class == "WARLOCK" or class == "HUNTER" then
    return "DAMAGER"
  end
  return nil
end

--> Get Unit Data <--------------------------------------------------
local unitUpdateThreshold = 120 -- 2 minutes between guild/race/level/role checks
function NS.GetUnitData(unit)
  if not unit then
    return
  end
  if UnitExists(unit) and NS.IsUnitValidForTracking(unit) then
    local currentTime = time()
    local name = NS.GetFullNameOfUnit(unit) or nil
    local guid = UnitGUID(unit) or nil
    if name and guid then
      -- : Add player to DB if not found
      if not NS.PlayerDB[name] then
        NS.PlayerDB[name] = {}
        _, NS.PlayerDB[name].C = UnitClass(unit)
        NS.PlayerDB[name].RL = NS.ClassRoleAssign(NS.PlayerDB[name].C)
      end

      NS.PlayerDB[name].T = currentTime

      -- : Update player info if estimated or past update threshold
      if NS.PlayerDB[name].T + unitUpdateThreshold > currentTime or NS.PlayerDB[name].E then
        NS.PlayerDB[name].G = GetGuildInfo(unit)
        NS.PlayerDB[name].L = UnitLevel(unit)
        NS.PlayerDB[name].RC = UnitRace(unit)
      end

      -- : Player On Bars?
      if NS.PlayersOnBars[guid] and NS.PlayerActiveCache[guid] then
        NS.PlayerActiveCache[guid].OnTaxi = UnitOnTaxi(unit) or nil
        NS:UnitHealthEvent(unit)
      end

      NS.PlayerDB[name].E = false
      NS.UpdatePlayerActiveCache(name, nil, nil, nil, guid) -- (name, stealth, dead, role, GUID)
    end
  end
end

--> Remove Friendly Player <-----------------------------------------
local function RemoveFriendlyPlayer(unit)
  local GUID = UnitGUID(unit) or nil

  --: Remove from Cache
  NS.PlayerActiveCache[GUID] = nil

  --: Remove player for lists

  -- Alive
  if NS.ActiveList[GUID] then
    NS.ActiveList[GUID].TimeAdded = 0
    NS.ActiveList[GUID].TimeUpdated = 0
  elseif NS.ActiveDeadList[GUID] then
    -- Dead
    NS.ActiveDeadList[GUID].TimeAdded = 0
    NS.ActiveDeadList[GUID].TimeUpdated = 0
  elseif NS.InactiveList[GUID] then
    -- Inactive
    NS.InactiveList[GUID].TimeAdded = 0
    NS.InactiveList[GUID].TimeUpdated = 0
  elseif NS.InactiveDeadList[GUID] then
    -- Inactive Dead
    NS.InactiveDeadList[GUID].TimeAdded = 0
    NS.InactiveDeadList[GUID].TimeUpdated = 0
  end

  --: Wipe from Current List
  if NS.CurrentNameplates[GUID] then
    NS.CurrentNameplates[GUID] = nil
  end

  --: Refresh list by re-checking timeouts (which we zeroed)
  NS.ManageListTimeouts()
end

--> Is Unit Valid For Tracking <-------------------------------------
function NS.IsUnitValidForTracking(unit)
  --: Is Player?
  if (not unit) or (not UnitIsPlayer(unit)) then -- input check
    return false
  end

  --: "Unknown" check
  -- (The name given to players in edge cases were blizzard does not yet have the name of the unit)
  if GetUnitName(unit) == "Unknown" then
    return false
  end

  --: Can we attack this unit?
  if UnitCanAttack("player", unit) or UnitIsEnemy("player", unit) then -- enemy player check
    return true
  end

  --: Check for previously mind-controlled friendly players
  if NS.PlayerActiveCache[UnitGUID(unit)] and select(1, UnitFactionGroup(unit)) == NS.Player.Faction then
    if not NS.DEBUG then
      RemoveFriendlyPlayer(unit)
    else
      return true
    end
  end
end

-->  Get Full Name of Unit <-----------------------------------------
-- @param unit UnitType
-- @return "name-realm" string
function NS.GetFullNameOfUnit(unit)
  if not unit then -- check for unit
    return
  end

  -- get name
  local name, realm = UnitName(unit, true)
  if not name then
    return
  end

  -- add "-" + realm
  if not realm then
    --  same realm
    return name .. "-" .. NS.PlayerRealm
  else
    --  different realm
    realm = gsub(realm, "[%s%-]", "")
    return name .. "-" .. realm
  end
end

--> UnitHealthCheck <------------------------------------------------
local function UnitHealthCheck(unit, GUID)
  NS.PlayerActiveCache[GUID].Dead = UnitIsDeadOrGhost(unit)
  NS.PlayerActiveCache[GUID].Health = UnitHealth(unit) / UnitHealthMax(unit) * 100
  NS.RefreshBarByGUID(GUID)
end

--> ⚡ : UNIT_HEALTH ---------------------------------------
function NS.UnitHealthEvent(_, unit)
  if NS.IsUnitValidForTracking(unit) and NS.PlayersOnBars[UnitGUID(unit)] then
    UnitHealthCheck(unit, UnitGUID(unit))
  end
end
