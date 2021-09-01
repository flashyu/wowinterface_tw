
ElvDB = {
	["LuaErrorDisabledAddOns"] = {
	},
	["global"] = {
		["nameplate"] = {
			["filters"] = {
				["ElvUI_NonTarget"] = {
				},
				["ElvUI_Target"] = {
				},
				["ElvUI_Boss"] = {
				},
			},
		},
		["general"] = {
			["mapAlphaWhenMoving"] = 0.5,
			["locale"] = "zhCN",
			["UIScale"] = 0.65,
		},
		["ignoreIncompatible"] = true,
	},
	["faction"] = {
		["伊弗斯"] = {
			["牧原股份"] = "Horde",
			["豬圈一"] = "Horde",
		},
	},
	["profileKeys"] = {
		["豬圈一 - 伊弗斯"] = "Default",
		["牧原股份 - 伊弗斯"] = "my profile",
	},
	["class"] = {
		["伊弗斯"] = {
			["牧原股份"] = "DRUID",
			["豬圈一"] = "ROGUE",
		},
	},
	["gold"] = {
		["伊弗斯"] = {
			["牧原股份"] = 139636184,
			["豬圈一"] = 997360,
		},
	},
	["profiles"] = {
		["Default"] = {
			["convertPages"] = true,
			["dbConverted"] = 2.1,
			["actionbar"] = {
				["bar6"] = {
					["enabled"] = true,
					["buttonsPerRow"] = 6,
					["buttons"] = 6,
				},
				["microbar"] = {
					["buttons"] = 7,
				},
				["bar5"] = {
					["enabled"] = false,
					["buttonsPerRow"] = 12,
					["buttons"] = 12,
				},
			},
		},
		["my profile"] = {
			["databars"] = {
				["threat"] = {
					["enable"] = false,
				},
				["experience"] = {
					["hideAtMaxLevel"] = false,
					["height"] = 223,
					["questCompletedOnly"] = true,
					["width"] = 10,
					["font"] = "2002",
					["orientation"] = "VERTICAL",
				},
				["transparent"] = false,
				["reputation"] = {
					["enable"] = true,
					["width"] = 10,
					["height"] = 223,
				},
			},
			["general"] = {
				["fontSize"] = 14,
				["afk"] = false,
				["autoRepair"] = true,
				["minimap"] = {
					["size"] = 175,
				},
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.80000001192093,
					["b"] = 0.058823529411765,
					["g"] = 0.058823529411765,
					["r"] = 0.058823529411765,
				},
				["valuecolor"] = {
					["b"] = 0.04,
					["g"] = 0.49,
					["r"] = 1,
				},
				["totems"] = {
					["spacing"] = 8,
					["size"] = 50,
				},
				["backdropcolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["topPanel"] = true,
				["bordercolor"] = {
					["b"] = 0.007843137254902,
					["r"] = 0.34901960784314,
				},
			},
			["bags"] = {
				["itemLevelFont"] = "Expressway",
				["bagSize"] = 42,
				["itemLevelCustomColorEnable"] = true,
				["bankSize"] = 42,
				["itemLevelFontOutline"] = "THICKOUTLINE",
				["split"] = {
					["player"] = true,
				},
				["bagWidth"] = 474,
				["countFont"] = "Expressway",
				["vendorGrays"] = {
					["details"] = true,
					["enable"] = true,
				},
				["countFontOutline"] = "THICKOUTLINE",
				["bagBar"] = {
					["mouseover"] = true,
				},
				["bankWidth"] = 474,
			},
			["chat"] = {
				["timeStampLocalTime"] = false,
				["throttleInterval"] = 0,
				["panelWidth"] = 472,
				["emotionIcons"] = false,
				["panelHeight"] = 200,
			},
			["dbConverted"] = 2.1,
			["convertPages"] = true,
			["tooltip"] = {
				["healthBar"] = {
					["fontOutline"] = "MONOCHROMEOUTLINE",
					["height"] = 12,
				},
			},
			["movers"] = {
				["ElvAB_8"] = "TOP,ElvUIParent,TOP,-346,-340",
				["PetAB"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-408,440",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-355",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,4",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,250,-5",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-4",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-4",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-203,247",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,-1,293",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,-1,293",
				["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,549,-474",
				["QuestWatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-135,-300",
				["SocialMenuMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-187",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-203,267",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,176",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,737",
				["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,496,192",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,203,248",
				["ElvUF_FocusMover"] = "BOTTOM,ElvUIParent,BOTTOM,342,59",
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-558,295",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-480,4",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-203,252",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,-1,0",
				["ElvUF_PetCastbarMover"] = "TOPRIGHT,ElvUF_Pet,BOTTOMRIGHT,0,-1",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["ElvUF_PlayerAuraMover"] = "BOTTOM,ElvUIParent,BOTTOM,-202,331",
				["ExperienceBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,476,4",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-430",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,203,267",
				["QuestTimerFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-135,-300",
				["LossControlMover"] = "BOTTOM,ElvUIParent,BOTTOM,-1,507",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,-1,-120",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,-1,-96",
				["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-150",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,-1",
				["ElvAB_9"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-40,277",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-274",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,-1,-36",
				["ElvAB_4"] = "BOTTOM,ElvUIParent,BOTTOM,0,38",
				["ElvAB_5"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,294",
				["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-245",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,339,0",
				["ReputationBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,484,4",
				["VehicleLeaveButton"] = "BOTTOM,ElvUIParent,BOTTOM,-269,413",
				["TalkingHeadFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,-1,373",
				["ElvAB_2"] = "TOP,ElvUIParent,TOP,-346,-309",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-163,-325",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-273",
				["ElvNP_PlayerMover"] = "TOP,UIParent,CENTER,0,-150",
				["ShiftAB"] = "BOTTOM,ElvUIParent,BOTTOM,0,118",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-255",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,77",
				["ElvAB_10"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,276",
				["ElvUF_TankMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,508",
				["DurabilityFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-305",
				["TotemBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,153",
				["ElvAB_7"] = "TOP,ElvUIParent,TOP,0,-539",
				["ElvUF_PartyMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-240",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-276",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-99",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-564",
			},
			["unitframe"] = {
				["units"] = {
					["tank"] = {
						["threatStyle"] = "NONE",
					},
					["pet"] = {
						["debuffs"] = {
							["enable"] = true,
							["anchorPoint"] = "TOPRIGHT",
						},
						["disableTargetGlow"] = false,
						["castbar"] = {
							["enable"] = false,
							["iconSize"] = 32,
						},
						["customTexts"] = {
							["[happiness:icon]"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 83,
								["text_format"] = "[happiness:icon]",
								["yOffset"] = -5,
								["font"] = "Homespun",
								["justifyH"] = "CENTER",
								["fontOutline"] = "MONOCHROMEOUTLINE",
								["enable"] = true,
								["size"] = 23,
							},
						},
						["width"] = 132,
						["infoPanel"] = {
							["height"] = 14,
						},
						["buffs"] = {
							["enable"] = true,
						},
					},
					["targettarget"] = {
						["debuffs"] = {
							["enable"] = false,
							["anchorPoint"] = "TOPRIGHT",
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
						},
						["customTexts"] = {
						},
						["disableMouseoverGlow"] = true,
						["width"] = 139,
						["raidicon"] = {
							["attachTo"] = "LEFT",
							["xOffset"] = 2,
							["enable"] = false,
							["yOffset"] = 0,
						},
					},
					["party"] = {
						["debuffs"] = {
							["sizeOverride"] = 0,
							["perrow"] = 3,
							["attachTo"] = "HEALTH",
						},
						["targetsGroup"] = {
							["enable"] = true,
						},
						["threatStyle"] = "NONE",
						["healPrediction"] = {
							["enable"] = true,
						},
						["infoPanel"] = {
							["height"] = 12,
						},
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
						},
						["height"] = 60,
						["verticalSpacing"] = 5,
						["horizontalSpacing"] = 3,
						["rdebuffs"] = {
							["enable"] = false,
							["font"] = "PT Sans Narrow",
						},
						["growthDirection"] = "DOWN_RIGHT",
						["groupBy"] = "GROUP",
						["power"] = {
							["text_format"] = "",
							["yOffset"] = 2,
							["position"] = "BOTTOMRIGHT",
							["height"] = 15,
						},
						["width"] = 245,
						["health"] = {
							["position"] = "BOTTOM",
							["text_format"] = "[healthcolor][health:deficit:shortvalue]",
							["yOffset"] = 2,
						},
						["buffs"] = {
							["perrow"] = 3,
						},
					},
					["raid40"] = {
						["threatStyle"] = "NONE",
						["height"] = 30,
						["visibility"] = "[@raid6,noexists] hide;show",
						["rdebuffs"] = {
							["font"] = "PT Sans Narrow",
						},
						["power"] = {
							["enable"] = true,
						},
					},
					["raidpet"] = {
						["threatStyle"] = "NONE",
					},
					["target"] = {
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
							["fullOverlay"] = true,
							["rotation"] = 310,
						},
						["height"] = 65,
						["aurabar"] = {
							["enable"] = false,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
						},
						["disableMouseoverGlow"] = true,
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[level]-[namecolor][name]",
						},
						["castbar"] = {
							["insideInfoPanel"] = false,
							["height"] = 20,
						},
						["orientation"] = "LEFT",
						["health"] = {
							["attachTextTo"] = "InfoPanel",
						},
					},
					["raid"] = {
						["threatStyle"] = "NONE",
						["healPrediction"] = {
							["enable"] = true,
						},
						["height"] = 30,
						["visibility"] = "[@raid6,noexists][@raid26,exists]",
						["rdebuffs"] = {
							["enable"] = false,
							["font"] = "PT Sans Narrow",
						},
						["growthDirection"] = "DOWN_RIGHT",
					},
					["assist"] = {
						["enable"] = false,
						["threatStyle"] = "NONE",
					},
					["player"] = {
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["attachTo"] = "HEALTH",
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
							["fullOverlay"] = true,
							["rotation"] = 310,
						},
						["disableMouseoverGlow"] = true,
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
						["height"] = 65,
						["buffs"] = {
							["enable"] = true,
							["attachTo"] = "FRAME",
						},
						["aurabar"] = {
							["enable"] = false,
						},
						["castbar"] = {
							["format"] = "CURRENTMAX",
							["insideInfoPanel"] = false,
							["height"] = 20,
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["position"] = "LEFT",
							["xOffset"] = 2,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["xOffset"] = -2,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["detachedWidth"] = 270,
							["height"] = 15,
						},
					},
				},
				["font"] = "Expressway",
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.45,
						["g"] = 0.83,
						["r"] = 0.67,
					},
					["healthclass"] = true,
					["colorhealthbyvalue"] = false,
					["castClassColor"] = true,
					["powerPrediction"] = {
						["color"] = {
							["g"] = 0,
							["b"] = 0.050980392156863,
						},
						["additional"] = {
							["g"] = 0,
							["b"] = 0.074509803921569,
						},
					},
					["frameGlow"] = {
						["targetGlow"] = {
							["enable"] = false,
						},
					},
				},
				["fontOutline"] = "OUTLINE",
				["smoothbars"] = true,
			},
			["datatexts"] = {
				["panels"] = {
					["KUI_MiddlePanel"] = {
						"", -- [1]
						"", -- [2]
						"", -- [3]
						["enable"] = false,
					},
					["KUI_TimePanel"] = {
						"", -- [1]
						"", -- [2]
						"", -- [3]
						["enable"] = false,
					},
					["LeftChatDataPanel"] = {
						["1"] = "Hit",
						["3"] = "Guild",
						["right"] = "Quick Join",
					},
				},
			},
			["actionbar"] = {
				["bar3"] = {
					["hotkeyFont"] = "Expressway",
					["macroFont"] = "Expressway",
					["macroTextPosition"] = "BOTTOMRIGHT",
					["visibility"] = "[petbattle] hide; show",
					["buttonSpacing"] = 0,
					["macroFontOutline"] = "OUTLINE",
					["countFont"] = "Expressway",
					["buttons"] = 12,
					["countFontOutline"] = "OUTLINE",
					["hotkeyFontOutline"] = "OUTLINE",
					["macrotext"] = true,
					["buttonSize"] = 35,
				},
				["bar8"] = {
					["hotkeyFont"] = "Expressway",
					["macroFont"] = "Expressway",
					["macroTextPosition"] = "BOTTOMRIGHT",
					["macroFontOutline"] = "OUTLINE",
					["countFont"] = "Expressway",
					["countFontOutline"] = "OUTLINE",
					["hotkeyFontOutline"] = "OUTLINE",
					["macrotext"] = true,
				},
				["fontOutline"] = "OUTLINE",
				["bar9"] = {
					["hotkeyFont"] = "Expressway",
					["macroFont"] = "Expressway",
					["macroTextPosition"] = "BOTTOMRIGHT",
					["buttonsPerRow"] = 1,
					["buttonSpacing"] = 0,
					["macroFontOutline"] = "OUTLINE",
					["countFont"] = "Expressway",
					["buttonSize"] = 35,
					["countFontOutline"] = "OUTLINE",
					["hotkeyFontOutline"] = "OUTLINE",
					["macrotext"] = true,
				},
				["bar1"] = {
					["hotkeyFont"] = "Expressway",
					["macroFont"] = "Expressway",
					["macroTextPosition"] = "BOTTOMRIGHT",
					["buttonSpacing"] = 1,
					["macroFontOutline"] = "OUTLINE",
					["countFont"] = "Expressway",
					["buttonSize"] = 35,
					["countFontOutline"] = "OUTLINE",
					["hotkeyFontOutline"] = "OUTLINE",
					["macrotext"] = true,
					["backdrop"] = true,
				},
				["macroTextPosition"] = "BOTTOMRIGHT",
				["font"] = "Expressway",
				["bar7"] = {
					["hotkeyFont"] = "Expressway",
					["macroFont"] = "Expressway",
					["macroTextPosition"] = "BOTTOMRIGHT",
					["macroFontOutline"] = "OUTLINE",
					["countFont"] = "Expressway",
					["countFontOutline"] = "OUTLINE",
					["hotkeyFontOutline"] = "OUTLINE",
					["macrotext"] = true,
				},
				["barPet"] = {
					["countFont"] = "Expressway",
					["countFontOutline"] = "OUTLINE",
					["buttonsPerRow"] = 10,
				},
				["bar10"] = {
					["hotkeyFont"] = "Expressway",
					["enabled"] = true,
					["macroFont"] = "Expressway",
					["macroTextPosition"] = "BOTTOMRIGHT",
					["buttonsPerRow"] = 1,
					["buttonSpacing"] = 0,
					["macroFontOutline"] = "OUTLINE",
					["countFont"] = "Expressway",
					["buttonSize"] = 35,
					["countFontOutline"] = "OUTLINE",
					["hotkeyFontOutline"] = "OUTLINE",
					["macrotext"] = true,
				},
				["globalFadeAlpha"] = 1,
				["microbar"] = {
					["enabled"] = true,
					["buttons"] = 8,
				},
				["keyDown"] = false,
				["bar2"] = {
					["macroFont"] = "Expressway",
					["macroTextPosition"] = "BOTTOMRIGHT",
					["visibility"] = "[petbattle] hide; show",
					["macroFontOutline"] = "OUTLINE",
					["countFont"] = "Expressway",
					["countFontOutline"] = "OUTLINE",
					["hotkeyFont"] = "Expressway",
					["macrotext"] = true,
					["hotkeyFontOutline"] = "OUTLINE",
				},
				["bar5"] = {
					["hotkeyFont"] = "Expressway",
					["enabled"] = false,
					["macroFont"] = "Expressway",
					["backdrop"] = true,
					["macroTextPosition"] = "BOTTOMRIGHT",
					["buttonsPerRow"] = 1,
					["visibility"] = "[petbattle] hide; show",
					["buttonSpacing"] = 1,
					["macroFontOutline"] = "OUTLINE",
					["countFont"] = "Expressway",
					["buttons"] = 12,
					["countFontOutline"] = "OUTLINE",
					["hotkeyFontOutline"] = "OUTLINE",
					["buttonSize"] = 35,
					["macrotext"] = true,
				},
				["lockActionBars"] = false,
				["bar6"] = {
					["hotkeyFont"] = "Expressway",
					["enabled"] = true,
					["macroFont"] = "Expressway",
					["macroTextPosition"] = "BOTTOMRIGHT",
					["visibility"] = "[petbattle] hide; show",
					["buttonSpacing"] = 1,
					["macroFontOutline"] = "OUTLINE",
					["countFont"] = "Expressway",
					["buttonSize"] = 35,
					["countFontOutline"] = "OUTLINE",
					["hotkeyFontOutline"] = "OUTLINE",
					["macrotext"] = true,
					["backdrop"] = true,
				},
				["cooldown"] = {
					["fonts"] = {
						["enable"] = true,
					},
					["override"] = false,
				},
				["bar4"] = {
					["hotkeyFont"] = "Expressway",
					["macroFont"] = "Expressway",
					["macroTextPosition"] = "BOTTOMRIGHT",
					["buttonsPerRow"] = 12,
					["visibility"] = "[petbattle] hide; show",
					["buttonSpacing"] = 1,
					["macroFontOutline"] = "OUTLINE",
					["countFont"] = "Expressway",
					["buttonSize"] = 35,
					["countFontOutline"] = "OUTLINE",
					["hotkeyFontOutline"] = "OUTLINE",
					["macrotext"] = true,
				},
			},
			["nameplates"] = {
				["units"] = {
					["PLAYER"] = {
						["enable"] = true,
						["castbar"] = {
							["castTimeFormat"] = "CURRENTMAX",
						},
						["power"] = {
							["text"] = {
								["enable"] = true,
							},
						},
					},
				},
			},
			["auras"] = {
				["debuffs"] = {
					["horizontalSpacing"] = 1,
					["size"] = 28,
					["verticalSpacing"] = 20,
					["maxWraps"] = 2,
				},
				["buffs"] = {
					["horizontalSpacing"] = 1,
					["size"] = 28,
					["verticalSpacing"] = 20,
					["maxWraps"] = 2,
				},
			},
		},
	},
}
ElvPrivateDB = {
	["profileKeys"] = {
		["豬圈一 - 伊弗斯"] = "豬圈一 - 伊弗斯",
		["牧原股份 - 伊弗斯"] = "牧原股份 - 伊弗斯",
	},
	["profiles"] = {
		["豬圈一 - 伊弗斯"] = {
			["install_complete"] = 2.1,
		},
		["牧原股份 - 伊弗斯"] = {
			["bags"] = {
				["bagBar"] = true,
				["enable"] = false,
			},
			["install_complete"] = 2.1,
		},
	},
}
