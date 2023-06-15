
TomTomDB = {
	["profileKeys"] = {
		["上山打鸟 - 伊弗斯"] = "Default",
		["狂暴專家 - 伊弗斯"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["arrow"] = {
				["position"] = {
					"CENTER", -- [1]
					nil, -- [2]
					"CENTER", -- [3]
					0, -- [4]
					0, -- [5]
				},
			},
			["block"] = {
				["position"] = {
					"TOPRIGHT", -- [1]
					nil, -- [2]
					"TOPRIGHT", -- [3]
					-78.33479309082031, -- [4]
					-215.5559234619141, -- [5]
				},
			},
		},
	},
}
TomTomWaypoints = nil
TomTomWaypointsM = {
	["profileKeys"] = {
		["上山打鸟 - 伊弗斯"] = "上山打鸟 - 伊弗斯",
		["狂暴專家 - 伊弗斯"] = "狂暴專家 - 伊弗斯",
	},
	["profiles"] = {
		["上山打鸟 - 伊弗斯"] = {
		},
		["狂暴專家 - 伊弗斯"] = {
			[113] = {
				["113:395887275.70157:585014899.25502:TomTom 路径点"] = {
					113, -- [1]
					0.3958872757015681, -- [2]
					0.5850148992550188, -- [3]
					["arrivaldistance"] = 15,
					["crazy"] = true,
					["persistent"] = true,
					["desc"] = "TomTom 路径点",
					["silent"] = true,
					["cleardistance"] = 10,
					["title"] = "TomTom 路径点",
					["from"] = "TomTom/wm",
					["callbacks"] = {
						["distance"] = {
							[10] = nil --[[ skipped inline function ]],
							[15] = nil --[[ skipped inline function ]],
						},
						["world"] = {
							["onclick"] = nil --[[ skipped inline function ]],
							["tooltip_update"] = nil --[[ skipped inline function ]],
							["tooltip_show"] = nil --[[ skipped inline function ]],
						},
						["minimap"] = {
							["onclick"] = nil --[[ skipped inline function ]],
							["tooltip_update"] = nil --[[ skipped inline function ]],
							["tooltip_show"] = nil --[[ skipped inline function ]],
						},
					},
					["minimap"] = true,
					["world"] = true,
				},
			},
		},
	},
}
