
BugGrabberDB = {
	["session"] = 8,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "...e\\AddOns\\TradeSkillMaster\\LibTSM\\Util\\ItemString.lua:261: bad argument #1 to 'strmatch' (string expected, got nil)",
			["time"] = "2022/04/03 20:52:59",
			["locals"] = "(*temporary) = nil\n(*temporary) = \"^i:[%-:0-9%+i]+$\"\n(*temporary) = \"string expected, got nil\"\n",
			["stack"] = "[string \"=[C]\"]: in function `strmatch'\n[string \"@Interface\\AddOns\\TradeSkillMaster\\LibTSM\\Util\\ItemString.lua\"]:261: in function `IsItem'\n[string \"@Interface\\AddOns\\TradeSkillMaster\\LibTSM\\Util\\ItemString.lua\"]:163: in function `ToLevel'\n[string \"@Interface\\AddOns\\TradeSkillMaster\\LibTSM\\Service\\Inventory.lua\"]:136: in function <...AddOns\\TradeSkillMaster\\LibTSM\\Service\\Inventory.lua:135>\n[string \"=(tail call)\"]: ?\n[string \"@Interface\\AddOns\\TradeSkillMaster\\Core\\UI\\Elements\\CraftingMatList.lua\"]:161: in function <...radeSkillMaster\\Core\\UI\\Elements\\CraftingMatList.lua:151>\n[string \"=(tail call)\"]: ?\n[string \"=(tail call)\"]: ?\n[string \"=(tail call)\"]: ?\n[string \"=(tail call)\"]: ?\n[string \"@Interface\\AddOns\\TradeSkillMaster\\Core\\UI\\Util\\TableRow.lua\"]:190: in function <...ce\\AddOns\\TradeSkillMaster\\Core\\UI\\Util\\TableRow.lua:180>\n[string \"=(tail call)\"]: ?\n...\n[string \"@Interface\\AddOns\\TradeSkillMaster\\External\\LibTSMClass\\LibTSMClass-1.lua\"]:208: in function `Draw'\n[string \"@Interface\\AddOns\\TradeSkillMaster\\Core\\UI\\Elements\\Frame.lua\"]:364: in function <...e\\AddOns\\TradeSkillMaster\\Core\\UI\\Elements\\Frame.lua:234>\n[string \"@Interface\\AddOns\\TradeSkillMaster\\External\\LibTSMClass\\LibTSMClass-1.lua\"]:208: in function `Draw'\n[string \"@Interface\\AddOns\\TradeSkillMaster\\Core\\UI\\Elements\\ApplicationFrame.lua\"]:429: in function <...adeSkillMaster\\Core\\UI\\Elements\\ApplicationFrame.lua:390>\n[string \"@Interface\\AddOns\\TradeSkillMaster\\External\\LibTSMClass\\LibTSMClass-1.lua\"]:208: in function `Draw'\n[string \"@Interface\\AddOns\\TradeSkillMaster\\Core\\UI\\Elements\\LargeApplicationFrame.lua\"]:141: in function <...illMaster\\Core\\UI\\Elements\\LargeApplicationFrame.lua:140>\n[string \"@Interface\\AddOns\\TradeSkillMaster\\External\\LibTSMClass\\LibTSMClass-1.lua\"]:208: in function `Draw'\n[string \"@Interface\\AddOns\\TradeSkillMaster\\Core\\UI\\Elements\\ApplicationFrame.lua\"]:550: in function `?'\n[string \"@Interface\\AddOns\\TradeSkillMaster\\LibTSM\\Util\\ScriptWrapper.lua\"]:86: in function `ScriptHandlerCommon'\n[string \"@Interface\\AddOns\\TradeSkillMaster\\LibTSM\\Util\\ScriptWrapper.lua\"]:37: in function <...ddOns\\TradeSkillMaster\\LibTSM\\Util\\ScriptWrapper.lua:36>",
			["session"] = 4,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] 插件 'ElvUI' 嘗試調用保護功能 'PartyMemberFrame1:Hide()'。",
			["time"] = "2022/04/03 19:47:38",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\AddOns\\ElvUI\\Core\\Modules\\UnitFrames\\UnitFrames.lua\"]:1267: in function <...\\AddOns\\ElvUI\\Core\\Modules\\UnitFrames\\UnitFrames.lua:1257>\n[string \"@Interface\\AddOns\\ElvUI\\Core\\Modules\\UnitFrames\\UnitFrames.lua\"]:1343: in function `DisableBlizzard'\n[string \"@Interface\\AddOns\\ElvUI\\Core\\Modules\\UnitFrames\\UnitFrames.lua\"]:1180: in function `UpdateAllHeaders'\n[string \"@Interface\\AddOns\\ElvUI\\Core\\Modules\\UnitFrames\\UnitFrames.lua\"]:961: in function `HandleSmartVisibility'\n[string \"@Interface\\AddOns\\ElvUI\\Core\\Modules\\UnitFrames\\UnitFrames.lua\"]:966: in function `?'\n[string \"@Interface\\AddOns\\ElvUI\\Libraries\\Core\\Ace\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:119: in function <...Core\\Ace\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\ElvUI\\Libraries\\Core\\Ace\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:29: in function <...Core\\Ace\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n[string \"@Interface\\AddOns\\ElvUI\\Libraries\\Core\\Ace\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:64: in function `Fire'\n[string \"@Interface\\AddOns\\ElvUI\\Libraries\\Core\\Ace\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:120: in function <...vUI\\Libraries\\Core\\Ace\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 7,
			["counter"] = 2,
		}, -- [2]
		{
			["message"] = "Interface\\AddOns\\GearScoreLite\\GearScoreLite-0.1 (based on 3x04y05).lua:300: attempt to index a nil value",
			["time"] = "2022/04/03 15:14:50",
			["locals"] = "GearScore = 2966\nItemLevel = 117\nRed = 0.004080\nBlue = 0.966000\nGreen = 0.517000\ni = 0\nTooltipFound = 0\n(for index) = 4\n(for limit) = 4\n(for step) = 1\ni = 4\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"\"\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index a nil value\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\GearScoreLite\\GearScoreLite-0.1 (based on 3x04y05).lua\"]:300: in function `GearScore_UpdateGTData'\n[string \"@Interface\\AddOns\\GearScoreLite\\GearScoreLite-0.1 (based on 3x04y05).lua\"]:276: in function <Interface\\AddOns\\GearScoreLite\\GearScoreLite.lua:269>",
			["session"] = 7,
			["counter"] = 328,
		}, -- [3]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] 插件 'ItemRack' 嘗試調用保護功能 'AutoEquipCursorItem()'。",
			["time"] = "2022/04/05 01:52:27",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `AutoEquipCursorItem'\n[string \"*:OnMouseUp\"]:4: in function `oldCharacterModelFrame_OnMouseUp'\n[string \"@Interface\\AddOns\\ItemRack\\ItemRackButtons.lua\"]:105: in function <Interface\\AddOns\\ItemRack\\ItemRackButtons.lua:101>",
			["session"] = 7,
			["counter"] = 1,
		}, -- [4]
		{
			["message"] = "[string \"Error in: 2.6/2.6 同速\"]:5: attempt to perform arithmetic on field 'expirationTime' (a nil value)",
			["time"] = "2022/04/03 15:56:05",
			["stack"] = "[string \"=[C]\"]: in function `xpcall'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:611: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:537>\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:747: in function `ScanEventsInternal'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:708: in function `ScanEvents'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:1433: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:1431>",
			["session"] = 7,
			["counter"] = 1280,
		}, -- [5]
		{
			["message"] = "Interface\\AddOns\\weizPVP\\Modules\\PlayerData.lua:87: attempt to index field '?' (a nil value)",
			["time"] = "2022/04/05 01:38:00",
			["stack"] = "[string \"@Interface\\AddOns\\weizPVP\\Modules\\PlayerData.lua\"]:87: in function `UpdatePlayerActiveCache'\n[string \"@Interface\\AddOns\\weizPVP\\Modules\\CombatLog.lua\"]:142: in function <Interface\\AddOns\\weizPVP\\Modules\\CombatLog.lua:139>\n[string \"@Interface\\AddOns\\weizPVP\\Modules\\CombatLog.lua\"]:223: in function <Interface\\AddOns\\weizPVP\\Modules\\CombatLog.lua:221>\n[string \"@Interface\\AddOns\\weizPVP\\Modules\\CombatLog.lua\"]:230: in function <Interface\\AddOns\\weizPVP\\Modules\\CombatLog.lua:228>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\ElvUI\\Libraries\\Core\\Ace\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:29: in function <...Core\\Ace\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n[string \"@Interface\\AddOns\\ElvUI\\Libraries\\Core\\Ace\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:64: in function `Fire'\n[string \"@Interface\\AddOns\\ElvUI\\Libraries\\Core\\Ace\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:120: in function <...vUI\\Libraries\\Core\\Ace\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 7,
			["counter"] = 2,
		}, -- [6]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] 插件 'Questie' 嘗試調用保護功能 'Questie_TrackedQuests:ClearAllPoints()'。",
			["time"] = "2022/04/05 15:10:31",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `ClearAllPoints'\n[string \"@Interface\\AddOns\\Questie\\Modules\\Tracker\\QuestieTracker.lua\"]:610: in function `Update'\n[string \"@Interface\\AddOns\\Questie\\Modules\\Tracker\\QuestieTracker.lua\"]:1243: in function `Update'\n[string \"@Interface\\AddOns\\Questie\\Modules\\Tracker\\QuestieTracker.lua\"]:198: in function <...ce\\AddOns\\Questie\\Modules\\Tracker\\QuestieTracker.lua:162>",
			["session"] = 8,
			["counter"] = 1,
		}, -- [7]
	},
}
