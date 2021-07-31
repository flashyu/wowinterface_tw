
WeakAurasSaved = {
	["dynamicIconCache"] = {
	},
	["editor_tab_spaces"] = 4,
	["displays"] = {
		["Details! Boss Mods Group"] = {
			["grow"] = "DOWN",
			["controlledChildren"] = {
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 2,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["names"] = {
						},
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["internalVersion"] = 45,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["align"] = "CENTER",
			["stagger"] = 0,
			["subRegions"] = {
			},
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["selfPoint"] = "TOP",
			["animate"] = false,
			["radius"] = 200,
			["scale"] = 1,
			["gridType"] = "RD",
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["xOffset"] = 0,
			["fullCircle"] = true,
			["constantFactor"] = "RADIUS",
			["config"] = {
			},
			["borderOffset"] = 4,
			["uid"] = "ZX3oWFkARRy",
			["useLimit"] = false,
			["id"] = "Details! Boss Mods Group",
			["frameStrata"] = 1,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["limit"] = 5,
			["borderInset"] = 1,
			["rotation"] = 0,
			["arcLength"] = 360,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["rowSpace"] = 1,
		},
		["New"] = {
			["sparkWidth"] = 10,
			["modelIsUnit"] = false,
			["iconSource"] = -1,
			["api"] = false,
			["xOffset"] = -1,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sameTexture"] = true,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.2, -- [1]
				0.4666666666666667, -- [2]
				0.803921568627451, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["sparkOffsetY"] = 0,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
			},
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["sequence"] = 1,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["scale"] = 1,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["model_st_us"] = 40,
			["slantMode"] = "INSIDE",
			["texture"] = "Details Flat",
			["zoom"] = 0,
			["spark"] = false,
			["compress"] = false,
			["alpha"] = 1,
			["uid"] = "OAwVEDV6khe",
			["model_st_tz"] = 0,
			["backgroundOffset"] = 2,
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "lan",
			["foregroundColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["startAngle"] = 0,
			["model_x"] = 0,
			["crop_x"] = 0.41,
			["blendMode"] = "BLEND",
			["sparkRotationMode"] = "AUTO",
			["model_fileId"] = "122968",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["use_power"] = false,
						["use_showCost"] = true,
						["unit"] = "player",
						["use_class"] = false,
						["powertype"] = 0,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Power",
						["use_percentpower"] = false,
						["spellIds"] = {
						},
						["use_requirePowerType"] = false,
						["names"] = {
						},
						["class"] = "DRUID",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["use_eventtype"] = true,
						["use_inverse"] = false,
						["event"] = "Cast",
						["unit"] = "player",
						["use_spellId"] = false,
						["use_exact_spellId"] = false,
						["use_unit"] = true,
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 45,
			["advance"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["model_st_ty"] = 0,
			["crop_y"] = 0.41,
			["desaturateBackground"] = false,
			["user_x"] = 0,
			["anchorFrameType"] = "SCREEN",
			["borderInset"] = 11,
			["model_st_tx"] = 0,
			["subRegions"] = {
				{
					["type"] = "aurabar_bar",
				}, -- [1]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_text_format_p_time_precision"] = 1,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_shadowYOffset"] = -1,
					["text_fontType"] = "None",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_text_format_p_format"] = "timed",
					["text_text_format_n_format"] = "none",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
			},
			["height"] = 12,
			["fontSize"] = 12,
			["id"] = "New",
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["borderOffset"] = 5,
			["model_st_rx"] = 270,
			["user_y"] = 0,
			["border"] = false,
			["mirror"] = false,
			["borderEdge"] = "None",
			["model_z"] = 0,
			["borderSize"] = 16,
			["authorOptions"] = {
			},
			["icon_side"] = "RIGHT",
			["model_st_rz"] = 0,
			["model_path"] = "spells/arcanepower_state_chest.m2",
			["sparkHeight"] = 30,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkOffsetX"] = 0,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["icon"] = false,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkHidden"] = "NEVER",
			["model_y"] = 0,
			["frameStrata"] = 1,
			["width"] = 268,
			["model_st_ry"] = 0,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["inverse"] = false,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["information"] = {
			},
			["config"] = {
			},
		},
		["lan"] = {
			["grow"] = "DOWN",
			["controlledChildren"] = {
				"New", -- [1]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["yOffset"] = -354.8884887695313,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 2,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["names"] = {
						},
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["internalVersion"] = 45,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["align"] = "CENTER",
			["stagger"] = 0,
			["subRegions"] = {
			},
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["selfPoint"] = "TOP",
			["animate"] = false,
			["radius"] = 200,
			["scale"] = 1,
			["gridType"] = "RD",
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["xOffset"] = -202.2230834960938,
			["fullCircle"] = true,
			["constantFactor"] = "RADIUS",
			["config"] = {
			},
			["borderOffset"] = 4,
			["uid"] = "I7Y0mTf5KSP",
			["useLimit"] = false,
			["id"] = "lan",
			["frameStrata"] = 1,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["limit"] = 5,
			["borderInset"] = 1,
			["rotation"] = 0,
			["arcLength"] = 360,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["rowSpace"] = 1,
		},
	},
	["lastArchiveClear"] = 1626874514,
	["minimap"] = {
		["hide"] = false,
	},
	["lastUpgrade"] = 1626874520,
	["dbVersion"] = 45,
	["login_squelch_time"] = 10,
	["registered"] = {
	},
	["frame"] = {
		["xOffset"] = -69.44482421875,
		["yOffset"] = -284.1666259765625,
		["height"] = 665.0000610351562,
		["width"] = 830.0001831054688,
	},
	["editor_theme"] = "Monokai",
}
