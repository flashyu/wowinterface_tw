
TomTomDB = {
	["profileKeys"] = {
		["狂暴專家 - 伊弗斯"] = "Default",
		["上山打鸟 - 伊弗斯"] = "Default",
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
		["狂暴專家 - 伊弗斯"] = "狂暴專家 - 伊弗斯",
		["上山打鸟 - 伊弗斯"] = "上山打鸟 - 伊弗斯",
	},
	["profiles"] = {
		["狂暴專家 - 伊弗斯"] = {
			[1439] = {
				["1439:386030525.2709:435314342.91409:TomTom 路径点"] = {
					1439, -- [1]
					0.3860305252709032, -- [2]
					0.4353143429140918, -- [3]
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
		["上山打鸟 - 伊弗斯"] = {
		},
	},
}
