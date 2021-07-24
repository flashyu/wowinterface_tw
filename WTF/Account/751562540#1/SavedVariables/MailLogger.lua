
MailLoggerDB = {
	["IgnoreItems"] = {
		["魔法肉桂麵包"] = true,
		["魔法晶水"] = true,
		["極效治療石"] = true,
	},
	["Config"] = {
		["ShowMinimapIcon"] = true,
		["MinimapIconAngle"] = 345,
		["SendToGroup"] = false,
		["LogTrades"] = true,
		["SelectName"] = "牧原股份",
		["PreventTrade"] = false,
		["EnableCalendar"] = true,
		["OutputFramePos"] = {
			"RIGHT", -- [1]
			true, -- [2]
			"RIGHT", -- [3]
			-20, -- [4]
			0, -- [5]
		},
		["LogDays"] = 90,
		["AltList"] = {
			["牧原股份"] = true,
		},
		["LogEverything"] = false,
	},
	["TradeLog"] = {
		{
			["PlayerName"] = "牧原股份",
			["TargetName"] = "特變電工",
			["ReceiveMoney"] = 0,
			["GiveItems"] = {
			},
			["GiveMoney"] = 0,
			["Location"] = "莫高雷",
			["Date"] = "2021-07-23",
			["Time"] = "03:13:22",
			["ReceiveItems"] = {
			},
		}, -- [1]
		{
			["TargetName"] = "特變電工",
			["PlayerName"] = "牧原股份",
			["Date"] = "2021-07-23",
			["ReceiveMoney"] = 6000000,
			["Time"] = "03:13:22",
			["GiveMoney"] = 0,
			["Location"] = "莫高雷",
			["GiveItems"] = {
			},
			["Result"] = "completed",
			["ReceiveItems"] = {
			},
		}, -- [2]
	},
}
