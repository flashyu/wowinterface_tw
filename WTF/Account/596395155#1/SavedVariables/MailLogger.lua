
MailLoggerDB = {
	["IgnoreItems"] = {
		["魔法肉桂面包"] = true,
		["特效治疗石"] = true,
		["魔法晶水"] = true,
	},
	["Config"] = {
		["ShowMinimapIcon"] = true,
		["MinimapIconAngle"] = 345,
		["SendToGroup"] = false,
		["LogTrades"] = true,
		["SelectName"] = "骑风",
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
			["骑风"] = true,
		},
		["LogEverything"] = false,
	},
	["TradeLog"] = {
		{
			["TargetName"] = "帅的不敢出门",
			["PlayerName"] = "骑风",
			["ReceiveMoney"] = 0,
			["Time"] = "00:00:15",
			["GiveMoney"] = 0,
			["Location"] = "泰罗卡森林",
			["GiveItems"] = {
			},
			["Date"] = "2022-09-25",
			["ReceiveItems"] = {
			},
		}, -- [1]
		{
			["TargetName"] = "帅的不敢出门",
			["PlayerName"] = "骑风",
			["Date"] = "2022-09-25",
			["ReceiveMoney"] = 0,
			["Time"] = "00:00:15",
			["GiveMoney"] = 50000,
			["Location"] = "泰罗卡森林",
			["GiveItems"] = {
			},
			["Result"] = "completed",
			["ReceiveItems"] = {
			},
		}, -- [2]
	},
}
