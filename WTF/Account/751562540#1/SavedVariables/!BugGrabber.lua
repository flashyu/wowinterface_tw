
BugGrabberDB = {
	["session"] = 26,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "Interface\\AddOns\\GearScoreLite\\GearScoreLite-0.1 (based on 3x04y05).lua:300: attempt to index a nil value",
			["time"] = "2022/04/03 23:56:11",
			["locals"] = "GearScore = 3547\nItemLevel = 132\nRed = 0.377430\nBlue = 0.983590\nGreen = 0.379660\ni = 0\nTooltipFound = 0\n(for index) = 4\n(for limit) = 6\n(for step) = 1\ni = 4\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"\"\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index a nil value\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\GearScoreLite\\GearScoreLite-0.1 (based on 3x04y05).lua\"]:300: in function `GearScore_UpdateGTData'\n[string \"@Interface\\AddOns\\GearScoreLite\\GearScoreLite-0.1 (based on 3x04y05).lua\"]:276: in function <Interface\\AddOns\\GearScoreLite\\GearScoreLite.lua:269>",
			["session"] = 22,
			["counter"] = 46,
		}, -- [1]
		{
			["message"] = "...e\\AddOns\\TradeSkillMaster\\Core\\UI\\AuctionUI\\Core.lua:232: assertion failed!",
			["time"] = "2022/04/05 19:27:28",
			["locals"] = "(*temporary) = false\n",
			["stack"] = "[string \"=[C]\"]: in function `assert'\n[string \"@Interface\\AddOns\\TradeSkillMaster\\Core\\UI\\AuctionUI\\Core.lua\"]:232: in function `callback'\n[string \"@Interface\\AddOns\\TradeSkillMaster\\LibTSM\\Util\\Event.lua\"]:85: in function `ProcessEvent'\n[string \"@Interface\\AddOns\\TradeSkillMaster\\LibTSM\\Util\\Event.lua\"]:101: in function <...erface\\AddOns\\TradeSkillMaster\\LibTSM\\Util\\Event.lua:93>\n[string \"=[C]\"]: in function `CloseAuctionHouse'\n[string \"@Interface\\AddOns\\aux-addon\\frame.lua\"]:29: in function <Interface\\AddOns\\aux-addon\\frame.lua:29>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\AddOns\\aux-addon\\frame.lua\"]:54: in function <Interface\\AddOns\\aux-addon\\frame.lua:54>",
			["session"] = 22,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "...erface\\AddOns\\TradeSkillMaster\\LibTSM\\Util\\Event.lua:97: assertion failed!",
			["time"] = "2022/04/05 19:31:52",
			["locals"] = "(*temporary) = false\n",
			["stack"] = "[string \"=[C]\"]: in function `assert'\n[string \"@Interface\\AddOns\\TradeSkillMaster\\LibTSM\\Util\\Event.lua\"]:97: in function <...erface\\AddOns\\TradeSkillMaster\\LibTSM\\Util\\Event.lua:93>",
			["session"] = 22,
			["counter"] = 37,
		}, -- [3]
	},
}
