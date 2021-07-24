---------------------------------------------------------------------------------------------------
--|> ZONE DETECTION
---------------------------------------------------------------------------------------------------
local _, NS = ...

--: ⬆️ Upvalues :----------------------
local select = select
local wipe = wipe
local C_Timer_After = C_Timer.After
local IsInInstance = IsInInstance
local GetZoneText = GetZoneText
local GetZonePVPInfo = GetZonePVPInfo
local GetAddOnMetadata = GetAddOnMetadata
local StaticPopup_Show = StaticPopup_Show

--: ZONES AND INSTANCES :--------------
NS.Zone = {}
NS.Zone.instance = ""
NS.Zone.pvpType = ""
NS.Zone.InInstance = nil
NS.ZoneKnown = nil

NS.LoadingScreenActive = true

--> Check for Valid (PVP) Instance <---------------------------------
local function CheckValidInstance()
  local state = false
  if NS.Zone.instance == "pvp" and NS.Options.Addon.EnabledInBattlegrounds then
    state = true
  end
  if NS.Zone.instance == "arena" and NS.Options.Addon.EnabledInArena then
    state = true
  end
  return state
end

--> Check for Valid World Zone <-------------------------------------
local function CheckValidWorldZone()
  -- Checking for Valid WPVP Zone
  if NS.Zone.instance ~= "none" then
    return
  end
  if NS.Options.Addon.DisabledInSanctuary and NS.Zone.pvpType == "sanctuary" then
    return
  else
    return true
  end
end

--> Get Zone Type <--------------------------------------------------
local gettingZone = nil
local inInstance = nil
local reattemptInQueue = nil
local FirstLogin = true

local function GetZoneType()
  -- Is initializing still?
  if NS.addonInitializing then
    if not reattemptInQueue then
      reattemptInQueue = true
      C_Timer_After(0.2, GetZoneType)
      NS.ZoneKnown = nil
    end
    return
  end

  -- if GetZoneText() == "" then
  if (GetZoneText() == "" or NS.LoadingScreenActive) then
    if not reattemptInQueue then
      reattemptInQueue = true
      C_Timer_After(0.2, GetZoneType)
      NS.ZoneKnown = nil
      return
    end
  end

  reattemptInQueue = nil
  NS.Zone.pvpType = select(1, GetZonePVPInfo())
  NS.Zone.InInstance, NS.Zone.instance = IsInInstance()
  if NS.Zone.InInstance ~= inInstance then
    if FirstLogin then
      FirstLogin = nil
    else
      NS.ClearListData()
    end
    inInstance = NS.Zone.InInstance
  end
  if CheckValidInstance() then
    weizPVP:OnEnable()
  elseif CheckValidWorldZone() then
    if NS.WOW_BCC then
      weizPVP:OnEnable()
    else
      NS.WarModeChanged()
    end
  else
    weizPVP:OnDisable()
  end
  gettingZone = nil
  NS.ZoneKnown = true
end

--> Get PVP Zone <---------------------------------------------------
function NS.GetPVPZone()
  if gettingZone then
    return
  end
  gettingZone = true
  GetZoneType()
end

--> ⚡ LOADING_SCREEN_ENABLED ------------------------------
function NS.LoadingScreenEnabled()
  NS.ZoneKnown = nil
  NS.LoadingScreenActive = true
end

--> ⚡ LOADING_SCREEN_DISABLED -----------------------------
function NS.LoadingScreenDisabled()
  NS.LoadingScreenActive = nil
  NS.ZoneKnown = nil
  C_Timer_After(0.2, GetZoneType)
end

--> ⚡ Entering Battleground Instance ----------------------
function NS.PlayerEnteringBattlegroundEvent()
  NS.GetPVPZone()
  wipe(NS.CurrentNameplates)
end

--> ⚡ ZONE_CHANGED_NEW_AREA -------------------------------
function NS.ZoneChangedNewAreaEvent()
  NS.GetPVPZone()
end

--> ⚡ AREA_POIS_UPDATED -----------------------------------
function NS.AreaPositionUpdated()
  NS.GetPVPZone()
end

--> ⚡ Player Entering World -------------------------------
function NS.PlayerEnteringWorldEvent()
  if NS.addonInitializing then -- check if this is the first 'entering world' run since init was ran
    NS.PrintAddonMessage(NS.Constants.AddonString .. " |cffcccccc" .. GetAddOnMetadata("weizPVP", "Version") .. "|r : |cff37ff37Initialized!|r")
    NS.addonInitializing = nil
  end

  -- ENABLE
  NS.EnableLDB()
  wipe(NS.CurrentNameplates)
  NS.Crosshair.NewTarget() -- check for target
  if NS.databaseReset then -- database update check for pre-1.9.0
    C_Timer_After(
      1,
      function()
        NS.databaseReset = nil
        StaticPopup_Show("WEIZPVP_UPGRADE_DB_RESET")
        NS.PrintAddonMessage("|cffFFA200Saved options and data have been reset!|r")
        NS.PrintAddonMessage("The database reset was required to resolve potential issues with the new KOS features and player tracking, especially for players that play on multiple realms.")
        NS.PrintAddonMessage("Database updates in the future will migrate all your data and settings; No more resets will be needed.")
      end
    )
  end
  NS.CoreUI.Initialize()
  NS.SetWindowSettings()
  gettingZone = true
  GetZoneType()
end
