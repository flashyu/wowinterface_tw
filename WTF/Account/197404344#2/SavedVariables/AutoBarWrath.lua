
AutoBarDB = {
	["classes"] = {
		["潜行者"] = {
			["barList"] = {
				["AutoBarClassBarRogue"] = {
					["share"] = "2",
					["fadeOut"] = false,
					["ROGUE"] = true,
					["buttonHeight"] = 36,
					["rows"] = 1,
					["dockShiftY"] = 0,
					["alignButtons"] = "3",
					["posX"] = 300,
					["hide"] = false,
					["enabled"] = true,
					["columns"] = 10,
					["alpha"] = 1,
					["buttonWidth"] = 36,
					["buttonKeys"] = {
						"AutoBarButtonShields", -- [1]
						"AutoBarButtonStealth", -- [2]
						"AutoBarButtonPoisonLethal", -- [3]
						"AutoBarButtonPoisonNonlethal", -- [4]
						"AutoBarButtonInterrupt", -- [5]
						"AutoBarButtonCharge", -- [6]
						"AutoBarButtonER", -- [7]
						"AutoBarButtonPickLock", -- [8]
						"AutoBarButtonTrap", -- [9]
					},
					["posY"] = 280,
					["scale"] = 1,
					["popupDirection"] = "1",
					["padding"] = 0,
					["dockShiftX"] = 0,
					["frameStrata"] = "LOW",
				},
			},
			["buttonList"] = {
				["AutoBarButtonShields"] = {
					["barKey"] = "AutoBarClassBarRogue",
					["buttonClass"] = "AutoBarButtonShields",
					["square_popups"] = true,
					["enabled"] = true,
					["buttonKey"] = "AutoBarButtonShields",
					["defaultButtonIndex"] = 1,
				},
				["AutoBarButtonStealth"] = {
					["barKey"] = "AutoBarClassBarRogue",
					["buttonClass"] = "AutoBarButtonStealth",
					["square_popups"] = true,
					["enabled"] = true,
					["buttonKey"] = "AutoBarButtonStealth",
					["defaultButtonIndex"] = 2,
				},
				["AutoBarButtonPoisonLethal"] = {
					["barKey"] = "AutoBarClassBarRogue",
					["buttonClass"] = "AutoBarButtonPoisonLethal",
					["square_popups"] = true,
					["enabled"] = true,
					["buttonKey"] = "AutoBarButtonPoisonLethal",
					["defaultButtonIndex"] = 3,
				},
				["AutoBarButtonPickLock"] = {
					["barKey"] = "AutoBarClassBarRogue",
					["buttonClass"] = "AutoBarButtonPickLock",
					["square_popups"] = true,
					["enabled"] = true,
					["targeted"] = "Lockpicking",
					["buttonKey"] = "AutoBarButtonPickLock",
					["defaultButtonIndex"] = 8,
				},
				["AutoBarButtonInterrupt"] = {
					["barKey"] = "AutoBarClassBarRogue",
					["buttonClass"] = "AutoBarButtonInterrupt",
					["square_popups"] = true,
					["enabled"] = true,
					["buttonKey"] = "AutoBarButtonInterrupt",
					["defaultButtonIndex"] = 5,
				},
				["AutoBarButtonTrap"] = {
					["barKey"] = "AutoBarClassBarRogue",
					["buttonClass"] = "AutoBarButtonTrap",
					["square_popups"] = true,
					["enabled"] = true,
					["buttonKey"] = "AutoBarButtonTrap",
					["defaultButtonIndex"] = 11,
				},
				["AutoBarButtonPoisonNonlethal"] = {
					["barKey"] = "AutoBarClassBarRogue",
					["buttonClass"] = "AutoBarButtonPoisonNonlethal",
					["square_popups"] = true,
					["enabled"] = true,
					["buttonKey"] = "AutoBarButtonPoisonNonlethal",
					["defaultButtonIndex"] = 4,
				},
				["AutoBarButtonER"] = {
					["barKey"] = "AutoBarClassBarRogue",
					["buttonClass"] = "AutoBarButtonER",
					["square_popups"] = true,
					["enabled"] = true,
					["buttonKey"] = "AutoBarButtonER",
					["defaultButtonIndex"] = 7,
				},
				["AutoBarButtonCharge"] = {
					["barKey"] = "AutoBarClassBarRogue",
					["buttonClass"] = "AutoBarButtonCharge",
					["square_popups"] = true,
					["enabled"] = true,
					["buttonKey"] = "AutoBarButtonCharge",
					["defaultButtonIndex"] = 6,
				},
			},
		},
		["死亡骑士"] = {
			["barList"] = {
				["AutoBarClassBarDeathKnight"] = {
					["share"] = "2",
					["fadeOut"] = false,
					["buttonHeight"] = 36,
					["rows"] = 1,
					["dockShiftY"] = 0,
					["alignButtons"] = "3",
					["posX"] = 300,
					["hide"] = false,
					["enabled"] = true,
					["columns"] = 10,
					["alpha"] = 1,
					["buttonWidth"] = 36,
					["frameStrata"] = "LOW",
					["buttonKeys"] = {
						"AutoBarButtonClassBuff", -- [1]
						"AutoBarButtonDebuff", -- [2]
						"AutoBarButtonClassPet", -- [3]
						"AutoBarButtonClassPets2", -- [4]
						"AutoBarButtonER", -- [5]
						"AutoBarButtonShields", -- [6]
						"AutoBarButtonInterrupt", -- [7]
					},
					["posY"] = 280,
					["popupDirection"] = "1",
					["scale"] = 1,
					["padding"] = 0,
					["dockShiftX"] = 0,
					["DEATHKNIGHT"] = true,
				},
			},
			["buttonList"] = {
				["AutoBarButtonDebuff"] = {
					["barKey"] = "AutoBarClassBarDeathKnight",
					["buttonClass"] = "AutoBarButtonDebuff",
					["defaultButtonIndex"] = 2,
					["enabled"] = true,
					["buttonKey"] = "AutoBarButtonDebuff",
					["square_popups"] = true,
				},
				["AutoBarButtonClassPet"] = {
					["barKey"] = "AutoBarClassBarDeathKnight",
					["buttonClass"] = "AutoBarButtonClassPet",
					["defaultButtonIndex"] = 3,
					["enabled"] = true,
					["buttonKey"] = "AutoBarButtonClassPet",
					["square_popups"] = true,
				},
				["AutoBarButtonShields"] = {
					["barKey"] = "AutoBarClassBarDeathKnight",
					["buttonClass"] = "AutoBarButtonShields",
					["defaultButtonIndex"] = "*",
					["arrangeOnUse"] = true,
					["enabled"] = true,
					["buttonKey"] = "AutoBarButtonShields",
					["square_popups"] = true,
				},
				["AutoBarButtonInterrupt"] = {
					["barKey"] = "AutoBarClassBarDeathKnight",
					["buttonClass"] = "AutoBarButtonInterrupt",
					["defaultButtonIndex"] = "*",
					["arrangeOnUse"] = true,
					["enabled"] = true,
					["buttonKey"] = "AutoBarButtonInterrupt",
					["square_popups"] = true,
				},
				["AutoBarButtonER"] = {
					["barKey"] = "AutoBarClassBarDeathKnight",
					["buttonClass"] = "AutoBarButtonER",
					["defaultButtonIndex"] = 5,
					["enabled"] = true,
					["buttonKey"] = "AutoBarButtonER",
					["square_popups"] = true,
				},
				["AutoBarButtonClassPets2"] = {
					["barKey"] = "AutoBarClassBarDeathKnight",
					["buttonClass"] = "AutoBarButtonClassPets2",
					["defaultButtonIndex"] = 4,
					["enabled"] = true,
					["buttonKey"] = "AutoBarButtonClassPets2",
					["square_popups"] = true,
				},
				["AutoBarButtonClassBuff"] = {
					["barKey"] = "AutoBarClassBarDeathKnight",
					["buttonClass"] = "AutoBarButtonClassBuff",
					["defaultButtonIndex"] = 1,
					["enabled"] = true,
					["buttonKey"] = "AutoBarButtonClassBuff",
					["square_popups"] = true,
				},
			},
		},
		["牧师"] = {
			["barList"] = {
				["AutoBarClassBarPriest"] = {
					["share"] = "2",
					["fadeOut"] = false,
					["buttonHeight"] = 36,
					["rows"] = 1,
					["dockShiftY"] = 0,
					["alignButtons"] = "3",
					["posX"] = 300,
					["hide"] = false,
					["enabled"] = true,
					["columns"] = 10,
					["alpha"] = 1,
					["buttonWidth"] = 36,
					["PRIEST"] = true,
					["buttonKeys"] = {
						"AutoBarButtonShields", -- [1]
						"AutoBarButtonER", -- [2]
						"AutoBarButtonClassBuff", -- [3]
						"AutoBarButtonClassPet", -- [4]
						"AutoBarButtonInterrupt", -- [5]
					},
					["posY"] = 280,
					["scale"] = 1,
					["popupDirection"] = "1",
					["padding"] = 0,
					["dockShiftX"] = 0,
					["frameStrata"] = "LOW",
				},
			},
			["buttonList"] = {
				["AutoBarButtonClassPet"] = {
					["barKey"] = "AutoBarClassBarPriest",
					["buttonClass"] = "AutoBarButtonClassPet",
					["square_popups"] = true,
					["enabled"] = true,
					["buttonKey"] = "AutoBarButtonClassPet",
					["defaultButtonIndex"] = 4,
				},
				["AutoBarButtonShields"] = {
					["barKey"] = "AutoBarClassBarPriest",
					["buttonClass"] = "AutoBarButtonShields",
					["square_popups"] = true,
					["enabled"] = true,
					["buttonKey"] = "AutoBarButtonShields",
					["defaultButtonIndex"] = 1,
				},
				["AutoBarButtonInterrupt"] = {
					["barKey"] = "AutoBarClassBarPriest",
					["buttonClass"] = "AutoBarButtonInterrupt",
					["square_popups"] = true,
					["enabled"] = true,
					["buttonKey"] = "AutoBarButtonInterrupt",
					["defaultButtonIndex"] = 5,
				},
				["AutoBarButtonER"] = {
					["barKey"] = "AutoBarClassBarPriest",
					["buttonClass"] = "AutoBarButtonER",
					["square_popups"] = true,
					["enabled"] = true,
					["buttonKey"] = "AutoBarButtonER",
					["defaultButtonIndex"] = 2,
				},
				["AutoBarButtonClassBuff"] = {
					["barKey"] = "AutoBarClassBarPriest",
					["buttonClass"] = "AutoBarButtonClassBuff",
					["square_popups"] = true,
					["enabled"] = true,
					["buttonKey"] = "AutoBarButtonClassBuff",
					["defaultButtonIndex"] = 3,
				},
			},
		},
	},
	["chars"] = {
		["特变电工 - 祈福"] = {
			["buttonDataList"] = {
				["AutoBarButtonMount"] = {
				},
			},
			["barList"] = {
			},
			["buttonList"] = {
			},
		},
		["码农巴菲特 - 祈福"] = {
			["buttonDataList"] = {
				["AutoBarButtonMount"] = {
				},
			},
			["barList"] = {
			},
			["buttonList"] = {
			},
		},
		["新特能源 - 祈福"] = {
			["buttonDataList"] = {
				["AutoBarButtonMount"] = {
				},
			},
			["barList"] = {
			},
			["buttonList"] = {
			},
		},
	},
	["account"] = {
		["barList"] = {
			["AutoBarClassBarBasic"] = {
				["popupDirection"] = "1",
				["fadeOut"] = false,
				["PALADIN"] = true,
				["buttonHeight"] = 36,
				["rows"] = 1,
				["WARRIOR"] = true,
				["dockShiftY"] = 0,
				["alignButtons"] = "3",
				["buttonKeys"] = {
					"AutoBarButtonHearth", -- [1]
					"AutoBarButtonBandages", -- [2]
					"AutoBarButtonHeal", -- [3]
					"AutoBarButtonRecovery", -- [4]
					"AutoBarButtonCooldownPotionRejuvenation", -- [5]
					"AutoBarButtonCooldownPotionCombat", -- [6]
					"AutoBarButtonDrums", -- [7]
					"AutoBarButtonFood", -- [8]
					"AutoBarButtonFoodBuff", -- [9]
					"AutoBarButtonFoodCombo", -- [10]
					"AutoBarButtonWater", -- [11]
					"AutoBarButtonWaterBuff", -- [12]
					"AutoBarButtonBuff", -- [13]
					"AutoBarButtonBuffWeapon1", -- [14]
					"AutoBarButtonElixirBattle", -- [15]
					"AutoBarButtonElixirGuardian", -- [16]
					"AutoBarButtonElixirBoth", -- [17]
					"AutoBarButtonCrafting", -- [18]
					"AutoBarButtonQuest", -- [19]
					"AutoBarButtonTrinket1", -- [20]
					"AutoBarButtonTrinket2", -- [21]
				},
				["posX"] = 300,
				["DEATHKNIGHT"] = true,
				["DRUID"] = true,
				["MONK"] = true,
				["hide"] = false,
				["enabled"] = true,
				["SHAMAN"] = true,
				["columns"] = 16,
				["MAGE"] = true,
				["posY"] = 200,
				["buttonWidth"] = 36,
				["frameStrata"] = "LOW",
				["PRIEST"] = true,
				["HUNTER"] = true,
				["alpha"] = 1,
				["WARLOCK"] = true,
				["DEMONHUNTER"] = true,
				["ROGUE"] = true,
				["padding"] = 0,
				["dockShiftX"] = 0,
				["scale"] = 1,
			},
			["AutoBarClassBarExtras"] = {
				["popupDirection"] = "1",
				["fadeOut"] = false,
				["PALADIN"] = true,
				["buttonHeight"] = 36,
				["rows"] = 1,
				["WARRIOR"] = true,
				["dockShiftY"] = 0,
				["alignButtons"] = "3",
				["buttonKeys"] = {
					"AutoBarButtonSpeed", -- [1]
					"AutoBarButtonFreeAction", -- [2]
					"AutoBarButtonExplosive", -- [3]
					"AutoBarButtonFishing", -- [4]
					"AutoBarButtonBattleStandards", -- [5]
					"AutoBarButtonOpenable", -- [6]
					"AutoBarButtonMiscFun", -- [7]
					"AutoBarButtonMillHerbs", -- [8]
					"AutoBarButtonReputation", -- [9]
					"AutoBarButtonMount", -- [10]
					"AutoBarButtonRaidTarget", -- [11]
				},
				["posX"] = 300,
				["DEATHKNIGHT"] = true,
				["DRUID"] = true,
				["MONK"] = true,
				["hide"] = false,
				["enabled"] = true,
				["SHAMAN"] = true,
				["columns"] = 9,
				["MAGE"] = true,
				["posY"] = 360,
				["buttonWidth"] = 36,
				["frameStrata"] = "LOW",
				["PRIEST"] = true,
				["HUNTER"] = true,
				["alpha"] = 1,
				["WARLOCK"] = true,
				["DEMONHUNTER"] = true,
				["ROGUE"] = true,
				["padding"] = 0,
				["dockShiftX"] = 0,
				["scale"] = 1,
			},
		},
		["ldbIcon"] = {
		},
		["dbVersion"] = 1,
		["buttonList"] = {
			["AutoBarButtonHeal"] = {
				["barKey"] = "AutoBarClassBarBasic",
				["buttonClass"] = "AutoBarButtonHeal",
				["square_popups"] = true,
				["enabled"] = true,
				["buttonKey"] = "AutoBarButtonHeal",
				["defaultButtonIndex"] = 3,
			},
			["AutoBarButtonBuff"] = {
				["barKey"] = "AutoBarClassBarBasic",
				["buttonClass"] = "AutoBarButtonBuff",
				["square_popups"] = true,
				["enabled"] = true,
				["buttonKey"] = "AutoBarButtonBuff",
				["defaultButtonIndex"] = 13,
			},
			["AutoBarButtonTrinket2"] = {
				["enabled"] = true,
				["targeted"] = 14,
				["buttonKey"] = "AutoBarButtonTrinket2",
				["square_popups"] = true,
				["buttonClass"] = "AutoBarButtonTrinket2",
				["barKey"] = "AutoBarClassBarBasic",
				["equipped"] = 14,
				["defaultButtonIndex"] = 21,
			},
			["AutoBarButtonRaidTarget"] = {
				["barKey"] = "AutoBarClassBarExtras",
				["buttonClass"] = "AutoBarButtonRaidTarget",
				["square_popups"] = true,
				["arrangeOnUse"] = true,
				["enabled"] = true,
				["buttonKey"] = "AutoBarButtonRaidTarget",
				["defaultButtonIndex"] = "*",
			},
			["AutoBarButtonBuffWeapon1"] = {
				["barKey"] = "AutoBarClassBarBasic",
				["buttonClass"] = "AutoBarButtonBuffWeapon",
				["square_popups"] = true,
				["enabled"] = true,
				["buttonKey"] = "AutoBarButtonBuffWeapon1",
				["defaultButtonIndex"] = 14,
			},
			["AutoBarButtonMiscFun"] = {
				["barKey"] = "AutoBarClassBarExtras",
				["buttonClass"] = "AutoBarButtonMiscFun",
				["square_popups"] = true,
				["arrangeOnUse"] = true,
				["enabled"] = true,
				["buttonKey"] = "AutoBarButtonMiscFun",
				["defaultButtonIndex"] = 8,
			},
			["AutoBarButtonCooldownPotionCombat"] = {
				["barKey"] = "AutoBarClassBarBasic",
				["buttonClass"] = "AutoBarButtonCooldownPotionCombat",
				["square_popups"] = true,
				["enabled"] = true,
				["buttonKey"] = "AutoBarButtonCooldownPotionCombat",
				["defaultButtonIndex"] = 6,
			},
			["AutoBarButtonReputation"] = {
				["barKey"] = "AutoBarClassBarExtras",
				["buttonClass"] = "AutoBarButtonReputation",
				["square_popups"] = true,
				["arrangeOnUse"] = true,
				["enabled"] = true,
				["buttonKey"] = "AutoBarButtonReputation",
				["defaultButtonIndex"] = "*",
			},
			["AutoBarButtonMillHerbs"] = {
				["barKey"] = "AutoBarClassBarExtras",
				["targeted"] = "Milling",
				["buttonKey"] = "AutoBarButtonMillHerbs",
				["square_popups"] = true,
				["arrangeOnUse"] = true,
				["buttonClass"] = "AutoBarButtonMillHerbs",
				["enabled"] = true,
				["defaultButtonIndex"] = 11,
			},
			["AutoBarButtonRecovery"] = {
				["barKey"] = "AutoBarClassBarBasic",
				["buttonClass"] = "AutoBarButtonRecovery",
				["square_popups"] = true,
				["enabled"] = true,
				["buttonKey"] = "AutoBarButtonRecovery",
				["defaultButtonIndex"] = 4,
			},
			["AutoBarButtonFishing"] = {
				["barKey"] = "AutoBarClassBarExtras",
				["buttonClass"] = "AutoBarButtonFishing",
				["square_popups"] = true,
				["enabled"] = true,
				["buttonKey"] = "AutoBarButtonFishing",
				["defaultButtonIndex"] = 4,
			},
			["AutoBarButtonWater"] = {
				["barKey"] = "AutoBarClassBarBasic",
				["buttonClass"] = "AutoBarButtonWater",
				["square_popups"] = true,
				["disableConjure"] = false,
				["enabled"] = true,
				["buttonKey"] = "AutoBarButtonWater",
				["defaultButtonIndex"] = 11,
			},
			["AutoBarButtonElixirGuardian"] = {
				["barKey"] = "AutoBarClassBarBasic",
				["buttonClass"] = "AutoBarButtonElixirGuardian",
				["square_popups"] = true,
				["enabled"] = true,
				["buttonKey"] = "AutoBarButtonElixirGuardian",
				["defaultButtonIndex"] = 16,
			},
			["AutoBarButtonOpenable"] = {
				["barKey"] = "AutoBarClassBarExtras",
				["buttonClass"] = "AutoBarButtonOpenable",
				["square_popups"] = true,
				["enabled"] = true,
				["drag"] = true,
				["buttonKey"] = "AutoBarButtonOpenable",
				["defaultButtonIndex"] = 7,
			},
			["AutoBarButtonExplosive"] = {
				["barKey"] = "AutoBarClassBarExtras",
				["buttonClass"] = "AutoBarButtonExplosive",
				["square_popups"] = true,
				["enabled"] = true,
				["buttonKey"] = "AutoBarButtonExplosive",
				["defaultButtonIndex"] = 3,
			},
			["AutoBarButtonBattleStandards"] = {
				["barKey"] = "AutoBarClassBarExtras",
				["buttonClass"] = "AutoBarButtonBattleStandards",
				["square_popups"] = true,
				["enabled"] = true,
				["buttonKey"] = "AutoBarButtonBattleStandards",
				["defaultButtonIndex"] = 6,
			},
			["AutoBarButtonFood"] = {
				["enabled"] = true,
				["include_combo_basic"] = true,
				["buttonKey"] = "AutoBarButtonFood",
				["square_popups"] = true,
				["buttonClass"] = "AutoBarButtonFood",
				["disableConjure"] = false,
				["barKey"] = "AutoBarClassBarBasic",
				["defaultButtonIndex"] = 8,
			},
			["AutoBarButtonMount"] = {
				["barKey"] = "AutoBarClassBarExtras",
				["mount_reverse_sort"] = false,
				["mount_show_favourites"] = true,
				["mount_show_rng_fave"] = false,
				["buttonKey"] = "AutoBarButtonMount",
				["square_popups"] = true,
				["arrangeOnUse"] = true,
				["buttonClass"] = "AutoBarButtonMount",
				["mount_show_class"] = true,
				["defaultButtonIndex"] = "*",
				["enabled"] = true,
				["is_dirty"] = false,
				["mount_show_qiraji"] = false,
				["mount_show_nonfavourites"] = false,
			},
			["AutoBarButtonFoodBuff"] = {
				["barKey"] = "AutoBarClassBarBasic",
				["buttonClass"] = "AutoBarButtonFoodBuff",
				["square_popups"] = true,
				["enabled"] = true,
				["buttonKey"] = "AutoBarButtonFoodBuff",
				["defaultButtonIndex"] = 9,
			},
			["AutoBarButtonBandages"] = {
				["barKey"] = "AutoBarClassBarBasic",
				["buttonClass"] = "AutoBarButtonBandages",
				["square_popups"] = true,
				["enabled"] = true,
				["buttonKey"] = "AutoBarButtonBandages",
				["defaultButtonIndex"] = 2,
			},
			["AutoBarButtonCrafting"] = {
				["barKey"] = "AutoBarClassBarBasic",
				["buttonClass"] = "AutoBarButtonCrafting",
				["square_popups"] = true,
				["enabled"] = true,
				["buttonKey"] = "AutoBarButtonCrafting",
				["defaultButtonIndex"] = 18,
			},
			["AutoBarButtonSpeed"] = {
				["barKey"] = "AutoBarClassBarExtras",
				["buttonClass"] = "AutoBarButtonSpeed",
				["square_popups"] = true,
				["enabled"] = true,
				["buttonKey"] = "AutoBarButtonSpeed",
				["defaultButtonIndex"] = 1,
			},
			["AutoBarButtonWaterBuff"] = {
				["barKey"] = "AutoBarClassBarBasic",
				["buttonClass"] = "AutoBarButtonWaterBuff",
				["square_popups"] = true,
				["enabled"] = true,
				["buttonKey"] = "AutoBarButtonWaterBuff",
				["defaultButtonIndex"] = 12,
			},
			["AutoBarButtonElixirBoth"] = {
				["barKey"] = "AutoBarClassBarBasic",
				["buttonClass"] = "AutoBarButtonElixirBoth",
				["square_popups"] = true,
				["enabled"] = true,
				["buttonKey"] = "AutoBarButtonElixirBoth",
				["defaultButtonIndex"] = 17,
			},
			["AutoBarButtonElixirBattle"] = {
				["barKey"] = "AutoBarClassBarBasic",
				["buttonClass"] = "AutoBarButtonElixirBattle",
				["square_popups"] = true,
				["enabled"] = true,
				["buttonKey"] = "AutoBarButtonElixirBattle",
				["defaultButtonIndex"] = 15,
			},
			["AutoBarButtonFreeAction"] = {
				["barKey"] = "AutoBarClassBarExtras",
				["buttonClass"] = "AutoBarButtonFreeAction",
				["square_popups"] = true,
				["enabled"] = true,
				["buttonKey"] = "AutoBarButtonFreeAction",
				["defaultButtonIndex"] = 2,
			},
			["AutoBarButtonCooldownPotionRejuvenation"] = {
				["barKey"] = "AutoBarClassBarBasic",
				["buttonClass"] = "AutoBarButtonCooldownPotionRejuvenation",
				["square_popups"] = true,
				["enabled"] = true,
				["buttonKey"] = "AutoBarButtonCooldownPotionRejuvenation",
				["defaultButtonIndex"] = 5,
			},
			["AutoBarButtonQuest"] = {
				["barKey"] = "AutoBarClassBarBasic",
				["buttonClass"] = "AutoBarButtonQuest",
				["square_popups"] = true,
				["enabled"] = true,
				["buttonKey"] = "AutoBarButtonQuest",
				["defaultButtonIndex"] = 19,
			},
			["AutoBarButtonFoodCombo"] = {
				["barKey"] = "AutoBarClassBarBasic",
				["buttonClass"] = "AutoBarButtonFoodCombo",
				["square_popups"] = true,
				["enabled"] = true,
				["buttonKey"] = "AutoBarButtonFoodCombo",
				["defaultButtonIndex"] = 10,
			},
			["AutoBarButtonHearth"] = {
				["enabled"] = true,
				["hearth_include_ancient_dalaran"] = false,
				["buttonKey"] = "AutoBarButtonHearth",
				["defaultButtonIndex"] = 1,
				["buttonClass"] = "AutoBarButtonHearth",
				["hearth_include_challenge_portals"] = true,
				["square_popups"] = true,
				["barKey"] = "AutoBarClassBarBasic",
				["only_favourite_hearth"] = false,
			},
			["AutoBarButtonTrinket1"] = {
				["enabled"] = true,
				["targeted"] = 13,
				["buttonKey"] = "AutoBarButtonTrinket1",
				["square_popups"] = true,
				["buttonClass"] = "AutoBarButtonTrinket1",
				["barKey"] = "AutoBarClassBarBasic",
				["equipped"] = 13,
				["defaultButtonIndex"] = 20,
			},
			["AutoBarButtonDrums"] = {
				["barKey"] = "AutoBarClassBarBasic",
				["buttonClass"] = "AutoBarButtonDrums",
				["square_popups"] = true,
				["enabled"] = true,
				["buttonKey"] = "AutoBarButtonDrums",
				["defaultButtonIndex"] = 7,
			},
		},
		["keySeed"] = 1,
		["stupidlog"] = "",
	},
}
AutoBarDB2 = {
	["performance_threshold"] = 100,
	["custom_categories"] = {
	},
	["whatsnew_version"] = "3.00.4.07",
}