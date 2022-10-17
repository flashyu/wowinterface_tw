
OmniCCDB = {
	["global"] = {
		["dbVersion"] = 6,
		["addonVersion"] = "9.2.1",
	},
	["profileKeys"] = {
		["骑风 - 祈福"] = "默认",
	},
	["profiles"] = {
		["默认"] = {
			["rules"] = {
				{
					["enabled"] = false,
					["patterns"] = {
						"Aura", -- [1]
						"Buff", -- [2]
						"Debuff", -- [3]
					},
					["name"] = "光环",
					["id"] = "auras",
				}, -- [1]
				{
					["enabled"] = false,
					["patterns"] = {
						"Plate", -- [1]
					},
					["name"] = "单位姓名板",
					["id"] = "plates",
				}, -- [2]
				{
					["enabled"] = false,
					["patterns"] = {
						"ActionButton", -- [1]
					},
					["name"] = "动作条",
					["id"] = "actions",
				}, -- [3]
			},
			["themes"] = {
				["默认"] = {
					["textStyles"] = {
						["seconds"] = {
						},
						["soon"] = {
						},
						["minutes"] = {
						},
					},
					["scaleText"] = false,
				},
			},
		},
	},
}
OmniCC4Config = nil
