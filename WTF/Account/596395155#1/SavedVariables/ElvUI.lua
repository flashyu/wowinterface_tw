
ElvDB = {
	["profileKeys"] = {
		["骑风 - 祈福"] = "Default",
		["红发男 - 祈福"] = "Default",
		["死哪了 - 祈福"] = "Default",
		["仓库技师 - 祈福"] = "Default",
	},
	["DisabledAddOns"] = {
	},
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["class"] = {
		["祈福"] = {
			["死哪了"] = "DEATHKNIGHT",
			["红发男"] = "MAGE",
			["仓库技师"] = "WARRIOR",
			["骑风"] = "DRUID",
		},
	},
	["profiles"] = {
		["Default"] = {
			["databars"] = {
				["reputation"] = {
					["enable"] = true,
					["width"] = 8,
					["height"] = 202,
					["orientation"] = "VERTICAL",
				},
			},
			["general"] = {
				["valuecolor"] = {
					["r"] = 1,
					["g"] = 0.49,
					["b"] = 0.04,
				},
			},
			["dbConverted"] = 12.91,
			["convertPages"] = true,
			["unitframe"] = {
				["units"] = {
					["party"] = {
						["targetsGroup"] = {
							["disableMouseoverGlow"] = false,
							["disableFocusGlow"] = false,
							["disableTargetGlow"] = false,
						},
						["petsGroup"] = {
							["disableTargetGlow"] = false,
							["disableMouseoverGlow"] = false,
							["disableFocusGlow"] = false,
						},
					},
				},
				["colors"] = {
					["healthclass"] = true,
					["auraBarBuff"] = {
						["r"] = 1,
						["g"] = 0.49,
						["b"] = 0.04,
					},
					["castClassColor"] = true,
				},
			},
			["datatexts"] = {
				["panels"] = {
					["MinimapPanel"] = {
						"WeakAuras", -- [1]
						"Date", -- [2]
					},
				},
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
					["buttonSize"] = 36,
					["buttonsPerRow"] = 12,
				},
				["flyoutSize"] = 35,
				["bar1"] = {
					["buttonSize"] = 36,
				},
				["bar6"] = {
					["buttons"] = 6,
					["buttonsPerRow"] = 6,
				},
				["microbar"] = {
					["buttons"] = 10,
				},
				["bar2"] = {
					["enabled"] = true,
					["buttonSize"] = 36,
				},
				["bar5"] = {
					["buttons"] = 12,
					["buttonSize"] = 36,
				},
				["lockActionBars"] = false,
				["keyDown"] = false,
				["stanceBar"] = {
					["enabled"] = false,
				},
				["bar4"] = {
					["buttonSize"] = 36,
				},
			},
			["movers"] = {
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,-574,282",
				["ElvUF_FocusCastbarMover"] = "BOTTOM,UIParent,BOTTOM,309,203",
				["TotemTrackerMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,417,26",
				["ShiftAB"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,418,209",
				["ReputationBarMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,417,4",
				["ElvUF_FocusMover"] = "BOTTOM,UIParent,BOTTOM,307,228",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,23",
				["ExperienceBarMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,4,215",
				["AlertFrameMover"] = "TOP,UIParent,TOP,0,-163",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,98",
				["ElvUF_PetCastbarMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,471,78",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-269,350",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,61",
				["ElvAB_5"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,-490,22",
				["VehicleLeaveButton"] = "BOTTOM,UIParent,BOTTOM,0,493",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,268,350",
			},
			["chat"] = {
				["tabSelectorColor"] = {
					["r"] = 1,
					["g"] = 0.49,
					["b"] = 0.04,
				},
				["panelSnapRightID"] = 4,
				["panelSnapLeftID"] = 1,
			},
		},
	},
	["gold"] = {
		["祈福"] = {
			["死哪了"] = 2000,
			["红发男"] = 0,
			["仓库技师"] = 4865907,
			["骑风"] = 195633149,
		},
	},
	["global"] = {
		["datatexts"] = {
			["settings"] = {
				["Currencies"] = {
					["tooltipData"] = {
						{
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						}, -- [1]
						nil, -- [2]
						{
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						}, -- [3]
						{
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						}, -- [4]
						{
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						}, -- [5]
						{
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						}, -- [6]
						{
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						}, -- [7]
						{
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						}, -- [8]
						{
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						}, -- [9]
					},
				},
			},
		},
		["general"] = {
			["AceGUI"] = {
				["height"] = 500,
				["width"] = 700,
			},
			["UIScale"] = 0.7000000000000001,
		},
	},
	["faction"] = {
		["祈福"] = {
			["死哪了"] = "Alliance",
			["红发男"] = "Alliance",
			["仓库技师"] = "Alliance",
			["骑风"] = "Alliance",
		},
	},
	["serverID"] = {
		[4778] = {
			["祈福"] = true,
		},
	},
}
ElvPrivateDB = {
	["profileKeys"] = {
		["骑风 - 祈福"] = "骑风 - 祈福",
		["红发男 - 祈福"] = "红发男 - 祈福",
		["死哪了 - 祈福"] = "死哪了 - 祈福",
		["仓库技师 - 祈福"] = "仓库技师 - 祈福",
	},
	["profiles"] = {
		["骑风 - 祈福"] = {
			["general"] = {
				["worldMap"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["theme"] = "class",
			["install_complete"] = 3,
		},
		["红发男 - 祈福"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = 12.91,
		},
		["死哪了 - 祈福"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = 12.91,
		},
		["仓库技师 - 祈福"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = 12.91,
		},
	},
}
