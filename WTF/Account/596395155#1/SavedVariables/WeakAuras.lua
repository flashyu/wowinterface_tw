
WeakAurasSaved = {
	["dynamicIconCache"] = {
	},
	["editor_tab_spaces"] = 4,
	["editor_font_size"] = 12,
	["displays"] = {
		["[Druid] Faerie Fire Fading Icon"] = {
			["iconSource"] = 0,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "30",
						["spellId"] = 48477,
						["auranames"] = {
							"精靈之火", -- [1]
							"精靈之火(野性)", -- [2]
						},
						["remaining_operator"] = ">=",
						["use_spell"] = false,
						["destUnit"] = "target",
						["remaining"] = "170",
						["spellName"] = 48477,
						["ignoreDead"] = false,
						["useExactSpellId"] = true,
						["event"] = "Cast",
						["ignoreDisconnected"] = false,
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["genericShowOn"] = "showOnReady",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["matchesShowOn"] = "showOnActive",
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["use_remaining"] = false,
						["unevent"] = "auto",
						["auraspellids"] = {
							"770", -- [1]
							"16857", -- [2]
						},
						["duration"] = "1",
						["form"] = {
							["multi"] = {
								true, -- [1]
								true, -- [2]
								true, -- [3]
								true, -- [4]
								true, -- [5]
								true, -- [6]
								[0] = true,
							},
						},
						["use_genericShowOn"] = true,
						["unit"] = "target",
						["realSpellName"] = "Rebirth",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["remOperator"] = "<=",
						["type"] = "aura2",
						["subeventPrefix"] = "SPELL",
						["useRem"] = true,
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
						["unit"] = "player",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 1,
					["border_offset"] = 0,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
				}, -- [2]
				{
					["glowFrequency"] = 0.5,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0.9764705882352941, -- [1]
						0, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glow"] = true,
					["glowXOffset"] = 0,
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
						[24] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_talent"] = false,
				["use_class"] = true,
				["use_spellknown"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 20549,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["zoom"] = 0.29,
			["parent"] = "[WotLK] Balance Druid (Top Group)",
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["xOffset"] = 0,
			["cooldown"] = false,
			["conditions"] = {
			},
			["config"] = {
			},
			["frameStrata"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 30400,
			["id"] = "[Druid] Faerie Fire Fading Icon",
			["width"] = 40,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["useCooldownModRate"] = true,
			["uid"] = "kncB(7LDLJD",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = "Interface\\Icons\\Spell_Nature_FaerieFire",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
		},
		["Wrath-out"] = {
			["iconSource"] = -1,
			["wagoID"] = "X6wQKkZUq",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["duration"] = "1",
						["genericShowOn"] = "showOnReady",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["use_targetRequired"] = true,
						["subeventPrefix"] = "SPELL",
						["event"] = "Action Usable",
						["names"] = {
						},
						["realSpellName"] = "愤怒",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["spellName"] = 48461,
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [1]
				{
					["trigger"] = {
						["unit"] = "player",
						["type"] = "aura2",
						["useName"] = false,
						["auranames"] = {
							"Decimation", -- [1]
						},
						["auraspellids"] = {
							"48517", -- [1]
						},
						["matchesShowOn"] = "showOnMissing",
						["useExactSpellId"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["unit"] = "player",
						["type"] = "aura2",
						["useName"] = false,
						["auranames"] = {
							"Decimation", -- [1]
						},
						["auraspellids"] = {
							"48518", -- [1]
						},
						["matchesShowOn"] = "showOnMissing",
						["useExactSpellId"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_form"] = true,
						["spellId"] = "48517",
						["auranames"] = {
							"Decimation", -- [1]
						},
						["duration"] = "30",
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["use_unit"] = true,
						["use_track"] = true,
						["subeventPrefix"] = "SPELL",
						["spellName"] = 48517,
						["useName"] = false,
						["type"] = "combatlog",
						["matchesShowOn"] = "showOnMissing",
						["auraType"] = "BUFF",
						["subeventSuffix"] = "_AURA_APPLIED",
						["use_spellId"] = true,
						["event"] = "Combat Log",
						["auraspellids"] = {
							"48517", -- [1]
						},
						["realSpellName"] = "Eclipse (Solar)",
						["use_spellName"] = false,
						["useExactSpellId"] = true,
						["use_sourceUnit"] = true,
						["use_genericShowOn"] = true,
						["debuffType"] = "HELPFUL",
						["sourceUnit"] = "player",
						["use_auraType"] = true,
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auraspellids"] = {
							"48468", -- [1]
							"27013", -- [2]
						},
						["unit"] = "target",
						["ownOnly"] = true,
						["useExactSpellId"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [5]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_form"] = true,
						["spellId"] = "48518",
						["auranames"] = {
							"Decimation", -- [1]
						},
						["duration"] = "30",
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["use_unit"] = true,
						["use_track"] = true,
						["subeventPrefix"] = "SPELL",
						["spellName"] = 48517,
						["useName"] = false,
						["type"] = "combatlog",
						["matchesShowOn"] = "showOnMissing",
						["auraType"] = "BUFF",
						["subeventSuffix"] = "_AURA_APPLIED",
						["use_spellId"] = true,
						["event"] = "Combat Log",
						["auraspellids"] = {
							"48517", -- [1]
						},
						["realSpellName"] = "Eclipse (Solar)",
						["use_spellName"] = false,
						["useExactSpellId"] = true,
						["use_sourceUnit"] = true,
						["use_genericShowOn"] = true,
						["debuffType"] = "HELPFUL",
						["sourceUnit"] = "player",
						["use_auraType"] = true,
					},
					["untrigger"] = {
					},
				}, -- [6]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_form"] = true,
						["spellId"] = "48468",
						["auranames"] = {
							"Decimation", -- [1]
						},
						["duration"] = "15",
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["use_unit"] = true,
						["use_track"] = true,
						["subeventPrefix"] = "SPELL",
						["spellName"] = 48517,
						["useName"] = false,
						["type"] = "combatlog",
						["matchesShowOn"] = "showOnMissing",
						["auraType"] = "BUFF",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["use_spellId"] = true,
						["event"] = "Combat Log",
						["auraspellids"] = {
							"48517", -- [1]
						},
						["realSpellName"] = "Eclipse (Solar)",
						["use_spellName"] = false,
						["useExactSpellId"] = true,
						["use_sourceUnit"] = true,
						["use_genericShowOn"] = true,
						["debuffType"] = "HELPFUL",
						["sourceUnit"] = "player",
						["use_auraType"] = true,
					},
					["untrigger"] = {
					},
				}, -- [7]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_form"] = true,
						["spellId"] = "27013",
						["auranames"] = {
							"Decimation", -- [1]
						},
						["duration"] = "15",
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["sourceUnit"] = "player",
						["unit"] = "player",
						["spellName"] = 48517,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["type"] = "combatlog",
						["auraType"] = "BUFF",
						["auraspellids"] = {
							"48517", -- [1]
						},
						["useName"] = false,
						["use_spellName"] = false,
						["event"] = "Combat Log",
						["useExactSpellId"] = true,
						["realSpellName"] = "Eclipse (Solar)",
						["use_spellId"] = true,
						["matchesShowOn"] = "showOnMissing",
						["use_sourceUnit"] = true,
						["use_genericShowOn"] = true,
						["debuffType"] = "HELPFUL",
						["use_track"] = true,
						["use_auraType"] = true,
					},
					["untrigger"] = {
					},
				}, -- [8]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return (t[1] and t[2] and t[3] and not t[6] and t[7]) \n    or (t[1] and t[2] and t[3] and t[4])\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 5,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_text_format_p_time_format"] = 0,
					["text_text"] = "%5.p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_text_format_7.p_format"] = "timed",
					["text_text_format_7.p_time_format"] = 0,
					["text_fixedWidth"] = 64,
					["rotateText"] = "NONE",
					["text_color"] = {
						1, -- [1]
						0.98823529411765, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_text_format_5.p_format"] = "timed",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 17,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_6.p_format"] = "timed",
					["text_text_format_p_format"] = "timed",
					["text_text_format_5.p_time_format"] = 0,
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["text_text_format_5.p_time_precision"] = 1,
					["type"] = "subtext",
					["text_visible"] = true,
					["text_font"] = "Friz Quadrata TT",
					["text_text_format_5.p_time_mod_rate"] = true,
					["text_text_format_6.p_time_dynamic_threshold"] = 60,
					["text_text_format_5.p_time_dynamic_threshold"] = 60,
					["text_text_format_7.p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_6.p_time_format"] = 0,
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_shadowXOffset"] = 0,
					["text_text_format_7.p_time_precision"] = 1,
					["text_text_format_6.p_time_precision"] = 1,
					["text_text_format_5.p_time_legacy_floor"] = true,
					["anchorXOffset"] = 0,
				}, -- [2]
			},
			["height"] = 30,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[57] = true,
						[59] = true,
						[18] = true,
						[62] = true,
						[67] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
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
			},
			["source"] = "import",
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["url"] = "https://wago.io/X6wQKkZUq/5",
			["regionType"] = "icon",
			["parent"] = "平衡德循環助手",
			["cooldown"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["icon"] = true,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["semver"] = "1.0.4",
			["tocversion"] = 30400,
			["id"] = "Wrath-out",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 30,
			["auto"] = true,
			["uid"] = "pwlbS(iEd8X",
			["inverse"] = false,
			["xOffset"] = 0,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["GCDHistoryBuffer5"] = {
			["iconSource"] = -1,
			["wagoID"] = "RvbxkQEv2",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "\n\n",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/RvbxkQEv2/19",
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.thisRegister = 5\n\naura_env.animX = aura_env.config[\"displayTime\"] * aura_env.region.width\nif aura_env.config[\"direction\"] == 1 then\n    aura_env.animDir = -1\nelse\n    aura_env.animDir = 1\nend\n\naura_env.xoff = 0\naura_env.castTime = 0",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["customIcon"] = "function()\n    return aura_env.icon\nend\n\n\n\n\n\n\n\n",
						["names"] = {
						},
						["custom_hide"] = "timed",
						["use_cloneId"] = true,
						["debuffType"] = "HELPFUL",
						["duration"] = "3",
						["type"] = "custom",
						["custom_type"] = "event",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["events"] = "MYSTLER_GCDHISTORY_ADD",
						["custom"] = "function(event, arg1, arg2, arg3, arg4)\n    if arg1 == aura_env.thisRegister then\n        aura_env.icon = arg2\n        aura_env.xoff = 0\n        aura_env.castTime = arg3\n        if arg4 then\n            aura_env.region:SetDesaturated(true)\n            aura_env.region:Color(1,0,0,1)\n        else\n            aura_env.region:SetDesaturated(false)\n            aura_env.region:Color(1,1,1,1)\n        end\n        return true\n    end\n    return false\nend",
						["event"] = "Combat Log",
						["unit"] = "player",
						["customDuration"] = "function()\n    return aura_env.config[\"displayTime\"], aura_env.castTime + aura_env.config[\"displayTime\"]\nend\n\n\n\n\n\n\n\n\n\n\n\n",
						["unevent"] = "timed",
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["sourceUnit"] = "player",
						["dynamicDuration"] = true,
					},
					["untrigger"] = {
						["custom"] = "function() return true end",
						["unit"] = "player",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "0",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function(event, arg1, arg2)\n    if arg1 == aura_env.thisRegister then\n        aura_env.xoff = aura_env.xoff + arg2\n    end\n    return false\nend\n\n\n\n\n\n\n\n\n\n\n\n",
						["custom_type"] = "event",
						["events"] = "MYSTLER_GCDHISTORY_OFFSET",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
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
					["scalex"] = 1,
					["alphaType"] = "custom",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function(progress, start, delta)\n    return math.min(1.0, (1.0 - progress) * 5.0)\nend\n\n\n",
					["use_translate"] = true,
					["use_alpha"] = true,
					["type"] = "custom",
					["easeType"] = "none",
					["translateFunc"] = "function(progress, startX, startY, deltaX, deltaY)\n    local x = startX + aura_env.animDir * (progress * aura_env.animX)\n    x = x + aura_env.animDir * aura_env.xoff\n    return x, startY\nend",
					["scaley"] = 1,
					["alpha"] = 0,
					["y"] = 0,
					["x"] = 0,
					["colorB"] = 1,
					["duration"] = "100%",
					["easeStrength"] = 3,
					["rotate"] = 0,
					["translateType"] = "custom",
					["duration_type"] = "relative",
				},
				["finish"] = {
					["colorR"] = 1,
					["duration"] = "0.2",
					["alphaType"] = "straight",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["use_translate"] = false,
					["use_alpha"] = false,
					["type"] = "none",
					["easeType"] = "none",
					["translateFunc"] = "function(progress, startX, startY, deltaX, deltaY)\n    local x = startX + (progress * deltaX)\n    if aura_env.state then\n        x = x + aura_env.state.xoff\n    end\n    return x, startY + (progress * deltaY)\nend",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["x"] = -150,
					["preset"] = "fade",
					["easeStrength"] = 3,
					["translateType"] = "custom",
					["rotate"] = 0,
					["duration_type"] = "seconds",
					["scalex"] = 1,
				},
			},
			["desaturate"] = false,
			["version"] = 19,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
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
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [2]
			},
			["height"] = 50,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
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
				["talent2"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
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
				["zoneIds"] = "",
			},
			["source"] = "import",
			["width"] = 50,
			["zoom"] = 0,
			["icon"] = true,
			["authorOptions"] = {
				{
					["desc"] = "In which direction should the history expand?",
					["type"] = "select",
					["values"] = {
						"Left", -- [1]
						"Right", -- [2]
					},
					["default"] = 1,
					["key"] = "direction",
					["useDesc"] = true,
					["name"] = "Direction",
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "range",
					["useDesc"] = true,
					["max"] = 6,
					["step"] = 0.5,
					["width"] = 1,
					["min"] = 1,
					["key"] = "displayTime",
					["desc"] = "How long (in seconds) icons are shown at max.",
					["name"] = "Display Time",
					["default"] = 3,
				}, -- [2]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["displayIcon"] = "",
			["cooldownEdge"] = false,
			["xOffset"] = 0,
			["config"] = {
				["displayTime"] = 3,
				["direction"] = 1,
			},
			["useCooldownModRate"] = true,
			["semver"] = "1.1.10",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "GCDHistoryBuffer5",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["stickyDuration"] = false,
			["uid"] = "Lq2SNWDDK0S",
			["inverse"] = false,
			["parent"] = "GCDHistoryGrp",
			["conditions"] = {
			},
			["cooldown"] = false,
			["selfPoint"] = "CENTER",
		},
		["[Druid] Mark 2"] = {
			["iconSource"] = -1,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 48477,
						["auranames"] = {
							"野性印记", -- [1]
							"野性赐福", -- [2]
						},
						["use_genericShowOn"] = true,
						["use_spell"] = false,
						["destUnit"] = "target",
						["remaining"] = "170",
						["spellName"] = 48477,
						["ignoreDead"] = false,
						["useExactSpellId"] = false,
						["event"] = "Cast",
						["ignoreDisconnected"] = false,
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["genericShowOn"] = "showOnReady",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["use_remaining"] = false,
						["type"] = "aura2",
						["auraspellids"] = {
							"48470", -- [1]
						},
						["unevent"] = "auto",
						["remaining_operator"] = ">=",
						["form"] = {
							["multi"] = {
								true, -- [1]
								true, -- [2]
								true, -- [3]
								true, -- [4]
								true, -- [5]
								true, -- [6]
								[0] = true,
							},
						},
						["useName"] = true,
						["duration"] = "1",
						["realSpellName"] = "Rebirth",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["matchesShowOn"] = "showOnMissing",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
						["unit"] = "player",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subborder",
					["border_size"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [2]
				{
					["glowFrequency"] = 0.5,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0.9764705882352941, -- [1]
						0, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glow"] = true,
					["glowXOffset"] = 0,
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
						[24] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_talent"] = false,
				["use_class"] = true,
				["use_spellknown"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 20549,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["zoom"] = 0.29,
			["parent"] = "[WotLK] Balance Druid (Top Group)",
			["regionType"] = "icon",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["xOffset"] = 0,
			["cooldown"] = false,
			["conditions"] = {
			},
			["config"] = {
			},
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "[Druid] Mark 2",
			["width"] = 40,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["useCooldownModRate"] = true,
			["uid"] = "dBBrrap4zKy",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = "Interface\\Icons\\Spell_Nature_RavenForm",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
		},
		["[Druid] Nature's Grasp"] = {
			["iconSource"] = -1,
			["parent"] = "[WotLK] Balance Druid (Right Group)",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
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
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnReady",
						["unit"] = "player",
						["spellName"] = 53312,
						["type"] = "spell",
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["event"] = "Cooldown Progress (Spell)",
						["debuffType"] = "HELPFUL",
						["realSpellName"] = "自然之握",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["use_track"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
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
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subborder",
					["border_size"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = false,
				["talent"] = {
					["multi"] = {
						[28] = true,
						[24] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "DRUID",
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
			},
			["source"] = "import",
			["zoom"] = 0.29,
			["regionType"] = "icon",
			["xOffset"] = 0,
			["authorOptions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = false,
			["alpha"] = 1,
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "[Druid] Nature's Grasp",
			["width"] = 40,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["useCooldownModRate"] = true,
			["uid"] = "f3uSztJgzbv",
			["inverse"] = false,
			["icon"] = true,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["Moonfire -Lunar"] = {
			["iconSource"] = -1,
			["wagoID"] = "X6wQKkZUq",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["glow_frame_type"] = "UNITFRAME",
					["glow_type"] = "buttonOverlay",
					["do_glow"] = false,
					["glow_action"] = "show",
				},
				["finish"] = {
					["glow_frame_type"] = "FRAMESELECTOR",
					["hide_all_glows"] = false,
					["glow_action"] = "show",
					["do_glow"] = false,
					["glow_type"] = "Pixel",
					["do_message"] = false,
					["glow_frame"] = "WeakAuras:Life Tap",
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "30",
						["auranames"] = {
							"Faerie Fire", -- [1]
						},
						["matchesShowOn"] = "showOnMissing",
						["unit"] = "target",
						["debuffType"] = "HARMFUL",
						["showClones"] = false,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["auraspellids"] = {
							"48463", -- [1]
							"48462", -- [2]
							"26988", -- [3]
						},
						["spellIds"] = {
						},
						["useName"] = false,
						["remOperator"] = "<",
						["ownOnly"] = true,
						["useExactSpellId"] = true,
						["useRem"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useRem"] = true,
						["type"] = "aura2",
						["unit"] = "player",
						["auraspellids"] = {
							"48518", -- [1]
						},
						["remOperator"] = ">=",
						["rem"] = "13",
						["useExactSpellId"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["customTriggerLogic"] = "function(t)\n    return t[1] and t[2]\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 5,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 30,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[49] = true,
						[63] = true,
						[18] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
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
			},
			["source"] = "import",
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["url"] = "https://wago.io/X6wQKkZUq/5",
			["regionType"] = "icon",
			["parent"] = "平衡德循環助手",
			["cooldown"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["icon"] = true,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["semver"] = "1.0.4",
			["tocversion"] = 30400,
			["id"] = "Moonfire -Lunar",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 30,
			["auto"] = true,
			["uid"] = "WiS798xEhNd",
			["inverse"] = false,
			["xOffset"] = 0,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Starfire-Lunar"] = {
			["iconSource"] = -1,
			["wagoID"] = "X6wQKkZUq",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["duration"] = "1",
						["genericShowOn"] = "showOnReady",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["use_targetRequired"] = true,
						["subeventPrefix"] = "SPELL",
						["event"] = "Action Usable",
						["names"] = {
						},
						["realSpellName"] = "星火术",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["spellName"] = 48465,
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [1]
				{
					["trigger"] = {
						["unit"] = "player",
						["type"] = "aura2",
						["useName"] = false,
						["auranames"] = {
							"Decimation", -- [1]
						},
						["auraspellids"] = {
							"48518", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["useExactSpellId"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 5,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_text_format_p_time_format"] = 0,
					["text_text_format_2.p_time_mod_rate"] = true,
					["text_text_format_2.p_time_format"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["rotateText"] = "NONE",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["text_text_format_2.p_time_precision"] = 1,
					["anchorXOffset"] = 0,
					["text_text_format_2.p_format"] = "timed",
					["text_text_format_p_format"] = "timed",
					["type"] = "subtext",
					["text_shadowXOffset"] = 0,
					["text_color"] = {
						0.062745098039216, -- [1]
						1, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_visible"] = true,
					["text_shadowYOffset"] = 0,
					["text_text_format_2.p_time_dynamic_threshold"] = 60,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "THICKOUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%2.p",
					["text_fontSize"] = 17,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_2.p_time_legacy_floor"] = true,
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "ACShine",
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
					["glowThickness"] = 1,
					["glow"] = true,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 30,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = false,
				["talent"] = {
					["multi"] = {
						[57] = true,
						[59] = true,
						[18] = true,
						[62] = true,
						[67] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
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
			},
			["source"] = "import",
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["url"] = "https://wago.io/X6wQKkZUq/5",
			["regionType"] = "icon",
			["parent"] = "平衡德循環助手",
			["cooldown"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["icon"] = true,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["semver"] = "1.0.4",
			["tocversion"] = 30400,
			["id"] = "Starfire-Lunar",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 30,
			["auto"] = true,
			["uid"] = "dsKZyZHvLBS",
			["inverse"] = false,
			["xOffset"] = 0,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["[Druid] Nature's Grasp Tick"] = {
			["iconSource"] = -1,
			["parent"] = "[WotLK] Balance Druid (Right Group)",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"自然之握", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnReady",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["unevent"] = "auto",
						["use_unit"] = true,
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["duration"] = "1",
						["realSpellName"] = "Nature's Grasp",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["spellName"] = 53312,
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 1,
					["border_offset"] = 0,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "ACShine",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glow"] = true,
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 4,
					["glowBorder"] = false,
				}, -- [3]
				{
					["text_text_format_p_time_format"] = 0,
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_visible"] = true,
					["text_shadowYOffset"] = 0,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_precision"] = 1,
					["text_fontSize"] = 20,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_shadowXOffset"] = 0,
				}, -- [4]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = false,
				["talent"] = {
					["multi"] = {
						[28] = true,
						[24] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "DRUID",
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
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["xOffset"] = 0,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldown"] = true,
			["useCooldownModRate"] = true,
			["config"] = {
			},
			["zoom"] = 0.29,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "[Druid] Nature's Grasp Tick",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["width"] = 40,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "q7KDFMADFYS",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["[Druid] Gloves CD"] = {
			["iconSource"] = -1,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 48477,
						["auranames"] = {
							"Mark of the Wild", -- [1]
							"Gift of the Wild", -- [2]
						},
						["matchesShowOn"] = "showOnMissing",
						["use_spell"] = false,
						["destUnit"] = "target",
						["remaining"] = "8",
						["spellName"] = 48477,
						["ignoreDead"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Equipment Slot)",
						["use_itemSlot"] = true,
						["use_spellId"] = true,
						["use_testForCooldown"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["itemSlot"] = 10,
						["duration"] = "1",
						["type"] = "item",
						["debuffType"] = "HELPFUL",
						["use_remaining"] = true,
						["useName"] = true,
						["auraspellids"] = {
							"29166", -- [1]
						},
						["unevent"] = "auto",
						["unit"] = "player",
						["form"] = {
							["multi"] = {
								true, -- [1]
								true, -- [2]
								true, -- [3]
								true, -- [4]
								true, -- [5]
								true, -- [6]
								[0] = true,
							},
						},
						["ownOnly"] = true,
						["remaining_operator"] = "<",
						["realSpellName"] = "Rebirth",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["ignoreDisconnected"] = false,
						["use_unit"] = true,
						["useExactSpellId"] = false,
					},
					["untrigger"] = {
						["itemSlot"] = 10,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = true,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 1,
					["border_offset"] = 0,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
				}, -- [2]
				{
					["glowFrequency"] = 0.5,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0.9764705882352941, -- [1]
						0, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glow"] = false,
					["glowXOffset"] = 0,
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						0.07450980392156863, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glow"] = true,
					["glowXOffset"] = 0,
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [4]
			},
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
						[24] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_talent"] = false,
				["use_class"] = true,
				["use_spellknown"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 20549,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["zoom"] = 0.29,
			["parent"] = "[WotLK] Balance Druid (Top Group)",
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["xOffset"] = 0,
			["cooldown"] = true,
			["conditions"] = {
			},
			["config"] = {
			},
			["frameStrata"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "[Druid] Gloves CD",
			["width"] = 40,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["useCooldownModRate"] = true,
			["uid"] = "yxLQ5ez8l7T",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = "Interface\\Icons\\Spell_Nature_RavenForm",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
		},
		["Wrath-Solar"] = {
			["iconSource"] = -1,
			["wagoID"] = "X6wQKkZUq",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["duration"] = "1",
						["genericShowOn"] = "showOnReady",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["use_targetRequired"] = false,
						["subeventPrefix"] = "SPELL",
						["event"] = "Action Usable",
						["names"] = {
						},
						["realSpellName"] = "愤怒",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["spellName"] = 48461,
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [1]
				{
					["trigger"] = {
						["unit"] = "player",
						["type"] = "aura2",
						["useName"] = false,
						["auranames"] = {
							"Decimation", -- [1]
						},
						["auraspellids"] = {
							"48517", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["useExactSpellId"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 5,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_text_format_p_time_format"] = 0,
					["text_text_format_2.p_time_mod_rate"] = true,
					["text_text_format_2.p_time_format"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["rotateText"] = "NONE",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["text_text_format_2.p_time_precision"] = 1,
					["anchorXOffset"] = 0,
					["text_text_format_2.p_format"] = "timed",
					["text_text_format_p_format"] = "timed",
					["type"] = "subtext",
					["text_shadowXOffset"] = 0,
					["text_color"] = {
						0, -- [1]
						1, -- [2]
						0.15294117647059, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_visible"] = true,
					["text_shadowYOffset"] = 0,
					["text_text_format_2.p_time_dynamic_threshold"] = 60,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "THICKOUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%2.p",
					["text_fontSize"] = 17,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_2.p_time_legacy_floor"] = true,
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "ACShine",
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
					["glowThickness"] = 1,
					["glow"] = true,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 30,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = false,
				["talent"] = {
					["multi"] = {
						[57] = true,
						[59] = true,
						[18] = true,
						[62] = true,
						[67] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
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
			},
			["source"] = "import",
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["url"] = "https://wago.io/X6wQKkZUq/5",
			["regionType"] = "icon",
			["parent"] = "平衡德循環助手",
			["cooldown"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["icon"] = true,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["semver"] = "1.0.4",
			["tocversion"] = 30400,
			["id"] = "Wrath-Solar",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 30,
			["auto"] = true,
			["uid"] = "h6t)wxva1xO",
			["inverse"] = false,
			["xOffset"] = 0,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["[Druid] Eclipse (Missing)"] = {
			["iconSource"] = -1,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 40.00008808276442,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
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
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["ownOnly"] = true,
						["event"] = "Conditions",
						["use_unit"] = true,
						["names"] = {
						},
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["auranames"] = {
							"Eclipse (Solar)", -- [1]
						},
						["unevent"] = "auto",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
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
			["desaturate"] = true,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subborder",
					["border_size"] = 2,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [2]
			},
			["height"] = 60,
			["load"] = {
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[24] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_talent"] = false,
			},
			["source"] = "import",
			["zoom"] = 0.29,
			["parent"] = "[WotLK] Balance Druid (Main Group)",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["xOffset"] = 7.002853328685887e-05,
			["cooldown"] = true,
			["conditions"] = {
			},
			["config"] = {
			},
			["useCooldownModRate"] = true,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "[Druid] Eclipse (Missing)",
			["width"] = 60,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["uid"] = "rfxH(QUg84Y",
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = "Interface\\Icons\\Ability_Druid_Eclipse",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["距离"] = {
			["outline"] = "THICKOUTLINE",
			["xOffset"] = -99.205078125,
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["displayText_format_1.minRange_format"] = "none",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Range Check",
						["names"] = {
						},
						["unit"] = "target",
						["range"] = "60",
						["spellIds"] = {
						},
						["use_range"] = true,
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["range_operator"] = "<=",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 53,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["font"] = "yan123",
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["load"] = {
				["talent"] = {
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 16,
			["source"] = "import",
			["shadowXOffset"] = 1,
			["anchorFrameFrame"] = "ElvUF_Target",
			["regionType"] = "text",
			["selfPoint"] = "BOTTOM",
			["preferToUpdate"] = false,
			["displayText_format_p_time_precision"] = 1,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["op"] = ">=",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = ">=",
								["value"] = "5",
								["variable"] = "range",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "<=",
								["value"] = "8",
								["variable"] = "range",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.5058823529411764, -- [1]
								0.3137254901960784, -- [2]
								0.2431372549019608, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "range",
						["value"] = "5",
					},
					["changes"] = {
						{
							["value"] = {
								0.7686274509803921, -- [1]
								0.4745098039215686, -- [2]
								0.3686274509803922, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["op"] = ">=",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = ">=",
								["variable"] = "range",
								["value"] = "8",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "<=",
								["variable"] = "range",
								["value"] = "10",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.3686274509803922, -- [1]
								0.2862745098039216, -- [2]
								0.2745098039215687, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = ">=",
								["variable"] = "range",
								["value"] = "5",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "<=",
								["variable"] = "range",
								["value"] = "10",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.1725490196078431, -- [1]
								0.8274509803921568, -- [2]
								0.1843137254901961, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = ">=",
								["value"] = "10",
								["variable"] = "range",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "<=",
								["value"] = "15",
								["variable"] = "range",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.3450980392156863, -- [1]
								0.7529411764705882, -- [2]
								0.2784313725490196, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [5]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = ">=",
								["variable"] = "range",
								["value"] = "15",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "<=",
								["variable"] = "range",
								["value"] = "20",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.2549019607843137, -- [1]
								0.5568627450980392, -- [2]
								0.2666666666666667, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [6]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = ">=",
								["value"] = "20",
								["variable"] = "range",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "<=",
								["value"] = "25",
								["variable"] = "range",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.1098039215686275, -- [1]
								0.3686274509803922, -- [2]
								0.1215686274509804, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [7]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = ">=",
								["variable"] = "range",
								["value"] = "25",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "<=",
								["variable"] = "range",
								["value"] = "30",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.07450980392156863, -- [1]
								0.2509803921568627, -- [2]
								0.08235294117647059, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [8]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = ">=",
								["value"] = "30",
								["variable"] = "range",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "<=",
								["value"] = "35",
								["variable"] = "range",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.02745098039215686, -- [1]
								0.203921568627451, -- [2]
								0.04705882352941176, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [9]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = ">=",
								["variable"] = "range",
								["value"] = "35",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "<=",
								["variable"] = "range",
								["value"] = "41",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.5568627450980392, -- [1]
								0.0196078431372549, -- [2]
								0.01176470588235294, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [10]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = ">=",
								["value"] = "41",
								["variable"] = "range",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "<=",
								["value"] = "45",
								["variable"] = "range",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.2627450980392157, -- [1]
								0.04313725490196078, -- [2]
								0.03137254901960784, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [11]
				{
					["check"] = {
						["op"] = ">=",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = ">=",
								["variable"] = "range",
								["value"] = "41",
							}, -- [1]
						},
						["trigger"] = 1,
						["variable"] = "range",
						["value"] = "45",
					},
					["changes"] = {
						{
							["value"] = {
								0.203921568627451, -- [1]
								0.06274509803921569, -- [2]
								0.0392156862745098, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [12]
			},
			["yOffset"] = -54.30950927734375,
			["displayText"] = "%1.minRange — %1.maxRange",
			["justify"] = "LEFT",
			["tocversion"] = 30400,
			["id"] = "距离",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["uid"] = "ObIXoUzUAcl",
			["config"] = {
			},
			["displayText_format_1.maxRange_format"] = "none",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["information"] = {
			},
			["wordWrap"] = "WordWrap",
		},
		["[Druid] Nature's Grace"] = {
			["sparkWidth"] = 30,
			["iconSource"] = -1,
			["parent"] = "[WotLK] Balance Druid (Main Group)",
			["preferToUpdate"] = false,
			["customText"] = "function()\n    mana = math.max(0, UnitPower(\"player\", 0)) / math.max(1, UnitPowerMax(\"player\", 0)) * 100;\n    return string.format(\"%.0f\", mana);\nend",
			["yOffset"] = -13.00000677033671,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["cooldownEdge"] = false,
			["icon"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"自然之賜", -- [1]
						},
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["powertype"] = 0,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Power",
						["useExactSpellId"] = true,
						["auraspellids"] = {
							"16886", -- [1]
						},
						["spellIds"] = {
						},
						["type"] = "aura2",
						["unit"] = "player",
						["names"] = {
						},
						["use_unit"] = true,
						["unevent"] = "auto",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["auranames"] = {
							"自然之賜", -- [1]
						},
						["matchesShowOn"] = "showOnMissing",
						["unit"] = "player",
						["powertype"] = 0,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["auraspellids"] = {
							"16886", -- [1]
						},
						["event"] = "Power",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["useExactSpellId"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["use_unit"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 53,
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
			["barColor"] = {
				0.5843137254901961, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["frameStrata"] = 1,
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_size"] = 2,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [3]
			},
			["height"] = 10,
			["sparkMirror"] = false,
			["load"] = {
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[28] = true,
						[24] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_talent"] = false,
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["source"] = "import",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["xOffset"] = -74.99999883741691,
			["sparkOffsetX"] = 0,
			["config"] = {
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["uid"] = "7gQXPsH1Yca",
			["zoom"] = 0,
			["icon_side"] = "RIGHT",
			["width"] = 151,
			["sparkHeight"] = 20,
			["texture"] = "Aluminium",
			["sparkHidden"] = "BOTH",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = true,
			["tocversion"] = 30400,
			["id"] = "[Druid] Nature's Grace",
			["auto"] = true,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["[Druid] Current Stance"] = {
			["iconSource"] = -1,
			["parent"] = "[WotLK] Balance Druid (Left Group)",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"24858", -- [1]
							"9634", -- [2]
							"5487", -- [3]
							"1066", -- [4]
							"768", -- [5]
							"783", -- [6]
							"33943", -- [7]
							"40120", -- [8]
						},
						["duration"] = "1",
						["genericShowOn"] = "showOnReady",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["form"] = {
							["multi"] = {
								true, -- [1]
								true, -- [2]
								true, -- [3]
								true, -- [4]
								true, -- [5]
								true, -- [6]
								[0] = true,
							},
						},
						["event"] = "Stance/Form/Aura",
						["use_genericShowOn"] = true,
						["realSpellName"] = "War Stomp",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["unevent"] = "auto",
						["useName"] = true,
						["use_track"] = true,
						["spellName"] = 20549,
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subborder",
					["border_size"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = false,
				["talent"] = {
					["multi"] = {
						[24] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
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
			},
			["source"] = "import",
			["zoom"] = 0.29,
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["xOffset"] = 0,
			["cooldown"] = false,
			["frameStrata"] = 1,
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "[Druid] Current Stance",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 40,
			["useCooldownModRate"] = true,
			["uid"] = "RyeCa3r18ng",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["Insect Swarm-out"] = {
			["iconSource"] = -1,
			["wagoID"] = "X6wQKkZUq",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["glow_frame_type"] = "UNITFRAME",
					["glow_type"] = "buttonOverlay",
					["do_glow"] = false,
					["glow_action"] = "show",
				},
				["finish"] = {
					["glow_frame_type"] = "FRAMESELECTOR",
					["hide_all_glows"] = false,
					["glow_action"] = "show",
					["do_glow"] = false,
					["glow_type"] = "Pixel",
					["do_message"] = false,
					["glow_frame"] = "WeakAuras:Life Tap",
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "30",
						["auranames"] = {
							"Wrath", -- [1]
						},
						["matchesShowOn"] = "showOnMissing",
						["unit"] = "target",
						["debuffType"] = "HARMFUL",
						["showClones"] = false,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["auraspellids"] = {
							"48468", -- [1]
							"27013", -- [2]
						},
						["spellIds"] = {
						},
						["useName"] = false,
						["remOperator"] = "<",
						["ownOnly"] = true,
						["useExactSpellId"] = true,
						["useRem"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auraspellids"] = {
							"48518", -- [1]
						},
						["unit"] = "player",
						["matchesShowOn"] = "showOnMissing",
						["useExactSpellId"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auraspellids"] = {
							"48517", -- [1]
						},
						["unit"] = "player",
						["matchesShowOn"] = "showOnMissing",
						["useExactSpellId"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "spell",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["debuffType"] = "HELPFUL",
						["event"] = "Queued Action",
						["use_track"] = true,
						["spellName"] = 48465,
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return (t[1] and t[2] and t[3] and not t[4])\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 5,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 30,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[49] = true,
						[63] = true,
						[18] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
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
			},
			["source"] = "import",
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["url"] = "https://wago.io/X6wQKkZUq/5",
			["regionType"] = "icon",
			["parent"] = "平衡德循環助手",
			["cooldown"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["icon"] = true,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["semver"] = "1.0.4",
			["tocversion"] = 30400,
			["id"] = "Insect Swarm-out",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 30,
			["auto"] = true,
			["uid"] = "IDFxDB)3iq(",
			["inverse"] = false,
			["xOffset"] = 0,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["日蚀冷却"] = {
			["iconSource"] = 3,
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
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "48517",
						["matchesShowOn"] = "showAlways",
						["names"] = {
						},
						["use_sourceNpcId"] = false,
						["use_auraType"] = true,
						["use_sourceFlags"] = true,
						["use_cloneId"] = false,
						["use_spellSchool"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "combatlog",
						["duration"] = "15",
						["auraType"] = "BUFF",
						["auraspellids"] = {
							"48517", -- [1]
						},
						["useExactSpellId"] = true,
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["subeventSuffix"] = "_AURA_REMOVED",
						["subeventPrefix"] = "SPELL",
						["sourceUnit"] = "player",
						["sourceFlags"] = "Mine",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["useExactSpellId"] = true,
						["unit"] = "player",
						["matchesShowOn"] = "showAlways",
						["auraspellids"] = {
							"48517", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "spell",
						["use_genericShowOn"] = true,
						["event"] = "Action Usable",
						["use_exact_spellName"] = true,
						["realSpellName"] = 26985,
						["use_spellName"] = true,
						["debuffType"] = "HELPFUL",
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["use_track"] = true,
						["spellName"] = 26985,
					},
					["untrigger"] = {
					},
				}, -- [3]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_precision"] = 1,
					["type"] = "subtext",
					["anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "聊天",
					["text_text_format_p_time_mod_rate"] = true,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_legacy_floor"] = false,
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["useGlowColor"] = false,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_alive"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["information"] = {
			},
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["zoom"] = 0,
			["useCooldownModRate"] = true,
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["tocversion"] = 30400,
			["id"] = "日蚀冷却",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 64,
			["alpha"] = 1,
			["uid"] = "gMB1DBDCkGO",
			["inverse"] = false,
			["xOffset"] = 0,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["parent"] = "雷德王阿姨-日蚀月蚀提示+内置cd",
		},
		["Force of Nature"] = {
			["iconSource"] = -1,
			["wagoID"] = "X6wQKkZUq",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["BFbackdrop"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["auranames"] = {
							"Shadow Mastery", -- [1]
							"Improved Scorch", -- [2]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["use_showgcd"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Action Usable",
						["realSpellName"] = "自然之力",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["unit"] = "target",
						["useName"] = true,
						["use_track"] = true,
						["spellName"] = 33831,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 5,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%p",
					["text_text_format_2.unitCount_format"] = "none",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_legacy_floor"] = true,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_text_format_p_format"] = "timed",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "CENTER",
					["text_fontType"] = "OUTLINE",
					["text_text_format_p_time_format"] = 0,
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "ACShine",
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
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 30,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = false,
				["talent"] = {
					["multi"] = {
						[52] = true,
						[95] = true,
						[18] = true,
						[43] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 33831,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["anchorFrameType"] = "SELECTFRAME",
			["source"] = "import",
			["parent"] = "平衡德循環助手",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = 1,
						["variable"] = "onCooldown",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.text_visible",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [1]
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
								["variable"] = "insufficientResources",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.33725490196078, -- [1]
								0.43529411764706, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
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
								0.28627450980392, -- [2]
								0.25882352941176, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [3]
			},
			["anchorFrameFrame"] = "WeakAuras:Wrath (Main Anchor)",
			["regionType"] = "icon",
			["xOffset"] = 0,
			["inverse"] = false,
			["config"] = {
			},
			["useCooldownModRate"] = true,
			["BFskin"] = "Epix",
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["zoom"] = 0.20999999344349,
			["semver"] = "1.0.4",
			["tocversion"] = 30400,
			["id"] = "Force of Nature",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["width"] = 30,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["uid"] = "9dRxiDVegTw",
			["BFgloss"] = 0,
			["url"] = "https://wago.io/X6wQKkZUq/5",
			["displayIcon"] = "",
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["GCDHistoryBuffer6"] = {
			["iconSource"] = -1,
			["wagoID"] = "RvbxkQEv2",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "\n\n",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/RvbxkQEv2/19",
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.thisRegister = 6\n\naura_env.animX = aura_env.config[\"displayTime\"] * aura_env.region.width\nif aura_env.config[\"direction\"] == 1 then\n    aura_env.animDir = -1\nelse\n    aura_env.animDir = 1\nend\n\naura_env.xoff = 0\naura_env.castTime = 0",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["customIcon"] = "function()\n    return aura_env.icon\nend\n\n\n\n\n\n\n\n",
						["names"] = {
						},
						["custom_hide"] = "timed",
						["use_cloneId"] = true,
						["debuffType"] = "HELPFUL",
						["duration"] = "3",
						["type"] = "custom",
						["custom_type"] = "event",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["events"] = "MYSTLER_GCDHISTORY_ADD",
						["custom"] = "function(event, arg1, arg2, arg3, arg4)\n    if arg1 == aura_env.thisRegister then\n        aura_env.icon = arg2\n        aura_env.xoff = 0\n        aura_env.castTime = arg3\n        if arg4 then\n            aura_env.region:SetDesaturated(true)\n            aura_env.region:Color(1,0,0,1)\n        else\n            aura_env.region:SetDesaturated(false)\n            aura_env.region:Color(1,1,1,1)\n        end\n        return true\n    end\n    return false\nend",
						["event"] = "Combat Log",
						["unit"] = "player",
						["customDuration"] = "function()\n    return aura_env.config[\"displayTime\"], aura_env.castTime + aura_env.config[\"displayTime\"]\nend\n\n\n\n\n\n\n\n\n\n\n\n",
						["unevent"] = "timed",
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["sourceUnit"] = "player",
						["dynamicDuration"] = true,
					},
					["untrigger"] = {
						["custom"] = "function() return true end",
						["unit"] = "player",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "0",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function(event, arg1, arg2)\n    if arg1 == aura_env.thisRegister then\n        aura_env.xoff = aura_env.xoff + arg2\n    end\n    return false\nend\n\n\n\n\n\n\n\n\n\n\n\n",
						["custom_type"] = "event",
						["events"] = "MYSTLER_GCDHISTORY_OFFSET",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
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
					["scalex"] = 1,
					["alphaType"] = "custom",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function(progress, start, delta)\n    return math.min(1.0, (1.0 - progress) * 5.0)\nend\n\n\n",
					["use_translate"] = true,
					["use_alpha"] = true,
					["type"] = "custom",
					["easeType"] = "none",
					["translateFunc"] = "function(progress, startX, startY, deltaX, deltaY)\n    local x = startX + aura_env.animDir * (progress * aura_env.animX)\n    x = x + aura_env.animDir * aura_env.xoff\n    return x, startY\nend",
					["scaley"] = 1,
					["alpha"] = 0,
					["y"] = 0,
					["x"] = 0,
					["colorB"] = 1,
					["duration"] = "100%",
					["easeStrength"] = 3,
					["rotate"] = 0,
					["translateType"] = "custom",
					["duration_type"] = "relative",
				},
				["finish"] = {
					["colorR"] = 1,
					["duration"] = "0.2",
					["alphaType"] = "straight",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["use_translate"] = false,
					["use_alpha"] = false,
					["type"] = "none",
					["easeType"] = "none",
					["translateFunc"] = "function(progress, startX, startY, deltaX, deltaY)\n    local x = startX + (progress * deltaX)\n    if aura_env.state then\n        x = x + aura_env.state.xoff\n    end\n    return x, startY + (progress * deltaY)\nend",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["x"] = -150,
					["preset"] = "fade",
					["easeStrength"] = 3,
					["translateType"] = "custom",
					["rotate"] = 0,
					["duration_type"] = "seconds",
					["scalex"] = 1,
				},
			},
			["desaturate"] = false,
			["version"] = 19,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
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
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [2]
			},
			["height"] = 50,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
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
				["talent2"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
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
				["zoneIds"] = "",
			},
			["source"] = "import",
			["width"] = 50,
			["zoom"] = 0,
			["icon"] = true,
			["authorOptions"] = {
				{
					["desc"] = "In which direction should the history expand?",
					["type"] = "select",
					["values"] = {
						"Left", -- [1]
						"Right", -- [2]
					},
					["default"] = 1,
					["key"] = "direction",
					["useDesc"] = true,
					["name"] = "Direction",
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "range",
					["useDesc"] = true,
					["max"] = 6,
					["step"] = 0.5,
					["width"] = 1,
					["min"] = 1,
					["key"] = "displayTime",
					["desc"] = "How long (in seconds) icons are shown at max.",
					["name"] = "Display Time",
					["default"] = 3,
				}, -- [2]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["displayIcon"] = "",
			["cooldownEdge"] = false,
			["xOffset"] = 0,
			["config"] = {
				["displayTime"] = 3,
				["direction"] = 1,
			},
			["useCooldownModRate"] = true,
			["semver"] = "1.1.10",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "GCDHistoryBuffer6",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["stickyDuration"] = false,
			["uid"] = "Vnt4Oz56VXZ",
			["inverse"] = false,
			["parent"] = "GCDHistoryGrp",
			["conditions"] = {
			},
			["cooldown"] = false,
			["selfPoint"] = "CENTER",
		},
		["Starfall"] = {
			["iconSource"] = -1,
			["wagoID"] = "X6wQKkZUq",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["BFbackdrop"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["auranames"] = {
							"Shadow Mastery", -- [1]
							"Improved Scorch", -- [2]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["use_showgcd"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Action Usable",
						["realSpellName"] = "星辰坠落",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["unit"] = "target",
						["useName"] = true,
						["use_track"] = true,
						["spellName"] = 48505,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 5,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%p",
					["text_text_format_2.unitCount_format"] = "none",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_legacy_floor"] = true,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_text_format_p_format"] = "timed",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "CENTER",
					["text_fontType"] = "OUTLINE",
					["text_text_format_p_time_format"] = 0,
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "ACShine",
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
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 30,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[52] = true,
						[95] = true,
						[18] = true,
						[43] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 48505,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["anchorFrameType"] = "SELECTFRAME",
			["source"] = "import",
			["parent"] = "平衡德循環助手",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = 1,
						["variable"] = "onCooldown",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.text_visible",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [1]
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
								["variable"] = "insufficientResources",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.33725490196078, -- [1]
								0.43529411764706, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
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
								0.28627450980392, -- [2]
								0.25882352941176, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [3]
			},
			["anchorFrameFrame"] = "WeakAuras:Wrath (Main Anchor)",
			["regionType"] = "icon",
			["xOffset"] = 0,
			["inverse"] = false,
			["config"] = {
			},
			["useCooldownModRate"] = true,
			["BFskin"] = "Epix",
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["zoom"] = 0.20999999344349,
			["semver"] = "1.0.4",
			["tocversion"] = 30400,
			["id"] = "Starfall",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["width"] = 30,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["uid"] = "SwgQqXzGcNT",
			["BFgloss"] = 0,
			["url"] = "https://wago.io/X6wQKkZUq/5",
			["displayIcon"] = "",
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["[Druid] Moonfire"] = {
			["iconSource"] = -1,
			["parent"] = "[WotLK] Balance Druid (Main Group)",
			["preferToUpdate"] = false,
			["yOffset"] = 39.99994802569802,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["names"] = {
						},
						["spellIds"] = {
						},
						["type"] = "aura2",
						["subeventPrefix"] = "SPELL",
						["unit"] = "target",
						["auranames"] = {
							"月火術", -- [1]
							"月火术", -- [2]
						},
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subborder",
					["border_size"] = 2,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [2]
				{
					["glowFrequency"] = 0.2,
					["glow"] = true,
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 7,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0.5137254901960784, -- [1]
						0, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 15,
					["glowBorder"] = false,
				}, -- [3]
				{
					["text_text_format_p_time_format"] = 0,
					["text_text"] = "%p",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = true,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorYOffset"] = 0,
					["type"] = "subtext",
					["anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						0, -- [2]
						0.03529411764705882, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_precision"] = 1,
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 20,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
				}, -- [4]
			},
			["height"] = 60,
			["load"] = {
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[24] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_talent"] = false,
			},
			["source"] = "import",
			["zoom"] = 0.29,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["authorOptions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["alpha"] = 1,
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "[Druid] Moonfire",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 60,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "4rM7pk(aDd(",
			["inverse"] = false,
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
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "expirationTime",
						["value"] = "3",
						["op"] = "<=",
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.4.text_visible",
						}, -- [1]
					},
				}, -- [1]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["xOffset"] = -119.9997740485608,
		},
		["[Druid] Earth and Moon"] = {
			["sparkWidth"] = 30,
			["iconSource"] = -1,
			["parent"] = "[WotLK] Balance Druid (Main Group)",
			["preferToUpdate"] = false,
			["customText"] = "function()\n    mana = math.max(0, UnitPower(\"player\", 0)) / math.max(1, UnitPowerMax(\"player\", 0)) * 100;\n    return string.format(\"%.0f\", mana);\nend",
			["yOffset"] = -12.99999931612763,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"大地新月", -- [1]
						},
						["duration"] = "1",
						["names"] = {
						},
						["powertype"] = 0,
						["use_powertype"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["unevent"] = "auto",
						["event"] = "Power",
						["useExactSpellId"] = true,
						["auraspellids"] = {
							"60433", -- [1]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["unit"] = "target",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["auranames"] = {
							"Nature's Grace", -- [1]
						},
						["type"] = "aura2",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["matchesShowOn"] = "showOnMissing",
						["event"] = "Power",
						["use_unit"] = true,
						["unevent"] = "auto",
						["powertype"] = 0,
						["spellIds"] = {
						},
						["duration"] = "1",
						["useName"] = true,
						["unit"] = "player",
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["barColor"] = {
				0, -- [1]
				0.5529411764705883, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["frameStrata"] = 1,
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 2,
					["border_anchor"] = "bar",
					["border_offset"] = 0,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
				}, -- [3]
			},
			["height"] = 10,
			["sparkMirror"] = false,
			["load"] = {
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[28] = true,
						[24] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_talent"] = false,
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["source"] = "import",
			["icon"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["xOffset"] = 73.9998438719324,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["uid"] = "LA5Es4OFhzv",
			["zoom"] = 0,
			["icon_side"] = "RIGHT",
			["width"] = 151,
			["sparkHeight"] = 20,
			["texture"] = "Aluminium",
			["sparkHidden"] = "BOTH",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "[Druid] Earth and Moon",
			["spark"] = true,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["[Druid] Starfall"] = {
			["iconSource"] = -1,
			["parent"] = "[WotLK] Balance Druid (Main Group)",
			["preferToUpdate"] = false,
			["yOffset"] = 40.00005306849783,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnReady",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["use_unit"] = true,
						["realSpellName"] = "星辰坠落",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["duration"] = "1",
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["spellName"] = 53201,
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [1]
				{
					["trigger"] = {
						["remaining_operator"] = "<=",
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["remaining"] = "5",
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["duration"] = "1",
						["event"] = "Cooldown Progress (Spell)",
						["unevent"] = "auto",
						["realSpellName"] = "星辰坠落",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_remaining"] = true,
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["spellName"] = 53201,
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnCooldown",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_offset"] = 0,
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 2,
				}, -- [2]
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
					["glow"] = false,
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 5,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						0.04705882352941176, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glow"] = false,
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 2,
					["glowLines"] = 20,
					["glowBorder"] = false,
				}, -- [4]
			},
			["height"] = 60,
			["load"] = {
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[24] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_talent"] = false,
			},
			["source"] = "import",
			["zoom"] = 0.29,
			["regionType"] = "icon",
			["xOffset"] = 60,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldown"] = true,
			["useCooldownModRate"] = true,
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "[Druid] Starfall",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["width"] = 60,
			["uid"] = "NorOs8aFxkX",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
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
							["value"] = true,
							["property"] = "sub.4.glow",
						}, -- [1]
					},
				}, -- [2]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["GCDHistoryBuffer1"] = {
			["iconSource"] = -1,
			["wagoID"] = "RvbxkQEv2",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "\n\n",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/RvbxkQEv2/19",
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.thisRegister = 1\n\naura_env.animX = aura_env.config[\"displayTime\"] * aura_env.region.width\nif aura_env.config[\"direction\"] == 1 then\n    aura_env.animDir = -1\nelse\n    aura_env.animDir = 1\nend\n\naura_env.xoff = 0\naura_env.castTime = 0",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["customIcon"] = "function()\n    return aura_env.icon\nend\n\n\n\n\n\n\n\n",
						["names"] = {
						},
						["custom_hide"] = "timed",
						["use_cloneId"] = true,
						["debuffType"] = "HELPFUL",
						["duration"] = "3",
						["type"] = "custom",
						["custom_type"] = "event",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["events"] = "MYSTLER_GCDHISTORY_ADD",
						["custom"] = "function(event, arg1, arg2, arg3, arg4)\n    if arg1 == aura_env.thisRegister then\n        aura_env.icon = arg2\n        aura_env.xoff = 0\n        aura_env.castTime = arg3\n        if arg4 then\n            aura_env.region:SetDesaturated(true)\n            aura_env.region:Color(1,0,0,1)\n        else\n            aura_env.region:SetDesaturated(false)\n            aura_env.region:Color(1,1,1,1)\n        end\n        return true\n    end\n    return false\nend",
						["event"] = "Combat Log",
						["unit"] = "player",
						["customDuration"] = "function()\n    return aura_env.config[\"displayTime\"], aura_env.castTime + aura_env.config[\"displayTime\"]\nend\n\n\n\n\n\n\n\n\n\n\n\n",
						["unevent"] = "timed",
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["sourceUnit"] = "player",
						["dynamicDuration"] = true,
					},
					["untrigger"] = {
						["custom"] = "function() return true end",
						["unit"] = "player",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "0",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function(event, arg1, arg2)\n    if arg1 == aura_env.thisRegister then\n        aura_env.xoff = aura_env.xoff + arg2\n    end\n    return false\nend\n\n\n\n\n\n\n\n\n\n\n\n",
						["custom_type"] = "event",
						["events"] = "MYSTLER_GCDHISTORY_OFFSET",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
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
					["scalex"] = 1,
					["alphaType"] = "custom",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function(progress, start, delta)\n    return math.min(1.0, (1.0 - progress) * 5.0)\nend\n\n\n",
					["use_translate"] = true,
					["use_alpha"] = true,
					["type"] = "custom",
					["easeType"] = "none",
					["translateFunc"] = "function(progress, startX, startY, deltaX, deltaY)\n    local x = startX + aura_env.animDir * (progress * aura_env.animX)\n    x = x + aura_env.animDir * aura_env.xoff\n    return x, startY\nend",
					["scaley"] = 1,
					["alpha"] = 0,
					["y"] = 0,
					["x"] = 0,
					["colorB"] = 1,
					["duration"] = "100%",
					["easeStrength"] = 3,
					["rotate"] = 0,
					["translateType"] = "custom",
					["duration_type"] = "relative",
				},
				["finish"] = {
					["colorR"] = 1,
					["duration"] = "0.2",
					["alphaType"] = "straight",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["use_translate"] = false,
					["use_alpha"] = false,
					["type"] = "none",
					["easeType"] = "none",
					["translateFunc"] = "function(progress, startX, startY, deltaX, deltaY)\n    local x = startX + (progress * deltaX)\n    if aura_env.state then\n        x = x + aura_env.state.xoff\n    end\n    return x, startY + (progress * deltaY)\nend",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["x"] = -150,
					["preset"] = "fade",
					["easeStrength"] = 3,
					["translateType"] = "custom",
					["rotate"] = 0,
					["duration_type"] = "seconds",
					["scalex"] = 1,
				},
			},
			["desaturate"] = false,
			["version"] = 19,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
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
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [2]
			},
			["height"] = 50,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
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
				["talent2"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
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
				["zoneIds"] = "",
			},
			["source"] = "import",
			["width"] = 50,
			["zoom"] = 0,
			["icon"] = true,
			["authorOptions"] = {
				{
					["desc"] = "In which direction should the history expand?",
					["type"] = "select",
					["values"] = {
						"Left", -- [1]
						"Right", -- [2]
					},
					["default"] = 1,
					["key"] = "direction",
					["useDesc"] = true,
					["name"] = "Direction",
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "range",
					["useDesc"] = true,
					["max"] = 6,
					["step"] = 0.5,
					["width"] = 1,
					["min"] = 1,
					["key"] = "displayTime",
					["desc"] = "How long (in seconds) icons are shown at max.",
					["name"] = "Display Time",
					["default"] = 3,
				}, -- [2]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["displayIcon"] = "",
			["cooldownEdge"] = false,
			["xOffset"] = 0,
			["config"] = {
				["displayTime"] = 3,
				["direction"] = 1,
			},
			["useCooldownModRate"] = true,
			["semver"] = "1.1.10",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "GCDHistoryBuffer1",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["stickyDuration"] = false,
			["uid"] = "2mCEgufi1RT",
			["inverse"] = false,
			["parent"] = "GCDHistoryGrp",
			["conditions"] = {
			},
			["cooldown"] = false,
			["selfPoint"] = "CENTER",
		},
		["FORM"] = {
			["outline"] = "THICKOUTLINE",
			["wagoID"] = "X6wQKkZUq",
			["parent"] = "平衡德循環助手",
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/X6wQKkZUq/5",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["use_inverse"] = true,
						["event"] = "Stance/Form/Aura",
						["use_unit"] = true,
						["use_form"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["form"] = {
							["single"] = 5,
						},
						["names"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 53,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["font"] = "Friz Quadrata TT",
			["version"] = 5,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["load"] = {
				["use_class"] = true,
				["talent"] = {
					["multi"] = {
						[18] = true,
					},
				},
				["use_talent"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 30,
			["source"] = "import",
			["shadowXOffset"] = 1,
			["automaticWidth"] = "Auto",
			["regionType"] = "text",
			["preferToUpdate"] = false,
			["wordWrap"] = "WordWrap",
			["conditions"] = {
			},
			["displayText_format_p_time_precision"] = 1,
			["displayText"] = "變咕咕",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["semver"] = "1.0.4",
			["tocversion"] = 30400,
			["id"] = "FORM",
			["shadowYOffset"] = -1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["uid"] = "Jk5pqNzUz4k",
			["xOffset"] = 0,
			["color"] = {
				1, -- [1]
				0.38823529411765, -- [2]
				0.1921568627451, -- [3]
				1, -- [4]
			},
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["information"] = {
			},
			["selfPoint"] = "BOTTOM",
		},
		["[Druid] Nature's Grasp CD"] = {
			["iconSource"] = -1,
			["parent"] = "[WotLK] Balance Druid (Right Group)",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 53312,
						["event"] = "Cooldown Progress (Spell)",
						["unit"] = "player",
						["realSpellName"] = "自然之握",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["unevent"] = "auto",
						["use_unit"] = true,
						["use_track"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnCooldown",
					},
				}, -- [1]
				{
					["trigger"] = {
						["auranames"] = {
							"Nature's Grasp", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["spellName"] = 53312,
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["type"] = "aura2",
						["realSpellName"] = "Nature's Grasp",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["duration"] = "1",
						["unevent"] = "auto",
						["matchesShowOn"] = "showOnMissing",
						["use_track"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnCooldown",
					},
				}, -- [2]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = true,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 1,
					["border_offset"] = 0,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = false,
				["talent"] = {
					["multi"] = {
						[28] = true,
						[24] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "DRUID",
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
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["regionType"] = "icon",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["authorOptions"] = {
			},
			["icon"] = true,
			["cooldown"] = false,
			["alpha"] = 1,
			["uid"] = "lXn8Zdy6)UA",
			["zoom"] = 0.29,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "[Druid] Nature's Grasp CD",
			["useCooldownModRate"] = true,
			["frameStrata"] = 1,
			["width"] = 40,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["xOffset"] = 0,
		},
		["[Druid] Innervate CD"] = {
			["iconSource"] = -1,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"Moonkin Form", -- [1]
							"Dire Bear Form", -- [2]
							"Bear Form", -- [3]
							"Aquatic Form", -- [4]
							"Cat Form", -- [5]
							"Travel Form", -- [6]
							"Flight Form", -- [7]
						},
						["matchesShowOn"] = "showOnMissing",
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["remaining"] = "170",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["spellName"] = 29166,
						["names"] = {
						},
						["useName"] = true,
						["use_genericShowOn"] = true,
						["subeventSuffix"] = "_CAST_START",
						["type"] = "spell",
						["form"] = {
							["multi"] = {
								true, -- [1]
								true, -- [2]
								true, -- [3]
								true, -- [4]
								true, -- [5]
								true, -- [6]
								[0] = true,
							},
						},
						["event"] = "Cooldown Progress (Spell)",
						["use_remaining"] = true,
						["realSpellName"] = "激活",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["remaining_operator"] = "<",
						["unevent"] = "auto",
						["unit"] = "player",
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnCooldown",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
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
			["desaturate"] = true,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subborder",
					["border_size"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = false,
				["talent"] = {
					["multi"] = {
						[24] = true,
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["parent"] = "[WotLK] Balance Druid (Left Group)",
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["displayIcon"] = "Interface\\Icons\\Spell_Nature_RavenForm",
			["uid"] = "DWXewZSg7iv",
			["useCooldownModRate"] = true,
			["zoom"] = 0.29,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "[Druid] Innervate CD",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 40,
			["alpha"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["[Druid] Eclipse (Solar)"] = {
			["iconSource"] = -1,
			["parent"] = "[WotLK] Balance Druid (Main Group)",
			["preferToUpdate"] = false,
			["yOffset"] = 40.00005306849783,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"48517", -- [1]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["spellIds"] = {
						},
						["auraspellids"] = {
							"48517", -- [1]
						},
						["unit"] = "player",
						["useExactSpellId"] = true,
						["useName"] = false,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_offset"] = 0,
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 2,
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						0.4941176470588236, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glow"] = true,
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 60,
			["load"] = {
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[24] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_talent"] = false,
			},
			["source"] = "import",
			["zoom"] = 0.29,
			["regionType"] = "icon",
			["xOffset"] = 7.002853328685887e-05,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldown"] = true,
			["useCooldownModRate"] = true,
			["uid"] = "iEBY9Cv75A6",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "[Druid] Eclipse (Solar)",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["width"] = 60,
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["[Druid] Eclipse (Lunar)"] = {
			["iconSource"] = -1,
			["parent"] = "[WotLK] Balance Druid (Main Group)",
			["preferToUpdate"] = false,
			["yOffset"] = 40.00005306849783,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["auranames"] = {
							"48518", -- [1]
						},
						["unit"] = "player",
						["spellIds"] = {
						},
						["auraspellids"] = {
							"48518", -- [1]
						},
						["names"] = {
						},
						["useExactSpellId"] = true,
						["useName"] = false,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
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
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subborder",
					["border_size"] = 2,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["glow"] = true,
					["useGlowColor"] = true,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0, -- [1]
						0.5215686274509804, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 60,
			["load"] = {
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[24] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_talent"] = false,
			},
			["source"] = "import",
			["zoom"] = 0.29,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["xOffset"] = 7.002853328685887e-05,
			["cooldown"] = true,
			["frameStrata"] = 1,
			["uid"] = "q6V4qxaQayG",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "[Druid] Eclipse (Lunar)",
			["alpha"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 60,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["authorOptions"] = {
			},
		},
		["[Druid] Tauren Racial"] = {
			["iconSource"] = -1,
			["parent"] = "[WotLK] Balance Druid (Right Group)",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnReady",
						["subeventPrefix"] = "SPELL",
						["spellName"] = 20549,
						["type"] = "spell",
						["unevent"] = "auto",
						["use_unit"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["debuffType"] = "HELPFUL",
						["realSpellName"] = "战争践踏",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["duration"] = "1",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
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
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 1,
					["border_offset"] = 0,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = false,
				["talent"] = {
					["multi"] = {
						[28] = true,
						[24] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["zoom"] = 0.29,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["authorOptions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = false,
			["alpha"] = 1,
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "[Druid] Tauren Racial",
			["useCooldownModRate"] = true,
			["frameStrata"] = 1,
			["width"] = 40,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "t3sw8c6f0oM",
			["inverse"] = false,
			["xOffset"] = 0,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["Threat Differential on Nameplates"] = {
			["authorOptions"] = {
				{
					["type"] = "input",
					["useDesc"] = true,
					["width"] = 2,
					["name"] = "Additional Tanks",
					["default"] = "Tank1,Tank2,Tank3",
					["desc"] = "Format: tank1,tank2,tank3,etc",
					["key"] = "addtanks",
					["length"] = 10,
					["multiline"] = true,
					["useLength"] = false,
				}, -- [1]
				{
					["useName"] = false,
					["type"] = "header",
					["text"] = "",
					["noMerge"] = false,
					["width"] = 1,
				}, -- [2]
				{
					["type"] = "description",
					["text"] = "Size, position and font can be changed under  the \"Display\" tab.",
					["fontSize"] = "medium",
					["width"] = 2,
				}, -- [3]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["height"] = 1,
					["width"] = 1,
					["useHeight"] = true,
				}, -- [4]
				{
					["type"] = "description",
					["text"] = "Change colors under the \"Conditions\" tab.\nYou can add additional glows etc. to the different conditions.\n\"Untanked\"\n\"Insecurely Tanking\"\n\"Tanking\"\n\"Tanked by Other Tank\"",
					["fontSize"] = "medium",
					["width"] = 2,
				}, -- [5]
			},
			["displayText"] = "%c\n",
			["yOffset"] = 0,
			["anchorPoint"] = "LEFT",
			["displayText_format_p_time_format"] = 0,
			["url"] = "https://wago.io/yssC_nf5K/9",
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "local function split(input) -- sligtly modfied version of WeakAuras.split function\n    input = input or \"\"\n    local ret = {}\n    local split, element = true\n    split = input:find(\"[,%s]\")\n    while(split) do\n        element, input = input:sub(1, split-1), input:sub(split+1)\n        if(element ~= \"\") then\n            ret[element] = true\n        end\n        split = input:find(\"[,%s]\")\n    end\n    if(input ~= \"\") then\n        ret[input] = true\n    end\n    return ret\nend\n\naura_env.otherTanks = split(aura_env.config.addtanks)\n\n\naura_env.ThreatFunc = function(unit)\n    local firstUnit, secondUnit\n    local firstThreat, secondThreat = 0, 0\n    local threat, pet\n    for member in WA_IterateGroupMembers() do\n        threat = select(5, UnitDetailedThreatSituation(member, unit))\n        if threat then\n            if threat > firstThreat then\n                secondUnit = firstUnit\n                secondThreat = firstThreat\n                firstUnit = member\n                firstThreat = threat\n            elseif threat > secondThreat then\n                secondUnit = member\n                secondThreat = threat\n            end\n        end\n        \n        pet = member..\"pet\"\n        if UnitExists(pet) then\n            threat = select(5, UnitDetailedThreatSituation(pet, unit))\n            if threat then\n                if threat > firstThreat then\n                    secondUnit = firstUnit\n                    secondThreat = firstThreat\n                    firstUnit = pet\n                    firstThreat = threat\n                elseif threat > secondThreat then\n                    secondUnit = pet\n                    secondThreat = threat\n                end\n            end\n        end\n    end\n    return firstUnit, firstThreat, secondUnit, secondThreat\nend",
					["do_custom"] = true,
				},
				["finish"] = {
					["do_custom"] = false,
				},
			},
			["keepAspectRatio"] = false,
			["displayText_format_c1_format"] = "none",
			["desc"] = "Shows the threat difference between yourself and the party/raid member with the most threat on enemy nameplates.\n\nColor determined by Tankstatus:\n\"Tanking\"  (default: green)\n\"Insecurely Tanking\" (default: yellow \"!!!\")\n\"Tanked by Other Tank\"  (default: blue)\n\"Untanked\" (default: red)",
			["font"] = "Friz Quadrata TT",
			["load"] = {
				["zoneIds"] = "",
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["single"] = 16,
					["multi"] = {
						[16] = true,
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_affixes"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_ingroup"] = false,
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
				["role"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
						["group"] = true,
						["raid"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["shadowXOffset"] = 1,
			["customAnchor"] = "function()\n    if (aura_env.state.unitId) then\n        return C_NamePlate.GetNamePlateForUnit(aura_env.state.unitId)\n    end\nend\n\n\n",
			["regionType"] = "text",
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 20501,
			["alpha"] = 1,
			["uid"] = "1L3Mp1qQdkX",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["wagoID"] = "yssC_nf5K",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "function()\n    local value = aura_env.state and aura_env.state.value\n    if value then\n        if value < 1 then\n            return \"!!!\"\n        else\n            return AbbreviateNumbers(value) or value\n        end\n    end\nend",
			["shadowYOffset"] = -1,
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "stateupdate",
						["customVariables"] = "{\n    status = {\n        display = \"Threat Status\",\n        type = \"select\",\n        values = {\n            [1] = \"Untanked\", \n            [2] = \"Insecurely Tanking\", \n            [3] = \"Tanking\",\n            [4] = \"Tanked by Other Tank\"\n        }\n    }\n}",
						["event"] = "Health",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function(allstates, event, unitId)\n    if not unitId then\n        return\n    end\n    \n    if event == \"NAME_PLATE_UNIT_REMOVED\" then\n        local state = allstates[unitId]\n        if state then\n            state.show = false\n            state.changed = true\n            return true\n        end\n        \n    elseif unitId ~= \"target\" then\n        \n        local isTanking, threatStatus, _, _, threatValue = UnitDetailedThreatSituation(\"player\", unitId)\n        \n        if not threatValue then\n            return \n        end\n        \n        local firstUnit, firstThreat, secondUnit, secondThreat = aura_env.ThreatFunc(unitId)\n        local displayValue\n        \n        if isTanking then\n            displayValue = threatValue - secondThreat\n        else\n            displayValue = threatValue - firstThreat\n            if firstUnit\n            and not UnitIsUnit(firstUnit, \"player\")\n            and aura_env.otherTanks[UnitName(firstUnit)]\n            then\n                threatStatus = 4\n            end\n        end\n        \n        allstates[unitId] = allstates[unitId] or {unit = unitId}\n        local state = allstates[unitId]\n        state.changed = true\n        state.show = true\n        state.status = threatStatus < 1 and 1 or threatStatus\n        state.value = Round(math.abs(displayValue) / 100)\n        return true\n    end\nend",
						["spellIds"] = {
						},
						["events"] = "NAME_PLATE_UNIT_ADDED, NAME_PLATE_UNIT_REMOVED, UNIT_THREAT_LIST_UPDATE, GROUP_ROSTER_UPDATE",
						["check"] = "event",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 53,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["x"] = 0,
					["scalex"] = 1,
					["easeStrength"] = 3,
					["colorFunc"] = "function()    \n    --if not aura_env.state then return 0, 0, 0, 1 end  -- error checking.\n    if aura_env.state.status == 3 then\n        return unpack(aura_env.config[\"color_tanking\"]) -- Reminder: return R, G, B, Alpha (using numbers between 0 and 1)\n    elseif aura_env.state.status == 2 then        \n        return unpack(aura_env.config[\"color_insecure\"])\n    elseif aura_env.state.status == 4  then\n        return unpack(aura_env.config[\"color_others\"])\n    elseif aura_env.state.status <= 1 then\n        return unpack(aura_env.config[\"color_untanked\"])\n    else\n        return 0,0,0,1\n    end \nend",
					["rotate"] = 0,
					["colorType"] = "custom",
					["use_color"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayText_format_c2_format"] = "none",
			["stickyDuration"] = false,
			["version"] = 9,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 40,
			["displayText_format_s_format"] = "none",
			["fontSize"] = 20,
			["source"] = "import",
			["displayText_format_c_format"] = "none",
			["cooldownEdge"] = false,
			["displayText_format_displayValue_format"] = "none",
			["xOffset"] = -50,
			["selfPoint"] = "CENTER",
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["icon"] = true,
			["displayText_format_p_time_precision"] = 1,
			["anchorFrameParent"] = true,
			["displayText_format_formatDiff_format"] = "none",
			["wordWrap"] = "WordWrap",
			["anchorFrameType"] = "NAMEPLATE",
			["semver"] = "1.0.8",
			["cooldownTextDisabled"] = false,
			["id"] = "Threat Differential on Nameplates",
			["desaturate"] = false,
			["frameStrata"] = 1,
			["width"] = 40,
			["justify"] = "LEFT",
			["config"] = {
				["addtanks"] = "Tank1,Tank2,Tank3",
			},
			["inverse"] = false,
			["displayText_format_thing_format"] = "none",
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "status",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "status",
						["value"] = 2,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "status",
						["value"] = 3,
					},
					["changes"] = {
						{
							["value"] = {
								0, -- [1]
								1, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "status",
						["value"] = 4,
					},
					["changes"] = {
						{
							["value"] = {
								0, -- [1]
								0, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["preferToUpdate"] = false,
		},
		["月蚀冷却 "] = {
			["iconSource"] = 3,
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
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "48518",
						["duration"] = "15",
						["unit"] = "player",
						["use_sourceNpcId"] = false,
						["sourceFlags"] = "Mine",
						["use_sourceFlags"] = true,
						["use_cloneId"] = false,
						["use_spellSchool"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "combatlog",
						["subeventPrefix"] = "SPELL",
						["useExactSpellId"] = true,
						["auraspellids"] = {
							"48517", -- [1]
						},
						["subeventSuffix"] = "_AURA_REMOVED",
						["event"] = "Combat Log",
						["names"] = {
						},
						["use_spellName"] = false,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["auraType"] = "BUFF",
						["matchesShowOn"] = "showAlways",
						["sourceUnit"] = "player",
						["use_auraType"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["useExactSpellId"] = true,
						["debuffType"] = "HELPFUL",
						["matchesShowOn"] = "showAlways",
						["auraspellids"] = {
							"48518", -- [1]
						},
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "spell",
						["use_genericShowOn"] = true,
						["event"] = "Action Usable",
						["use_exact_spellName"] = true,
						["realSpellName"] = 26986,
						["use_spellName"] = true,
						["debuffType"] = "HELPFUL",
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["use_track"] = true,
						["spellName"] = 26986,
					},
					["untrigger"] = {
					},
				}, -- [3]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_legacy_floor"] = false,
					["type"] = "subtext",
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "聊天",
					["text_shadowXOffset"] = 0,
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
					["text_text_format_p_time_format"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
				}, -- [2]
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
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["use_alive"] = true,
				["class"] = {
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
			},
			["source"] = "import",
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["cooldown"] = true,
			["parent"] = "雷德王阿姨-日蚀月蚀提示+内置cd",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["cooldownTextDisabled"] = false,
			["useCooldownModRate"] = true,
			["zoom"] = 0,
			["uid"] = "bG5BVG3wv1u",
			["tocversion"] = 30400,
			["id"] = "月蚀冷却 ",
			["width"] = 64,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = 0,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["information"] = {
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
		},
		["[Druid] Barkskin Tick"] = {
			["iconSource"] = -1,
			["parent"] = "[WotLK] Balance Druid (Right Group)",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
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
						["auranames"] = {
							"樹皮術", -- [1]
						},
						["duration"] = "1",
						["genericShowOn"] = "showOnReady",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["unevent"] = "auto",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["event"] = "Cooldown Progress (Spell)",
						["use_genericShowOn"] = true,
						["realSpellName"] = "Barkskin",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["unit"] = "player",
						["use_track"] = true,
						["spellName"] = 22812,
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
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
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 1,
					["border_offset"] = 0,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "ACShine",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glow"] = true,
					["glowXOffset"] = 0,
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = false,
				["talent"] = {
					["multi"] = {
						[28] = true,
						[24] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
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
			},
			["source"] = "import",
			["zoom"] = 0.29,
			["regionType"] = "icon",
			["icon"] = true,
			["authorOptions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["useCooldownModRate"] = true,
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "[Druid] Barkskin Tick",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 40,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "HitYaUIATdd",
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["xOffset"] = 0,
		},
		["[Druid] Rebirth CD"] = {
			["iconSource"] = -1,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"Moonkin Form", -- [1]
							"Dire Bear Form", -- [2]
							"Bear Form", -- [3]
							"Aquatic Form", -- [4]
							"Cat Form", -- [5]
							"Travel Form", -- [6]
							"Flight Form", -- [7]
						},
						["duration"] = "1",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["matchesShowOn"] = "showOnMissing",
						["remaining"] = "170",
						["use_unit"] = true,
						["use_remaining"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["useExactSpellId"] = true,
						["spellName"] = 48477,
						["realSpellName"] = "复生",
						["useName"] = false,
						["auraspellids"] = {
							"29166", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["ignoreDead"] = false,
						["form"] = {
							["multi"] = {
								true, -- [1]
								true, -- [2]
								true, -- [3]
								true, -- [4]
								true, -- [5]
								true, -- [6]
								[0] = true,
							},
						},
						["event"] = "Cooldown Progress (Spell)",
						["unevent"] = "auto",
						["ignoreDisconnected"] = false,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unit"] = "group",
						["ownOnly"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["remaining_operator"] = ">=",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnCooldown",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = true,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subborder",
					["border_size"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = false,
				["talent"] = {
					["multi"] = {
						[24] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
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
			},
			["source"] = "import",
			["zoom"] = 0.29,
			["parent"] = "[WotLK] Balance Druid (Left Group)",
			["regionType"] = "icon",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["xOffset"] = 0,
			["cooldown"] = true,
			["conditions"] = {
			},
			["config"] = {
			},
			["useCooldownModRate"] = true,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "[Druid] Rebirth CD",
			["width"] = 40,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["uid"] = "nbqOHIUg0MR",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = "Interface\\Icons\\Spell_Nature_RavenForm",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
		},
		["[Druid] Force of Nature"] = {
			["iconSource"] = -1,
			["parent"] = "[WotLK] Balance Druid (Main Group)",
			["preferToUpdate"] = false,
			["yOffset"] = 39.99994802569802,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnReady",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["spellName"] = 33831,
						["event"] = "Cooldown Progress (Spell)",
						["use_unit"] = true,
						["realSpellName"] = "自然之力",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["duration"] = "1",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [1]
				{
					["trigger"] = {
						["remaining_operator"] = "<=",
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["remaining"] = "5",
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["duration"] = "1",
						["event"] = "Cooldown Progress (Spell)",
						["use_remaining"] = true,
						["realSpellName"] = "自然之力",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["spellName"] = 33831,
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnCooldown",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subborder",
					["border_size"] = 2,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["glow"] = false,
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
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
				{
					["glowFrequency"] = 0.25,
					["glow"] = false,
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 5,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						0.04705882352941176, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowThickness"] = 2,
					["glowScale"] = 1,
					["glowLines"] = 20,
					["glowBorder"] = false,
				}, -- [4]
			},
			["height"] = 60,
			["load"] = {
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[24] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_talent"] = false,
			},
			["source"] = "import",
			["zoom"] = 0.29,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["xOffset"] = 119.9999141056273,
			["cooldown"] = true,
			["frameStrata"] = 1,
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "[Druid] Force of Nature",
			["alpha"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 60,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "2)BugDSDefm",
			["inverse"] = false,
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
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
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
							["value"] = true,
							["property"] = "sub.4.glow",
						}, -- [1]
					},
				}, -- [2]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["authorOptions"] = {
			},
		},
		["[Druid] Innervate"] = {
			["iconSource"] = -1,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"Moonkin Form", -- [1]
							"Dire Bear Form", -- [2]
							"Bear Form", -- [3]
							"Aquatic Form", -- [4]
							"Cat Form", -- [5]
							"Travel Form", -- [6]
							"Flight Form", -- [7]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnReady",
						["names"] = {
						},
						["spellName"] = 29166,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["form"] = {
							["multi"] = {
								true, -- [1]
								true, -- [2]
								true, -- [3]
								true, -- [4]
								true, -- [5]
								true, -- [6]
								[0] = true,
							},
						},
						["event"] = "Cooldown Progress (Spell)",
						["matchesShowOn"] = "showOnMissing",
						["realSpellName"] = "激活",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["type"] = "spell",
						["use_unit"] = true,
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 1,
					["border_offset"] = 0,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = false,
				["talent"] = {
					["multi"] = {
						[24] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
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
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["parent"] = "[WotLK] Balance Druid (Left Group)",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = false,
			["conditions"] = {
			},
			["uid"] = "u(fTc6SNtEZ",
			["frameStrata"] = 1,
			["zoom"] = 0.29,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "[Druid] Innervate",
			["width"] = 40,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["useCooldownModRate"] = true,
			["config"] = {
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["displayIcon"] = "Interface\\Icons\\Spell_Nature_RavenForm",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["xOffset"] = 0,
		},
		["平衡德循環助手"] = {
			["arcLength"] = 360,
			["controlledChildren"] = {
				"FORM", -- [1]
				"Faerie Fire ", -- [2]
				"Insect Swarm -Solar", -- [3]
				"Insect Swarm-out", -- [4]
				"Wrath-Solar", -- [5]
				"Wrath-out", -- [6]
				"Moonfire -Lunar", -- [7]
				"Moonfire-out", -- [8]
				"Starfire-Lunar", -- [9]
				"Starfire-out", -- [10]
				"Starfall", -- [11]
				"Force of Nature", -- [12]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "X6wQKkZUq",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = -266.0494995117188,
			["sortHybridTable"] = {
				["Force of Nature"] = false,
				["FORM"] = false,
				["Insect Swarm -Solar"] = false,
				["Faerie Fire "] = false,
				["Starfall"] = false,
				["Moonfire -Lunar"] = false,
				["Wrath-out"] = false,
				["Wrath-Solar"] = false,
				["Insect Swarm-out"] = false,
				["Moonfire-out"] = false,
				["Starfire-out"] = false,
				["Starfire-Lunar"] = false,
			},
			["fullCircle"] = true,
			["space"] = 5,
			["url"] = "https://wago.io/X6wQKkZUq/5",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["unit"] = "player",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["internalVersion"] = 53,
			["useLimit"] = true,
			["align"] = "CENTER",
			["rotation"] = 0,
			["config"] = {
			},
			["version"] = 5,
			["subRegions"] = {
			},
			["animate"] = false,
			["grow"] = "HORIZONTAL",
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
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["anchorPoint"] = "CENTER",
			["source"] = "import",
			["gridType"] = "RD",
			["scale"] = 1,
			["stagger"] = 0,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["limit"] = 7,
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["uid"] = "bYz5QzjInUk",
			["constantFactor"] = "RADIUS",
			["gridWidth"] = 5,
			["borderOffset"] = 4,
			["semver"] = "1.0.4",
			["tocversion"] = 30400,
			["id"] = "平衡德循環助手",
			["xOffset"] = -309.2548217773438,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["sort"] = "none",
			["borderInset"] = 1,
			["rowSpace"] = 1,
			["radius"] = 200,
			["conditions"] = {
			},
			["information"] = {
			},
			["selfPoint"] = "CENTER",
		},
		["[Druid] Starfall CD"] = {
			["iconSource"] = -1,
			["parent"] = "[WotLK] Balance Druid (Main Group)",
			["preferToUpdate"] = false,
			["yOffset"] = 39.9999830399646,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["remaining_operator"] = ">",
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["remaining"] = "5",
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["duration"] = "1",
						["event"] = "Cooldown Progress (Spell)",
						["use_remaining"] = true,
						["realSpellName"] = "星辰坠落",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["spellName"] = 53201,
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnCooldown",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = true,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subborder",
					["border_size"] = 2,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["glow"] = false,
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
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
				{
					["glowFrequency"] = 0.25,
					["glow"] = false,
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 5,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						0.04705882352941176, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowThickness"] = 2,
					["glowScale"] = 1,
					["glowLines"] = 20,
					["glowBorder"] = false,
				}, -- [4]
			},
			["height"] = 60,
			["load"] = {
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[24] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_talent"] = false,
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["anchorFrameFrame"] = "WeakAuras:[Druid] Starfall",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["xOffset"] = 59.99995705281367,
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
			["cooldown"] = true,
			["frameStrata"] = 1,
			["config"] = {
			},
			["zoom"] = 0.29,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "[Druid] Starfall CD",
			["alpha"] = 1,
			["useCooldownModRate"] = true,
			["anchorFrameType"] = "SCREEN",
			["width"] = 60,
			["uid"] = "qKlmydmvDse",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["authorOptions"] = {
			},
		},
		["[Druid] Eclipse (Lunar) CD Timer "] = {
			["outline"] = "OUTLINE",
			["parent"] = "[WotLK] Balance Druid (Main Group)",
			["displayText"] = "%p",
			["yOffset"] = 21,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "48518",
						["auranames"] = {
							"Eclipse (Solar)", -- [1]
						},
						["duration"] = "30",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["spellName"] = "Eclipse (Lunar)",
						["useName"] = true,
						["unevent"] = "timed",
						["auraType"] = "BUFF",
						["unit"] = "player",
						["subeventSuffix"] = "_AURA_APPLIED",
						["event"] = "Combat Log",
						["type"] = "combatlog",
						["use_spellId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["ownOnly"] = true,
						["names"] = {
						},
						["sourceUnit"] = "player",
						["use_auraType"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_time_mod_rate"] = true,
			["displayText_format_p_time_legacy_floor"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["preferToUpdate"] = false,
			["desaturate"] = false,
			["font"] = "Expressway",
			["icon"] = true,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 60,
			["cooldown"] = true,
			["load"] = {
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[24] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_talent"] = false,
			},
			["fixedWidth"] = 200,
			["shadowYOffset"] = -1,
			["fontSize"] = 15,
			["source"] = "import",
			["displayText_format_p_time_dynamic_threshold"] = 0,
			["shadowXOffset"] = 1,
			["authorOptions"] = {
			},
			["uid"] = "GWzfwJM)zER",
			["anchorFrameFrame"] = "WeakAuras:[Druid] Eclipse (Missing)",
			["regionType"] = "text",
			["displayText_format_p_format"] = "timed",
			["width"] = 60,
			["frameStrata"] = 1,
			["wordWrap"] = "WordWrap",
			["displayText_format_p_time_precision"] = 1,
			["xOffset"] = 18,
			["auto"] = true,
			["zoom"] = 0.29,
			["justify"] = "LEFT",
			["tocversion"] = 30400,
			["id"] = "[Druid] Eclipse (Lunar) CD Timer ",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["color"] = {
				0, -- [1]
				0.5333333333333333, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["inverse"] = false,
			["internalVersion"] = 53,
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
			["cooldownEdge"] = true,
		},
		["GCDHistoryBuffer4"] = {
			["iconSource"] = -1,
			["wagoID"] = "RvbxkQEv2",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "\n\n",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/RvbxkQEv2/19",
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.thisRegister = 4\n\naura_env.animX = aura_env.config[\"displayTime\"] * aura_env.region.width\nif aura_env.config[\"direction\"] == 1 then\n    aura_env.animDir = -1\nelse\n    aura_env.animDir = 1\nend\n\naura_env.xoff = 0\naura_env.castTime = 0",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["customIcon"] = "function()\n    return aura_env.icon\nend\n\n\n\n\n\n\n\n",
						["names"] = {
						},
						["custom_hide"] = "timed",
						["use_cloneId"] = true,
						["debuffType"] = "HELPFUL",
						["duration"] = "3",
						["type"] = "custom",
						["custom_type"] = "event",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["events"] = "MYSTLER_GCDHISTORY_ADD",
						["custom"] = "function(event, arg1, arg2, arg3, arg4)\n    if arg1 == aura_env.thisRegister then\n        aura_env.icon = arg2\n        aura_env.xoff = 0\n        aura_env.castTime = arg3\n        if arg4 then\n            aura_env.region:SetDesaturated(true)\n            aura_env.region:Color(1,0,0,1)\n        else\n            aura_env.region:SetDesaturated(false)\n            aura_env.region:Color(1,1,1,1)\n        end\n        return true\n    end\n    return false\nend",
						["event"] = "Combat Log",
						["unit"] = "player",
						["customDuration"] = "function()\n    return aura_env.config[\"displayTime\"], aura_env.castTime + aura_env.config[\"displayTime\"]\nend\n\n\n\n\n\n\n\n\n\n\n\n",
						["unevent"] = "timed",
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["sourceUnit"] = "player",
						["dynamicDuration"] = true,
					},
					["untrigger"] = {
						["custom"] = "function() return true end",
						["unit"] = "player",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "0",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function(event, arg1, arg2)\n    if arg1 == aura_env.thisRegister then\n        aura_env.xoff = aura_env.xoff + arg2\n    end\n    return false\nend\n\n\n\n\n\n\n\n\n\n\n\n",
						["custom_type"] = "event",
						["events"] = "MYSTLER_GCDHISTORY_OFFSET",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
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
					["scalex"] = 1,
					["alphaType"] = "custom",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function(progress, start, delta)\n    return math.min(1.0, (1.0 - progress) * 5.0)\nend\n\n\n",
					["use_translate"] = true,
					["use_alpha"] = true,
					["type"] = "custom",
					["easeType"] = "none",
					["translateFunc"] = "function(progress, startX, startY, deltaX, deltaY)\n    local x = startX + aura_env.animDir * (progress * aura_env.animX)\n    x = x + aura_env.animDir * aura_env.xoff\n    return x, startY\nend",
					["scaley"] = 1,
					["alpha"] = 0,
					["y"] = 0,
					["x"] = 0,
					["colorB"] = 1,
					["duration"] = "100%",
					["easeStrength"] = 3,
					["rotate"] = 0,
					["translateType"] = "custom",
					["duration_type"] = "relative",
				},
				["finish"] = {
					["colorR"] = 1,
					["duration"] = "0.2",
					["alphaType"] = "straight",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["use_translate"] = false,
					["use_alpha"] = false,
					["type"] = "none",
					["easeType"] = "none",
					["translateFunc"] = "function(progress, startX, startY, deltaX, deltaY)\n    local x = startX + (progress * deltaX)\n    if aura_env.state then\n        x = x + aura_env.state.xoff\n    end\n    return x, startY + (progress * deltaY)\nend",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["x"] = -150,
					["preset"] = "fade",
					["easeStrength"] = 3,
					["translateType"] = "custom",
					["rotate"] = 0,
					["duration_type"] = "seconds",
					["scalex"] = 1,
				},
			},
			["desaturate"] = false,
			["version"] = 19,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
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
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [2]
			},
			["height"] = 50,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
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
				["talent2"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
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
				["zoneIds"] = "",
			},
			["source"] = "import",
			["width"] = 50,
			["zoom"] = 0,
			["icon"] = true,
			["authorOptions"] = {
				{
					["desc"] = "In which direction should the history expand?",
					["type"] = "select",
					["values"] = {
						"Left", -- [1]
						"Right", -- [2]
					},
					["default"] = 1,
					["key"] = "direction",
					["useDesc"] = true,
					["name"] = "Direction",
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "range",
					["useDesc"] = true,
					["max"] = 6,
					["step"] = 0.5,
					["width"] = 1,
					["min"] = 1,
					["key"] = "displayTime",
					["desc"] = "How long (in seconds) icons are shown at max.",
					["name"] = "Display Time",
					["default"] = 3,
				}, -- [2]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["displayIcon"] = "",
			["cooldownEdge"] = false,
			["xOffset"] = 0,
			["config"] = {
				["displayTime"] = 3,
				["direction"] = 1,
			},
			["useCooldownModRate"] = true,
			["semver"] = "1.1.10",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "GCDHistoryBuffer4",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["stickyDuration"] = false,
			["uid"] = "fPKylY3er(o",
			["inverse"] = false,
			["parent"] = "GCDHistoryGrp",
			["conditions"] = {
			},
			["cooldown"] = false,
			["selfPoint"] = "CENTER",
		},
		["雷德王阿姨-日蚀月蚀提示+内置cd"] = {
			["arcLength"] = 360,
			["controlledChildren"] = {
				"日蚀触发", -- [1]
				"日蚀冷却", -- [2]
				"月蚀触发 ", -- [3]
				"月蚀冷却 ", -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -131.749755859375,
			["preferToUpdate"] = false,
			["yOffset"] = 168.5763549804688,
			["anchorPoint"] = "CENTER",
			["fullCircle"] = true,
			["useAnchorPerUnit"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["names"] = {
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["internalVersion"] = 53,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["align"] = "CENTER",
			["stagger"] = 0,
			["frameStrata"] = 1,
			["gridType"] = "RD",
			["subRegions"] = {
			},
			["radius"] = 200,
			["rotation"] = 0,
			["load"] = {
				["talent"] = {
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["useLimit"] = false,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sortHybridTable"] = {
				["日蚀触发"] = false,
				["月蚀触发 "] = false,
				["日蚀冷却"] = false,
				["月蚀冷却 "] = false,
			},
			["animate"] = false,
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["scale"] = 1,
			["space"] = 0,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["anchorPerUnit"] = "CUSTOM",
			["uid"] = "pKJz0wdW89z",
			["sort"] = "none",
			["constantFactor"] = "RADIUS",
			["rowSpace"] = 1,
			["borderOffset"] = 4,
			["config"] = {
			},
			["tocversion"] = 30400,
			["id"] = "雷德王阿姨-日蚀月蚀提示+内置cd",
			["source"] = "import",
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["limit"] = 5,
			["borderInset"] = 1,
			["selfPoint"] = "LEFT",
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["information"] = {
			},
			["grow"] = "RIGHT",
		},
		["[WotLK] Balance Druid (Top Group)"] = {
			["grow"] = "HORIZONTAL",
			["controlledChildren"] = {
				"[Druid] Mark 2", -- [1]
				"[Druid] Faerie Fire", -- [2]
				"[Druid] Faerie Fire Fading Icon", -- [3]
				"[Druid] Gloves", -- [4]
				"[Druid] Gloves CD", -- [5]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 60,
			["gridType"] = "RD",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 5,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["names"] = {
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["internalVersion"] = 53,
			["useLimit"] = false,
			["align"] = "CENTER",
			["stagger"] = 0,
			["gridWidth"] = 5,
			["limit"] = 5,
			["subRegions"] = {
			},
			["anchorPoint"] = "CENTER",
			["parent"] = "[WotLK] Balance Druid (Main Group)",
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
			["rowSpace"] = 1,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["radius"] = 200,
			["source"] = "import",
			["xOffset"] = 0,
			["scale"] = 1,
			["rotation"] = 0,
			["border"] = false,
			["anchorFrameFrame"] = "WeakAuras:[Druid] Eclipse (Missing)",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["uid"] = "3KtS9QmP5L0",
			["borderEdge"] = "Square Full White",
			["constantFactor"] = "RADIUS",
			["arcLength"] = 360,
			["borderOffset"] = 4,
			["sortHybridTable"] = {
				["[Druid] Mark 2"] = false,
				["[Druid] Faerie Fire Fading Icon"] = false,
				["[Druid] Gloves"] = false,
				["[Druid] Gloves CD"] = false,
				["[Druid] Faerie Fire"] = false,
			},
			["tocversion"] = 30400,
			["id"] = "[WotLK] Balance Druid (Top Group)",
			["borderInset"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["selfPoint"] = "CENTER",
			["config"] = {
			},
			["animate"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["fullCircle"] = true,
		},
		["[Druid] Tauren Racial CD"] = {
			["iconSource"] = -1,
			["parent"] = "[WotLK] Balance Druid (Right Group)",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["spellName"] = 20549,
						["event"] = "Cooldown Progress (Spell)",
						["names"] = {
						},
						["realSpellName"] = "战争践踏",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["use_track"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnCooldown",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = true,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subborder",
					["border_size"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = false,
				["talent"] = {
					["multi"] = {
						[28] = true,
						[24] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "DRUID",
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
			},
			["source"] = "import",
			["zoom"] = 0.29,
			["regionType"] = "icon",
			["xOffset"] = 0,
			["authorOptions"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldown"] = true,
			["alpha"] = 1,
			["uid"] = "W2hNZ)lHN(K",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "[Druid] Tauren Racial CD",
			["useCooldownModRate"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["width"] = 40,
			["config"] = {
			},
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["[WotLK] Balance Druid (Left Group)"] = {
			["arcLength"] = 360,
			["controlledChildren"] = {
				"[Druid] Current Stance", -- [1]
				"[Druid] Current Stance Missing", -- [2]
				"[Druid] Innervate", -- [3]
				"[Druid] Innervate CD", -- [4]
				"[Druid] Innervate Cast", -- [5]
				"[Druid] Rebirth", -- [6]
				"[Druid] Rebirth CD", -- [7]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -172.4999329463117,
			["preferToUpdate"] = false,
			["yOffset"] = 30,
			["gridType"] = "RD",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["rowSpace"] = 1,
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
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["internalVersion"] = 53,
			["selfPoint"] = "TOP",
			["align"] = "CENTER",
			["rotation"] = 0,
			["gridWidth"] = 5,
			["anchorFrameFrame"] = "WeakAuras:[Druid] Eclipse (Missing)",
			["subRegions"] = {
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
			["anchorPoint"] = "CENTER",
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
			["parent"] = "[WotLK] Balance Druid (Main Group)",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["space"] = 5,
			["source"] = "import",
			["useLimit"] = false,
			["scale"] = 1,
			["authorOptions"] = {
			},
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["config"] = {
			},
			["grow"] = "DOWN",
			["constantFactor"] = "RADIUS",
			["limit"] = 5,
			["borderOffset"] = 4,
			["fullCircle"] = true,
			["tocversion"] = 30400,
			["id"] = "[WotLK] Balance Druid (Left Group)",
			["borderInset"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["animate"] = false,
			["uid"] = "gaGj7DZXdLO",
			["sortHybridTable"] = {
				["[Druid] Innervate CD"] = false,
				["[Druid] Innervate"] = false,
				["[Druid] Current Stance"] = false,
				["[Druid] Innervate Cast"] = false,
				["[Druid] Rebirth CD"] = false,
				["[Druid] Rebirth"] = false,
				["[Druid] Current Stance Missing"] = false,
			},
			["radius"] = 200,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["stagger"] = 0,
		},
		["[Druid] Faerie Fire fading"] = {
			["sparkWidth"] = 20,
			["iconSource"] = -1,
			["parent"] = "[WotLK] Balance Druid (Main Group)",
			["adjustedMax"] = "30",
			["adjustedMin"] = "0",
			["yOffset"] = -15,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["debuffType"] = "HARMFUL",
						["auranames"] = {
							"精靈之火", -- [1]
						},
						["auraspellids"] = {
							"770", -- [1]
							"16857", -- [2]
						},
						["useExactSpellId"] = true,
						["event"] = "Health",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "target",
						["spellIds"] = {
						},
						["useName"] = false,
						["remOperator"] = "<=",
						["subeventPrefix"] = "SPELL",
						["rem"] = "30",
						["useRem"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 53,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["auto"] = true,
			["barColor"] = {
				0.6588235294117647, -- [1]
				0, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["preferToUpdate"] = false,
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_offset"] = 0,
					["border_anchor"] = "bar",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 1,
				}, -- [3]
			},
			["height"] = 7,
			["selfPoint"] = "CENTER",
			["load"] = {
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[24] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_talent"] = false,
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = true,
			["icon"] = false,
			["source"] = "import",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["color"] = {
			},
			["sparkOffsetX"] = 0,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorFrameFrame"] = "WeakAuras:[Druid] Faerie Fire Fading Icon",
			["regionType"] = "aurabar",
			["useAdjustededMin"] = true,
			["width"] = 38,
			["icon_side"] = "RIGHT",
			["alpha"] = 1,
			["sparkHeight"] = 10,
			["texture"] = "Blizzard",
			["id"] = "[Druid] Faerie Fire fading",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = true,
			["tocversion"] = 30400,
			["sparkHidden"] = "NEVER",
			["zoom"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["uid"] = "4mueaH2hABS",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["xOffset"] = 0,
		},
		["Insect Swarm -Solar"] = {
			["iconSource"] = -1,
			["wagoID"] = "X6wQKkZUq",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["glow_frame_type"] = "UNITFRAME",
					["glow_type"] = "buttonOverlay",
					["do_glow"] = false,
					["glow_action"] = "show",
				},
				["finish"] = {
					["glow_frame_type"] = "FRAMESELECTOR",
					["hide_all_glows"] = false,
					["glow_action"] = "show",
					["do_glow"] = false,
					["glow_type"] = "Pixel",
					["do_message"] = false,
					["glow_frame"] = "WeakAuras:Life Tap",
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "30",
						["auranames"] = {
							"Faerie Fire", -- [1]
						},
						["matchesShowOn"] = "showOnMissing",
						["unit"] = "target",
						["debuffType"] = "HARMFUL",
						["showClones"] = false,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["auraspellids"] = {
							"48468", -- [1]
							"27013", -- [2]
						},
						["spellIds"] = {
						},
						["useName"] = false,
						["remOperator"] = "<",
						["ownOnly"] = true,
						["useExactSpellId"] = true,
						["useRem"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useRem"] = true,
						["type"] = "aura2",
						["unit"] = "player",
						["auraspellids"] = {
							"48517", -- [1]
						},
						["remOperator"] = ">=",
						["rem"] = "13",
						["useExactSpellId"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["customTriggerLogic"] = "function(t)\n    return t[1] and t[2]\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 5,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 30,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[18] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
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
			},
			["source"] = "import",
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["url"] = "https://wago.io/X6wQKkZUq/5",
			["regionType"] = "icon",
			["parent"] = "平衡德循環助手",
			["cooldown"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["icon"] = true,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["semver"] = "1.0.4",
			["tocversion"] = 30400,
			["id"] = "Insect Swarm -Solar",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 30,
			["auto"] = true,
			["uid"] = "J7od41mpWGd",
			["inverse"] = false,
			["xOffset"] = 0,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["[Druid] GCD"] = {
			["sparkWidth"] = 30,
			["iconSource"] = -1,
			["parent"] = "[WotLK] Balance Druid (Main Group)",
			["preferToUpdate"] = false,
			["customText"] = "function()\n    mana = math.max(0, UnitPower(\"player\", 0)) / math.max(1, UnitPowerMax(\"player\", 0)) * 100;\n    return string.format(\"%.0f\", mana);\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["cooldownEdge"] = false,
			["icon"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "spell",
						["useName"] = true,
						["auranames"] = {
							"Innervate", -- [1]
						},
						["use_unit"] = true,
						["duration"] = "1",
						["event"] = "Global Cooldown",
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["powertype"] = 0,
						["spellIds"] = {
						},
						["unit"] = "player",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 53,
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
			["barColor"] = {
				0, -- [1]
				0.8, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["desaturate"] = false,
			["frameStrata"] = 1,
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
			},
			["height"] = 20,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["load"] = {
				["use_class"] = true,
				["use_talent"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[28] = true,
						[24] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
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
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["selfPoint"] = "CENTER",
			["source"] = "import",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["xOffset"] = 0,
			["sparkOffsetX"] = 0,
			["config"] = {
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["uid"] = "ZbQNr7(BYKk",
			["zoom"] = 0,
			["icon_side"] = "RIGHT",
			["width"] = 300,
			["sparkHeight"] = 40,
			["texture"] = "Aluminium",
			["sparkHidden"] = "BOTH",
			["sparkTexture"] = "Interface\\GLUES\\LoadingBar\\UI-LoadingBar-Spark",
			["spark"] = true,
			["tocversion"] = 30400,
			["id"] = "[Druid] GCD",
			["auto"] = true,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["sparkMirror"] = false,
		},
		["GCDHistoryCastControl"] = {
			["iconSource"] = -1,
			["wagoID"] = "RvbxkQEv2",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "\n\n",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/RvbxkQEv2/19",
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.playerGUID = UnitGUID(\"player\")\naura_env.casting = false\naura_env.lastT = 0\naura_env.curRegister = 1\naura_env.maxRegister = aura_env.config[\"maxIcons\"]\n\naura_env.builtinBlacklist = {\n    [27576] = true, -- Rogue, Muti Off-hand\n    [212743] = true, -- Rogue, Shuriken Storm CP\n    [139546] = true, -- Rogue, Outlaw CP Gain\n    [162530] = true, -- Monk, Refreshing Jade Wind HoT\n    [147193] = true, -- Shadow Priest, Shadowy Apparition\n    [341263] = true, -- Shadow Priest, Shadowy Apparition\n    [324748] = true, -- Weapon enchant, Celestial Guidance\n    [209693] = true, -- Demon Hunter, Shattered Souls\n    [272790] = true, -- Hunter, Barbed Shot Frenzy\n    [354050] = true, -- Nimble Steps\n}",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "3",
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["customIcon"] = "function()\n    return aura_env.icon\nend\n\n\n\n\n\n\n\n",
						["use_cloneId"] = true,
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "custom",
						["type"] = "custom",
						["use_absorbMode"] = true,
						["custom_type"] = "event",
						["unevent"] = "timed",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["event"] = "Combat Log",
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED,UNIT_SPELLCAST_CHANNEL_STOP,UNIT_SPELLCAST_CHANNEL_START,UNIT_SPELLCAST_INTERRUPTED,CURRENT_SPELL_CAST_CHANGED",
						["spellIds"] = {
						},
						["unit"] = "player",
						["custom"] = "function(event, arg1, arg2, arg3)\n    local function onBlacklist(id)\n        if string.match(aura_env.config[\"blacklist\"], \"%f[%w_]\" .. id .. \"%f[^%w_]\") or\n        aura_env.builtinBlacklist[id] then\n            return true\n        end\n        return false\n    end\n    \n    local function newSpell(id, interrupted)\n        -- Run next register\n        local t = GetTime()\n        WeakAuras.ScanEvents(\"MYSTLER_GCDHISTORY_ADD\", aura_env.curRegister, select(3, GetSpellInfo(id)), t, interrupted)\n        \n        -- Adjust offset if necessary\n        local xoff = math.max(0, 1 - (t - aura_env.lastT)) * (aura_env.region.width + 2)\n        aura_env.lastT = t\n        if xoff > 0 then\n            for i=1,aura_env.maxRegister do\n                if i ~= aura_env.curRegister then\n                    WeakAuras.ScanEvents(\"MYSTLER_GCDHISTORY_OFFSET\", i, xoff)\n                end\n            end\n        end\n        \n        -- Advance register num\n        aura_env.curRegister = aura_env.curRegister + 1\n        if aura_env.curRegister > aura_env.maxRegister then\n            aura_env.curRegister = 1\n        end\n    end\n    \n    if event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        local _,ce,_,guid,_,_,_,dguid,_,_,_,id,name = CombatLogGetCurrentEventInfo()\n        if onBlacklist(id) then\n            return aura_env.casting\n        end\n        if ce == \"SPELL_CAST_START\" and guid == aura_env.playerGUID then\n            local _,_,icon,casttime = GetSpellInfo(id)\n            if casttime > 0 then\n                aura_env.icon = icon\n                aura_env.casting = true\n            end\n        elseif ce == \"SPELL_CAST_SUCCESS\" and guid == aura_env.playerGUID then\n            if UnitChannelInfo(\"player\") == name then\n                return aura_env.casting\n            end\n            newSpell(id, false)\n            if select(4, GetSpellInfo(id)) > 0 then\n                aura_env.casting = false\n            end\n        end\n    elseif event == \"UNIT_SPELLCAST_INTERRUPTED\" and arg1 == \"player\" and aura_env.casting and not onBlacklist(arg3) then\n        newSpell(arg3, true)\n        aura_env.casting = false\n    elseif event == \"UNIT_SPELLCAST_CHANNEL_START\" and arg1 == \"player\" and not onBlacklist(arg3) then\n        if aura_env.casting then\n            newSpell(arg3, false) -- Already channeling\n        end\n        aura_env.icon = select(3, GetSpellInfo(arg3))\n        aura_env.casting = true\n    elseif event == \"UNIT_SPELLCAST_CHANNEL_STOP\" and arg1 == \"player\" and not onBlacklist(arg3) then\n        newSpell(arg3, false)\n        aura_env.casting = false\n    elseif event == \"CURRENT_SPELL_CAST_CHANGED\" and not UnitCastingInfo(\"player\") and not UnitChannelInfo(\"player\") then\n        aura_env.casting = false\n    end\n    return aura_env.casting\nend",
						["use_sourceUnit"] = true,
						["check"] = "event",
						["names"] = {
						},
						["sourceUnit"] = "player",
						["use_unit"] = true,
					},
					["untrigger"] = {
						["custom"] = "function() return not aura_env.casting end",
						["unit"] = "player",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
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
					["scalex"] = 1,
					["alphaType"] = "custom",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function(progress, start, delta)\n    return math.min(1.0, (1.0 - progress) * 5.0)\nend\n\n\n",
					["use_translate"] = true,
					["use_alpha"] = true,
					["type"] = "none",
					["easeType"] = "none",
					["translateFunc"] = "function(progress, startX, startY, deltaX, deltaY)\n    local x = startX + aura_env.animDir * (progress * aura_env.animX)\n    if aura_env.state then\n        x = x + aura_env.animDir * aura_env.state.xoff\n    end\n    return x, startY\nend",
					["scaley"] = 1,
					["alpha"] = 0,
					["y"] = 0,
					["x"] = 0,
					["colorB"] = 1,
					["duration"] = "3",
					["easeStrength"] = 3,
					["rotate"] = 0,
					["translateType"] = "custom",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["colorR"] = 1,
					["duration"] = "0.2",
					["alphaType"] = "straight",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["use_translate"] = false,
					["use_alpha"] = false,
					["type"] = "none",
					["easeType"] = "none",
					["translateFunc"] = "function(progress, startX, startY, deltaX, deltaY)\n    local x = startX + (progress * deltaX)\n    if aura_env.state then\n        x = x + aura_env.state.xoff\n    end\n    return x, startY + (progress * deltaY)\nend",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["x"] = -150,
					["preset"] = "fade",
					["easeStrength"] = 3,
					["translateType"] = "custom",
					["rotate"] = 0,
					["duration_type"] = "seconds",
					["scalex"] = 1,
				},
			},
			["desaturate"] = false,
			["version"] = 19,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
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
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [2]
			},
			["height"] = 50,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
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
				["talent2"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
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
				["zoneIds"] = "",
			},
			["source"] = "import",
			["width"] = 50,
			["zoom"] = 0,
			["icon"] = true,
			["authorOptions"] = {
				{
					["type"] = "range",
					["useDesc"] = true,
					["max"] = 6,
					["step"] = 1,
					["width"] = 2,
					["min"] = 1,
					["key"] = "maxIcons",
					["desc"] = "Maximum number of icons shown simultaneously.",
					["name"] = "Max Icons",
					["default"] = 6,
				}, -- [1]
				{
					["type"] = "input",
					["useDesc"] = true,
					["width"] = 2,
					["key"] = "blacklist",
					["name"] = "Spell Blacklist",
					["default"] = "",
					["length"] = 10,
					["desc"] = "Comma-separated list of Spell IDs to ignore.",
					["useLength"] = false,
				}, -- [2]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["displayIcon"] = "",
			["cooldownEdge"] = false,
			["xOffset"] = 0,
			["config"] = {
				["maxIcons"] = 6,
				["blacklist"] = "921",
			},
			["useCooldownModRate"] = true,
			["semver"] = "1.1.10",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "GCDHistoryCastControl",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["stickyDuration"] = false,
			["uid"] = "UXp07D3aWhT",
			["inverse"] = false,
			["parent"] = "GCDHistoryGrp",
			["conditions"] = {
			},
			["cooldown"] = false,
			["selfPoint"] = "CENTER",
		},
		["[Druid] Rebirth"] = {
			["iconSource"] = -1,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"Moonkin Form", -- [1]
							"Dire Bear Form", -- [2]
							"Bear Form", -- [3]
							"Aquatic Form", -- [4]
							"Cat Form", -- [5]
							"Travel Form", -- [6]
							"Flight Form", -- [7]
						},
						["matchesShowOn"] = "showOnMissing",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnReady",
						["unit"] = "group",
						["remaining_operator"] = ">=",
						["remaining"] = "170",
						["use_unit"] = true,
						["useName"] = false,
						["spellName"] = 48477,
						["type"] = "spell",
						["useExactSpellId"] = true,
						["debuffType"] = "HELPFUL",
						["ignoreDisconnected"] = false,
						["ignoreDead"] = false,
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["use_remaining"] = false,
						["form"] = {
							["multi"] = {
								true, -- [1]
								true, -- [2]
								true, -- [3]
								true, -- [4]
								true, -- [5]
								true, -- [6]
								[0] = true,
							},
						},
						["event"] = "Cooldown Progress (Spell)",
						["auraspellids"] = {
							"29166", -- [1]
						},
						["realSpellName"] = "复生",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["names"] = {
						},
						["use_track"] = true,
						["ownOnly"] = true,
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [1]
				{
					["trigger"] = {
						["spellId"] = 48477,
						["auranames"] = {
							"Moonkin Form", -- [1]
							"Dire Bear Form", -- [2]
							"Bear Form", -- [3]
							"Aquatic Form", -- [4]
							"Cat Form", -- [5]
							"Travel Form", -- [6]
							"Flight Form", -- [7]
						},
						["ownOnly"] = true,
						["use_spell"] = false,
						["destUnit"] = "target",
						["remaining"] = "170",
						["spellName"] = 48477,
						["ignoreDead"] = false,
						["useExactSpellId"] = true,
						["event"] = "Cast",
						["ignoreDisconnected"] = false,
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["genericShowOn"] = "showOnReady",
						["names"] = {
						},
						["matchesShowOn"] = "showOnMissing",
						["debuffType"] = "HELPFUL",
						["duration"] = "1",
						["useName"] = false,
						["use_genericShowOn"] = true,
						["auraspellids"] = {
							"29166", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["form"] = {
							["multi"] = {
								true, -- [1]
								true, -- [2]
								true, -- [3]
								true, -- [4]
								true, -- [5]
								true, -- [6]
								[0] = true,
							},
						},
						["use_unit"] = true,
						["remaining_operator"] = ">=",
						["realSpellName"] = "Rebirth",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["type"] = "unit",
						["unevent"] = "auto",
						["use_remaining"] = false,
						["unit"] = "player",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
						["unit"] = "player",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 1,
					["border_offset"] = 0,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
				}, -- [2]
				{
					["glowFrequency"] = 1,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "Pixel",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glow"] = false,
					["glowXOffset"] = 0,
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = false,
				["talent"] = {
					["multi"] = {
						[24] = true,
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["zoom"] = 0.29,
			["parent"] = "[WotLK] Balance Druid (Left Group)",
			["regionType"] = "icon",
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
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = false,
			["displayIcon"] = "Interface\\Icons\\Spell_Nature_RavenForm",
			["uid"] = "gbeIQVqVd5y",
			["useCooldownModRate"] = true,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "[Druid] Rebirth",
			["width"] = 40,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
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
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [1]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
		},
		["[Druid] Faerie Fire"] = {
			["iconSource"] = 0,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 48477,
						["auranames"] = {
							"精靈之火", -- [1]
							"精靈之火(野性)", -- [2]
						},
						["remaining_operator"] = ">=",
						["use_spell"] = false,
						["destUnit"] = "target",
						["remaining"] = "170",
						["spellName"] = 48477,
						["ignoreDead"] = false,
						["useExactSpellId"] = true,
						["event"] = "Cast",
						["ignoreDisconnected"] = false,
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["genericShowOn"] = "showOnReady",
						["names"] = {
						},
						["debuffType"] = "HARMFUL",
						["use_genericShowOn"] = true,
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"770", -- [1]
							"16857", -- [2]
						},
						["duration"] = "1",
						["form"] = {
							["multi"] = {
								true, -- [1]
								true, -- [2]
								true, -- [3]
								true, -- [4]
								true, -- [5]
								true, -- [6]
								[0] = true,
							},
						},
						["subeventPrefix"] = "SPELL",
						["matchesShowOn"] = "showOnMissing",
						["realSpellName"] = "Rebirth",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["unit"] = "target",
						["type"] = "aura2",
						["unevent"] = "auto",
						["use_remaining"] = false,
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
						["unit"] = "player",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
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
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_offset"] = 0,
					["type"] = "subborder",
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
					["glowFrequency"] = 0.5,
					["glow"] = true,
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 5,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0.9764705882352941, -- [1]
						0, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 16,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
						[24] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_talent"] = false,
				["use_class"] = true,
				["use_spellknown"] = true,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spellknown"] = 20549,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["zoom"] = 0.29,
			["parent"] = "[WotLK] Balance Druid (Top Group)",
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = false,
			["displayIcon"] = "Interface\\Icons\\Spell_Nature_FaerieFire",
			["uid"] = "F7e1870LTDj",
			["frameStrata"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 30400,
			["id"] = "[Druid] Faerie Fire",
			["width"] = 40,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["useCooldownModRate"] = true,
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
		},
		["RED POINT"] = {
			["user_y"] = 0,
			["modelIsUnit"] = false,
			["user_x"] = 0,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = -40,
			["foregroundColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sameTexture"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["model_path"] = "Creature/Arthaslichking/arthaslichking.m2",
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["class"] = {
					["single"] = "WARLOCK",
					["multi"] = {
						["WARLOCK"] = true,
					},
				},
				["race"] = {
					["single"] = "Troll",
					["multi"] = {
						["Troll"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_zone"] = false,
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
				["use_combat"] = true,
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "flexible",
					["multi"] = {
						["flexible"] = true,
					},
				},
			},
			["textureWrapMode"] = "CLAMP",
			["sequence"] = 1,
			["foregroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["scale"] = 1,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura104",
			["borderOffset"] = 5,
			["compress"] = false,
			["alpha"] = 1,
			["borderInset"] = 11,
			["backgroundOffset"] = 2,
			["borderBackdrop"] = "Blizzard Tooltip",
			["color"] = {
				0.905882352941177, -- [1]
				0.0392156862745098, -- [2]
				0.145098039215686, -- [3]
				0.75, -- [4]
			},
			["desaturateBackground"] = false,
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["names"] = {
							"协同魔典", -- [1]
						},
						["type"] = "unit",
						["use_health"] = true,
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["unevent"] = "auto",
						["event"] = "Conditions",
						["custom_type"] = "status",
						["spellIds"] = {
						},
						["use_spellName"] = true,
						["health"] = "0",
						["health_operator"] = ">",
						["check"] = "event",
						["use_alive"] = true,
						["use_unit"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
						["spellName"] = 0,
						["use_spellName"] = true,
						["unit"] = "player",
						["use_unit"] = true,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 53,
			["advance"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["stickyDuration"] = false,
			["discrete_rotation"] = 0,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 140,
			["rotate"] = true,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["source"] = "import",
			["anchorPoint"] = "CENTER",
			["mirror"] = true,
			["borderEdge"] = "None",
			["borderSize"] = 16,
			["tocversion"] = 30400,
			["xOffset"] = 0,
			["crop_x"] = 0.41,
			["border"] = false,
			["model_x"] = 0,
			["crop_y"] = 0.41,
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["width"] = 140,
			["selfPoint"] = "CENTER",
			["id"] = "RED POINT",
			["model_y"] = 0,
			["frameStrata"] = 9,
			["anchorFrameType"] = "SCREEN",
			["model_z"] = 0,
			["config"] = {
			},
			["inverse"] = false,
			["uid"] = "wncgQ3HUZWc",
			["orientation"] = "VERTICAL",
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["fontSize"] = 12,
		},
		["月蚀触发 "] = {
			["iconSource"] = 2,
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
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["auraspellids"] = {
							"48518", -- [1]
						},
						["useExactSpellId"] = true,
						["names"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "spell",
						["use_genericShowOn"] = true,
						["event"] = "Action Usable",
						["use_exact_spellName"] = true,
						["realSpellName"] = 26986,
						["use_spellName"] = true,
						["debuffType"] = "HELPFUL",
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["use_track"] = true,
						["spellName"] = 26986,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_legacy_floor"] = false,
					["type"] = "subtext",
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowXOffset"] = 0,
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
					["text_text_format_p_time_format"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
				}, -- [2]
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
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 64,
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
			["source"] = "import",
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["cooldown"] = false,
			["parent"] = "雷德王阿姨-日蚀月蚀提示+内置cd",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["cooldownTextDisabled"] = false,
			["useCooldownModRate"] = true,
			["zoom"] = 0,
			["uid"] = "LTHO4pI9bMU",
			["tocversion"] = 30400,
			["id"] = "月蚀触发 ",
			["width"] = 64,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = 0,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 2,
							["property"] = "iconSource",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [2]
					},
				}, -- [1]
			},
			["information"] = {
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
		},
		["[WotLK] Balance Druid (Main Group)"] = {
			["controlledChildren"] = {
				"[WotLK] Balance Druid (Left Group)", -- [1]
				"[WotLK] Balance Druid (Right Group)", -- [2]
				"[WotLK] Balance Druid (Top Group)", -- [3]
				"[Druid] Mana", -- [4]
				"[Druid] Nature's Grace", -- [5]
				"[Druid] Earth and Moon", -- [6]
				"[Druid] Starfall Bar", -- [7]
				"[Druid] GCD", -- [8]
				"[Druid] Starfall CD", -- [9]
				"[Druid] Starfall", -- [10]
				"[Druid] Insect Swarm Missing", -- [11]
				"[Druid] Insect Swarm", -- [12]
				"[Druid] Force of Nature Bar", -- [13]
				"[Druid] Force of Nature CD", -- [14]
				"[Druid] Force of Nature", -- [15]
				"[Druid] Moonfire Missing", -- [16]
				"[Druid] Moonfire", -- [17]
				"[Druid] Eclipse (Missing)", -- [18]
				"[Druid] Eclipse (Solar)", -- [19]
				"[Druid] Eclipse (Lunar)", -- [20]
				"[Druid] Eclipse (Solar) CD Timer", -- [21]
				"[Druid] Eclipse (Lunar) CD Timer ", -- [22]
				"[Druid] Faerie Fire fading", -- [23]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = -276.5304632705199,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["names"] = {
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 53,
			["selfPoint"] = "BOTTOMLEFT",
			["subRegions"] = {
			},
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
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["source"] = "import",
			["scale"] = 0.7000000000000001,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "group",
			["borderSize"] = 2,
			["borderOffset"] = 4,
			["tocversion"] = 30400,
			["id"] = "[WotLK] Balance Druid (Main Group)",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["config"] = {
			},
			["uid"] = "GXzlFqAOb14",
			["xOffset"] = 0,
			["conditions"] = {
			},
			["information"] = {
				["groupOffset"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["borderInset"] = 1,
		},
		["[Druid] Eclipse (Solar) CD Timer"] = {
			["outline"] = "OUTLINE",
			["parent"] = "[WotLK] Balance Druid (Main Group)",
			["displayText_format_p_time_dynamic_threshold"] = 0,
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = true,
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
						["spellId"] = "48517",
						["auranames"] = {
							"Eclipse (Solar)", -- [1]
						},
						["duration"] = "30",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["spellName"] = "Eclipse (Solar)",
						["type"] = "combatlog",
						["subeventSuffix"] = "_AURA_APPLIED",
						["unevent"] = "timed",
						["unit"] = "player",
						["auraType"] = "BUFF",
						["event"] = "Combat Log",
						["useName"] = true,
						["use_spellId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["ownOnly"] = true,
						["subeventPrefix"] = "SPELL",
						["sourceUnit"] = "player",
						["use_auraType"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["displayText_format_p_time_legacy_floor"] = true,
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
			["preferToUpdate"] = false,
			["desaturate"] = false,
			["font"] = "Expressway",
			["authorOptions"] = {
			},
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 60,
			["cooldown"] = true,
			["load"] = {
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[24] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_talent"] = false,
			},
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				0.4117647058823529, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["fontSize"] = 15,
			["source"] = "import",
			["yOffset"] = 21,
			["shadowXOffset"] = 1,
			["selfPoint"] = "CENTER",
			["config"] = {
			},
			["anchorFrameFrame"] = "WeakAuras:[Druid] Eclipse (Missing)",
			["regionType"] = "text",
			["displayText"] = "%p",
			["anchorFrameType"] = "SELECTFRAME",
			["alpha"] = 1,
			["internalVersion"] = 53,
			["displayText_format_p_time_precision"] = 1,
			["wordWrap"] = "WordWrap",
			["justify"] = "LEFT",
			["zoom"] = 0.29,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "[Druid] Eclipse (Solar) CD Timer",
			["displayText_format_p_time_mod_rate"] = true,
			["frameStrata"] = 1,
			["width"] = 60,
			["xOffset"] = -18,
			["uid"] = "O8GR8)CHRJZ",
			["inverse"] = false,
			["automaticWidth"] = "Auto",
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["icon"] = true,
		},
		["[Druid] Innervate Cast"] = {
			["iconSource"] = -1,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"Moonkin Form", -- [1]
							"Dire Bear Form", -- [2]
							"Bear Form", -- [3]
							"Aquatic Form", -- [4]
							"Cat Form", -- [5]
							"Travel Form", -- [6]
							"Flight Form", -- [7]
						},
						["matchesShowOn"] = "showOnMissing",
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["remaining"] = "170",
						["unit"] = "group",
						["ignoreDead"] = false,
						["debuffType"] = "HELPFUL",
						["useName"] = false,
						["unevent"] = "auto",
						["spellName"] = 29166,
						["ignoreDisconnected"] = false,
						["use_remaining"] = true,
						["useExactSpellId"] = true,
						["auraspellids"] = {
							"29166", -- [1]
						},
						["type"] = "aura2",
						["form"] = {
							["multi"] = {
								true, -- [1]
								true, -- [2]
								true, -- [3]
								true, -- [4]
								true, -- [5]
								true, -- [6]
								[0] = true,
							},
						},
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Innervate",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["remaining_operator"] = "<",
						["names"] = {
						},
						["use_track"] = true,
						["ownOnly"] = true,
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnCooldown",
					},
				}, -- [1]
				{
					["trigger"] = {
						["auranames"] = {
							"Moonkin Form", -- [1]
							"Dire Bear Form", -- [2]
							"Bear Form", -- [3]
							"Aquatic Form", -- [4]
							"Cat Form", -- [5]
							"Travel Form", -- [6]
							"Flight Form", -- [7]
						},
						["use_genericShowOn"] = true,
						["ownOnly"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["matchesShowOn"] = "showOnMissing",
						["remaining"] = "170",
						["unit"] = "group",
						["ignoreDead"] = false,
						["debuffType"] = "HELPFUL",
						["useName"] = false,
						["unevent"] = "auto",
						["spellName"] = 29166,
						["realSpellName"] = "激活",
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["useExactSpellId"] = true,
						["use_remaining"] = true,
						["form"] = {
							["multi"] = {
								true, -- [1]
								true, -- [2]
								true, -- [3]
								true, -- [4]
								true, -- [5]
								true, -- [6]
								[0] = true,
							},
						},
						["event"] = "Cooldown Progress (Spell)",
						["auraspellids"] = {
							"29166", -- [1]
						},
						["ignoreDisconnected"] = false,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["remaining_operator"] = ">=",
						["use_unit"] = true,
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnCooldown",
					},
				}, -- [2]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_offset"] = 0,
					["type"] = "subborder",
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
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "ACShine",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0, -- [1]
						0.6862745098039216, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glow"] = true,
					["glowXOffset"] = 0,
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
				{
					["text_text_format_p_time_format"] = 0,
					["text_text"] = "%1.unitName",
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
					["text_fontType"] = "OUTLINE",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_1.unitName_format"] = "none",
					["text_shadowYOffset"] = 0,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_LEFT",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_precision"] = 1,
					["text_fontSize"] = 12,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_shadowXOffset"] = 0,
				}, -- [4]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = false,
				["talent"] = {
					["multi"] = {
						[24] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
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
			},
			["source"] = "import",
			["zoom"] = 0.29,
			["parent"] = "[WotLK] Balance Druid (Left Group)",
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["xOffset"] = 0,
			["cooldown"] = true,
			["conditions"] = {
			},
			["config"] = {
			},
			["useCooldownModRate"] = true,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "[Druid] Innervate Cast",
			["width"] = 40,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["uid"] = "5gFDh27a(Tl",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = "Interface\\Icons\\Spell_Nature_RavenForm",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
		},
		["日蚀触发"] = {
			["iconSource"] = 2,
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
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auraspellids"] = {
							"48517", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["names"] = {
						},
						["useExactSpellId"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "spell",
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["event"] = "Action Usable",
						["use_exact_spellName"] = true,
						["realSpellName"] = 26985,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_track"] = true,
						["spellName"] = 26985,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_precision"] = 1,
					["type"] = "subtext",
					["anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_text_format_p_time_mod_rate"] = true,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fontSize"] = 12,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_legacy_floor"] = false,
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["useGlowColor"] = false,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 64,
			["load"] = {
				["talent"] = {
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["information"] = {
			},
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["zoom"] = 0,
			["useCooldownModRate"] = true,
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["tocversion"] = 30400,
			["id"] = "日蚀触发",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 64,
			["alpha"] = 1,
			["uid"] = "WwOVJKbhwK4",
			["inverse"] = false,
			["xOffset"] = 0,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 2,
							["property"] = "iconSource",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = false,
			["parent"] = "雷德王阿姨-日蚀月蚀提示+内置cd",
		},
		["[Druid] Gloves"] = {
			["iconSource"] = -1,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 48477,
						["auranames"] = {
							"Mark of the Wild", -- [1]
							"Gift of the Wild", -- [2]
						},
						["matchesShowOn"] = "showOnMissing",
						["use_spell"] = false,
						["destUnit"] = "target",
						["remaining"] = "170",
						["spellName"] = 48477,
						["ignoreDead"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Equipment Slot)",
						["ignoreDisconnected"] = false,
						["use_spellId"] = true,
						["use_testForCooldown"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["genericShowOn"] = "showOnReady",
						["unit"] = "player",
						["itemSlot"] = 10,
						["use_itemSlot"] = true,
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["useName"] = true,
						["ownOnly"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["form"] = {
							["multi"] = {
								true, -- [1]
								true, -- [2]
								true, -- [3]
								true, -- [4]
								true, -- [5]
								true, -- [6]
								[0] = true,
							},
						},
						["remaining_operator"] = ">=",
						["duration"] = "1",
						["realSpellName"] = "Rebirth",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["auraspellids"] = {
							"29166", -- [1]
						},
						["use_remaining"] = false,
						["use_genericShowOn"] = true,
						["useExactSpellId"] = false,
					},
					["untrigger"] = {
						["itemSlot"] = 10,
						["genericShowOn"] = "showOnReady",
						["unit"] = "player",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
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
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_offset"] = 0,
					["type"] = "subborder",
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
					["glowFrequency"] = 0.5,
					["glow"] = true,
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0.9764705882352941, -- [1]
						0, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
						[24] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_talent"] = false,
				["use_class"] = true,
				["use_spellknown"] = true,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spellknown"] = 20549,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["zoom"] = 0.29,
			["parent"] = "[WotLK] Balance Druid (Top Group)",
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = false,
			["displayIcon"] = "Interface\\Icons\\Spell_Nature_RavenForm",
			["uid"] = "PSrmtn9r9A0",
			["frameStrata"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "[Druid] Gloves",
			["width"] = 40,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["useCooldownModRate"] = true,
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
		},
		["[Druid] Insect Swarm Missing"] = {
			["iconSource"] = -1,
			["xOffset"] = -59.99988702428038,
			["preferToUpdate"] = false,
			["yOffset"] = 39.99994802569802,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
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
						["useName"] = true,
						["use_alwaystrue"] = true,
						["auranames"] = {
							"Insect Swarm", -- [1]
						},
						["duration"] = "1",
						["event"] = "Conditions",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_unit"] = true,
						["spellIds"] = {
						},
						["unit"] = "target",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "unit",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
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
			["desaturate"] = true,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subborder",
					["border_size"] = 2,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [2]
			},
			["height"] = 60,
			["load"] = {
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[24] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_talent"] = false,
			},
			["source"] = "import",
			["zoom"] = 0.29,
			["parent"] = "[WotLK] Balance Druid (Main Group)",
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "expirationTime",
						["op"] = "<=",
						["value"] = "3",
					},
					["changes"] = {
						{
							["value"] = true,
						}, -- [1]
					},
				}, -- [1]
			},
			["config"] = {
			},
			["useCooldownModRate"] = true,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "[Druid] Insect Swarm Missing",
			["width"] = 60,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["uid"] = "BdpzN3jEIdL",
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = "Interface\\Icons\\Spell_Nature_InsectSwarm",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["[Druid] Barkskin"] = {
			["iconSource"] = -1,
			["parent"] = "[WotLK] Balance Druid (Right Group)",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnReady",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = "树皮术",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["unevent"] = "auto",
						["duration"] = "1",
						["use_track"] = true,
						["spellName"] = 22812,
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_offset"] = 0,
					["type"] = "subborder",
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
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = false,
				["talent"] = {
					["multi"] = {
						[28] = true,
						[24] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "DRUID",
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
			},
			["source"] = "import",
			["zoom"] = 0.29,
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["xOffset"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = false,
			["alpha"] = 1,
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "[Druid] Barkskin",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 40,
			["useCooldownModRate"] = true,
			["uid"] = "cyN4qla4ryW",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["GCDHistoryBuffer2"] = {
			["iconSource"] = -1,
			["wagoID"] = "RvbxkQEv2",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "\n\n",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/RvbxkQEv2/19",
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.thisRegister = 2\n\naura_env.animX = aura_env.config[\"displayTime\"] * aura_env.region.width\nif aura_env.config[\"direction\"] == 1 then\n    aura_env.animDir = -1\nelse\n    aura_env.animDir = 1\nend\n\naura_env.xoff = 0\naura_env.castTime = 0",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["customIcon"] = "function()\n    return aura_env.icon\nend\n\n\n\n\n\n\n\n",
						["names"] = {
						},
						["custom_hide"] = "timed",
						["use_cloneId"] = true,
						["debuffType"] = "HELPFUL",
						["duration"] = "3",
						["type"] = "custom",
						["custom_type"] = "event",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["events"] = "MYSTLER_GCDHISTORY_ADD",
						["custom"] = "function(event, arg1, arg2, arg3, arg4)\n    if arg1 == aura_env.thisRegister then\n        aura_env.icon = arg2\n        aura_env.xoff = 0\n        aura_env.castTime = arg3\n        if arg4 then\n            aura_env.region:SetDesaturated(true)\n            aura_env.region:Color(1,0,0,1)\n        else\n            aura_env.region:SetDesaturated(false)\n            aura_env.region:Color(1,1,1,1)\n        end\n        return true\n    end\n    return false\nend",
						["event"] = "Combat Log",
						["unit"] = "player",
						["customDuration"] = "function()\n    return aura_env.config[\"displayTime\"], aura_env.castTime + aura_env.config[\"displayTime\"]\nend\n\n\n\n\n\n\n\n\n\n\n\n",
						["unevent"] = "timed",
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["sourceUnit"] = "player",
						["dynamicDuration"] = true,
					},
					["untrigger"] = {
						["custom"] = "function() return true end",
						["unit"] = "player",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "0",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function(event, arg1, arg2)\n    if arg1 == aura_env.thisRegister then\n        aura_env.xoff = aura_env.xoff + arg2\n    end\n    return false\nend\n\n\n\n\n\n\n\n\n\n\n\n",
						["custom_type"] = "event",
						["events"] = "MYSTLER_GCDHISTORY_OFFSET",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
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
					["scalex"] = 1,
					["alphaType"] = "custom",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function(progress, start, delta)\n    return math.min(1.0, (1.0 - progress) * 5.0)\nend\n\n\n",
					["use_translate"] = true,
					["use_alpha"] = true,
					["type"] = "custom",
					["easeType"] = "none",
					["translateFunc"] = "function(progress, startX, startY, deltaX, deltaY)\n    local x = startX + aura_env.animDir * (progress * aura_env.animX)\n    x = x + aura_env.animDir * aura_env.xoff\n    return x, startY\nend",
					["scaley"] = 1,
					["alpha"] = 0,
					["y"] = 0,
					["x"] = 0,
					["colorB"] = 1,
					["duration"] = "100%",
					["easeStrength"] = 3,
					["rotate"] = 0,
					["translateType"] = "custom",
					["duration_type"] = "relative",
				},
				["finish"] = {
					["colorR"] = 1,
					["duration"] = "0.2",
					["alphaType"] = "straight",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["use_translate"] = false,
					["use_alpha"] = false,
					["type"] = "none",
					["easeType"] = "none",
					["translateFunc"] = "function(progress, startX, startY, deltaX, deltaY)\n    local x = startX + (progress * deltaX)\n    if aura_env.state then\n        x = x + aura_env.state.xoff\n    end\n    return x, startY + (progress * deltaY)\nend",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["x"] = -150,
					["preset"] = "fade",
					["easeStrength"] = 3,
					["translateType"] = "custom",
					["rotate"] = 0,
					["duration_type"] = "seconds",
					["scalex"] = 1,
				},
			},
			["desaturate"] = false,
			["version"] = 19,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
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
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [2]
			},
			["height"] = 50,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
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
				["talent2"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
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
				["zoneIds"] = "",
			},
			["source"] = "import",
			["width"] = 50,
			["zoom"] = 0,
			["icon"] = true,
			["authorOptions"] = {
				{
					["desc"] = "In which direction should the history expand?",
					["type"] = "select",
					["values"] = {
						"Left", -- [1]
						"Right", -- [2]
					},
					["default"] = 1,
					["key"] = "direction",
					["useDesc"] = true,
					["name"] = "Direction",
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "range",
					["useDesc"] = true,
					["max"] = 6,
					["step"] = 0.5,
					["width"] = 1,
					["min"] = 1,
					["key"] = "displayTime",
					["desc"] = "How long (in seconds) icons are shown at max.",
					["name"] = "Display Time",
					["default"] = 3,
				}, -- [2]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["displayIcon"] = "",
			["cooldownEdge"] = false,
			["xOffset"] = 0,
			["config"] = {
				["displayTime"] = 3,
				["direction"] = 1,
			},
			["useCooldownModRate"] = true,
			["semver"] = "1.1.10",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "GCDHistoryBuffer2",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["stickyDuration"] = false,
			["uid"] = "RREM)OiEBjG",
			["inverse"] = false,
			["parent"] = "GCDHistoryGrp",
			["conditions"] = {
			},
			["cooldown"] = false,
			["selfPoint"] = "CENTER",
		},
		["[WotLK] Balance Druid (Right Group)"] = {
			["grow"] = "DOWN",
			["controlledChildren"] = {
				"[Druid] Barkskin", -- [1]
				"[Druid] Barkskin Tick", -- [2]
				"[Druid] Barkskin CD", -- [3]
				"[Druid] Nature's Grasp", -- [4]
				"[Druid] Nature's Grasp Tick", -- [5]
				"[Druid] Nature's Grasp CD", -- [6]
				"[Druid] Tauren Racial", -- [7]
				"[Druid] Tauren Racial CD", -- [8]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 172.0000141561586,
			["preferToUpdate"] = false,
			["yOffset"] = 30,
			["gridType"] = "RD",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["rowSpace"] = 1,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["names"] = {
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["radius"] = 200,
			["selfPoint"] = "TOP",
			["align"] = "CENTER",
			["stagger"] = 0,
			["frameStrata"] = 1,
			["borderEdge"] = "Square Full White",
			["subRegions"] = {
			},
			["parent"] = "[WotLK] Balance Druid (Main Group)",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
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
			["fullCircle"] = true,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["internalVersion"] = 53,
			["source"] = "import",
			["useLimit"] = false,
			["scale"] = 1,
			["animate"] = false,
			["border"] = false,
			["anchorFrameFrame"] = "WeakAuras:[Druid] Eclipse (Missing)",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["limit"] = 5,
			["uid"] = "NDwIGnfMNSw",
			["sort"] = "none",
			["constantFactor"] = "RADIUS",
			["authorOptions"] = {
			},
			["borderOffset"] = 4,
			["sortHybridTable"] = {
				["[Druid] Barkskin"] = false,
				["[Druid] Tauren Racial CD"] = false,
				["[Druid] Barkskin Tick"] = false,
				["[Druid] Nature's Grasp"] = false,
				["[Druid] Nature's Grasp Tick"] = false,
				["[Druid] Tauren Racial"] = false,
				["[Druid] Nature's Grasp CD"] = false,
				["[Druid] Barkskin CD"] = false,
			},
			["tocversion"] = 30400,
			["id"] = "[WotLK] Balance Druid (Right Group)",
			["config"] = {
			},
			["gridWidth"] = 5,
			["anchorFrameType"] = "SELECTFRAME",
			["anchorPoint"] = "CENTER",
			["borderInset"] = 1,
			["rotation"] = 0,
			["space"] = 5,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["arcLength"] = 360,
		},
		["[Druid] Barkskin CD"] = {
			["iconSource"] = -1,
			["parent"] = "[WotLK] Balance Druid (Right Group)",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_charges"] = false,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["remaining"] = "48",
						["spellName"] = 22812,
						["names"] = {
						},
						["use_remaining"] = true,
						["remaining_operator"] = "<",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["type"] = "spell",
						["realSpellName"] = "树皮术",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["duration"] = "1",
						["unit"] = "player",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnCooldown",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = true,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subborder",
					["border_size"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = false,
				["talent"] = {
					["multi"] = {
						[28] = true,
						[24] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "DRUID",
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
			},
			["source"] = "import",
			["zoom"] = 0.29,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["xOffset"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["useCooldownModRate"] = true,
			["uid"] = "sFukyUN5sG5",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "[Druid] Barkskin CD",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["width"] = 40,
			["config"] = {
			},
			["inverse"] = false,
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
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["authorOptions"] = {
			},
		},
		["[Druid] Force of Nature CD"] = {
			["iconSource"] = -1,
			["parent"] = "[WotLK] Balance Druid (Main Group)",
			["preferToUpdate"] = false,
			["yOffset"] = 39.99994802569802,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["remaining"] = "5",
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["spellName"] = 33831,
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["unevent"] = "auto",
						["realSpellName"] = "自然之力",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_remaining"] = true,
						["remaining_operator"] = ">",
						["use_track"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnCooldown",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = true,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
				}, -- [2]
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
					["glow"] = false,
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 5,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						0.04705882352941176, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glow"] = false,
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 2,
					["glowLines"] = 20,
					["glowBorder"] = false,
				}, -- [4]
			},
			["height"] = 60,
			["load"] = {
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[24] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_talent"] = false,
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["anchorFrameFrame"] = "WeakAuras:[Druid] Force of Nature",
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["cooldown"] = true,
			["alpha"] = 1,
			["uid"] = "1hGKlho5gIu",
			["zoom"] = 0.29,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "[Druid] Force of Nature CD",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 60,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["xOffset"] = 119.9999141056273,
		},
		["[Druid] Insect Swarm"] = {
			["iconSource"] = -1,
			["parent"] = "[WotLK] Balance Druid (Main Group)",
			["preferToUpdate"] = false,
			["yOffset"] = 39.99994802569802,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["useName"] = true,
						["auranames"] = {
							"蟲群", -- [1]
							"虫群", -- [2]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["names"] = {
						},
						["spellIds"] = {
						},
						["type"] = "aura2",
						["subeventPrefix"] = "SPELL",
						["unit"] = "target",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_offset"] = 0,
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 2,
				}, -- [2]
				{
					["glowFrequency"] = 0.2,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 7,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0.04705882352941176, -- [1]
						1, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glow"] = true,
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 15,
					["glowBorder"] = false,
				}, -- [3]
				{
					["text_text_format_p_time_format"] = 0,
					["text_text"] = "%p",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = true,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorYOffset"] = 0,
					["type"] = "subtext",
					["anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						0, -- [2]
						0.03529411764705882, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_precision"] = 1,
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 20,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
				}, -- [4]
			},
			["height"] = 60,
			["load"] = {
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[24] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_talent"] = false,
			},
			["source"] = "import",
			["zoom"] = 0.29,
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldown"] = true,
			["useCooldownModRate"] = true,
			["uid"] = "neyz7I4EbCy",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "[Druid] Insect Swarm",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["width"] = 60,
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = -59.99988702428038,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "expirationTime",
						["value"] = "3",
						["op"] = "<=",
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.4.text_visible",
						}, -- [1]
					},
				}, -- [1]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["GCDHistoryBuffer3"] = {
			["iconSource"] = -1,
			["wagoID"] = "RvbxkQEv2",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "\n\n",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/RvbxkQEv2/19",
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.thisRegister = 3\n\naura_env.animX = aura_env.config[\"displayTime\"] * aura_env.region.width\nif aura_env.config[\"direction\"] == 1 then\n    aura_env.animDir = -1\nelse\n    aura_env.animDir = 1\nend\n\naura_env.xoff = 0\naura_env.castTime = 0",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["customIcon"] = "function()\n    return aura_env.icon\nend\n\n\n\n\n\n\n\n",
						["names"] = {
						},
						["custom_hide"] = "timed",
						["use_cloneId"] = true,
						["debuffType"] = "HELPFUL",
						["duration"] = "3",
						["type"] = "custom",
						["custom_type"] = "event",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["events"] = "MYSTLER_GCDHISTORY_ADD",
						["custom"] = "function(event, arg1, arg2, arg3, arg4)\n    if arg1 == aura_env.thisRegister then\n        aura_env.icon = arg2\n        aura_env.xoff = 0\n        aura_env.castTime = arg3\n        if arg4 then\n            aura_env.region:SetDesaturated(true)\n            aura_env.region:Color(1,0,0,1)\n        else\n            aura_env.region:SetDesaturated(false)\n            aura_env.region:Color(1,1,1,1)\n        end\n        return true\n    end\n    return false\nend",
						["event"] = "Combat Log",
						["unit"] = "player",
						["customDuration"] = "function()\n    return aura_env.config[\"displayTime\"], aura_env.castTime + aura_env.config[\"displayTime\"]\nend\n\n\n\n\n\n\n\n\n\n\n\n",
						["unevent"] = "timed",
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["sourceUnit"] = "player",
						["dynamicDuration"] = true,
					},
					["untrigger"] = {
						["custom"] = "function() return true end",
						["unit"] = "player",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "0",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function(event, arg1, arg2)\n    if arg1 == aura_env.thisRegister then\n        aura_env.xoff = aura_env.xoff + arg2\n    end\n    return false\nend\n\n\n\n\n\n\n\n\n\n\n\n",
						["custom_type"] = "event",
						["events"] = "MYSTLER_GCDHISTORY_OFFSET",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
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
					["scalex"] = 1,
					["alphaType"] = "custom",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function(progress, start, delta)\n    return math.min(1.0, (1.0 - progress) * 5.0)\nend\n\n\n",
					["use_translate"] = true,
					["use_alpha"] = true,
					["type"] = "custom",
					["easeType"] = "none",
					["translateFunc"] = "function(progress, startX, startY, deltaX, deltaY)\n    local x = startX + aura_env.animDir * (progress * aura_env.animX)\n    x = x + aura_env.animDir * aura_env.xoff\n    return x, startY\nend",
					["scaley"] = 1,
					["alpha"] = 0,
					["y"] = 0,
					["x"] = 0,
					["colorB"] = 1,
					["duration"] = "100%",
					["easeStrength"] = 3,
					["rotate"] = 0,
					["translateType"] = "custom",
					["duration_type"] = "relative",
				},
				["finish"] = {
					["colorR"] = 1,
					["duration"] = "0.2",
					["alphaType"] = "straight",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["use_translate"] = false,
					["use_alpha"] = false,
					["type"] = "none",
					["easeType"] = "none",
					["translateFunc"] = "function(progress, startX, startY, deltaX, deltaY)\n    local x = startX + (progress * deltaX)\n    if aura_env.state then\n        x = x + aura_env.state.xoff\n    end\n    return x, startY + (progress * deltaY)\nend",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["x"] = -150,
					["preset"] = "fade",
					["easeStrength"] = 3,
					["translateType"] = "custom",
					["rotate"] = 0,
					["duration_type"] = "seconds",
					["scalex"] = 1,
				},
			},
			["desaturate"] = false,
			["version"] = 19,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
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
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [2]
			},
			["height"] = 50,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
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
				["talent2"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
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
				["zoneIds"] = "",
			},
			["source"] = "import",
			["width"] = 50,
			["zoom"] = 0,
			["icon"] = true,
			["authorOptions"] = {
				{
					["desc"] = "In which direction should the history expand?",
					["type"] = "select",
					["values"] = {
						"Left", -- [1]
						"Right", -- [2]
					},
					["default"] = 1,
					["key"] = "direction",
					["useDesc"] = true,
					["name"] = "Direction",
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "range",
					["useDesc"] = true,
					["max"] = 6,
					["step"] = 0.5,
					["width"] = 1,
					["min"] = 1,
					["key"] = "displayTime",
					["desc"] = "How long (in seconds) icons are shown at max.",
					["name"] = "Display Time",
					["default"] = 3,
				}, -- [2]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["displayIcon"] = "",
			["cooldownEdge"] = false,
			["xOffset"] = 0,
			["config"] = {
				["displayTime"] = 3,
				["direction"] = 1,
			},
			["useCooldownModRate"] = true,
			["semver"] = "1.1.10",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "GCDHistoryBuffer3",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["stickyDuration"] = false,
			["uid"] = "fhYScDQpw0c",
			["inverse"] = false,
			["parent"] = "GCDHistoryGrp",
			["conditions"] = {
			},
			["cooldown"] = false,
			["selfPoint"] = "CENTER",
		},
		["GCDHistoryGrp"] = {
			["controlledChildren"] = {
				"GCDHistoryCastControl", -- [1]
				"GCDHistoryBuffer1", -- [2]
				"GCDHistoryBuffer2", -- [3]
				"GCDHistoryBuffer3", -- [4]
				"GCDHistoryBuffer4", -- [5]
				"GCDHistoryBuffer5", -- [6]
				"GCDHistoryBuffer6", -- [7]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "RvbxkQEv2",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 229.6477123869194,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["url"] = "https://wago.io/RvbxkQEv2/19",
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
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 53,
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
			["version"] = 19,
			["load"] = {
				["use_class"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["spec"] = {
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
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["source"] = "import",
			["scale"] = 0.6,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "group",
			["borderSize"] = 16,
			["borderOffset"] = 5,
			["semver"] = "1.1.10",
			["tocversion"] = 30400,
			["id"] = "GCDHistoryGrp",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "xI9v)z6cL))",
			["config"] = {
			},
			["borderInset"] = 11,
			["xOffset"] = -261.6318617757237,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
				["groupOffset"] = true,
			},
			["selfPoint"] = "BOTTOMLEFT",
		},
		["[Druid] Starfall Bar"] = {
			["sparkWidth"] = 30,
			["iconSource"] = -1,
			["parent"] = "[WotLK] Balance Druid (Main Group)",
			["preferToUpdate"] = false,
			["customText"] = "function()\n    mana = math.max(0, UnitPower(\"player\", 0)) / math.max(1, UnitPowerMax(\"player\", 0)) * 100;\n    return string.format(\"%.0f\", mana);\nend",
			["yOffset"] = 73.50005768463649,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["cooldownEdge"] = false,
			["icon"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["useName"] = true,
						["auranames"] = {
							"星殞術", -- [1]
						},
						["use_unit"] = true,
						["duration"] = "1",
						["event"] = "Power",
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["powertype"] = 0,
						["spellIds"] = {
						},
						["unit"] = "player",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 53,
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
			["barColor"] = {
				0.2666666666666667, -- [1]
				0, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["frameStrata"] = 1,
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_size"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [3]
			},
			["height"] = 9.999943238591248,
			["sparkMirror"] = false,
			["load"] = {
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[28] = true,
						[24] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_talent"] = false,
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["source"] = "import",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["xOffset"] = 59.99995705281367,
			["sparkOffsetX"] = 0,
			["config"] = {
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["uid"] = "6)Ie(sftaUO",
			["zoom"] = 0,
			["icon_side"] = "RIGHT",
			["width"] = 59.99986514036378,
			["sparkHeight"] = 20,
			["texture"] = "Aluminium",
			["sparkHidden"] = "BOTH",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = true,
			["tocversion"] = 30400,
			["id"] = "[Druid] Starfall Bar",
			["auto"] = true,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["[Druid] Force of Nature Bar"] = {
			["sparkWidth"] = 30,
			["iconSource"] = -1,
			["authorOptions"] = {
			},
			["adjustedMax"] = "100%",
			["customText"] = "function()\n    mana = math.max(0, UnitPower(\"player\", 0)) / math.max(1, UnitPowerMax(\"player\", 0)) * 100;\n    return string.format(\"%.0f\", mana);\nend",
			["yOffset"] = 73.50005768463649,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["cooldownEdge"] = false,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"Starfall", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["powertype"] = 0,
						["spellName"] = 33831,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["remaining_operator"] = ">=",
						["type"] = "spell",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["useName"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["use_remaining"] = true,
						["realSpellName"] = "自然之力",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["duration"] = "1",
						["use_unit"] = true,
						["use_track"] = true,
						["remaining"] = "150",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["sparkHidden"] = "BOTH",
			["barColor"] = {
				0.5058823529411764, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["preferToUpdate"] = false,
			["icon"] = false,
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bar",
					["border_offset"] = 0,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
				}, -- [3]
			},
			["height"] = 9.999943238591248,
			["adjustedMin"] = "83%",
			["load"] = {
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[28] = true,
						[24] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_talent"] = false,
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["source"] = "import",
			["sparkMirror"] = false,
			["sparkOffsetX"] = 0,
			["config"] = {
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useAdjustededMin"] = true,
			["regionType"] = "aurabar",
			["width"] = 59.99986514036378,
			["alpha"] = 1,
			["icon_side"] = "RIGHT",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["sparkHeight"] = 20,
			["texture"] = "Aluminium",
			["spark"] = true,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "[Druid] Force of Nature Bar",
			["zoom"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 119.9999841341605,
			["uid"] = "RF4x)ctGNw0",
			["inverse"] = false,
			["parent"] = "[WotLK] Balance Druid (Main Group)",
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["[Druid] Current Stance Missing"] = {
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
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"24858", -- [1]
							"9634", -- [2]
							"5487", -- [3]
							"1066", -- [4]
							"768", -- [5]
							"783", -- [6]
							"33943", -- [7]
							"40120", -- [8]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnReady",
						["subeventPrefix"] = "SPELL",
						["spellName"] = 20549,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["form"] = {
							["multi"] = {
								true, -- [1]
								true, -- [2]
								true, -- [3]
								true, -- [4]
								true, -- [5]
								true, -- [6]
								[0] = true,
							},
						},
						["event"] = "Stance/Form/Aura",
						["type"] = "aura2",
						["realSpellName"] = "War Stomp",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["matchesShowOn"] = "showOnMissing",
						["duration"] = "1",
						["use_track"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = true,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_offset"] = 0,
					["type"] = "subborder",
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
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = false,
				["talent"] = {
					["multi"] = {
						[24] = true,
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["zoom"] = 0.29,
			["parent"] = "[WotLK] Balance Druid (Left Group)",
			["regionType"] = "icon",
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
			["xOffset"] = 0,
			["cooldown"] = false,
			["displayIcon"] = "Interface\\Icons\\Spell_Nature_RavenForm",
			["uid"] = "AWzwA6E3v76",
			["useCooldownModRate"] = true,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 30400,
			["id"] = "[Druid] Current Stance Missing",
			["width"] = 40,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
		},
		["[Druid] Moonfire Missing"] = {
			["iconSource"] = -1,
			["xOffset"] = -119.9997740485608,
			["preferToUpdate"] = false,
			["yOffset"] = 39.99994802569802,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useName"] = true,
						["use_alwaystrue"] = true,
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["event"] = "Conditions",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_unit"] = true,
						["spellIds"] = {
						},
						["unit"] = "target",
						["unevent"] = "auto",
						["auranames"] = {
							"Moonfire", -- [1]
						},
						["type"] = "unit",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = true,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
				}, -- [2]
			},
			["height"] = 60,
			["load"] = {
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[24] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_talent"] = false,
			},
			["source"] = "import",
			["cooldownTextDisabled"] = false,
			["parent"] = "[WotLK] Balance Druid (Main Group)",
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["config"] = {
			},
			["useCooldownModRate"] = true,
			["zoom"] = 0.29,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "[Druid] Moonfire Missing",
			["width"] = 60,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["uid"] = ")kLF9mxrwmP",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = "Interface\\Icons\\Spell_Nature_StarFall",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["icon"] = true,
		},
		["Faerie Fire "] = {
			["iconSource"] = -1,
			["wagoID"] = "X6wQKkZUq",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["glow_frame_type"] = "UNITFRAME",
					["glow_type"] = "buttonOverlay",
					["do_glow"] = false,
					["glow_action"] = "show",
				},
				["finish"] = {
					["glow_frame_type"] = "FRAMESELECTOR",
					["hide_all_glows"] = false,
					["glow_action"] = "show",
					["do_glow"] = false,
					["glow_type"] = "Pixel",
					["do_message"] = false,
					["glow_frame"] = "WeakAuras:Life Tap",
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "30",
						["auranames"] = {
							"Faerie Fire", -- [1]
						},
						["matchesShowOn"] = "showOnMissing",
						["names"] = {
						},
						["unitExists"] = false,
						["debuffType"] = "HARMFUL",
						["showClones"] = false,
						["useName"] = false,
						["use_debuffClass"] = false,
						["useExactSpellId"] = true,
						["event"] = "Health",
						["auraspellids"] = {
							"770", -- [1]
							"16857", -- [2]
						},
						["unit"] = "target",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["remOperator"] = "<",
						["type"] = "aura2",
						["subeventPrefix"] = "SPELL",
						["useRem"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["use_level"] = false,
						["hostility"] = "hostile",
						["level_operator"] = ">",
						["event"] = "Unit Characteristics",
						["use_unit"] = true,
						["use_class"] = false,
						["use_unitisunit"] = false,
						["use_hostility"] = false,
						["classification"] = {
							["single"] = "worldboss",
							["multi"] = {
								["worldboss"] = true,
							},
						},
						["unit"] = "target",
						["level"] = "81",
						["use_attackable"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 5,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 30,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = false,
				["use_never"] = false,
				["talent"] = {
					["single"] = 18,
					["multi"] = {
						[49] = true,
						[63] = true,
						[18] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
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
			},
			["source"] = "import",
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["url"] = "https://wago.io/X6wQKkZUq/5",
			["regionType"] = "icon",
			["parent"] = "平衡德循環助手",
			["cooldown"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["icon"] = true,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["semver"] = "1.0.4",
			["tocversion"] = 30400,
			["id"] = "Faerie Fire ",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 30,
			["auto"] = true,
			["uid"] = "B1nNrLrnAKn",
			["inverse"] = false,
			["xOffset"] = 0,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["[Druid] Mana"] = {
			["sparkWidth"] = 10,
			["iconSource"] = -1,
			["parent"] = "[WotLK] Balance Druid (Main Group)",
			["preferToUpdate"] = false,
			["customText"] = "function()\n    mana = math.max(0, UnitPower(\"player\", 0)) / math.max(1, UnitPowerMax(\"player\", 0)) * 100;\n    return string.format(\"%.0f\", mana);\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["cooldownEdge"] = false,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["event"] = "Power",
						["use_unit"] = true,
						["unevent"] = "auto",
						["powertype"] = 0,
						["spellIds"] = {
						},
						["names"] = {
						},
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useName"] = true,
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["duration"] = "1",
						["event"] = "Power",
						["names"] = {
						},
						["unevent"] = "auto",
						["powertype"] = 0,
						["spellIds"] = {
						},
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["auranames"] = {
							"Innervate", -- [1]
						},
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["sparkMirror"] = false,
			["desaturate"] = false,
			["alpha"] = 1,
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_offset"] = 0,
					["border_anchor"] = "bar",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 2,
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%c%%",
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
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_CENTER",
					["text_text_format_c_format"] = "none",
					["text_visible"] = true,
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_text_format_n_format"] = "none",
				}, -- [4]
				{
					["api"] = false,
					["model_x"] = 2.980232238769531e-07,
					["model_st_us"] = 40,
					["model_st_rz"] = 0,
					["type"] = "submodel",
					["model_fileId"] = "235338",
					["model_path"] = "PARTICLES/MorphFX.m2",
					["model_st_ty"] = 0,
					["model_y"] = 0.2500002980232239,
					["model_st_rx"] = 270,
					["rotation"] = 0,
					["bar_model_clip"] = true,
					["model_st_tx"] = 0,
					["model_alpha"] = 1,
					["model_st_ry"] = 0,
					["model_visible"] = false,
					["model_st_tz"] = 0,
					["model_z"] = 0,
				}, -- [5]
			},
			["height"] = 20,
			["barColor"] = {
				0, -- [1]
				0.8, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["load"] = {
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[28] = true,
						[24] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_talent"] = false,
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["icon"] = false,
			["source"] = "import",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["xOffset"] = 0,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["uid"] = "ZwXs5DKFBWf",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["icon_side"] = "RIGHT",
			["anchorFrameType"] = "SCREEN",
			["sparkHeight"] = 30,
			["texture"] = "Aluminium",
			["sparkHidden"] = "BOTH",
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "[Druid] Mana",
			["spark"] = true,
			["frameStrata"] = 1,
			["width"] = 300,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "percentpower",
						["value"] = "20",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
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
							["value"] = true,
							["property"] = "sub.5.model_visible",
						}, -- [1]
					},
				}, -- [2]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["Starfire-out"] = {
			["iconSource"] = -1,
			["wagoID"] = "X6wQKkZUq",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["duration"] = "1",
						["genericShowOn"] = "showOnReady",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["use_targetRequired"] = true,
						["subeventPrefix"] = "SPELL",
						["event"] = "Action Usable",
						["names"] = {
						},
						["realSpellName"] = "星火术",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["spellName"] = 48465,
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [1]
				{
					["trigger"] = {
						["unit"] = "player",
						["type"] = "aura2",
						["useName"] = false,
						["auranames"] = {
							"Decimation", -- [1]
						},
						["auraspellids"] = {
							"48517", -- [1]
						},
						["matchesShowOn"] = "showOnMissing",
						["useExactSpellId"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["unit"] = "player",
						["type"] = "aura2",
						["useName"] = false,
						["auranames"] = {
							"Decimation", -- [1]
						},
						["auraspellids"] = {
							"48518", -- [1]
						},
						["matchesShowOn"] = "showOnMissing",
						["useExactSpellId"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "48518",
						["subeventSuffix"] = "_AURA_APPLIED",
						["duration"] = "30",
						["event"] = "Combat Log",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["use_spellId"] = true,
						["subeventPrefix"] = "SPELL",
						["use_sourceUnit"] = true,
						["auraType"] = "BUFF",
						["use_destUnit"] = false,
						["sourceUnit"] = "player",
						["use_auraType"] = true,
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auraspellids"] = {
							"48463", -- [1]
							"48462", -- [2]
							"26988", -- [3]
						},
						["unit"] = "target",
						["ownOnly"] = true,
						["useExactSpellId"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [5]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "48517",
						["subeventSuffix"] = "_AURA_APPLIED",
						["duration"] = "30",
						["event"] = "Combat Log",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["use_spellId"] = true,
						["subeventPrefix"] = "SPELL",
						["use_sourceUnit"] = true,
						["auraType"] = "BUFF",
						["use_destUnit"] = false,
						["sourceUnit"] = "player",
						["use_auraType"] = true,
					},
					["untrigger"] = {
					},
				}, -- [6]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "48463",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["duration"] = "15",
						["event"] = "Combat Log",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["use_spellId"] = true,
						["subeventPrefix"] = "SPELL",
						["use_sourceUnit"] = true,
						["auraType"] = "BUFF",
						["use_destUnit"] = false,
						["sourceUnit"] = "player",
						["use_auraType"] = true,
					},
					["untrigger"] = {
					},
				}, -- [7]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "48462",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["duration"] = "15",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_auraType"] = true,
						["use_spellId"] = true,
						["subeventPrefix"] = "SPELL",
						["use_sourceUnit"] = true,
						["auraType"] = "BUFF",
						["use_destUnit"] = false,
						["sourceUnit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [8]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "26988",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["duration"] = "15",
						["event"] = "Combat Log",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["use_spellId"] = true,
						["subeventPrefix"] = "SPELL",
						["use_sourceUnit"] = true,
						["auraType"] = "BUFF",
						["use_destUnit"] = false,
						["sourceUnit"] = "player",
						["use_auraType"] = true,
					},
					["untrigger"] = {
					},
				}, -- [9]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return (t[1] and t[2] and t[3] and not t[6] and t[7]) \n    or (t[1] and t[2] and t[3] and t[4])\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 5,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_text_format_p_time_format"] = 0,
					["text_text"] = "%5.p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_text_format_5.p_time_format"] = 0,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_5.p_time_precision"] = 1,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_5.p_time_legacy_floor"] = true,
					["text_text_format_p_format"] = "timed",
					["text_shadowXOffset"] = 0,
					["type"] = "subtext",
					["text_text_format_p_time_precision"] = 1,
					["text_color"] = {
						1, -- [1]
						0.97647058823529, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_text_format_5.p_format"] = "timed",
					["text_shadowYOffset"] = 0,
					["text_text_format_5.p_time_dynamic_threshold"] = 60,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_fontType"] = "OUTLINE",
					["text_text_format_5.p_time_mod_rate"] = true,
					["text_fontSize"] = 17,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 60,
				}, -- [2]
			},
			["height"] = 30,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = false,
				["talent"] = {
					["multi"] = {
						[57] = true,
						[59] = true,
						[18] = true,
						[62] = true,
						[67] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
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
			},
			["source"] = "import",
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["url"] = "https://wago.io/X6wQKkZUq/5",
			["regionType"] = "icon",
			["parent"] = "平衡德循環助手",
			["cooldown"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["icon"] = true,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["semver"] = "1.0.4",
			["tocversion"] = 30400,
			["id"] = "Starfire-out",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 30,
			["auto"] = true,
			["uid"] = "l9zJ2RFDcgF",
			["inverse"] = false,
			["xOffset"] = 0,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Moonfire-out"] = {
			["iconSource"] = -1,
			["wagoID"] = "X6wQKkZUq",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["glow_frame_type"] = "UNITFRAME",
					["glow_type"] = "buttonOverlay",
					["do_glow"] = false,
					["glow_action"] = "show",
				},
				["finish"] = {
					["glow_frame_type"] = "FRAMESELECTOR",
					["hide_all_glows"] = false,
					["glow_action"] = "show",
					["do_glow"] = false,
					["glow_type"] = "Pixel",
					["do_message"] = false,
					["glow_frame"] = "WeakAuras:Life Tap",
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "30",
						["auranames"] = {
							"Starfire", -- [1]
						},
						["matchesShowOn"] = "showOnMissing",
						["unit"] = "target",
						["debuffType"] = "HARMFUL",
						["showClones"] = false,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["auraspellids"] = {
							"48463", -- [1]
							"48462", -- [2]
							"26988", -- [3]
						},
						["spellIds"] = {
						},
						["useName"] = false,
						["remOperator"] = "<",
						["ownOnly"] = true,
						["useExactSpellId"] = true,
						["useRem"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auraspellids"] = {
							"48517", -- [1]
						},
						["unit"] = "player",
						["matchesShowOn"] = "showOnMissing",
						["useExactSpellId"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auraspellids"] = {
							"48518", -- [1]
						},
						["unit"] = "player",
						["matchesShowOn"] = "showOnMissing",
						["useExactSpellId"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["track"] = "auto",
						["type"] = "spell",
						["use_genericShowOn"] = true,
						["event"] = "Queued Action",
						["unit"] = "player",
						["realSpellName"] = "Starfire",
						["use_spellId"] = true,
						["spellName"] = 48461,
						["use_direction"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_spellName"] = true,
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return (t[1] and t[2] and t[3] and not t[4])\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 5,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 30,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[49] = true,
						[63] = true,
						[18] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
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
			},
			["source"] = "import",
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["url"] = "https://wago.io/X6wQKkZUq/5",
			["regionType"] = "icon",
			["parent"] = "平衡德循環助手",
			["cooldown"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["icon"] = true,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["semver"] = "1.0.4",
			["tocversion"] = 30400,
			["id"] = "Moonfire-out",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 30,
			["auto"] = true,
			["uid"] = "gqctlRbq1AC",
			["inverse"] = false,
			["xOffset"] = 0,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
	},
	["lastArchiveClear"] = 1664034415,
	["minimap"] = {
		["hide"] = false,
	},
	["lastUpgrade"] = 1664034420,
	["dbVersion"] = 53,
	["registered"] = {
	},
	["login_squelch_time"] = 10,
	["frame"] = {
		["xOffset"] = 1.0052490234375,
		["width"] = 829.9998168945312,
		["height"] = 665.0001831054688,
		["yOffset"] = -189.6077880859375,
	},
	["editor_theme"] = "Monokai",
}
