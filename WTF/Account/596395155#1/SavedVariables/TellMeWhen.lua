
TellMeWhenDB = {
	["profileKeys"] = {
		["骑风 - 祈福"] = "骑风 - 祈福",
	},
	["global"] = {
		["TextLayouts"] = {
			["icon1"] = {
				{
				}, -- [1]
				{
				}, -- [2]
			},
			["bar2"] = {
				{
				}, -- [1]
				{
				}, -- [2]
			},
		},
		["HelpSettings"] = {
			["CNDT_ANDOR_FIRSTSEE"] = true,
			["CNDT_PARENTHESES_FIRSTSEE"] = true,
			["SCROLLBAR_DROPDOWN"] = false,
			["ICON_DURS_FIRSTSEE"] = true,
			["SUG_FIRSTHELP"] = true,
		},
	},
	["Version"] = 92500,
	["profiles"] = {
		["骑风 - 祈福"] = {
			["Locked"] = true,
			["Version"] = 92500,
			["NumGroups"] = 2,
			["TextureName"] = "DGround",
			["Groups"] = {
				{
					["Scale"] = 1.388536334037781,
					["Rows"] = 6,
					["GUID"] = "TMW:group:1TRAskZtesOq",
					["Columns"] = 6,
					["Name"] = "circle",
					["Icons"] = {
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "野性印记",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "BUFFDUR",
									["Name"] = "野性印记",
								}, -- [1]
								{
									["Type"] = "BUFFDUR",
									["Name"] = "野性赐福",
								}, -- [2]
								{
									["Type"] = "STANCE",
									["Name"] = "熊形态; 巨熊形态",
									["Level"] = 1,
								}, -- [3]
								["n"] = 3,
							},
							["ClockGCD"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1UTa96p3bYOQ",
							["Enabled"] = true,
						}, -- [1]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "迅捷治愈",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "REACT",
									["Unit"] = "target",
									["Level"] = 2,
								}, -- [1]
								{
									["Type"] = "HEALTH",
									["Operator"] = "<",
									["Unit"] = "target",
									["Level"] = 30,
								}, -- [2]
								{
									["Type"] = "STANCE",
									["Name"] = "熊形态; 猎豹形态; 巨熊形态",
									["Level"] = 1,
								}, -- [3]
								{
									["Type"] = "PTSINTAL",
									["Operator"] = ">",
									["Name"] = "迅捷治愈",
								}, -- [4]
								{
									["Type"] = "SPELLCD",
									["Name"] = "迅捷治愈",
								}, -- [5]
								{
									["Type"] = "BUFFDUR",
									["Operator"] = ">",
									["Unit"] = "target",
									["Name"] = "回春术",
									["PrtsBefore"] = 1,
								}, -- [6]
								{
									["Type"] = "BUFFDUR",
									["PrtsAfter"] = 1,
									["Operator"] = ">",
									["Unit"] = "target",
									["AndOr"] = "OR",
									["Name"] = "愈合",
								}, -- [7]
								["n"] = 7,
							},
							["ClockGCD"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1UkxxRbWTzrE",
							["Enabled"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["ManaCheck"] = true,
						}, -- [2]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "自然迅捷",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "REACT",
									["Unit"] = "target",
									["Level"] = 2,
								}, -- [1]
								{
									["Type"] = "HEALTH",
									["Operator"] = "<",
									["Unit"] = "target",
									["Level"] = 30,
								}, -- [2]
								{
									["Type"] = "STANCE",
									["Name"] = "熊形态; 猎豹形态; 巨熊形态",
									["Level"] = 1,
								}, -- [3]
								{
									["Type"] = "PTSINTAL",
									["Operator"] = ">",
									["Name"] = "自然迅捷",
								}, -- [4]
								{
									["Type"] = "SPELLCD",
									["Name"] = "自然迅捷",
								}, -- [5]
								["n"] = 5,
							},
							["ClockGCD"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1UkxxQ1DvSrl",
							["Enabled"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["ManaCheck"] = true,
						}, -- [3]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "治疗之触",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "REACT",
									["Unit"] = "target",
									["Level"] = 2,
								}, -- [1]
								{
									["Type"] = "STANCE",
									["Name"] = "熊形态; 猎豹形态; 巨熊形态",
									["Level"] = 1,
								}, -- [2]
								{
									["Type"] = "LASTCAST",
									["Name"] = "自然迅捷",
								}, -- [3]
								["n"] = 3,
							},
							["ClockGCD"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1UkxzeXeXsop",
							["Enabled"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["ManaCheck"] = true,
						}, -- [4]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "野性成长",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "REACT",
									["Unit"] = "target",
									["Level"] = 2,
								}, -- [1]
								{
									["Type"] = "STANCE",
									["Name"] = "熊形态; 猎豹形态; 巨熊形态",
									["Level"] = 1,
								}, -- [2]
								{
									["Type"] = "PTSINTAL",
									["Operator"] = ">",
									["Name"] = "野性成长",
								}, -- [3]
								{
									["Type"] = "SPELLCD",
									["Name"] = "野性成长",
								}, -- [4]
								["n"] = 4,
							},
							["ClockGCD"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["Enabled"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["ManaCheck"] = true,
						}, -- [5]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "回春术",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "REACT",
									["Unit"] = "target",
									["Level"] = 2,
								}, -- [1]
								{
									["Type"] = "HEALTH",
									["Operator"] = "<",
									["Unit"] = "target",
									["Level"] = 95,
								}, -- [2]
								{
									["Type"] = "BUFFDUR",
									["Unit"] = "target",
									["Name"] = "回春术",
								}, -- [3]
								{
									["Type"] = "STANCE",
									["Name"] = "熊形态; 猎豹形态; 巨熊形态",
									["Level"] = 1,
								}, -- [4]
								["n"] = 4,
							},
							["ClockGCD"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1TRxxH18qrmw",
							["Enabled"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["ManaCheck"] = true,
						}, -- [6]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "愈合",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "REACT",
									["Unit"] = "target",
									["Level"] = 2,
								}, -- [1]
								{
									["Type"] = "BUFFDUR",
									["Checked"] = true,
									["Unit"] = "target",
									["Name"] = "愈合",
								}, -- [2]
								{
									["Type"] = "STANCE",
									["Name"] = "熊形态; 猎豹形态; 巨熊形态",
									["Level"] = 1,
								}, -- [3]
								["n"] = 3,
							},
							["ClockGCD"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1TRxxH1OZ5m6",
							["Enabled"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										"", -- [1]
									},
								},
							},
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["ManaCheck"] = true,
						}, -- [7]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "生命绽放",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "REACT",
									["Unit"] = "target",
									["Level"] = 2,
								}, -- [1]
								{
									["Type"] = "HEALTH",
									["Operator"] = "<",
									["Unit"] = "target",
									["Level"] = 95,
								}, -- [2]
								{
									["Type"] = "STANCE",
									["Name"] = "熊形态; 猎豹形态; 巨熊形态",
									["Level"] = 1,
								}, -- [3]
								{
									["Type"] = "BUFFDUR",
									["Checked"] = true,
									["Unit"] = "target",
									["Name"] = "生命绽放",
									["PrtsBefore"] = 1,
								}, -- [4]
								{
									["Type"] = "BUFFDUR",
									["Checked"] = true,
									["Operator"] = ">",
									["AndOr"] = "OR",
									["Name"] = "回春术",
								}, -- [5]
								{
									["Type"] = "BUFFSTACKS",
									["Checked"] = true,
									["PrtsAfter"] = 1,
									["Operator"] = "<",
									["Unit"] = "target",
									["Name"] = "生命绽放",
									["Level"] = 3,
								}, -- [6]
								["n"] = 6,
							},
							["ClockGCD"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1WkTd42ISTWX",
							["Enabled"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["ManaCheck"] = true,
						}, -- [8]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "滋养",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "REACT",
									["Unit"] = "target",
									["Level"] = 2,
								}, -- [1]
								{
									["Type"] = "HEALTH",
									["Operator"] = "<",
									["Unit"] = "target",
									["Level"] = 90,
								}, -- [2]
								{
									["Type"] = "STANCE",
									["Name"] = "熊形态; 猎豹形态; 巨熊形态",
									["Level"] = 1,
								}, -- [3]
								{
									["Type"] = "LEVEL",
									["Operator"] = ">=",
									["Level"] = 80,
								}, -- [4]
								["n"] = 4,
							},
							["ClockGCD"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1Z4SeUMzYZy3",
							["Enabled"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["ManaCheck"] = true,
						}, -- [9]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "治疗之触",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "REACT",
									["Unit"] = "target",
									["Level"] = 2,
								}, -- [1]
								{
									["Type"] = "HEALTH",
									["Operator"] = "<",
									["Unit"] = "target",
									["Level"] = 90,
								}, -- [2]
								{
									["Type"] = "STANCE",
									["Name"] = "熊形态; 猎豹形态; 巨熊形态",
									["Level"] = 1,
								}, -- [3]
								{
									["Type"] = "LEVEL",
									["Operator"] = "<=",
									["Level"] = 79,
								}, -- [4]
								["n"] = 4,
							},
							["ClockGCD"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1TRxxH1R9c09",
							["Enabled"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["ManaCheck"] = true,
						}, -- [10]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "精灵之火",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "REACT",
									["Unit"] = "target",
									["Level"] = 1,
								}, -- [1]
								{
									["Type"] = "SPELLCD",
									["Name"] = "精灵之火（野性）",
								}, -- [2]
								{
									["Type"] = "DEBUFFDUR",
									["Unit"] = "target",
									["Name"] = "精灵之火（野性）",
								}, -- [3]
								{
									["Type"] = "DEBUFFDUR",
									["Unit"] = "target",
									["Name"] = "精灵之火",
								}, -- [4]
								{
									["Type"] = "BUFFDUR",
									["Name"] = "潜行",
								}, -- [5]
								["n"] = 5,
							},
							["ClockGCD"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1Wfsi4uYiK4d",
							["Enabled"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["ManaCheck"] = true,
						}, -- [11]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "月火术",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "STANCE",
									["Name"] = "熊形态; 猎豹形态; 巨熊形态",
									["Level"] = 1,
								}, -- [1]
								{
									["Type"] = "BUFFDUR",
									["Name"] = "熊形态",
								}, -- [2]
								{
									["Type"] = "BUFFDUR",
									["Name"] = "猎豹形态",
								}, -- [3]
								{
									["Type"] = "BUFFDUR",
									["Name"] = "巨熊形态",
								}, -- [4]
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Operator"] = "<",
									["Unit"] = "target",
									["Name"] = "月火术",
									["Level"] = 1,
								}, -- [5]
								{
									["Type"] = "PTSINTAL",
									["Operator"] = ">",
									["Name"] = "强化月火术",
								}, -- [6]
								["n"] = 6,
							},
							["ClockGCD"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1TRxxH1TbfWx",
							["Enabled"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["ManaCheck"] = true,
						}, -- [12]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "虫群",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "STANCE",
									["Name"] = "熊形态; 猎豹形态; 巨熊形态",
									["Level"] = 1,
								}, -- [1]
								{
									["Type"] = "BUFFDUR",
									["Name"] = "熊形态",
								}, -- [2]
								{
									["Type"] = "BUFFDUR",
									["Name"] = "猎豹形态",
								}, -- [3]
								{
									["Type"] = "BUFFDUR",
									["Name"] = "巨熊形态",
								}, -- [4]
								{
									["Type"] = "PTSINTAL",
									["Operator"] = ">",
									["Name"] = "虫群",
								}, -- [5]
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Operator"] = "<",
									["Unit"] = "target",
									["Name"] = "虫群",
									["Level"] = 1,
								}, -- [6]
								["n"] = 6,
							},
							["ClockGCD"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1TRxxH1VQXC=",
							["Enabled"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["ManaCheck"] = true,
						}, -- [13]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "愤怒",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "STANCE",
									["Name"] = "熊形态; 猎豹形态; 巨熊形态",
									["Level"] = 1,
								}, -- [1]
								{
									["Type"] = "BUFFDUR",
									["Name"] = "熊形态",
								}, -- [2]
								{
									["Type"] = "BUFFDUR",
									["Name"] = "猎豹形态",
								}, -- [3]
								{
									["Type"] = "BUFFDUR",
									["Name"] = "巨熊形态",
								}, -- [4]
								{
									["Type"] = "BUFFDUR",
									["Operator"] = ">",
									["Name"] = "日蚀",
									["Level"] = 1,
								}, -- [5]
								["n"] = 5,
							},
							["ClockGCD"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1ZG=RqHt3Vad",
							["Enabled"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["ManaCheck"] = true,
						}, -- [14]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "星火术",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "STANCE",
									["Name"] = "熊形态; 猎豹形态; 巨熊形态",
									["Level"] = 1,
								}, -- [1]
								{
									["Type"] = "BUFFDUR",
									["Name"] = "熊形态",
								}, -- [2]
								{
									["Type"] = "BUFFDUR",
									["Name"] = "猎豹形态",
								}, -- [3]
								{
									["Type"] = "BUFFDUR",
									["Name"] = "巨熊形态",
								}, -- [4]
								{
									["Type"] = "BUFFDUR",
									["Operator"] = ">",
									["Name"] = "月蚀",
									["Level"] = 1,
								}, -- [5]
								["n"] = 5,
							},
							["ClockGCD"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1TRxxH1XLNiE",
							["Enabled"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["ManaCheck"] = true,
						}, -- [15]
						{
							["Type"] = "icd",
							["Name"] = "日蚀:30",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "STANCE",
									["Name"] = "熊形态; 猎豹形态; 巨熊形态",
									["Level"] = 1,
								}, -- [1]
								{
									["Type"] = "BUFFDUR",
									["Name"] = "熊形态",
								}, -- [2]
								{
									["Type"] = "BUFFDUR",
									["Name"] = "猎豹形态",
								}, -- [3]
								{
									["Type"] = "BUFFDUR",
									["Name"] = "巨熊形态",
								}, -- [4]
								["n"] = 4,
							},
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1ZG=RICjhYOS",
							["Enabled"] = true,
							["CustomTex"] = "愤怒",
							["States"] = {
								{
									["Alpha"] = 0,
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
							},
						}, -- [16]
						{
							["Type"] = "icd",
							["Name"] = "月蚀:30",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "STANCE",
									["Name"] = "熊形态; 猎豹形态; 巨熊形态",
									["Level"] = 1,
								}, -- [1]
								{
									["Type"] = "BUFFDUR",
									["Name"] = "熊形态",
								}, -- [2]
								{
									["Type"] = "BUFFDUR",
									["Name"] = "猎豹形态",
								}, -- [3]
								{
									["Type"] = "BUFFDUR",
									["Name"] = "巨熊形态",
								}, -- [4]
								["n"] = 4,
							},
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1ZG=Rmwo7NSj",
							["Enabled"] = true,
							["CustomTex"] = "星火术",
							["States"] = {
								{
									["Alpha"] = 0,
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
							},
						}, -- [17]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "愤怒",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "STANCE",
									["Name"] = "熊形态; 猎豹形态; 巨熊形态",
									["Level"] = 1,
								}, -- [1]
								{
									["Type"] = "BUFFDUR",
									["Name"] = "熊形态",
								}, -- [2]
								{
									["Type"] = "BUFFDUR",
									["Name"] = "猎豹形态",
								}, -- [3]
								{
									["Type"] = "BUFFDUR",
									["Name"] = "巨熊形态",
								}, -- [4]
								["n"] = 4,
							},
							["ClockGCD"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1TRxxH1ZrfWU",
							["Enabled"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["ManaCheck"] = true,
						}, -- [18]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "潜行",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "BUFFDUR",
									["Checked"] = true,
									["Name"] = "潜行",
								}, -- [1]
								{
									["Type"] = "COMBAT",
									["Level"] = 1,
								}, -- [2]
								{
									["Type"] = "STANCE",
									["Name"] = "猎豹形态",
								}, -- [3]
								["n"] = 3,
							},
							["ClockGCD"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1WfsfMrOHICh",
							["Enabled"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["ManaCheck"] = true,
						}, -- [19]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "毁灭",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "BUFFDUR",
									["Checked"] = true,
									["Operator"] = ">",
									["Name"] = "潜行",
								}, -- [1]
								["n"] = 1,
							},
							["ClockGCD"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1TRxxH1bvyiv",
							["Enabled"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["ManaCheck"] = true,
						}, -- [20]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "野蛮咆哮",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "STANCE",
									["Name"] = "猎豹形态",
								}, -- [1]
								{
									["Type"] = "BUFFDUR",
									["Operator"] = "<",
									["Name"] = "野蛮咆哮",
									["Level"] = 1,
								}, -- [2]
								{
									["Type"] = "COMBO",
									["Operator"] = ">=",
									["Level"] = 1,
								}, -- [3]
								["n"] = 3,
							},
							["ClockGCD"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1Z4S=Qu3H_8M",
							["Enabled"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["ManaCheck"] = true,
						}, -- [21]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "猛虎之怒",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "STANCE",
									["Name"] = "猎豹形态",
								}, -- [1]
								{
									["Type"] = "PTSINTAL",
									["Operator"] = ">",
									["Name"] = "丛林之王",
								}, -- [2]
								{
									["Type"] = "SPELLCD",
									["Name"] = "猛虎之怒",
								}, -- [3]
								{
									["Type"] = "ENERGY_ABS",
									["Operator"] = "<",
									["Level"] = 20,
								}, -- [4]
								["n"] = 4,
							},
							["ClockGCD"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1Z4T0dhxBMq0",
							["Enabled"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["ManaCheck"] = true,
						}, -- [22]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "割裂",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "STANCE",
									["Name"] = "猎豹形态",
								}, -- [1]
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Operator"] = "<",
									["Unit"] = "target",
									["Name"] = "割裂",
									["Level"] = 1,
								}, -- [2]
								{
									["Type"] = "COMBO",
									["Level"] = 5,
								}, -- [3]
								{
									["Type"] = "HEALTH_ABS",
									["Operator"] = ">",
									["Unit"] = "target",
									["PrtsBefore"] = 1,
									["Level"] = 50000,
								}, -- [4]
								{
									["Type"] = "GROUP2",
									["AndOr"] = "OR",
									["BitFlags"] = 2,
								}, -- [5]
								{
									["Type"] = "HEALTH_ABS",
									["Operator"] = ">",
									["Unit"] = "target",
									["Level"] = 10000,
								}, -- [6]
								{
									["Type"] = "GROUP2",
									["AndOr"] = "OR",
									["BitFlags"] = 1,
								}, -- [7]
								{
									["Type"] = "HEALTH_ABS",
									["PrtsAfter"] = 1,
									["Operator"] = ">",
									["Level"] = 3000,
								}, -- [8]
								["n"] = 8,
							},
							["ClockGCD"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1TRxxH1g=Lee",
							["Enabled"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["ManaCheck"] = true,
						}, -- [23]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "凶猛撕咬",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "STANCE",
									["Name"] = "猎豹形态",
								}, -- [1]
								{
									["Type"] = "COMBO",
									["Level"] = 5,
								}, -- [2]
								["n"] = 2,
							},
							["ClockGCD"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1TRxxH1iaV8R",
							["Enabled"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["ManaCheck"] = true,
						}, -- [24]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "裂伤（豹）",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "STANCE",
									["Name"] = "猎豹形态",
								}, -- [1]
								{
									["Type"] = "COMBO",
									["Operator"] = "<=",
									["Level"] = 4,
								}, -- [2]
								{
									["Type"] = "PTSINTAL",
									["Operator"] = ">",
									["Name"] = "裂伤",
								}, -- [3]
								{
									["Type"] = "DEBUFFDUR",
									["Operator"] = "<",
									["Unit"] = "target",
									["Name"] = "裂伤（熊）",
									["Level"] = 1,
								}, -- [4]
								{
									["Type"] = "DEBUFFDUR",
									["Operator"] = "<",
									["Unit"] = "target",
									["Name"] = "裂伤（豹）",
									["Level"] = 1,
								}, -- [5]
								{
									["Type"] = "DEBUFFDUR",
									["Operator"] = "<",
									["Unit"] = "target",
									["Name"] = "创伤",
									["Level"] = 1,
								}, -- [6]
								["n"] = 6,
							},
							["ClockGCD"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1WfsLy0iXKGh",
							["Enabled"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["ManaCheck"] = true,
						}, -- [25]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "斜掠",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "STANCE",
									["Name"] = "猎豹形态",
								}, -- [1]
								{
									["Type"] = "COMBO",
									["Operator"] = "<=",
									["Level"] = 4,
								}, -- [2]
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Operator"] = "<",
									["Unit"] = "target",
									["Name"] = "斜掠",
									["Level"] = 1,
								}, -- [3]
								["n"] = 3,
							},
							["ClockGCD"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1TtB1W637xO1",
							["Enabled"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["ManaCheck"] = true,
						}, -- [26]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "撕碎",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "STANCE",
									["Name"] = "猎豹形态",
								}, -- [1]
								{
									["Type"] = "COMBO",
									["Operator"] = "<=",
									["Level"] = 4,
								}, -- [2]
								["n"] = 2,
							},
							["ClockGCD"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1TRxxH1fMReR",
							["Enabled"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["ManaCheck"] = true,
						}, -- [27]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "激怒",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "STANCE",
									["Name"] = "熊形态; 巨熊形态",
								}, -- [1]
								{
									["Type"] = "HEALTH",
									["Operator"] = ">",
									["Level"] = 80,
								}, -- [2]
								{
									["Type"] = "SPELLCD",
									["Name"] = "激怒",
								}, -- [3]
								{
									["Type"] = "RAGE",
									["Operator"] = "<",
									["Level"] = 30,
								}, -- [4]
								["n"] = 4,
							},
							["ClockGCD"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1WfsLy2mOROe",
							["Enabled"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["ManaCheck"] = true,
						}, -- [28]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "横扫（熊）",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "STANCE",
									["Name"] = "熊形态; 巨熊形态",
								}, -- [1]
								{
									["Type"] = "COUNTER",
									["Operator"] = ">=",
									["Name"] = "xg",
									["Level"] = 3,
								}, -- [2]
								["n"] = 2,
							},
							["ClockGCD"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1TaRFHqOrxmb",
							["Enabled"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["ManaCheck"] = true,
						}, -- [29]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "裂伤（熊）",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "STANCE",
									["Name"] = "熊形态; 巨熊形态",
								}, -- [1]
								{
									["Type"] = "PTSINTAL",
									["Operator"] = ">",
									["Name"] = "裂伤",
								}, -- [2]
								{
									["Type"] = "SPELLCD",
									["Name"] = "裂伤（熊）",
								}, -- [3]
								["n"] = 3,
							},
							["ClockGCD"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1WfsWFIBmbqB",
							["Enabled"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["ManaCheck"] = true,
						}, -- [30]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1UTa96p3bYOQ", -- [1]
								"TMW:icon:1UkxxRbWTzrE", -- [2]
								"TMW:icon:1UkxxQ1DvSrl", -- [3]
								"TMW:icon:1UkxzeXeXsop", -- [4]
								"TMW:icon:1TRxxH18qrmw", -- [5]
								"TMW:icon:1TRxxH1OZ5m6", -- [6]
								"TMW:icon:1WkTd42ISTWX", -- [7]
								"TMW:icon:1Z4SeUMzYZy3", -- [8]
								"TMW:icon:1TRxxH1R9c09", -- [9]
								"TMW:icon:1Wfsi4uYiK4d", -- [10]
								"TMW:icon:1TRxxH1TbfWx", -- [11]
								"TMW:icon:1TRxxH1VQXC=", -- [12]
								"TMW:icon:1ZG=RqHt3Vad", -- [13]
								"TMW:icon:1TRxxH1XLNiE", -- [14]
								"TMW:icon:1ZG=RICjhYOS", -- [15]
								"TMW:icon:1ZG=Rmwo7NSj", -- [16]
								"TMW:icon:1TRxxH1ZrfWU", -- [17]
								"TMW:icon:1WfsfMrOHICh", -- [18]
								"TMW:icon:1TRxxH1bvyiv", -- [19]
								"TMW:icon:1Z4S=Qu3H_8M", -- [20]
								"TMW:icon:1Z4T0dhxBMq0", -- [21]
								"TMW:icon:1TRxxH1g=Lee", -- [22]
								"TMW:icon:1TRxxH1iaV8R", -- [23]
								"TMW:icon:1WfsLy0iXKGh", -- [24]
								"TMW:icon:1TtB1W637xO1", -- [25]
								"TMW:icon:1TRxxH1fMReR", -- [26]
								"TMW:icon:1WfsLy2mOROe", -- [27]
								"TMW:icon:1TaRFHqOrxmb", -- [28]
								"TMW:icon:1WfsWFIBmbqB", -- [29]
								"TMW:icon:1WhVJzkgZouq", -- [30]
								"TMW:icon:1ZH4iOBNnHKf", -- [31]
								"TMW:icon:1ZHIKNEemIuD", -- [32]
								"TMW:icon:1TRxxH1konOT", -- [33]
								"TMW:icon:1TRxxH1mVxKt", -- [34]
							},
							["Enabled"] = true,
						}, -- [31]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "割伤",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "STANCE",
									["Name"] = "熊形态; 巨熊形态",
								}, -- [1]
								{
									["Type"] = "LEVEL",
									["Operator"] = ">=",
									["Level"] = 66,
								}, -- [2]
								{
									["Type"] = "DEBUFFSTACKS",
									["Checked"] = true,
									["Operator"] = "<",
									["Unit"] = "target",
									["Name"] = "割伤",
									["PrtsBefore"] = 1,
									["Level"] = 5,
								}, -- [3]
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["PrtsAfter"] = 1,
									["Operator"] = "<",
									["Unit"] = "target",
									["AndOr"] = "OR",
									["Name"] = "割伤",
									["Level"] = 6,
								}, -- [4]
								["n"] = 4,
							},
							["ClockGCD"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1WhVJzkgZouq",
							["Enabled"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["ManaCheck"] = true,
						}, -- [32]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "精灵之火（野性）",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "STANCE",
									["Name"] = "熊形态; 巨熊形态",
								}, -- [1]
								["n"] = 1,
							},
							["ClockGCD"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1ZH4iOBNnHKf",
							["Enabled"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["ManaCheck"] = true,
						}, -- [33]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "重殴",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "STANCE",
									["Name"] = "熊形态; 巨熊形态",
								}, -- [1]
								{
									["Type"] = "RAGE",
									["Operator"] = "<",
									["Level"] = 50,
								}, -- [2]
								["n"] = 2,
							},
							["ClockGCD"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1ZHIKNEemIuD",
							["Enabled"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["ManaCheck"] = true,
						}, -- [34]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "横扫（熊）",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "STANCE",
									["Name"] = "熊形态; 巨熊形态",
								}, -- [1]
								["n"] = 1,
							},
							["ClockGCD"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1TRxxH1konOT",
							["Enabled"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["ManaCheck"] = true,
						}, -- [35]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "攻击",
							["FakeHidden"] = true,
							["ClockGCD"] = true,
							["GUID"] = "TMW:icon:1TRxxH1mVxKt",
							["Enabled"] = true,
						}, -- [36]
					},
					["Conditions"] = {
						{
							["Type"] = "EXISTS",
							["Unit"] = "target",
						}, -- [1]
						["n"] = 1,
					},
					["Point"] = {
						["y"] = -13.96649860185906,
						["point"] = "TOP",
						["relativePoint"] = "TOP",
						["x"] = 267.0275030812119,
					},
				}, -- [1]
				{
					["Scale"] = 0.8,
					["Rows"] = 3,
					["Locked"] = true,
					["EnabledSpecs"] = {
						[269] = false,
						[268] = false,
						[265] = false,
						[266] = false,
					},
					["Controlled"] = true,
					["GUID"] = "TMW:group:1T1RdDvvp4EL",
					["Columns"] = 10,
					["Name"] = "aoe",
					["Icons"] = {
						{
							["Unit"] = "nameplate",
							["Type"] = "unitcondition",
							["UnitConditions"] = {
								{
									["Type"] = "LIBRANGECHECK",
									["Operator"] = "<=",
									["Level"] = 5,
								}, -- [1]
								["n"] = 1,
							},
							["UnConditionDur"] = 1,
							["FakeHidden"] = true,
							["Events"] = {
								{
									["Type"] = "Counter",
									["Counter"] = "xg",
									["CounterOperation"] = "=",
									["Event"] = "OnEventsRestored",
									["CounterAmt"] = 0,
								}, -- [1]
								{
									["PassingCndt"] = true,
									["Type"] = "Counter",
									["CndtJustPassed"] = true,
									["Counter"] = "xg",
									["Event"] = "OnShow",
								}, -- [2]
								{
									["Type"] = "Counter",
									["Counter"] = "xg",
									["CounterOperation"] = "-",
									["Event"] = "OnHide",
								}, -- [3]
								["n"] = 3,
							},
							["GUID"] = "TMW:icon:1T1RdDvvBAFw",
							["Enabled"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
									["Texts"] = {
										[2] = "",
									},
								},
							},
							["CustomTex"] = "769",
						}, -- [1]
						[3] = {
							["GUID"] = "TMW:icon:1T1RdDvvJc93",
						},
						[5] = {
							["GUID"] = "TMW:icon:1T1RdDvvSBSa",
						},
						[22] = {
							["Conditions"] = {
								["n"] = 1,
							},
						},
					},
					["Point"] = {
						["y"] = -500,
						["point"] = "TOPLEFT",
						["relativePoint"] = "TOPLEFT",
					},
				}, -- [2]
			},
		},
	},
}
