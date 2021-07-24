
WeakAurasSaved = {
	["dynamicIconCache"] = {
	},
	["editor_tab_spaces"] = 4,
	["displays"] = {
		["Starfire_2"] = {
			["sparkWidth"] = 10,
			["iconSource"] = -1,
			["xOffset"] = -106,
			["preferToUpdate"] = false,
			["adjustedMin"] = "0",
			["yOffset"] = 15.999938964844,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",0.98,0.78,0.83,0.59,0.59,0.94)",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["matchesShowOn"] = "showAlways",
						["auranames"] = {
							"48517", -- [1]
						},
						["spellCount_operator"] = ">=",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["unit"] = "player",
						["powertype"] = 4,
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["type"] = "spell",
						["spellName"] = 197628,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["charges_operator"] = "==",
						["charges"] = "1",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["use_spellCount"] = false,
						["use_charges"] = false,
						["event"] = "Cooldown Progress (Spell)",
						["use_power"] = false,
						["realSpellName"] = 197628,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["spellCount"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["spellCount"] = "1",
						["spellId"] = 194153,
						["auranames"] = {
							"48517", -- [1]
						},
						["use_genericShowOn"] = true,
						["spellName"] = 197628,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cast",
						["use_spellId"] = true,
						["use_track"] = true,
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["powertype"] = 4,
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["charges_operator"] = "==",
						["useName"] = true,
						["names"] = {
						},
						["unevent"] = "auto",
						["use_spellCount"] = false,
						["charges"] = "1",
						["spellCount_operator"] = ">=",
						["duration"] = "1",
						["realSpellName"] = "Звездный огонь",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["type"] = "unit",
						["unit"] = "player",
						["use_power"] = false,
						["track"] = "auto",
						["matchesShowOn"] = "showAlways",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t) return t[1] and t[2] and (t[4] or t[5]) end",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 45,
			["selfPoint"] = "LEFT",
			["barColor"] = {
				0.8078431372549, -- [1]
				0.82745098039216, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetX"] = 0,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["type"] = "aurabar_bar",
				}, -- [2]
				{
					["api"] = false,
					["model_x"] = 0,
					["model_st_us"] = 40,
					["model_st_rz"] = 0,
					["model_z"] = 3,
					["model_fileId"] = "328500",
					["model_path"] = "spells/arcanepower_state_chest.m2",
					["model_st_ty"] = 0,
					["model_y"] = -0.5,
					["model_st_rx"] = 270,
					["rotation"] = 0,
					["bar_model_visible"] = true,
					["model_st_tx"] = 0,
					["bar_model_alpha"] = 1,
					["bar_model_clip"] = true,
					["type"] = "subbarmodel",
					["model_st_tz"] = 0,
					["model_st_ry"] = 0,
				}, -- [3]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "ACShine",
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 0.7,
					["glowLength"] = 10,
					["glow_anchor"] = "bar",
					["glow"] = false,
					["glowLines"] = 7,
					["glowBorder"] = false,
				}, -- [4]
			},
			["height"] = 10,
			["width"] = 52,
			["load"] = {
				["use_petbattle"] = false,
				["talent"] = {
					["single"] = 7,
					["multi"] = {
						[7] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
						true, -- [4]
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["pvptalent"] = {
				},
				["zoneIds"] = "",
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["spark"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["colorR"] = 1,
					["scalex"] = 1,
					["alphaType"] = "custom",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "",
					["use_alpha"] = false,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0.4,
					["y"] = 0,
					["x"] = 0,
					["colorA"] = 1,
					["duration"] = "0.5",
					["rotate"] = 0,
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["backgroundColor"] = {
				0.13333333333333, -- [1]
				0.17647058823529, -- [2]
				0.30196078431373, -- [3]
				1, -- [4]
			},
			["sparkHidden"] = "NEVER",
			["useAdjustededMin"] = false,
			["uid"] = "bkN5p8UcFT5",
			["anchorFrameFrame"] = "WeakAuras:Astral_Power",
			["regionType"] = "aurabar",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["icon_side"] = "RIGHT",
			["alpha"] = 1,
			["sparkHeight"] = 30,
			["texture"] = "Solid",
			["semver"] = "3.4.7",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Starfire_2",
			["zoom"] = 0,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SELECTFRAME",
			["icon"] = false,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = true,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "spellCount",
						["value"] = "2",
					},
					["changes"] = {
						{
							["property"] = "inverse",
						}, -- [1]
						{
							["value"] = false,
							["property"] = "sub.3.bar_model_visible",
						}, -- [2]
						{
							["property"] = "sub.3.bar_model_alpha",
						}, -- [3]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "==",
								["variable"] = "spellCount",
								["value"] = "2",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.4.glow",
						}, -- [1]
					},
				}, -- [2]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Druid_AfenarUI",
		},
		["Thrash_Guardian"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["rem"] = "4",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
						["ownOnly"] = true,
						["type"] = "spell",
						["names"] = {
							"Взбучка", -- [1]
							"Взбучка", -- [2]
						},
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["duration"] = "1",
						["event"] = "Cooldown Progress (Spell)",
						["unit"] = "target",
						["realSpellName"] = 77758,
						["use_spellName"] = true,
						["spellIds"] = {
							106830, -- [1]
							77758, -- [2]
						},
						["spellName"] = 77758,
						["remOperator"] = ">=",
						["unevent"] = "auto",
						["use_track"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 77758,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 4,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [3]
			},
			["height"] = 40,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 106832,
				["zoneIds"] = "",
			},
			["width"] = 40,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration"] = "",
					["colorA"] = 1,
					["colorG"] = 1,
					["use_translate"] = false,
					["x"] = 1,
					["type"] = "none",
					["scalex"] = 1,
					["easeType"] = "none",
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      local angle = (progress + 0.25) * 2 * math.pi\n      return startX + (math.cos(angle) * deltaX * math.cos(angle*2)), startY + (math.abs(math.cos(angle)) * deltaY * math.sin(angle*2))\n    end\n  ",
					["scaley"] = 1,
					["alpha"] = 0,
					["easeStrength"] = 3,
					["y"] = -1,
					["colorType"] = "custom",
					["colorB"] = 1,
					["use_color"] = false,
					["colorFunc"] = "",
					["rotate"] = 0,
					["duration_type"] = "seconds",
					["translateType"] = "spiralandpulse",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["displayIcon"] = "Interface\\Icons\\spell_druid_thrash",
			["zoom"] = 0.3,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["config"] = {
			},
			["alpha"] = 1,
			["auto"] = false,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Thrash_Guardian",
			["authorOptions"] = {
			},
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = -43,
			["uid"] = "xpR(NGqT2dP",
			["inverse"] = true,
			["desaturate"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["variable"] = "expirationTime",
								["value"] = "0.5",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "duration",
						["value"] = "2",
					},
					["changes"] = {
						{
							["property"] = "sub.3.text_visible",
						}, -- [1]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Form_Boomie"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 74.5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"24858", -- [1]
						},
						["matchesShowOn"] = "showOnMissing",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["names"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"768", -- [1]
							"783", -- [2]
							"5487", -- [3]
						},
						["matchesShowOn"] = "showOnMissing",
						["event"] = "Health",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [2]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["level"] = "80",
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">=",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["alpha"] = 1,
			["width"] = 35,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 132276,
			["regionType"] = "icon",
			["zoom"] = 0.3,
			["desaturate"] = false,
			["config"] = {
			},
			["useTooltip"] = false,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["semver"] = "3.4.7",
			["cooldownTextDisabled"] = true,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Form_Boomie",
			["xOffset"] = 0.5,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["uid"] = "AJj0dXNDFg3",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["glow_frame"] = "WeakAuras:Prowl",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["glow_frame"] = "WeakAuras:Prowl",
					["do_custom"] = false,
					["do_sound"] = false,
				},
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Druid_AfenarUI"] = {
			["controlledChildren"] = {
				"Druid_Mana", -- [1]
				"Ironfur", -- [2]
				"Ironfur_T", -- [3]
				"Ironfur_S", -- [4]
				"Guardian_Rage", -- [5]
				"Feral_Energy", -- [6]
				"Druid_CP_1", -- [7]
				"Druid_CP_2", -- [8]
				"Druid_CP_3", -- [9]
				"Druid_CP_4", -- [10]
				"Druid_CP_5", -- [11]
				"Starfire_1", -- [12]
				"Starfire_2", -- [13]
				"Wrath_2", -- [14]
				"Wrath_1", -- [15]
				"Eclipce_Bar", -- [16]
				"Solar_Bar", -- [17]
				"Lunar_Bar", -- [18]
				"Astral_Power", -- [19]
				"Astral_Power_Gain", -- [20]
				"CastBar_Druid", -- [21]
				"Legendary_Buffs_Druid", -- [22]
				"Shadowlands Pulsar Legendary", -- [23]
				"Conduct_Buffs_Druid", -- [24]
				"Missing_Spirits", -- [25]
				"Empower_Bond", -- [26]
				"Lone_Empowerment", -- [27]
				"Ravenous_Frenzy", -- [28]
				"Adaptive_Swarm", -- [29]
				"Convoke_the_Spirits", -- [30]
				"Prowl", -- [31]
				"Forms", -- [32]
				"Form_Boomie", -- [33]
				"Form_Feral", -- [34]
				"Form_Guardian", -- [35]
				"Starlord", -- [36]
				"New_Moon", -- [37]
				"Fury_of_Elune", -- [38]
				"Force_of_Nature", -- [39]
				"Warrior_of_the_Elune", -- [40]
				"Celestial_Alignment", -- [41]
				"Stellar_Flare ", -- [42]
				"Sunfire", -- [43]
				"Moonfire", -- [44]
				"Starfall", -- [45]
				"Starfall_SF", -- [46]
				"Starfire", -- [47]
				"Wrath", -- [48]
				"Starsurge", -- [49]
				"MoonBunnie_Feral Bleed Power", -- [50]
				"MoonBunnie_Feral Bleed Rip", -- [51]
				"MoonBunnie_Feral Bleed Rake", -- [52]
				"MoonBunnie_Feral Bleed Thrash", -- [53]
				"Blood_Talons", -- [54]
				"Feral_Frenzy", -- [55]
				"Brutal_Strike", -- [56]
				"Moonfire_Feral", -- [57]
				"Savage_Roar", -- [58]
				"Berserk", -- [59]
				"Thrash_Feral", -- [60]
				"Rip", -- [61]
				"Rake", -- [62]
				"Tiger's_Fury", -- [63]
				"Guardian_of_the_Elune", -- [64]
				"Bristling_Fur", -- [65]
				"Pulverize", -- [66]
				"Tooth_and_Claw", -- [67]
				"Frenzied_Regeneration", -- [68]
				"Thrash_Guardian", -- [69]
				"Thrash_Stacks_Guardian", -- [70]
				"Mangle", -- [71]
				"Moonfire_Guardian", -- [72]
				"Berserk_Guardian", -- [73]
				"Predatory_Swiftness", -- [74]
				"Growl", -- [75]
				"Remove_Corruption", -- [76]
				"Hibernate", -- [77]
				"Solar_Beam_Skull_Bash", -- [78]
				"T15", -- [79]
				"Dash", -- [80]
				"Stampeding_Roar", -- [81]
				"Barkskin", -- [82]
				"Survival_Instincts", -- [83]
				"Rebirth", -- [84]
				"innervate", -- [85]
				"Incapacitating_Roar", -- [86]
				"Ursols_Vortex", -- [87]
				"Maim", -- [88]
				"Typhoon", -- [89]
				"T35_Druid", -- [90]
				"Swiftmend_RA", -- [91]
				"Rejuvination", -- [92]
				"Regrowth", -- [93]
				"Wild_Growth_RA", -- [94]
				"Druid_PvPT1", -- [95]
				"Druid_PvPT2", -- [96]
				"Druid_PvPT3", -- [97]
				"Druid_PvPT4", -- [98]
				"Druid_PvPT5", -- [99]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = -78.8892822265625,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["url"] = "https://wago.io/Afenar_Druid/154",
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
						["type"] = "aura",
						["unevent"] = "timed",
						["duration"] = "1",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
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
			["version"] = 154,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
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
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "group",
			["borderSize"] = 16,
			["borderOffset"] = 5,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Druid_AfenarUI",
			["borderInset"] = 11,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "BOTTOMLEFT",
			["config"] = {
			},
			["uid"] = "YrH3Z287(4z",
			["xOffset"] = -553.3328247070312,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
				["groupOffset"] = true,
			},
			["groupIcon"] = "625999",
		},
		["Solar_Beam_Skull_Bash"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 28,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = false,
						["remaining"] = "3",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["use_remaining"] = false,
						["type"] = "spell",
						["use_genericShowOn"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["subeventPrefix"] = "SPELL",
						["event"] = "Cooldown Progress (Spell)",
						["remaining_operator"] = "<=",
						["realSpellName"] = 78675,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["custom_hide"] = "timed",
						["spellName"] = 78675,
						["unevent"] = "auto",
						["use_track"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
						["showOn"] = "showOnCooldown",
						["genericShowOn"] = "showAlways",
						["spellName"] = 106839,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["duration"] = "1",
						["use_absorbMode"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["realSpellName"] = 106839,
						["use_spellName"] = true,
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["use_track"] = true,
						["spellName"] = 106839,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 13,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [2]
			},
			["height"] = 30,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 5,
					["multi"] = {
						[5] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 78675,
				["zoneIds"] = "",
			},
			["auto"] = true,
			["config"] = {
			},
			["authorOptions"] = {
			},
			["parent"] = "Druid_AfenarUI",
			["regionType"] = "icon",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["easeStrength"] = 3,
					["colorFunc"] = "",
					["rotate"] = 0,
					["x"] = 0,
					["use_color"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["desaturate"] = false,
			["xOffset"] = -124,
			["width"] = 30,
			["alpha"] = 0.3,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Solar_Beam_Skull_Bash",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "Ds34n7DwLGj",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["do_custom"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Mangle"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["type"] = "spell",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["names"] = {
							"Starfall", -- [1]
							"Starfall", -- [2]
						},
						["event"] = "Cooldown Progress (Spell)",
						["ownOnly"] = true,
						["realSpellName"] = "割碎",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["spellName"] = 33917,
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 33917,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "spell",
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["use_spellName"] = true,
						["duration"] = "1",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 33917,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 4,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = false,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [3]
			},
			["height"] = 40,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 33917,
				["zoneIds"] = "",
			},
			["width"] = 40,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration"] = "",
					["colorA"] = 1,
					["colorG"] = 1,
					["use_translate"] = false,
					["x"] = -1,
					["type"] = "none",
					["scalex"] = 1,
					["easeType"] = "none",
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      local angle = (progress + 0.25) * 2 * math.pi\n      return startX + (math.cos(angle) * deltaX * math.cos(angle*2)), startY + (math.abs(math.cos(angle)) * deltaY * math.sin(angle*2))\n    end\n  ",
					["scaley"] = 1,
					["alpha"] = 0,
					["easeStrength"] = 3,
					["y"] = -1,
					["colorType"] = "custom",
					["colorB"] = 1,
					["use_color"] = false,
					["colorFunc"] = "",
					["rotate"] = 0,
					["duration_type"] = "seconds",
					["translateType"] = "spiralandpulse",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["displayIcon"] = "Interface\\Icons\\Ability_Druid_Mangle2",
			["zoom"] = 0.3,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["config"] = {
			},
			["alpha"] = 1,
			["auto"] = false,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Mangle",
			["authorOptions"] = {
			},
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 0,
			["uid"] = "NrXHZFhjJk9",
			["inverse"] = true,
			["desaturate"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 1,
										["op"] = "<",
										["variable"] = "expirationTime",
										["value"] = "0.5",
									}, -- [1]
									{
										["trigger"] = 1,
										["variable"] = "onCooldown",
										["value"] = 1,
									}, -- [2]
								},
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "spellInRange",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.33333333333333, -- [2]
								0.27058823529412, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.border_color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
						{
							["property"] = "sub.2.glow",
						}, -- [3]
						{
							["value"] = {
								1, -- [1]
								0.29411764705882, -- [2]
								0.17647058823529, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [4]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "duration",
						["value"] = "2",
					},
					["changes"] = {
						{
							["property"] = "sub.3.text_visible",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Survival_Instincts"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = -58,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"61336", -- [1]
						},
						["ownOnly"] = true,
						["unit"] = "player",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
							"Инстинкты выживания", -- [1]
						},
						["useGroup_count"] = false,
						["spellIds"] = {
							61336, -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["type"] = "aura2",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["use_showgcd"] = false,
						["useCount"] = true,
						["names"] = {
							"Божественное перышко", -- [1]
							"Божественное перышко", -- [2]
							"Божественное перышко", -- [3]
						},
						["debuffType"] = "HELPFUL",
						["use_unit"] = true,
						["use_genericShowOn"] = true,
						["duration"] = "1",
						["spellName"] = 61336,
						["charges_operator"] = "~=",
						["type"] = "spell",
						["count"] = "2",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["countOperator"] = "<=",
						["custom_hide"] = "timed",
						["realSpellName"] = 61336,
						["use_spellName"] = true,
						["spellIds"] = {
							121536, -- [1]
							158624, -- [2]
							121557, -- [3]
						},
						["unevent"] = "auto",
						["charges"] = "3",
						["use_remaining"] = false,
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 61336,
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "spell",
						["unevent"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["debuffType"] = "HELPFUL",
						["event"] = "Spell Known",
						["duration"] = "1",
						["use_track"] = true,
						["spellName"] = 231065,
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 13,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "TOPRIGHT",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 3,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "TOPRIGHT",
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_anchorYOffset"] = 2,
				}, -- [3]
			},
			["height"] = 30,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 61336,
				["zoneIds"] = "",
			},
			["alpha"] = 0.3,
			["width"] = 30,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135994,
			["regionType"] = "icon",
			["desaturate"] = false,
			["cooldownEdge"] = false,
			["config"] = {
			},
			["useTooltip"] = false,
			["xOffset"] = 49,
			["semver"] = "3.4.7",
			["cooldownTextDisabled"] = true,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Survival_Instincts",
			["zoom"] = 0.3,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["uid"] = "gtwqYHWzng7",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
					["do_glow"] = false,
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "inverse",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [3]
						{
							["value"] = {
								1, -- [1]
								0.77254901960784, -- [2]
								0.50196078431373, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.border_color",
						}, -- [4]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Hibernate"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 28,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["use_showgcd"] = false,
						["remaining"] = "3",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["use_unit"] = true,
						["use_genericShowOn"] = true,
						["custom_hide"] = "timed",
						["charges_operator"] = ">=",
						["use_remaining"] = false,
						["duration"] = "1",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["spellName"] = 2908,
						["event"] = "Cooldown Progress (Spell)",
						["remaining_operator"] = "<=",
						["realSpellName"] = "安撫動物",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["charges"] = "0",
						["type"] = "spell",
						["use_track"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["showOn"] = "showOnCooldown",
						["genericShowOn"] = "showAlways",
						["spellName"] = 2908,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 4,
						},
						["use_absorbMode"] = true,
						["event"] = "Talent Known",
						["unit"] = "player",
						["use_talent"] = true,
						["use_unit"] = true,
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 13,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [2]
			},
			["height"] = 30,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 4,
					["multi"] = {
						[4] = true,
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 2908,
				["zoneIds"] = "",
			},
			["zoom"] = 0.3,
			["config"] = {
			},
			["url"] = "https://wago.io/Afenar_Druid/154",
			["parent"] = "Druid_AfenarUI",
			["anchorFrameFrame"] = "WeakAuras:Growl",
			["regionType"] = "icon",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["desaturate"] = false,
			["xOffset"] = 124,
			["width"] = 30,
			["alpha"] = 0.3,
			["cooldownTextDisabled"] = true,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Hibernate",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["do_custom"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "3.4.7",
			["uid"] = "qSm5a5iNw1w",
			["inverse"] = true,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 0,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = -1,
										["variable"] = "incombat",
										["value"] = 1,
									}, -- [2]
								},
							}, -- [1]
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = 33,
							["property"] = "yOffsetRelative",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Convoke_the_Spirits"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 74.5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["names"] = {
							"Starfall", -- [1]
							"Starfall", -- [2]
						},
						["use_showgcd"] = true,
						["remaining"] = "1.5",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["spellName"] = 323764,
						["custom_hide"] = "timed",
						["use_remaining"] = false,
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["remaining_operator"] = ">=",
						["realSpellName"] = 323764,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["ownOnly"] = true,
						["unevent"] = "auto",
						["type"] = "spell",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 205636,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 4,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [3]
			},
			["height"] = 35,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_class_and_spec"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
					["multi"] = {
						[103] = true,
						[104] = true,
						[102] = true,
					},
				},
				["talent"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
						[13] = true,
						[15] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["use_level"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 194223,
				["zoneIds"] = "",
			},
			["width"] = 35,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["easeStrength"] = 3,
					["colorFunc"] = "",
					["rotate"] = 0,
					["x"] = 0,
					["use_color"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "fade",
					["alpha"] = 0,
					["alphaType"] = "hide",
					["duration_type"] = "seconds",
					["duration"] = "1",
					["easeStrength"] = 3,
					["use_translate"] = false,
					["use_alpha"] = false,
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["displayIcon"] = "Interface\\Icons\\Spell_Nature_NatureGuardian",
			["zoom"] = 0.3,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["config"] = {
			},
			["alpha"] = 1,
			["auto"] = true,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Convoke_the_Spirits",
			["authorOptions"] = {
			},
			["frameStrata"] = 3,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = -88.5,
			["uid"] = "M6mWtd)neEt",
			["inverse"] = true,
			["desaturate"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["variable"] = "expirationTime",
								["value"] = "1",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "duration",
						["value"] = "2",
					},
					["changes"] = {
						{
							["property"] = "sub.3.text_visible",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "expirationTime",
						["value"] = "60",
					},
					["changes"] = {
						{
							["value"] = 14,
							["property"] = "sub.3.text_fontSize",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Starfire"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["duration"] = "1",
						["unevent"] = "auto",
						["spellName"] = 194153,
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["unit"] = "player",
						["realSpellName"] = 194153,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_ignoreSpellKnown"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_track"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["debuffType"] = "HELPFUL",
						["auraspellids"] = {
							"48517", -- [1]
						},
						["duration"] = "1",
						["ownOnly"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["use_genericShowOn"] = true,
						["unevent"] = "auto",
						["event"] = "Spell Activation Overlay",
						["useExactSpellId"] = true,
						["use_track"] = true,
						["spellName"] = 194153,
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "spell",
						["debuffType"] = "HELPFUL",
						["auraspellids"] = {
							"48517", -- [1]
						},
						["duration"] = "1",
						["ownOnly"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["use_genericShowOn"] = true,
						["unevent"] = "auto",
						["event"] = "Health",
						["useExactSpellId"] = true,
						["use_track"] = true,
						["spellName"] = 194153,
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "aura2",
						["debuffType"] = "HELPFUL",
						["auraspellids"] = {
							"157228", -- [1]
						},
						["duration"] = "1",
						["ownOnly"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["use_genericShowOn"] = true,
						["unevent"] = "auto",
						["event"] = "Spell Activation Overlay",
						["useExactSpellId"] = true,
						["use_track"] = true,
						["spellName"] = 194153,
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "timed",
					["text_text"] = "%s",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "TOPRIGHT",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorXOffset"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_s_time_dynamic_threshold"] = 0,
					["text_text_format_p_time_precision"] = 1,
					["text_fontType"] = "OUTLINE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 3,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_anchorYOffset"] = 3,
					["text_text_format_s_time_precision"] = 1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "TOPRIGHT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_text_format_s_time_format"] = 0,
					["text_fontSize"] = 20,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
				}, -- [3]
			},
			["height"] = 40,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["single"] = 16,
					["multi"] = {
						[17] = true,
						[16] = true,
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 19,
					["multi"] = {
						[17] = true,
						[18] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 202342,
				["zoneIds"] = "",
			},
			["width"] = 40,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["easeStrength"] = 3,
					["colorFunc"] = "",
					["rotate"] = 0,
					["x"] = 0,
					["use_color"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "fade",
					["alpha"] = 0,
					["alphaType"] = "hide",
					["duration_type"] = "seconds",
					["duration"] = "1",
					["easeStrength"] = 3,
					["use_translate"] = false,
					["use_alpha"] = false,
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["displayIcon"] = 135837,
			["zoom"] = 0.3,
			["actions"] = {
				["start"] = {
					["glow_frame_type"] = "FRAMESELECTOR",
					["glow_frame"] = "WeakAuras:Solar_Eclipce",
					["glow_action"] = "show",
					["do_sound"] = false,
					["glow_type"] = "buttonOverlay",
					["do_custom"] = false,
					["do_glow"] = true,
				},
				["init"] = {
				},
				["finish"] = {
					["glow_frame_type"] = "FRAMESELECTOR",
					["hide_all_glows"] = true,
					["glow_action"] = "hide",
					["do_sound"] = false,
					["glow_frame"] = "WeakAuras:Solar_Eclipce",
					["do_glow"] = true,
				},
			},
			["config"] = {
			},
			["alpha"] = 1,
			["auto"] = true,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Starfire",
			["authorOptions"] = {
			},
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = -86,
			["uid"] = "nPq5GtPa)It",
			["inverse"] = true,
			["desaturate"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "<",
								["variable"] = "spellCount",
								["value"] = "1",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 4,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Swiftmend_RA"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = -91.004837036133,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_charges"] = false,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["custom_hide"] = "timed",
						["charges"] = "1",
						["debuffType"] = "HELPFUL",
						["charges_operator"] = ">=",
						["type"] = "spell",
						["names"] = {
							"Shooting Stars", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["duration"] = "1",
						["realSpellName"] = "迅癒",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["spellName"] = 18562,
						["unevent"] = "auto",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["showOn"] = "showOnCooldown",
						["genericShowOn"] = "showOnCooldown",
						["spellName"] = 18562,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 13,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [2]
			},
			["height"] = 30,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["SHAMAN"] = true,
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 9,
					["multi"] = {
						[9] = true,
					},
				},
				["spec"] = {
					["single"] = 4,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 18562,
				["zoneIds"] = "",
			},
			["width"] = 30,
			["auto"] = true,
			["authorOptions"] = {
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["displayIcon"] = "Interface\\Icons\\inv_relics_idolofrejuvenation",
			["desaturate"] = true,
			["xOffset"] = 49,
			["config"] = {
			},
			["alpha"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration"] = "2",
					["alphaType"] = "alphaPulse",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      return start + (((math.sin(angle) + 1)/2) * delta)\n    end\n  ",
					["use_alpha"] = true,
					["type"] = "none",
					["easeType"] = "none",
					["x"] = 0,
					["use_color"] = false,
					["alpha"] = 0.6,
					["scalex"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["easeStrength"] = 3,
					["colorA"] = 1,
					["colorFunc"] = "",
					["rotate"] = 0,
					["duration_type"] = "seconds",
					["scaley"] = 1,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Swiftmend_RA",
			["zoom"] = 0.3,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["uid"] = "2A)(JtQ0(nB",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Form_Feral"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 74.5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"768", -- [1]
						},
						["matchesShowOn"] = "showOnMissing",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["names"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"24858", -- [1]
							"783", -- [2]
							"5487", -- [3]
						},
						["matchesShowOn"] = "showOnMissing",
						["event"] = "Health",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [2]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["level"] = "80",
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">=",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["alpha"] = 1,
			["width"] = 35,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 132276,
			["regionType"] = "icon",
			["zoom"] = 0.3,
			["desaturate"] = false,
			["config"] = {
			},
			["useTooltip"] = false,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["semver"] = "3.4.7",
			["cooldownTextDisabled"] = true,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Form_Feral",
			["xOffset"] = 0.5,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["uid"] = "h75uSBhHsBG",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["glow_frame"] = "WeakAuras:Prowl",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["glow_frame"] = "WeakAuras:Prowl",
					["do_custom"] = false,
					["do_sound"] = false,
				},
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["MoonBunnie_Feral Bleed Power"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["event"] = "Health",
						["unit"] = "player",
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["names"] = {
						},
						["check"] = "update",
						["custom"] = "function()\n    --This trigger runs the update function if there have been no updates recently\n    --due to a lack of relevant combat events.\n    local this = aura_env\n    if GetTime() - this.lastUpdate >= 3 then this.update() end\n    --if GetTime() - this.lastDmgUpdate >= 0.045 then  this.updateDmg() end\n    if this.nextUpdateDmg and GetTime() > this.nextUpdateDmg then\n        this.nextUpdateDmg = nil\n        this.updateDmg()\n    end\n    --This 'return true' makes the icon take up space.\n    --Change to 'return false' if you don't want the icon to take up space.\n    return true\nend",
						["custom_type"] = "status",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "PLAYER_ENTERING_WORLD, ACTIVE_TALENT_GROUP_CHANGED, ENCOUNTER_START",
						["custom_type"] = "event",
						["custom"] = "function()\n    --This trigger forces the WeakAura to run its initialization code when\n    --loading into a zone or when switching specs. It also forces talent\n    --information to be updated.\n    aura_env.updateTalents()\n    \n    aura_env.update()\nend",
						["genericShowOn"] = "showOnActive",
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED",
						["custom_type"] = "event",
						["custom"] = "function (event, timestamp, msg, _, sourceGUID, _, _, _, destGUID, _, _, _, spellID)\n    --This trigger listens for bleed events to record snapshots.\n    --This trigger also listens for changes in buffs to recalculate bleed damage.\n    local this = aura_env\n    \n    --Check for only relevant player events\n    if not this.buffID[spellID] and not this.debuffID[spellID] then return end\n    if not this.events[msg] then return end\n    if sourceGUID ~= this.pguid then return end\n    \n    --Handle AURA_APPLY and AURA_REFRESH as the same event type\n    if msg == \"SPELL_AURA_REFRESH\" then msg = \"SPELL_AURA_APPLIED\" end\n    \n    --Convert rake stun events into rake casts to handle corner case with prowl+rake\n    if spellID == 163505 and (msg==\"SPELL_MISSED\" or msg==\"SPELL_AURA_APPLIED\") then\n        spellID = 1822\n        msg = \"SPELL_CAST_SUCCESS\"\n    end\n    \n    --Listen for buff changes on player that affect snapshots\n    if destGUID == this.pguid then\n        if msg == \"SPELL_AURA_APPLIED\" then this.update() return\n        elseif msg == \"SPELL_AURA_REMOVED\" then\n            local spellName = this.buffID[spellID]\n            local dur = 0\n            --Add small timing window for buffs that can expire before cast\n            if spellName == \"bloodtalons\" then dur = 0.1\n            elseif spellName == \"prowl\" then dur = 0.1\n            elseif spellName == \"shadowmeld\" then dur = 0.1\n            elseif spellName == \"suddenAmbush\" then dur = 0.1\n            end\n            \n            if spellName then\n                this.buffs[spellName] = GetTime() + dur\n                this.nextUpdateDmg = GetTime() + dur + 0.01\n                return\n            end\n        end\n    end\n    \n    -- The following code handles application and expiration of bleeds\n    -- 1. Snapshot dmg on spell cast success\n    local fs = feralSnapshots\n    if msg == \"SPELL_CAST_SUCCESS\" then\n        local spellName\n        if spellID == 1822 then spellName = \"rake\"\n        elseif spellID == 1079 then spellName = \"rip\"\n        elseif spellID == 285381 then spellName = \"rip\"\n        elseif spellID == 106830 then spellName = \"thrash\"\n        elseif spellID == 155625 then spellName = \"moonfire\"\n        elseif spellID == 203242 then spellName = \"ripAndTear\"\n        end\n        \n        if spellName then\n            this.update()\n            --Add exception logic for Rip And Tear\n            if spellName == \"ripAndTear\" then\n                fs[\"rip\"][\"onCast\"] = fs[\"rip\"][\"current\"]\n                fs[\"rake\"][\"onCast\"] = fs[\"rake\"][\"current\"]\n                return\n            end\n            fs[spellName][\"onCast\"] = fs[spellName][\"current\"]\n            return\n        end\n        \n        --2. Record snapshot for target if and when the bleed is applied\n    elseif msg == \"SPELL_AURA_APPLIED\" then\n        local spellName\n        if spellID == 155722 then spellName = \"rake\"\n        elseif spellID == 1079 then spellName = \"rip\"\n        elseif spellID == 106830 then spellName = \"thrash\"\n        elseif spellID == 155625 then spellName = \"moonfire\"\n        end\n        \n        if spellName then\n            fs[spellName][destGUID] = fs[spellName][\"onCast\"]\n            return\n        end\n        \n        --3. Remove snapshot for target when bleed expires\n    elseif msg == \"SPELL_AURA_REMOVED\" then\n        local spellName\n        if spellID == 155722 then spellName = \"rake\"\n        elseif spellID == 1079 then spellName = \"rip\"\n        elseif spellID == 106830 then spellName = \"thrash\"\n        elseif spellID == 155625 then spellName = \"moonfire\"\n        end\n        \n        if spellName then\n            fs[spellName][destGUID] = nil\n            return\n        end\n    end\nend",
						["genericShowOn"] = "showOnActive",
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "PLAYER_REGEN_ENABLED, PLAYER_REGEN_DISABLED",
						["custom_type"] = "event",
						["custom"] = "function(event)\n    --This trigger manages clean up of snapshots when it is safe to do so\n    \n    --1. Schedule cleanup of snapshots when combat ends\n    if event == \"PLAYER_REGEN_ENABLED\" then\n        aura_env.cleanUp()\n        \n        --2. Check for and cancel scheduled cleanup when combat starts\n    elseif event == \"PLAYER_REGEN_DISABLED\" then\n        aura_env.cancelCleanUp()\n    end\nend",
						["genericShowOn"] = "showOnActive",
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = " ",
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
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_TOP",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [1]
			},
			["height"] = 50,
			["load"] = {
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["width"] = 50,
			["url"] = "https://wago.io/Afenar_Druid/154",
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
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["desaturate"] = false,
			["regionType"] = "icon",
			["displayIcon"] = "Interface\\Icons\\Ability_Druid_CatForm",
			["zoom"] = 0.3,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "--Feral Bleed Power r20 by MoonBunnie for 9.0.0\n--Visit https://wago.io/Syz8eBzY-\n--for more info and the latest versions.\n\n--Initialize variables and parameters\nlocal this = aura_env\nthis.pguid = UnitGUID(\"player\")\nthis.cleanUpTimer = nil\nthis.lastUpdate = 0\nthis.nextUpdateDmg = nil\n\n--Create table for bleed power snapshot values\nthis.power = {\n    [\"tigersFury\"] = 1.15,\n    --[\"savageRoar\"] = 1.15,\n    [\"bloodtalons\"] = 1.30,\n    [\"momentOfClarity\"] = 1.15, --clearcasting\n    [\"stealth\"] = 1.6\n}\n\n--Create Talent tracking table\nthis.talents = {\n    --[\"savageRoar\"] = false,\n    [\"bloodtalons\"] = false,\n    [\"incarnation\"] = false,\n    [\"momentOfClarity\"] = false\n}\n\n--Create Talent ID table\nthis.talentID = {\n    --[21702] = \"savageRoar\",\n    [21649] = \"bloodtalons\",\n    [21704] = \"incarnation\",\n    [21646] = \"momentOfClarity\"\n}\n\n--Create Buff tracking table\nthis.buffs = {\n    [\"tigersFury\"] = 0,\n    --[\"savageRoar\"] = 0,\n    [\"bloodtalons\"] = 0,\n    [\"incarnation\"] = 0,\n    [\"momentOfClarity\"] = 0, --clearcasting\n    [\"prowl\"] = 1,\n    [\"shadowmeld\"] = 1,\n    [\"suddenAmbush\"] = 0,\n    [\"berserk\"] = 0\n}\n\n--Create Combat Log Event filter table\nthis.events = {\n    [\"SPELL_AURA_APPLIED\"] = true,\n    [\"SPELL_AURA_REFRESH\"] = true,\n    [\"SPELL_AURA_REMOVED\"] = true,\n    [\"SPELL_CAST_SUCCESS\"] = true,\n    [\"SPELL_MISSED\"] = true\n}\n\n--Create Buff ID filter table\nthis.buffID = {\n    [5217] = \"tigersFury\",\n    --[52610] = \"savageRoar\",\n    [145152] = \"bloodtalons\",\n    [102543] = \"incarnation\",\n    [5215] = \"prowl\",\n    [102547] = \"prowl\",\n    [58984] = \"shadowmeld\",\n    [340698] = \"suddenAmbush\",\n    [106951] = \"berserk\"\n}\n\n--Create Debuff ID filter table\nthis.debuffID = {\n    [163505] = \"rake\", --stun effect\n    [1822] = \"rake\", --initial dmg\n    [1079] = \"rip\",\n    [106830] = \"thrash\",\n    [155722] = \"rake\", --dot\n    [155625] = \"moonfire\",\n    [203242] = \"ripAndTear\",\n    [285381] = \"primalWrath\"\n}\n\n--Initialize tables to hold all snapshot data\nferalSnapshots = {\n    [\"rake\"] = {},\n    [\"rip\"] = {},\n    [\"thrash\"] = {},\n    [\"moonfire\"] = {}\n}\n\n--Create update function for checking active talents\nthis.updateTalents = function()\n    local this = aura_env\n    local t = this.talents\n    local tID = this.talentID\n    local b = this.buffs\n    local bID = this.buffID\n    \n    --Use talent ID table to check if talent is selected\n    for id,name in pairs(tID) do\n        t[name] = select(4,GetTalentInfoByID(id,1)) or false\n    end\n    \n    --Add or remove clearcasting in the buff filter list for Moment of Clarity\n    if t.momentOfClarity then \n        bID[135700] = \"momentOfClarity\"\n    else\n        bID[135700] = nil\n        b.momentOfClarity = 0\n    end\nend\n\nthis.updateTalents()\n\n--Create update function for checking for buffs\nthis.update = function()\n    local this = aura_env\n    local b = this.buffs\n    local bID = this.buffID\n    local s = this.strings\n    local t = this.talents\n    local now = GetTime()\n    \n    this.lastUpdate = now\n    \n    --Use Buff ID filter table to query for buff expiration times if present\n    for id,name in pairs(bID) do\n        if t[name] == true or t[name] == nil then\n            b[name] = select(6,WA_GetUnitAura(\"player\", id, \"PLAYER|HELPFUL\")) or b[name]\n        end\n    end\n    \n    this.updateDmg()\nend\n\n--Create update function for calculating current snapshot strength\nthis.updateDmg = function()\n    local this = aura_env\n    local b = this.buffs\n    local p = this.power\n    local now = GetTime()\n    local multi = {\n        [\"general\"] = 1,\n        [\"bt\"] = 1,\n        [\"moc\"] = 1,\n        [\"stealth\"] = 1\n    }   \n    \n    if b.tigersFury > now then multi.general = p.tigersFury end\n    --if b.savageRoar > now then multi.general = multi.general * p.savageRoar end\n    if b.bloodtalons > now then multi.bt = p.bloodtalons end\n    if b.momentOfClarity > now then multi.moc = p.momentOfClarity end\n    if b.incarnation > now or b.prowl > now or b.shadowmeld > now or b.prowl == 0 or b.shadowmeld == 0 or b.suddenAmbush > now or b.berserk > now then\n        multi.stealth = p.stealth\n    end\n    \n    --Record snapshot values for each spell\n    feralSnapshots.rip.current = multi.general*multi.bt\n    feralSnapshots.rip.current5CP = multi.general*multi.bt\n    feralSnapshots.rake.current = multi.general*multi.stealth\n    feralSnapshots.thrash.current = multi.general*multi.moc\n    feralSnapshots.moonfire.current = multi.general\nend\n\nthis.update()\n\n--Create function for handling clean up of the snapshot table\nthis.cleanUp = function()\n    local this = aura_env\n    --Cancel existing scheduled cleanup first if there is one\n    if this.cleanUpTimer then this.cancelCleanUp() end\n    \n    this.cleanupTimer = C_Timer.NewTimer(30,\n        function()\n            if not UnitAffectingCombat(\"player\") then\n                feralSnapshots = {\n                    [\"rake\"] = {},\n                    [\"rip\"] = {},\n                    [\"thrash\"] = {},\n                    [\"moonfire\"] = {}\n                }\n            end\n        end\n    )\nend\n\n--Create clean up function\nthis.cancelCleanUp = function()\n    local this = aura_env\n    if this.cleanupTimer then\n        this.cleanupTimer:Cancel()\n        this.cleanupTimer = nil\n    end\nend",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["config"] = {
			},
			["alpha"] = 1,
			["auto"] = false,
			["cooldownTextDisabled"] = false,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "MoonBunnie_Feral Bleed Power",
			["authorOptions"] = {
			},
			["frameStrata"] = 3,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 25,
			["uid"] = "7sbS23RfcD)",
			["inverse"] = false,
			["desc"] = "r20 by MoonBunnie for 9.0.0.",
			["conditions"] = {
			},
			["cooldown"] = false,
			["parent"] = "Druid_AfenarUI",
		},
		["Predatory_Swiftness"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 61.000061035156,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["useGroup_count"] = false,
						["use_inverse"] = true,
						["names"] = {
							"Стремительность хищника", -- [1]
						},
						["use_unit"] = true,
						["use_tooltip"] = false,
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["ownOnly"] = true,
						["matchesShowOn"] = "showOnActive",
						["custom_hide"] = "timed",
						["buffShowOn"] = "showAlways",
						["unevent"] = "auto",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["duration"] = "1",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 8042,
						["realSpellName"] = "Земной шок",
						["use_spellName"] = true,
						["spellIds"] = {
							69369, -- [1]
						},
						["debuffType"] = "HELPFUL",
						["remOperator"] = ">=",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["auranames"] = {
							"69369", -- [1]
						},
					},
					["untrigger"] = {
						["spellName"] = 8042,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_visible"] = true,
					["text_shadowXOffset"] = 0,
					["text_fontSize"] = 13,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
			},
			["height"] = 30,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["single"] = 19,
					["multi"] = {
						[20] = true,
						[19] = true,
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 20,
					["multi"] = {
						true, -- [1]
						true, -- [2]
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 16974,
				["zoneIds"] = "",
			},
			["width"] = 30,
			["auto"] = false,
			["authorOptions"] = {
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["displayIcon"] = 132185,
			["desaturate"] = false,
			["xOffset"] = -124,
			["config"] = {
			},
			["alpha"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["easeStrength"] = 3,
					["colorFunc"] = "",
					["rotate"] = 0,
					["x"] = 0,
					["use_color"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "fade",
					["alpha"] = 0,
					["alphaType"] = "hide",
					["duration_type"] = "seconds",
					["duration"] = "1",
					["easeStrength"] = 3,
					["use_translate"] = false,
					["use_alpha"] = false,
				},
			},
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Predatory_Swiftness",
			["zoom"] = 0.3,
			["frameStrata"] = 3,
			["anchorFrameType"] = "SCREEN",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["uid"] = "jQv0j418SMA",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["glow_frame"] = "WeakAuras:Omen_of_Clarity",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["glow_frame"] = "WeakAuras:Omen_of_Clarity",
					["do_sound"] = false,
				},
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Guardian_of_the_Elune"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 74.5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["useGroup_count"] = false,
						["use_inverse"] = true,
						["names"] = {
							"Страж Элуны", -- [1]
						},
						["use_unit"] = true,
						["use_tooltip"] = false,
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["ownOnly"] = true,
						["matchesShowOn"] = "showOnActive",
						["custom_hide"] = "timed",
						["buffShowOn"] = "showOnActive",
						["unevent"] = "auto",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["duration"] = "1",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 8042,
						["realSpellName"] = "Земной шок",
						["use_spellName"] = true,
						["spellIds"] = {
							213680, -- [1]
						},
						["debuffType"] = "HELPFUL",
						["remOperator"] = ">=",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["auranames"] = {
							"213680", -- [1]
						},
					},
					["untrigger"] = {
						["spellName"] = 8042,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_visible"] = true,
					["text_shadowXOffset"] = 0,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["single"] = 19,
					["multi"] = {
						[20] = true,
						[19] = true,
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 18,
					["multi"] = {
						true, -- [1]
						true, -- [2]
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 16974,
				["zoneIds"] = "",
			},
			["width"] = 35,
			["auto"] = true,
			["authorOptions"] = {
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["displayIcon"] = 132185,
			["desaturate"] = false,
			["xOffset"] = 0.5,
			["config"] = {
			},
			["alpha"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["easeStrength"] = 3,
					["colorFunc"] = "",
					["rotate"] = 0,
					["x"] = 0,
					["use_color"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "fade",
					["alpha"] = 0,
					["alphaType"] = "hide",
					["duration_type"] = "seconds",
					["duration"] = "1",
					["easeStrength"] = 3,
					["use_translate"] = false,
					["use_alpha"] = false,
				},
			},
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Guardian_of_the_Elune",
			["zoom"] = 0.3,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["uid"] = "dbI8U7(1n(Y",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Druid_CP_4"] = {
			["sparkWidth"] = 5,
			["iconSource"] = -1,
			["xOffset"] = 43,
			["preferToUpdate"] = false,
			["yOffset"] = 16,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["icon"] = false,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0.81960784313725, -- [2]
				0.6156862745098, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[7] = true,
						[9] = true,
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DEATHKNIGHT"] = true,
						["WARRIOR"] = true,
						["ROGUE"] = true,
						["MAGE"] = true,
						["WARLOCK"] = true,
						["PALADIN"] = true,
						["DRUID"] = true,
						["MONK"] = true,
						["SHAMAN"] = true,
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["use_class"] = true,
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["texture"] = "Solid",
			["zoom"] = 0.3,
			["spark"] = false,
			["tocversion"] = 90002,
			["alpha"] = 1,
			["uid"] = "UxdhUE)Utmt",
			["sparkOffsetX"] = 0,
			["color"] = {
			},
			["customText"] = "",
			["customTextUpdate"] = "update",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Conditions",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_castType"] = false,
						["auranames"] = {
							"205473", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["powertype"] = 4,
						["names"] = {
						},
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["use_unit"] = true,
						["useName"] = true,
						["use_power"] = true,
						["subeventSuffix"] = "_CAST_START",
						["power_operator"] = ">=",
						["custom_hide"] = "timed",
						["use_requirePowerType"] = false,
						["type"] = "unit",
						["castType"] = "cast",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["ownOnly"] = true,
						["event"] = "Power",
						["duration"] = "1",
						["power"] = "4",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["type"] = "aurabar_bar",
				}, -- [2]
				{
					["api"] = false,
					["model_x"] = 0,
					["model_st_us"] = 40,
					["model_st_rz"] = 0,
					["model_z"] = 5,
					["model_fileId"] = "328500",
					["model_path"] = "spells/arcanepower_state_chest.m2",
					["model_st_ty"] = 0,
					["model_y"] = 0,
					["model_st_rx"] = 270,
					["rotation"] = 180,
					["bar_model_visible"] = false,
					["model_st_tx"] = 0,
					["bar_model_alpha"] = 0,
					["bar_model_clip"] = false,
					["type"] = "subbarmodel",
					["model_st_tz"] = 0,
					["model_st_ry"] = 0,
				}, -- [3]
			},
			["height"] = 12,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["anchorFrameType"] = "SELECTFRAME",
			["anchorFrameFrame"] = "WeakAuras:Feral_Energy",
			["borderBackdrop"] = "None",
			["borderInFront"] = false,
			["authorOptions"] = {
			},
			["icon_side"] = "LEFT",
			["sparkRotationMode"] = "MANUAL",
			["backgroundColor"] = {
				0.42745098039216, -- [1]
				0.15686274509804, -- [2]
				0.023529411764706, -- [3]
				1, -- [4]
			},
			["sparkHeight"] = 15,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",1,0.7,0.3,1,0.8,0.6)",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["auto"] = true,
			["config"] = {
			},
			["semver"] = "3.4.7",
			["sparkHidden"] = "BOTH",
			["id"] = "Druid_CP_4",
			["sparkTexture"] = "Legionfall_BarSpark",
			["frameStrata"] = 2,
			["width"] = 42,
			["sparkColor"] = {
				1, -- [1]
				0.42352941176471, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "inverse",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "sub.3.bar_model_alpha",
						}, -- [2]
					},
				}, -- [1]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Druid_AfenarUI",
		},
		["Thrash_Feral"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["useGroup_count"] = false,
						["use_inverse"] = true,
						["names"] = {
							"Взбучка", -- [1]
						},
						["unitExists"] = true,
						["use_tooltip"] = false,
						["use_unit"] = true,
						["unit"] = "target",
						["subeventPrefix"] = "SPELL",
						["matchesShowOn"] = "showAlways",
						["type"] = "aura2",
						["debuffType"] = "HARMFUL",
						["unevent"] = "auto",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["duration"] = "1",
						["event"] = "Cooldown Progress (Spell)",
						["buffShowOn"] = "showAlways",
						["realSpellName"] = "Земной шок",
						["use_spellName"] = true,
						["spellIds"] = {
							106830, -- [1]
						},
						["spellName"] = 8042,
						["remOperator"] = ">=",
						["combineMatches"] = "showLowest",
						["ownOnly"] = true,
						["auranames"] = {
							"106830", -- [1]
						},
					},
					["untrigger"] = {
						["spellName"] = 8042,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 4,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_visible"] = true,
					["text_shadowXOffset"] = 0,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_time_format"] = 0,
				}, -- [3]
			},
			["height"] = 40,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["single"] = 19,
					["multi"] = {
						[20] = true,
						[19] = true,
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 16,
					["multi"] = {
						[16] = true,
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 106830,
				["zoneIds"] = "",
			},
			["width"] = 40,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["easeStrength"] = 3,
					["colorFunc"] = "",
					["rotate"] = 0,
					["x"] = 0,
					["use_color"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "fade",
					["alpha"] = 0,
					["alphaType"] = "hide",
					["duration_type"] = "seconds",
					["duration"] = "1",
					["easeStrength"] = 3,
					["use_translate"] = false,
					["use_alpha"] = false,
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["displayIcon"] = 451161,
			["zoom"] = 0.3,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["config"] = {
			},
			["alpha"] = 1,
			["auto"] = false,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Thrash_Feral",
			["authorOptions"] = {
			},
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 43,
			["uid"] = "DoQO3W8fl2i",
			["inverse"] = false,
			["desaturate"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "expirationTime",
						["value"] = "3.6",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Stellar_Flare "] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["useGroup_count"] = false,
						["use_inverse"] = true,
						["names"] = {
							"Звездная вспышка", -- [1]
						},
						["unitExists"] = true,
						["use_tooltip"] = false,
						["use_unit"] = true,
						["unit"] = "target",
						["subeventPrefix"] = "SPELL",
						["matchesShowOn"] = "showAlways",
						["type"] = "aura2",
						["debuffType"] = "HARMFUL",
						["unevent"] = "auto",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["duration"] = "1",
						["event"] = "Cooldown Progress (Spell)",
						["buffShowOn"] = "showAlways",
						["realSpellName"] = "Земной шок",
						["use_spellName"] = true,
						["spellIds"] = {
							202347, -- [1]
						},
						["spellName"] = 8042,
						["remOperator"] = ">=",
						["combineMatches"] = "showLowest",
						["ownOnly"] = true,
						["auranames"] = {
							"202347", -- [1]
						},
					},
					["untrigger"] = {
						["spellName"] = 8042,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 19,
						},
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Talent Known",
						["unit"] = "player",
						["use_track"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 4,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_visible"] = true,
					["text_shadowXOffset"] = 0,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_time_format"] = 0,
				}, -- [3]
			},
			["height"] = 40,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 18,
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 93402,
				["zoneIds"] = "",
			},
			["width"] = 40,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["easeStrength"] = 3,
					["colorFunc"] = "",
					["rotate"] = 0,
					["x"] = 0,
					["use_color"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "fade",
					["alpha"] = 0,
					["alphaType"] = "hide",
					["duration_type"] = "seconds",
					["duration"] = "1",
					["easeStrength"] = 3,
					["use_translate"] = false,
					["use_alpha"] = false,
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["displayIcon"] = "Interface\\Icons\\ability_druid_stellarflare",
			["zoom"] = 0.3,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["config"] = {
			},
			["alpha"] = 1,
			["auto"] = false,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Stellar_Flare ",
			["authorOptions"] = {
			},
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 0,
			["uid"] = "RAW7bxLcocj",
			["inverse"] = false,
			["desaturate"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["op"] = "<",
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["variable"] = "expirationTime",
								["value"] = "7.2",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "buffed",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "attackabletarget",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = -1,
								["variable"] = "hastarget",
								["value"] = 0,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Ironfur_S"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				0.90588235294118, -- [2]
				0.74509803921569, -- [3]
				1, -- [4]
			},
			["displayText"] = "%s",
			["yOffset"] = 16.5,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/Afenar_Druid/154",
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
						["type"] = "aura2",
						["useExactSpellId"] = true,
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["auraspellids"] = {
							"192081", -- [1]
						},
						["spellIds"] = {
						},
						["useName"] = false,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 45,
			["wordWrap"] = "WordWrap",
			["font"] = "Expressway",
			["version"] = 154,
			["subRegions"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["class_and_spec"] = {
					["multi"] = {
						[103] = true,
						[104] = true,
						[102] = true,
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class_and_spec"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["displayText_format_s_format"] = "none",
			["fontSize"] = 13,
			["shadowXOffset"] = 0,
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
			["anchorFrameFrame"] = "WeakAuras:Guardian_Rage",
			["regionType"] = "text",
			["uid"] = "fyN)TW963y9",
			["parent"] = "Druid_AfenarUI",
			["fixedWidth"] = 200,
			["displayText_format_p_time_precision"] = 1,
			["selfPoint"] = "CENTER",
			["xOffset"] = 0,
			["semver"] = "3.4.7",
			["justify"] = "CENTER",
			["tocversion"] = 90002,
			["id"] = "Ironfur_S",
			["shadowYOffset"] = 0,
			["frameStrata"] = 3,
			["anchorFrameType"] = "SELECTFRAME",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["automaticWidth"] = "Auto",
			["displayText_format_p_time_dynamic_threshold"] = 0,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["preferToUpdate"] = false,
		},
		["Savage_Roar"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["useGroup_count"] = false,
						["use_inverse"] = true,
						["names"] = {
							"Дикий рев", -- [1]
						},
						["use_unit"] = true,
						["use_tooltip"] = false,
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["ownOnly"] = true,
						["matchesShowOn"] = "showAlways",
						["custom_hide"] = "timed",
						["buffShowOn"] = "showAlways",
						["unevent"] = "auto",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["duration"] = "1",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 8042,
						["realSpellName"] = "Земной шок",
						["use_spellName"] = true,
						["spellIds"] = {
							52610, -- [1]
						},
						["debuffType"] = "HELPFUL",
						["remOperator"] = ">=",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["auranames"] = {
							"52610", -- [1]
						},
					},
					["untrigger"] = {
						["spellName"] = 8042,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["glowFrequency"] = 0,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 20,
					["glowYOffset"] = 1,
					["glowColor"] = {
						1, -- [1]
						0.64705882352941, -- [2]
						0.31764705882353, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 1,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 30,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [3]
			},
			["height"] = 40,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 18,
					["multi"] = {
						[14] = true,
						[13] = true,
						[18] = true,
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 52610,
				["zoneIds"] = "",
			},
			["width"] = 40,
			["auto"] = false,
			["authorOptions"] = {
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["displayIcon"] = 236167,
			["desaturate"] = true,
			["xOffset"] = 86,
			["config"] = {
			},
			["alpha"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "fade",
					["alpha"] = 0,
					["alphaType"] = "hide",
					["duration_type"] = "seconds",
					["duration"] = "1",
					["easeStrength"] = 3,
					["use_translate"] = false,
					["use_alpha"] = false,
				},
			},
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Savage_Roar",
			["zoom"] = 0.3,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["uid"] = "7YRjWvYTtSD",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["op"] = "<",
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["variable"] = "expirationTime",
								["value"] = "10.8",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "buffed",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								0.64705882352941, -- [2]
								0.31764705882353, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.border_color",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Tooth_and_Claw"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 74.5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"135288", -- [1]
						},
						["ownOnly"] = true,
						["unit"] = "player",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
							"Колючий мех", -- [1]
						},
						["useGroup_count"] = false,
						["spellIds"] = {
							155835, -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["type"] = "aura2",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["talent"] = {
							["single"] = 3,
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
							"Божественное перышко", -- [1]
							"Божественное перышко", -- [2]
							"Божественное перышко", -- [3]
						},
						["use_showgcd"] = true,
						["useCount"] = true,
						["charges"] = "3",
						["unit"] = "player",
						["spellIds"] = {
							121536, -- [1]
							158624, -- [2]
							121557, -- [3]
						},
						["use_talent"] = true,
						["unevent"] = "auto",
						["spellName"] = 80313,
						["charges_operator"] = "~=",
						["type"] = "unit",
						["duration"] = "1",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["event"] = "Talent Known",
						["countOperator"] = "<=",
						["custom_hide"] = "timed",
						["realSpellName"] = "Раздавить",
						["use_spellName"] = true,
						["count"] = "2",
						["use_remaining"] = false,
						["debuffType"] = "HELPFUL",
						["use_charges"] = false,
						["use_track"] = true,
						["use_inverse"] = true,
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 155835,
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["glowFrequency"] = 0,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 20,
					["glowYOffset"] = 1,
					["glowColor"] = {
						1, -- [1]
						0.64705882352941, -- [2]
						0.31764705882353, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 1,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 30,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "timed",
					["text_text"] = "%s",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "TOPRIGHT",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorXOffset"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_s_time_dynamic_threshold"] = 0,
					["text_text_format_p_time_precision"] = 1,
					["text_fontType"] = "OUTLINE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 3,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_anchorYOffset"] = 3,
					["text_text_format_s_time_precision"] = 1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "TOPRIGHT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_text_format_s_time_format"] = 0,
					["text_fontSize"] = 18,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_time_format"] = 0,
				}, -- [3]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [4]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 20,
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 80313,
				["zoneIds"] = "",
			},
			["alpha"] = 1,
			["width"] = 35,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135994,
			["regionType"] = "icon",
			["desaturate"] = false,
			["cooldownEdge"] = false,
			["config"] = {
			},
			["useTooltip"] = false,
			["xOffset"] = 50.5,
			["semver"] = "3.4.7",
			["cooldownTextDisabled"] = true,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Tooth_and_Claw",
			["zoom"] = 0.3,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["uid"] = "395PjMQIO82",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 38,
							["property"] = "xOffsetRelative",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Druid_PvPT2"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 91.999572753906,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["custom_hide"] = "timed",
						["unevent"] = "auto",
						["use_showOn"] = true,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["names"] = {
						},
						["realSpellName"] = 236696,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["spellName"] = 236696,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["spellName"] = 236696,
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "slideleft",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "slideleft",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 13,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [2]
			},
			["height"] = 30,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["single"] = 5,
					["multi"] = {
						true, -- [1]
						[5] = true,
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 236696,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Afenar_Druid/154",
			["selfPoint"] = "CENTER",
			["anchorFrameFrame"] = "ElvUF_Player",
			["regionType"] = "icon",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = true,
					["glow_type"] = "buttonOverlay",
					["glow_frame_type"] = "FRAMESELECTOR",
				},
			},
			["desaturate"] = false,
			["auto"] = true,
			["zoom"] = 0.3,
			["width"] = 30,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Druid_PvPT2",
			["alpha"] = 1,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 123.99975585938,
			["uid"] = "yJelcM0Wb5G",
			["inverse"] = true,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["parent"] = "Druid_AfenarUI",
		},
		["T35_Druid"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = -58,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"108294", -- [1]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["names"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["duration"] = "1",
						["spellName"] = 102359,
						["event"] = "Cooldown Progress (Spell)",
						["names"] = {
						},
						["realSpellName"] = 102359,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				{
					["trigger"] = {
						["track"] = "auto",
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["duration"] = "1",
						["use_absorbMode"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["realSpellName"] = "重擊",
						["use_spellName"] = true,
						["use_genericShowOn"] = true,
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["spellName"] = 5211,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [3]
				{
					["trigger"] = {
						["track"] = "auto",
						["type"] = "spell",
						["unevent"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["realSpellName"] = 319454,
						["use_spellName"] = true,
						["debuffType"] = "HELPFUL",
						["event"] = "Cooldown Progress (Spell)",
						["duration"] = "1",
						["use_track"] = true,
						["spellName"] = 319454,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 13,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [2]
			},
			["height"] = 30,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 5,
					["multi"] = {
						[5] = true,
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 132469,
				["zoneIds"] = "",
			},
			["auto"] = true,
			["config"] = {
			},
			["authorOptions"] = {
			},
			["parent"] = "Druid_AfenarUI",
			["regionType"] = "icon",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["easeStrength"] = 3,
					["colorFunc"] = "",
					["rotate"] = 0,
					["x"] = 0,
					["use_color"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["desaturate"] = false,
			["xOffset"] = -83,
			["width"] = 30,
			["alpha"] = 0.3,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "T35_Druid",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "01p4ySpeZVX",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["do_custom"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
							{
								["trigger"] = 4,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "desaturate",
						}, -- [1]
						{
							["property"] = "inverse",
						}, -- [2]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [3]
						{
							["value"] = {
								1, -- [1]
								0.77254901960784, -- [2]
								0.50196078431373, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.border_color",
						}, -- [4]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Druid_CP_5"] = {
			["sparkWidth"] = 5,
			["iconSource"] = -1,
			["xOffset"] = 85.5,
			["preferToUpdate"] = false,
			["yOffset"] = 16,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["icon"] = false,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0.81960784313725, -- [2]
				0.6156862745098, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[7] = true,
						[9] = true,
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DEATHKNIGHT"] = true,
						["WARRIOR"] = true,
						["ROGUE"] = true,
						["MAGE"] = true,
						["WARLOCK"] = true,
						["PALADIN"] = true,
						["DRUID"] = true,
						["MONK"] = true,
						["SHAMAN"] = true,
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["use_class"] = true,
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["texture"] = "Solid",
			["zoom"] = 0.3,
			["spark"] = false,
			["tocversion"] = 90002,
			["alpha"] = 1,
			["uid"] = "d8sYOcsW)Yf",
			["sparkOffsetX"] = 0,
			["color"] = {
			},
			["customText"] = "",
			["customTextUpdate"] = "update",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Conditions",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_castType"] = false,
						["auranames"] = {
							"205473", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["powertype"] = 4,
						["names"] = {
						},
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["use_unit"] = true,
						["useName"] = true,
						["use_power"] = true,
						["subeventSuffix"] = "_CAST_START",
						["power_operator"] = ">=",
						["custom_hide"] = "timed",
						["use_requirePowerType"] = false,
						["type"] = "unit",
						["castType"] = "cast",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["ownOnly"] = true,
						["event"] = "Power",
						["duration"] = "1",
						["power"] = "5",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["type"] = "aurabar_bar",
				}, -- [2]
				{
					["api"] = false,
					["model_x"] = 0,
					["model_st_us"] = 40,
					["model_st_rz"] = 0,
					["model_z"] = 5,
					["model_fileId"] = "328500",
					["model_path"] = "spells/arcanepower_state_chest.m2",
					["model_st_ty"] = 0,
					["model_y"] = 0,
					["model_st_rx"] = 270,
					["rotation"] = 180,
					["bar_model_visible"] = false,
					["model_st_tx"] = 0,
					["bar_model_alpha"] = 0,
					["bar_model_clip"] = false,
					["type"] = "subbarmodel",
					["model_st_tz"] = 0,
					["model_st_ry"] = 0,
				}, -- [3]
			},
			["height"] = 12,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["anchorFrameType"] = "SELECTFRAME",
			["anchorFrameFrame"] = "WeakAuras:Feral_Energy",
			["borderBackdrop"] = "None",
			["borderInFront"] = false,
			["authorOptions"] = {
			},
			["icon_side"] = "LEFT",
			["sparkRotationMode"] = "MANUAL",
			["backgroundColor"] = {
				0.42745098039216, -- [1]
				0.15686274509804, -- [2]
				0.023529411764706, -- [3]
				1, -- [4]
			},
			["sparkHeight"] = 15,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",1,0.7,0.3,1,0.8,0.6)",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["auto"] = true,
			["config"] = {
			},
			["semver"] = "3.4.7",
			["sparkHidden"] = "BOTH",
			["id"] = "Druid_CP_5",
			["sparkTexture"] = "Legionfall_BarSpark",
			["frameStrata"] = 2,
			["width"] = 41,
			["sparkColor"] = {
				1, -- [1]
				0.42352941176471, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "inverse",
						}, -- [1]
					},
				}, -- [1]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Druid_AfenarUI",
		},
		["Rake"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["spellId"] = "155722",
						["ownOnly"] = true,
						["custom_hide"] = "timed",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["use_spellId"] = true,
						["name"] = "Глубокая рана",
						["combineMatches"] = "showLowest",
						["fullscan"] = true,
						["useGroup_count"] = false,
						["use_inverse"] = true,
						["subeventPrefix"] = "SPELL",
						["unitExists"] = true,
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["unevent"] = "auto",
						["auraspellids"] = {
							"1079", -- [1]
						},
						["buffShowOn"] = "showAlways",
						["spellName"] = 8042,
						["unit"] = "target",
						["duration"] = "1",
						["realSpellName"] = "Земной шок",
						["use_spellName"] = true,
						["spellIds"] = {
							1079, -- [1]
						},
						["use_unit"] = true,
						["remOperator"] = ">=",
						["matchesShowOn"] = "showAlways",
						["names"] = {
							"Разорвать", -- [1]
						},
						["useExactSpellId"] = true,
					},
					["untrigger"] = {
						["spellName"] = 8042,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 4,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [3]
			},
			["height"] = 40,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 1822,
				["zoneIds"] = "",
			},
			["width"] = 40,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["easeStrength"] = 3,
					["colorFunc"] = "",
					["rotate"] = 0,
					["x"] = 0,
					["use_color"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "fade",
					["alpha"] = 0,
					["alphaType"] = "hide",
					["duration_type"] = "seconds",
					["duration"] = "1",
					["easeStrength"] = 3,
					["use_translate"] = false,
					["use_alpha"] = false,
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["displayIcon"] = 132122,
			["zoom"] = 0.3,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["config"] = {
			},
			["alpha"] = 1,
			["auto"] = true,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Rake",
			["authorOptions"] = {
			},
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = -43,
			["uid"] = "zQo1oeevAjs",
			["inverse"] = false,
			["desaturate"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["op"] = "<",
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["variable"] = "expirationTime",
								["value"] = "7.2",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "buffed",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "hastarget",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = -1,
								["variable"] = "attackabletarget",
								["value"] = 0,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Rip"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["spellId"] = "155722",
						["ownOnly"] = true,
						["custom_hide"] = "timed",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["use_spellId"] = true,
						["name"] = "Глубокая рана",
						["combineMatches"] = "showLowest",
						["fullscan"] = true,
						["useGroup_count"] = false,
						["use_inverse"] = true,
						["subeventPrefix"] = "SPELL",
						["unitExists"] = true,
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["unevent"] = "auto",
						["auraspellids"] = {
							"155722", -- [1]
						},
						["buffShowOn"] = "showAlways",
						["spellName"] = 8042,
						["unit"] = "target",
						["duration"] = "1",
						["realSpellName"] = "Земной шок",
						["use_spellName"] = true,
						["spellIds"] = {
							1079, -- [1]
						},
						["use_unit"] = true,
						["remOperator"] = ">=",
						["matchesShowOn"] = "showAlways",
						["names"] = {
							"Разорвать", -- [1]
						},
						["useExactSpellId"] = true,
					},
					["untrigger"] = {
						["spellName"] = 8042,
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["duration"] = "1",
						["use_absorbMode"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["realSpellName"] = "掃擊",
						["use_spellName"] = true,
						["use_genericShowOn"] = true,
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["spellName"] = 1822,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 4,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [3]
			},
			["height"] = 40,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 1822,
				["zoneIds"] = "",
			},
			["width"] = 40,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["easeStrength"] = 3,
					["colorFunc"] = "",
					["rotate"] = 0,
					["x"] = 0,
					["use_color"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "fade",
					["alpha"] = 0,
					["alphaType"] = "hide",
					["duration_type"] = "seconds",
					["duration"] = "1",
					["easeStrength"] = 3,
					["use_translate"] = false,
					["use_alpha"] = false,
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["displayIcon"] = 132122,
			["zoom"] = 0.3,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["config"] = {
			},
			["alpha"] = 1,
			["auto"] = true,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Rip",
			["authorOptions"] = {
			},
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 0,
			["uid"] = "DfrwZOfuSLZ",
			["inverse"] = false,
			["desaturate"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["op"] = "<",
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["variable"] = "expirationTime",
								["value"] = "4.5",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "buffed",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "hastarget",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = -1,
								["variable"] = "attackabletarget",
								["value"] = 0,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "spellInRange",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.27450980392157, -- [2]
								0.25882352941176, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.border_color",
						}, -- [1]
						{
							["property"] = "sub.2.glow",
						}, -- [2]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [3]
						{
							["value"] = {
								1, -- [1]
								0.27450980392157, -- [2]
								0.25882352941176, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [4]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Starfall"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"191034", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["names"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["duration"] = "1",
						["unevent"] = "auto",
						["spellName"] = 191034,
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["use_exact_spellName"] = false,
						["realSpellName"] = 191034,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["duration"] = "1",
						["debuffType"] = "HELPFUL",
						["spellName"] = 191034,
						["type"] = "unit",
						["use_absorbMode"] = true,
						["subeventSuffix"] = "_CAST_START",
						["talent"] = {
							["single"] = 18,
						},
						["use_talent"] = true,
						["event"] = "Talent Known",
						["use_exact_spellName"] = false,
						["realSpellName"] = "Звездопад",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [3]
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["duration"] = "1",
						["debuffType"] = "HELPFUL",
						["spellName"] = 191034,
						["type"] = "unit",
						["use_absorbMode"] = true,
						["subeventSuffix"] = "_CAST_START",
						["talent"] = {
							["single"] = 16,
						},
						["use_talent"] = true,
						["event"] = "Talent Known",
						["use_exact_spellName"] = false,
						["realSpellName"] = "Звездопад",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["glowFrequency"] = 0,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 20,
					["glowYOffset"] = 1,
					["glowColor"] = {
						1, -- [1]
						0.64705882352941, -- [2]
						0.31764705882353, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 1,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 30,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [3]
			},
			["height"] = 40,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						[15] = true,
						[13] = true,
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 19,
					["multi"] = {
						true, -- [1]
						[13] = true,
						[15] = true,
						[19] = true,
						[16] = true,
						[17] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 191034,
				["zoneIds"] = "",
			},
			["width"] = 40,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["easeStrength"] = 3,
					["colorFunc"] = "",
					["rotate"] = 0,
					["x"] = 0,
					["use_color"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "fade",
					["alpha"] = 0,
					["alphaType"] = "hide",
					["duration_type"] = "seconds",
					["duration"] = "1",
					["easeStrength"] = 3,
					["use_translate"] = false,
					["use_alpha"] = false,
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["displayIcon"] = 236168,
			["zoom"] = 0.3,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["config"] = {
			},
			["alpha"] = 1,
			["auto"] = false,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Starfall",
			["authorOptions"] = {
			},
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 0,
			["uid"] = "HW)Ob79jF91",
			["inverse"] = false,
			["desaturate"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "insufficientResources",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = {
								0.56470588235294, -- [1]
								0.67058823529412, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.73333333333333, -- [2]
								0.48235294117647, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.border_color",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["property"] = "color",
						}, -- [3]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 1,
										["op"] = "<=",
										["variable"] = "expirationTime",
										["value"] = "3",
									}, -- [2]
								},
							}, -- [1]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 0,
									}, -- [1]
									{
										["trigger"] = 1,
										["op"] = "<=",
										["variable"] = "expirationTime",
										["value"] = "2.4",
									}, -- [2]
								},
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Maim"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = -58,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = false,
						["remaining"] = "3",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["use_remaining"] = false,
						["type"] = "spell",
						["use_genericShowOn"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["subeventPrefix"] = "SPELL",
						["event"] = "Cooldown Progress (Spell)",
						["remaining_operator"] = "<=",
						["realSpellName"] = "傷殘術",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["custom_hide"] = "timed",
						["spellName"] = 22570,
						["unevent"] = "auto",
						["use_track"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
						["showOn"] = "showOnCooldown",
						["genericShowOn"] = "showAlways",
						["spellName"] = 22570,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "spell",
						["debuffType"] = "HELPFUL",
						["unevent"] = "auto",
						["use_track"] = true,
						["duration"] = "1",
						["use_requirePowerType"] = true,
						["unit"] = "player",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["event"] = "Spell Known",
						["use_powertype"] = true,
						["spellName"] = 77493,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 13,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [2]
			},
			["height"] = 30,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 5,
					["multi"] = {
						[5] = true,
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 22570,
				["zoneIds"] = "",
			},
			["auto"] = true,
			["config"] = {
			},
			["authorOptions"] = {
			},
			["parent"] = "Druid_AfenarUI",
			["regionType"] = "icon",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["easeStrength"] = 3,
					["colorFunc"] = "",
					["rotate"] = 0,
					["x"] = 0,
					["use_color"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["desaturate"] = false,
			["xOffset"] = -50,
			["width"] = 30,
			["alpha"] = 0.3,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Maim",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "StGEwjpE0)a",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["do_custom"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = -74,
							["property"] = "xOffsetRelative",
						}, -- [1]
						{
							["value"] = 53,
							["property"] = "yOffsetRelative",
						}, -- [2]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Berserk"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["useGroup_count"] = false,
						["duration"] = "1",
						["unit"] = "player",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["buffShowOn"] = "showOnActive",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["auraspellids"] = {
							"102543", -- [1]
							"106951", -- [2]
							"279526", -- [3]
						},
						["auranames"] = {
							"106951", -- [1]
							"102543", -- [2]
							"106951", -- [3]
						},
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unevent"] = "timed",
						["useExactSpellId"] = true,
						["ownOnly"] = true,
						["spellIds"] = {
							106951, -- [1]
							102543, -- [2]
						},
						["names"] = {
							"Берсерк", -- [1]
							"Воплощение: Король джунглей", -- [2]
						},
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["matchesShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["names"] = {
							"Божественное перышко", -- [1]
							"Божественное перышко", -- [2]
							"Божественное перышко", -- [3]
						},
						["use_showgcd"] = true,
						["useCount"] = true,
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["use_genericShowOn"] = true,
						["use_remaining"] = false,
						["spellName"] = 106951,
						["charges_operator"] = "~=",
						["type"] = "spell",
						["count"] = "2",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["countOperator"] = "<=",
						["custom_hide"] = "timed",
						["realSpellName"] = 106951,
						["use_spellName"] = true,
						["spellIds"] = {
							121536, -- [1]
							158624, -- [2]
							121557, -- [3]
						},
						["unevent"] = "auto",
						["charges"] = "3",
						["debuffType"] = "HELPFUL",
						["use_track"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 106951,
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "106951",
						["unevent"] = "timed",
						["duration"] = "0.6",
						["event"] = "Combat Log",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["use_spellId"] = true,
						["use_cloneId"] = false,
						["use_sourceUnit"] = true,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["sourceUnit"] = "player",
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "102543",
						["unevent"] = "timed",
						["duration"] = "0.6",
						["event"] = "Combat Log",
						["subeventPrefix"] = "SPELL",
						["use_spellId"] = true,
						["use_sourceUnit"] = true,
						["sourceUnit"] = "player",
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 14,
						},
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Talent Known",
						["unit"] = "player",
						["use_track"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [5]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["glowFrequency"] = 0,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 20,
					["glowYOffset"] = 1,
					["glowColor"] = {
						1, -- [1]
						0.64705882352941, -- [2]
						0.31764705882353, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 1,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 30,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [3]
			},
			["height"] = 40,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 106951,
				["zoneIds"] = "",
			},
			["alpha"] = 1,
			["width"] = 40,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135994,
			["regionType"] = "icon",
			["desaturate"] = false,
			["cooldownEdge"] = false,
			["config"] = {
			},
			["useTooltip"] = false,
			["xOffset"] = 86,
			["semver"] = "3.4.7",
			["cooldownTextDisabled"] = true,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Berserk",
			["zoom"] = 0.3,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["uid"] = "0s(C1c6DT5w",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "expirationTime",
						["value"] = "60",
					},
					["changes"] = {
						{
							["value"] = 14,
							["property"] = "sub.3.text_fontSize",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["op"] = "<",
										["variable"] = "expirationTime",
										["value"] = "1",
									}, -- [1]
									{
										["trigger"] = 2,
										["variable"] = "onCooldown",
										["value"] = 1,
									}, -- [2]
								},
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 5,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 2.5,
							["property"] = "xOffsetRelative",
						}, -- [1]
						{
							["value"] = 74.5,
							["property"] = "yOffsetRelative",
						}, -- [2]
						{
							["value"] = 35,
							["property"] = "height",
						}, -- [3]
						{
							["value"] = 35,
							["property"] = "width",
						}, -- [4]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "duration",
						["value"] = "2",
					},
					["changes"] = {
						{
							["property"] = "sub.3.text_visible",
						}, -- [1]
					},
				}, -- [5]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "inverse",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = 16,
							["property"] = "sub.3.text_fontSize",
						}, -- [3]
						{
							["value"] = {
								1, -- [1]
								0.77254901960784, -- [2]
								0.50196078431373, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.border_color",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "sub.3.text_visible",
						}, -- [5]
					},
				}, -- [6]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Starsurge"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["use_trackcharge"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["spellName"] = 78674,
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["duration"] = "1",
						["realSpellName"] = 78674,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["use_ignoreSpellKnown"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_track"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["powertype"] = 8,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["auraspellids"] = {
							"48518", -- [1]
						},
						["event"] = "Power",
						["unevent"] = "auto",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["ownOnly"] = true,
						["use_genericShowOn"] = true,
						["useExactSpellId"] = true,
						["unit"] = "player",
						["use_track"] = true,
						["spellName"] = 190984,
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "spell",
						["unevent"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["duration"] = "1",
						["use_track"] = true,
						["spellName"] = 190984,
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "spell",
						["unevent"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["duration"] = "1",
						["use_track"] = true,
						["spellName"] = 194153,
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "2",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "TOPRIGHT",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = 3,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_anchorYOffset"] = 3,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "TOPRIGHT",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fontSize"] = 20,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "1",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "TOPRIGHT",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = 3,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_anchorYOffset"] = 3,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "TOPRIGHT",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fontSize"] = 20,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
				}, -- [3]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "3",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "TOPRIGHT",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = 3,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_anchorYOffset"] = 3,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "TOPRIGHT",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fontSize"] = 20,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
				}, -- [4]
			},
			["height"] = 40,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["single"] = 16,
					["multi"] = {
						[17] = true,
						[16] = true,
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 19,
					["multi"] = {
						[17] = true,
						[18] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 202342,
				["zoneIds"] = "",
			},
			["width"] = 40,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["easeStrength"] = 3,
					["colorFunc"] = "",
					["rotate"] = 0,
					["x"] = 0,
					["use_color"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "fade",
					["alpha"] = 0,
					["alphaType"] = "hide",
					["duration_type"] = "seconds",
					["duration"] = "1",
					["easeStrength"] = 3,
					["use_translate"] = false,
					["use_alpha"] = false,
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["displayIcon"] = 135837,
			["zoom"] = 0.3,
			["actions"] = {
				["start"] = {
					["glow_frame_type"] = "FRAMESELECTOR",
					["glow_frame"] = "WeakAuras:Lunar_Eclipce",
					["glow_action"] = "show",
					["do_sound"] = false,
					["glow_type"] = "buttonOverlay",
					["do_custom"] = false,
					["do_glow"] = true,
				},
				["init"] = {
				},
				["finish"] = {
					["glow_frame_type"] = "FRAMESELECTOR",
					["hide_all_glows"] = true,
					["glow_action"] = "hide",
					["do_sound"] = false,
					["glow_frame"] = "WeakAuras:Lunar_Eclipce",
					["do_glow"] = true,
				},
			},
			["config"] = {
			},
			["alpha"] = 0,
			["auto"] = true,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Starsurge",
			["authorOptions"] = {
			},
			["frameStrata"] = 3,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 86,
			["uid"] = "fFphl6uPcDk",
			["inverse"] = true,
			["desaturate"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "insufficientResources",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["op"] = ">=",
								["variable"] = "power",
								["value"] = "30",
							}, -- [1]
							{
								["trigger"] = 2,
								["op"] = "<",
								["variable"] = "power",
								["value"] = "60",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.text_visible",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["op"] = ">=",
								["variable"] = "power",
								["value"] = "60",
							}, -- [1]
							{
								["trigger"] = 2,
								["op"] = "<",
								["variable"] = "power",
								["value"] = "90",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.text_visible",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">=",
						["variable"] = "power",
						["value"] = "90",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.4.text_visible",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
						{
							["value"] = -172,
							["property"] = "xOffsetRelative",
						}, -- [2]
					},
				}, -- [5]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [6]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Druid_PvPT5"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 61,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["custom_hide"] = "timed",
						["unevent"] = "auto",
						["use_showOn"] = true,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["names"] = {
						},
						["realSpellName"] = 201664,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["spellName"] = 201664,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnCooldown",
						["spellName"] = 201664,
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "slideleft",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "slideleft",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 13,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [2]
			},
			["height"] = 30,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["single"] = 9,
					["multi"] = {
						true, -- [1]
						[9] = true,
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 201664,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Afenar_Druid/154",
			["selfPoint"] = "CENTER",
			["anchorFrameFrame"] = "ElvUF_Player",
			["regionType"] = "icon",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = true,
					["glow_type"] = "buttonOverlay",
					["glow_frame_type"] = "FRAMESELECTOR",
				},
			},
			["desaturate"] = false,
			["auto"] = true,
			["zoom"] = 0.3,
			["width"] = 30,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Druid_PvPT5",
			["alpha"] = 1,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = -124,
			["uid"] = "1XGJUWR(Ql7",
			["inverse"] = true,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["parent"] = "Druid_AfenarUI",
		},
		["MoonBunnie_Feral Bleed Thrash"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    --set spell to display by name\n    local name = \"thrash\"\n    \n    local fs = feralSnapshots\n    local unit = UnitGUID(\"target\")\n    if fs and fs[name] and fs[name][unit] then\n        --round value to nearest %\n        local val = floor(fs[name][\"current\"]/fs[name][unit]*100+0.5)\n        if val > 105 then --Change font to green if above this value\n            return format(\"|cFF00FF00%d\", val)\n        elseif val < 95 then --Change font to red if below this value\n            return format(\"|cFFFF0000%d\", val)\n        else --Default grey font color\n            return format(\"|cFF999999%d\", val)\n        end\n    end\n    --Display the string or value below if no snapshot exists on target\n    return ' '\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_alwaystrue"] = true,
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["unevent"] = "auto",
						["event"] = "Conditions",
						["custom_hide"] = "timed",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["check"] = "update",
						["custom_type"] = "status",
						["unit"] = "player",
						["use_absorbMode"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "BOTTOMRIGHT",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 3,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "BOTTOMRIGHT",
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_anchorYOffset"] = -1,
				}, -- [1]
			},
			["height"] = 40,
			["load"] = {
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["width"] = 40,
			["auto"] = true,
			["authorOptions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
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
			["regionType"] = "icon",
			["displayIcon"] = "INTERFACE\\ICONS\\spell_druid_thrash",
			["desaturate"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["config"] = {
			},
			["alpha"] = 1,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["cooldownTextDisabled"] = false,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "MoonBunnie_Feral Bleed Thrash",
			["zoom"] = 0.3,
			["frameStrata"] = 3,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 43,
			["uid"] = "iOL8g1HuSoh",
			["inverse"] = false,
			["desc"] = "r20 by MoonBunnie for 9.0.0.",
			["conditions"] = {
			},
			["cooldown"] = false,
			["parent"] = "Druid_AfenarUI",
		},
		["Wrath"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["use_trackcharge"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["spellName"] = 190984,
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["duration"] = "1",
						["realSpellName"] = 190984,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["use_ignoreSpellKnown"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_track"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["debuffType"] = "HELPFUL",
						["auraspellids"] = {
							"48518", -- [1]
						},
						["duration"] = "1",
						["ownOnly"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["use_genericShowOn"] = true,
						["unevent"] = "auto",
						["event"] = "Spell Activation Overlay",
						["useExactSpellId"] = true,
						["use_track"] = true,
						["spellName"] = 190984,
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "spell",
						["debuffType"] = "HELPFUL",
						["auraspellids"] = {
							"48518", -- [1]
						},
						["duration"] = "1",
						["ownOnly"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["use_genericShowOn"] = true,
						["unevent"] = "auto",
						["event"] = "Health",
						["useExactSpellId"] = true,
						["use_track"] = true,
						["spellName"] = 190984,
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "TOPRIGHT",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = 3,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_anchorYOffset"] = 3,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "TOPRIGHT",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fontSize"] = 20,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["single"] = 16,
					["multi"] = {
						[17] = true,
						[16] = true,
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 19,
					["multi"] = {
						[17] = true,
						[18] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 202342,
				["zoneIds"] = "",
			},
			["width"] = 40,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["easeStrength"] = 3,
					["colorFunc"] = "",
					["rotate"] = 0,
					["x"] = 0,
					["use_color"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "fade",
					["alpha"] = 0,
					["alphaType"] = "hide",
					["duration_type"] = "seconds",
					["duration"] = "1",
					["easeStrength"] = 3,
					["use_translate"] = false,
					["use_alpha"] = false,
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["displayIcon"] = 135837,
			["zoom"] = 0.3,
			["actions"] = {
				["start"] = {
					["glow_frame_type"] = "FRAMESELECTOR",
					["glow_frame"] = "WeakAuras:Lunar_Eclipce",
					["glow_action"] = "show",
					["do_sound"] = false,
					["glow_type"] = "buttonOverlay",
					["do_custom"] = false,
					["do_glow"] = true,
				},
				["init"] = {
				},
				["finish"] = {
					["glow_frame_type"] = "FRAMESELECTOR",
					["hide_all_glows"] = true,
					["glow_action"] = "hide",
					["do_sound"] = false,
					["glow_frame"] = "WeakAuras:Lunar_Eclipce",
					["do_glow"] = true,
				},
			},
			["config"] = {
			},
			["alpha"] = 1,
			["auto"] = true,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Wrath",
			["authorOptions"] = {
			},
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 86,
			["uid"] = "j)G(KGcGa(1",
			["inverse"] = true,
			["desaturate"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "<",
								["variable"] = "spellCount",
								["value"] = "1",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Wrath_2"] = {
			["sparkWidth"] = 10,
			["iconSource"] = -1,
			["xOffset"] = 106,
			["preferToUpdate"] = false,
			["adjustedMin"] = "0",
			["yOffset"] = 16.12353515625,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",1,0.7,0.3,1,0.8,0.6)",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["matchesShowOn"] = "showAlways",
						["auranames"] = {
							"48517", -- [1]
						},
						["spellCount_operator"] = ">=",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["unit"] = "player",
						["powertype"] = 4,
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["type"] = "spell",
						["spellName"] = 5176,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["charges_operator"] = "==",
						["charges"] = "1",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["use_spellCount"] = false,
						["use_charges"] = false,
						["event"] = "Cooldown Progress (Spell)",
						["use_power"] = false,
						["realSpellName"] = "憤怒",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["spellCount"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["spellCount"] = "1",
						["spellId"] = 190984,
						["auranames"] = {
							"48517", -- [1]
						},
						["use_genericShowOn"] = true,
						["spellName"] = 5176,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cast",
						["use_spellId"] = true,
						["use_track"] = true,
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["powertype"] = 4,
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["charges_operator"] = "==",
						["useName"] = true,
						["names"] = {
						},
						["unevent"] = "auto",
						["use_spellCount"] = false,
						["charges"] = "1",
						["spellCount_operator"] = ">=",
						["duration"] = "1",
						["realSpellName"] = "Гнев",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["type"] = "unit",
						["unit"] = "player",
						["use_power"] = false,
						["track"] = "auto",
						["matchesShowOn"] = "showAlways",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t) return t[1] and t[2] and (t[4] or t[5]) end",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 45,
			["selfPoint"] = "RIGHT",
			["barColor"] = {
				1, -- [1]
				0.81960784313725, -- [2]
				0.6156862745098, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetX"] = 0,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["type"] = "aurabar_bar",
				}, -- [2]
				{
					["api"] = false,
					["model_x"] = 0,
					["model_st_us"] = 40,
					["model_st_rz"] = 0,
					["model_z"] = 3,
					["model_fileId"] = "328500",
					["model_path"] = "spells/arcanepower_state_chest.m2",
					["model_st_ty"] = 0,
					["model_y"] = -0.5,
					["model_st_rx"] = 270,
					["rotation"] = 0,
					["bar_model_visible"] = true,
					["model_st_tx"] = 0,
					["bar_model_alpha"] = 1,
					["bar_model_clip"] = true,
					["type"] = "subbarmodel",
					["model_st_tz"] = 0,
					["model_st_ry"] = 0,
				}, -- [3]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "ACShine",
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						0.97647058823529, -- [2]
						0.98823529411765, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 0.7,
					["glowLength"] = 10,
					["glow_anchor"] = "bar",
					["glow"] = false,
					["glowLines"] = 7,
					["glowBorder"] = false,
				}, -- [4]
			},
			["height"] = 10,
			["width"] = 53,
			["load"] = {
				["use_petbattle"] = false,
				["talent"] = {
					["single"] = 7,
					["multi"] = {
						[7] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
						true, -- [4]
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["pvptalent"] = {
				},
				["zoneIds"] = "",
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["spark"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["colorR"] = 1,
					["scalex"] = 1,
					["alphaType"] = "custom",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "",
					["use_alpha"] = false,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0.4,
					["y"] = 0,
					["x"] = 0,
					["colorA"] = 1,
					["duration"] = "0.5",
					["rotate"] = 0,
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["backgroundColor"] = {
				0.13333333333333, -- [1]
				0.17647058823529, -- [2]
				0.30196078431373, -- [3]
				1, -- [4]
			},
			["sparkHidden"] = "NEVER",
			["useAdjustededMin"] = false,
			["uid"] = "by4qKRfvtJe",
			["anchorFrameFrame"] = "WeakAuras:Astral_Power",
			["regionType"] = "aurabar",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["icon_side"] = "RIGHT",
			["alpha"] = 1,
			["sparkHeight"] = 30,
			["texture"] = "Solid",
			["semver"] = "3.4.7",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Wrath_2",
			["zoom"] = 0,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SELECTFRAME",
			["icon"] = false,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = true,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["op"] = "<",
						["checks"] = {
							{
								["value"] = 1,
								["variable"] = "show",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "==",
								["variable"] = "spellCount",
								["value"] = "2",
							}, -- [2]
						},
						["value"] = "2",
						["variable"] = "spellCount",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["property"] = "inverse",
						}, -- [1]
						{
							["value"] = false,
							["property"] = "sub.3.bar_model_visible",
						}, -- [2]
						{
							["property"] = "sub.3.bar_model_alpha",
						}, -- [3]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "==",
								["variable"] = "spellCount",
								["value"] = "2",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.4.glow",
						}, -- [1]
					},
				}, -- [2]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Druid_AfenarUI",
		},
		["Sunfire"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["useGroup_count"] = false,
						["use_inverse"] = true,
						["names"] = {
							"Солнечный огонь", -- [1]
						},
						["unitExists"] = true,
						["use_tooltip"] = false,
						["use_unit"] = true,
						["unit"] = "target",
						["subeventPrefix"] = "SPELL",
						["matchesShowOn"] = "showAlways",
						["type"] = "aura2",
						["debuffType"] = "HARMFUL",
						["unevent"] = "auto",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["duration"] = "1",
						["event"] = "Cooldown Progress (Spell)",
						["buffShowOn"] = "showAlways",
						["realSpellName"] = "Земной шок",
						["use_spellName"] = true,
						["spellIds"] = {
							164815, -- [1]
						},
						["spellName"] = 8042,
						["remOperator"] = ">=",
						["combineMatches"] = "showLowest",
						["ownOnly"] = true,
						["auranames"] = {
							"164815", -- [1]
						},
					},
					["untrigger"] = {
						["spellName"] = 8042,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["duration"] = "1",
						["use_absorbMode"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["realSpellName"] = 93402,
						["use_spellName"] = true,
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["use_track"] = true,
						["spellName"] = 93402,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 4,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_visible"] = true,
					["text_shadowXOffset"] = 0,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_time_format"] = 0,
				}, -- [3]
			},
			["height"] = 40,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 93402,
				["zoneIds"] = "",
			},
			["width"] = 40,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["easeStrength"] = 3,
					["colorFunc"] = "",
					["rotate"] = 0,
					["x"] = 0,
					["use_color"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "fade",
					["alpha"] = 0,
					["alphaType"] = "hide",
					["duration_type"] = "seconds",
					["duration"] = "1",
					["easeStrength"] = 3,
					["use_translate"] = false,
					["use_alpha"] = false,
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["displayIcon"] = "Interface\\Icons\\Ability_Mage_FireStarter",
			["zoom"] = 0.3,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["config"] = {
			},
			["alpha"] = 1,
			["auto"] = false,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Sunfire",
			["authorOptions"] = {
			},
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 43,
			["uid"] = "qYgLkmM5xeq",
			["inverse"] = false,
			["desaturate"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["op"] = "<",
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<=",
								["variable"] = "expirationTime",
								["value"] = "5.4",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "buffed",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "attackabletarget",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = -1,
								["variable"] = "hastarget",
								["value"] = 0,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "spellInRange",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["property"] = "sub.2.glow",
						}, -- [2]
						{
							["value"] = {
								1, -- [1]
								0.40392156862745, -- [2]
								0.34117647058824, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [3]
						{
							["value"] = {
								1, -- [1]
								0.38039215686275, -- [2]
								0.27450980392157, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.border_color",
						}, -- [4]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Celestial_Alignment"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 74.5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"194223", -- [1]
							"102560", -- [2]
						},
						["ownOnly"] = true,
						["unit"] = "player",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
							"Парад планет", -- [1]
							"Воплощение: избранный Элуны", -- [2]
						},
						["useGroup_count"] = false,
						["spellIds"] = {
							194223, -- [1]
							102560, -- [2]
						},
						["matchesShowOn"] = "showOnActive",
						["type"] = "aura2",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["names"] = {
							"Божественное перышко", -- [1]
							"Божественное перышко", -- [2]
							"Божественное перышко", -- [3]
						},
						["use_showgcd"] = true,
						["useCount"] = true,
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["use_genericShowOn"] = true,
						["use_remaining"] = false,
						["spellName"] = 194223,
						["charges_operator"] = "~=",
						["type"] = "spell",
						["count"] = "2",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["countOperator"] = "<=",
						["custom_hide"] = "timed",
						["realSpellName"] = 194223,
						["use_spellName"] = true,
						["spellIds"] = {
							121536, -- [1]
							158624, -- [2]
							121557, -- [3]
						},
						["unevent"] = "auto",
						["charges"] = "3",
						["debuffType"] = "HELPFUL",
						["use_track"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 194223,
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "102560",
						["unevent"] = "timed",
						["duration"] = "0.6",
						["event"] = "Combat Log",
						["use_unit"] = true,
						["use_spellId"] = true,
						["use_absorbMode"] = true,
						["use_sourceUnit"] = true,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["sourceUnit"] = "player",
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "194223",
						["unevent"] = "timed",
						["duration"] = "0.6",
						["event"] = "Combat Log",
						["use_unit"] = true,
						["use_spellId"] = true,
						["use_absorbMode"] = true,
						["use_sourceUnit"] = true,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["sourceUnit"] = "player",
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["glowFrequency"] = 0,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 20,
					["glowYOffset"] = 1,
					["glowColor"] = {
						1, -- [1]
						0.64705882352941, -- [2]
						0.31764705882353, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 1,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 30,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = false,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [3]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 194223,
				["zoneIds"] = "",
			},
			["alpha"] = 1,
			["width"] = 35,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135994,
			["regionType"] = "icon",
			["desaturate"] = false,
			["cooldownEdge"] = false,
			["config"] = {
			},
			["useTooltip"] = false,
			["xOffset"] = 88.5,
			["semver"] = "3.4.7",
			["cooldownTextDisabled"] = true,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Celestial_Alignment",
			["zoom"] = 0.3,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["uid"] = "ysUwtsTJ)xX",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "expirationTime",
						["value"] = "60",
					},
					["changes"] = {
						{
							["value"] = 14,
							["property"] = "sub.3.text_fontSize",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -2,
								["op"] = "<",
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["op"] = "<",
										["variable"] = "expirationTime",
										["value"] = "1",
									}, -- [1]
									{
										["trigger"] = 2,
										["variable"] = "onCooldown",
										["value"] = 1,
									}, -- [2]
								},
							}, -- [1]
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
								["checks"] = {
									{
										["trigger"] = 7,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 8,
										["variable"] = "show",
										["value"] = 1,
									}, -- [2]
								},
							}, -- [2]
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 1,
							}, -- [3]
						},
					},
					["linked"] = false,
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "duration",
						["value"] = "2",
					},
					["changes"] = {
						{
							["property"] = "sub.3.text_visible",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "inverse",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = 16,
							["property"] = "sub.3.text_fontSize",
						}, -- [3]
						{
							["value"] = {
								1, -- [1]
								0.77254901960784, -- [2]
								0.50196078431373, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.border_color",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "sub.3.text_visible",
						}, -- [5]
					},
				}, -- [5]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Druid_CP_3"] = {
			["sparkWidth"] = 5,
			["iconSource"] = -1,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 16,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["icon"] = false,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0.81960784313725, -- [2]
				0.6156862745098, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[7] = true,
						[9] = true,
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DEATHKNIGHT"] = true,
						["WARRIOR"] = true,
						["ROGUE"] = true,
						["MAGE"] = true,
						["WARLOCK"] = true,
						["PALADIN"] = true,
						["DRUID"] = true,
						["MONK"] = true,
						["SHAMAN"] = true,
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["use_class"] = true,
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["texture"] = "Solid",
			["zoom"] = 0.3,
			["spark"] = false,
			["tocversion"] = 90002,
			["alpha"] = 1,
			["uid"] = "u6p8I49L5ly",
			["sparkOffsetX"] = 0,
			["color"] = {
			},
			["customText"] = "",
			["customTextUpdate"] = "update",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Conditions",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_castType"] = false,
						["auranames"] = {
							"205473", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["powertype"] = 4,
						["names"] = {
						},
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["use_unit"] = true,
						["useName"] = true,
						["use_power"] = true,
						["subeventSuffix"] = "_CAST_START",
						["power_operator"] = ">=",
						["custom_hide"] = "timed",
						["use_requirePowerType"] = false,
						["type"] = "unit",
						["castType"] = "cast",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["ownOnly"] = true,
						["event"] = "Power",
						["duration"] = "1",
						["power"] = "3",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["type"] = "aurabar_bar",
				}, -- [2]
				{
					["api"] = false,
					["model_x"] = 0,
					["model_st_us"] = 40,
					["model_st_rz"] = 0,
					["model_z"] = 5,
					["model_fileId"] = "328500",
					["model_path"] = "spells/arcanepower_state_chest.m2",
					["model_st_ty"] = 0,
					["model_y"] = 0,
					["model_st_rx"] = 270,
					["rotation"] = 180,
					["bar_model_visible"] = false,
					["model_st_tx"] = 0,
					["bar_model_alpha"] = 0,
					["bar_model_clip"] = false,
					["type"] = "subbarmodel",
					["model_st_tz"] = 0,
					["model_st_ry"] = 0,
				}, -- [3]
			},
			["height"] = 12,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["anchorFrameType"] = "SELECTFRAME",
			["anchorFrameFrame"] = "WeakAuras:Feral_Energy",
			["borderBackdrop"] = "None",
			["borderInFront"] = false,
			["authorOptions"] = {
			},
			["icon_side"] = "LEFT",
			["sparkRotationMode"] = "MANUAL",
			["backgroundColor"] = {
				0.42745098039216, -- [1]
				0.15686274509804, -- [2]
				0.023529411764706, -- [3]
				1, -- [4]
			},
			["sparkHeight"] = 15,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",1,0.7,0.3,1,0.8,0.6)",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["auto"] = true,
			["config"] = {
			},
			["semver"] = "3.4.7",
			["sparkHidden"] = "BOTH",
			["id"] = "Druid_CP_3",
			["sparkTexture"] = "Legionfall_BarSpark",
			["frameStrata"] = 2,
			["width"] = 42,
			["sparkColor"] = {
				1, -- [1]
				0.42352941176471, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "inverse",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "sub.3.bar_model_alpha",
						}, -- [2]
					},
				}, -- [1]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Druid_AfenarUI",
		},
		["MoonBunnie_Feral Bleed Rip"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    --set spell to display by name\n    local name = \"rip\"\n    \n    local fs = feralSnapshots\n    local unit = UnitGUID(\"target\")\n    if fs and fs[name] and fs[name][unit] then\n        --round value to nearest %\n        local val = floor(fs[name][\"current5CP\"]/fs[name][unit]*100+0.5)\n        if val > 105 then --Change font to green if above this value\n            return format(\"|cFF00FF00%d\", val)\n        elseif val < 95 then --Change font to red if below this value\n            return format(\"|cFFFF0000%d\", val)\n        else --Default grey font color\n            return format(\"|cFF999999%d\", val)\n        end\n    end\n    --Display the string or value below if no snapshot exists on target\n    return ' '\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_alwaystrue"] = true,
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["unevent"] = "auto",
						["event"] = "Conditions",
						["custom_hide"] = "timed",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["check"] = "update",
						["custom_type"] = "status",
						["unit"] = "player",
						["use_absorbMode"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "BOTTOMRIGHT",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 3,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "BOTTOMRIGHT",
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_anchorYOffset"] = -1,
				}, -- [1]
			},
			["height"] = 40,
			["load"] = {
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["width"] = 40,
			["auto"] = true,
			["authorOptions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
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
			["regionType"] = "icon",
			["displayIcon"] = "Interface\\Icons\\Ability_GhoulFrenzy",
			["desaturate"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["config"] = {
			},
			["alpha"] = 1,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["cooldownTextDisabled"] = false,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "MoonBunnie_Feral Bleed Rip",
			["zoom"] = 0.3,
			["frameStrata"] = 3,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = -43,
			["uid"] = "0OU3dwyZZfj",
			["inverse"] = false,
			["desc"] = "r20 by MoonBunnie for 9.0.0.",
			["conditions"] = {
			},
			["cooldown"] = false,
			["parent"] = "Druid_AfenarUI",
		},
		["Starlord"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 74.5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["useGroup_count"] = false,
						["use_inverse"] = true,
						["names"] = {
							"Звездный лорд", -- [1]
						},
						["use_unit"] = true,
						["use_tooltip"] = false,
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["ownOnly"] = true,
						["matchesShowOn"] = "showOnActive",
						["custom_hide"] = "timed",
						["buffShowOn"] = "showAlways",
						["unevent"] = "auto",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["duration"] = "1",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 8042,
						["realSpellName"] = "Земной шок",
						["use_spellName"] = true,
						["spellIds"] = {
							279709, -- [1]
						},
						["debuffType"] = "HELPFUL",
						["remOperator"] = ">=",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["auranames"] = {
							"279709", -- [1]
						},
					},
					["untrigger"] = {
						["spellName"] = 8042,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [2]
				{
					["text_text_format_s_time_precision"] = 1,
					["text_text_format_s_format"] = "timed",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "TOPRIGHT",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 3,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_fontType"] = "OUTLINE",
					["text_shadowYOffset"] = 0,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "TOPRIGHT",
					["text_shadowXOffset"] = 0,
					["text_text_format_s_time_format"] = 0,
					["text_fontSize"] = 18,
					["text_text_format_s_time_dynamic_threshold"] = 0,
					["text_anchorYOffset"] = 3,
				}, -- [3]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["single"] = 19,
					["multi"] = {
						[16] = true,
						[17] = true,
						[19] = true,
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 16,
					["multi"] = {
						[18] = true,
						[16] = true,
						[17] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 202345,
				["zoneIds"] = "",
			},
			["width"] = 35,
			["auto"] = false,
			["authorOptions"] = {
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["displayIcon"] = 462651,
			["desaturate"] = false,
			["xOffset"] = 0.5,
			["config"] = {
			},
			["alpha"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["easeStrength"] = 3,
					["colorFunc"] = "",
					["rotate"] = 0,
					["x"] = 0,
					["use_color"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "fade",
					["alpha"] = 0,
					["alphaType"] = "hide",
					["duration_type"] = "seconds",
					["duration"] = "1",
					["easeStrength"] = 3,
					["use_translate"] = false,
					["use_alpha"] = false,
				},
			},
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Starlord",
			["zoom"] = 0.3,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["uid"] = "rjAiI3HU(kl",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Regrowth"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = -91,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"8936", -- [1]
						},
						["ownOnly"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
							"Shooting Stars", -- [1]
						},
						["custom_hide"] = "timed",
						["matchesShowOn"] = "showOnActive",
						["use_charges"] = false,
						["use_unit"] = true,
						["use_genericShowOn"] = true,
						["debuffType"] = "HELPFUL",
						["charges_operator"] = ">=",
						["type"] = "aura2",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["spellName"] = 18562,
						["event"] = "Cooldown Progress (Spell)",
						["useName"] = true,
						["realSpellName"] = "Swiftmend",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["charges"] = "1",
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["showOn"] = "showOnCooldown",
						["genericShowOn"] = "showOnCooldown",
						["spellName"] = 18562,
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 13,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [2]
			},
			["height"] = 30,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["SHAMAN"] = true,
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 9,
					["multi"] = {
						[9] = true,
					},
				},
				["spec"] = {
					["single"] = 4,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 774,
				["zoneIds"] = "",
			},
			["width"] = 30,
			["auto"] = true,
			["authorOptions"] = {
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["displayIcon"] = "Interface\\Icons\\inv_relics_idolofrejuvenation",
			["desaturate"] = false,
			["xOffset"] = 16,
			["config"] = {
			},
			["alpha"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration"] = "2",
					["alphaType"] = "alphaPulse",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      return start + (((math.sin(angle) + 1)/2) * delta)\n    end\n  ",
					["use_alpha"] = true,
					["type"] = "none",
					["easeType"] = "none",
					["x"] = 0,
					["use_color"] = false,
					["alpha"] = 0.6,
					["scalex"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["easeStrength"] = 3,
					["colorA"] = 1,
					["colorFunc"] = "",
					["rotate"] = 0,
					["duration_type"] = "seconds",
					["scaley"] = 1,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Regrowth",
			["zoom"] = 0.3,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["uid"] = "IVl5jAi(RC9",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Ravenous_Frenzy"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 74.5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"323546", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["names"] = {
						},
						["ownOnly"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["auranames"] = {
							"323673", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
						["matchesShowOn"] = "showOnActive",
						["useName"] = true,
						["unit"] = "target",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["duration"] = "1",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 323546,
						["realSpellName"] = 323546,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["type"] = "spell",
						["unevent"] = "auto",
						["use_track"] = true,
						["ownOnly"] = true,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
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
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "timed",
					["text_text"] = "%s",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "TOPRIGHT",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorXOffset"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_s_time_dynamic_threshold"] = 0,
					["text_text_format_p_time_precision"] = 1,
					["text_fontType"] = "OUTLINE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 3,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_anchorYOffset"] = 2,
					["text_text_format_s_time_precision"] = 1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "TOPRIGHT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_text_format_s_time_format"] = 0,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
				}, -- [3]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 3,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [4]
			},
			["height"] = 35,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_class_and_spec"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["level"] = "75",
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
					["single"] = 104,
					["multi"] = {
						[103] = true,
						[104] = true,
						[102] = true,
					},
				},
				["talent"] = {
					["single"] = 14,
					["multi"] = {
						[14] = true,
						[16] = true,
						[17] = true,
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PRIEST"] = true,
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["level_operator"] = ">=",
				["use_petbattle"] = false,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["spellknown"] = 323673,
				["zoneIds"] = "",
			},
			["desaturate"] = false,
			["config"] = {
			},
			["authorOptions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["xOffset"] = -88.5,
			["displayIcon"] = 136235,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["cooldownTextDisabled"] = true,
			["width"] = 35,
			["frameStrata"] = 3,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Ravenous_Frenzy",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "3.4.7",
			["uid"] = ")NfwBeOedOr",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "inverse",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = {
								1, -- [1]
								0.77254901960784, -- [2]
								0.50196078431373, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.border_color",
						}, -- [3]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["op"] = "<",
								["variable"] = "expirationTime",
								["value"] = "1",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "duration",
						["value"] = "2",
					},
					["changes"] = {
						{
							["property"] = "sub.4.text_visible",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["parent"] = "Druid_AfenarUI",
		},
		["Shadowlands Pulsar Legendary"] = {
			["iconSource"] = -1,
			["xOffset"] = 50.5,
			["preferToUpdate"] = false,
			["customText"] = "function()\n    local pulsarProgress\n    for i=1,40 do\n        local n,_,_,_,_,_,_,_,_,id,_,_,_,_,_,progress = UnitBuff(\"player\", i)\n        if(id == 338825) then\n            pulsarProgress = progress\n        end\n    end\n    return pulsarProgress\nend",
			["yOffset"] = 112.5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"", -- [1]
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["useExactSpellId"] = true,
						["events"] = "UNIT_POWER_UPDATE",
						["spellIds"] = {
						},
						["event"] = "Health",
						["names"] = {
						},
						["customDuration"] = "function()\n    local _,_,_,_,_,_,_,_,_,_,_,_,_,_,_,progress = WA_GetUnitBuff(\"player\", 338825)\n    return progress, aura_env.AP_TO_ACTIVATE, true\nend",
						["auraspellids"] = {
							"338825", -- [1]
						},
						["custom"] = "function()\n    local n = WA_GetUnitBuff(\"player\", 338825)\n    return (n ~= nil)\nend",
						["custom_type"] = "status",
						["check"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["useName"] = false,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = false,
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
			["desaturate"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "ACShine",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 0.8,
					["glow"] = false,
					["glowThickness"] = 2.9,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_visible"] = true,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fontSize"] = 14,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
				}, -- [3]
			},
			["height"] = 35,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["class_and_spec"] = {
					["single"] = 102,
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class_and_spec"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["zoom"] = 0.3,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.AP_TO_ACTIVATE = 300",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["displayIcon"] = "135730",
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["width"] = 35,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Shadowlands Pulsar Legendary",
			["alpha"] = 1,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["cooldownEdge"] = false,
			["uid"] = "EsEHbRuPO4S",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">=",
						["variable"] = "value",
						["value"] = "250",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["parent"] = "Druid_AfenarUI",
		},
		["Missing_Spirits"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 74.5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["useExactSpellId"] = true,
						["unit"] = "player",
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["names"] = {
						},
						["auranames"] = {
							"326967", -- [1]
						},
						["useName"] = false,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"326967", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["useExactSpellId"] = true,
						["unit"] = "player",
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["names"] = {
						},
						["auranames"] = {
							"338041", -- [1]
						},
						["useName"] = false,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"338041", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["auranames"] = {
							"338041", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["ownOnly"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["names"] = {
						},
						["useName"] = true,
						["use_absorbMode"] = true,
						["subeventSuffix"] = "_CAST_START",
						["matchesShowOn"] = "showAlways",
						["duration"] = "1",
						["event"] = "Cooldown Progress (Spell)",
						["use_exact_spellName"] = true,
						["realSpellName"] = 326434,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["spellName"] = 326434,
						["unevent"] = "auto",
						["type"] = "spell",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
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
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 14,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [3]
			},
			["height"] = 35,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_class_and_spec"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["level"] = "60",
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
					["single"] = 258,
					["multi"] = {
						[103] = true,
						[104] = true,
						[102] = true,
					},
				},
				["talent"] = {
					["single"] = 14,
					["multi"] = {
						[14] = true,
						[16] = true,
						[17] = true,
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PRIEST"] = true,
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["level_operator"] = "==",
				["use_petbattle"] = false,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["spellknown"] = 326434,
				["zoneIds"] = "",
			},
			["desaturate"] = false,
			["config"] = {
			},
			["authorOptions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["xOffset"] = -88.5,
			["displayIcon"] = 3565444,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["cooldownTextDisabled"] = true,
			["width"] = 35,
			["frameStrata"] = 2,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Missing_Spirits",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "3.4.7",
			["uid"] = "nU3WNpvbSOG",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 0,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "buffed",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "<",
								["variable"] = "expirationTime",
								["value"] = "60",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 38,
							["property"] = "yOffsetRelative",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["op"] = "<",
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "buffed",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "<",
								["variable"] = "expirationTime",
								["value"] = "600",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 38,
							["property"] = "yOffsetRelative",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["parent"] = "Druid_AfenarUI",
		},
		["Druid_CP_2"] = {
			["sparkWidth"] = 5,
			["iconSource"] = -1,
			["xOffset"] = -43,
			["preferToUpdate"] = false,
			["yOffset"] = 16,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["icon"] = false,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0.81960784313725, -- [2]
				0.6156862745098, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[7] = true,
						[9] = true,
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DEATHKNIGHT"] = true,
						["WARRIOR"] = true,
						["ROGUE"] = true,
						["MAGE"] = true,
						["WARLOCK"] = true,
						["PALADIN"] = true,
						["DRUID"] = true,
						["MONK"] = true,
						["SHAMAN"] = true,
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["use_class"] = true,
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["texture"] = "Solid",
			["zoom"] = 0.3,
			["spark"] = false,
			["tocversion"] = 90002,
			["alpha"] = 1,
			["uid"] = "I6WRENXQOdA",
			["sparkOffsetX"] = 0,
			["color"] = {
			},
			["customText"] = "",
			["customTextUpdate"] = "update",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Conditions",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_castType"] = false,
						["auranames"] = {
							"205473", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["powertype"] = 4,
						["names"] = {
						},
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["use_unit"] = true,
						["useName"] = true,
						["use_power"] = true,
						["subeventSuffix"] = "_CAST_START",
						["power_operator"] = ">=",
						["custom_hide"] = "timed",
						["use_requirePowerType"] = false,
						["type"] = "unit",
						["castType"] = "cast",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["ownOnly"] = true,
						["event"] = "Power",
						["duration"] = "1",
						["power"] = "2",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["type"] = "aurabar_bar",
				}, -- [2]
				{
					["api"] = false,
					["model_x"] = 0,
					["model_st_us"] = 40,
					["model_st_rz"] = 0,
					["model_z"] = 5,
					["model_fileId"] = "328500",
					["model_path"] = "spells/arcanepower_state_chest.m2",
					["model_st_ty"] = 0,
					["model_y"] = 0,
					["model_st_rx"] = 270,
					["rotation"] = 180,
					["bar_model_visible"] = false,
					["model_st_tx"] = 0,
					["bar_model_alpha"] = 0,
					["bar_model_clip"] = false,
					["type"] = "subbarmodel",
					["model_st_tz"] = 0,
					["model_st_ry"] = 0,
				}, -- [3]
			},
			["height"] = 12,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["anchorFrameType"] = "SELECTFRAME",
			["anchorFrameFrame"] = "WeakAuras:Feral_Energy",
			["borderBackdrop"] = "None",
			["borderInFront"] = false,
			["authorOptions"] = {
			},
			["icon_side"] = "LEFT",
			["sparkRotationMode"] = "MANUAL",
			["backgroundColor"] = {
				0.42745098039216, -- [1]
				0.15686274509804, -- [2]
				0.023529411764706, -- [3]
				1, -- [4]
			},
			["sparkHeight"] = 15,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",1,0.7,0.3,1,0.8,0.6)",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["auto"] = true,
			["config"] = {
			},
			["semver"] = "3.4.7",
			["sparkHidden"] = "BOTH",
			["id"] = "Druid_CP_2",
			["sparkTexture"] = "Legionfall_BarSpark",
			["frameStrata"] = 2,
			["width"] = 42,
			["sparkColor"] = {
				1, -- [1]
				0.42352941176471, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "inverse",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "sub.3.bar_model_alpha",
						}, -- [2]
					},
				}, -- [1]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Druid_AfenarUI",
		},
		["Thrash_Stacks_Guardian"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "3",
						["useGroup_count"] = false,
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Взбучка", -- [1]
						},
						["use_tooltip"] = false,
						["unit"] = "target",
						["use_unit"] = true,
						["ownOnly"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["custom_hide"] = "timed",
						["unevent"] = "auto",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["duration"] = "1",
						["event"] = "Action Usable",
						["buffShowOn"] = "showOnActive",
						["realSpellName"] = "Взбучка",
						["use_spellName"] = true,
						["spellIds"] = {
							192090, -- [1]
						},
						["spellName"] = 77758,
						["remOperator"] = ">=",
						["combineMatches"] = "showLowest",
						["subeventPrefix"] = "SPELL",
						["auranames"] = {
							"192090", -- [1]
						},
					},
					["untrigger"] = {
						["spellName"] = 77758,
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = false,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "TOPRIGHT",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 3,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "TOPRIGHT",
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_anchorYOffset"] = 3,
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["width"] = 40,
			["auto"] = false,
			["authorOptions"] = {
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["displayIcon"] = "Interface\\Icons\\spell_druid_thrash",
			["desaturate"] = false,
			["xOffset"] = -43,
			["config"] = {
			},
			["alpha"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["cooldownTextDisabled"] = false,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Thrash_Stacks_Guardian",
			["zoom"] = 0.3,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["uid"] = "0mQo85ZDEYX",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = false,
			["iconInset"] = 0,
		},
		["Rejuvination"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = -91,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"774", -- [1]
						},
						["ownOnly"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
							"Shooting Stars", -- [1]
						},
						["custom_hide"] = "timed",
						["matchesShowOn"] = "showOnActive",
						["use_charges"] = false,
						["use_unit"] = true,
						["use_genericShowOn"] = true,
						["debuffType"] = "HELPFUL",
						["charges_operator"] = ">=",
						["type"] = "aura2",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["spellName"] = 18562,
						["event"] = "Cooldown Progress (Spell)",
						["useName"] = true,
						["realSpellName"] = "Swiftmend",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["charges"] = "1",
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["showOn"] = "showOnCooldown",
						["genericShowOn"] = "showOnCooldown",
						["spellName"] = 18562,
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 13,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [2]
			},
			["height"] = 30,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["SHAMAN"] = true,
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 9,
					["multi"] = {
						[9] = true,
					},
				},
				["spec"] = {
					["single"] = 4,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 774,
				["zoneIds"] = "",
			},
			["width"] = 30,
			["auto"] = true,
			["authorOptions"] = {
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["displayIcon"] = "Interface\\Icons\\inv_relics_idolofrejuvenation",
			["desaturate"] = false,
			["xOffset"] = -17,
			["config"] = {
			},
			["alpha"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration"] = "2",
					["alphaType"] = "alphaPulse",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      return start + (((math.sin(angle) + 1)/2) * delta)\n    end\n  ",
					["use_alpha"] = true,
					["type"] = "none",
					["easeType"] = "none",
					["x"] = 0,
					["use_color"] = false,
					["alpha"] = 0.6,
					["scalex"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["easeStrength"] = 3,
					["colorA"] = 1,
					["colorFunc"] = "",
					["rotate"] = 0,
					["duration_type"] = "seconds",
					["scaley"] = 1,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Rejuvination",
			["zoom"] = 0.3,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["uid"] = "BTO4BUl)nOt",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Forms"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 74.5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"5215", -- [1]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["names"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["auranames"] = {
							"5487", -- [1]
							"783", -- [2]
							"768", -- [3]
							"24858", -- [4]
						},
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Крадущийся зверь", -- [1]
							"Облик медведя", -- [2]
							"Походный облик", -- [3]
						},
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnActive",
						["spellIds"] = {
							5215, -- [1]
							5487, -- [2]
							783, -- [3]
						},
						["useGroup_count"] = false,
						["type"] = "aura2",
						["combineMatches"] = "showLowest",
						["ownOnly"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["use_track"] = true,
						["unevent"] = "auto",
						["use_genericShowOn"] = true,
						["duration"] = "1",
						["use_requirePowerType"] = true,
						["unit"] = "player",
						["realSpellName"] = 0,
						["powertype"] = 3,
						["use_spellName"] = true,
						["event"] = "Spell Known",
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["use_powertype"] = true,
						["spellName"] = 77493,
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["powertype"] = 1,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["use_requirePowerType"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellName"] = 231065,
						["duration"] = "1",
						["event"] = "Spell Known",
						["use_petspell"] = false,
						["use_track"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["use_track"] = true,
						["unevent"] = "auto",
						["use_genericShowOn"] = true,
						["duration"] = "1",
						["use_requirePowerType"] = true,
						["unit"] = "player",
						["realSpellName"] = 0,
						["powertype"] = 8,
						["use_spellName"] = true,
						["event"] = "Spell Known",
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["use_powertype"] = true,
						["spellName"] = 326085,
					},
					["untrigger"] = {
					},
				}, -- [5]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [2]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["level"] = "80",
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">=",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["alpha"] = 1,
			["width"] = 35,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 132276,
			["regionType"] = "icon",
			["zoom"] = 0.3,
			["desaturate"] = false,
			["config"] = {
			},
			["useTooltip"] = false,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["semver"] = "3.4.7",
			["cooldownTextDisabled"] = true,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Forms",
			["xOffset"] = 0.5,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["uid"] = "IFsTp6eyawU",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["glow_frame"] = "WeakAuras:Prowl",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["glow_frame"] = "WeakAuras:Prowl",
					["do_custom"] = false,
					["do_sound"] = false,
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["op"] = "==",
										["variable"] = "spellId",
										["value"] = "5487",
									}, -- [1]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 1,
									}, -- [2]
								},
							}, -- [1]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["op"] = "==",
										["variable"] = "spellId",
										["value"] = "768",
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 1,
									}, -- [2]
								},
							}, -- [2]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["op"] = "==",
										["variable"] = "spellId",
										["value"] = "24858",
									}, -- [1]
									{
										["trigger"] = 5,
										["variable"] = "show",
										["value"] = 1,
									}, -- [2]
								},
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Lunar_Bar"] = {
			["sparkWidth"] = 2,
			["modelIsUnit"] = false,
			["iconSource"] = -1,
			["xOffset"] = -53,
			["preferToUpdate"] = false,
			["yOffset"] = 16,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",0.98,0.78,0.83,0.59,0.59,0.94)",
					["do_custom"] = true,
				},
				["finish"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.8078431372549, -- [1]
				0.82745098039216, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["sparkOffsetY"] = 0,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["level"] = "10",
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">=",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["sequence"] = 1,
			["scale"] = 1,
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["texture"] = "Solid",
			["model_z"] = 0,
			["spark"] = false,
			["tocversion"] = 90002,
			["alpha"] = 0,
			["sparkColor"] = {
				0.97254901960784, -- [1]
				1, -- [2]
				0.92156862745098, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "None",
			["color"] = {
			},
			["customText"] = "",
			["model_x"] = 0,
			["sparkRotationMode"] = "AUTO",
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"48518", -- [1]
						},
						["duration"] = "1",
						["unit"] = "player",
						["powertype"] = 8,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["useName"] = false,
						["auraspellids"] = {
							"48518", -- [1]
						},
						["unevent"] = "auto",
						["use_unit"] = true,
						["use_requirePowerType"] = false,
						["use_absorbMode"] = true,
						["matchesShowOn"] = "showAlways",
						["useExactSpellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Power",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["auranames"] = {
							"48518", -- [1]
						},
						["ownOnly"] = true,
						["use_unit"] = true,
						["powertype"] = 8,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["useName"] = false,
						["unit"] = "player",
						["unevent"] = "auto",
						["matchesShowOn"] = "showOnActive",
						["names"] = {
						},
						["use_requirePowerType"] = false,
						["use_absorbMode"] = true,
						["useExactSpellId"] = true,
						["duration"] = "1",
						["spellIds"] = {
						},
						["auraspellids"] = {
							"194223", -- [1]
							"102560", -- [2]
						},
						["subeventPrefix"] = "SPELL",
						["event"] = "Power",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["advance"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["sparkMirror"] = false,
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["border_color"] = {
					},
					["type"] = "aurabar_bar",
				}, -- [2]
				{
					["api"] = false,
					["model_x"] = 0,
					["model_st_us"] = 40,
					["model_st_rz"] = 0,
					["model_z"] = 3,
					["model_fileId"] = "328500",
					["model_path"] = "spells/arcanepower_state_chest.m2",
					["model_st_ty"] = 0,
					["model_y"] = -0.5,
					["model_st_rx"] = 270,
					["rotation"] = 180,
					["bar_model_visible"] = true,
					["model_st_tx"] = 0,
					["bar_model_alpha"] = 0,
					["bar_model_clip"] = true,
					["type"] = "subbarmodel",
					["model_st_tz"] = 0,
					["model_st_ry"] = 0,
				}, -- [3]
				{
					["text_text_format_t_time_precision"] = 1,
					["text_text"] = "%p",
					["text_visible"] = true,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["anchorXOffset"] = 0,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 92,
					["text_text_format_t_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "RIGHT",
					["rotateText"] = "NONE",
					["text_text_format_t_format"] = "timed",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_n_format"] = "none",
					["type"] = "subtext",
					["text_anchorXOffset"] = 54,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_anchorYOffset"] = 0.5,
					["text_text_format_p_time_format"] = 0,
					["text_wordWrap"] = "Elide",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowYOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 13,
					["text_text_format_t_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_precision"] = 1,
				}, -- [4]
			},
			["height"] = 10,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["sparkTexture"] = "Insanity-Spark",
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
			["config"] = {
			},
			["anchorFrameFrame"] = "WeakAuras:Astral_Power",
			["auto"] = true,
			["borderInFront"] = false,
			["model_path"] = "Creature/Arthaslichking/arthaslichking.m2",
			["icon_side"] = "LEFT",
			["backgroundColor"] = {
				0.13333333333333, -- [1]
				0.17647058823529, -- [2]
				0.30196078431373, -- [3]
				1, -- [4]
			},
			["id"] = "Lunar_Bar",
			["sparkHeight"] = 8,
			["anchorFrameType"] = "SELECTFRAME",
			["icon"] = false,
			["zoom"] = 0,
			["semver"] = "3.4.7",
			["uid"] = "Lq0hs1xITva",
			["sparkHidden"] = "BOTH",
			["model_y"] = 0,
			["frameStrata"] = 3,
			["width"] = 105.5,
			["sparkOffsetX"] = 0.5,
			["backdropColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL_INVERSE",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 1,
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "buffed",
								["value"] = 1,
							}, -- [1]
							{
								["value"] = 1,
								["variable"] = "buffed",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "sub.3.bar_model_alpha",
						}, -- [2]
					},
				}, -- [1]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Druid_AfenarUI",
		},
		["Frenzied_Regeneration"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["names"] = {
							"Божественное перышко", -- [1]
							"Божественное перышко", -- [2]
							"Божественное перышко", -- [3]
						},
						["use_showgcd"] = true,
						["useCount"] = true,
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["use_genericShowOn"] = true,
						["use_remaining"] = false,
						["spellName"] = 22842,
						["charges_operator"] = "~=",
						["type"] = "spell",
						["count"] = "2",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["countOperator"] = "<=",
						["custom_hide"] = "timed",
						["realSpellName"] = "狂暴恢復",
						["use_spellName"] = true,
						["spellIds"] = {
							121536, -- [1]
							158624, -- [2]
							121557, -- [3]
						},
						["unevent"] = "auto",
						["charges"] = "3",
						["debuffType"] = "HELPFUL",
						["use_track"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 202028,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "TOPRIGHT",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 3,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "TOPRIGHT",
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_anchorYOffset"] = 3,
				}, -- [3]
			},
			["height"] = 40,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 17,
					["multi"] = {
						[5] = true,
						[6] = true,
						[17] = true,
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 22842,
				["zoneIds"] = "",
			},
			["auto"] = true,
			["config"] = {
			},
			["authorOptions"] = {
			},
			["parent"] = "Druid_AfenarUI",
			["regionType"] = "icon",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["desaturate"] = false,
			["xOffset"] = 43,
			["width"] = 40,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Frenzied_Regeneration",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "thW4Zrzal05",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["variable"] = "charges",
								["value"] = "1",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "spellUsable",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "duration",
						["value"] = "2",
					},
					["changes"] = {
						{
							["property"] = "sub.2.text_visible",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Moonfire"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["useGroup_count"] = false,
						["use_inverse"] = true,
						["names"] = {
							"Солнечный огонь", -- [1]
						},
						["unitExists"] = true,
						["use_tooltip"] = false,
						["use_unit"] = true,
						["unit"] = "target",
						["subeventPrefix"] = "SPELL",
						["matchesShowOn"] = "showAlways",
						["type"] = "aura2",
						["debuffType"] = "HARMFUL",
						["unevent"] = "auto",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["duration"] = "1",
						["event"] = "Cooldown Progress (Spell)",
						["buffShowOn"] = "showAlways",
						["realSpellName"] = "Земной шок",
						["use_spellName"] = true,
						["spellIds"] = {
							164815, -- [1]
						},
						["spellName"] = 8042,
						["remOperator"] = ">=",
						["combineMatches"] = "showLowest",
						["ownOnly"] = true,
						["auranames"] = {
							"164812", -- [1]
						},
					},
					["untrigger"] = {
						["spellName"] = 8042,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["duration"] = "1",
						["use_absorbMode"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["realSpellName"] = "月火術",
						["use_spellName"] = true,
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["use_track"] = true,
						["spellName"] = 8921,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 4,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_visible"] = true,
					["text_shadowXOffset"] = 0,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_time_format"] = 0,
				}, -- [3]
			},
			["height"] = 40,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 93402,
				["zoneIds"] = "",
			},
			["width"] = 40,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["easeStrength"] = 3,
					["colorFunc"] = "",
					["rotate"] = 0,
					["x"] = 0,
					["use_color"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "fade",
					["alpha"] = 0,
					["alphaType"] = "hide",
					["duration_type"] = "seconds",
					["duration"] = "1",
					["easeStrength"] = 3,
					["use_translate"] = false,
					["use_alpha"] = false,
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["displayIcon"] = "Interface\\Icons\\Ability_Mage_FireStarter",
			["zoom"] = 0.3,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["config"] = {
			},
			["alpha"] = 1,
			["auto"] = true,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Moonfire",
			["authorOptions"] = {
			},
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = -43,
			["uid"] = "8)egh0Udli6",
			["inverse"] = false,
			["desaturate"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["op"] = "<",
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<=",
								["variable"] = "expirationTime",
								["value"] = "6.6",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "buffed",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "attackabletarget",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = -1,
								["variable"] = "hastarget",
								["value"] = 0,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "spellInRange",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["property"] = "sub.2.glow",
						}, -- [2]
						{
							["value"] = {
								1, -- [1]
								0.40392156862745, -- [2]
								0.34117647058824, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [3]
						{
							["value"] = {
								1, -- [1]
								0.38039215686275, -- [2]
								0.27450980392157, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.border_color",
						}, -- [4]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Wrath_1"] = {
			["sparkWidth"] = 10,
			["iconSource"] = -1,
			["xOffset"] = 52.5,
			["preferToUpdate"] = false,
			["adjustedMin"] = "0",
			["yOffset"] = 16.12353515625,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",1,0.7,0.3,1,0.8,0.6)",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["matchesShowOn"] = "showAlways",
						["auranames"] = {
							"48517", -- [1]
						},
						["spellCount_operator"] = "==",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["unit"] = "player",
						["powertype"] = 4,
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["type"] = "spell",
						["spellName"] = 5176,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["charges_operator"] = "==",
						["charges"] = "1",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["use_spellCount"] = false,
						["use_charges"] = false,
						["event"] = "Cooldown Progress (Spell)",
						["use_power"] = false,
						["realSpellName"] = "憤怒",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["spellCount"] = "2",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["spellCount"] = "2",
						["spellId"] = 190984,
						["auranames"] = {
							"48517", -- [1]
						},
						["use_genericShowOn"] = true,
						["spellName"] = 5176,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cast",
						["use_spellId"] = true,
						["use_track"] = true,
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["powertype"] = 4,
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["charges_operator"] = "==",
						["useName"] = true,
						["names"] = {
						},
						["unevent"] = "auto",
						["use_spellCount"] = false,
						["charges"] = "1",
						["spellCount_operator"] = "==",
						["duration"] = "1",
						["realSpellName"] = "Гнев",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["type"] = "unit",
						["unit"] = "player",
						["use_power"] = false,
						["track"] = "auto",
						["matchesShowOn"] = "showAlways",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t) return t[1] and t[2] and (t[4] or t[5]) end",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 45,
			["selfPoint"] = "RIGHT",
			["barColor"] = {
				1, -- [1]
				0.81960784313725, -- [2]
				0.6156862745098, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetX"] = 0,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["type"] = "aurabar_bar",
				}, -- [2]
				{
					["api"] = false,
					["model_x"] = 0,
					["model_st_us"] = 40,
					["model_st_rz"] = 0,
					["model_z"] = 3,
					["model_fileId"] = "328500",
					["model_path"] = "spells/arcanepower_state_chest.m2",
					["model_st_ty"] = 0,
					["model_y"] = -0.5,
					["model_st_rx"] = 270,
					["rotation"] = 0,
					["bar_model_visible"] = true,
					["model_st_tx"] = 0,
					["bar_model_alpha"] = 1,
					["bar_model_clip"] = true,
					["type"] = "subbarmodel",
					["model_st_tz"] = 0,
					["model_st_ry"] = 0,
				}, -- [3]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "ACShine",
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						0.97647058823529, -- [2]
						0.98823529411765, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 0.7,
					["glowLength"] = 10,
					["glow_anchor"] = "bar",
					["glow"] = false,
					["glowLines"] = 7,
					["glowBorder"] = false,
				}, -- [4]
			},
			["height"] = 10,
			["width"] = 52,
			["load"] = {
				["use_petbattle"] = false,
				["talent"] = {
					["single"] = 7,
					["multi"] = {
						[7] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
						true, -- [4]
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["pvptalent"] = {
				},
				["zoneIds"] = "",
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["spark"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["colorR"] = 1,
					["scalex"] = 1,
					["alphaType"] = "custom",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "",
					["use_alpha"] = false,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0.4,
					["y"] = 0,
					["x"] = 0,
					["colorA"] = 1,
					["duration"] = "0.5",
					["rotate"] = 0,
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["backgroundColor"] = {
				0.13333333333333, -- [1]
				0.17647058823529, -- [2]
				0.30196078431373, -- [3]
				1, -- [4]
			},
			["sparkHidden"] = "NEVER",
			["useAdjustededMin"] = false,
			["uid"] = ")5l4OP8Vowu",
			["anchorFrameFrame"] = "WeakAuras:Astral_Power",
			["regionType"] = "aurabar",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["icon_side"] = "RIGHT",
			["alpha"] = 1,
			["sparkHeight"] = 30,
			["texture"] = "Solid",
			["semver"] = "3.4.7",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Wrath_1",
			["zoom"] = 0,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SELECTFRAME",
			["icon"] = false,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = true,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["op"] = "<",
						["checks"] = {
							{
								["value"] = 1,
								["variable"] = "show",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "==",
								["variable"] = "spellCount",
								["value"] = "1",
							}, -- [2]
						},
						["value"] = "1",
						["variable"] = "spellCount",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["property"] = "inverse",
						}, -- [1]
						{
							["value"] = false,
							["property"] = "sub.3.bar_model_visible",
						}, -- [2]
						{
							["property"] = "sub.3.bar_model_alpha",
						}, -- [3]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "==",
								["variable"] = "spellCount",
								["value"] = "1",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.4.glow",
						}, -- [1]
					},
				}, -- [2]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Druid_AfenarUI",
		},
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
			["uid"] = "ZX3oWFkARRy",
			["animate"] = false,
			["rowSpace"] = 1,
			["scale"] = 1,
			["radius"] = 200,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["selfPoint"] = "TOP",
			["fullCircle"] = true,
			["constantFactor"] = "RADIUS",
			["frameStrata"] = 1,
			["borderOffset"] = 4,
			["config"] = {
			},
			["gridType"] = "RD",
			["id"] = "Details! Boss Mods Group",
			["useLimit"] = false,
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
			["xOffset"] = 0,
		},
		["Force_of_Nature"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 74.5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["names"] = {
							"Starfall", -- [1]
							"Starfall", -- [2]
						},
						["use_showgcd"] = true,
						["remaining"] = "1.5",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["spellName"] = 205636,
						["custom_hide"] = "timed",
						["use_remaining"] = false,
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["remaining_operator"] = ">=",
						["realSpellName"] = 205636,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["ownOnly"] = true,
						["unevent"] = "auto",
						["type"] = "spell",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 205636,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 4,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [3]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 3,
					["multi"] = {
						[15] = true,
						[13] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 194223,
				["zoneIds"] = "",
			},
			["width"] = 35,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["easeStrength"] = 3,
					["colorFunc"] = "",
					["rotate"] = 0,
					["x"] = 0,
					["use_color"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "fade",
					["alpha"] = 0,
					["alphaType"] = "hide",
					["duration_type"] = "seconds",
					["duration"] = "1",
					["easeStrength"] = 3,
					["use_translate"] = false,
					["use_alpha"] = false,
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["displayIcon"] = "Interface\\Icons\\Spell_Nature_NatureGuardian",
			["zoom"] = 0.3,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["config"] = {
			},
			["alpha"] = 1,
			["auto"] = true,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Force_of_Nature",
			["authorOptions"] = {
			},
			["frameStrata"] = 3,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = -50.5,
			["uid"] = "0dfrsvYQ)wL",
			["inverse"] = true,
			["desaturate"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["variable"] = "expirationTime",
								["value"] = "1",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "duration",
						["value"] = "2",
					},
					["changes"] = {
						{
							["property"] = "sub.3.text_visible",
						}, -- [1]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Druid_CP_1"] = {
			["sparkWidth"] = 5,
			["iconSource"] = -1,
			["xOffset"] = -85.5,
			["preferToUpdate"] = false,
			["yOffset"] = 16,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["icon"] = false,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0.81960784313725, -- [2]
				0.6156862745098, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[7] = true,
						[9] = true,
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DEATHKNIGHT"] = true,
						["WARRIOR"] = true,
						["ROGUE"] = true,
						["MAGE"] = true,
						["WARLOCK"] = true,
						["PALADIN"] = true,
						["DRUID"] = true,
						["MONK"] = true,
						["SHAMAN"] = true,
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["use_class"] = true,
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["texture"] = "Solid",
			["zoom"] = 0.3,
			["spark"] = false,
			["tocversion"] = 90002,
			["alpha"] = 1,
			["uid"] = "iZUqHvEP9ze",
			["sparkOffsetX"] = 0,
			["color"] = {
			},
			["customText"] = "",
			["customTextUpdate"] = "update",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Conditions",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_castType"] = false,
						["auranames"] = {
							"205473", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["powertype"] = 4,
						["names"] = {
						},
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["use_unit"] = true,
						["useName"] = true,
						["use_power"] = true,
						["subeventSuffix"] = "_CAST_START",
						["power_operator"] = ">=",
						["custom_hide"] = "timed",
						["use_requirePowerType"] = false,
						["type"] = "unit",
						["castType"] = "cast",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["ownOnly"] = true,
						["event"] = "Power",
						["duration"] = "1",
						["power"] = "1",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["type"] = "aurabar_bar",
				}, -- [2]
				{
					["api"] = false,
					["model_x"] = 0,
					["model_st_us"] = 40,
					["model_st_rz"] = 0,
					["model_z"] = 5,
					["model_fileId"] = "328500",
					["model_path"] = "spells/arcanepower_state_chest.m2",
					["model_st_ty"] = 0,
					["model_y"] = 0,
					["model_st_rx"] = 270,
					["rotation"] = 180,
					["bar_model_visible"] = false,
					["model_st_tx"] = 0,
					["bar_model_alpha"] = 0,
					["bar_model_clip"] = false,
					["type"] = "subbarmodel",
					["model_st_tz"] = 0,
					["model_st_ry"] = 0,
				}, -- [3]
			},
			["height"] = 12,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["anchorFrameType"] = "SELECTFRAME",
			["anchorFrameFrame"] = "WeakAuras:Feral_Energy",
			["borderBackdrop"] = "None",
			["borderInFront"] = false,
			["authorOptions"] = {
			},
			["icon_side"] = "LEFT",
			["sparkRotationMode"] = "MANUAL",
			["backgroundColor"] = {
				0.42745098039216, -- [1]
				0.15686274509804, -- [2]
				0.023529411764706, -- [3]
				1, -- [4]
			},
			["sparkHeight"] = 15,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",1,0.7,0.3,1,0.8,0.6)",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["auto"] = true,
			["config"] = {
			},
			["semver"] = "3.4.7",
			["sparkHidden"] = "BOTH",
			["id"] = "Druid_CP_1",
			["sparkTexture"] = "Legionfall_BarSpark",
			["frameStrata"] = 2,
			["width"] = 41,
			["sparkColor"] = {
				1, -- [1]
				0.42352941176471, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "inverse",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "sub.3.bar_model_alpha",
						}, -- [2]
					},
				}, -- [1]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Druid_AfenarUI",
		},
		["Ironfur"] = {
			["sparkWidth"] = 2,
			["iconSource"] = -1,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 16,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["icon"] = false,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0.52549019607843, -- [2]
				0.36078431372549, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["use_spec"] = false,
				["use_class"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["texture"] = "Solid",
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 90002,
			["alpha"] = 1,
			["uid"] = "H8a(1Oc6EKz",
			["borderBackdrop"] = "Solid",
			["color"] = {
			},
			["customText"] = "",
			["sparkRotationMode"] = "AUTO",
			["triggers"] = {
				{
					["trigger"] = {
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["unevent"] = "auto",
						["events"] = "CLEU:SPELL_CAST_SUCCESS",
						["spellIds"] = {
						},
						["event"] = "Health",
						["names"] = {
							"Iron Fur", -- [1]
						},
						["customDuration"] = "\n\n\n",
						["custom_type"] = "stateupdate",
						["custom"] = "function(allstates, _, _, _, _, sourceGUID, _, _, _, _, _, _, _, spellId)    \n    if sourceGUID == UnitGUID('player') and spellId == 192081 then \n        local t = GetTime()\n        \n        local GoE = WA_GetUnitBuff('player', 213680) -- Guardian of Elune\n        local duration = 7 + (GoE and 2 or 0)\n        \n        allstates[t] = {\n            show = true,\n            changed = true,\n            progressType = 'timed',\n            duration = duration,\n            expirationTime = t + duration,\n            autoHide = true\n        }\n        \n        return true\n    end\nend",
						["use_unit"] = true,
						["check"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
						["custom"] = "\n\n",
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_alwaystrue"] = true,
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["auraspellids"] = {
							"192081", -- [1]
						},
						["unevent"] = "auto",
						["spellName"] = 0,
						["event"] = "Conditions",
						["use_genericShowOn"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["useExactSpellId"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_track"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
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
			["backdropInFront"] = false,
			["sparkMirror"] = false,
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "aurabar_bar",
				}, -- [1]
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [2]
				{
					["text_text_format_n_format"] = "none",
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
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
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_visible"] = true,
					["text_fontSize"] = 13,
					["anchorXOffset"] = 0,
					["text_shadowXOffset"] = 0,
				}, -- [3]
			},
			["height"] = 12,
			["sparkBlendMode"] = "BLEND",
			["backdropColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["anchorFrameFrame"] = "WeakAuras:Guardian_Rage",
			["authorOptions"] = {
			},
			["borderInFront"] = true,
			["sparkColor"] = {
				1, -- [1]
				0.76078431372549, -- [2]
				0.57254901960784, -- [3]
				1, -- [4]
			},
			["icon_side"] = "RIGHT",
			["customTextUpdate"] = "update",
			["backgroundColor"] = {
				0.42745098039216, -- [1]
				0.15686274509804, -- [2]
				0.023529411764706, -- [3]
				1, -- [4]
			},
			["sparkHeight"] = 14,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",1,0.35,0.2,1,0.6,0.4)\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["width"] = 212,
			["spark"] = true,
			["semver"] = "3.4.7",
			["sparkHidden"] = "BOTH",
			["id"] = "Ironfur",
			["useAdjustededMax"] = false,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SELECTFRAME",
			["sparkTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White_Border",
			["sparkOffsetX"] = 0,
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Druid_AfenarUI",
		},
		["Astral_Power_Gain"] = {
			["sparkWidth"] = 3,
			["modelIsUnit"] = false,
			["iconSource"] = -1,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",0.59,0.59,0.94,0.98,0.78,0.83)",
					["do_custom"] = true,
				},
				["finish"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.8078431372549, -- [1]
				0.82745098039216, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["sparkOffsetY"] = 0,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["level"] = "10",
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">=",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["sequence"] = 1,
			["scale"] = 1,
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["texture"] = "Solid",
			["model_z"] = 0,
			["spark"] = true,
			["tocversion"] = 90002,
			["alpha"] = 1,
			["sparkColor"] = {
				0.49803921568627, -- [1]
				0.42745098039216, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "None",
			["color"] = {
			},
			["customText"] = "function()\n    if aura_env.add_eng then\n        if aura_env.add_eng ~= 0\n        then\n            return string.format('|c%s%.0f +|r |c%s%.0f|r', 'FF00FFFF', aura_env.add_eng, 'FFFFFF00', aura_env.my_eng)\n        else\n            return string.format(' |c%s%.0f|r ',  'FFFFFF00', aura_env.my_eng)\n        end\n    else\n        return ('')\n    end\nend",
			["model_x"] = 0,
			["sparkRotationMode"] = "AUTO",
			["triggers"] = {
				{
					["trigger"] = {
						["use_power"] = false,
						["use_showCost"] = false,
						["use_unit"] = true,
						["powertype"] = 13,
						["custom_hide"] = "custom",
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["names"] = {
						},
						["type"] = "custom",
						["use_absorbMode"] = true,
						["subeventSuffix"] = "_CAST_START",
						["custom"] = "function(e, min_position, cur_position, max_position, spk_position)\n    if min_position then\n        aura_env.eng = min_position\n        aura_env.eng_max = max_position\n        return true \n    else\n        aura_env.eng = nil\n    end\nend",
						["unit"] = "player",
						["event"] = "Power",
						["events"] = "WA_event_engUpdate_by_Afreg",
						["customDuration"] = "function()\n    if aura_env.eng \n    then\n        return aura_env.eng, aura_env.eng_max, 0, 0\n    end\nend",
						["customName"] = "",
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["custom_type"] = "event",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["custom"] = "function()\n    if  aura_env.eng == nil then return true end\nend",
					},
				}, -- [1]
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["use_track"] = true,
						["unevent"] = "auto",
						["use_genericShowOn"] = true,
						["duration"] = "1",
						["use_requirePowerType"] = false,
						["unit"] = "player",
						["realSpellName"] = 0,
						["powertype"] = 8,
						["use_spellName"] = true,
						["event"] = "Power",
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["use_powertype"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["spellId"] = 190984,
						["auranames"] = {
							"157228", -- [1]
						},
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["unevent"] = "auto",
						["event"] = "Cast",
						["ownOnly"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unit"] = "player",
						["use_spellId"] = true,
						["use_genericShowOn"] = true,
						["type"] = "unit",
						["use_track"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["advance"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["sparkMirror"] = false,
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["border_color"] = {
					},
					["type"] = "aurabar_bar",
					["text_color"] = {
					},
				}, -- [2]
				{
					["api"] = false,
					["model_x"] = 0,
					["model_st_us"] = 40,
					["model_st_rz"] = 0,
					["model_z"] = -6.5,
					["model_fileId"] = "328500",
					["model_path"] = "spells/arcanepower_state_chest.m2",
					["model_st_ty"] = 0,
					["model_y"] = -0.5,
					["model_st_rx"] = 270,
					["rotation"] = 180,
					["bar_model_visible"] = true,
					["model_st_tx"] = 0,
					["bar_model_alpha"] = 1,
					["bar_model_clip"] = true,
					["type"] = "subbarmodel",
					["model_st_tz"] = 0,
					["model_st_ry"] = 0,
				}, -- [3]
			},
			["height"] = 20,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["sparkTexture"] = "GarrMission_EncounterBar-Spark",
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
			["config"] = {
			},
			["anchorFrameFrame"] = "WeakAuras:Astral_Power",
			["auto"] = true,
			["borderInFront"] = false,
			["model_path"] = "Creature/Arthaslichking/arthaslichking.m2",
			["icon_side"] = "RIGHT",
			["backgroundColor"] = {
				0.70196078431373, -- [1]
				0.48235294117647, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "Astral_Power_Gain",
			["sparkHeight"] = 35,
			["anchorFrameType"] = "SELECTFRAME",
			["icon"] = false,
			["zoom"] = 0,
			["semver"] = "3.4.7",
			["uid"] = "04SE7nR)Mw8",
			["sparkHidden"] = "BOTH",
			["model_y"] = 0,
			["frameStrata"] = 2,
			["width"] = 212,
			["sparkOffsetX"] = 0,
			["backdropColor"] = {
				0.78039215686274, -- [1]
				0, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.75294117647059, -- [2]
								0.45098039215686, -- [3]
								1, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [1]
					},
				}, -- [1]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Druid_AfenarUI",
		},
		["Guardian_Rage"] = {
			["sparkWidth"] = 1,
			["sparkOffsetX"] = 0,
			["auto"] = true,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["borderBackdrop"] = "None",
			["yOffset"] = 32,
			["anchorPoint"] = "CENTER",
			["iconSource"] = -1,
			["parent"] = "Druid_AfenarUI",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["icon"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["unit"] = "player",
						["duration"] = "1",
						["use_requirePowerType"] = true,
						["use_unit"] = true,
						["event"] = "Power",
						["powertype"] = 1,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["genericShowOn"] = "showOnActive",
						["use_powertype"] = true,
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 45,
			["frameStrata"] = 2,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["authorOptions"] = {
			},
			["barColor"] = {
				1, -- [1]
				0.46666666666667, -- [2]
				0.29803921568627, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["color"] = {
			},
			["customTextUpdate"] = "update",
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "aurabar_bar",
				}, -- [1]
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_CENTER",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 14,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_time_format"] = 0,
				}, -- [3]
				{
					["tick_blend_mode"] = "ADD",
					["tick_rotation"] = 0,
					["tick_xOffset"] = 0,
					["tick_desaturate"] = false,
					["automatic_length"] = true,
					["tick_thickness"] = 2,
					["tick_texture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
					["use_texture"] = false,
					["tick_color"] = {
						1, -- [1]
						0.81960784313725, -- [2]
						0.6156862745098, -- [3]
						1, -- [4]
					},
					["tick_visible"] = true,
					["tick_placement_mode"] = "AtValue",
					["tick_yOffset"] = 0,
					["tick_placement"] = "40",
					["tick_length"] = 30,
					["tick_mirror"] = false,
					["type"] = "subtick",
				}, -- [4]
				{
					["tick_blend_mode"] = "ADD",
					["tick_rotation"] = 0,
					["tick_xOffset"] = 0,
					["tick_desaturate"] = false,
					["automatic_length"] = true,
					["tick_thickness"] = 2,
					["tick_texture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
					["use_texture"] = false,
					["tick_color"] = {
						1, -- [1]
						0.81960784313725, -- [2]
						0.6156862745098, -- [3]
						1, -- [4]
					},
					["tick_visible"] = true,
					["tick_placement_mode"] = "AtValue",
					["tick_yOffset"] = 0,
					["tick_placement"] = "80",
					["tick_length"] = 30,
					["tick_mirror"] = false,
					["type"] = "subtick",
				}, -- [5]
			},
			["height"] = 18,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",1,0.35,0.2,1,0.6,0.4)",
					["do_custom"] = true,
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["MONK"] = true,
						["ROGUE"] = true,
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["backgroundColor"] = {
				0.42745098039216, -- [1]
				0.15686274509804, -- [2]
				0.023529411764706, -- [3]
				1, -- [4]
			},
			["sparkOffsetY"] = 0.2,
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["borderInFront"] = false,
			["useAdjustededMax"] = false,
			["icon_side"] = "RIGHT",
			["uid"] = "0CIOu6kR5k8",
			["id"] = "Guardian_Rage",
			["sparkHeight"] = 25,
			["texture"] = "Solid",
			["width"] = 212,
			["zoom"] = 0,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["sparkHidden"] = "BOTH",
			["sparkTexture"] = "Legionfall_BarSpark",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["spark"] = true,
			["sparkColor"] = {
				1, -- [1]
				0.74117647058823, -- [2]
				0.34117647058824, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.4.tick_visible",
						}, -- [1]
						{
							["property"] = "sub.5.tick_visible",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">=",
						["variable"] = "power",
						["value"] = "40",
					},
					["changes"] = {
						{
							["property"] = "sub.4.tick_visible",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["op"] = ">=",
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = ">=",
								["variable"] = "power",
								["value"] = "80",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "<",
								["variable"] = "power",
								["value"] = "40",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "sub.5.tick_visible",
						}, -- [1]
					},
				}, -- [3]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["config"] = {
			},
		},
		["Remove_Corruption"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = -38,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["use_showgcd"] = false,
						["remaining"] = "3",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["use_remaining"] = false,
						["type"] = "spell",
						["custom_hide"] = "timed",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["unit"] = "player",
						["realSpellName"] = "解除詛咒",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["remaining_operator"] = "<=",
						["spellName"] = 2782,
						["unevent"] = "auto",
						["use_track"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
						["showOn"] = "showOnCooldown",
						["genericShowOn"] = "showOnCooldown",
						["spellName"] = 2782,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 13,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [3]
			},
			["height"] = 30,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 2782,
				["zoneIds"] = "",
			},
			["url"] = "https://wago.io/Afenar_Druid/154",
			["config"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["easeStrength"] = 3,
					["colorFunc"] = "",
					["rotate"] = 0,
					["x"] = 0,
					["use_color"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["parent"] = "Druid_AfenarUI",
			["anchorFrameFrame"] = "WeakAuras:Growl",
			["regionType"] = "icon",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["desaturate"] = true,
			["zoom"] = 0.3,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["do_custom"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["width"] = 30,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Remove_Corruption",
			["auto"] = true,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["uid"] = "5z3dbCBy8yp",
			["inverse"] = true,
			["xOffset"] = 124,
			["conditions"] = {
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["CastBar_Druid"] = {
			["sparkWidth"] = 4,
			["iconSource"] = -1,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = -31.5,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0.83529411764706, -- [2]
				0.62745098039216, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DEATHKNIGHT"] = true,
						["WARRIOR"] = true,
						["ROGUE"] = true,
						["MAGE"] = true,
						["WARLOCK"] = true,
						["PALADIN"] = true,
						["DRUID"] = true,
						["MONK"] = true,
						["SHAMAN"] = true,
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["sparkDesaturate"] = false,
			["texture"] = "Solid",
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 90002,
			["alpha"] = 1,
			["uid"] = "zBddQTPUB9D",
			["sparkOffsetX"] = 0,
			["color"] = {
			},
			["sparkRotationMode"] = "MANUAL",
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["type"] = "unit",
						["unevent"] = "auto",
						["debuffType"] = "HELPFUL",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["castType"] = "cast",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["event"] = "Cast",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "spell",
						["unevent"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["debuffType"] = "HELPFUL",
						["event"] = "Spell Known",
						["duration"] = "1",
						["use_track"] = true,
						["spellName"] = 326085,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["border_color"] = {
					},
					["type"] = "aurabar_bar",
				}, -- [2]
				{
					["api"] = false,
					["model_x"] = 0,
					["model_st_us"] = 40,
					["model_st_rz"] = 0,
					["model_z"] = -6.5,
					["model_fileId"] = "328500",
					["model_path"] = "spells/arcanepower_state_chest.m2",
					["model_st_ty"] = 0,
					["model_y"] = -1,
					["model_st_rx"] = 270,
					["rotation"] = 180,
					["bar_model_visible"] = false,
					["model_st_tx"] = 0,
					["bar_model_alpha"] = 1,
					["bar_model_clip"] = true,
					["type"] = "subbarmodel",
					["model_st_tz"] = 0,
					["model_st_ry"] = 0,
				}, -- [3]
				{
					["text_text_format_t_time_precision"] = 1,
					["text_text"] = "%p - %t",
					["text_text_format_p_format"] = "timed",
					["anchorXOffset"] = 0,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_t_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_t_format"] = "timed",
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_shadowXOffset"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_p_time_precision"] = 1,
					["text_anchorYOffset"] = 1,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = 0,
					["text_fontSize"] = 12,
					["text_text_format_t_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
				}, -- [4]
			},
			["height"] = 17,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["anchorFrameType"] = "SCREEN",
			["anchorFrameFrame"] = "SUFUnitplayer",
			["borderBackdrop"] = "None",
			["borderInFront"] = false,
			["authorOptions"] = {
			},
			["icon_side"] = "LEFT",
			["spark"] = false,
			["customTextUpdate"] = "update",
			["sparkHeight"] = 30,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",1,0.7,0.3,1,0.8,0.6)",
					["do_custom"] = false,
				},
				["finish"] = {
					["do_glow"] = false,
				},
			},
			["sparkTexture"] = "130877",
			["config"] = {
			},
			["semver"] = "3.4.7",
			["sparkHidden"] = "BOTH",
			["id"] = "CastBar_Druid",
			["sparkColor"] = {
				1, -- [1]
				0.42352941176471, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 3,
			["width"] = 212,
			["backgroundColor"] = {
				0.42745098039216, -- [1]
				0.15686274509804, -- [2]
				0.023529411764706, -- [3]
				1, -- [4]
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.13333333333333, -- [1]
								0.17647058823529, -- [2]
								0.30196078431373, -- [3]
								1, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [1]
						{
							["value"] = {
								["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",0.59,0.59,0.94,0.98,0.78,0.83)",
							},
							["property"] = "customcode",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",1,0.7,0.3,1,0.8,0.6)",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = 0,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [3]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Druid_AfenarUI",
		},
		["Druid_PvPT4"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 94,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unit"] = "player",
						["unevent"] = "auto",
						["use_showOn"] = true,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["names"] = {
						},
						["realSpellName"] = 203242,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["spellName"] = 203242,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
						["spellName"] = 203242,
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "slideleft",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "slideleft",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 13,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [2]
			},
			["height"] = 30,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["single"] = 14,
					["multi"] = {
						true, -- [1]
						[14] = true,
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 203242,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Afenar_Druid/154",
			["selfPoint"] = "CENTER",
			["anchorFrameFrame"] = "ElvUF_Player",
			["regionType"] = "icon",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = true,
					["glow_type"] = "buttonOverlay",
					["glow_frame_type"] = "FRAMESELECTOR",
				},
			},
			["desaturate"] = false,
			["auto"] = true,
			["zoom"] = 0.3,
			["width"] = 30,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Druid_PvPT4",
			["alpha"] = 1,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = -124,
			["uid"] = "(9(wjc4JPZl",
			["inverse"] = true,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["parent"] = "Druid_AfenarUI",
		},
		["Rebirth"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = -58,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["use_showgcd"] = false,
						["remaining"] = "3",
						["names"] = {
						},
						["duration"] = "1",
						["use_unit"] = true,
						["use_genericShowOn"] = true,
						["debuffType"] = "HELPFUL",
						["charges_operator"] = ">=",
						["type"] = "spell",
						["custom_hide"] = "timed",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["spellName"] = 20484,
						["event"] = "Cooldown Progress (Spell)",
						["remaining_operator"] = "<=",
						["realSpellName"] = "復生",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["charges"] = "0",
						["use_remaining"] = false,
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["showOn"] = "showOnCooldown",
						["genericShowOn"] = "showAlways",
						["spellName"] = 20484,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 13,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "TOPRIGHT",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 3,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "TOPRIGHT",
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_anchorYOffset"] = 2,
				}, -- [3]
			},
			["height"] = 30,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 20484,
				["zoneIds"] = "",
			},
			["url"] = "https://wago.io/Afenar_Druid/154",
			["config"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["easeStrength"] = 3,
					["colorFunc"] = "",
					["rotate"] = 0,
					["x"] = 0,
					["use_color"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["parent"] = "Druid_AfenarUI",
			["anchorFrameFrame"] = "WeakAuras:Growl",
			["regionType"] = "icon",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["desaturate"] = false,
			["zoom"] = 0.5,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["do_custom"] = false,
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["width"] = 30,
			["alpha"] = 0.3,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Rebirth",
			["auto"] = true,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["uid"] = "ipkJTzkOcbS",
			["inverse"] = true,
			["xOffset"] = 82,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Legendary_Buffs_Druid"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 112.5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "8",
						["auranames"] = {
							"339942", -- [1]
							"339139", -- [2]
							"339141", -- [3]
							"339949", -- [4]
							"338661", -- [5]
						},
						["use_genericShowOn"] = true,
						["use_showgcd"] = true,
						["spellName"] = 48181,
						["showClones"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["use_track"] = true,
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["unitExists"] = true,
						["names"] = {
							"Черная душа: Страдание", -- [1]
						},
						["charges"] = "0",
						["debuffType"] = "HELPFUL",
						["charges_operator"] = "==",
						["useName"] = true,
						["duration"] = "1",
						["auraspellids"] = {
							"339141", -- [1]
							"338661", -- [2]
						},
						["ownOnly"] = true,
						["unevent"] = "auto",
						["custom_hide"] = "timed",
						["unit"] = "player",
						["realSpellName"] = "Блуждающий дух",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["remOperator"] = ">=",
						["type"] = "aura2",
						["useExactSpellId"] = false,
						["matchesShowOn"] = "showOnActive",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 48181,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["easeStrength"] = 3,
					["colorFunc"] = "",
					["rotate"] = 0,
					["x"] = 0,
					["use_color"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["border_visible"] = true,
					["border_size"] = 1,
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowColor"] = {
					},
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "TOPRIGHT",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 3,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "TOPRIGHT",
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_anchorYOffset"] = 3,
				}, -- [3]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_visible"] = true,
					["text_shadowXOffset"] = 0,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_time_format"] = 0,
				}, -- [4]
			},
			["height"] = 35,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_class_and_spec"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
					},
				},
				["class_and_spec"] = {
					["multi"] = {
						[103] = true,
						[104] = true,
						[102] = true,
					},
				},
				["talent"] = {
					["single"] = 6,
					["multi"] = {
						[5] = true,
						[6] = true,
						[4] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["spellknown"] = 32388,
				["zoneIds"] = "",
			},
			["desaturate"] = false,
			["config"] = {
			},
			["authorOptions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["xOffset"] = 50.5,
			["displayIcon"] = "INTERFACE\\ICONS\\spell_warlock_demonsoul",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["cooldownTextDisabled"] = true,
			["width"] = 35,
			["frameStrata"] = 2,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Legendary_Buffs_Druid",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "3.4.7",
			["uid"] = "123iQmhmTjc",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["glow_frame"] = "WeakAuras:DS",
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["parent"] = "Druid_AfenarUI",
		},
		["Solar_Bar"] = {
			["sparkWidth"] = 2,
			["modelIsUnit"] = false,
			["iconSource"] = -1,
			["xOffset"] = 53,
			["preferToUpdate"] = false,
			["yOffset"] = 16,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",1,0.7,0.3,1,0.8,0.6)",
					["do_custom"] = true,
				},
				["finish"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0.81176470588235, -- [2]
				0.55686274509804, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["sparkOffsetY"] = 0,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["level"] = "10",
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">=",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["sequence"] = 1,
			["scale"] = 1,
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["texture"] = "Solid",
			["model_z"] = 0,
			["spark"] = false,
			["tocversion"] = 90002,
			["alpha"] = 0.02,
			["sparkColor"] = {
				0.97254901960784, -- [1]
				1, -- [2]
				0.92156862745098, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "None",
			["color"] = {
			},
			["customText"] = "",
			["model_x"] = 0,
			["sparkRotationMode"] = "AUTO",
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"48518", -- [1]
						},
						["duration"] = "1",
						["unit"] = "player",
						["powertype"] = 8,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["useName"] = false,
						["auraspellids"] = {
							"48517", -- [1]
						},
						["unevent"] = "auto",
						["use_unit"] = true,
						["use_requirePowerType"] = false,
						["use_absorbMode"] = true,
						["matchesShowOn"] = "showAlways",
						["useExactSpellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Power",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["auranames"] = {
							"48518", -- [1]
						},
						["ownOnly"] = true,
						["use_unit"] = true,
						["powertype"] = 8,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["useName"] = false,
						["unit"] = "player",
						["unevent"] = "auto",
						["matchesShowOn"] = "showOnActive",
						["names"] = {
						},
						["use_requirePowerType"] = false,
						["use_absorbMode"] = true,
						["useExactSpellId"] = true,
						["duration"] = "1",
						["spellIds"] = {
						},
						["auraspellids"] = {
							"194223", -- [1]
							"102560", -- [2]
						},
						["subeventPrefix"] = "SPELL",
						["event"] = "Power",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["advance"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["sparkMirror"] = false,
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["border_color"] = {
					},
					["type"] = "aurabar_bar",
				}, -- [2]
				{
					["text_text_format_t_time_precision"] = 1,
					["text_text"] = "%p",
					["text_visible"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["anchorXOffset"] = 0,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 92,
					["text_text_format_t_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "RIGHT",
					["rotateText"] = "NONE",
					["text_text_format_t_format"] = "timed",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_n_format"] = "none",
					["type"] = "subtext",
					["text_anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_anchorYOffset"] = 0,
					["text_text_format_p_time_format"] = 0,
					["text_wordWrap"] = "Elide",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowYOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 12,
					["text_text_format_t_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_precision"] = 1,
				}, -- [3]
				{
					["api"] = false,
					["model_x"] = 0,
					["model_st_us"] = 40,
					["model_st_rz"] = 0,
					["model_z"] = 3,
					["model_fileId"] = "328500",
					["model_path"] = "spells/arcanepower_state_chest.m2",
					["model_st_ty"] = 0,
					["model_y"] = -0.5,
					["model_st_rx"] = 270,
					["rotation"] = 180,
					["bar_model_visible"] = true,
					["model_st_tx"] = 0,
					["bar_model_alpha"] = 0,
					["bar_model_clip"] = true,
					["type"] = "subbarmodel",
					["model_st_tz"] = 0,
					["model_st_ry"] = 0,
				}, -- [4]
			},
			["height"] = 10,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["sparkTexture"] = "Insanity-Spark",
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
			["config"] = {
			},
			["anchorFrameFrame"] = "WeakAuras:Astral_Power",
			["auto"] = true,
			["borderInFront"] = false,
			["model_path"] = "Creature/Arthaslichking/arthaslichking.m2",
			["icon_side"] = "RIGHT",
			["backgroundColor"] = {
				0.42745098039216, -- [1]
				0.15686274509804, -- [2]
				0.023529411764706, -- [3]
				1, -- [4]
			},
			["id"] = "Solar_Bar",
			["sparkHeight"] = 8,
			["anchorFrameType"] = "SELECTFRAME",
			["icon"] = false,
			["zoom"] = 0,
			["semver"] = "3.4.7",
			["uid"] = "aqXTmwbhkvs",
			["sparkHidden"] = "BOTH",
			["model_y"] = 0,
			["frameStrata"] = 3,
			["width"] = 105.5,
			["sparkOffsetX"] = 0.5,
			["backdropColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 1,
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "buffed",
								["value"] = 1,
							}, -- [1]
							{
								["value"] = 1,
								["variable"] = "buffed",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "sub.4.bar_model_alpha",
						}, -- [2]
					},
				}, -- [1]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Druid_AfenarUI",
		},
		["Details! Aura Group"] = {
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
			["uid"] = "I7Y0mTf5KSP",
			["animate"] = false,
			["rowSpace"] = 1,
			["scale"] = 1,
			["radius"] = 200,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["selfPoint"] = "TOP",
			["fullCircle"] = true,
			["constantFactor"] = "RADIUS",
			["frameStrata"] = 1,
			["borderOffset"] = 4,
			["config"] = {
			},
			["gridType"] = "RD",
			["id"] = "Details! Aura Group",
			["useLimit"] = false,
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
			["xOffset"] = 0,
		},
		["Feral_Energy"] = {
			["sparkWidth"] = 2,
			["sparkOffsetX"] = 0,
			["auto"] = true,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["borderBackdrop"] = "None",
			["yOffset"] = 32,
			["anchorPoint"] = "CENTER",
			["iconSource"] = -1,
			["parent"] = "Druid_AfenarUI",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["icon"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["unit"] = "player",
						["duration"] = "1",
						["use_requirePowerType"] = true,
						["use_unit"] = true,
						["event"] = "Power",
						["powertype"] = 3,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["genericShowOn"] = "showOnActive",
						["use_powertype"] = true,
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"135700", -- [1]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 45,
			["frameStrata"] = 3,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["authorOptions"] = {
			},
			["barColor"] = {
				1, -- [1]
				0.8, -- [2]
				0.6, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["color"] = {
			},
			["customTextUpdate"] = "update",
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["type"] = "aurabar_bar",
				}, -- [2]
				{
					["api"] = false,
					["model_x"] = 0,
					["model_st_us"] = 40,
					["model_st_rz"] = 0,
					["model_z"] = -6.5,
					["model_fileId"] = "328500",
					["model_path"] = "spells/arcanepower_state_chest.m2",
					["model_st_ty"] = 0,
					["model_y"] = -0.7,
					["model_st_rx"] = 270,
					["rotation"] = 180,
					["bar_model_visible"] = false,
					["model_st_tx"] = 0,
					["bar_model_alpha"] = 1,
					["bar_model_clip"] = true,
					["type"] = "subbarmodel",
					["model_st_tz"] = 0,
					["model_st_ry"] = 0,
				}, -- [3]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_CENTER",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_anchorYOffset"] = 0.5,
					["text_fontSize"] = 14,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_time_format"] = 0,
				}, -- [4]
			},
			["height"] = 18,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",1,0.7,0.3,1,0.8,0.6)",
					["do_custom"] = true,
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["MONK"] = true,
						["ROGUE"] = true,
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["backgroundColor"] = {
				0.42745098039216, -- [1]
				0.15686274509804, -- [2]
				0.023529411764706, -- [3]
				1, -- [4]
			},
			["sparkOffsetY"] = 0.2,
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["borderInFront"] = false,
			["useAdjustededMax"] = false,
			["icon_side"] = "RIGHT",
			["uid"] = "TTGdc1fMLqR",
			["id"] = "Feral_Energy",
			["sparkHeight"] = 25,
			["texture"] = "Solid",
			["width"] = 212,
			["zoom"] = 0,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["sparkHidden"] = "BOTH",
			["sparkTexture"] = "Legionfall_BarSpark",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["spark"] = true,
			["sparkColor"] = {
				1, -- [1]
				0.74117647058823, -- [2]
				0.34117647058824, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.13333333333333, -- [1]
								0.17647058823529, -- [2]
								0.30196078431373, -- [3]
								1, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [1]
						{
							["value"] = {
								["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",0.98,0.78,0.83,0.59,0.59,0.94)",
							},
							["property"] = "customcode",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",1,0.7,0.3,1,0.8,0.6)",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [2]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["config"] = {
			},
		},
		["Starfire_1"] = {
			["sparkWidth"] = 10,
			["iconSource"] = -1,
			["xOffset"] = -53,
			["preferToUpdate"] = false,
			["adjustedMin"] = "0",
			["yOffset"] = 16.120391845703,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",0.98,0.78,0.83,0.59,0.59,0.94)",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["matchesShowOn"] = "showAlways",
						["auranames"] = {
							"48517", -- [1]
						},
						["spellCount_operator"] = "==",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["unit"] = "player",
						["powertype"] = 4,
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["type"] = "spell",
						["spellName"] = 197628,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["charges_operator"] = "==",
						["charges"] = "1",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["use_spellCount"] = false,
						["use_charges"] = false,
						["event"] = "Cooldown Progress (Spell)",
						["use_power"] = false,
						["realSpellName"] = 197628,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["spellCount"] = "2",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["spellCount"] = "2",
						["spellId"] = 194153,
						["auranames"] = {
							"48517", -- [1]
						},
						["use_genericShowOn"] = true,
						["spellName"] = 197628,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cast",
						["use_spellId"] = true,
						["use_track"] = true,
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["powertype"] = 4,
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["charges_operator"] = "==",
						["useName"] = true,
						["names"] = {
						},
						["unevent"] = "auto",
						["use_spellCount"] = false,
						["charges"] = "1",
						["spellCount_operator"] = "==",
						["duration"] = "1",
						["realSpellName"] = "Звездный огонь",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["type"] = "unit",
						["unit"] = "player",
						["use_power"] = false,
						["track"] = "auto",
						["matchesShowOn"] = "showAlways",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t) return t[1] and t[2] and (t[4] or t[5]) end",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 45,
			["selfPoint"] = "LEFT",
			["barColor"] = {
				0.8078431372549, -- [1]
				0.82745098039216, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetX"] = 0,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["type"] = "aurabar_bar",
				}, -- [2]
				{
					["api"] = false,
					["model_x"] = 0,
					["model_st_us"] = 40,
					["model_st_rz"] = 0,
					["model_z"] = 3,
					["model_fileId"] = "328500",
					["model_path"] = "spells/arcanepower_state_chest.m2",
					["model_st_ty"] = 0,
					["model_y"] = -0.5,
					["model_st_rx"] = 270,
					["rotation"] = 0,
					["bar_model_visible"] = true,
					["model_st_tx"] = 0,
					["bar_model_alpha"] = 1,
					["bar_model_clip"] = true,
					["type"] = "subbarmodel",
					["model_st_tz"] = 0,
					["model_st_ry"] = 0,
				}, -- [3]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "ACShine",
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 0.7,
					["glowLength"] = 10,
					["glow_anchor"] = "bar",
					["glow"] = false,
					["glowLines"] = 7,
					["glowBorder"] = false,
				}, -- [4]
			},
			["height"] = 10,
			["width"] = 53,
			["load"] = {
				["use_petbattle"] = false,
				["talent"] = {
					["single"] = 7,
					["multi"] = {
						[7] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
						true, -- [4]
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["pvptalent"] = {
				},
				["zoneIds"] = "",
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["spark"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["colorR"] = 1,
					["scalex"] = 1,
					["alphaType"] = "custom",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "",
					["use_alpha"] = false,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0.4,
					["y"] = 0,
					["x"] = 0,
					["colorA"] = 1,
					["duration"] = "0.5",
					["rotate"] = 0,
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["backgroundColor"] = {
				0.13333333333333, -- [1]
				0.17647058823529, -- [2]
				0.30196078431373, -- [3]
				1, -- [4]
			},
			["sparkHidden"] = "NEVER",
			["useAdjustededMin"] = false,
			["uid"] = "LsMigJZQjZe",
			["anchorFrameFrame"] = "WeakAuras:Astral_Power",
			["regionType"] = "aurabar",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["icon_side"] = "RIGHT",
			["alpha"] = 1,
			["sparkHeight"] = 30,
			["texture"] = "Solid",
			["semver"] = "3.4.7",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Starfire_1",
			["zoom"] = 0,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SELECTFRAME",
			["icon"] = false,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = true,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "spellCount",
						["value"] = "1",
					},
					["changes"] = {
						{
							["property"] = "inverse",
						}, -- [1]
						{
							["value"] = false,
							["property"] = "sub.3.bar_model_visible",
						}, -- [2]
						{
							["property"] = "sub.3.bar_model_alpha",
						}, -- [3]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "==",
								["variable"] = "spellCount",
								["value"] = "1",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.4.glow",
						}, -- [1]
					},
				}, -- [2]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Druid_AfenarUI",
		},
		["Conduct_Buffs_Druid"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 112.5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "8",
						["use_unit"] = true,
						["use_genericShowOn"] = true,
						["unit"] = "player",
						["ownOnly"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
							"Черная душа: Страдание", -- [1]
						},
						["use_showgcd"] = true,
						["unitExists"] = true,
						["auraspellids"] = {
							"340694", -- [1]
							"340609", -- [2]
						},
						["debuffType"] = "HELPFUL",
						["showClones"] = false,
						["type"] = "aura2",
						["use_charges"] = false,
						["custom_hide"] = "timed",
						["charges_operator"] = "==",
						["charges"] = "0",
						["useExactSpellId"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["unevent"] = "auto",
						["event"] = "Cooldown Progress (Spell)",
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = "Блуждающий дух",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["spellName"] = 48181,
						["remOperator"] = ">=",
						["duration"] = "1",
						["use_track"] = true,
						["matchesShowOn"] = "showOnActive",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 48181,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["easeStrength"] = 3,
					["colorFunc"] = "",
					["rotate"] = 0,
					["x"] = 0,
					["use_color"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["border_visible"] = true,
					["border_size"] = 1,
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowColor"] = {
					},
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "TOPRIGHT",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 3,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "TOPRIGHT",
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_anchorYOffset"] = 3,
				}, -- [3]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_visible"] = true,
					["text_shadowXOffset"] = 0,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_time_format"] = 0,
				}, -- [4]
			},
			["height"] = 35,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_class_and_spec"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
					},
				},
				["class_and_spec"] = {
					["multi"] = {
						[103] = true,
						[104] = true,
						[102] = true,
					},
				},
				["talent"] = {
					["single"] = 6,
					["multi"] = {
						[5] = true,
						[6] = true,
						[4] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["spellknown"] = 32388,
				["zoneIds"] = "",
			},
			["desaturate"] = false,
			["config"] = {
			},
			["authorOptions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["xOffset"] = -50.5,
			["displayIcon"] = "INTERFACE\\ICONS\\spell_warlock_demonsoul",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["cooldownTextDisabled"] = true,
			["width"] = 35,
			["frameStrata"] = 2,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Conduct_Buffs_Druid",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "3.4.7",
			["uid"] = "atooQYfYhnc",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["glow_frame"] = "WeakAuras:DS",
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["parent"] = "Druid_AfenarUI",
		},
		["innervate"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = -58,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = false,
						["remaining"] = "3",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["use_remaining"] = false,
						["type"] = "spell",
						["use_genericShowOn"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["subeventPrefix"] = "SPELL",
						["event"] = "Cooldown Progress (Spell)",
						["remaining_operator"] = "<=",
						["realSpellName"] = "啟動",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["custom_hide"] = "timed",
						["spellName"] = 29166,
						["unevent"] = "auto",
						["use_track"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
						["showOn"] = "showOnCooldown",
						["genericShowOn"] = "showAlways",
						["spellName"] = 29166,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 13,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [2]
			},
			["height"] = 30,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 29166,
				["zoneIds"] = "",
			},
			["url"] = "https://wago.io/Afenar_Druid/154",
			["config"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["easeStrength"] = 3,
					["colorFunc"] = "",
					["rotate"] = 0,
					["x"] = 0,
					["use_color"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["parent"] = "Druid_AfenarUI",
			["anchorFrameFrame"] = "WeakAuras:Growl",
			["regionType"] = "icon",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["desaturate"] = false,
			["zoom"] = 0.3,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["do_custom"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["width"] = 30,
			["alpha"] = 0.3,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "innervate",
			["auto"] = true,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["uid"] = "UyWhMk50138",
			["inverse"] = true,
			["xOffset"] = 49,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Blood_Talons"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 74.5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["useGroup_count"] = false,
						["use_inverse"] = true,
						["names"] = {
							"Кровавые когти", -- [1]
						},
						["use_unit"] = true,
						["use_tooltip"] = false,
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["ownOnly"] = true,
						["matchesShowOn"] = "showAlways",
						["custom_hide"] = "timed",
						["buffShowOn"] = "showAlways",
						["unevent"] = "auto",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["duration"] = "1",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 8042,
						["realSpellName"] = "Земной шок",
						["use_spellName"] = true,
						["spellIds"] = {
							145152, -- [1]
						},
						["debuffType"] = "HELPFUL",
						["remOperator"] = ">=",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["auranames"] = {
							"145152", -- [1]
						},
					},
					["untrigger"] = {
						["spellName"] = 8042,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["spellName"] = 0,
						["talent"] = {
							["multi"] = {
								[14] = true,
								[17] = true,
							},
						},
						["duration"] = "1",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = false,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["use_inverse"] = true,
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_visible"] = true,
					["text_shadowXOffset"] = 0,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
				{
					["text_text_format_s_time_precision"] = 1,
					["text_text_format_s_format"] = "timed",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "TOPRIGHT",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 3,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_fontType"] = "OUTLINE",
					["text_shadowYOffset"] = 0,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "TOPRIGHT",
					["text_shadowXOffset"] = 0,
					["text_text_format_s_time_format"] = 0,
					["text_fontSize"] = 18,
					["text_text_format_s_time_dynamic_threshold"] = 0,
					["text_anchorYOffset"] = 3,
				}, -- [3]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["single"] = 19,
					["multi"] = {
						[20] = true,
						[19] = true,
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 20,
					["multi"] = {
						true, -- [1]
						true, -- [2]
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["width"] = 35,
			["auto"] = false,
			["authorOptions"] = {
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["displayIcon"] = 1033474,
			["desaturate"] = false,
			["xOffset"] = -50.5,
			["config"] = {
			},
			["alpha"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["easeStrength"] = 3,
					["colorFunc"] = "",
					["rotate"] = 0,
					["x"] = 0,
					["use_color"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "fade",
					["alpha"] = 0,
					["alphaType"] = "hide",
					["duration_type"] = "seconds",
					["duration"] = "1",
					["easeStrength"] = 3,
					["use_translate"] = false,
					["use_alpha"] = false,
				},
			},
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Blood_Talons",
			["zoom"] = 0.3,
			["frameStrata"] = 3,
			["anchorFrameType"] = "SCREEN",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["uid"] = "URTAYyGw(0S",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["glow_frame"] = "WeakAuras:Omen_of_Clearty",
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["glow_frame"] = "WeakAuras:Omen_of_Clearty",
					["do_sound"] = false,
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 139,
							["property"] = "xOffsetRelative",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["MoonBunnie_Feral Bleed Rake"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    --set spell to display by name\n    local name = \"rake\"\n    \n    local fs = feralSnapshots\n    local unit = UnitGUID(\"target\")\n    if fs and fs[name] and fs[name][unit] then\n        --round value to nearest %\n        local val = floor(fs[name][\"current\"]/fs[name][unit]*100+0.5)\n        if val > 105 then --Change font to green if above this value\n            return format(\"|cFF00FF00%d\", val)\n        elseif val < 95 then --Change font to red if below this value\n            return format(\"|cFFFF0000%d\", val)\n        else --Default grey font color\n            return format(\"|cFF999999%d\", val)\n        end\n    end\n    --Display the string or value below if no snapshot exists on target\n    return ' '\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_alwaystrue"] = true,
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["unevent"] = "auto",
						["event"] = "Conditions",
						["custom_hide"] = "timed",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["check"] = "update",
						["custom_type"] = "status",
						["unit"] = "player",
						["use_absorbMode"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "BOTTOMRIGHT",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 3,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "BOTTOMRIGHT",
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_anchorYOffset"] = -1,
				}, -- [1]
			},
			["height"] = 40,
			["load"] = {
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["width"] = 40,
			["auto"] = true,
			["authorOptions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
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
			["regionType"] = "icon",
			["displayIcon"] = "Interface\\Icons\\Ability_Druid_Disembowel",
			["desaturate"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["config"] = {
			},
			["alpha"] = 1,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["cooldownTextDisabled"] = false,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "MoonBunnie_Feral Bleed Rake",
			["zoom"] = 0.3,
			["frameStrata"] = 3,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 0,
			["uid"] = "brvhlvaHJI7",
			["inverse"] = false,
			["desc"] = "r20 by MoonBunnie for 9.0.0.",
			["conditions"] = {
			},
			["cooldown"] = false,
			["parent"] = "Druid_AfenarUI",
		},
		["Empower_Bond"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 74.5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"327139", -- [1]
							"338142", -- [2]
							"338018", -- [3]
							"327037", -- [4]
						},
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["names"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["auranames"] = {
							"323673", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["use_showgcd"] = true,
						["subeventPrefix"] = "SPELL",
						["matchesShowOn"] = "showOnActive",
						["debuffType"] = "HARMFUL",
						["use_unit"] = true,
						["useName"] = true,
						["unit"] = "target",
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["duration"] = "1",
						["event"] = "Cooldown Progress (Spell)",
						["use_exact_spellName"] = false,
						["realSpellName"] = 326446,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["spellName"] = 326446,
						["unevent"] = "auto",
						["type"] = "spell",
						["use_track"] = true,
						["ownOnly"] = true,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
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
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [3]
			},
			["height"] = 35,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_class_and_spec"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["level"] = "75",
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
					["single"] = 258,
					["multi"] = {
						[103] = true,
						[104] = true,
						[102] = true,
					},
				},
				["talent"] = {
					["single"] = 14,
					["multi"] = {
						[14] = true,
						[16] = true,
						[17] = true,
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PRIEST"] = true,
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["level_operator"] = ">=",
				["use_petbattle"] = false,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["spellknown"] = 323673,
				["zoneIds"] = "",
			},
			["desaturate"] = false,
			["config"] = {
			},
			["authorOptions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["xOffset"] = -88.5,
			["displayIcon"] = 136235,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["cooldownTextDisabled"] = true,
			["width"] = 35,
			["frameStrata"] = 3,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Empower_Bond",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "3.4.7",
			["uid"] = "hVA0oL6EtJ3",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["op"] = "<",
								["variable"] = "expirationTime",
								["value"] = "1",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "expirationTime",
						["value"] = "60",
					},
					["changes"] = {
						{
							["value"] = 14,
							["property"] = "sub.3.text_fontSize",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["op"] = "<",
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 2,
								["op"] = "<",
								["variable"] = "duration",
								["value"] = "2",
							}, -- [1]
							{
								["trigger"] = 3,
								["op"] = "<",
								["variable"] = "duration",
								["value"] = "2",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "sub.3.text_visible",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "inverse",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = {
								1, -- [1]
								0.77254901960784, -- [2]
								0.50196078431373, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.border_color",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "sub.3.text_visible",
						}, -- [4]
					},
				}, -- [5]
			},
			["cooldown"] = true,
			["parent"] = "Druid_AfenarUI",
		},
		["Prowl"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 74.5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["names"] = {
							"Божественное перышко", -- [1]
							"Божественное перышко", -- [2]
							"Божественное перышко", -- [3]
						},
						["use_showgcd"] = false,
						["useCount"] = true,
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["use_genericShowOn"] = true,
						["use_remaining"] = false,
						["spellName"] = 5215,
						["charges_operator"] = "~=",
						["type"] = "spell",
						["count"] = "2",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["countOperator"] = "<=",
						["custom_hide"] = "timed",
						["realSpellName"] = "潛行",
						["use_spellName"] = true,
						["spellIds"] = {
							121536, -- [1]
							158624, -- [2]
							121557, -- [3]
						},
						["unevent"] = "auto",
						["charges"] = "3",
						["debuffType"] = "HELPFUL",
						["use_track"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["genericShowOn"] = "showAlways",
						["spellName"] = 194223,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"768", -- [1]
							"5487", -- [2]
							"783", -- [3]
						},
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["form"] = 0,
						["use_form"] = true,
						["useName"] = true,
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["matchesShowOn"] = "showOnMissing",
						["event"] = "Stance/Form/Aura",
						["use_unit"] = true,
						["auranames"] = {
							"24858", -- [1]
						},
						["use_spellName"] = true,
						["unit"] = "player",
						["type"] = "aura2",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "spell",
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["event"] = "Spell Known",
						["unit"] = "player",
						["use_spellName"] = true,
						["duration"] = "1",
						["use_exact_spellName"] = false,
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 326085,
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "spell",
						["event"] = "Spell Known",
						["unevent"] = "auto",
						["use_unit"] = true,
						["duration"] = "1",
						["use_requirePowerType"] = false,
						["use_exact_spellName"] = false,
						["powertype"] = 4,
						["use_spellName"] = true,
						["use_absorbMode"] = true,
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["use_powertype"] = true,
						["spellName"] = 77493,
					},
					["untrigger"] = {
					},
				}, -- [5]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [2]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["level"] = "80",
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">=",
				["spellknown"] = 194223,
				["zoneIds"] = "",
			},
			["alpha"] = 1,
			["width"] = 35,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135994,
			["regionType"] = "icon",
			["desaturate"] = false,
			["cooldownEdge"] = false,
			["config"] = {
			},
			["useTooltip"] = false,
			["xOffset"] = 0.5,
			["semver"] = "3.4.7",
			["cooldownTextDisabled"] = true,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Prowl",
			["zoom"] = 0.3,
			["frameStrata"] = 3,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["uid"] = "xsyRWSUjQH2",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 5,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 38,
							["property"] = "yOffsetRelative",
						}, -- [1]
						{
							["value"] = -89,
							["property"] = "xOffsetRelative",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = 0,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Ursols_Vortex"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = -58,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = false,
						["remaining"] = "3",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["use_remaining"] = false,
						["type"] = "spell",
						["custom_hide"] = "timed",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["unit"] = "player",
						["realSpellName"] = 102793,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["remaining_operator"] = "<=",
						["spellName"] = 102793,
						["unevent"] = "auto",
						["use_track"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
						["showOn"] = "showOnCooldown",
						["genericShowOn"] = "showAlways",
						["spellName"] = 132469,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 13,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [2]
			},
			["height"] = 30,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 5,
					["multi"] = {
						[5] = true,
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 102793,
				["zoneIds"] = "",
			},
			["auto"] = true,
			["config"] = {
			},
			["authorOptions"] = {
			},
			["parent"] = "Druid_AfenarUI",
			["regionType"] = "icon",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["easeStrength"] = 3,
					["colorFunc"] = "",
					["rotate"] = 0,
					["x"] = 0,
					["use_color"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["desaturate"] = false,
			["xOffset"] = -50,
			["width"] = 30,
			["alpha"] = 0.3,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Ursols_Vortex",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "To9J(UYhAoh",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["do_custom"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Brutal_Strike"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 74.5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["names"] = {
							"Божественное перышко", -- [1]
							"Божественное перышко", -- [2]
							"Божественное перышко", -- [3]
						},
						["use_showgcd"] = false,
						["useCount"] = true,
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["use_genericShowOn"] = true,
						["use_remaining"] = false,
						["spellName"] = 202028,
						["charges_operator"] = "~=",
						["type"] = "spell",
						["count"] = "2",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["countOperator"] = "<=",
						["custom_hide"] = "timed",
						["realSpellName"] = 202028,
						["use_spellName"] = true,
						["spellIds"] = {
							121536, -- [1]
							158624, -- [2]
							121557, -- [3]
						},
						["unevent"] = "auto",
						["charges"] = "3",
						["debuffType"] = "HELPFUL",
						["use_track"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 202028,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 14,
						},
						["use_absorbMode"] = true,
						["event"] = "Talent Known",
						["unit"] = "player",
						["use_talent"] = true,
						["use_unit"] = true,
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 4,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_text_format_s_time_precision"] = 1,
					["text_text_format_s_format"] = "timed",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "TOPRIGHT",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 4,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_fontType"] = "OUTLINE",
					["text_shadowYOffset"] = 0,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "TOPRIGHT",
					["text_shadowXOffset"] = 0,
					["text_text_format_s_time_format"] = 0,
					["text_fontSize"] = 18,
					["text_text_format_s_time_dynamic_threshold"] = 0,
					["text_anchorYOffset"] = 3,
				}, -- [3]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [4]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 17,
					["multi"] = {
						[5] = true,
						[6] = true,
						[17] = true,
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 202028,
				["zoneIds"] = "",
			},
			["auto"] = true,
			["config"] = {
			},
			["authorOptions"] = {
			},
			["parent"] = "Druid_AfenarUI",
			["regionType"] = "icon",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["desaturate"] = false,
			["xOffset"] = 88.5,
			["width"] = 35,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Brutal_Strike",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "sbhrKcPEDsv",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "insufficientResources",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "==",
								["variable"] = "charges",
								["value"] = "0",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["op"] = "<",
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["variable"] = "expirationTime",
								["value"] = "1",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = -38,
							["property"] = "xOffsetRelative",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "duration",
						["value"] = "2",
					},
					["changes"] = {
						{
							["property"] = "sub.4.text_visible",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Ironfur_T"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				0.90588235294118, -- [2]
				0.74509803921569, -- [3]
				1, -- [4]
			},
			["displayText"] = "%p",
			["yOffset"] = 16.5,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/Afenar_Druid/154",
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
						["type"] = "aura2",
						["useExactSpellId"] = true,
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["auraspellids"] = {
							"192081", -- [1]
						},
						["spellIds"] = {
						},
						["useName"] = false,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 45,
			["wordWrap"] = "WordWrap",
			["font"] = "Expressway",
			["version"] = 154,
			["subRegions"] = {
			},
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
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
				["use_class_and_spec"] = false,
				["class_and_spec"] = {
					["multi"] = {
						[103] = true,
						[104] = true,
						[102] = true,
					},
				},
				["zoneIds"] = "",
			},
			["fontSize"] = 13,
			["shadowXOffset"] = 0,
			["displayText_format_p_time_dynamic_threshold"] = 0,
			["anchorFrameFrame"] = "WeakAuras:Guardian_Rage",
			["regionType"] = "text",
			["selfPoint"] = "CENTER",
			["parent"] = "Druid_AfenarUI",
			["fixedWidth"] = 200,
			["displayText_format_p_time_precision"] = 1,
			["semver"] = "3.4.7",
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
			["config"] = {
			},
			["justify"] = "CENTER",
			["tocversion"] = 90002,
			["id"] = "Ironfur_T",
			["xOffset"] = -94,
			["frameStrata"] = 3,
			["anchorFrameType"] = "SELECTFRAME",
			["shadowYOffset"] = 0,
			["uid"] = "ebRBOxX5apy",
			["automaticWidth"] = "Auto",
			["authorOptions"] = {
			},
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["preferToUpdate"] = false,
		},
		["Moonfire_Feral"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 74.5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["useGroup_count"] = false,
						["use_inverse"] = true,
						["names"] = {
							"Лунный огонь", -- [1]
						},
						["unitExists"] = true,
						["use_tooltip"] = false,
						["use_unit"] = true,
						["unit"] = "target",
						["subeventPrefix"] = "SPELL",
						["matchesShowOn"] = "showAlways",
						["type"] = "aura2",
						["debuffType"] = "HARMFUL",
						["unevent"] = "auto",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["duration"] = "1",
						["event"] = "Cooldown Progress (Spell)",
						["buffShowOn"] = "showAlways",
						["realSpellName"] = "Земной шок",
						["use_spellName"] = true,
						["spellIds"] = {
							164812, -- [1]
						},
						["spellName"] = 8042,
						["remOperator"] = ">=",
						["combineMatches"] = "showLowest",
						["ownOnly"] = true,
						["auranames"] = {
							"164812", -- [1]
						},
					},
					["untrigger"] = {
						["spellName"] = 8042,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 4,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_visible"] = true,
					["text_shadowXOffset"] = 0,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_time_format"] = 0,
				}, -- [3]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["width"] = 35,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["easeStrength"] = 3,
					["colorFunc"] = "",
					["rotate"] = 0,
					["x"] = 0,
					["use_color"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "fade",
					["alpha"] = 0,
					["alphaType"] = "hide",
					["duration_type"] = "seconds",
					["duration"] = "1",
					["easeStrength"] = 3,
					["use_translate"] = false,
					["use_alpha"] = false,
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["displayIcon"] = 136096,
			["zoom"] = 0.3,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["config"] = {
			},
			["alpha"] = 1,
			["auto"] = false,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Moonfire_Feral",
			["authorOptions"] = {
			},
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 0.5,
			["uid"] = "G73b2PXiSAE",
			["inverse"] = false,
			["desaturate"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["op"] = "<",
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["variable"] = "expirationTime",
								["value"] = "3.6",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "buffed",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "hastarget",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = -1,
								["variable"] = "attackabletarget",
								["value"] = 0,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Fury_of_Elune"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 74.5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "202770",
						["auranames"] = {
							"202770", -- [1]
						},
						["duration"] = "8",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["unevent"] = "timed",
						["ownOnly"] = true,
						["names"] = {
						},
						["event"] = "Combat Log",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["type"] = "combatlog",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["sourceUnit"] = "player",
						["unit"] = "target",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_ignoreSpellKnown"] = false,
						["rem"] = "10.8",
						["use_matchedRune"] = false,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["use_showgcd"] = true,
						["names"] = {
							"Предчувствие", -- [1]
							"Предчувствие", -- [2]
						},
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["spellName"] = 202770,
						["ownOnly"] = true,
						["type"] = "spell",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["duration"] = "1",
						["event"] = "Cooldown Progress (Spell)",
						["use_exact_spellName"] = false,
						["realSpellName"] = 202770,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["remOperator"] = ">=",
						["track"] = "auto",
						["use_track"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["track"] = "auto",
						["showOn"] = "showAlways",
						["spellName"] = 202770,
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 4,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_text_format_p.m_format"] = "timed",
					["text_fixedWidth"] = 64,
					["rotateText"] = "NONE",
					["text_text_format_p_decimal_precision"] = 0,
					["text_text_format_p_gcd_gcd"] = false,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_text_format_p_gcd_channel"] = false,
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_round_type"] = "ceil",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["text_text_format_p.m_time_precision"] = 1,
					["type"] = "subtext",
					["text_font"] = "Expressway",
					["text_text_format_p.m_time_dynamic_threshold"] = 60,
					["text_text_format_p.m_time_format"] = 0,
					["text_anchorPoint"] = "CENTER",
					["text_visible"] = true,
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_p_time_dynamic_threshold"] = 0,
				}, -- [3]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 20,
					["multi"] = {
						true, -- [1]
						true, -- [2]
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						true, -- [2]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["width"] = 35,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration"] = "",
					["colorA"] = 1,
					["colorG"] = 1,
					["use_translate"] = false,
					["x"] = -1,
					["type"] = "none",
					["scalex"] = 1,
					["easeType"] = "none",
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      local angle = (progress + 0.25) * 2 * math.pi\n      return startX + (math.cos(angle) * deltaX * math.cos(angle*2)), startY + (math.abs(math.cos(angle)) * deltaY * math.sin(angle*2))\n    end\n  ",
					["scaley"] = 1,
					["alpha"] = 0,
					["easeStrength"] = 3,
					["y"] = 1,
					["colorType"] = "custom",
					["colorB"] = 1,
					["use_color"] = false,
					["colorFunc"] = "",
					["rotate"] = 0,
					["duration_type"] = "seconds",
					["translateType"] = "spiralandpulse",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["displayIcon"] = "Interface\\Icons\\Ability_Druid_Dreamstate",
			["zoom"] = 0.3,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
			},
			["config"] = {
			},
			["alpha"] = 1,
			["auto"] = true,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Fury_of_Elune",
			["authorOptions"] = {
			},
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 50.5,
			["uid"] = "AyQ6h1RFhVZ",
			["inverse"] = true,
			["desaturate"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "inverse",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = {
								1, -- [1]
								0.77254901960784, -- [2]
								0.50196078431373, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.border_color",
						}, -- [3]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["op"] = "<",
								["variable"] = "expirationTime",
								["value"] = "1",
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "duration",
						["value"] = "2",
					},
					["changes"] = {
						{
							["property"] = "sub.3.text_visible",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "duration",
						["value"] = "2",
					},
					["changes"] = {
						{
							["property"] = "sub.3.text_visible",
						}, -- [1]
					},
				}, -- [5]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Incapacitating_Roar"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = -58,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = false,
						["remaining"] = "3",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["use_remaining"] = false,
						["type"] = "spell",
						["use_genericShowOn"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["subeventPrefix"] = "SPELL",
						["event"] = "Cooldown Progress (Spell)",
						["remaining_operator"] = "<=",
						["realSpellName"] = "挫志咆哮",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["custom_hide"] = "timed",
						["spellName"] = 99,
						["unevent"] = "auto",
						["use_track"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
						["showOn"] = "showOnCooldown",
						["genericShowOn"] = "showAlways",
						["spellName"] = 22570,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "spell",
						["debuffType"] = "HELPFUL",
						["unevent"] = "auto",
						["use_track"] = true,
						["duration"] = "1",
						["use_requirePowerType"] = true,
						["unit"] = "player",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["event"] = "Spell Known",
						["use_powertype"] = true,
						["spellName"] = 155783,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 13,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [2]
			},
			["height"] = 30,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 5,
					["multi"] = {
						[5] = true,
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 99,
				["zoneIds"] = "",
			},
			["auto"] = true,
			["config"] = {
			},
			["authorOptions"] = {
			},
			["parent"] = "Druid_AfenarUI",
			["regionType"] = "icon",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["easeStrength"] = 3,
					["colorFunc"] = "",
					["rotate"] = 0,
					["x"] = 0,
					["use_color"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["desaturate"] = false,
			["xOffset"] = -50,
			["width"] = 30,
			["alpha"] = 0.3,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Incapacitating_Roar",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "obG3EGuILW1",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["do_custom"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = -74,
							["property"] = "xOffsetRelative",
						}, -- [1]
						{
							["value"] = 53,
							["property"] = "yOffsetRelative",
						}, -- [2]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Growl"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = -38.000061035156,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["use_showgcd"] = false,
						["remaining"] = "3",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["use_remaining"] = false,
						["type"] = "spell",
						["custom_hide"] = "timed",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["unit"] = "player",
						["realSpellName"] = "低吼",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["remaining_operator"] = "<=",
						["spellName"] = 6795,
						["unevent"] = "auto",
						["use_track"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
						["showOn"] = "showOnCooldown",
						["genericShowOn"] = "showOnCooldown",
						["spellName"] = 6795,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 13,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [2]
			},
			["height"] = 30,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 5,
					["multi"] = {
						[5] = true,
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 6795,
				["zoneIds"] = "",
			},
			["auto"] = true,
			["config"] = {
			},
			["authorOptions"] = {
			},
			["parent"] = "Druid_AfenarUI",
			["regionType"] = "icon",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["easeStrength"] = 3,
					["colorFunc"] = "",
					["rotate"] = 0,
					["x"] = 0,
					["use_color"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["desaturate"] = true,
			["xOffset"] = -124,
			["width"] = 30,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Growl",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["frameStrata"] = 3,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "KUgPnGxllWb",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["do_custom"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Tiger's_Fury"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"5217", -- [1]
						},
						["ownOnly"] = true,
						["unit"] = "player",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
							"Тигриное неистовство", -- [1]
						},
						["useGroup_count"] = false,
						["spellIds"] = {
							5217, -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["type"] = "aura2",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["names"] = {
							"Божественное перышко", -- [1]
							"Божественное перышко", -- [2]
							"Божественное перышко", -- [3]
						},
						["use_showgcd"] = true,
						["useCount"] = true,
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["use_genericShowOn"] = true,
						["use_remaining"] = false,
						["spellName"] = 5217,
						["charges_operator"] = "~=",
						["type"] = "spell",
						["count"] = "2",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["countOperator"] = "<=",
						["custom_hide"] = "timed",
						["realSpellName"] = "猛虎之怒",
						["use_spellName"] = true,
						["spellIds"] = {
							121536, -- [1]
							158624, -- [2]
							121557, -- [3]
						},
						["unevent"] = "auto",
						["charges"] = "3",
						["debuffType"] = "HELPFUL",
						["use_track"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 5217,
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "5217",
						["unevent"] = "timed",
						["duration"] = "0.6",
						["event"] = "Combat Log",
						["use_unit"] = true,
						["use_spellId"] = true,
						["use_absorbMode"] = true,
						["use_sourceUnit"] = true,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["sourceUnit"] = "player",
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["glowFrequency"] = 0,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 20,
					["glowYOffset"] = 1,
					["glowColor"] = {
						1, -- [1]
						0.64705882352941, -- [2]
						0.31764705882353, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 1,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 30,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [3]
			},
			["height"] = 40,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 5217,
				["zoneIds"] = "",
			},
			["alpha"] = 1,
			["width"] = 40,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135994,
			["regionType"] = "icon",
			["desaturate"] = false,
			["cooldownEdge"] = false,
			["config"] = {
			},
			["useTooltip"] = false,
			["xOffset"] = -86,
			["semver"] = "3.4.7",
			["cooldownTextDisabled"] = true,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Tiger's_Fury",
			["zoom"] = 0.3,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["uid"] = "j1a4hMtyMzR",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["op"] = "<",
										["variable"] = "expirationTime",
										["value"] = "1",
									}, -- [1]
									{
										["trigger"] = 2,
										["variable"] = "onCooldown",
										["value"] = 1,
									}, -- [2]
								},
							}, -- [1]
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "duration",
						["value"] = "2",
					},
					["changes"] = {
						{
							["property"] = "sub.3.text_visible",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "inverse",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = true,
							["property"] = "sub.3.text_visible",
						}, -- [3]
						{
							["value"] = {
								1, -- [1]
								0.77254901960784, -- [2]
								0.50196078431373, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.border_color",
						}, -- [4]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.76862745098039, -- [1]
								1, -- [2]
								0.45098039215686, -- [3]
								1, -- [4]
							},
							["property"] = "sub.2.border_color",
						}, -- [1]
						{
							["value"] = {
								0.61960784313725, -- [1]
								0.95686274509804, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.border_color",
						}, -- [2]
						{
							["value"] = true,
							["property"] = "sub.3.text_visible",
						}, -- [3]
					},
				}, -- [5]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Druid_PvPT1"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 61,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["custom_hide"] = "timed",
						["unevent"] = "auto",
						["use_showOn"] = true,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["names"] = {
						},
						["realSpellName"] = 209749,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["spellName"] = 209749,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["spellName"] = 209749,
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "slideleft",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "slideleft",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 13,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [2]
			},
			["height"] = 30,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["single"] = 11,
					["multi"] = {
						true, -- [1]
						[11] = true,
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 209749,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Afenar_Druid/154",
			["selfPoint"] = "CENTER",
			["anchorFrameFrame"] = "ElvUF_Player",
			["regionType"] = "icon",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = true,
					["glow_type"] = "buttonOverlay",
					["glow_frame_type"] = "FRAMESELECTOR",
				},
			},
			["desaturate"] = false,
			["auto"] = true,
			["zoom"] = 0.3,
			["width"] = 30,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Druid_PvPT1",
			["alpha"] = 1,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = -124,
			["uid"] = "0)lIVuoenmp",
			["inverse"] = true,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["parent"] = "Druid_AfenarUI",
		},
		["Bristling_Fur"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 74.5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"155835", -- [1]
						},
						["ownOnly"] = true,
						["unit"] = "player",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
							"Колючий мех", -- [1]
						},
						["useGroup_count"] = false,
						["spellIds"] = {
							155835, -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["type"] = "aura2",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["names"] = {
							"Божественное перышко", -- [1]
							"Божественное перышко", -- [2]
							"Божественное перышко", -- [3]
						},
						["use_showgcd"] = true,
						["useCount"] = true,
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["use_genericShowOn"] = true,
						["use_remaining"] = false,
						["spellName"] = 155835,
						["charges_operator"] = "~=",
						["type"] = "spell",
						["count"] = "2",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["countOperator"] = "<=",
						["custom_hide"] = "timed",
						["realSpellName"] = 155835,
						["use_spellName"] = true,
						["spellIds"] = {
							121536, -- [1]
							158624, -- [2]
							121557, -- [3]
						},
						["unevent"] = "auto",
						["charges"] = "3",
						["debuffType"] = "HELPFUL",
						["use_track"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 155835,
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "155835",
						["unevent"] = "timed",
						["duration"] = "0.6",
						["event"] = "Combat Log",
						["use_unit"] = true,
						["use_spellId"] = true,
						["use_absorbMode"] = true,
						["use_sourceUnit"] = true,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["sourceUnit"] = "player",
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["glowFrequency"] = 0,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 20,
					["glowYOffset"] = 1,
					["glowColor"] = {
						1, -- [1]
						0.64705882352941, -- [2]
						0.31764705882353, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 1,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 30,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [3]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 155835,
				["zoneIds"] = "",
			},
			["alpha"] = 1,
			["width"] = 35,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135994,
			["regionType"] = "icon",
			["desaturate"] = false,
			["cooldownEdge"] = false,
			["config"] = {
			},
			["useTooltip"] = false,
			["xOffset"] = 88.5,
			["semver"] = "3.4.7",
			["cooldownTextDisabled"] = true,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Bristling_Fur",
			["zoom"] = 0.3,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["uid"] = "2b6IDtu5H(1",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "inverse",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = {
								1, -- [1]
								0.77254901960784, -- [2]
								0.50196078431373, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.border_color",
						}, -- [3]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 3,
								["op"] = "<",
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["op"] = "<",
										["variable"] = "expirationTime",
										["value"] = "1",
									}, -- [1]
									{
										["trigger"] = 2,
										["variable"] = "onCooldown",
										["value"] = 1,
									}, -- [2]
								},
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "duration",
						["value"] = "2",
					},
					["changes"] = {
						{
							["property"] = "sub.3.text_visible",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Pulverize"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 74.5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"80313", -- [1]
						},
						["ownOnly"] = true,
						["unit"] = "target",
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
							"Колючий мех", -- [1]
						},
						["useGroup_count"] = false,
						["spellIds"] = {
							155835, -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["type"] = "aura2",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["names"] = {
							"Божественное перышко", -- [1]
							"Божественное перышко", -- [2]
							"Божественное перышко", -- [3]
						},
						["use_showgcd"] = true,
						["useCount"] = true,
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["use_genericShowOn"] = true,
						["use_remaining"] = false,
						["spellName"] = 80313,
						["charges_operator"] = "~=",
						["type"] = "spell",
						["count"] = "2",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["countOperator"] = "<=",
						["custom_hide"] = "timed",
						["realSpellName"] = 80313,
						["use_spellName"] = true,
						["spellIds"] = {
							121536, -- [1]
							158624, -- [2]
							121557, -- [3]
						},
						["unevent"] = "auto",
						["charges"] = "3",
						["debuffType"] = "HELPFUL",
						["use_track"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 155835,
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "80313",
						["unevent"] = "timed",
						["duration"] = "0.6",
						["event"] = "Combat Log",
						["use_unit"] = true,
						["use_spellId"] = true,
						["use_absorbMode"] = true,
						["use_sourceUnit"] = true,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["sourceUnit"] = "player",
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "unit",
						["spellName"] = 0,
						["talent"] = {
							["single"] = 3,
						},
						["duration"] = "1",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["use_inverse"] = true,
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["glowFrequency"] = 0,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 20,
					["glowYOffset"] = 1,
					["glowColor"] = {
						1, -- [1]
						0.64705882352941, -- [2]
						0.31764705882353, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 1,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 30,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [3]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 21,
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 80313,
				["zoneIds"] = "",
			},
			["alpha"] = 1,
			["width"] = 35,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135994,
			["regionType"] = "icon",
			["desaturate"] = false,
			["cooldownEdge"] = false,
			["config"] = {
			},
			["useTooltip"] = false,
			["xOffset"] = 50.5,
			["semver"] = "3.4.7",
			["cooldownTextDisabled"] = true,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Pulverize",
			["zoom"] = 0.3,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["uid"] = "Oewuz38LPx3",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "spellUsable",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "inverse",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 3,
								["op"] = "<",
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["op"] = "<",
										["variable"] = "expirationTime",
										["value"] = "1",
									}, -- [1]
									{
										["trigger"] = 2,
										["variable"] = "onCooldown",
										["value"] = 1,
									}, -- [2]
								},
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 4,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 38,
							["property"] = "xOffsetRelative",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "duration",
						["value"] = "2",
					},
					["changes"] = {
						{
							["property"] = "sub.3.text_visible",
						}, -- [1]
					},
				}, -- [5]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Moonfire_Guardian"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["useGroup_count"] = false,
						["use_inverse"] = true,
						["names"] = {
							"Лунный огонь", -- [1]
						},
						["unitExists"] = true,
						["use_tooltip"] = false,
						["use_unit"] = true,
						["unit"] = "target",
						["subeventPrefix"] = "SPELL",
						["matchesShowOn"] = "showAlways",
						["type"] = "aura2",
						["debuffType"] = "HARMFUL",
						["unevent"] = "auto",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["duration"] = "1",
						["event"] = "Cooldown Progress (Spell)",
						["buffShowOn"] = "showAlways",
						["realSpellName"] = "Земной шок",
						["use_spellName"] = true,
						["spellIds"] = {
							164812, -- [1]
						},
						["spellName"] = 8042,
						["remOperator"] = ">=",
						["combineMatches"] = "showLowest",
						["ownOnly"] = true,
						["auranames"] = {
							"164812", -- [1]
						},
					},
					["untrigger"] = {
						["spellName"] = 8042,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "spell",
						["unevent"] = "auto",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["realSpellName"] = "Лунный огонь",
						["use_spellName"] = true,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["use_absorbMode"] = true,
						["event"] = "Health",
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 8921,
					},
					["untrigger"] = {
						["spellName"] = 8921,
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 4,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_visible"] = true,
					["text_shadowXOffset"] = 0,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_time_format"] = 0,
				}, -- [3]
			},
			["height"] = 40,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["width"] = 40,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["easeStrength"] = 3,
					["colorFunc"] = "",
					["rotate"] = 0,
					["x"] = 0,
					["use_color"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "fade",
					["alpha"] = 0,
					["alphaType"] = "hide",
					["duration_type"] = "seconds",
					["duration"] = "1",
					["easeStrength"] = 3,
					["use_translate"] = false,
					["use_alpha"] = false,
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["displayIcon"] = 136096,
			["zoom"] = 0.3,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["config"] = {
			},
			["alpha"] = 1,
			["auto"] = false,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Moonfire_Guardian",
			["authorOptions"] = {
			},
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = -86,
			["uid"] = "98zeic6SKsz",
			["inverse"] = false,
			["desaturate"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["op"] = "<",
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["variable"] = "expirationTime",
								["value"] = "4.2",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "buffed",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "attackabletarget",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = -1,
								["variable"] = "hastarget",
								["value"] = 0,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Feral_Frenzy"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 74.5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["spellId"] = "106951",
						["ownOnly"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
							"Тигриное неистовство", -- [1]
						},
						["use_showgcd"] = false,
						["custom_hide"] = "timed",
						["spellName"] = 274837,
						["debuffType"] = "HELPFUL",
						["use_spellName"] = true,
						["type"] = "spell",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["duration"] = "1",
						["event"] = "Cooldown Progress (Spell)",
						["spellIds"] = {
							5217, -- [1]
						},
						["realSpellName"] = 274837,
						["use_spellId"] = true,
						["name"] = "Берсерк",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["unevent"] = "auto",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 274837,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["spellName"] = 0,
						["talent"] = {
							["multi"] = {
								[14] = true,
								[17] = true,
							},
						},
						["duration"] = "1",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = false,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["use_inverse"] = true,
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [2]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["single"] = 16,
					["multi"] = {
						[16] = true,
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 21,
					["multi"] = {
						true, -- [1]
						true, -- [2]
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 274837,
				["zoneIds"] = "",
			},
			["width"] = 35,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["scalex"] = 1.05,
					["colorA"] = 1,
					["alphaType"] = "straight",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["use_scale"] = false,
					["easeStrength"] = 3,
					["use_translate"] = false,
					["use_alpha"] = false,
					["type"] = "none",
					["scaleType"] = "pulse",
					["scaleFunc"] = "function(progress, startX, startY, scaleX, scaleY)\n  local angle = (progress * 2 * math.pi) - (math.pi / 2)\n  return startX + (((math.sin(angle) + 1)/2) * (scaleX - 1)), startY + (((math.sin(angle) + 1)/2) * (scaleY - 1))\nend\n",
					["easeType"] = "none",
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      local angle = (progress + 0.25) * 2 * math.pi\n      return startX + (math.cos(angle) * deltaX * math.cos(angle*2)), startY + (math.abs(math.cos(angle)) * deltaY * math.sin(angle*2))\n    end\n  ",
					["use_color"] = false,
					["alpha"] = 0.6,
					["colorType"] = "custom",
					["y"] = 1,
					["x"] = -1,
					["scaley"] = 1.05,
					["translateType"] = "spiralandpulse",
					["colorFunc"] = "",
					["rotate"] = 0,
					["duration_type"] = "seconds",
					["duration"] = "",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["displayIcon"] = "Interface\\Icons\\inv_knife_1h_artifactfrostsaber_d_01",
			["zoom"] = 0.3,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["glow_frame"] = "WeakAuras:Tiger's Fury",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["config"] = {
			},
			["alpha"] = 1,
			["auto"] = true,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Feral_Frenzy",
			["authorOptions"] = {
			},
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = -50.5,
			["uid"] = "yDBAFaL77Zs",
			["inverse"] = true,
			["desaturate"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "spellUsable",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 139,
							["property"] = "xOffsetRelative",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "duration",
						["value"] = "2",
					},
					["changes"] = {
						{
							["property"] = "sub.2.text_visible",
						}, -- [1]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Berserk_Guardian"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["useGroup_count"] = false,
						["duration"] = "1",
						["unit"] = "player",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["buffShowOn"] = "showOnActive",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["auraspellids"] = {
							"102558", -- [1]
							"50334", -- [2]
						},
						["auranames"] = {
							"106951", -- [1]
							"102543", -- [2]
							"106951", -- [3]
						},
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unevent"] = "timed",
						["useExactSpellId"] = true,
						["ownOnly"] = true,
						["spellIds"] = {
							106951, -- [1]
							102543, -- [2]
						},
						["names"] = {
							"Берсерк", -- [1]
							"Воплощение: Король джунглей", -- [2]
						},
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["matchesShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["names"] = {
							"Божественное перышко", -- [1]
							"Божественное перышко", -- [2]
							"Божественное перышко", -- [3]
						},
						["use_showgcd"] = true,
						["useCount"] = true,
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["use_genericShowOn"] = true,
						["use_remaining"] = false,
						["spellName"] = 50334,
						["charges_operator"] = "~=",
						["type"] = "spell",
						["count"] = "2",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["countOperator"] = "<=",
						["custom_hide"] = "timed",
						["realSpellName"] = 50334,
						["use_spellName"] = true,
						["spellIds"] = {
							121536, -- [1]
							158624, -- [2]
							121557, -- [3]
						},
						["unevent"] = "auto",
						["charges"] = "3",
						["debuffType"] = "HELPFUL",
						["use_track"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 106951,
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "50334",
						["unevent"] = "timed",
						["duration"] = "0.6",
						["event"] = "Combat Log",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["use_spellId"] = true,
						["use_cloneId"] = false,
						["use_sourceUnit"] = true,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["sourceUnit"] = "player",
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "102558",
						["unevent"] = "timed",
						["duration"] = "0.6",
						["event"] = "Combat Log",
						["subeventPrefix"] = "SPELL",
						["use_spellId"] = true,
						["use_sourceUnit"] = true,
						["sourceUnit"] = "player",
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["glowFrequency"] = 0,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 20,
					["glowYOffset"] = 1,
					["glowColor"] = {
						1, -- [1]
						0.64705882352941, -- [2]
						0.31764705882353, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 1,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 30,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [3]
			},
			["height"] = 40,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 106951,
				["zoneIds"] = "",
			},
			["alpha"] = 1,
			["width"] = 40,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135994,
			["regionType"] = "icon",
			["desaturate"] = false,
			["cooldownEdge"] = false,
			["config"] = {
			},
			["useTooltip"] = false,
			["xOffset"] = 86,
			["semver"] = "3.4.7",
			["cooldownTextDisabled"] = true,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Berserk_Guardian",
			["zoom"] = 0.3,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["uid"] = "0A0ODL(kxQG",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "expirationTime",
						["value"] = "60",
					},
					["changes"] = {
						{
							["value"] = 14,
							["property"] = "sub.3.text_fontSize",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["op"] = "<",
										["variable"] = "expirationTime",
										["value"] = "1",
									}, -- [1]
									{
										["trigger"] = 2,
										["variable"] = "onCooldown",
										["value"] = 1,
									}, -- [2]
								},
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "duration",
						["value"] = "2",
					},
					["changes"] = {
						{
							["property"] = "sub.3.text_visible",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "inverse",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = 16,
							["property"] = "sub.3.text_fontSize",
						}, -- [3]
						{
							["value"] = {
								1, -- [1]
								0.77254901960784, -- [2]
								0.50196078431373, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.border_color",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "sub.3.text_visible",
						}, -- [5]
					},
				}, -- [5]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Warrior_of_the_Elune"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 74.5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"202425", -- [1]
						},
						["ownOnly"] = true,
						["unit"] = "player",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
							"Воин Элуны", -- [1]
						},
						["useGroup_count"] = false,
						["spellIds"] = {
							202425, -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["type"] = "aura2",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["names"] = {
							"Божественное перышко", -- [1]
							"Божественное перышко", -- [2]
							"Божественное перышко", -- [3]
						},
						["use_showgcd"] = true,
						["useCount"] = true,
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["use_genericShowOn"] = true,
						["use_remaining"] = false,
						["spellName"] = 202425,
						["charges_operator"] = "~=",
						["type"] = "spell",
						["count"] = "2",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["countOperator"] = "<=",
						["custom_hide"] = "timed",
						["realSpellName"] = 202425,
						["use_spellName"] = true,
						["spellIds"] = {
							121536, -- [1]
							158624, -- [2]
							121557, -- [3]
						},
						["unevent"] = "auto",
						["charges"] = "3",
						["debuffType"] = "HELPFUL",
						["use_track"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 202425,
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "202425",
						["unevent"] = "timed",
						["duration"] = "1",
						["event"] = "Combat Log",
						["use_unit"] = true,
						["use_spellId"] = true,
						["use_absorbMode"] = true,
						["use_sourceUnit"] = true,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["sourceUnit"] = "player",
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["glowFrequency"] = 0,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 20,
					["glowYOffset"] = 1,
					["glowColor"] = {
						1, -- [1]
						0.64705882352941, -- [2]
						0.31764705882353, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 1,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 30,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_text_format_s_time_precision"] = 1,
					["text_text_format_s_format"] = "timed",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "TOPRIGHT",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 3,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_fontType"] = "OUTLINE",
					["text_shadowYOffset"] = 0,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "TOPRIGHT",
					["text_shadowXOffset"] = 0,
					["text_text_format_s_time_format"] = 0,
					["text_fontSize"] = 18,
					["text_text_format_s_time_dynamic_threshold"] = 0,
					["text_anchorYOffset"] = 3,
				}, -- [3]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 3,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [4]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 202425,
				["zoneIds"] = "",
			},
			["alpha"] = 1,
			["width"] = 35,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135994,
			["regionType"] = "icon",
			["desaturate"] = false,
			["cooldownEdge"] = false,
			["config"] = {
			},
			["useTooltip"] = false,
			["xOffset"] = -50.5,
			["semver"] = "3.4.7",
			["cooldownTextDisabled"] = true,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Warrior_of_the_Elune",
			["zoom"] = 0.3,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["uid"] = "blKPvfg3zFS",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
					["do_glow"] = false,
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "inverse",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = {
								1, -- [1]
								0.77254901960784, -- [2]
								0.50196078431373, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.border_color",
						}, -- [3]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["op"] = "<",
										["variable"] = "expirationTime",
										["value"] = "1",
									}, -- [1]
									{
										["trigger"] = 2,
										["variable"] = "onCooldown",
										["value"] = 1,
									}, -- [2]
								},
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "duration",
					},
					["changes"] = {
						{
							["property"] = "sub.4.text_visible",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["New_Moon"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 74.5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["use_showgcd"] = true,
						["subeventPrefix"] = "SPELL",
						["charges"] = "1",
						["custom_hide"] = "timed",
						["charges_operator"] = ">=",
						["type"] = "spell",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["duration"] = "1",
						["realSpellName"] = 202767,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["spellName"] = 202767,
						["unevent"] = "auto",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 202767,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 4,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_text_format_s_time_precision"] = 1,
					["text_text_format_s_format"] = "timed",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "TOPRIGHT",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 3,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_fontType"] = "OUTLINE",
					["text_shadowYOffset"] = 0,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "TOPRIGHT",
					["text_shadowXOffset"] = 0,
					["text_text_format_s_time_format"] = 0,
					["text_fontSize"] = 18,
					["text_text_format_s_time_dynamic_threshold"] = 0,
					["text_anchorYOffset"] = 3,
				}, -- [3]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 3,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [4]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["SHAMAN"] = true,
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 21,
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 202768,
				["zoneIds"] = "",
			},
			["auto"] = true,
			["config"] = {
			},
			["authorOptions"] = {
			},
			["parent"] = "Druid_AfenarUI",
			["regionType"] = "icon",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration"] = "",
					["colorA"] = 1,
					["colorG"] = 1,
					["use_translate"] = false,
					["x"] = -1,
					["type"] = "none",
					["scalex"] = 1,
					["easeType"] = "none",
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      local angle = (progress + 0.25) * 2 * math.pi\n      return startX + (math.cos(angle) * deltaX * math.cos(angle*2)), startY + (math.abs(math.cos(angle)) * deltaY * math.sin(angle*2))\n    end\n  ",
					["scaley"] = 1,
					["alpha"] = 0,
					["easeStrength"] = 3,
					["y"] = -1,
					["colorType"] = "custom",
					["colorB"] = 1,
					["use_color"] = false,
					["colorFunc"] = "",
					["rotate"] = 0,
					["duration_type"] = "seconds",
					["translateType"] = "spiralandpulse",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "fade",
					["alpha"] = 0,
					["alphaType"] = "hide",
					["duration_type"] = "seconds",
					["duration"] = "1",
					["easeStrength"] = 3,
					["use_translate"] = false,
					["use_alpha"] = false,
				},
			},
			["desaturate"] = false,
			["xOffset"] = 50.5,
			["width"] = 35,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "New_Moon",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["frameStrata"] = 3,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "8FhTN8G787h",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "charges",
						["value"] = "0",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["variable"] = "expirationTime",
								["value"] = "1",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "duration",
						["value"] = "2",
					},
					["changes"] = {
						{
							["property"] = "sub.4.text_visible",
						}, -- [1]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Wild_Growth_RA"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = -91.001403808594,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_charges"] = false,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["custom_hide"] = "timed",
						["charges"] = "1",
						["debuffType"] = "HELPFUL",
						["charges_operator"] = ">=",
						["type"] = "spell",
						["names"] = {
							"Shooting Stars", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["duration"] = "1",
						["realSpellName"] = 48438,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["spellName"] = 48438,
						["unevent"] = "auto",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["showOn"] = "showOnCooldown",
						["genericShowOn"] = "showOnCooldown",
						["spellName"] = 48438,
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 13,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [2]
			},
			["height"] = 30,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["SHAMAN"] = true,
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 9,
					["multi"] = {
						[9] = true,
					},
				},
				["spec"] = {
					["single"] = 4,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 48438,
				["zoneIds"] = "",
			},
			["width"] = 30,
			["desaturate"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration"] = "2",
					["alphaType"] = "alphaPulse",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      return start + (((math.sin(angle) + 1)/2) * delta)\n    end\n  ",
					["use_alpha"] = true,
					["type"] = "none",
					["easeType"] = "none",
					["x"] = 0,
					["use_color"] = false,
					["alpha"] = 0.6,
					["scalex"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["easeStrength"] = 3,
					["colorA"] = 1,
					["colorFunc"] = "",
					["rotate"] = 0,
					["duration_type"] = "seconds",
					["scaley"] = 1,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["anchorFrameFrame"] = "WeakAuras:Swiftmend_RA",
			["regionType"] = "icon",
			["displayIcon"] = "Interface\\Icons\\inv_relics_idolofrejuvenation",
			["zoom"] = 0.3,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["config"] = {
			},
			["alpha"] = 1,
			["auto"] = true,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Wild_Growth_RA",
			["xOffset"] = -50,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["uid"] = "6RvDnqlP32u",
			["inverse"] = true,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["T15"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 28,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["use_showgcd"] = false,
						["remaining"] = "3",
						["names"] = {
						},
						["duration"] = "1",
						["use_unit"] = true,
						["use_genericShowOn"] = true,
						["debuffType"] = "HELPFUL",
						["charges_operator"] = ">=",
						["type"] = "spell",
						["custom_hide"] = "timed",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["spellName"] = 132302,
						["event"] = "Cooldown Progress (Spell)",
						["remaining_operator"] = "<=",
						["realSpellName"] = 132302,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["charges"] = "0",
						["use_remaining"] = false,
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["showOn"] = "showOnCooldown",
						["genericShowOn"] = "showAlways",
						["spellName"] = 132302,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["duration"] = "1",
						["use_absorbMode"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["realSpellName"] = 108238,
						["use_spellName"] = true,
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["use_track"] = true,
						["spellName"] = 108238,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 13,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [2]
			},
			["height"] = 30,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 6,
					["multi"] = {
						[5] = true,
						[6] = true,
						[4] = true,
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["desaturate"] = false,
			["config"] = {
			},
			["selfPoint"] = "CENTER",
			["parent"] = "Druid_AfenarUI",
			["regionType"] = "icon",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Afenar_Druid/154",
			["auto"] = true,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["do_custom"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["width"] = 30,
			["alpha"] = 0.3,
			["zoom"] = 0.3,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "T15",
			["xOffset"] = 124,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = true,
			["uid"] = "yUbcXqzwyVe",
			["inverse"] = true,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
							{
								["value"] = 1,
								["variable"] = "onCooldown",
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Adaptive_Swarm"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 74.5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"325727", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["unit"] = "target",
						["unitExists"] = false,
						["ownOnly"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["auranames"] = {
							"323673", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
						["matchesShowOn"] = "showOnActive",
						["useName"] = true,
						["unit"] = "target",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["duration"] = "1",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 325727,
						["realSpellName"] = 325727,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["type"] = "spell",
						["unevent"] = "auto",
						["use_track"] = true,
						["ownOnly"] = true,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
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
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [3]
			},
			["height"] = 35,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_class_and_spec"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["level"] = "75",
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
					["single"] = 104,
					["multi"] = {
						[103] = true,
						[104] = true,
						[102] = true,
					},
				},
				["talent"] = {
					["single"] = 14,
					["multi"] = {
						[14] = true,
						[16] = true,
						[17] = true,
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PRIEST"] = true,
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["level_operator"] = ">=",
				["use_petbattle"] = false,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["spellknown"] = 323673,
				["zoneIds"] = "",
			},
			["desaturate"] = false,
			["config"] = {
			},
			["authorOptions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["xOffset"] = -88.5,
			["displayIcon"] = 136235,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["cooldownTextDisabled"] = true,
			["width"] = 35,
			["frameStrata"] = 3,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Adaptive_Swarm",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "3.4.7",
			["uid"] = "h1)UFsEzipo",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "inverse",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = {
								1, -- [1]
								0.77254901960784, -- [2]
								0.50196078431373, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.border_color",
						}, -- [3]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["op"] = "<",
								["variable"] = "expirationTime",
								["value"] = "1",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "duration",
						["value"] = "2",
					},
					["changes"] = {
						{
							["property"] = "sub.3.text_visible",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "expirationTime",
						["value"] = "60",
					},
					["changes"] = {
						{
							["value"] = 14,
							["property"] = "sub.3.text_fontSize",
						}, -- [1]
					},
				}, -- [5]
			},
			["cooldown"] = true,
			["parent"] = "Druid_AfenarUI",
		},
		["Astral_Power"] = {
			["sparkWidth"] = 3,
			["modelIsUnit"] = false,
			["iconSource"] = -1,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 33,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "-- EDIT THIS IF YOU NEED\n-- text output\naura_env.text_out = true         -- paste false if no text on bar\n-- ping\naura_env.check_ping = false      -- paste true, if you want to correct your bar with ping, paste false if dont\naura_env.myApprPing = 0.2        -- your appreciate ping\n\n-- energy type\naura_env.my_energy_type = 8\n\n-- all noninstant spells, changing energy\naura_env.SpellList = {\n    {\n        id = 194153,\n        eng = 8\n    },\n    {\n        id = 190984,\n        eng = 6\n    },\n    {\n        id = 274281,\n        eng = 10,\n        nomod = true\n    },\n    {\n        id = 274282,\n        eng = 20,\n        nomod = true\n    },\n    {\n        id = 274283,\n        eng = 40,\n        nomod = true\n    },\n    {\n        id = 202347,\n        eng = 8,\n        nomod = true\n    },\n}\n\n-- energy modificators\n-- if talent paste type = 'talent', id = talent string talent nomber\n-- if aura paste type = 'aura', id = aura id\n-- mod = energy multiplier, as an example s2m gives +100% ins for SP, so multiplier = 1(base ins)+1(add ins) => paste mod = 2\naura_env.Modificators  = {\n    \n    {\n        type = 'aura',\n        id = 48517,\n        mod = 1.5\n    },\n}\n\n----------------------------------------------------\n-- DONT EDIT NEXT\n\n-- initialisations\naura_env.saveEpositionOnPing = 0\naura_env.saveTpositionOnPing = 0\naura_env.Position = 0\naura_env.MaxPosition = 1\n\n-- function to check is there any active multipliers\naura_env.Mod_check = function()\n    local sum_mult = 1\n    for k, v in pairs(aura_env.Modificators) do\n        if v.type == 'talent' \n        then\n            if select(4, GetTalentInfo(math.floor(v.id/10)*10,v.id%10,GetActiveSpecGroup()))\n            then \n                sum_mult = sum_mult*v.mod\n            end\n        elseif v.type == 'aura'\n        then\n            for i =1, 40 do\n                if select(10, UnitBuff(\"player\",i)) == v.id\n                then\n                    sum_mult = sum_mult*v.mod\n                end\n            end\n        end\n    end\n    \n    return sum_mult\nend\n\n--function to find new position of energy\naura_env.E_Position = function(add_eng, stTime, edTime)\n    local adding_cast_eng = 0\n    local NewPosition = UnitPower('player',aura_env.my_energy_type)+add_eng;\n    local CurPosition = UnitPower('player',aura_env.my_energy_type);\n    local MaxPosition = UnitPowerMax(\"player\", aura_env.my_energy_type);\n    \n    if stTime\n    then\n        adding_cast_eng = add_eng*(GetTime()*1000 -stTime)/(edTime-stTime)\n    end\n    \n    if aura_env.check_ping and stTime\n    then\n        aura_env.saveEpositionOnPing = NewPosition\n        aura_env.saveTpositionOnPing = GetTime()\n    elseif aura_env.myApprPing+aura_env.saveTpositionOnPing > GetTime()\n    then\n        NewPosition = aura_env.saveEpositionOnPing\n    end\n    \n    \n    if NewPosition < CurPosition\n    then\n        return math.max(NewPosition, 0), CurPosition, MaxPosition, CurPosition+adding_cast_eng, math.max(NewPosition, 0)\n    else\n        return CurPosition, math.min(NewPosition, MaxPosition), MaxPosition, CurPosition+adding_cast_eng, math.min(NewPosition, MaxPosition)\n    end\nend",
					["do_custom"] = true,
				},
				["finish"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.13333333333333, -- [1]
				0.17647058823529, -- [2]
				0.30196078431373, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["sparkOffsetY"] = 0,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["level"] = "10",
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">=",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["sequence"] = 1,
			["scale"] = 1,
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["texture"] = "Solid",
			["model_z"] = 0,
			["spark"] = false,
			["tocversion"] = 90002,
			["alpha"] = 1,
			["sparkColor"] = {
				1, -- [1]
				0.76078431372549, -- [2]
				0.96470588235294, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "None",
			["color"] = {
			},
			["customText"] = "function()\n    local add_eng = 0            -- starting additional energy\n    local adding_cast_eng = 0    --additional energy per time\n    \n    -- looking for spells, which generates energy\n    local spellName,  _, _, stTime, edTime = UnitCastingInfo(\"player\")\n    if spellName then \n        local spellID = select(7,GetSpellInfo(spellName))\n        for k, v in pairs(aura_env.SpellList) do\n            if v.id == spellID\n            then\n                if v.nomod \n                then\n                    add_eng = v.eng\n                else\n                    add_eng = v.eng*aura_env.Mod_check()\n                end\n            end\n        end\n    else\n        stTime = nil\n        edTime = nil\n    end\n    \n    -- data for spark + editing frame duration if function\n    local min_position, cur_position, max_position, spk_position, text_output  = aura_env.E_Position(add_eng, stTime, edTime)\n    WeakAuras.ScanEvents(\"WA_event_engUpdate_by_Afreg\", min_position, cur_position, max_position, spk_position, text_output)\n    \n    --duration\n    aura_env.Position = cur_position\n    aura_env.MaxPosition = max_position\n    -- custom text output\n    if aura_env.text_out\n    then\n        return string.format('%.f',  text_output)\n    else\n        return ''\n    end\nend",
			["model_x"] = 0,
			["sparkRotationMode"] = "AUTO",
			["triggers"] = {
				{
					["trigger"] = {
						["use_alwaystrue"] = true,
						["duration"] = "0",
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["custom_hide"] = "custom",
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED",
						["custom_type"] = "status",
						["debuffType"] = "HELPFUL",
						["lunar_power_operator"] = ">=",
						["type"] = "custom",
						["use_eclipsetype"] = true,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["eclipsetype"] = "moon",
						["event"] = "Conditions",
						["custom"] = "function()\n    return true\nend\n",
						["customDuration"] = "function()\n    return aura_env.Position, aura_env.MaxPosition, 0, 0\nend",
						["lunar_power"] = "0",
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "update",
						["use_lunar_power"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
					},
					["untrigger"] = {
						["eclipsetype"] = "sun",
						["use_eclipsetype"] = true,
						["custom"] = "\n\n",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Power",
						["unit"] = "player",
						["powertype"] = 8,
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["use_powertype"] = true,
						["use_requirePowerType"] = false,
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"768", -- [1]
							"5487", -- [2]
						},
						["matchesShowOn"] = "showOnMissing",
						["event"] = "Health",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["advance"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["sparkMirror"] = false,
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["border_color"] = {
					},
					["type"] = "aurabar_bar",
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c ",
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
					["text_anchorXOffset"] = 3,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_CENTER",
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [3]
				{
					["tick_blend_mode"] = "ADD",
					["tick_rotation"] = 0,
					["tick_xOffset"] = 0,
					["tick_desaturate"] = false,
					["automatic_length"] = true,
					["tick_thickness"] = 2,
					["tick_texture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
					["use_texture"] = false,
					["tick_color"] = {
						1, -- [1]
						0.76470588235294, -- [2]
						0.54901960784314, -- [3]
						1, -- [4]
					},
					["tick_visible"] = true,
					["tick_placement_mode"] = "AtMissingValue",
					["tick_yOffset"] = 0,
					["tick_placement"] = "29.9",
					["tick_length"] = 30,
					["tick_mirror"] = false,
					["type"] = "subtick",
				}, -- [4]
				{
					["tick_blend_mode"] = "ADD",
					["tick_rotation"] = 0,
					["tick_xOffset"] = 0,
					["tick_desaturate"] = false,
					["automatic_length"] = true,
					["tick_thickness"] = 2,
					["tick_texture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
					["use_texture"] = false,
					["tick_color"] = {
						1, -- [1]
						0.76470588235294, -- [2]
						0.54901960784314, -- [3]
						1, -- [4]
					},
					["tick_visible"] = true,
					["tick_placement_mode"] = "AtMissingValue",
					["tick_yOffset"] = 0,
					["tick_placement"] = "60",
					["tick_length"] = 30,
					["tick_mirror"] = false,
					["type"] = "subtick",
				}, -- [5]
				{
					["tick_blend_mode"] = "ADD",
					["tick_rotation"] = 0,
					["tick_xOffset"] = 0,
					["tick_desaturate"] = false,
					["automatic_length"] = true,
					["tick_thickness"] = 2,
					["tick_texture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
					["use_texture"] = false,
					["tick_color"] = {
						1, -- [1]
						0.76470588235294, -- [2]
						0.54901960784314, -- [3]
						1, -- [4]
					},
					["tick_visible"] = true,
					["tick_placement_mode"] = "AtMissingValue",
					["tick_yOffset"] = 0,
					["tick_placement"] = "90",
					["tick_length"] = 30,
					["tick_mirror"] = false,
					["type"] = "subtick",
				}, -- [6]
			},
			["height"] = 20,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["sparkTexture"] = "130877",
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
			["config"] = {
			},
			["anchorFrameFrame"] = "WeakAuras:Insanity_BD",
			["auto"] = true,
			["borderInFront"] = false,
			["model_path"] = "Creature/Arthaslichking/arthaslichking.m2",
			["icon_side"] = "LEFT",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["id"] = "Astral_Power",
			["sparkHeight"] = 36,
			["anchorFrameType"] = "SCREEN",
			["icon"] = false,
			["zoom"] = 0,
			["semver"] = "3.4.7",
			["uid"] = "lTSEU9AFjJL",
			["sparkHidden"] = "BOTH",
			["model_y"] = 0,
			["frameStrata"] = 3,
			["width"] = 212,
			["sparkOffsetX"] = -0.5,
			["backdropColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["inverse"] = true,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL_INVERSE",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["op"] = ">=",
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["op"] = ">=",
								["variable"] = "power",
								["value"] = "30",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "sub.4.tick_visible",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["op"] = ">=",
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 2,
								["op"] = ">=",
								["variable"] = "power",
								["value"] = "60",
							}, -- [1]
							{
								["trigger"] = 2,
								["op"] = "<",
								["variable"] = "power",
								["value"] = "30",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.5.tick_visible",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 2,
								["op"] = ">=",
								["variable"] = "power",
								["value"] = "90",
							}, -- [1]
							{
								["trigger"] = 2,
								["op"] = "<",
								["variable"] = "power",
								["value"] = "60",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "sub.6.tick_visible",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 2,
								["op"] = "~=",
								["variable"] = "powertype",
								["value"] = 8,
							}, -- [1]
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "sub.4.tick_visible",
						}, -- [1]
						{
							["property"] = "sub.5.tick_visible",
						}, -- [2]
						{
							["property"] = "sub.6.tick_visible",
						}, -- [3]
					},
				}, -- [4]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Druid_AfenarUI",
		},
		["Stampeding_Roar"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = -58,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"77764", -- [1]
							"77761", -- [2]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = false,
						["remaining"] = "3",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["use_remaining"] = false,
						["type"] = "spell",
						["use_genericShowOn"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["subeventPrefix"] = "SPELL",
						["event"] = "Cooldown Progress (Spell)",
						["remaining_operator"] = "<=",
						["realSpellName"] = 77764,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["custom_hide"] = "timed",
						["spellName"] = 77764,
						["unevent"] = "auto",
						["use_track"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
						["showOn"] = "showOnCooldown",
						["genericShowOn"] = "showAlways",
						["spellName"] = 77764,
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 13,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [2]
			},
			["height"] = 30,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["url"] = "https://wago.io/Afenar_Druid/154",
			["config"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["easeStrength"] = 3,
					["colorFunc"] = "",
					["rotate"] = 0,
					["x"] = 0,
					["use_color"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["parent"] = "Druid_AfenarUI",
			["anchorFrameFrame"] = "WeakAuras:Growl",
			["regionType"] = "icon",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["desaturate"] = false,
			["zoom"] = 0.3,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["do_custom"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["width"] = 30,
			["alpha"] = 0.3,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Stampeding_Roar",
			["auto"] = true,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["uid"] = "nmGkCkukuhr",
			["inverse"] = true,
			["xOffset"] = -17,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "inverse",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [3]
						{
							["value"] = {
								1, -- [1]
								0.77254901960784, -- [2]
								0.50196078431373, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.border_color",
						}, -- [4]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Barkskin"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = -58,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"22812", -- [1]
						},
						["ownOnly"] = true,
						["unit"] = "player",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
							"Дубовая кожа", -- [1]
						},
						["useGroup_count"] = false,
						["spellIds"] = {
							22812, -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["type"] = "aura2",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["use_showgcd"] = false,
						["useCount"] = true,
						["names"] = {
							"Божественное перышко", -- [1]
							"Божественное перышко", -- [2]
							"Божественное перышко", -- [3]
						},
						["debuffType"] = "HELPFUL",
						["use_unit"] = true,
						["use_genericShowOn"] = true,
						["duration"] = "1",
						["spellName"] = 22812,
						["charges_operator"] = "~=",
						["type"] = "spell",
						["count"] = "2",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["countOperator"] = "<=",
						["custom_hide"] = "timed",
						["realSpellName"] = "樹皮術",
						["use_spellName"] = true,
						["spellIds"] = {
							121536, -- [1]
							158624, -- [2]
							121557, -- [3]
						},
						["unevent"] = "auto",
						["charges"] = "3",
						["use_remaining"] = false,
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 22812,
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 13,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [3]
			},
			["height"] = 30,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 22812,
				["zoneIds"] = "",
			},
			["alpha"] = 0.3,
			["width"] = 30,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135994,
			["regionType"] = "icon",
			["desaturate"] = false,
			["cooldownEdge"] = false,
			["config"] = {
			},
			["useTooltip"] = false,
			["xOffset"] = 16,
			["semver"] = "3.4.7",
			["cooldownTextDisabled"] = true,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Barkskin",
			["zoom"] = 0.3,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["uid"] = "RpTG2sXb3Qo",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "inverse",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [3]
						{
							["value"] = {
								1, -- [1]
								0.77254901960784, -- [2]
								0.50196078431373, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.border_color",
						}, -- [4]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["op"] = "<",
								["variable"] = "expirationTime",
								["value"] = "1",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Typhoon"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = -58,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = false,
						["remaining"] = "3",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["use_remaining"] = false,
						["type"] = "spell",
						["custom_hide"] = "timed",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["unit"] = "player",
						["realSpellName"] = 132469,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["remaining_operator"] = "<=",
						["spellName"] = 132469,
						["unevent"] = "auto",
						["use_track"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
						["showOn"] = "showOnCooldown",
						["genericShowOn"] = "showAlways",
						["spellName"] = 132469,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "spell",
						["debuffType"] = "HELPFUL",
						["unevent"] = "auto",
						["use_track"] = true,
						["duration"] = "1",
						["use_requirePowerType"] = true,
						["unit"] = "player",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["event"] = "Spell Known",
						["use_powertype"] = true,
						["spellName"] = 326085,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 13,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [2]
			},
			["height"] = 30,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 5,
					["multi"] = {
						[5] = true,
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 132469,
				["zoneIds"] = "",
			},
			["auto"] = true,
			["config"] = {
			},
			["authorOptions"] = {
			},
			["parent"] = "Druid_AfenarUI",
			["regionType"] = "icon",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["easeStrength"] = 3,
					["colorFunc"] = "",
					["rotate"] = 0,
					["x"] = 0,
					["use_color"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["desaturate"] = false,
			["xOffset"] = -50,
			["width"] = 30,
			["alpha"] = 0.3,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Typhoon",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "tS42HlSPtB)",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["do_custom"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "==",
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = -74,
							["property"] = "xOffsetRelative",
						}, -- [1]
						{
							["value"] = 53,
							["property"] = "yOffsetRelative",
						}, -- [2]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Druid_Mana"] = {
			["sparkWidth"] = 10,
			["xOffset"] = -85,
			["displayText"] = "%c%",
			["yOffset"] = 32.5,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",0.59,0.59,0.94,0.98,0.78,0.83)",
					["do_custom"] = false,
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.90980392156863, -- [1]
				0.76470588235294, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["font"] = "Expressway",
			["sparkOffsetY"] = 0,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["use_class_and_spec"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
						[21] = true,
						[12] = true,
						[11] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["MAGE"] = true,
						["DRUID"] = true,
						["PRIEST"] = true,
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
					["single"] = 258,
					["multi"] = {
						[103] = true,
						[104] = true,
						[102] = true,
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 0,
			["useAdjustededMin"] = false,
			["regionType"] = "text",
			["texture"] = "Solid",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = true,
			["tocversion"] = 90002,
			["alpha"] = 1,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["borderBackdrop"] = "None",
			["color"] = {
				1, -- [1]
				0.90588235294118, -- [2]
				0.74509803921569, -- [3]
				1, -- [4]
			},
			["customText"] = "function()\n    local mana = UnitPower(\"player\",0)\n    local manaMax = UnitPowerMax(\"player\",0)\n    local manaPerc = (mana / manaMax) * 100\n    return string.format(\"%.0f\",manaPerc)\nend",
			["shadowYOffset"] = 0,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["unit"] = "player",
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["use_charges"] = false,
						["powertype"] = 0,
						["use_unit"] = true,
						["use_genericShowOn"] = true,
						["charges"] = "2",
						["health"] = "0",
						["use_trackcharge"] = false,
						["spellName"] = 108853,
						["charges_operator"] = "<",
						["trackcharge"] = "1",
						["use_health"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["debuffType"] = "HELPFUL",
						["event"] = "Power",
						["type"] = "unit",
						["realSpellName"] = "Огненный взрыв",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["custom_hide"] = "timed",
						["use_powertype"] = true,
						["health_operator"] = ">=",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 108853,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["displayText_format_p_format"] = "timed",
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
			["backdropInFront"] = false,
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
			},
			["height"] = 4,
			["width"] = 195,
			["parent"] = "Druid_AfenarUI",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["fontSize"] = 13,
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["authorOptions"] = {
			},
			["uid"] = "J5VVvNeZ00z",
			["spark"] = false,
			["wordWrap"] = "WordWrap",
			["borderInFront"] = false,
			["backgroundColor"] = {
				0.18823529411765, -- [1]
				0.17647058823529, -- [2]
				0.30196078431373, -- [3]
				1, -- [4]
			},
			["icon_side"] = "RIGHT",
			["useAdjustededMax"] = false,
			["sparkHidden"] = "NEVER",
			["displayText_format_p_time_precision"] = 1,
			["justify"] = "CENTER",
			["sparkRotationMode"] = "AUTO",
			["icon"] = false,
			["semver"] = "3.4.7",
			["zoom"] = 0,
			["id"] = "Druid_Mana",
			["sparkHeight"] = 30,
			["frameStrata"] = 3,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["displayText_format_p_time_format"] = 0,
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">=",
						["variable"] = "percentpower",
						["value"] = "90",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.90588235294118, -- [2]
								0.74509803921569, -- [3]
								0, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [1]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["preferToUpdate"] = false,
		},
		["Lone_Empowerment"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 74.5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"338142", -- [1]
							"327139", -- [2]
							"327037", -- [3]
							"338018", -- [4]
						},
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["names"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["auranames"] = {
							"323673", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["use_showgcd"] = true,
						["subeventPrefix"] = "SPELL",
						["matchesShowOn"] = "showOnActive",
						["debuffType"] = "HARMFUL",
						["use_unit"] = true,
						["useName"] = true,
						["unit"] = "target",
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["duration"] = "1",
						["event"] = "Cooldown Progress (Spell)",
						["use_exact_spellName"] = true,
						["realSpellName"] = 338142,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["spellName"] = 338142,
						["unevent"] = "auto",
						["type"] = "spell",
						["use_track"] = true,
						["ownOnly"] = true,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				{
					["trigger"] = {
						["track"] = "auto",
						["auranames"] = {
							"323673", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["use_showgcd"] = true,
						["subeventPrefix"] = "SPELL",
						["matchesShowOn"] = "showOnActive",
						["debuffType"] = "HARMFUL",
						["use_unit"] = true,
						["useName"] = true,
						["unit"] = "target",
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["duration"] = "1",
						["event"] = "Cooldown Progress (Spell)",
						["use_exact_spellName"] = true,
						["realSpellName"] = 338018,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["spellName"] = 338018,
						["unevent"] = "auto",
						["type"] = "spell",
						["use_track"] = true,
						["ownOnly"] = true,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
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
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [3]
			},
			["height"] = 35,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_class_and_spec"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["level"] = "75",
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
					["single"] = 258,
					["multi"] = {
						[103] = true,
						[104] = true,
						[102] = true,
					},
				},
				["talent"] = {
					["single"] = 14,
					["multi"] = {
						[14] = true,
						[16] = true,
						[17] = true,
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PRIEST"] = true,
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["level_operator"] = ">=",
				["use_petbattle"] = false,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["spellknown"] = 323673,
				["zoneIds"] = "",
			},
			["desaturate"] = false,
			["config"] = {
			},
			["authorOptions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["xOffset"] = -88.5,
			["displayIcon"] = 136235,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["cooldownTextDisabled"] = true,
			["width"] = 35,
			["frameStrata"] = 3,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Lone_Empowerment",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "3.4.7",
			["uid"] = "4l43DOiUt3K",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 3,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "onCooldown",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 2,
										["op"] = "<",
										["variable"] = "expirationTime",
										["value"] = "1",
									}, -- [2]
								},
							}, -- [1]
							{
								["trigger"] = -2,
								["op"] = "<",
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 3,
										["variable"] = "onCooldown",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 3,
										["op"] = "<",
										["variable"] = "expirationTime",
										["value"] = "1",
									}, -- [2]
								},
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["op"] = "<",
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 2,
								["op"] = "<",
								["variable"] = "duration",
								["value"] = "2",
							}, -- [1]
							{
								["trigger"] = 3,
								["op"] = "<",
								["variable"] = "duration",
								["value"] = "2",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "sub.3.text_visible",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "inverse",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = {
								1, -- [1]
								0.77254901960784, -- [2]
								0.50196078431373, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.border_color",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "sub.3.text_visible",
						}, -- [4]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["parent"] = "Druid_AfenarUI",
		},
		["Eclipce_Bar"] = {
			["sparkWidth"] = 2,
			["modelIsUnit"] = false,
			["iconSource"] = -1,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 16,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",1,0.7,0.3,1,0.8,0.6)",
					["do_custom"] = false,
				},
				["finish"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0.81176470588235, -- [2]
				0.55686274509804, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["sparkOffsetY"] = 0,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["level"] = "10",
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">=",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["sequence"] = 1,
			["scale"] = 1,
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["texture"] = "Solid",
			["model_z"] = 0,
			["spark"] = false,
			["tocversion"] = 90002,
			["alpha"] = 0,
			["sparkColor"] = {
				0.97254901960784, -- [1]
				1, -- [2]
				0.92156862745098, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "None",
			["color"] = {
			},
			["customText"] = "",
			["model_x"] = 0,
			["sparkRotationMode"] = "AUTO",
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"48518", -- [1]
						},
						["duration"] = "1",
						["unit"] = "player",
						["powertype"] = 8,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["useName"] = false,
						["auraspellids"] = {
							"48517", -- [1]
							"48518", -- [2]
						},
						["unevent"] = "auto",
						["use_unit"] = true,
						["use_requirePowerType"] = false,
						["use_absorbMode"] = true,
						["matchesShowOn"] = "showAlways",
						["useExactSpellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Power",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["advance"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["sparkMirror"] = false,
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["border_color"] = {
					},
					["type"] = "aurabar_bar",
				}, -- [2]
				{
					["api"] = false,
					["model_x"] = 0,
					["model_st_us"] = 40,
					["model_st_rz"] = 0,
					["model_z"] = -6.5,
					["model_fileId"] = "328500",
					["model_path"] = "spells/arcanepower_state_chest.m2",
					["model_st_ty"] = 0,
					["model_y"] = -0.5,
					["model_st_rx"] = 270,
					["rotation"] = 180,
					["bar_model_visible"] = true,
					["model_st_tx"] = 0,
					["bar_model_alpha"] = 0,
					["bar_model_clip"] = true,
					["type"] = "subbarmodel",
					["model_st_tz"] = 0,
					["model_st_ry"] = 0,
				}, -- [3]
				{
					["text_text_format_t_time_precision"] = 1,
					["text_text"] = "%p",
					["text_visible"] = true,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["anchorXOffset"] = 0,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 92,
					["text_text_format_t_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "RIGHT",
					["rotateText"] = "NONE",
					["text_text_format_t_format"] = "timed",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_n_format"] = "none",
					["type"] = "subtext",
					["text_anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_anchorYOffset"] = 0.5,
					["text_text_format_p_time_format"] = 0,
					["text_wordWrap"] = "Elide",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowYOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 13,
					["text_text_format_t_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_precision"] = 1,
				}, -- [4]
			},
			["height"] = 10,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["sparkTexture"] = "Insanity-Spark",
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
			["config"] = {
			},
			["anchorFrameFrame"] = "WeakAuras:Astral_Power",
			["auto"] = true,
			["borderInFront"] = false,
			["model_path"] = "Creature/Arthaslichking/arthaslichking.m2",
			["icon_side"] = "RIGHT",
			["backgroundColor"] = {
				0.13333333333333, -- [1]
				0.17647058823529, -- [2]
				0.30196078431373, -- [3]
				1, -- [4]
			},
			["id"] = "Eclipce_Bar",
			["sparkHeight"] = 8,
			["anchorFrameType"] = "SELECTFRAME",
			["icon"] = false,
			["zoom"] = 0,
			["semver"] = "3.4.7",
			["uid"] = "rq)O8UHWd5W",
			["sparkHidden"] = "BOTH",
			["model_y"] = 0,
			["frameStrata"] = 3,
			["width"] = 212,
			["sparkOffsetX"] = 0.5,
			["backdropColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 1,
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "buffed",
								["value"] = 1,
							}, -- [1]
							{
								["value"] = 1,
								["variable"] = "buffed",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "sub.3.bar_model_alpha",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "spellId",
						["value"] = "48517",
					},
					["changes"] = {
						{
							["value"] = {
								["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",1,0.7,0.3,1,0.8,0.6)",
							},
							["property"] = "customcode",
						}, -- [1]
						{
							["value"] = {
								0.42745098039216, -- [1]
								0.15686274509804, -- [2]
								0.023529411764706, -- [3]
								1, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "spellId",
						["value"] = "48518",
					},
					["changes"] = {
						{
							["value"] = {
								["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",0.98,0.78,0.83,0.59,0.59,0.94)",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [3]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Druid_AfenarUI",
		},
		["Dash"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = -5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/Afenar_Druid/154",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"1850", -- [1]
							"252216", -- [2]
						},
						["ownOnly"] = true,
						["unit"] = "player",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
							"Порыв", -- [1]
							"Рывок тигра", -- [2]
						},
						["useGroup_count"] = false,
						["spellIds"] = {
							1850, -- [1]
							252216, -- [2]
						},
						["matchesShowOn"] = "showOnActive",
						["type"] = "aura2",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["use_showgcd"] = false,
						["useCount"] = true,
						["names"] = {
							"Божественное перышко", -- [1]
							"Божественное перышко", -- [2]
							"Божественное перышко", -- [3]
						},
						["debuffType"] = "HELPFUL",
						["use_unit"] = true,
						["use_genericShowOn"] = true,
						["duration"] = "1",
						["spellName"] = 1850,
						["charges_operator"] = "~=",
						["type"] = "spell",
						["count"] = "2",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["countOperator"] = "<=",
						["custom_hide"] = "timed",
						["realSpellName"] = "突進",
						["use_spellName"] = true,
						["spellIds"] = {
							121536, -- [1]
							158624, -- [2]
							121557, -- [3]
						},
						["unevent"] = "auto",
						["charges"] = "3",
						["use_remaining"] = false,
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 1850,
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 13,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [2]
			},
			["height"] = 30,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 1850,
				["zoneIds"] = "",
			},
			["alpha"] = 0.3,
			["width"] = 30,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135994,
			["regionType"] = "icon",
			["desaturate"] = false,
			["cooldownEdge"] = false,
			["config"] = {
			},
			["useTooltip"] = false,
			["xOffset"] = 124,
			["semver"] = "3.4.7",
			["cooldownTextDisabled"] = true,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Dash",
			["zoom"] = 0.3,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["uid"] = "FEp6dWnsuDz",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["do_sound"] = false,
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "inverse",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [3]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Druid_PvPT3"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 112.5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["useGroup_count"] = false,
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Аура лунного совуха", -- [1]
						},
						["use_tooltip"] = false,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["useName"] = true,
						["custom_hide"] = "timed",
						["use_unit"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["buffShowOn"] = "showOnActive",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 236696,
						["realSpellName"] = "Шипы",
						["use_spellName"] = true,
						["spellIds"] = {
							209740, -- [1]
						},
						["auranames"] = {
							"209740", -- [1]
						},
						["unevent"] = "auto",
						["combineMatches"] = "showLowest",
						["debuffType"] = "HELPFUL",
						["duration"] = "1",
					},
					["untrigger"] = {
						["spellName"] = 236696,
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "TOPRIGHT",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 3,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "TOPRIGHT",
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_anchorYOffset"] = 3,
				}, -- [3]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						true, -- [2]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 209740,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["xOffset"] = -88.5,
			["desaturate"] = false,
			["anchorFrameFrame"] = "ElvUF_Player",
			["regionType"] = "icon",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["authorOptions"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "slideleft",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "slideleft",
					["duration_type"] = "seconds",
				},
			},
			["zoom"] = 0.3,
			["auto"] = true,
			["width"] = 35,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Druid_PvPT3",
			["alpha"] = 1,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
					["do_glow"] = true,
					["glow_type"] = "buttonOverlay",
					["glow_frame_type"] = "FRAMESELECTOR",
				},
			},
			["uid"] = "jk8xPVSroBH",
			["inverse"] = false,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["conditions"] = {
			},
			["cooldown"] = true,
			["parent"] = "Druid_AfenarUI",
		},
		["Starfall_SF"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 112.5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"191034", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["names"] = {
						},
						["ownOnly"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["glowFrequency"] = 0,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 20,
					["glowYOffset"] = 1,
					["glowColor"] = {
						1, -- [1]
						0.64705882352941, -- [2]
						0.31764705882353, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 1,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 30,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [3]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						[15] = true,
						[13] = true,
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 18,
					["multi"] = {
						true, -- [1]
						[13] = true,
						[15] = true,
						[19] = true,
						[16] = true,
						[17] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 191034,
				["zoneIds"] = "",
			},
			["width"] = 35,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["easeStrength"] = 3,
					["colorFunc"] = "",
					["rotate"] = 0,
					["x"] = 0,
					["use_color"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "fade",
					["alpha"] = 0,
					["alphaType"] = "hide",
					["duration_type"] = "seconds",
					["duration"] = "1",
					["easeStrength"] = 3,
					["use_translate"] = false,
					["use_alpha"] = false,
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["displayIcon"] = 236168,
			["zoom"] = 0.3,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["do_sound"] = false,
				},
			},
			["config"] = {
			},
			["alpha"] = 1,
			["auto"] = false,
			["cooldownTextDisabled"] = true,
			["semver"] = "3.4.7",
			["tocversion"] = 90002,
			["id"] = "Starfall_SF",
			["authorOptions"] = {
			},
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 88.5,
			["uid"] = "8Abs6LHpocV",
			["inverse"] = false,
			["desaturate"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "expirationTime",
						["value"] = "3",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["Form_Guardian"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 74.5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"5487", -- [1]
						},
						["matchesShowOn"] = "showOnMissing",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["names"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"24858", -- [1]
							"783", -- [2]
							"768", -- [3]
						},
						["matchesShowOn"] = "showOnMissing",
						["event"] = "Health",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 154,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						0.90588235294118, -- [2]
						0.74509803921569, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = true,
					["text_text_format_p_gcd_channel"] = false,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_round_type"] = "ceil",
				}, -- [2]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["level"] = "80",
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">=",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["alpha"] = 1,
			["width"] = 35,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["parent"] = "Druid_AfenarUI",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 132276,
			["regionType"] = "icon",
			["zoom"] = 0.3,
			["desaturate"] = false,
			["config"] = {
			},
			["useTooltip"] = false,
			["url"] = "https://wago.io/Afenar_Druid/154",
			["semver"] = "3.4.7",
			["cooldownTextDisabled"] = true,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Form_Guardian",
			["xOffset"] = 0.5,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["uid"] = "6pBWOBUCAA(",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["glow_frame"] = "WeakAuras:Prowl",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
					["sound"] = "Interface\\Addons\\MikScrollingBattleText\\Sounds\\Cooldown.ogg",
					["glow_frame"] = "WeakAuras:Prowl",
					["do_custom"] = false,
					["do_sound"] = false,
				},
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["iconInset"] = 0,
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
