
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
					["orientation"] = "VERTICAL",
					["height"] = 202,
				},
			},
			["general"] = {
				["valuecolor"] = {
					["r"] = 1,
					["g"] = 0.49,
					["b"] = 0.04,
				},
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
			["dbConverted"] = 12.99,
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-552,253",
				["ElvUF_Raid1Mover"] = "TOPLEFT,UIParent,TOPLEFT,4,-205",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,98",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,23",
				["ElvUF_Raid3Mover"] = "TOPLEFT,UIParent,TOPLEFT,4,-205",
				["ElvUF_AssistMover"] = "TOPLEFT,UIParent,TOPLEFT,373,-82",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,61",
				["ElvAB_5"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,-490,22",
				["VehicleLeaveButton"] = "BOTTOM,UIParent,BOTTOM,0,493",
				["LootFrameMover"] = "TOPLEFT,UIParent,TOPLEFT,502,-232",
				["ExperienceBarMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,4,215",
				["ShiftAB"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,418,209",
				["TotemTrackerMover"] = "TOPLEFT,UIParent,TOPLEFT,582,-33",
				["VOICECHAT"] = "TOPLEFT,UIParent,TOPLEFT,452,-255",
				["ElvUF_Raid2Mover"] = "TOPLEFT,UIParent,TOPLEFT,4,-205",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,-553,273",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-272,376",
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,-554,311",
				["ElvUF_TankMover"] = "TOPLEFT,UIParent,TOPLEFT,250,-82",
				["MicrobarMover"] = "TOPLEFT,UIParent,TOPLEFT,462,-4",
				["ElvUF_PetCastbarMover"] = "BOTTOM,UIParent,BOTTOM,-288,277",
				["ElvUF_PetMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,553,301",
				["ElvUF_PartyMover"] = "TOPLEFT,UIParent,TOPLEFT,4,-204",
				["AlertFrameMover"] = "TOP,UIParent,TOP,0,-163",
				["ReputationBarMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,417,4",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,272,376",
			},
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
					["enabled"] = true,
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
			["convertPages"] = true,
		},
	},
	["gold"] = {
		["祈福"] = {
			["死哪了"] = 2000,
			["红发男"] = 0,
			["仓库技师"] = 4301429,
			["骑风"] = 47595794,
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
						{
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						}, -- [10]
						{
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						}, -- [11]
					},
				},
			},
		},
		["general"] = {
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
