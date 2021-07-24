-----------------------------------------------------------
--|> LUT: TBC SPECS
-----------------------------------------------------------
local _, NS = ...

--> LUT Specs BCC: Initialize <--------------------------------------
function NS.LUT_Specs_BCC_Initialize()
  --: Project Check :------------------
  if not WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC then
    return
  end

  --: ROLE LUT :-------------------------
  local Role_LUT = {
    -- HEALERS
    -------------------------------------------------------
    -- Druid: Restoration
    [18562] = "HEALER", -- SwiftMend
    [33891] = "HEALER", -- Tree of Life
    -- Paladin: Holy
    [31842] = "HEALER", -- Divine Illumination
    [20473] = "HEALER", -- Holy Shock 1
    [20929] = "HEALER", -- Holy Shock 2
    [20930] = "HEALER", -- Holy Shock 3
    [27174] = "HEALER", -- Holy Shock 4
    [33072] = "HEALER", -- Holy Shock 5
    [31834] = "HEALER", -- Lights Grace
    -- Priest: Holy
    [00724] = "HEALER", -- Lightwell
    [34861] = "HEALER", -- Circle of Healing 1
    [34863] = "HEALER", -- Circle of Healing 2
    [34864] = "HEALER", -- Circle of Healing 3
    [34865] = "HEALER", -- Circle of Healing 4
    [34866] = "HEALER", -- Circle of Healing 5
    -- Shaman: Restoration
    [16190] = "HEALER", -- Mana Tide Totem
    [16178] = "HEALER", -- Purification
    [29206] = "HEALER", -- Healing way
    [001064] = "HEALER", -- Chain Heal
    [974] = "HEALER", -- Earth Shield 1
    [32593] = "HEALER", -- Earth Shield 2
    [32594] = "HEALER", -- Earth Shield 3
    -- DAMAGERS
    -------------------------------------------------------
    -- Paladin: Protection
    [31935] = "TANK", -- Avenger's Shield 1
    [32699] = "TANK", -- Avenger's Shield 2
    [32700] = "TANK", -- Avenger's Shield 3
    [642] = "TANK", -- Divine Shield 1
    [1020] = "TANK", -- Divine Shield 2
    [20925] = "TANK", -- Holy Shield 1
    [20927] = "TANK", -- Holy Shield 2
    [20928] = "TANK", -- Holy Shield 3
    [27179] = "TANK", -- Holy Shield 4
    [41021] = "TANK", -- Improved Holy Shield
    [31850] = "TANK", -- Ardent Defender
    [31848] = "TANK", -- Sacred Duty
    -- Warrior: Protection
    [20243] = "TANK", -- Devastate 1
    [30016] = "TANK", -- Devastate 2
    [30022] = "TANK", -- Devastate 3
    [29140] = "TANK", -- Vitality 1
    [29143] = "TANK", -- Vitality 2
    [29144] = "TANK", -- Vitality 3
    [29145] = "TANK", -- Vitality 4
    [29146] = "TANK", -- Vitality 5
    [29787] = "TANK", -- Focused Rage
    [23922] = "TANK", -- Shield Slam
    [29593] = "TANK", -- Improved Defensive Stance 1
    [29594] = "TANK", -- Improved Defensive Stance 2
    [29595] = "TANK", -- Improved Defensive Stance 3
    [29598] = "TANK", -- Shield Mastery 1
    [29599] = "TANK", -- Shield Mastery 2
    [29600] = "TANK" -- Shield Mastery 3
  }

  --> GET ROLE FROM SpellID <----------------------------------------
  function NS.GetRoleFromSpellId(spellId)
    return Role_LUT[spellId] or nil
  end
end
