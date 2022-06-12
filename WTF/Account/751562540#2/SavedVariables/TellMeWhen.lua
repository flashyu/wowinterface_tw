
TellMeWhenDB = {
	["profileKeys"] = {
		["騎風 - 伊弗斯"] = "騎風 - 伊弗斯",
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
			["ICON_DURS_FIRSTSEE"] = true,
		},
	},
	["Version"] = 92200,
	["profiles"] = {
		["騎風 - 伊弗斯"] = {
			["Version"] = 92200,
			["NumGroups"] = 13,
			["TextureName"] = "0101",
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1XQb5Vnpqqqu",
					["Scale"] = 1,
					["Locked"] = true,
					["Columns"] = 10,
					["Icons"] = {
						{
							["Type"] = "cooldown",
							["Name"] = "风怒武器",
							["Enabled"] = true,
							["Conditions"] = {
								{
									["Type"] = "OFFHAND",
									["Operator"] = "<=",
									["AndOr"] = "OR",
									["Level"] = 5,
								}, -- [1]
								{
									["Type"] = "MAINHAND",
									["Operator"] = "<=",
									["AndOr"] = "OR",
									["Level"] = 5,
								}, -- [2]
								["n"] = 2,
							},
							["GUID"] = "TMW:icon:1XiAub3bXqSr",
							["FakeHidden"] = true,
						}, -- [1]
						{
							["Type"] = "cooldown",
							["Name"] = "根基图腾",
							["Enabled"] = true,
							["Conditions"] = {
								{
									["Type"] = "TOTEM4",
									["Name"] = "根基图腾",
								}, -- [1]
								{
									["Type"] = "NAME",
									["Unit"] = "target",
									["Name"] = "瓦丝琪",
								}, -- [2]
								{
									["Type"] = "LIBRANGECHECK",
									["Operator"] = "<=",
									["Unit"] = "target",
									["Level"] = 8,
								}, -- [3]
								{
									["Type"] = "BUFFDUR",
									["Unit"] = "target",
									["Name"] = "魔法屏障",
								}, -- [4]
								["n"] = 4,
							},
							["GUID"] = "TMW:icon:1XiAudWczBuj",
							["FakeHidden"] = true,
						}, -- [2]
						{
							["Unit"] = "nameplate 1-30",
							["Type"] = "unitcondition",
							["UnitConditions"] = {
								{
									["Type"] = "ALIVE",
								}, -- [1]
								{
									["Type"] = "NAME",
									["Name"] = "萨古纳尔男爵; 瓦丝琪的荣誉卫士",
								}, -- [2]
								{
									["Type"] = "LIBRANGECHECK",
									["Operator"] = "<=",
									["Level"] = 30,
								}, -- [3]
								["n"] = 3,
							},
							["Enabled"] = true,
							["Conditions"] = {
								{
									["Type"] = "MANA_ABS",
									["Operator"] = ">=",
									["Level"] = 41,
								}, -- [1]
								{
									["Type"] = "TOTEM2",
									["Name"] = "战栗图腾",
								}, -- [2]
								["n"] = 2,
							},
							["CustomTex"] = "8143",
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1XiAsb1ZbWi_",
						}, -- [3]
						{
							["Type"] = "cooldown",
							["Name"] = "战栗图腾",
							["ManaCheck"] = true,
							["GUID"] = "TMW:icon:1Y4HOsMpboqw",
							["Conditions"] = {
								{
									["Type"] = "DBM_TIMER",
									["Operator"] = "<",
									["Name"] = "恐惧",
									["Level"] = 5,
								}, -- [1]
								{
									["Type"] = "DBM_TIMER",
									["Operator"] = "~=",
									["Name"] = "恐惧",
								}, -- [2]
								{
									["Type"] = "TOTEM2",
									["Name"] = "战栗图腾",
								}, -- [3]
								["n"] = 3,
							},
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								{
									["Alpha"] = 0,
								}, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["RangeCheck"] = true,
							["Enabled"] = true,
						}, -- [4]
						{
							["Unit"] = "nameplate 1-30",
							["Type"] = "unitcondition",
							["UnitConditions"] = {
								{
									["Type"] = "ALIVE",
								}, -- [1]
								{
									["Type"] = "NAME",
									["Name"] = "毒蛇神殿潜伏者; 邪水爪牙",
									["PrtsBefore"] = 1,
								}, -- [2]
								{
									["Type"] = "NAME",
									["PrtsAfter"] = 1,
									["Name"] = "暗心隐藏者",
									["AndOr"] = "OR",
								}, -- [3]
								{
									["Type"] = "LIBRANGECHECK",
									["Operator"] = "<=",
									["Level"] = 30,
								}, -- [4]
								["n"] = 4,
							},
							["Enabled"] = true,
							["Conditions"] = {
								{
									["Type"] = "MANA_ABS",
									["Operator"] = ">=",
									["Level"] = 163,
								}, -- [1]
								{
									["Type"] = "TOTEM3",
									["Name"] = "清毒图腾",
								}, -- [2]
								["n"] = 2,
							},
							["CustomTex"] = "清毒图腾",
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1XiAunncFKOx",
						}, -- [5]
					},
					["Name"] = "功能组",
					["Point"] = {
						["y"] = 5.41265869140625,
						["relativeTo"] = "TMW:group:1Xn6tR1fm2iE",
						["x"] = 338.64306640625,
					},
				}, -- [1]
				{
					["GUID"] = "TMW:group:1Xy1A=9SdFKH",
					["Scale"] = 1,
					["Columns"] = 10,
					["Icons"] = {
						{
							["Type"] = "cooldown",
							["Name"] = "地震术",
							["ManaCheck"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								{
									["Alpha"] = 0,
								}, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["RangeCheck"] = true,
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1XeX1Gk9RpC7",
							["Conditions"] = {
								{
									["Type"] = "COMBAT",
									["Unit"] = "target",
								}, -- [1]
								{
									["Type"] = "BUFFDUR",
									["Unit"] = "target",
									["Name"] = "冲击屏障",
								}, -- [2]
								{
									["Type"] = "CASTING",
									["Unit"] = "target",
									["Name"] = "火球术",
									["PrtsBefore"] = 1,
									["Level"] = 1,
								}, -- [3]
								{
									["Type"] = "CASTING",
									["Unit"] = "target",
									["AndOr"] = "OR",
									["Name"] = "治疗波",
									["Level"] = 1,
								}, -- [4]
								{
									["Type"] = "CASTING",
									["Unit"] = "target",
									["AndOr"] = "OR",
									["Name"] = "法力燃烧",
									["Level"] = 1,
								}, -- [5]
								{
									["Type"] = "CASTING",
									["Unit"] = "target",
									["AndOr"] = "OR",
									["Name"] = "治疗术",
									["Level"] = 1,
								}, -- [6]
								{
									["Type"] = "CASTING",
									["Unit"] = "target",
									["AndOr"] = "OR",
									["Name"] = "圣光闪现",
									["Level"] = 1,
								}, -- [7]
								{
									["Type"] = "CASTING",
									["Unit"] = "target",
									["AndOr"] = "OR",
									["Name"] = "暗影箭雨",
									["Level"] = 1,
								}, -- [8]
								{
									["Type"] = "CASTING",
									["Unit"] = "target",
									["AndOr"] = "OR",
									["Name"] = "炎爆术",
									["Level"] = 1,
								}, -- [9]
								{
									["Type"] = "NAME",
									["PrtsAfter"] = 1,
									["Unit"] = "target",
									["Name"] = "奥; 奥的灰烬",
									["AndOr"] = "OR",
								}, -- [10]
								["n"] = 10,
							},
							["GCDAsUnusable"] = true,
						}, -- [1]
						{
							["Type"] = "cooldown",
							["Name"] = "地震术",
							["ManaCheck"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								{
									["Alpha"] = 0,
								}, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["RangeCheck"] = true,
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "COMBAT",
									["Unit"] = "target",
								}, -- [1]
								{
									["Type"] = "NAME",
									["Unit"] = "target",
									["Name"] = "欲望精华",
								}, -- [2]
								{
									["Type"] = "BUFFDUR",
									["Unit"] = "target",
									["Name"] = "符文护盾",
								}, -- [3]
								{
									["Type"] = "CASTING",
									["Unit"] = "target",
									["Name"] = "灵魂震击",
									["Level"] = 1,
								}, -- [4]
								["n"] = 4,
							},
							["GCDAsUnusable"] = true,
						}, -- [2]
						{
							["Type"] = "cooldown",
							["Name"] = "地震术",
							["ManaCheck"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								{
									["Alpha"] = 0,
								}, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["RangeCheck"] = true,
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "COMBAT",
									["Unit"] = "target",
								}, -- [1]
								{
									["Type"] = "NAME",
									["Unit"] = "target",
									["Name"] = "女公爵玛兰德",
								}, -- [2]
								{
									["Type"] = "BUFFDUR",
									["Unit"] = "target",
									["Name"] = "法术结界祝福",
								}, -- [3]
								{
									["Type"] = "CASTING",
									["Unit"] = "target",
									["Name"] = "治疗之环",
									["PrtsBefore"] = 1,
									["Level"] = 1,
								}, -- [4]
								{
									["Type"] = "CASTING",
									["PrtsAfter"] = 1,
									["Unit"] = "target",
									["AndOr"] = "OR",
									["Name"] = "神圣愤怒",
									["Level"] = 1,
								}, -- [5]
								["n"] = 5,
							},
							["GCDAsUnusable"] = true,
						}, -- [3]
						{
							["Type"] = "cooldown",
							["Name"] = "地震术",
							["ManaCheck"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								{
									["Alpha"] = 0,
								}, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["RangeCheck"] = true,
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "COMBAT",
									["Unit"] = "target",
								}, -- [1]
								{
									["Type"] = "NAME",
									["Unit"] = "target",
									["Name"] = "阴暗通灵师",
								}, -- [2]
								{
									["Type"] = "CASTING",
									["Unit"] = "target",
									["Name"] = "暗影箭",
									["Level"] = 1,
								}, -- [3]
								["n"] = 3,
							},
							["GCDAsUnusable"] = true,
						}, -- [4]
					},
					["Name"] = "打断",
					["Conditions"] = {
						{
							["Type"] = "TIMER",
							["Operator"] = ">=",
							["Name"] = "打断延迟",
							["Level"] = 0.2,
						}, -- [1]
						["n"] = 1,
					},
					["Point"] = {
						["y"] = -49.54278564453125,
						["relativeTo"] = "TMW:group:1Xn6tR1fm2iE",
						["x"] = 338.6427001953125,
					},
				}, -- [2]
				{
					["GUID"] = "TMW:group:1XICoXK8DpGF",
					["Scale"] = 1,
					["Columns"] = 10,
					["Icons"] = {
						{
							["DurationMin"] = 1,
							["Type"] = "icd",
							["Name"] = "25504: 3; 33750: 3",
							["Enabled"] = true,
							["Conditions"] = {
								{
									["Type"] = "SPELLCD",
									["Name"] = "风暴打击",
								}, -- [1]
								{
									["Type"] = "LIBRANGECHECK",
									["Operator"] = "<=",
									["Unit"] = "target",
									["Level"] = 5,
								}, -- [2]
								{
									["Type"] = "MANA_ABS",
									["Operator"] = ">",
									["Level"] = 222,
								}, -- [3]
								["n"] = 3,
							},
							["CustomTex"] = "风暴打击",
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1XeX1GVqKkqh",
						}, -- [1]
						{
							["Type"] = "cooldown",
							["Name"] = "风暴打击",
							["GUID"] = "TMW:icon:1XeX1GV_TRKU",
							["Conditions"] = {
								{
									["Type"] = "EXISTS",
									["Unit"] = "target",
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								{
									["Alpha"] = 0,
								}, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["RangeCheck"] = true,
							["FakeHidden"] = true,
							["ManaCheck"] = true,
						}, -- [2]
					},
					["Name"] = "风暴打击",
					["Conditions"] = {
						{
							["Type"] = "LIBRANGECHECK",
							["Operator"] = "<=",
							["Unit"] = "target",
							["Level"] = 8,
						}, -- [1]
						{
							["Type"] = "DEBUFFDUR",
							["Unit"] = "target",
							["Name"] = "变形术",
						}, -- [2]
						{
							["Type"] = "DEBUFFDUR",
							["Unit"] = "target",
							["Name"] = "放逐术",
						}, -- [3]
						{
							["Type"] = "BUFFDUR",
							["Unit"] = "target",
							["Name"] = "魔法屏障",
						}, -- [4]
						{
							["Type"] = "BUFFDUR",
							["Unit"] = "target",
							["Name"] = "38599",
						}, -- [5]
						{
							["Type"] = "BUFFDUR",
							["Unit"] = "target",
							["Name"] = "痛苦之罩",
						}, -- [6]
						{
							["Type"] = "BUFFDUR",
							["Unit"] = "target",
							["Name"] = "39872",
						}, -- [7]
						["n"] = 7,
					},
					["Point"] = {
						["y"] = -97.74310302734375,
						["relativeTo"] = "TMW:group:1Xn6tR1fm2iE",
						["x"] = 345.72314453125,
					},
				}, -- [3]
				{
					["Scale"] = 1,
					["Rows"] = 3,
					["Locked"] = true,
					["Columns"] = 10,
					["Icons"] = {
						{
							["Type"] = "cooldown",
							["Name"] = "烈焰震击",
							["ManaCheck"] = true,
							["Conditions"] = {
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Operator"] = "<",
									["Unit"] = "target",
									["Name"] = "烈焰震击",
									["Level"] = 1,
								}, -- [1]
								{
									["Type"] = "EXISTS",
									["Unit"] = "target",
								}, -- [2]
								{
									["Type"] = "CLASSIFICATION2",
									["Unit"] = "target",
									["BitFlags"] = {
										["elite"] = true,
										["minus"] = true,
										["normal"] = true,
										["worldboss"] = true,
										["rareelite"] = true,
										["rare"] = true,
									},
								}, -- [3]
								{
									["Type"] = "NAME",
									["Unit"] = "target",
									["Name"] = "奥; 奥的灰烬; 魔化元素; 凯尔萨斯·逐日者; 宇宙灌注者; 瓦解法杖; 地狱火典狱官; 地狱火导魔者; 奥; 奥的灰烬; 欲望精华; 女公爵玛兰德; 埃辛诺斯之焰; 阴暗通灵师; 被奴役的灵魂; 苦痛灵魂碎块; 饥饿的灵魂碎块; 愤怒灵魂碎块",
									["Level"] = 1,
								}, -- [4]
								{
									["Type"] = "DEBUFFDUR",
									["Unit"] = "target",
									["Name"] = "风暴打击",
								}, -- [5]
								["n"] = 5,
							},
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								{
									["Alpha"] = 0,
								}, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["RangeCheck"] = true,
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1XeX1GiY5Nm2",
						}, -- [1]
						[3] = {
							["Type"] = "cooldown",
							["Name"] = "烈焰震击",
							["ManaCheck"] = true,
							["Conditions"] = {
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Operator"] = "<",
									["Unit"] = "target",
									["Name"] = "烈焰震击",
									["Level"] = 1,
								}, -- [1]
								{
									["Type"] = "EXISTS",
									["Unit"] = "target",
								}, -- [2]
								{
									["Type"] = "DEBUFFDUR",
									["Operator"] = "~=",
									["Name"] = "棱彩光环：冰霜",
								}, -- [3]
								["n"] = 3,
							},
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								{
									["Alpha"] = 0,
								}, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["RangeCheck"] = true,
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1Y7D4amLyW0_",
						},
						[11] = {
							["Type"] = "cooldown",
							["Name"] = "地震术",
							["ManaCheck"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								{
									["Alpha"] = 0,
								}, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["RangeCheck"] = true,
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1Y7DNUM3XtSR",
							["Conditions"] = {
								{
									["Type"] = "NAME",
									["Unit"] = "target",
									["Name"] = "欲望精华; 阴暗通灵师; 女公爵玛兰德; 莎赫拉丝主母",
									["Level"] = 1,
								}, -- [1]
								["n"] = 1,
							},
							["GCDAsUnusable"] = true,
						},
						[13] = {
							["Type"] = "cooldown",
							["Name"] = "地震术",
							["ManaCheck"] = true,
							["Conditions"] = {
								{
									["Type"] = "EXISTS",
									["Unit"] = "target",
								}, -- [1]
								{
									["Type"] = "DEBUFFDUR",
									["Operator"] = "~=",
									["Name"] = "棱彩光环：奥术",
									["PrtsBefore"] = 1,
								}, -- [2]
								{
									["Type"] = "DEBUFFDUR",
									["PrtsAfter"] = 1,
									["Operator"] = "~=",
									["Name"] = "棱彩光环：冰霜",
									["AndOr"] = "OR",
								}, -- [3]
								["n"] = 3,
							},
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								{
									["Alpha"] = 0,
								}, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["RangeCheck"] = true,
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1Y7DNUMC324t",
						},
						[23] = {
							["Type"] = "cooldown",
							["Name"] = "冰霜震击",
							["ManaCheck"] = true,
							["Conditions"] = {
								{
									["Type"] = "EXISTS",
									["Unit"] = "target",
								}, -- [1]
								{
									["Type"] = "DEBUFFDUR",
									["Operator"] = "~=",
									["Name"] = "棱彩光环：火焰",
								}, -- [2]
								["n"] = 2,
							},
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								{
									["Alpha"] = 0,
								}, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["RangeCheck"] = true,
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1Y7DExNN1G0L",
						},
					},
					["Name"] = "震击组",
					["Conditions"] = {
						{
							["Type"] = "LIBRANGECHECK",
							["Operator"] = "<=",
							["Unit"] = "target",
							["Level"] = 8,
						}, -- [1]
						{
							["Type"] = "DEBUFFDUR",
							["Unit"] = "target",
							["Name"] = "变形术",
						}, -- [2]
						{
							["Type"] = "DEBUFFDUR",
							["Unit"] = "target",
							["Name"] = "放逐术",
						}, -- [3]
						{
							["Type"] = "BUFFDUR",
							["Unit"] = "target",
							["Name"] = "魔法屏障",
						}, -- [4]
						{
							["Type"] = "BUFFDUR",
							["Unit"] = "target",
							["Name"] = "38599",
						}, -- [5]
						{
							["Type"] = "BUFFDUR",
							["Unit"] = "target",
							["Name"] = "痛苦之罩",
						}, -- [6]
						{
							["Type"] = "BUFFDUR",
							["Unit"] = "target",
							["Name"] = "39872",
						}, -- [7]
						["n"] = 7,
					},
					["GUID"] = "TMW:group:1Y2FNTArQmen",
					["Point"] = {
						["y"] = -234.3067016601563,
						["relativeTo"] = "TMW:group:1X_0=Lpa6dSC",
						["x"] = 269.3917236328125,
					},
				}, -- [4]
				{
					["Point"] = {
						["y"] = -298.49560546875,
						["relativeTo"] = "TMW:group:1Xn6tR1fm2iE",
						["point"] = "RIGHT",
						["relativePoint"] = "RIGHT",
						["x"] = 344.5419921875,
					},
					["Scale"] = 1,
					["Rows"] = 5,
					["Columns"] = 10,
					["Icons"] = {
						{
							["Type"] = "cooldown",
							["Name"] = "火焰新星图腾",
							["ManaCheck"] = true,
							["Conditions"] = {
								{
									["Type"] = "COMBAT",
								}, -- [1]
								{
									["Type"] = "TOTEM1",
									["Name"] = "火焰新星图腾",
									["PrtsBefore"] = 1,
								}, -- [2]
								{
									["Type"] = "TOTEM1",
									["Name"] = "火元素图腾; 抗寒图腾 IV; 熔岩图腾",
								}, -- [3]
								{
									["Type"] = "NAME",
									["Unit"] = "target",
									["Name"] = "奥; 奥的灰烬; 卡兹洛加; 埃辛诺斯之焰",
									["Level"] = 1,
								}, -- [4]
								{
									["Type"] = "SPELLRANGE",
									["PrtsAfter"] = 1,
									["Operator"] = "<=",
									["Unit"] = "target",
									["Name"] = "风暴打击",
								}, -- [5]
								{
									["Type"] = "COUNTER",
									["Name"] = "xiaoguai5",
									["Level"] = 1,
								}, -- [6]
								{
									["Type"] = "MANA",
									["Operator"] = ">",
									["PrtsBefore"] = 2,
									["Level"] = 40,
								}, -- [7]
								{
									["Type"] = "SPELLCD",
									["PrtsAfter"] = 1,
									["Name"] = "萨满之怒",
								}, -- [8]
								{
									["Type"] = "SPELLCD",
									["Operator"] = "~=",
									["Name"] = "萨满之怒",
									["PrtsBefore"] = 1,
									["AndOr"] = "OR",
								}, -- [9]
								{
									["Type"] = "MANA",
									["PrtsAfter"] = 2,
									["Operator"] = ">=",
									["Level"] = 60,
								}, -- [10]
								{
									["Type"] = "HEALTH_ABS",
									["Operator"] = ">=",
									["Unit"] = "target",
									["Level"] = 30000,
								}, -- [11]
								{
									["Type"] = "CLASSIFICATION2",
									["Unit"] = "target",
									["BitFlags"] = {
										["worldboss"] = true,
									},
								}, -- [12]
								["n"] = 12,
							},
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								{
									["Alpha"] = 0,
								}, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["RangeCheck"] = true,
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1XeX1GWIKsKM",
							["Enabled"] = true,
						}, -- [1]
						{
							["Type"] = "cooldown",
							["Name"] = "火焰新星图腾",
							["ManaCheck"] = true,
							["Conditions"] = {
								{
									["Type"] = "COMBAT",
								}, -- [1]
								{
									["Type"] = "TOTEM1",
									["Name"] = "火焰新星图腾",
									["PrtsBefore"] = 1,
								}, -- [2]
								{
									["Type"] = "TOTEM1",
									["Name"] = "火元素图腾; 抗寒图腾 IV; 熔岩图腾",
								}, -- [3]
								{
									["Type"] = "NAME",
									["Unit"] = "target",
									["Name"] = "奥; 奥的灰烬; 卡兹洛加; 埃辛诺斯之焰",
									["Level"] = 1,
								}, -- [4]
								{
									["Type"] = "SPELLRANGE",
									["PrtsAfter"] = 1,
									["Operator"] = "<=",
									["Unit"] = "target",
									["Name"] = "风暴打击",
								}, -- [5]
								{
									["Type"] = "COUNTER",
									["Operator"] = ">=",
									["Name"] = "xiaoguai5",
									["Level"] = 2,
								}, -- [6]
								{
									["Type"] = "MANA",
									["Operator"] = ">=",
									["Level"] = 40,
								}, -- [7]
								{
									["Type"] = "HEALTH_ABS",
									["Operator"] = ">=",
									["Unit"] = "target",
									["Level"] = 30000,
								}, -- [8]
								["n"] = 8,
							},
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								{
									["Alpha"] = 0,
								}, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["RangeCheck"] = true,
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1XpQ2OOg8Zyx",
							["Enabled"] = true,
						}, -- [2]
						nil, -- [3]
						nil, -- [4]
						nil, -- [5]
						nil, -- [6]
						nil, -- [7]
						nil, -- [8]
						nil, -- [9]
						nil, -- [10]
						{
							["Type"] = "cooldown",
							["Name"] = "熔岩图腾",
							["ManaCheck"] = true,
							["Conditions"] = {
								{
									["Type"] = "TOTEM1",
									["Name"] = "熔岩图腾",
									["PrtsBefore"] = 1,
								}, -- [1]
								{
									["Type"] = "COMBAT",
								}, -- [2]
								{
									["Type"] = "TOTEM1",
									["Name"] = "火元素图腾; 抗寒图腾; 火焰新星图腾",
								}, -- [3]
								{
									["Type"] = "NAME",
									["Unit"] = "target",
									["Name"] = "奥; 奥的灰烬; 埃辛诺斯之焰",
									["Level"] = 1,
								}, -- [4]
								{
									["Type"] = "TIMER",
									["PrtsAfter"] = 1,
									["Operator"] = ">",
									["Name"] = "火焰新星图腾",
									["Level"] = 4,
								}, -- [5]
								{
									["Type"] = "SPELLRANGE",
									["Unit"] = "target",
									["Name"] = "风暴打击",
								}, -- [6]
								{
									["Type"] = "COUNTER",
									["Operator"] = ">=",
									["Name"] = "xiaoguai5",
									["Level"] = 2,
								}, -- [7]
								{
									["Type"] = "MANA",
									["Operator"] = ">=",
									["Level"] = 40,
								}, -- [8]
								["n"] = 8,
							},
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								{
									["Alpha"] = 0,
								}, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["RangeCheck"] = true,
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1XiAsbhpzM4_",
							["Enabled"] = true,
						}, -- [11]
						{
							["Type"] = "cooldown",
							["Name"] = "熔岩图腾",
							["ManaCheck"] = true,
							["Conditions"] = {
								{
									["Type"] = "TOTEM1",
									["Name"] = "熔岩图腾",
									["PrtsBefore"] = 1,
								}, -- [1]
								{
									["Type"] = "COMBAT",
								}, -- [2]
								{
									["Type"] = "TOTEM1",
									["Name"] = "火元素图腾; 抗寒图腾; 火焰新星图腾",
								}, -- [3]
								{
									["Type"] = "NAME",
									["PrtsAfter"] = 1,
									["Unit"] = "target",
									["Name"] = "奥; 奥的灰烬; 埃辛诺斯之焰",
									["Level"] = 1,
								}, -- [4]
								{
									["Type"] = "SPELLRANGE",
									["Unit"] = "target",
									["Name"] = "风暴打击",
								}, -- [5]
								{
									["Type"] = "COUNTER",
									["Operator"] = ">=",
									["Name"] = "xiaoguai5",
									["Level"] = 2,
								}, -- [6]
								{
									["Type"] = "MANA",
									["Operator"] = ">=",
									["Level"] = 40,
								}, -- [7]
								["n"] = 7,
							},
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								{
									["Alpha"] = 0,
								}, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["RangeCheck"] = true,
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1XiB9m0jlbe9",
							["Enabled"] = true,
						}, -- [12]
						{
							["Type"] = "cooldown",
							["Name"] = "灼热图腾",
							["ManaCheck"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								{
									["Alpha"] = 0,
								}, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["RangeCheck"] = true,
							["FakeHidden"] = true,
							["Enabled"] = true,
							["GUID"] = "TMW:icon:1XiBSFGDNfeY",
							["Conditions"] = {
								{
									["Type"] = "TOTEM1",
									["Name"] = "灼热图腾",
								}, -- [1]
								{
									["Type"] = "TOTEM1",
									["Name"] = "火元素图腾; 火焰新星图腾; 熔岩图腾; 火元素图腾; 抗寒图腾",
								}, -- [2]
								{
									["Type"] = "NAME",
									["Unit"] = "target",
									["Name"] = "奥; 奥的灰烬; 埃辛诺斯之焰",
									["Level"] = 1,
								}, -- [3]
								{
									["Type"] = "SPELLRANGE",
									["Operator"] = "<=",
									["Unit"] = "target",
									["Name"] = "风暴打击",
								}, -- [4]
								{
									["Type"] = "COMBAT",
								}, -- [5]
								["n"] = 5,
							},
							["GCDAsUnusable"] = true,
						}, -- [13]
						nil, -- [14]
						nil, -- [15]
						nil, -- [16]
						nil, -- [17]
						nil, -- [18]
						nil, -- [19]
						nil, -- [20]
						{
							["Type"] = "cooldown",
							["Name"] = "大地之力图腾",
							["ManaCheck"] = true,
							["Conditions"] = {
								{
									["Type"] = "BUFFDUR",
									["Name"] = "大地之力",
								}, -- [1]
								{
									["Type"] = "TOTEM2",
									["Name"] = "战栗图腾; 土元素图腾; 地缚图腾",
								}, -- [2]
								["n"] = 2,
							},
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								{
									["Alpha"] = 0,
								}, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["RangeCheck"] = true,
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1XeX1GWbFQuX",
							["Enabled"] = true,
						}, -- [21]
						{
							["Type"] = "cooldown",
							["Name"] = "大地之力图腾",
							["ManaCheck"] = true,
							["GUID"] = "TMW:icon:1Y5aGhSU=cmK",
							["Conditions"] = {
								{
									["Type"] = "DBM_TIMER",
									["Operator"] = "<",
									["Name"] = "恐惧",
									["Level"] = 35,
								}, -- [1]
								{
									["Type"] = "DBM_TIMER",
									["Operator"] = "~=",
									["Name"] = "恐惧",
								}, -- [2]
								{
									["Type"] = "TOTEM2",
									["Name"] = "大地之力图腾",
								}, -- [3]
								{
									["Type"] = "DBM_TIMER",
									["Operator"] = ">",
									["Name"] = "恐惧",
									["Level"] = 6,
								}, -- [4]
								["n"] = 4,
							},
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								{
									["Alpha"] = 0,
								}, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["RangeCheck"] = true,
							["Enabled"] = true,
						}, -- [22]
						nil, -- [23]
						nil, -- [24]
						nil, -- [25]
						nil, -- [26]
						nil, -- [27]
						nil, -- [28]
						nil, -- [29]
						nil, -- [30]
						{
							["Type"] = "cooldown",
							["UnitConditions"] = {
								{
									["Type"] = "BUFFDUR",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "风怒图腾",
							["ManaCheck"] = true,
							["Conditions"] = {
								{
									["Type"] = "TIMER",
									["Name"] = "风怒图腾",
									["PrtsBefore"] = 2,
								}, -- [1]
								{
									["Type"] = "TIMER",
									["PrtsAfter"] = 1,
									["Operator"] = ">=",
									["AndOr"] = "OR",
									["Name"] = "风怒图腾",
									["Level"] = 9,
								}, -- [2]
								{
									["Type"] = "MANA",
									["Operator"] = ">=",
									["PrtsBefore"] = 2,
									["Level"] = 20,
								}, -- [3]
								{
									["Type"] = "SPELLCD",
									["PrtsAfter"] = 1,
									["Operator"] = "~=",
									["Name"] = "萨满之怒",
								}, -- [4]
								{
									["Type"] = "SPELLCD",
									["PrtsAfter"] = 2,
									["Name"] = "萨满之怒",
									["AndOr"] = "OR",
								}, -- [5]
								{
									["Type"] = "TOTEM4",
									["Name"] = "根基图腾; 宁静之风图腾; 自然抗性图腾",
								}, -- [6]
								["n"] = 6,
							},
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								{
									["Alpha"] = 0,
								}, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["RangeCheck"] = true,
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1XeX1GWl_IKm",
							["Enabled"] = true,
						}, -- [31]
						{
							["Type"] = "cooldown",
							["Name"] = "风之优雅图腾",
							["ManaCheck"] = true,
							["Conditions"] = {
								{
									["Type"] = "BUFFDUR",
									["Name"] = "风之优雅",
								}, -- [1]
								{
									["Type"] = "TOTEM4",
									["Name"] = "根基图腾; 宁静之风图腾; 自然抗性图腾",
								}, -- [2]
								["n"] = 2,
							},
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								{
									["Alpha"] = 0,
								}, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["RangeCheck"] = true,
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1XeX1GWzwzW8",
							["Enabled"] = true,
						}, -- [32]
						[41] = {
							["Type"] = "cooldown",
							["Name"] = "法力之泉图腾",
							["ManaCheck"] = true,
							["Conditions"] = {
								{
									["Type"] = "BUFFDUR",
									["Name"] = "法力之泉",
								}, -- [1]
								{
									["Type"] = "TOTEM3",
									["Name"] = "清毒图腾; 祛病图腾; 抗火图腾; 治疗之泉图腾",
								}, -- [2]
								["n"] = 2,
							},
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								{
									["Alpha"] = 0,
								}, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["RangeCheck"] = true,
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1XeX1GXPdR0B",
							["Enabled"] = true,
						},
					},
					["Name"] = "个人图腾组",
					["Conditions"] = {
						{
							["Type"] = "REACT",
							["Unit"] = "target",
							["Level"] = 1,
						}, -- [1]
						{
							["Type"] = "LIBRANGECHECK",
							["Operator"] = "<=",
							["Unit"] = "target",
							["Level"] = 10,
						}, -- [2]
						{
							["Type"] = "SPELLCD",
							["Operator"] = ">",
							["Name"] = "风暴打击",
							["Level"] = 1,
						}, -- [3]
						{
							["Type"] = "SPELLCD",
							["Operator"] = ">",
							["Name"] = "地震术",
							["Level"] = 1,
						}, -- [4]
						{
							["Type"] = "NAME",
							["Unit"] = "target",
							["Name"] = "苦痛灵魂碎块; 饥饿的灵魂碎块; 愤怒灵魂碎块",
							["Level"] = 1,
						}, -- [5]
						["n"] = 5,
					},
					["GUID"] = "TMW:group:1XJTK9Cs72WN",
				}, -- [5]
				{
					["GUID"] = "TMW:group:1XTfm210izu0",
					["Scale"] = 1,
					["Columns"] = 10,
					["Icons"] = {
						nil, -- [1]
						nil, -- [2]
						nil, -- [3]
						nil, -- [4]
						nil, -- [5]
						nil, -- [6]
						{
							["Unit"] = "focus",
							["CLEUEvents"] = {
								["SPELL_CAST_START"] = true,
							},
							["Type"] = "cleu",
							["CLEUDur"] = 2,
							["Enabled"] = true,
							["Events"] = {
								{
									["Type"] = "Timer",
									["Counter"] = "打断延迟",
									["Event"] = "OnShow",
								}, -- [1]
								["n"] = 1,
							},
							["FakeHidden"] = true,
							["ConditionDur"] = 0.1,
							["SourceUnit"] = "focus; target",
							["ConditionDurEnabled"] = true,
						}, -- [7]
						{
							["CLEUEvents"] = {
								["SPELL_CAST_SUCCESS"] = true,
							},
							["Type"] = "cleu",
							["CLEUDur"] = 0.1,
							["Name"] = "恐惧",
							["Enabled"] = true,
							["SourceUnit"] = "阿克蒙德",
							["Events"] = {
								{
									["TimerOperation"] = "restart",
									["Type"] = "Timer",
									["Counter"] = "恐惧",
									["Event"] = "OnShow",
								}, -- [1]
								["n"] = 1,
							},
							["FakeHidden"] = true,
						}, -- [8]
						{
							["CLEUEvents"] = {
								["SPELL_CAST_SUCCESS"] = true,
							},
							["Type"] = "cleu",
							["CLEUDur"] = 0.1,
							["Name"] = "风怒图腾",
							["Enabled"] = true,
							["SourceUnit"] = "player",
							["Events"] = {
								{
									["TimerOperation"] = "restart",
									["Type"] = "Timer",
									["Counter"] = "风怒图腾",
									["Event"] = "OnShow",
								}, -- [1]
								["n"] = 1,
							},
							["FakeHidden"] = true,
						}, -- [9]
						{
							["CLEUEvents"] = {
								["SPELL_CAST_SUCCESS"] = true,
							},
							["Type"] = "cleu",
							["CLEUDur"] = 0.1,
							["Name"] = "火焰新星图腾",
							["GUID"] = "TMW:icon:1XiAunpX4GOJ",
							["SourceUnit"] = "player",
							["Events"] = {
								{
									["TimerOperation"] = "restart",
									["Type"] = "Timer",
									["Counter"] = "火焰新星图腾",
									["Event"] = "OnShow",
								}, -- [1]
								["n"] = 1,
							},
							["FakeHidden"] = true,
							["Enabled"] = true,
						}, -- [10]
					},
					["Name"] = "风怒计时器",
					["Point"] = {
						["y"] = -389.5129699707031,
						["relativeTo"] = "TMW:group:1Xn6tR1fm2iE",
						["x"] = 344.5423583984375,
					},
				}, -- [6]
				{
					["GUID"] = "TMW:group:1XQbeilR_=iP",
					["Scale"] = 1,
					["Columns"] = 10,
					["Icons"] = {
						{
							["Type"] = "cooldown",
							["Name"] = "次级治疗波",
							["ManaCheck"] = true,
							["Conditions"] = {
								{
									["Type"] = "BUFFDUR",
									["Operator"] = "~=",
									["Name"] = "精神充沛",
								}, -- [1]
								{
									["Type"] = "SPELLCD",
									["Operator"] = ">=",
									["Name"] = "风暴打击",
									["Level"] = 2,
								}, -- [2]
								{
									["Type"] = "SPELLCD",
									["Operator"] = ">=",
									["Name"] = "地震术",
									["Level"] = 1,
								}, -- [3]
								{
									["Type"] = "HEALTH",
									["Operator"] = "<=",
									["Level"] = 80,
								}, -- [4]
								["n"] = 4,
							},
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								{
									["Alpha"] = 0,
								}, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["RangeCheck"] = true,
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1XeX1Gm05ia_",
						}, -- [1]
						{
							["Type"] = "cooldown",
							["Name"] = "水之护盾",
							["Enabled"] = true,
							["Conditions"] = {
								{
									["Type"] = "BUFFDUR",
									["Name"] = "水之护盾",
								}, -- [1]
								{
									["Type"] = "BUFFDUR",
									["Name"] = "闪电之盾",
								}, -- [2]
								["n"] = 2,
							},
							["GUID"] = "TMW:icon:1XeaUTssteKt",
							["FakeHidden"] = true,
						}, -- [2]
						{
							["Type"] = "conditionicon",
							["Enabled"] = true,
							["Conditions"] = {
								{
									["Type"] = "COMBAT",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "30798",
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1XeX1GmDS=4Q",
						}, -- [3]
						{
							["Type"] = "conditionicon",
							["Enabled"] = true,
							["Conditions"] = {
								{
									["Type"] = "COMBAT",
									["Level"] = 1,
								}, -- [1]
								{
									["Type"] = "ALIVE",
									["AndOr"] = "OR",
									["Level"] = 1,
								}, -- [2]
								["n"] = 2,
							},
							["GUID"] = "TMW:icon:1XnU46PLT9Gp",
							["FakeHidden"] = true,
						}, -- [4]
					},
					["Name"] = "恢复组",
					["Point"] = {
						["y"] = -429.1004333496094,
						["relativeTo"] = "TMW:group:1Xn6tR1fm2iE",
						["point"] = "RIGHT",
						["relativePoint"] = "RIGHT",
						["x"] = 344.5438232421875,
					},
				}, -- [7]
				{
					["Scale"] = 1,
					["Rows"] = 2,
					["Locked"] = true,
					["Controlled"] = true,
					["Columns"] = 10,
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
							["GUID"] = "TMW:icon:1VLNpV7Y4dCb",
							["Events"] = {
								{
									["Type"] = "Counter",
									["Counter"] = "xiaoguai5",
									["CounterOperation"] = "=",
									["Event"] = "WCSP",
									["CounterAmt"] = 0,
									["OnConditionConditions"] = {
										{
											["Type"] = "ICON",
											["Level"] = 1,
											["Icon"] = "TMW:icon:1VLNpV7Y4dCb",
										}, -- [1]
										["n"] = 1,
									},
									["Frequency"] = 0,
								}, -- [1]
								{
									["Type"] = "Counter",
									["Counter"] = "xiaoguai5",
									["CounterOperation"] = "=",
									["Event"] = "WCSP",
									["OnConditionConditions"] = {
										{
											["Type"] = "ICON",
											["Icon"] = "TMW:icon:1VLNpV7Y4dCb",
										}, -- [1]
										{
											["Type"] = "ICON",
											["Level"] = 1,
											["Icon"] = "TMW:icon:1VLNpV7YA0Wf",
										}, -- [2]
										["n"] = 2,
									},
									["Frequency"] = 0,
								}, -- [2]
								{
									["Type"] = "Counter",
									["Counter"] = "xiaoguai5",
									["CounterOperation"] = "=",
									["Event"] = "WCSP",
									["CounterAmt"] = 2,
									["OnConditionConditions"] = {
										{
											["Type"] = "ICON",
											["Icon"] = "TMW:icon:1VLNpV7YA0Wf",
										}, -- [1]
										{
											["Type"] = "ICON",
											["Level"] = 1,
											["Icon"] = "TMW:icon:1VLNpV7YDdmM",
										}, -- [2]
										["n"] = 2,
									},
									["Frequency"] = 0,
								}, -- [3]
								{
									["Type"] = "Counter",
									["Counter"] = "xiaoguai5",
									["CounterOperation"] = "=",
									["Event"] = "WCSP",
									["CounterAmt"] = 3,
									["OnConditionConditions"] = {
										{
											["Type"] = "ICON",
											["Icon"] = "TMW:icon:1VLNpV7YDdmM",
										}, -- [1]
										{
											["Type"] = "ICON",
											["Level"] = 1,
											["Icon"] = "TMW:icon:1VLNpV7YH0y3",
										}, -- [2]
										["n"] = 2,
									},
									["Frequency"] = 0,
								}, -- [4]
								{
									["Type"] = "Counter",
									["Counter"] = "xiaoguai5",
									["CounterOperation"] = "=",
									["Event"] = "WCSP",
									["CounterAmt"] = 4,
									["OnConditionConditions"] = {
										{
											["Type"] = "ICON",
											["Icon"] = "TMW:icon:1VLNpV7YH0y3",
										}, -- [1]
										{
											["Type"] = "ICON",
											["Level"] = 1,
											["Icon"] = "TMW:icon:1VLNpV7YKDeU",
										}, -- [2]
										["n"] = 2,
									},
									["Frequency"] = 0,
								}, -- [5]
								{
									["Type"] = "Counter",
									["Counter"] = "xiaoguai5",
									["CounterOperation"] = "=",
									["Event"] = "WCSP",
									["CounterAmt"] = 5,
									["OnConditionConditions"] = {
										{
											["Type"] = "ICON",
											["Icon"] = "TMW:icon:1VLNpV7YKDeU",
										}, -- [1]
										{
											["Type"] = "ICON",
											["Level"] = 1,
											["Icon"] = "TMW:icon:1VLNpV7YNQKP",
										}, -- [2]
										["n"] = 2,
									},
									["Frequency"] = 0,
								}, -- [6]
								{
									["Type"] = "Counter",
									["Counter"] = "xiaoguai5",
									["CounterOperation"] = "=",
									["Event"] = "WCSP",
									["CounterAmt"] = 6,
									["OnConditionConditions"] = {
										{
											["Type"] = "ICON",
											["Icon"] = "TMW:icon:1VLNpV7YNQKP",
										}, -- [1]
										{
											["Type"] = "ICON",
											["Level"] = 1,
											["Icon"] = "TMW:icon:1VLNpV7YQg8A",
										}, -- [2]
										["n"] = 2,
									},
									["Frequency"] = 0,
								}, -- [7]
								{
									["Type"] = "Counter",
									["Counter"] = "xiaoguai5",
									["CounterOperation"] = "=",
									["Event"] = "WCSP",
									["CounterAmt"] = 7,
									["OnConditionConditions"] = {
										{
											["Type"] = "ICON",
											["Icon"] = "TMW:icon:1VLNpV7YQg8A",
										}, -- [1]
										{
											["Type"] = "ICON",
											["Level"] = 1,
											["Icon"] = "TMW:icon:1VLNpV7YTvyi",
										}, -- [2]
										["n"] = 2,
									},
									["Frequency"] = 0,
								}, -- [8]
								{
									["Type"] = "Counter",
									["Counter"] = "xiaoguai5",
									["CounterOperation"] = "=",
									["Event"] = "WCSP",
									["CounterAmt"] = 8,
									["OnConditionConditions"] = {
										{
											["Type"] = "ICON",
											["Icon"] = "TMW:icon:1VLNpV7YTvyi",
										}, -- [1]
										["n"] = 1,
									},
									["Frequency"] = 0,
								}, -- [9]
								["n"] = 9,
							},
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RIPhSsdNwGt",
									["Texts"] = {
										"5码", -- [1]
										"[Counter(\"xiaoguai5\")]", -- [2]
									},
								},
							},
							["CustomTex"] = "247443",
							["FakeHidden"] = true,
							["Enabled"] = true,
						}, -- [1]
						{
							["GUID"] = "TMW:icon:1VLNpV7YA0Wf",
						}, -- [2]
						{
							["GUID"] = "TMW:icon:1VLNpV7YDdmM",
						}, -- [3]
						{
							["GUID"] = "TMW:icon:1VLNpV7YH0y3",
						}, -- [4]
						{
							["GUID"] = "TMW:icon:1VLNpV7YKDeU",
						}, -- [5]
						{
							["GUID"] = "TMW:icon:1VLNpV7YNQKP",
						}, -- [6]
						{
							["GUID"] = "TMW:icon:1VLNpV7YQg8A",
						}, -- [7]
						{
							["GUID"] = "TMW:icon:1VLNpV7YTvyi",
						}, -- [8]
						{
							["GUID"] = "TMW:icon:1VLNpV7YX54q",
						}, -- [9]
						{
							["GUID"] = "TMW:icon:1VLNpV7YaEeo",
						}, -- [10]
						{
							["GUID"] = "TMW:icon:1VLNpV7YdMel",
						}, -- [11]
						{
							["GUID"] = "TMW:icon:1VLNpV7YgGaD",
						}, -- [12]
						{
							["GUID"] = "TMW:icon:1VLNpV7Yjna9",
						}, -- [13]
						{
							["GUID"] = "TMW:icon:1VLNpV7YmhW3",
						}, -- [14]
						{
							["GUID"] = "TMW:icon:1VLNpV7YpnyM",
						}, -- [15]
						{
							["GUID"] = "TMW:icon:1VLNpV7YsemO",
						}, -- [16]
						{
							["GUID"] = "TMW:icon:1VLNpV7Yvmmg",
						}, -- [17]
						{
							["GUID"] = "TMW:icon:1VLNpV7YzMS4",
						}, -- [18]
						{
							["GUID"] = "TMW:icon:1VLNpV7Z0W0p",
						}, -- [19]
						{
							["GUID"] = "TMW:icon:1VLNpV7Z3XmS",
						}, -- [20]
						{
							["GUID"] = "TMW:icon:1VLNpV7Z6Uq1",
						}, -- [21]
						{
							["GUID"] = "TMW:icon:1VLNpV7Z9WaL",
						}, -- [22]
						{
							["GUID"] = "TMW:icon:1VLNpV7ZCYKI",
						}, -- [23]
						{
							["GUID"] = "TMW:icon:1VLNpV7ZFdCZ",
						}, -- [24]
						{
							["GUID"] = "TMW:icon:1VLNpV7ZIbqz",
						}, -- [25]
						{
							["GUID"] = "TMW:icon:1VLNpV7ZLXKX",
						}, -- [26]
						{
							["GUID"] = "TMW:icon:1VLNpV7ZOZ4w",
						}, -- [27]
						{
							["GUID"] = "TMW:icon:1VLNpV7ZRfWg",
						}, -- [28]
						{
							["GUID"] = "TMW:icon:1VLNpV7ZVUqr",
						}, -- [29]
						{
							["GUID"] = "TMW:icon:1VLNpV7ZYQKs",
						}, -- [30]
					},
					["Name"] = "5码小怪",
					["GUID"] = "TMW:group:1VLNpV7kQyS2",
					["Point"] = {
						["y"] = 22.12384033203125,
						["relativeTo"] = "TMW:group:1Xn6tR1fm2iE",
						["point"] = "RIGHT",
						["relativePoint"] = "RIGHT",
						["x"] = 698.52294921875,
					},
				}, -- [8]
				{
					["Strata"] = "TOOLTIP",
					["Rows"] = 2,
					["Locked"] = true,
					["Columns"] = 2,
					["Icons"] = {
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:group:1Xn6tR1fm2iE", -- [1]
							},
							["Enabled"] = true,
						}, -- [1]
						[3] = {
							["Type"] = "meta",
							["Icons"] = {
								"TMW:group:1XpSPMgAj=0t", -- [1]
							},
							["Enabled"] = true,
						},
						[31] = {
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1Xl94zIQaFq8", -- [1]
							},
							["CustomTex"] = "99999",
						},
					},
					["Name"] = "整合图标",
					["SettingsPerView"] = {
						["icon"] = {
							["BorderIcon"] = 1,
						},
					},
					["GUID"] = "TMW:group:1XcD3fuZduaU",
					["Point"] = {
						["point"] = "TOPLEFT",
						["relativePoint"] = "TOPLEFT",
					},
				}, -- [9]
				{
					["Scale"] = 1,
					["Rows"] = 3,
					["Locked"] = true,
					["Controlled"] = true,
					["Columns"] = 10,
					["Icons"] = {
						{
							["Unit"] = "nameplate",
							["Type"] = "unitcondition",
							["UnConditionDur"] = 1,
							["Enabled"] = true,
							["UnitConditions"] = {
								{
									["Type"] = "LIBRANGECHECK",
									["Operator"] = "<=",
									["Name"] = "1822",
									["Level"] = 30,
								}, -- [1]
								["n"] = 1,
							},
							["Events"] = {
								{
									["Type"] = "Counter",
									["CounterAmt"] = 0,
									["Counter"] = "xiaoguai",
									["CounterOperation"] = "=",
									["Event"] = "OnEventsRestored",
								}, -- [1]
								{
									["Type"] = "Counter",
									["Counter"] = "xiaoguai",
									["Event"] = "OnShow",
								}, -- [2]
								{
									["PassingCndt"] = true,
									["Type"] = "Counter",
									["CndtJustPassed"] = true,
									["Counter"] = "xiaoguai",
									["CounterOperation"] = "-",
									["Event"] = "OnHide",
								}, -- [3]
								["n"] = 3,
							},
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
									["Texts"] = {
										[2] = "",
									},
								},
							},
							["CustomTex"] = "112054",
							["FakeHidden"] = true,
						}, -- [1]
						[3] = {
							["GUID"] = "TMW:icon:1RNozLnEV2bc",
						},
						[5] = {
							["GUID"] = "TMW:icon:1RNozLnEZQ61",
						},
					},
					["Name"] = "近战范围小怪的数量",
					["GUID"] = "TMW:group:1RNozLnGszMQ",
					["Point"] = {
						["y"] = -56.755126953125,
						["relativeTo"] = "TMW:group:1Xn6tR1fm2iE",
						["point"] = "TOPLEFT",
						["relativePoint"] = "TOPLEFT",
						["x"] = 703.2440185546875,
					},
				}, -- [10]
				{
					["Scale"] = 1,
					["Rows"] = 2,
					["Locked"] = true,
					["Columns"] = 10,
					["Icons"] = {
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:group:1Xy1A=9SdFKH", -- [1]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/S1",
							["FakeHidden"] = true,
						}, -- [1]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1XiAub3bXqSr", -- [1]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/S2",
							["FakeHidden"] = true,
						}, -- [2]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1XiAudWczBuj", -- [1]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/S3",
							["FakeHidden"] = true,
						}, -- [3]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1XiAsb1ZbWi_", -- [1]
								"TMW:icon:1Y4HOsMpboqw", -- [2]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/S4",
							["FakeHidden"] = true,
						}, -- [4]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1XiAunncFKOx", -- [1]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/S5",
							["FakeHidden"] = true,
						}, -- [5]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1XeX1GVqKkqh", -- [1]
								"TMW:icon:1XeX1GV_TRKU", -- [2]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/S6",
							["FakeHidden"] = true,
						}, -- [6]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1XeX1GiY5Nm2", -- [1]
								"TMW:icon:1Y7D4amLyW0_", -- [2]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/S7",
							["FakeHidden"] = true,
						}, -- [7]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1Y7DNUM3XtSR", -- [1]
								"TMW:icon:1Y7DNUMC324t", -- [2]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/S1",
							["FakeHidden"] = true,
						}, -- [8]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1Y7DExNN1G0L", -- [1]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/S8",
							["FakeHidden"] = true,
						}, -- [9]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1XeX1GWIKsKM", -- [1]
								"TMW:icon:1XpQ2OOg8Zyx", -- [2]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/S9",
							["FakeHidden"] = true,
						}, -- [10]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1XiAsbhpzM4_", -- [1]
								"TMW:icon:1XiB9m0jlbe9", -- [2]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/S10",
							["FakeHidden"] = true,
						}, -- [11]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1XeX1GX8wcK8", -- [1]
								"TMW:icon:1XiBSFGDNfeY", -- [2]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/N1",
							["FakeHidden"] = true,
						}, -- [12]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1XeX1GWbFQuX", -- [1]
								"TMW:icon:1Y5aGhSU=cmK", -- [2]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/N2",
							["FakeHidden"] = true,
						}, -- [13]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1XeX1GWl_IKm", -- [1]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/N3",
							["FakeHidden"] = true,
						}, -- [14]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1XeX1GWzwzW8", -- [1]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/N4",
							["FakeHidden"] = true,
						}, -- [15]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1XeX1GXPdR0B", -- [1]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/N5",
							["FakeHidden"] = true,
						}, -- [16]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1XeX1Gm05ia_", -- [1]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/n6",
							["FakeHidden"] = true,
						}, -- [17]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1XeaUTssteKt", -- [1]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/N7",
							["FakeHidden"] = true,
						}, -- [18]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1XeX1GmDS=4Q", -- [1]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/N8",
							["FakeHidden"] = true,
						}, -- [19]
					},
					["Name"] = "图腾舞",
					["Conditions"] = {
						{
							["Type"] = "PTSINTAL",
							["Name"] = "萨满之怒",
							["Level"] = 1,
						}, -- [1]
						{
							["Type"] = "COMBAT",
						}, -- [2]
						{
							["Type"] = "ALIVE",
						}, -- [3]
						{
							["Type"] = "COMBAT",
							["Unit"] = "target",
							["PrtsBefore"] = 1,
						}, -- [4]
						{
							["Type"] = "NAME",
							["PrtsAfter"] = 1,
							["Unit"] = "target",
							["Name"] = "灰舌导魔师",
							["AndOr"] = "OR",
						}, -- [5]
						["n"] = 5,
					},
					["GUID"] = "TMW:group:1Xn6tR1fm2iE",
					["Point"] = {
						["y"] = -60.85595703125,
						["relativeTo"] = "TMW:group:1X_0=Lpa6dSC",
						["x"] = -75.44677734375,
					},
				}, -- [11]
				{
					["Scale"] = 1,
					["Rows"] = 2,
					["Locked"] = true,
					["Columns"] = 10,
					["Icons"] = {
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:group:1Xy1A=9SdFKH", -- [1]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/S1",
							["FakeHidden"] = true,
						}, -- [1]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1XiAub3bXqSr", -- [1]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/S2",
							["FakeHidden"] = true,
						}, -- [2]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1XiAudWczBuj", -- [1]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/S3",
							["FakeHidden"] = true,
						}, -- [3]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1XiAsb1ZbWi_", -- [1]
								"TMW:icon:1Y4HOsMpboqw", -- [2]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/S4",
							["FakeHidden"] = true,
						}, -- [4]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1XiAunncFKOx", -- [1]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/S5",
							["FakeHidden"] = true,
						}, -- [5]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1XeX1GVqKkqh", -- [1]
								"TMW:icon:1XeX1GV_TRKU", -- [2]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/S6",
							["FakeHidden"] = true,
						}, -- [6]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1XeX1GiY5Nm2", -- [1]
								"TMW:icon:1Y7D4amLyW0_", -- [2]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/S7",
							["FakeHidden"] = true,
						}, -- [7]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1Y7DNUM3XtSR", -- [1]
								"TMW:icon:1Y7DNUMC324t", -- [2]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/S1",
							["FakeHidden"] = true,
						}, -- [8]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1Y7DExNN1G0L", -- [1]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/S8",
							["FakeHidden"] = true,
						}, -- [9]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1XeX1GWIKsKM", -- [1]
								"TMW:icon:1XpQ2OOg8Zyx", -- [2]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/S9",
							["FakeHidden"] = true,
						}, -- [10]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1XiAsbhpzM4_", -- [1]
								"TMW:icon:1XiB9m0jlbe9", -- [2]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/S10",
							["FakeHidden"] = true,
						}, -- [11]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1XeX1GX8wcK8", -- [1]
								"TMW:icon:1XiBSFGDNfeY", -- [2]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/N1",
							["FakeHidden"] = true,
						}, -- [12]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1XeX1GWbFQuX", -- [1]
								"TMW:icon:1Y5aGhSU=cmK", -- [2]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/N2",
							["FakeHidden"] = true,
						}, -- [13]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1XeX1GWl_IKm", -- [1]
							},
							["CustomTex"] = "Interface/AddOns/PUPU/N3",
							["FakeHidden"] = true,
						}, -- [14]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1XeX1GWzwzW8", -- [1]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/N4",
							["FakeHidden"] = true,
						}, -- [15]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1XeX1GXPdR0B", -- [1]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/N5",
							["FakeHidden"] = true,
						}, -- [16]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1XeX1Gm05ia_", -- [1]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/n6",
							["FakeHidden"] = true,
						}, -- [17]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1XeaUTssteKt", -- [1]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/N7",
							["FakeHidden"] = true,
						}, -- [18]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1XeX1GmDS=4Q", -- [1]
							},
							["Enabled"] = true,
							["CustomTex"] = "Interface/AddOns/PUPU/N8",
							["FakeHidden"] = true,
						}, -- [19]
					},
					["Name"] = "不舞",
					["Conditions"] = {
						{
							["Type"] = "PTSINTAL",
							["Name"] = "萨满之怒",
							["Level"] = 1,
						}, -- [1]
						{
							["Type"] = "COMBAT",
						}, -- [2]
						{
							["Type"] = "ALIVE",
						}, -- [3]
						{
							["Type"] = "COMBAT",
							["Unit"] = "target",
							["PrtsBefore"] = 1,
						}, -- [4]
						{
							["Type"] = "NAME",
							["PrtsAfter"] = 1,
							["Unit"] = "target",
							["Name"] = "灰舌导魔师",
							["AndOr"] = "OR",
						}, -- [5]
						["n"] = 5,
					},
					["GUID"] = "TMW:group:1XpSPMgAj=0t",
					["Point"] = {
						["y"] = -60,
						["relativeTo"] = "TMW:group:1Xn6tR1fm2iE",
					},
				}, -- [12]
				{
					["Point"] = {
						["y"] = -260.7487728102823,
						["x"] = 55.00007345656733,
						["point"] = "TOP",
						["relativePoint"] = "TOP",
					},
					["Scale"] = 1.002330303192139,
					["Rows"] = 2,
					["Enabled"] = false,
					["Columns"] = 1,
					["Icons"] = {
						{
							["FakeHidden"] = true,
						}, -- [1]
						nil, -- [2]
						{
							["Type"] = "conditionicon",
							["Enabled"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon2",
									["Texts"] = {
										"里", -- [1]
									},
								},
							},
							["CustomTex"] = "Interface/AddOns/PUPU/N10",
							["FakeHidden"] = true,
						}, -- [3]
						{
							["Type"] = "conditionicon",
							["Enabled"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon2",
									["Texts"] = {
										"更", -- [1]
									},
								},
							},
							["CustomTex"] = "Interface/AddOns/PUPU/N10",
							["FakeHidden"] = true,
						}, -- [4]
						{
							["Type"] = "conditionicon",
							["Enabled"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon2",
									["Texts"] = {
										"多", -- [1]
									},
								},
							},
							["CustomTex"] = "Interface/AddOns/PUPU/N10",
							["FakeHidden"] = true,
						}, -- [5]
						{
							["Type"] = "conditionicon",
							["Enabled"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon2",
									["Texts"] = {
										"职", -- [1]
									},
								},
							},
							["CustomTex"] = "Interface/AddOns/PUPU/N10",
							["FakeHidden"] = true,
						}, -- [6]
						{
							["Type"] = "conditionicon",
							["Enabled"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon2",
									["Texts"] = {
										"业", -- [1]
									},
								},
							},
							["CustomTex"] = "Interface/AddOns/PUPU/N10",
							["FakeHidden"] = true,
						}, -- [7]
						{
							["Type"] = "conditionicon",
							["Enabled"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon2",
									["Texts"] = {
										"一", -- [1]
									},
								},
							},
							["CustomTex"] = "Interface/AddOns/PUPU/N10",
							["FakeHidden"] = true,
						}, -- [8]
						{
							["Type"] = "conditionicon",
							["Enabled"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon2",
									["Texts"] = {
										"键", -- [1]
									},
								},
							},
							["CustomTex"] = "Interface/AddOns/PUPU/N10",
							["FakeHidden"] = true,
						}, -- [9]
						{
							["Type"] = "conditionicon",
							["Enabled"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon2",
									["Texts"] = {
										"输", -- [1]
									},
								},
							},
							["CustomTex"] = "Interface/AddOns/PUPU/N10",
							["FakeHidden"] = true,
						}, -- [10]
						{
							["Type"] = "conditionicon",
							["Enabled"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon2",
									["Texts"] = {
										"出", -- [1]
									},
								},
							},
							["CustomTex"] = "Interface/AddOns/PUPU/N10",
							["FakeHidden"] = true,
						}, -- [11]
						{
							["Type"] = "conditionicon",
							["Enabled"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon2",
									["Texts"] = {
										"请", -- [1]
									},
								},
							},
							["CustomTex"] = "Interface/AddOns/PUPU/N10",
							["FakeHidden"] = true,
						}, -- [12]
						{
							["Type"] = "conditionicon",
							["Enabled"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon2",
									["Texts"] = {
										"加", -- [1]
									},
								},
							},
							["CustomTex"] = "Interface/AddOns/PUPU/N10",
							["FakeHidden"] = true,
						}, -- [13]
						{
							["Type"] = "conditionicon",
							["Enabled"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon2",
									["Texts"] = {
										"微", -- [1]
									},
								},
							},
							["CustomTex"] = "Interface/AddOns/PUPU/N10",
							["FakeHidden"] = true,
						}, -- [14]
						[24] = {
							["Type"] = "conditionicon",
							["Enabled"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon2",
									["Texts"] = {
										"m", -- [1]
									},
								},
							},
							["CustomTex"] = "Interface/AddOns/PUPU/N10",
							["FakeHidden"] = true,
						},
						[25] = {
							["Type"] = "conditionicon",
							["Enabled"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon2",
									["Texts"] = {
										"y", -- [1]
									},
								},
							},
							["CustomTex"] = "Interface/AddOns/PUPU/N10",
							["FakeHidden"] = true,
						},
						[26] = {
							["Type"] = "conditionicon",
							["Enabled"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon2",
									["Texts"] = {
										"y", -- [1]
									},
								},
							},
							["CustomTex"] = "Interface/AddOns/PUPU/N10",
							["FakeHidden"] = true,
						},
						[27] = {
							["Type"] = "conditionicon",
							["Enabled"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon2",
									["Texts"] = {
										"1", -- [1]
									},
								},
							},
							["CustomTex"] = "Interface/AddOns/PUPU/N10",
							["FakeHidden"] = true,
						},
						[28] = {
							["Type"] = "conditionicon",
							["Enabled"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon2",
									["Texts"] = {
										"2", -- [1]
									},
								},
							},
							["CustomTex"] = "Interface/AddOns/PUPU/N10",
							["FakeHidden"] = true,
						},
						[29] = {
							["Type"] = "conditionicon",
							["Enabled"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon2",
									["Texts"] = {
										"6", -- [1]
									},
								},
							},
							["CustomTex"] = "Interface/AddOns/PUPU/N10",
							["FakeHidden"] = true,
						},
						[20] = {
							["Type"] = "conditionicon",
							["Enabled"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon2",
									["Texts"] = {
										"信", -- [1]
									},
								},
							},
							["CustomTex"] = "Interface/AddOns/PUPU/N10",
							["FakeHidden"] = true,
						},
						[21] = {
							["Type"] = "conditionicon",
							["Enabled"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon2",
									["Texts"] = {
										"z", -- [1]
									},
								},
							},
							["CustomTex"] = "Interface/AddOns/PUPU/N10",
							["FakeHidden"] = true,
						},
						[22] = {
							["Type"] = "conditionicon",
							["Enabled"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon2",
									["Texts"] = {
										"z", -- [1]
									},
								},
							},
							["CustomTex"] = "Interface/AddOns/PUPU/N10",
							["FakeHidden"] = true,
						},
						[23] = {
							["Type"] = "conditionicon",
							["Enabled"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon2",
									["Texts"] = {
										"m", -- [1]
									},
								},
							},
							["CustomTex"] = "Interface/AddOns/PUPU/N10",
							["FakeHidden"] = true,
						},
					},
					["Name"] = "拖动",
					["GUID"] = "TMW:group:1X_0=Lpa6dSC",
				}, -- [13]
			},
			["Locked"] = true,
		},
	},
}
