
BugGrabberDB = {
	["session"] = 50,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "...e\\AddOns\\TradeSkillMaster\\Core\\UI\\AuctionUI\\Core.lua:232: assertion failed!",
			["time"] = "2022/04/05 19:27:28",
			["locals"] = "(*temporary) = false\n",
			["stack"] = "[string \"=[C]\"]: in function `assert'\n[string \"@Interface\\AddOns\\TradeSkillMaster\\Core\\UI\\AuctionUI\\Core.lua\"]:232: in function `callback'\n[string \"@Interface\\AddOns\\TradeSkillMaster\\LibTSM\\Util\\Event.lua\"]:85: in function `ProcessEvent'\n[string \"@Interface\\AddOns\\TradeSkillMaster\\LibTSM\\Util\\Event.lua\"]:101: in function <...erface\\AddOns\\TradeSkillMaster\\LibTSM\\Util\\Event.lua:93>\n[string \"=[C]\"]: in function `CloseAuctionHouse'\n[string \"@Interface\\AddOns\\aux-addon\\frame.lua\"]:29: in function <Interface\\AddOns\\aux-addon\\frame.lua:29>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\AddOns\\aux-addon\\frame.lua\"]:54: in function <Interface\\AddOns\\aux-addon\\frame.lua:54>",
			["session"] = 22,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "...erface\\AddOns\\TradeSkillMaster\\LibTSM\\Util\\Event.lua:97: assertion failed!",
			["time"] = "2022/04/05 19:31:52",
			["locals"] = "(*temporary) = false\n",
			["stack"] = "[string \"=[C]\"]: in function `assert'\n[string \"@Interface\\AddOns\\TradeSkillMaster\\LibTSM\\Util\\Event.lua\"]:97: in function <...erface\\AddOns\\TradeSkillMaster\\LibTSM\\Util\\Event.lua:93>",
			["session"] = 22,
			["counter"] = 37,
		}, -- [2]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] 插件 'ElvUI' 嘗試調用保護功能 'PartyMemberFrame1:Hide()'。",
			["time"] = "2022/04/07 01:20:15",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\AddOns\\ElvUI\\Core\\Modules\\UnitFrames\\UnitFrames.lua\"]:1267: in function <...\\AddOns\\ElvUI\\Core\\Modules\\UnitFrames\\UnitFrames.lua:1257>\n[string \"@Interface\\AddOns\\ElvUI\\Core\\Modules\\UnitFrames\\UnitFrames.lua\"]:1343: in function `DisableBlizzard'\n[string \"@Interface\\AddOns\\ElvUI\\Core\\Modules\\UnitFrames\\UnitFrames.lua\"]:1180: in function `UpdateAllHeaders'\n[string \"@Interface\\AddOns\\ElvUI\\Core\\Modules\\UnitFrames\\UnitFrames.lua\"]:961: in function `HandleSmartVisibility'\n[string \"@Interface\\AddOns\\ElvUI\\Core\\Modules\\UnitFrames\\UnitFrames.lua\"]:966: in function `?'\n[string \"@Interface\\AddOns\\ElvUI\\Libraries\\Core\\Ace\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:119: in function <...Core\\Ace\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\ElvUI\\Libraries\\Core\\Ace\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:29: in function <...Core\\Ace\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n[string \"@Interface\\AddOns\\ElvUI\\Libraries\\Core\\Ace\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:64: in function `Fire'\n[string \"@Interface\\AddOns\\ElvUI\\Libraries\\Core\\Ace\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:120: in function <...vUI\\Libraries\\Core\\Ace\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 29,
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "Interface\\AddOns\\GearScoreLite\\GearScoreLite-0.1 (based on 3x04y05).lua:300: attempt to index a nil value",
			["time"] = "2022/04/03 23:56:11",
			["locals"] = "GearScore = 3547\nItemLevel = 132\nRed = 0.377430\nBlue = 0.983590\nGreen = 0.379660\ni = 0\nTooltipFound = 0\n(for index) = 4\n(for limit) = 6\n(for step) = 1\ni = 4\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"\"\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index a nil value\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\GearScoreLite\\GearScoreLite-0.1 (based on 3x04y05).lua\"]:300: in function `GearScore_UpdateGTData'\n[string \"@Interface\\AddOns\\GearScoreLite\\GearScoreLite-0.1 (based on 3x04y05).lua\"]:276: in function <Interface\\AddOns\\GearScoreLite\\GearScoreLite.lua:269>",
			["session"] = 42,
			["counter"] = 93,
		}, -- [4]
	},
}
