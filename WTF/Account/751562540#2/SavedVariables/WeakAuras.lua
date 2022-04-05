
WeakAurasSaved = {
	["dynamicIconCache"] = {
	},
	["editor_tab_spaces"] = 4,
	["displays"] = {
		["Winterchill - Death and Decay"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = true,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\BigWigs\\Media\\Sounds\\Alarm.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = 40832,
						["auranames"] = {
							"31258", -- [1]
						},
						["duration"] = "5",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["useExactSpellId"] = false,
						["event"] = "Chat Message",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "I will not be touched by rabble such as you",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["useIgnoreName"] = false,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["use_eventtype"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["useName"] = true,
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
							"41917", -- [1]
						},
						["type"] = "aura2",
						["use_npcId"] = false,
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["use_message"] = true,
						["subeventSuffix"] = "_DAMAGE",
						["useAffected"] = true,
						["group_countOperator"] = ">",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "31258",
						["auranames"] = {
							"31258", -- [1]
						},
						["duration"] = "3",
						["destUnit"] = "player",
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["useExactSpellId"] = false,
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "I will not be touched by rabble such as you",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["useIgnoreName"] = false,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_aggro"] = true,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_eventtype"] = true,
						["spellName"] = "",
						["use_status"] = false,
						["use_genericShowOn"] = true,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
							"41917", -- [1]
						},
						["useName"] = true,
						["realSpellName"] = "Impale",
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["unit"] = "player",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["type"] = "combatlog",
						["use_message"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["subeventSuffix"] = "_DAMAGE",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [2]
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "31258",
						["auranames"] = {
							"31258", -- [1]
						},
						["duration"] = "3",
						["destUnit"] = "player",
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["useExactSpellId"] = false,
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "I will not be touched by rabble such as you",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["useIgnoreName"] = false,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_aggro"] = true,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["use_eventtype"] = true,
						["spellName"] = "",
						["use_status"] = false,
						["use_genericShowOn"] = true,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
							"41917", -- [1]
						},
						["useName"] = true,
						["realSpellName"] = "Impale",
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["unit"] = "player",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["type"] = "combatlog",
						["use_message"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["subeventSuffix"] = "_DAMAGE",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "MOVE OUT",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "618",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136144,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Winterchill - Death and Decay",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "kcldR32OmAt",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["BT - Whirling Blade"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = true,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\BigWigs\\Media\\Sounds\\Alarm.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "41061",
						["auranames"] = {
							"41034", -- [1]
						},
						["use_genericShowOn"] = true,
						["destUnit"] = "player",
						["amount"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_DAMAGE",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_aggro"] = true,
						["unit"] = "target",
						["useExactSpellId"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "combatlog",
						["useName"] = true,
						["duration"] = "3",
						["unevent"] = "timed",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"38215", -- [1]
						},
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_unit"] = true,
						["useAffected"] = true,
						["use_eventtype"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "41061",
						["auranames"] = {
							"41034", -- [1]
						},
						["use_genericShowOn"] = true,
						["destUnit"] = "player",
						["amount"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_DAMAGE",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_aggro"] = true,
						["unit"] = "target",
						["useExactSpellId"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "combatlog",
						["useName"] = true,
						["duration"] = "3",
						["unevent"] = "timed",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"38215", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["useAffected"] = true,
						["use_eventtype"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "MOVE AWAY",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["use_zone"] = false,
				["encounterid"] = "2458",
				["zone"] = "Serpentshrine Cavern",
				["use_encounter"] = false,
				["use_zoneIds"] = true,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135568,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "BT - Whirling Blade",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "tFhRaGI7c9N",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Council - Dampen Magic"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Sound\\Interface\\RaidWarning.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = 41426,
						["auranames"] = {
							"41478", -- [1]
						},
						["use_genericShowOn"] = true,
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_DAMAGE",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_eventtype"] = true,
						["use_aggro"] = true,
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["duration"] = "40",
						["type"] = "aura2",
						["auraspellids"] = {
							"41478", -- [1]
						},
						["unevent"] = "timed",
						["realSpellName"] = "Impale",
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = false,
						["unit"] = "target",
						["group_countOperator"] = ">",
						["useAffected"] = true,
						["useExactSpellId"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "SPELLSTEAL",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_class"] = false,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["encounterid"] = "608",
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135729,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Council - Dampen Magic",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "n6alA68VQ(p",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Council - Flamestrike"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = true,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\BigWigs\\Media\\Sounds\\Alarm.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "41481",
						["auranames"] = {
							"41478", -- [1]
						},
						["duration"] = "3",
						["destUnit"] = "player",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_DAMAGE",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["use_eventtype"] = true,
						["use_aggro"] = true,
						["use_unit"] = true,
						["use_genericShowOn"] = true,
						["debuffType"] = "HELPFUL",
						["names"] = {
						},
						["type"] = "combatlog",
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["realSpellName"] = "Impale",
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["useName"] = true,
						["unit"] = "target",
						["group_countOperator"] = ">",
						["useAffected"] = true,
						["useExactSpellId"] = false,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "41481",
						["auranames"] = {
							"41478", -- [1]
						},
						["duration"] = "3",
						["destUnit"] = "player",
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["subeventSuffix"] = "_DAMAGE",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_eventtype"] = true,
						["useExactSpellId"] = false,
						["spellName"] = "Intangible Presence",
						["use_destName"] = false,
						["unit"] = "target",
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["type"] = "combatlog",
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["realSpellName"] = "Impale",
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_aggro"] = true,
						["useAffected"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "MOVE OUT",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "608",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135826,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Council - Flamestrike",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "48t0aUt1Czf",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["土系图腾"] = {
			["iconSource"] = -1,
			["wagoID"] = "nsp7fsMNg",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 86,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "",
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
						["itemName"] = 0,
						["use_totemNamePattern"] = false,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["use_totemType"] = true,
						["debuffType"] = "HELPFUL",
						["spellName"] = 0,
						["type"] = "spell",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_threatUnit"] = true,
						["form"] = {
						},
						["use_itemName"] = true,
						["totemType"] = 2,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["threatUnit"] = "target",
						["event"] = "Totem",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["useExactSpellId"] = false,
						["use_unit"] = true,
						["unit"] = "player",
						["event"] = "Conditions",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
			["version"] = 19,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["text_color"] = {
						0, -- [1]
						1, -- [2]
						0.2156862745098039, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_fontType"] = "OUTLINE",
					["text_shadowYOffset"] = 0,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 15,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_precision"] = 1,
				}, -- [3]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
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
			["parent"] = "老雷增强萨WA",
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["icon"] = true,
			["information"] = {
			},
			["displayIcon"] = 136023,
			["uid"] = "QtC4wIx4Rm2",
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "土系图腾",
			["width"] = 40,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0,
							["property"] = "iconSource",
						}, -- [2]
						{
							["value"] = 0.5,
							["property"] = "alpha",
						}, -- [3]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "5",
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["xOffset"] = -46.3323974609375,
		},
		["Anetheron - Sleep"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\BigWigs\\Media\\Sounds\\Alarm.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = 40832,
						["auranames"] = {
							"31298", -- [1]
						},
						["duration"] = "5",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["useExactSpellId"] = false,
						["event"] = "Chat Message",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "I will not be touched by rabble such as you",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["useIgnoreName"] = false,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["use_eventtype"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["useName"] = true,
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
							"41917", -- [1]
						},
						["type"] = "aura2",
						["use_npcId"] = false,
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["use_message"] = true,
						["subeventSuffix"] = "_DAMAGE",
						["useAffected"] = true,
						["group_countOperator"] = ">",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "SLEEPING",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "619",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136090,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Anetheron - Sleep",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "dhQfYe5XuuT",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Gurtogg - Fel Rage"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "28433",
						["auranames"] = {
							"40604", -- [1]
						},
						["duration"] = "40",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["event"] = "Combat Events",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = false,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["unit"] = "group",
						["useExactSpellId"] = false,
						["group_countOperator"] = ">",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
						["use_genericShowOn"] = true,
						["type"] = "aura2",
						["unevent"] = "timed",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["use_eventtype"] = true,
						["use_unit"] = true,
						["useAffected"] = true,
						["use_aggro"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "28433",
						["auranames"] = {
							"40604", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["event"] = "Combat Events",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = false,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_aggro"] = true,
						["use_unit"] = true,
						["group_countOperator"] = ">",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["debuffType"] = "HARMFUL",
						["unevent"] = "timed",
						["type"] = "aura2",
						["use_npcId"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_threatUnit"] = true,
						["unit"] = "player",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["use_eventtype"] = true,
						["duration"] = "40",
						["useAffected"] = true,
						["useExactSpellId"] = false,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "RAGE ON YOU",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "PHASE 2",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [3]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
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
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [4]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "605",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135791,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Gurtogg - Fel Rage",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "KhWLqWeIpX9",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.text_visible",
						}, -- [1]
						{
							["property"] = "sub.3.text_visible",
						}, -- [2]
						{
							["value"] = true,
							["property"] = "sub.4.glow",
						}, -- [3]
						{
							["value"] = {
								["message"] = "{rt7} FEL RAGE ON %c {rt7}",
								["custom"] = "function() return UnitName(\"player\") end",
								["message_type"] = "YELL",
							},
							["property"] = "chat",
						}, -- [4]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Gorefiend - Crushing Shadows"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\BigWigs\\Media\\Sounds\\Alarm.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "28433",
						["auranames"] = {
							"40243", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["event"] = "Combat Events",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = false,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_aggro"] = true,
						["use_unit"] = true,
						["group_countOperator"] = ">",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["debuffType"] = "HARMFUL",
						["unevent"] = "timed",
						["type"] = "aura2",
						["use_npcId"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_threatUnit"] = true,
						["unit"] = "player",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["use_eventtype"] = true,
						["duration"] = "40",
						["useAffected"] = true,
						["useExactSpellId"] = false,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "CRUSHING",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "604",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136224,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Gorefiend - Crushing Shadows",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "YrfFyUKrh8U",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["MH - Banshee Curse"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "{rt7} CURSE ON %c {rt7}",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = true,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "38976",
						["auranames"] = {
							"31651", -- [1]
						},
						["duration"] = "8",
						["amount"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["use_eventtype"] = true,
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_aggro"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["unit"] = "player",
						["useExactSpellId"] = false,
						["use_genericShowOn"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["useName"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_status"] = false,
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_unit"] = true,
						["useAffected"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "DECURSE",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["use_zone"] = false,
				["encounterid"] = "2458",
				["zone"] = "Serpentshrine Cavern",
				["use_encounter"] = false,
				["use_zoneIds"] = true,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136020,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "MH - Banshee Curse",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "9CxiqalbRo2",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Anetheron - Carrion Swarm"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\BigWigs\\Media\\Sounds\\Alarm.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = 40832,
						["auranames"] = {
							"31306", -- [1]
						},
						["duration"] = "5",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["useExactSpellId"] = false,
						["event"] = "Chat Message",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "I will not be touched by rabble such as you",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["useIgnoreName"] = false,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["use_eventtype"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["useName"] = true,
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
							"41917", -- [1]
						},
						["type"] = "aura2",
						["use_npcId"] = false,
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["use_message"] = true,
						["subeventSuffix"] = "_DAMAGE",
						["useAffected"] = true,
						["group_countOperator"] = ">",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "- HEALING DONE",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "619",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136128,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Anetheron - Carrion Swarm",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "IJOzL41LXb(",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["火系图腾"] = {
			["iconSource"] = -1,
			["wagoID"] = "nsp7fsMNg",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 86,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "",
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
						["itemName"] = 0,
						["use_totemNamePattern"] = false,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["use_totemType"] = true,
						["debuffType"] = "HELPFUL",
						["spellName"] = 0,
						["type"] = "spell",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_threatUnit"] = true,
						["form"] = {
						},
						["use_itemName"] = true,
						["totemType"] = 1,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["threatUnit"] = "target",
						["event"] = "Totem",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["useExactSpellId"] = false,
						["use_unit"] = true,
						["unit"] = "player",
						["event"] = "Conditions",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
			["version"] = 19,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["text_color"] = {
						0, -- [1]
						1, -- [2]
						0.2156862745098039, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_fontType"] = "OUTLINE",
					["text_shadowYOffset"] = 0,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 15,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_precision"] = 1,
				}, -- [3]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
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
			["parent"] = "老雷增强萨WA",
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["icon"] = true,
			["information"] = {
			},
			["displayIcon"] = 135825,
			["uid"] = "bZdxrHUJPpk",
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "火系图腾",
			["width"] = 40,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0,
							["property"] = "iconSource",
						}, -- [2]
						{
							["value"] = 0.5,
							["property"] = "alpha",
						}, -- [3]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "5",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["xOffset"] = 33.45068359375,
		},
		["BT - Silencing Shot"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "38976",
						["auranames"] = {
							"41084", -- [1]
						},
						["duration"] = "8",
						["amount"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["use_eventtype"] = true,
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_aggro"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["unit"] = "player",
						["useExactSpellId"] = false,
						["use_genericShowOn"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["useName"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_status"] = false,
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_unit"] = true,
						["useAffected"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "SILENCED",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["use_zone"] = false,
				["encounterid"] = "2458",
				["zone"] = "Serpentshrine Cavern",
				["use_encounter"] = false,
				["use_zoneIds"] = true,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 132323,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "BT - Silencing Shot",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "vUtNtvaPge6",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Kazrogal - War Stomp"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\BigWigs\\Media\\Sounds\\Alarm.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = 40832,
						["auranames"] = {
							"31480", -- [1]
						},
						["duration"] = "5",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["useExactSpellId"] = false,
						["event"] = "Chat Message",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "I will not be touched by rabble such as you",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["useIgnoreName"] = false,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["use_eventtype"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["useName"] = true,
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
							"41917", -- [1]
						},
						["type"] = "aura2",
						["use_npcId"] = false,
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["use_message"] = true,
						["subeventSuffix"] = "_DAMAGE",
						["useAffected"] = true,
						["group_countOperator"] = ">",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "STUNNED",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "620",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 132368,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Kazrogal - War Stomp",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "0SmCH8P16ZC",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["根基"] = {
			["iconSource"] = -1,
			["wagoID"] = "nsp7fsMNg",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 86,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "",
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
						["type"] = "spell",
						["spellName"] = 8177,
						["subeventSuffix"] = "_CAST_START",
						["genericShowOn"] = "showAlways",
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = 8177,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["use_exact_spellName"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["event"] = "Conditions",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
			["version"] = 19,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
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
			["parent"] = "老雷增强萨WA",
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["icon"] = true,
			["information"] = {
			},
			["displayIcon"] = 136039,
			["uid"] = ")Rk9(zjWfVU",
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "根基",
			["width"] = 40,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
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
							["value"] = 0.5,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
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
			["xOffset"] = 113.08642578125,
		},
		["Supremus - Phase 2"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "18806",
						["spellId"] = 33387,
						["auranames"] = {
							"34322", -- [1]
						},
						["use_genericShowOn"] = true,
						["message_operator"] = "find('%s')",
						["destUnit"] = "player",
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["use_eventtype"] = true,
						["percenthealth"] = "20",
						["event"] = "Chat Message",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "Supremus punches the ground in anger",
						["use_spellId"] = true,
						["sourceNpcId"] = "",
						["useAffected"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["spellName"] = "Intangible Presence",
						["use_sourceNpcId"] = false,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["duration"] = "60",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["names"] = {
						},
						["use_unit"] = true,
						["use_destName"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["type"] = "event",
						["percenthealth_operator"] = "<=",
						["unevent"] = "timed",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Intangible Presence",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_message"] = true,
						["use_percenthealth"] = true,
						["use_messageType"] = false,
						["useExactSpellId"] = false,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "event",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_eventtype"] = true,
						["debuffType"] = "HELPFUL",
						["duration"] = "60",
						["event"] = "Combat Events",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(trigger)\n    return (trigger[1] and trigger[2]) or trigger[3]    \nend\n\n\n",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "KITE IN",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "PHASE 2",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [3]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "602",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 132345,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Supremus - Phase 2",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "d3klKQM1bCO",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "expirationTime",
						["value"] = "5",
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
						["op"] = ">",
						["variable"] = "expirationTime",
						["value"] = "5",
					},
					["changes"] = {
						{
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Council - Circle of Healing Ranged"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Sound\\Interface\\RaidWarning.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = 41455,
						["auranames"] = {
							"41475", -- [1]
						},
						["use_genericShowOn"] = true,
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_DAMAGE",
						["event"] = "Cast",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_eventtype"] = true,
						["use_aggro"] = true,
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["duration"] = "40",
						["type"] = "unit",
						["auraspellids"] = {
						},
						["unevent"] = "timed",
						["realSpellName"] = "Impale",
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["unit"] = "target",
						["group_countOperator"] = ">",
						["useAffected"] = true,
						["useExactSpellId"] = false,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				{
					["trigger"] = {
						["useName"] = true,
						["auranames"] = {
							"41451", -- [1]
						},
						["unit"] = "target",
						["matchesShowOn"] = "showOnMissing",
						["type"] = "aura2",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "INTERRUPT",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_class"] = false,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["encounterid"] = "608",
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["MAGE"] = true,
						["WARLOCK"] = true,
						["SHAMAN"] = true,
					},
				},
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135943,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Council - Circle of Healing Ranged",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "NgQcwUOdG1P",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["仇恨95OT警告"] = {
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 625,
			["anchorPoint"] = "CENTER",
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
						["use_status"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_threatvalue"] = false,
						["use_threatpct"] = true,
						["event"] = "Threat Situation",
						["names"] = {
						},
						["threatpct"] = "90",
						["spellIds"] = {
						},
						["threatpct_operator"] = ">=",
						["unit"] = "target",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
			["rotation"] = 0,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 333,
			["rotate"] = true,
			["load"] = {
				["size"] = {
					["single"] = "twenty",
					["multi"] = {
						["ten"] = true,
						["twentyfive"] = true,
						["twenty"] = true,
						["fortyman"] = true,
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["WARLOCK"] = true,
						["SHAMAN"] = true,
					},
				},
				["talent"] = {
					["single"] = 13,
					["multi"] = {
						[13] = true,
					},
				},
			},
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["mirror"] = false,
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\cancel-icon.tga",
			["anchorFrameType"] = "SCREEN",
			["parent"] = "老雷增强萨WA",
			["selfPoint"] = "CENTER",
			["tocversion"] = 20502,
			["id"] = "仇恨95OT警告",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["width"] = 333,
			["config"] = {
			},
			["uid"] = "vATkuM8oFnD",
			["discrete_rotation"] = 0,
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
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\AirHorn.ogg",
							},
							["property"] = "sound",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [2]
					},
				}, -- [1]
			},
			["information"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["BT - Sunder Armor"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\BigWigs\\Media\\Sounds\\Alarm.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "41061",
						["auranames"] = {
							"13444", -- [1]
						},
						["use_genericShowOn"] = true,
						["destUnit"] = "player",
						["amount"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_DAMAGE",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_aggro"] = true,
						["unit"] = "player",
						["useExactSpellId"] = false,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["useName"] = true,
						["duration"] = "3",
						["unevent"] = "timed",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"38215", -- [1]
						},
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_unit"] = true,
						["useAffected"] = true,
						["use_eventtype"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "- Armor",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [3]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["use_zone"] = false,
				["encounterid"] = "2458",
				["zone"] = "Serpentshrine Cavern",
				["use_encounter"] = false,
				["use_zoneIds"] = true,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 132363,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "BT - Sunder Armor",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "6QD2CA(4oUh",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["萨满之怒倒计时"] = {
			["iconSource"] = -1,
			["wagoID"] = "nsp7fsMNg",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 156.24,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "",
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
						["spellName"] = 2825,
						["useName"] = true,
						["auranames"] = {
							"萨满之怒", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = "Bloodlust",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["type"] = "aura2",
						["names"] = {
						},
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
			["version"] = 19,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["glow"] = true,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
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
			["parent"] = "老雷增强萨WA",
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["icon"] = true,
			["information"] = {
			},
			["displayIcon"] = "136012",
			["uid"] = "gMC8IABGZLG",
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "萨满之怒倒计时",
			["width"] = 40,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 4,
			["config"] = {
			},
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
				{
					["check"] = {
					},
					["changes"] = {
						{
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["xOffset"] = 34.68,
		},
		["Illidan - Flame Crash"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Sound\\Interface\\RaidWarning.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = 40832,
						["auranames"] = {
							"41453", -- [1]
							"41452", -- [2]
						},
						["use_genericShowOn"] = true,
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["useExactSpellId"] = true,
						["event"] = "Cast",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["useIgnoreName"] = false,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_eventtype"] = true,
						["spellName"] = "Intangible Presence",
						["unit"] = "target",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["duration"] = "40",
						["type"] = "unit",
						["unevent"] = "timed",
						["auraspellids"] = {
							"41452", -- [1]
							"41453", -- [2]
						},
						["realSpellName"] = "Impale",
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = false,
						["subeventPrefix"] = "SPELL",
						["use_aggro"] = true,
						["useAffected"] = true,
						["subeventSuffix"] = "_DAMAGE",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["use_aggro"] = true,
						["unit"] = "target",
						["use_unit"] = true,
						["event"] = "Threat Situation",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "MOVE",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "609",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135784,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Illidan - Flame Crash",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "LAu9Dfg0Uo7",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["巨魔天赋"] = {
			["iconSource"] = -1,
			["wagoID"] = "nsp7fsMNg",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 156.33,
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
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 20554,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["realSpellName"] = "狂暴",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 19,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["use_race"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["single"] = "Troll",
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "老雷增强萨WA",
			["regionType"] = "icon",
			["icon"] = true,
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
			["information"] = {
			},
			["cooldownTextDisabled"] = false,
			["uid"] = "gkuSGdm(jt6",
			["zoom"] = 0,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "巨魔天赋",
			["frameStrata"] = 3,
			["alpha"] = 1,
			["width"] = 40,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = 114.68,
			["conditions"] = {
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
							["value"] = 0.8,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "",
		},
		["嗜血"] = {
			["iconSource"] = -1,
			["wagoID"] = "nsp7fsMNg",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 156.3313903808594,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "",
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
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 2825,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["realSpellName"] = "嗜血術",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["event"] = "Conditions",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
			["version"] = 19,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["text_color"] = {
						0, -- [1]
						1, -- [2]
						0.2156862745098039, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_fontType"] = "OUTLINE",
					["text_shadowYOffset"] = 0,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 15,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_precision"] = 1,
				}, -- [3]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["faction"] = {
					["single"] = "Horde",
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_faction"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "老雷增强萨WA",
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["icon"] = true,
			["information"] = {
			},
			["displayIcon"] = "136012",
			["uid"] = "8DQxhSsTLGm",
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "嗜血",
			["width"] = 40,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 3,
			["config"] = {
			},
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
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
							["value"] = 0.8,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.45,
							["property"] = "alpha",
						}, -- [2]
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0.26274509803922, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [3]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["xOffset"] = 74.68,
		},
		["Council - Blessings"] = {
			["iconSource"] = -1,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Sound\\Interface\\RaidWarning.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = 41426,
						["auranames"] = {
							"41450", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["subeventSuffix"] = "_DAMAGE",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_eventtype"] = true,
						["useExactSpellId"] = true,
						["spellName"] = "Intangible Presence",
						["use_unit"] = true,
						["duration"] = "40",
						["debuffType"] = "HELPFUL",
						["unevent"] = "timed",
						["type"] = "aura2",
						["realSpellName"] = "Impale",
						["auraspellids"] = {
							"41450", -- [1]
							"41451", -- [2]
						},
						["use_threatUnit"] = true,
						["unit"] = "target",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = false,
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["useAffected"] = true,
						["use_aggro"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "NO PHYSICAL",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "NO MAGICAL",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [3]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "608",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135938,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Council - Blessings",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "dolUauyz1bB",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "spellId",
						["value"] = "41450",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.text_visible",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "spellId",
						["value"] = "41451",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.text_visible",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["BT - Mortal Wound"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\BigWigs\\Media\\Sounds\\Alarm.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "41061",
						["auranames"] = {
							"25646", -- [1]
						},
						["use_genericShowOn"] = true,
						["destUnit"] = "player",
						["amount"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_DAMAGE",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_aggro"] = true,
						["unit"] = "player",
						["useExactSpellId"] = false,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["useName"] = true,
						["duration"] = "3",
						["unevent"] = "timed",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"38215", -- [1]
						},
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_unit"] = true,
						["useAffected"] = true,
						["use_eventtype"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "- Healing",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [3]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["use_zone"] = false,
				["encounterid"] = "2458",
				["zone"] = "Serpentshrine Cavern",
				["use_encounter"] = false,
				["use_zoneIds"] = true,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 132109,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "BT - Mortal Wound",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "scI4LkQMJA6",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Illidan - Enrage"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["do_loop"] = false,
					["message_custom"] = "function() return UnitName(\"player\") end",
					["message_type"] = "SAY",
					["do_message"] = false,
					["message"] = "",
					["do_sound"] = true,
					["do_glow"] = false,
					["sound"] = "Sound\\Interface\\RaidWarning.ogg",
					["sound_repeat"] = 1,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "39869",
						["auranames"] = {
							"40683", -- [1]
						},
						["duration"] = "3",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["useExactSpellId"] = true,
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "I will not be touched by rabble such as you",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["useIgnoreName"] = false,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "target",
						["use_eventtype"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["useName"] = false,
						["debuffType"] = "HELPFUL",
						["auraspellids"] = {
							"40683", -- [1]
						},
						["type"] = "aura2",
						["use_npcId"] = false,
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["use_message"] = true,
						["subeventSuffix"] = "_AURA_APPLIED",
						["useAffected"] = true,
						["group_countOperator"] = ">",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "DEFENSIVES",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "609",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136215,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Illidan - Enrage",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "d(qb32GAZQt",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["老雷增强萨WA"] = {
			["controlledChildren"] = {
				"Shaman: Wep Enchant Timers 2", -- [1]
				"仇恨95OT警告", -- [2]
				"施法条", -- [3]
				"2.6/2.6 同速 2", -- [4]
				"主手", -- [5]
				"副手", -- [6]
				"双插风怒计时", -- [7]
				"风系图腾", -- [8]
				"水系图腾", -- [9]
				"土系图腾", -- [10]
				"火系图腾", -- [11]
				"火焰新星图腾监控", -- [12]
				"火爹", -- [13]
				"土爹", -- [14]
				"根基", -- [15]
				"水盾/电盾", -- [16]
				"风暴打击", -- [17]
				"地震术", -- [18]
				"萨满之怒", -- [19]
				"萨满之怒倒计时", -- [20]
				"嗜血", -- [21]
				"嗜血倒计时", -- [22]
				"英勇（联盟", -- [23]
				"英勇倒计时（联盟", -- [24]
				"巨魔天赋", -- [25]
				"巨魔天赋计时", -- [26]
				"牛头人天赋", -- [27]
				"兽人天赋", -- [28]
				"兽人天赋计时", -- [29]
				"德莱尼天赋", -- [30]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "nsp7fsMNg",
			["xOffset"] = -1.01513671875,
			["preferToUpdate"] = false,
			["yOffset"] = -258.8442993164063,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/nsp7fsMNg/19",
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
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 51,
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
			["subRegions"] = {
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
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "group",
			["borderSize"] = 2,
			["borderOffset"] = 4,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "老雷增强萨WA",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["selfPoint"] = "CENTER",
			["uid"] = "ddt13SDElVu",
			["conditions"] = {
			},
			["information"] = {
			},
			["borderInset"] = 1,
		},
		["Reliquary - Active Boss"] = {
			["iconSource"] = -1,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "28433",
						["auranames"] = {
							"41292", -- [1]
							"41350", -- [2]
						},
						["duration"] = "40",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["event"] = "Combat Events",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = false,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["unit"] = "player",
						["useExactSpellId"] = true,
						["group_countOperator"] = ">",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
						["use_genericShowOn"] = true,
						["type"] = "aura2",
						["unevent"] = "timed",
						["auraspellids"] = {
							"41292", -- [1]
							"41350", -- [2]
							"41337", -- [3]
						},
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = false,
						["use_eventtype"] = true,
						["use_unit"] = true,
						["useAffected"] = true,
						["use_aggro"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "NO HEALING",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "PHASE 1",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [3]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "DMG REFLECT",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [4]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "PHASE 2",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [5]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "BONUS DMG",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [6]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "PHASE 3",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [7]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "606",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136123,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Reliquary - Active Boss",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "Hj3trGfC7HR",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "spellId",
						["value"] = "41292",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.text_visible",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.2.text_visible",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "spellId",
						["value"] = "41350",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.5.text_visible",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.4.text_visible",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "spellId",
						["value"] = "41337",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.7.text_visible",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.6.text_visible",
						}, -- [2]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Illidan - Aura of the Dead"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = true,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\BigWigs\\Media\\Sounds\\Alarm.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "41142",
						["auranames"] = {
							"41083", -- [1]
						},
						["duration"] = "3",
						["destUnit"] = "player",
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["useExactSpellId"] = false,
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "I will not be touched by rabble such as you",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["useIgnoreName"] = false,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_aggro"] = true,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["use_eventtype"] = true,
						["spellName"] = "",
						["use_status"] = false,
						["use_genericShowOn"] = true,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
							"41917", -- [1]
						},
						["useName"] = true,
						["realSpellName"] = "Impale",
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["unit"] = "player",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["type"] = "combatlog",
						["use_message"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["subeventSuffix"] = "_AURA_APPLIED",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "MOVE OUT",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "609",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136204,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Illidan - Aura of the Dead",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "X6Z6mLWeEpm",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Reliquary - Soul Drain"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "{rt7} DRAIN ON %c {rt7}",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = true,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "28433",
						["auranames"] = {
							"41303", -- [1]
						},
						["duration"] = "40",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["event"] = "Combat Events",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = false,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["unit"] = "player",
						["useExactSpellId"] = false,
						["group_countOperator"] = ">",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
						["use_genericShowOn"] = true,
						["type"] = "aura2",
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["use_eventtype"] = true,
						["use_unit"] = true,
						["useAffected"] = true,
						["use_aggro"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "DISPELL",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "606",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136222,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Reliquary - Soul Drain",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "IkqlpQeUpjD",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Supremus - Fixate"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "{rt7} FIXATE ON %c {rt7}",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = true,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "22898",
						["spellId"] = 33387,
						["auranames"] = {
							"34322", -- [1]
						},
						["use_genericShowOn"] = true,
						["message_operator"] = "find('%s')",
						["use_sourceNpcId"] = false,
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["use_eventtype"] = true,
						["message"] = "Thaladred the Darkener sets eyes on",
						["percenthealth"] = "20",
						["event"] = "Unit Characteristics",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["sourceNpcId"] = "",
						["use_spellId"] = true,
						["useAffected"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["destUnit"] = "player",
						["use_destUnit"] = false,
						["use_track"] = true,
						["duration"] = "5",
						["use_amount"] = true,
						["use_unitisunit"] = true,
						["use_status"] = false,
						["useGroup_count"] = true,
						["subeventPrefix"] = "SPELL",
						["use_npcId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "target",
						["use_threatUnit"] = true,
						["group_countOperator"] = ">",
						["names"] = {
						},
						["use_unit"] = true,
						["percenthealth_operator"] = "<=",
						["use_destName"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["type"] = "unit",
						["use_aggro"] = true,
						["unevent"] = "timed",
						["useName"] = true,
						["use_destFlags2"] = false,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Intangible Presence",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["unitisunit"] = "player",
						["use_message"] = true,
						["use_percenthealth"] = true,
						["use_messageType"] = false,
						["useExactSpellId"] = false,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				{
					["trigger"] = {
						["npcId"] = "18806",
						["spellId"] = 33387,
						["auranames"] = {
							"34322", -- [1]
						},
						["use_genericShowOn"] = true,
						["message_operator"] = "find('%s')",
						["destUnit"] = "player",
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["use_eventtype"] = true,
						["percenthealth"] = "20",
						["event"] = "Chat Message",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "acquires a new target",
						["use_spellId"] = true,
						["sourceNpcId"] = "",
						["useAffected"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["spellName"] = "Intangible Presence",
						["use_sourceNpcId"] = false,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["duration"] = "5",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["names"] = {
						},
						["use_unit"] = true,
						["use_destName"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["type"] = "event",
						["percenthealth_operator"] = "<=",
						["unevent"] = "timed",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Intangible Presence",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_message"] = true,
						["use_percenthealth"] = true,
						["use_messageType"] = false,
						["useExactSpellId"] = false,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [2]
				["disjunctive"] = "all",
				["customTriggerLogic"] = "function(trigger)\n    return (trigger[1] and trigger[2]) or trigger[3]    \nend\n\n\n",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "RUN AWAY",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "602",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136129,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Supremus - Fixate",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "j2jocBHIeSS",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["双插风怒计时"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["wagoID"] = "nsp7fsMNg",
			["xOffset"] = -85.53851318359375,
			["preferToUpdate"] = false,
			["yOffset"] = 74.35903930664062,
			["anchorPoint"] = "CENTER",
			["spark"] = false,
			["cooldownSwipe"] = true,
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "",
			["icon"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 0,
						["spellId"] = "8512",
						["use_totemNamePattern"] = false,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["use_unit"] = true,
						["sourceUnit"] = "player",
						["subeventPrefix"] = "SPELL",
						["duration"] = "10",
						["use_totemType"] = true,
						["debuffType"] = "HELPFUL",
						["use_itemName"] = true,
						["type"] = "combatlog",
						["realSpellName"] = 0,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["use_spellName"] = false,
						["form"] = {
						},
						["threatUnit"] = "target",
						["totemType"] = 4,
						["use_threatUnit"] = true,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["event"] = "Combat Log",
						["spellName"] = "Windfury Totem",
						["use_track"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 0,
						["spellId"] = "10613",
						["use_totemNamePattern"] = false,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["use_unit"] = true,
						["sourceUnit"] = "player",
						["subeventPrefix"] = "SPELL",
						["duration"] = "10",
						["use_totemType"] = true,
						["debuffType"] = "HELPFUL",
						["use_itemName"] = true,
						["type"] = "combatlog",
						["realSpellName"] = 0,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["use_spellName"] = false,
						["form"] = {
						},
						["threatUnit"] = "target",
						["totemType"] = 4,
						["use_threatUnit"] = true,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["event"] = "Combat Log",
						["spellName"] = "Windfury Totem",
						["use_track"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["itemName"] = 0,
						["spellId"] = "10614",
						["use_totemNamePattern"] = false,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["use_unit"] = true,
						["sourceUnit"] = "player",
						["subeventPrefix"] = "SPELL",
						["duration"] = "10",
						["use_totemType"] = true,
						["debuffType"] = "HELPFUL",
						["use_itemName"] = true,
						["type"] = "combatlog",
						["realSpellName"] = 0,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["use_spellName"] = false,
						["form"] = {
						},
						["threatUnit"] = "target",
						["totemType"] = 4,
						["use_threatUnit"] = true,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["event"] = "Combat Log",
						["spellName"] = "Windfury Totem",
						["use_track"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["itemName"] = 0,
						["spellId"] = "25585",
						["use_totemNamePattern"] = false,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["use_unit"] = true,
						["sourceUnit"] = "player",
						["subeventPrefix"] = "SPELL",
						["duration"] = "10",
						["use_totemType"] = true,
						["debuffType"] = "HELPFUL",
						["use_itemName"] = true,
						["type"] = "combatlog",
						["realSpellName"] = 0,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["use_spellName"] = false,
						["form"] = {
						},
						["threatUnit"] = "target",
						["totemType"] = 4,
						["use_threatUnit"] = true,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["event"] = "Combat Log",
						["spellName"] = "Windfury Totem",
						["use_track"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["itemName"] = 0,
						["spellId"] = "25587",
						["use_totemNamePattern"] = false,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["use_unit"] = true,
						["sourceUnit"] = "player",
						["subeventPrefix"] = "SPELL",
						["duration"] = "10",
						["use_totemType"] = true,
						["debuffType"] = "HELPFUL",
						["use_itemName"] = true,
						["type"] = "combatlog",
						["realSpellName"] = 0,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["use_spellName"] = false,
						["form"] = {
						},
						["threatUnit"] = "target",
						["totemType"] = 4,
						["use_threatUnit"] = true,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["event"] = "Combat Log",
						["spellName"] = "Windfury Totem",
						["use_track"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [5]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 51,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["iconSource"] = -1,
			["barColor"] = {
				0, -- [1]
				0.89019607843137, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["information"] = {
			},
			["displayIcon"] = 136114,
			["version"] = 19,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "Number",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_shadowXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
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
					["text_text_format_p_round_type"] = "floor",
				}, -- [3]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowLength"] = 10,
					["glow_anchor"] = "bar",
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [4]
			},
			["height"] = 13,
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
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
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
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "老雷增强萨WA",
			["uid"] = "fbWAT6R016d",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["width"] = 40,
			["frameStrata"] = 5,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["id"] = "双插风怒计时",
			["icon_side"] = "RIGHT",
			["cooldownTextDisabled"] = false,
			["sparkHeight"] = 30,
			["texture"] = "Blizzard",
			["zoom"] = 0,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["sparkHidden"] = "NEVER",
			["sparkOffsetY"] = 0,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 5,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "3",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.4.glow",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "expirationTime",
						["value"] = "3",
						["op"] = "<=",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.4.glow",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "expirationTime",
						["value"] = "3",
						["op"] = "<=",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.4.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "expirationTime",
						["value"] = "3",
						["op"] = "<=",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.4.glow",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = 4,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "3",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.4.glow",
						}, -- [1]
					},
				}, -- [5]
			},
			["cooldown"] = true,
			["cooldownEdge"] = false,
		},
		["BT - Cyclone Totem"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "39589",
						["auranames"] = {
							"38215", -- [1]
						},
						["duration"] = "5",
						["amount"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["use_eventtype"] = true,
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_aggro"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["unit"] = "player",
						["useExactSpellId"] = false,
						["use_genericShowOn"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "combatlog",
						["useName"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_status"] = false,
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["useAffected"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "KILL TOTEM",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
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
					["glowScale"] = 1,
					["glow"] = false,
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["use_zone"] = false,
				["encounterid"] = "2458",
				["zone"] = "Serpentshrine Cavern",
				["use_encounter"] = false,
				["use_zoneIds"] = true,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135825,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "BT - Cyclone Totem",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "kR7RXL58WaN",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Illidan - Blaze"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = true,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\BigWigs\\Media\\Sounds\\Alarm.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "40611",
						["auranames"] = {
							"41083", -- [1]
						},
						["duration"] = "3",
						["destUnit"] = "player",
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["useExactSpellId"] = false,
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "I will not be touched by rabble such as you",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["useIgnoreName"] = false,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_aggro"] = true,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_eventtype"] = true,
						["spellName"] = "",
						["use_status"] = false,
						["use_genericShowOn"] = true,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
							"41917", -- [1]
						},
						["useName"] = true,
						["realSpellName"] = "Impale",
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["unit"] = "player",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["type"] = "combatlog",
						["use_message"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["subeventSuffix"] = "_DAMAGE",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "40611",
						["auranames"] = {
							"41083", -- [1]
						},
						["duration"] = "3",
						["destUnit"] = "player",
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["useExactSpellId"] = false,
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "I will not be touched by rabble such as you",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["useIgnoreName"] = false,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_aggro"] = true,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["use_eventtype"] = true,
						["spellName"] = "",
						["use_status"] = false,
						["use_genericShowOn"] = true,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
							"41917", -- [1]
						},
						["useName"] = true,
						["realSpellName"] = "Impale",
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["unit"] = "player",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["type"] = "combatlog",
						["use_message"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["subeventSuffix"] = "_DAMAGE",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "MOVE OUT",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "609",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135794,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Illidan - Blaze",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "QcsYMCy3fvR",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["施法条"] = {
			["sparkWidth"] = 10,
			["iconSource"] = -1,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 55,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["icon"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cast",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["use_unit"] = true,
						["unit"] = "player",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
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
			["internalVersion"] = 51,
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
				0.01176470588235294, -- [1]
				0.1882352941176471, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
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
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_visible"] = true,
					["text_shadowYOffset"] = -1,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 12,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_shadowXOffset"] = 1,
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%n",
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
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_fontType"] = "None",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_n_format"] = "none",
				}, -- [4]
			},
			["height"] = 14.99997425079346,
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
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["config"] = {
			},
			["parent"] = "老雷增强萨WA",
			["xOffset"] = 0,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["selfPoint"] = "CENTER",
			["sparkOffsetX"] = 0,
			["icon_side"] = "RIGHT",
			["zoom"] = 0,
			["sparkHeight"] = 30,
			["texture"] = "Blizzard",
			["id"] = "施法条",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["tocversion"] = 20502,
			["sparkHidden"] = "NEVER",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 300,
			["alpha"] = 1,
			["uid"] = "jwzt6lS95ZP",
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
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
		},
		["Shahraz - Fatal Left"] = {
			["iconSource"] = 0,
			["xOffset"] = 0,
			["displayText"] = "%p",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["icon"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "BOTTOM",
			["desaturate"] = false,
			["rotation"] = 270,
			["font"] = "Friz Quadrata TT",
			["load"] = {
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_zoneIds"] = true,
				["encounterid"] = "607",
				["zoneIds"] = "339",
			},
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["shadowXOffset"] = 1,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\targeting-mark.tga",
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 20504,
			["alpha"] = 1,
			["uid"] = "ZByZI2d73ob",
			["displayIcon"] = 136202,
			["outline"] = "OUTLINE",
			["wagoID"] = "Y5J7NdyVH",
			["color"] = {
				1, -- [1]
				0.45490196078431, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["shadowYOffset"] = -1,
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["events"] = "RAID_TARGET_UPDATE",
						["custom"] = "function(states, event, ...)\n    local mark = GetRaidTargetIndex(\"player\")\n    if mark == 2 then\n        states[\"\"] = {\n            show = true,\n            changed = true,\n            progressType = \"static\",\n            \n        }\n        return true\n    else\n        if states[\"\"] then\n            states[\"\"].show = false\n            states[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n",
						["subeventPrefix"] = "SPELL",
						["check"] = "event",
						["custom_type"] = "stateupdate",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 51,
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
			["discrete_rotation"] = 0,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "LEFT",
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
					["text_anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "TOP",
					["text_visible"] = true,
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_anchorYOffset"] = -40,
				}, -- [2]
			},
			["height"] = 160,
			["rotate"] = true,
			["fontSize"] = 12,
			["mirror"] = false,
			["preferToUpdate"] = false,
			["information"] = {
			},
			["authorOptions"] = {
			},
			["displayText_format_p_time_dynamic"] = false,
			["displayText_format_p_time_precision"] = 1,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Left.ogg",
					["do_sound"] = true,
				},
				["init"] = {
					["custom"] = "aura_env.marks = {\n    [1] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_1\",\n    [2] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_2\",\n    [3] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_3\",\n    [4] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_4\",\n    [5] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_5\",\n    [6] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_6\",\n    [7] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_7\",\n    [8] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_8\",\n}",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["config"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["justify"] = "LEFT",
			["cooldownEdge"] = true,
			["id"] = "Shahraz - Fatal Left",
			["width"] = 160,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["inverse"] = false,
			["wordWrap"] = "WordWrap",
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["fixedWidth"] = 200,
		},
		["英勇（联盟"] = {
			["iconSource"] = -1,
			["wagoID"] = "nsp7fsMNg",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 156.33,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "",
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
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 32182,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["realSpellName"] = "英勇氣概",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["event"] = "Conditions",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
			["version"] = 19,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["faction"] = {
					["single"] = "Alliance",
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_faction"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "老雷增强萨WA",
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["icon"] = true,
			["information"] = {
			},
			["displayIcon"] = "136012",
			["uid"] = "aoF2swghIli",
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "英勇（联盟",
			["width"] = 40,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 3,
			["config"] = {
			},
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
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
							["value"] = 0.8,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.45,
							["property"] = "alpha",
						}, -- [2]
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0.26274509803922, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [3]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["xOffset"] = 74.68,
		},
		["土爹"] = {
			["iconSource"] = -1,
			["wagoID"] = "nsp7fsMNg",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 85,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "",
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
						["type"] = "spell",
						["spellName"] = 2062,
						["subeventSuffix"] = "_CAST_START",
						["genericShowOn"] = "showAlways",
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = 2062,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["use_exact_spellName"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["event"] = "Conditions",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
			["version"] = 19,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_shadowXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 1,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fontSize"] = 12,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_round_type"] = "floor",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 30,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
					},
				},
				["spellknown"] = 2062,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "老雷增强萨WA",
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["icon"] = true,
			["information"] = {
			},
			["displayIcon"] = 136024,
			["uid"] = "lOY95fhNaJf",
			["zoom"] = 0,
			["cooldownTextDisabled"] = true,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "土爹",
			["width"] = 30,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["selfPoint"] = "CENTER",
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
						["trigger"] = 1,
						["variable"] = "show",
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
			["xOffset"] = 160,
		},
		["Council - Blizzard"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = true,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\BigWigs\\Media\\Sounds\\Alarm.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "41482",
						["auranames"] = {
							"41478", -- [1]
						},
						["duration"] = "3",
						["destUnit"] = "player",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_DAMAGE",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["use_eventtype"] = true,
						["use_aggro"] = true,
						["use_unit"] = true,
						["use_genericShowOn"] = true,
						["debuffType"] = "HELPFUL",
						["names"] = {
						},
						["type"] = "combatlog",
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["realSpellName"] = "Impale",
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["useName"] = true,
						["unit"] = "target",
						["group_countOperator"] = ">",
						["useAffected"] = true,
						["useExactSpellId"] = false,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "41482",
						["auranames"] = {
							"41478", -- [1]
						},
						["duration"] = "3",
						["destUnit"] = "player",
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["subeventSuffix"] = "_DAMAGE",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_eventtype"] = true,
						["useExactSpellId"] = false,
						["spellName"] = "Intangible Presence",
						["use_destName"] = false,
						["unit"] = "target",
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["type"] = "combatlog",
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["realSpellName"] = "Impale",
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_aggro"] = true,
						["useAffected"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "MOVE OUT",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "608",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135857,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Council - Blizzard",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "(0Wxs0G4ETv",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["英勇倒计时（联盟"] = {
			["iconSource"] = -1,
			["wagoID"] = "nsp7fsMNg",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 156.33,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "",
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
						["spellName"] = 2825,
						["useName"] = true,
						["auranames"] = {
							"32182", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = "Bloodlust",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["type"] = "aura2",
						["names"] = {
						},
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
			["version"] = 19,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["glow"] = true,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["faction"] = {
					["single"] = "Alliance",
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_faction"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "老雷增强萨WA",
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["icon"] = true,
			["information"] = {
			},
			["displayIcon"] = "136012",
			["uid"] = "aUyv1KLjQse",
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "英勇倒计时（联盟",
			["width"] = 40,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 4,
			["config"] = {
			},
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 74.68,
		},
		["嗜血倒计时"] = {
			["iconSource"] = -1,
			["wagoID"] = "nsp7fsMNg",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 156.33,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "",
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
						["spellName"] = 2825,
						["useName"] = true,
						["auranames"] = {
							"Bloodlust", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = "Bloodlust",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["type"] = "aura2",
						["names"] = {
						},
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
			["version"] = 19,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["glow"] = true,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["faction"] = {
					["single"] = "Horde",
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_faction"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "老雷增强萨WA",
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["icon"] = true,
			["information"] = {
			},
			["displayIcon"] = "136012",
			["uid"] = "Q)daFw21)7e",
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "嗜血倒计时",
			["width"] = 40,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 4,
			["config"] = {
			},
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 74.68,
		},
		["Shahraz - Fatal Attraction"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "{rt7} ATTRACTION ON %c {rt7}",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = true,
					["message_type"] = "SAY",
					["do_message"] = true,
					["sound"] = "Sound\\Interface\\RaidWarning.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = 41426,
						["auranames"] = {
							"41001", -- [1]
						},
						["use_genericShowOn"] = true,
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_DAMAGE",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_eventtype"] = true,
						["use_aggro"] = true,
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["duration"] = "40",
						["type"] = "aura2",
						["auraspellids"] = {
						},
						["unevent"] = "timed",
						["realSpellName"] = "Impale",
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["unit"] = "player",
						["group_countOperator"] = ">",
						["useAffected"] = true,
						["useExactSpellId"] = false,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "SPREAD",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "607",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136202,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Shahraz - Fatal Attraction",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = ")5Gsbuy6uhx",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["小喵-T6-BT-三脸-打断"] = {
			["iconSource"] = 0,
			["wagoID"] = "XnxeqBBKm",
			["xOffset"] = -161.666748046875,
			["preferToUpdate"] = false,
			["yOffset"] = 360.5558471679688,
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
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["unit"] = "player",
						["custom_type"] = "stateupdate",
						["custom"] = "function(allstates, event, ...)\n    local subevent = select(2,...)\n    local spell = select(12,...)\n    allstates[\"\"] = allstates[\"\"] or {\n        show = true,\n        changed = true,\n        progressType = \"static\",\n        autoHide = true,\n        group = 1,\n        \n    }\n    \n    if subevent == \"SPELL_CAST_START\" then \n        -- 41426\n        if spell == 41426 then \n            allstates[\"\"].group = allstates[\"\"].group + 1\n            if allstates[\"\"].group > 2 then \n                allstates[\"\"].group = 1    \n            end\n            allstates[\"\"].changed = true\n        end\n        \n        \n    end\n    \n    return true\nend\n\n\n",
						["spellIds"] = {
						},
						["names"] = {
						},
						["check"] = "event",
						["events"] = "CLEU:SPELL_CAST_START:SPELL_AURA_APPLIED",
						["subeventPrefix"] = "SPELL",
						["customVariables"] = "{\n    group = {\n        type = \"number\"\n    }\n}",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "stateupdate",
						["unit"] = "player",
						["event"] = "Health",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["auraspellids"] = {
							"41350", -- [1]
						},
						["spellIds"] = {
						},
						["events"] = "CLEU:SPELL_CAST_START:SPELL_AURA_APPLIED",
						["check"] = "event",
						["names"] = {
						},
						["useExactSpellId"] = true,
						["customVariables"] = "{\n    group = {\n        type = \"number\"\n    }\n}",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[2]\nend",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 51,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 1,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "下一棒: %group 断",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_text_format_group_format"] = "none",
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
					["text_font"] = "聊天",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_text_format_team_format"] = "none",
					["text_anchorYOffset"] = -5,
					["text_fontSize"] = 24,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
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
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 60,
			["load"] = {
				["use_encounterid"] = true,
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
				["encounterid"] = "606",
				["size"] = {
					["multi"] = {
					},
				},
			},
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "group",
						["value"] = "1",
						["op"] = "==",
					},
					["changes"] = {
						{
							["property"] = "sub.2.text_color",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "group",
						["op"] = "==",
						["value"] = "2",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.8431372549019608, -- [2]
								0.02745098039215686, -- [3]
								1, -- [4]
							},
							["property"] = "sub.2.text_color",
						}, -- [1]
					},
				}, -- [2]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/XnxeqBBKm/1",
			["cooldown"] = false,
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["zoom"] = 0.3,
			["semver"] = "1.0.0",
			["tocversion"] = 20504,
			["id"] = "小喵-T6-BT-三脸-打断",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["width"] = 60,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "KKh)Nq(IiQk",
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135739,
			["information"] = {
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
		["BT - Ice Trap"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "38976",
						["auranames"] = {
							"41086", -- [1]
							"40875", -- [2]
						},
						["duration"] = "8",
						["amount"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["use_eventtype"] = true,
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_aggro"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["unit"] = "player",
						["useExactSpellId"] = false,
						["use_genericShowOn"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["useName"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_status"] = false,
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_unit"] = true,
						["useAffected"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "ROOTED",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["use_zone"] = false,
				["encounterid"] = "2458",
				["zone"] = "Serpentshrine Cavern",
				["use_encounter"] = false,
				["use_zoneIds"] = true,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135848,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "BT - Ice Trap",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "eTo(MWl6fLD",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["BT - Shell of Life"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "38976",
						["auranames"] = {
							"41381", -- [1]
						},
						["duration"] = "8",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["unit"] = "target",
						["useExactSpellId"] = false,
						["group_countOperator"] = ">",
						["subeventPrefix"] = "SPELL_BUILDING",
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["type"] = "aura2",
						["unevent"] = "timed",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["useName"] = true,
						["use_eventtype"] = true,
						["use_unit"] = true,
						["useAffected"] = true,
						["use_aggro"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "ONLY MELEE",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
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
					["glowScale"] = 1,
					["glow"] = true,
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["use_zone"] = false,
				["encounterid"] = "2458",
				["zone"] = "Serpentshrine Cavern",
				["use_encounter"] = false,
				["use_zoneIds"] = true,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135981,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "BT - Shell of Life",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "VV9y9mQzHl5",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Naj'entus - Impaling Spine"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "{rt7} IMPALE ON %c ! FREE ME {rt7}",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = true,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "38976",
						["auranames"] = {
							"39837", -- [1]
						},
						["duration"] = "8",
						["amount"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["use_eventtype"] = true,
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_aggro"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["unit"] = "player",
						["useExactSpellId"] = false,
						["use_genericShowOn"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["useName"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_status"] = false,
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_unit"] = true,
						["useAffected"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "IMPALED",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Serpentshrine Cavern",
				["use_zoneIds"] = true,
				["encounterid"] = "601",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135855,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Naj'entus - Impaling Spine",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "e6jraNG2mUM",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["小喵-T6-BT-阿克蒙德-空气爆裂"] = {
			["controlledChildren"] = {
				"小喵-T6-BT-阿克蒙德-空气爆裂-点击提示", -- [1]
				"小喵-T6-BT-阿克蒙德-女神之泪", -- [2]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "NFPtZZFKQ",
			["xOffset"] = -49.75421142578125,
			["preferToUpdate"] = false,
			["yOffset"] = 211.666259765625,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/NFPtZZFKQ/8",
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
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 51,
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
			["version"] = 8,
			["subRegions"] = {
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
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "group",
			["borderSize"] = 2,
			["borderOffset"] = 4,
			["semver"] = "1.0.7",
			["tocversion"] = 20504,
			["id"] = "小喵-T6-BT-阿克蒙德-空气爆裂",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["borderInset"] = 1,
			["authorOptions"] = {
			},
			["uid"] = "1PsV(qJXBjZ",
			["conditions"] = {
			},
			["information"] = {
			},
			["selfPoint"] = "CENTER",
		},
		["Shahraz - Prismatic Aura"] = {
			["iconSource"] = -1,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "28433",
						["auranames"] = {
							"41292", -- [1]
							"41350", -- [2]
						},
						["duration"] = "40",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["event"] = "Combat Events",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = false,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["unit"] = "player",
						["useExactSpellId"] = true,
						["group_countOperator"] = ">",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
						["use_genericShowOn"] = true,
						["type"] = "aura2",
						["unevent"] = "timed",
						["auraspellids"] = {
							"40883", -- [1]
							"40891", -- [2]
							"40880", -- [3]
							"40897", -- [4]
							"40882", -- [5]
							"40896", -- [6]
						},
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = false,
						["use_eventtype"] = true,
						["use_unit"] = true,
						["useAffected"] = true,
						["use_aggro"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "+ ARCANE",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "- NATURE",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [3]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "+ NATURE",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [4]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "- ARCANE",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [5]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "+ HOLY",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [6]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "- SHADOW",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [7]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "+ SHADOW",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [8]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "- HOLY",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [9]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "+ FROST",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [10]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "- FIRE",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [11]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "+ FIRE",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [12]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "- FROST",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [13]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "607",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 134139,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Shahraz - Prismatic Aura",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "(c2BGif)r0k",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "spellId",
						["value"] = "40883",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.text_visible",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.3.text_visible",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "spellId",
						["value"] = "40891",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.5.text_visible",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.4.text_visible",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "spellId",
						["value"] = "40880",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.7.text_visible",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.6.text_visible",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "spellId",
						["value"] = "40897",
					},
					["linked"] = false,
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.9.text_visible",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.8.text_visible",
						}, -- [2]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "spellId",
						["value"] = "40882",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.11.text_visible",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.10.text_visible",
						}, -- [2]
					},
				}, -- [5]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "spellId",
						["value"] = "40896",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.13.text_visible",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.12.text_visible",
						}, -- [2]
					},
				}, -- [6]
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["MH - Anti Magic Shell"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "38976",
						["auranames"] = {
							"31662", -- [1]
						},
						["duration"] = "8",
						["amount"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["use_eventtype"] = true,
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_aggro"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["unit"] = "target",
						["useExactSpellId"] = false,
						["use_genericShowOn"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["useName"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_status"] = false,
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_unit"] = true,
						["useAffected"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "MAGIC ABSORB",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["use_zone"] = false,
				["encounterid"] = "2458",
				["zone"] = "Serpentshrine Cavern",
				["use_encounter"] = false,
				["use_zoneIds"] = true,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136120,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "MH - Anti Magic Shell",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "jC7E(al)2dV",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Naj'entus - Missing MS"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "",
						["auranames"] = {
							"39872", -- [1]
						},
						["duration"] = "8",
						["amount"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["use_eventtype"] = true,
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_aggro"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["unit"] = "target",
						["useExactSpellId"] = false,
						["use_genericShowOn"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["useName"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_status"] = false,
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["useAffected"] = true,
						["subeventSuffix"] = "_AURA_APPLIED",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "",
						["auranames"] = {
							"30330", -- [1]
							"39665", -- [2]
							"27065", -- [3]
						},
						["duration"] = "8",
						["amount"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["use_health"] = false,
						["subeventSuffix"] = "_AURA_APPLIED",
						["event"] = "Health",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_aggro"] = true,
						["use_eventtype"] = true,
						["useExactSpellId"] = false,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
						["use_genericShowOn"] = true,
						["useName"] = true,
						["unevent"] = "timed",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_npcId"] = false,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["type"] = "aura2",
						["matchesShowOn"] = "showOnMissing",
						["use_unit"] = true,
						["useAffected"] = true,
						["unit"] = "target",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "APPLY MS",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "DONT BREAK",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = false,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [3]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [4]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Serpentshrine Cavern",
				["use_zoneIds"] = true,
				["encounterid"] = "601",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 134197,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Naj'entus - Missing MS",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "vobsepTkmgu",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["兽人天赋"] = {
			["iconSource"] = -1,
			["wagoID"] = "nsp7fsMNg",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 156.33,
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
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 33697,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["realSpellName"] = "血性狂暴",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 19,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["text_color"] = {
						0, -- [1]
						1, -- [2]
						0.2156862745098039, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_fontType"] = "OUTLINE",
					["text_shadowYOffset"] = 0,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 15,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_precision"] = 1,
				}, -- [3]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["use_race"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["single"] = "Orc",
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "老雷增强萨WA",
			["regionType"] = "icon",
			["icon"] = true,
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
			["information"] = {
			},
			["cooldownTextDisabled"] = false,
			["uid"] = "WYUlrKkAdg2",
			["zoom"] = 0,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "兽人天赋",
			["frameStrata"] = 3,
			["alpha"] = 1,
			["width"] = 40,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = 114.68,
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
						{
							["value"] = 0.8,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "charges",
						["value"] = "1",
						["op"] = "==",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["url"] = "",
		},
		["风暴打击"] = {
			["iconSource"] = -1,
			["wagoID"] = "nsp7fsMNg",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 157.4228210449219,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["custom"] = "MuteSoundFile(569649)",
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 17364,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["realSpellName"] = "風暴打擊",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"风暴打击", -- [1]
						},
						["unit"] = "target",
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\nreturn t[1]\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 19,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["text_text_format_2.s_big_number_format"] = "AbbreviateNumbers",
					["text_text"] = "%2.s",
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
						0.5333333333333333, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_font"] = "聊天",
					["text_shadowYOffset"] = 0,
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_text_format_2.s_format"] = "none",
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
					["text_color"] = {
						0, -- [1]
						1, -- [2]
						0.2156862745098039, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_fontType"] = "OUTLINE",
					["text_shadowYOffset"] = 0,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 15,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_precision"] = 1,
				}, -- [4]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
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
			["parent"] = "老雷增强萨WA",
			["regionType"] = "icon",
			["icon"] = true,
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
			["information"] = {
			},
			["cooldownTextDisabled"] = false,
			["uid"] = "O0r3)C)SSg0",
			["zoom"] = 0,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "风暴打击",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 40,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = -44.68,
			["conditions"] = {
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
							["value"] = 0.8,
							["property"] = "alpha",
						}, -- [2]
						{
						}, -- [3]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "charges",
						["value"] = "1",
						["op"] = "==",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["url"] = "",
		},
		["Gorefiend - Shadow of Death"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "28433",
						["auranames"] = {
							"40251", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["event"] = "Combat Events",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = false,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_eventtype"] = true,
						["useAffected"] = true,
						["spellName"] = "Intangible Presence",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["use_npcId"] = true,
						["debuffType"] = "HARMFUL",
						["unevent"] = "timed",
						["type"] = "aura2",
						["use_threatUnit"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["duration"] = "40",
						["unit"] = "player",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["use_aggro"] = true,
						["use_unit"] = true,
						["fetchRaidMark"] = false,
						["useExactSpellId"] = false,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "YOU'RE DYING",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Serpentshrine Cavern",
				["use_zoneIds"] = true,
				["encounterid"] = "604",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135752,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Gorefiend - Shadow of Death",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "QREKKdswLsh",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
				{
					["check"] = {
						["op"] = "<",
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
								["value"] = "8",
							}, -- [2]
						},
						["value"] = "8",
						["variable"] = "expirationTime",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "%c dying in 8",
								["custom"] = "function() return UnitName(\"player\") end",
								["message_type"] = "YELL",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["op"] = "<",
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
								["value"] = "5",
							}, -- [2]
						},
						["value"] = "5",
						["variable"] = "expirationTime",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "%c dying in 5",
								["custom"] = "function() return UnitName(\"player\") end",
								["message_type"] = "YELL",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["op"] = "<",
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
								["value"] = "4",
							}, -- [2]
						},
						["value"] = "4",
						["variable"] = "expirationTime",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "%c dying in 4",
								["custom"] = "function() return UnitName(\"player\") end",
								["message_type"] = "YELL",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["op"] = "<",
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
								["value"] = "3",
							}, -- [2]
						},
						["value"] = "3",
						["variable"] = "expirationTime",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "%c dying in 3",
								["custom"] = "function() return UnitName(\"player\") end",
								["message_type"] = "YELL",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["op"] = "<",
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
								["value"] = "2",
							}, -- [2]
						},
						["value"] = "2",
						["variable"] = "expirationTime",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "%c dying in 2",
								["custom"] = "function() return UnitName(\"player\") end",
								["message_type"] = "YELL",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [5]
				{
					["check"] = {
						["op"] = "<",
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
								["value"] = "1",
							}, -- [2]
						},
						["value"] = "1",
						["variable"] = "expirationTime",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "%c dying in 1",
								["custom"] = "function() return UnitName(\"player\") end",
								["message_type"] = "YELL",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [6]
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Supremus - Volcanic Geyser"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "40265",
						["auranames"] = {
							"40265", -- [1]
						},
						["use_genericShowOn"] = true,
						["destUnit"] = "player",
						["amount"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_DAMAGE",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_aggro"] = true,
						["unit"] = "player",
						["useExactSpellId"] = false,
						["debuffType"] = "HARMFUL",
						["type"] = "combatlog",
						["useName"] = true,
						["duration"] = "3",
						["unevent"] = "timed",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"38215", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["useAffected"] = true,
						["use_eventtype"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "MOVE AWAY",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Serpentshrine Cavern",
				["use_zoneIds"] = true,
				["encounterid"] = "602",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135830,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Supremus - Volcanic Geyser",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "CNxpkdjGljP",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Shahraz - Fatal Right"] = {
			["iconSource"] = 0,
			["xOffset"] = 0,
			["displayText"] = "%p",
			["yOffset"] = 10,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["icon"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "BOTTOM",
			["desaturate"] = false,
			["rotation"] = 90,
			["font"] = "Friz Quadrata TT",
			["load"] = {
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_zoneIds"] = true,
				["encounterid"] = "607",
				["zoneIds"] = "339",
			},
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["shadowXOffset"] = 1,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\targeting-mark.tga",
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 20504,
			["alpha"] = 1,
			["uid"] = "KEJ9EtJgYWN",
			["displayIcon"] = 136202,
			["outline"] = "OUTLINE",
			["wagoID"] = "Y5J7NdyVH",
			["color"] = {
				1, -- [1]
				0.88235294117647, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["shadowYOffset"] = -1,
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["events"] = "RAID_TARGET_UPDATE",
						["custom"] = "function(states, event, ...)\n    local mark = GetRaidTargetIndex(\"player\")\n    if mark == 1 then\n        states[\"\"] = {\n            show = true,\n            changed = true,\n            progressType = \"static\",\n            \n        }\n        return true\n    else\n        if states[\"\"] then\n            states[\"\"].show = false\n            states[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n",
						["subeventPrefix"] = "SPELL",
						["check"] = "event",
						["custom_type"] = "stateupdate",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 51,
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
			["discrete_rotation"] = 0,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "RIGHT",
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
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "TOP",
					["text_visible"] = true,
					["text_anchorYOffset"] = -48,
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_shadowXOffset"] = 1,
				}, -- [2]
			},
			["height"] = 160,
			["rotate"] = true,
			["fontSize"] = 12,
			["mirror"] = false,
			["preferToUpdate"] = false,
			["information"] = {
			},
			["authorOptions"] = {
			},
			["displayText_format_p_time_dynamic"] = false,
			["displayText_format_p_time_precision"] = 1,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Right.ogg",
					["do_sound"] = true,
				},
				["init"] = {
					["custom"] = "aura_env.marks = {\n    [1] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_1\",\n    [2] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_2\",\n    [3] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_3\",\n    [4] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_4\",\n    [5] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_5\",\n    [6] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_6\",\n    [7] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_7\",\n    [8] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_8\",\n}",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["config"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["justify"] = "LEFT",
			["cooldownEdge"] = true,
			["id"] = "Shahraz - Fatal Right",
			["width"] = 160,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["inverse"] = false,
			["wordWrap"] = "WordWrap",
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["fixedWidth"] = 200,
		},
		["Reliquary - Spirit Shock"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = 41426,
						["auranames"] = {
							"41305", -- [1]
						},
						["use_genericShowOn"] = true,
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["event"] = "Cast",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_eventtype"] = true,
						["use_aggro"] = true,
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["duration"] = "40",
						["type"] = "unit",
						["auraspellids"] = {
						},
						["unevent"] = "timed",
						["realSpellName"] = "Impale",
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["unit"] = "target",
						["group_countOperator"] = ">",
						["useAffected"] = true,
						["useExactSpellId"] = false,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				{
					["trigger"] = {
						["useName"] = true,
						["auranames"] = {
							"41431", -- [1]
						},
						["unit"] = "target",
						["matchesShowOn"] = "showOnMissing",
						["type"] = "aura2",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "INTERRUPT",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "606",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135739,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Reliquary - Spirit Shock",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "WaaJAdD(LN0",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["2.6/2.6 同速 2"] = {
			["sparkWidth"] = 30,
			["iconSource"] = -1,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 188.111083984375,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["url"] = "",
			["backgroundColor"] = {
				0.31764705882353, -- [1]
				0.22745098039216, -- [2]
				0.16862745098039, -- [3]
				0.60000002384186, -- [4]
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
				0.8705882352941177, -- [1]
				0.1058823529411765, -- [2]
				0.1019607843137255, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 129,
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
				["ingroup"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["difficulty"] = {
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
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_combat"] = true,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["texture"] = "TC2 Default",
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 20501,
			["alpha"] = 1,
			["uid"] = "VV3wJYStUP3",
			["displayIcon"] = "132223",
			["borderBackdrop"] = "None",
			["parent"] = "老雷增强萨WA",
			["customText"] = "function()\n    local t1 =  WeakAuras.GetTriggerStateForTrigger(aura_env.id, 1)\n    local t3 =  WeakAuras.GetTriggerStateForTrigger(aura_env.id, 3)\n    if (t1 and t3  and t1[\"\"] and t3[\"\"]) then\n        if (t1[\"\"].expirationTime >= t3[\"\"].expirationTime) then\n            return  t1[\"\"].expirationTime - t3[\"\"].expirationTime\n        else \n            return  0\n        end\n    end\nend",
			["customTextUpdate"] = "update",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["event"] = "Swing Timer",
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["duration"] = "1",
						["use_unit"] = true,
						["spellIds"] = {
						},
						["use_hand"] = true,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["hand"] = "main",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["event"] = "Conditions",
						["duration"] = "1",
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["event"] = "Swing Timer",
						["unit"] = "player",
						["use_hand"] = true,
						["unevent"] = "auto",
						["use_unit"] = true,
						["hand"] = "off",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["hand"] = "off",
					},
				}, -- [3]
				{
					["trigger"] = {
						["use_amount"] = false,
						["duration"] = "3",
						["subeventPrefix"] = "SPELL",
						["spellName"] = "风怒攻击",
						["type"] = "combatlog",
						["unevent"] = "auto",
						["names"] = {
						},
						["use_unit"] = true,
						["event"] = "Combat Log",
						["use_sourceName"] = false,
						["subeventSuffix"] = "_DAMAGE",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["unit"] = "player",
						["use_destUnit"] = false,
						["sourceUnit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_DAMAGE",
						["spellName"] = "风怒攻击",
						["duration"] = "4",
						["event"] = "Combat Log",
						["unit"] = "player",
						["custom_type"] = "status",
						["use_spellName"] = true,
						["custom"] = "function()\n    local t1 =  WeakAuras.GetTriggerStateForTrigger(aura_env.id, 1)\n    local t3 =  WeakAuras.GetTriggerStateForTrigger(aura_env.id, 3)\n    if (t1 and t3 and t1[\"\"] and t3[\"\"]) then\n        return t3[\"\"].expirationTime - t1[\"\"].expirationTime >= 0\n    end\nend",
						["use_sourceUnit"] = true,
						["check"] = "update",
						["subeventPrefix"] = "SPELL",
						["sourceUnit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [5]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom"] = "function()\n    local t1 =  WeakAuras.GetTriggerStateForTrigger(aura_env.id, 1)\n    local t3 =  WeakAuras.GetTriggerStateForTrigger(aura_env.id, 3)\n    if (t1 and t3 and t1[\"\"] and t3[\"\"]) then\n        return t3[\"\"].expirationTime - t1[\"\"].expirationTime <= 0.5\n    end\nend",
						["custom_type"] = "status",
						["check"] = "update",
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [6]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom"] = "function()\n    local t1 =  WeakAuras.GetTriggerStateForTrigger(aura_env.id, 1)\n    local t3 =  WeakAuras.GetTriggerStateForTrigger(aura_env.id, 3)\n    if (t1 and t3 and t1[\"\"] and t3[\"\"]) then\n        return t3[\"\"].expirationTime - t1[\"\"].expirationTime <= -2.2\n    end\nend\n\n\n",
						["custom_type"] = "status",
						["check"] = "update",
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [7]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom"] = "function()\n    local t1 =  WeakAuras.GetTriggerStateForTrigger(aura_env.id, 1)\n    local t3 =  WeakAuras.GetTriggerStateForTrigger(aura_env.id, 3)\n    if (t1 and t3 and t1[\"\"] and t3[\"\"]) then\n        return t3[\"\"].expirationTime - t1[\"\"].expirationTime <= -1.6\n    end\nend",
						["custom_type"] = "status",
						["check"] = "update",
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [8]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom"] = "function()\n    local t1 =  WeakAuras.GetTriggerStateForTrigger(aura_env.id, 1)\n    local t3 =  WeakAuras.GetTriggerStateForTrigger(aura_env.id, 3)\n    if (t1 and t3 and t1[\"\"] and t3[\"\"]) then\n        return t3[\"\"].expirationTime - t1[\"\"].expirationTime <= -1.1\n    end\nend\n\n\n",
						["custom_type"] = "status",
						["check"] = "update",
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [9]
				{
					["trigger"] = {
						["useName"] = true,
						["auranames"] = {
							"乱舞", -- [1]
						},
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [10]
				{
					["trigger"] = {
						["useName"] = true,
						["auranames"] = {
							"嗜血", -- [1]
						},
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [11]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
			["useAdjustedMin"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["backdropInFront"] = false,
			["stickyDuration"] = false,
			["version"] = 15,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = " %p",
					["text_text_format_3.p_time_format"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["anchorXOffset"] = 0,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_t_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_t_format"] = "timed",
					["text_text_format_p_time_format"] = 0,
					["text_shadowXOffset"] = 1,
					["type"] = "subtext",
					["text_visible"] = true,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "伤害数字",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_shadowYOffset"] = -1,
					["text_text_format_3.p_time_dynamic_threshold"] = 60,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_text_format_3.p_format"] = "timed",
					["text_text_format_t_time_dynamic_threshold"] = 60,
					["text_text_format_t_time_precision"] = 1,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_3.p_time_precision"] = 1,
				}, -- [3]
				{
					["border_offset"] = 1,
					["border_size"] = 1,
					["border_anchor"] = "bar",
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "1 Pixel",
					["type"] = "subborder",
				}, -- [4]
				{
					["tick_blend_mode"] = "ADD",
					["tick_rotation"] = 0,
					["tick_xOffset"] = 0,
					["tick_desaturate"] = false,
					["automatic_length"] = true,
					["tick_thickness"] = 2,
					["tick_placement_mode"] = "AtValue",
					["use_texture"] = false,
					["tick_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["tick_yOffset"] = 0,
					["tick_texture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
					["tick_visible"] = true,
					["tick_placement"] = "1.1",
					["tick_length"] = 30,
					["tick_mirror"] = false,
					["type"] = "subtick",
				}, -- [5]
			},
			["height"] = 15,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = true,
			["useAdjustedMax"] = false,
			["spark"] = true,
			["config"] = {
			},
			["borderInFront"] = true,
			["xOffset"] = -1.6668701171875,
			["icon_side"] = "LEFT",
			["sparkOffsetX"] = 0,
			["sparkRotationMode"] = "AUTO",
			["sparkHeight"] = 50,
			["icon"] = true,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["sparkHidden"] = "NEVER",
			["semver"] = "1.0.14",
			["width"] = 300,
			["id"] = "2.6/2.6 同速 2",
			["backdropColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
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
								["trigger"] = 5,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 6,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["linked"] = false,
					["changes"] = {
						{
							["value"] = {
								0.2549019607843137, -- [1]
								1, -- [2]
								0.407843137254902, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 10,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 11,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = 5,
								["variable"] = "show",
								["value"] = 1,
							}, -- [3]
							{
								["trigger"] = 7,
								["variable"] = "show",
								["value"] = 1,
							}, -- [4]
						},
					},
					["linked"] = false,
					["changes"] = {
						{
							["value"] = {
								0.2549019607843137, -- [1]
								1, -- [2]
								0.407843137254902, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 10,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 11,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = 5,
								["variable"] = "show",
								["value"] = 0,
							}, -- [3]
							{
								["trigger"] = 8,
								["variable"] = "show",
								["value"] = 1,
							}, -- [4]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.2549019607843137, -- [1]
								1, -- [2]
								0.407843137254902, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 10,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 11,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
							{
								["trigger"] = 5,
								["variable"] = "show",
								["value"] = 0,
							}, -- [3]
							{
								["trigger"] = 8,
								["variable"] = "show",
								["value"] = 1,
							}, -- [4]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.2549019607843137, -- [1]
								1, -- [2]
								0.407843137254902, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 10,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 11,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
							{
								["trigger"] = 5,
								["variable"] = "show",
								["value"] = 1,
							}, -- [3]
							{
								["trigger"] = 9,
								["variable"] = "show",
								["value"] = 1,
							}, -- [4]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.2549019607843137, -- [1]
								1, -- [2]
								0.407843137254902, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [5]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["adjustedMax"] = "3",
		},
		["兽人天赋计时"] = {
			["iconSource"] = -1,
			["wagoID"] = "nsp7fsMNg",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 156.33,
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
						["spellName"] = 20554,
						["useName"] = true,
						["auranames"] = {
							"血性狂怒", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = "Berserking",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["type"] = "aura2",
						["names"] = {
						},
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 19,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["glow"] = true,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["use_race"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["single"] = "Orc",
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "老雷增强萨WA",
			["regionType"] = "icon",
			["icon"] = true,
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
			["information"] = {
			},
			["cooldownTextDisabled"] = false,
			["uid"] = "6QPrGJ2Pyz(",
			["zoom"] = 0,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "兽人天赋计时",
			["frameStrata"] = 4,
			["alpha"] = 1,
			["width"] = 40,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = 114.68,
			["conditions"] = {
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
							["value"] = 0.8,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "",
		},
		["Reliquary - Deaden"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "{rt7} DAEDEN ON %c {rt7}",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = true,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "28433",
						["auranames"] = {
							"41410", -- [1]
						},
						["duration"] = "40",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = false,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["unit"] = "player",
						["useExactSpellId"] = false,
						["group_countOperator"] = ">",
						["subeventPrefix"] = "RANGE",
						["debuffType"] = "HARMFUL",
						["use_genericShowOn"] = true,
						["type"] = "aura2",
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["use_eventtype"] = true,
						["use_unit"] = true,
						["useAffected"] = true,
						["use_aggro"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "+ DMG TAKEN",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "606",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136212,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Reliquary - Deaden",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "N3S6(hSlr)B",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Council - Auras"] = {
			["iconSource"] = -1,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Sound\\Interface\\RaidWarning.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = 41426,
						["auranames"] = {
							"41453", -- [1]
							"41452", -- [2]
						},
						["use_genericShowOn"] = true,
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["useExactSpellId"] = true,
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["useIgnoreName"] = false,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_eventtype"] = true,
						["spellName"] = "Intangible Presence",
						["unit"] = "target",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["duration"] = "40",
						["type"] = "aura2",
						["unevent"] = "timed",
						["auraspellids"] = {
							"41452", -- [1]
							"41453", -- [2]
						},
						["realSpellName"] = "Impale",
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = false,
						["subeventPrefix"] = "SPELL",
						["use_aggro"] = true,
						["useAffected"] = true,
						["subeventSuffix"] = "_DAMAGE",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "- SPELL DMG",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "- PHYSICAL DMG",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [3]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "608",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135872,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Council - Auras",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "EJaTJUKvSqD",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "spellId",
						["value"] = "41452",
					},
					["changes"] = {
						{
							["property"] = "sub.2.text_visible",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.3.text_visible",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Last_Player_Cast 2"] = {
			["iconSource"] = -1,
			["authorOptions"] = {
				{
					["type"] = "number",
					["useDesc"] = true,
					["max"] = 1000,
					["step"] = 0.05,
					["width"] = 1,
					["min"] = 0,
					["name"] = "Duration",
					["default"] = 7.5,
					["key"] = "duration",
					["desc"] = "Time before the icons dissapear",
				}, -- [1]
				{
					["subOptions"] = {
						{
							["type"] = "number",
							["useDesc"] = true,
							["max"] = 100000000000,
							["step"] = 0.05,
							["width"] = 1,
							["min"] = 0,
							["name"] = "Spell ID",
							["default"] = 0,
							["key"] = "id",
							["desc"] = "Spell ID of the spell to ignore",
						}, -- [1]
					},
					["hideReorder"] = false,
					["useDesc"] = false,
					["nameSource"] = 1,
					["width"] = 1,
					["useCollapse"] = true,
					["name"] = "Blacklist spells",
					["collapse"] = false,
					["type"] = "group",
					["limitType"] = "none",
					["groupType"] = "array",
					["key"] = "blacklist",
					["size"] = 10,
				}, -- [2]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/a3Jjx5ymT/5",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.lastCast = nil;\naura_env.blacklist = { --Yes Vardex, I know it's \"racially charged\"\n    [75] = true, --Auto Shot\n} \naura_env.spellcasts = 0;\n\n\nfor key,spell in pairs(aura_env.config.blacklist) do\n    aura_env.blacklist[spell.id] = true\nend\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["unevent"] = "timed",
						["custom_hide"] = "timed",
						["custom_type"] = "stateupdate",
						["event"] = "Chat Message",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["spellIds"] = {
						},
						["events"] = "UNIT_SPELLCAST_SENT, UNIT_SPELLCAST_SUCCEEDED:player",
						["custom"] = "function(allstates, event, ...)\n    local unit,_,spellID = ...\n    if unit == \"player\" then\n        if event == \"UNIT_SPELLCAST_SENT\" then \n            spellID = select(4, ...) \n            aura_env.lastCast = spellID\n        end\n        \n        if event == \"UNIT_SPELLCAST_SUCCEEDED\" \n        and spellID\n        and spellID == aura_env.lastCast  \n        and not aura_env.blacklist[spellID]\n        then\n            local name,_,icon = GetSpellInfo(spellID)\n            allstates[aura_env.spellcasts] = {\n                show = true,\n                changed = true,\n                name = name,\n                icon = icon,\n                caster = unit,\n                progressType = \"timed\",\n                duration = aura_env.config.duration,\n                expirationTime = GetTime() + aura_env.config.duration,\n                autoHide = true,\n            }\n            aura_env.spellcasts = aura_env.spellcasts+1\n            return true\n        end\n    end\n    \nend\n\n\n",
						["check"] = "event",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 5,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["text_visible"] = true,
				}, -- [2]
			},
			["height"] = 45,
			["load"] = {
				["use_never"] = false,
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
			["cooldownTextDisabled"] = false,
			["parent"] = "GCD History 2",
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["xOffset"] = 0,
			["uid"] = "wMBcYiddrpH",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.4",
			["tocversion"] = 20504,
			["id"] = "Last_Player_Cast 2",
			["width"] = 45,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = true,
			["config"] = {
				["duration"] = 20,
				["blacklist"] = {
				},
			},
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["colorR"] = 1,
					["scalex"] = 1,
					["alphaType"] = "straight",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function(progress, start, delta)\n    return start + (progress * delta)\nend\n",
					["use_alpha"] = true,
					["type"] = "custom",
					["easeType"] = "easeOut",
					["scaley"] = 1,
					["alpha"] = 0,
					["y"] = 0,
					["x"] = 0,
					["duration_type"] = "relative",
					["rotate"] = 0,
					["easeStrength"] = 1,
					["duration"] = "100%",
					["colorA"] = 1,
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
			["cooldown"] = false,
			["icon"] = true,
		},
		["Reliquary - Frenzy"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "28433",
						["auranames"] = {
							"41305", -- [1]
						},
						["duration"] = "40",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["event"] = "Combat Events",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = false,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["unit"] = "target",
						["useExactSpellId"] = false,
						["group_countOperator"] = ">",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["type"] = "aura2",
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["use_eventtype"] = true,
						["use_unit"] = true,
						["useAffected"] = true,
						["use_aggro"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "28433",
						["auranames"] = {
							"41305", -- [1]
						},
						["duration"] = "40",
						["hostility"] = "hostile",
						["amount"] = "0",
						["group_count"] = "0",
						["use_attackable"] = true,
						["group_countOperator"] = ">",
						["showClones"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["event"] = "Unit Characteristics",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = false,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["use_eventtype"] = true,
						["useExactSpellId"] = false,
						["spellName"] = "Intangible Presence",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["debuffType"] = "HELPFUL",
						["auraspellids"] = {
						},
						["type"] = "unit",
						["realSpellName"] = "Impale",
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["unit"] = "target",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["use_aggro"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["use_hostility"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "ENRAGE",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "606",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136224,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Reliquary - Frenzy",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "8qZ7Uy1KDcU",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["BT - Fixate"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "38976",
						["auranames"] = {
							"40892", -- [1]
						},
						["duration"] = "8",
						["amount"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["use_eventtype"] = true,
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_aggro"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["unit"] = "player",
						["useExactSpellId"] = false,
						["use_genericShowOn"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["useName"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_status"] = false,
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_unit"] = true,
						["useAffected"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "FIXATED",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["use_zone"] = false,
				["encounterid"] = "2458",
				["zone"] = "Serpentshrine Cavern",
				["use_encounter"] = false,
				["use_zoneIds"] = true,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136129,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "BT - Fixate",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "m4(P1TtSk07",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["BT - Death Coil"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "38976",
						["auranames"] = {
							"41070", -- [1]
						},
						["duration"] = "8",
						["amount"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["use_eventtype"] = true,
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_aggro"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["unit"] = "player",
						["useExactSpellId"] = false,
						["use_genericShowOn"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["useName"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_status"] = false,
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_unit"] = true,
						["useAffected"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "COILED",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["use_zone"] = false,
				["encounterid"] = "2458",
				["zone"] = "Serpentshrine Cavern",
				["use_encounter"] = false,
				["use_zoneIds"] = true,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136145,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "BT - Death Coil",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "Ic00nGcwClT",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Azgalor - Doom"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "{rt8} DOOM ON %c {rt8}",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = true,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "28433",
						["auranames"] = {
							"31347", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["event"] = "Combat Events",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = false,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_aggro"] = true,
						["use_unit"] = true,
						["group_countOperator"] = ">",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["debuffType"] = "HARMFUL",
						["unevent"] = "timed",
						["type"] = "aura2",
						["use_npcId"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_threatUnit"] = true,
						["unit"] = "player",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["use_eventtype"] = true,
						["duration"] = "40",
						["useAffected"] = true,
						["useExactSpellId"] = false,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "DOOM",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Serpentshrine Cavern",
				["use_zoneIds"] = true,
				["encounterid"] = "621",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 132094,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Azgalor - Doom",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "XowMLoOXzlk",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
				{
					["check"] = {
						["op"] = "<",
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
								["value"] = "3",
							}, -- [2]
						},
						["value"] = "3",
						["variable"] = "expirationTime",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "DYING IN 3",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["op"] = "<",
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
								["value"] = "2",
							}, -- [2]
						},
						["value"] = "2",
						["variable"] = "expirationTime",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "DYING IN 2",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["op"] = "<",
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
								["value"] = "1",
							}, -- [2]
						},
						["value"] = "1",
						["variable"] = "expirationTime",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "DYING IN 1",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Illidan - Demon Within"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = true,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\BigWigs\\Media\\Sounds\\Alarm.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "40611",
						["auranames"] = {
							"41083", -- [1]
						},
						["duration"] = "3",
						["destUnit"] = "player",
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["useExactSpellId"] = false,
						["event"] = "Chat Message",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "Behold the power... of the demon within",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["useIgnoreName"] = false,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_aggro"] = true,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_eventtype"] = true,
						["spellName"] = "",
						["use_status"] = false,
						["use_genericShowOn"] = true,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
							"41917", -- [1]
						},
						["useName"] = true,
						["realSpellName"] = "Impale",
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["unit"] = "player",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["type"] = "event",
						["use_message"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["subeventSuffix"] = "_DAMAGE",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "MOVE OUT",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "609",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136172,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Illidan - Demon Within",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "eeUqnsWX1Sp",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Illidan - Shadow Demon"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "{rt7} DEMONS ON %c {rt7}",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = true,
					["sound"] = "Sound\\Interface\\RaidWarning.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = 40832,
						["auranames"] = {
							"41083", -- [1]
						},
						["use_genericShowOn"] = true,
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["useExactSpellId"] = false,
						["event"] = "Cast",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["useIgnoreName"] = false,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_eventtype"] = true,
						["spellName"] = "Intangible Presence",
						["unit"] = "player",
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["duration"] = "40",
						["type"] = "aura2",
						["unevent"] = "timed",
						["auraspellids"] = {
							"41917", -- [1]
						},
						["realSpellName"] = "Impale",
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["use_aggro"] = true,
						["useAffected"] = true,
						["subeventSuffix"] = "_DAMAGE",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "STUNNED",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "609",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136185,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Illidan - Shadow Demon",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "llx)CBwqO)H",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Shaman: Wep Enchant Timers 2"] = {
			["iconSource"] = -1,
			["wagoID"] = "zIewDveCx",
			["authorOptions"] = {
				{
					["text"] = "|cFF00FFFFGENERAL|r",
					["type"] = "header",
					["useName"] = true,
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "toggle",
					["default"] = true,
					["key"] = "missingMH",
					["name"] = "Display missing main-hand",
					["useDesc"] = false,
					["width"] = 1,
				}, -- [2]
				{
					["type"] = "toggle",
					["default"] = true,
					["key"] = "missingOH",
					["name"] = "Display missing off-hand",
					["useDesc"] = false,
					["width"] = 1,
				}, -- [3]
				{
					["text"] = "|cFF00FFFFPOSITION SETTINGS|r",
					["type"] = "header",
					["useName"] = true,
					["width"] = 2,
				}, -- [4]
				{
					["type"] = "select",
					["default"] = 2,
					["values"] = {
						"LEFT", -- [1]
						"RIGHT", -- [2]
						"TOP", -- [3]
						"BOTTOM", -- [4]
					},
					["name"] = "Icon growth direction",
					["key"] = "direction",
					["width"] = 1,
				}, -- [5]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["width"] = 2,
				}, -- [6]
				{
					["softMin"] = 0,
					["type"] = "range",
					["bigStep"] = 1,
					["max"] = 200,
					["step"] = 1,
					["width"] = 2,
					["min"] = 0,
					["key"] = "spacing",
					["softMax"] = 200,
					["default"] = 10,
					["name"] = "Icon spacing (in pixels)",
				}, -- [7]
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then\n        return aura_env.state.stacks\n    elseif aura_env.state and aura_env.state.stacks then\n        local stacks = aura_env.state.stacks > 0 and aura_env.state.stacks or \"\"\n        return stacks\n    end\nend\n\n\n",
			["yOffset"] = 157,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/zIewDveCx/10",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["use_weapon"] = true,
						["weapon"] = "main",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["type"] = "custom",
						["useExactSpellId"] = true,
						["custom_type"] = "stateupdate",
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Weapon Enchant",
						["spellIds"] = {
						},
						["auraspellids"] = {
							"6829", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["custom"] = "function(states, event, ...)\n    if event == \"OPTIONS\" then\n        states[\"\"] = {\n            name = \"Instant Poison\",\n            slot = \"main-hand\",\n            icon = 132273,\n            stacks = 55,\n            missing = false,\n            duration = 900,\n            expirationTime = GetTime() + 900,\n            index = 1,\n            progressType = \"timed\",\n            autoHide = true,\n            changed = true,\n            show = true,\n        } \n        \n        states[\"\"] = {\n            name = \"Wound Poison\",\n            slot = \"main-hand\",\n            icon = 134197,\n            stacks = 105,\n            missing = false,\n            duration = 1200,\n            expirationTime = GetTime() + 1200,\n            index = 2,\n            progressType = \"timed\",\n            autoHide = true,\n            changed = true,\n            show = true,\n        }\n        \n        states[\"OH\"] = {\n            name = \"Deadly Poison\",\n            slot = \"off-hand\",\n            icon = 132290,\n            stacks = 105,\n            missing = false,\n            duration = 1200,\n            expirationTime = GetTime() + 1200,\n            index = 2,\n            progressType = \"timed\",\n            autoHide = true,\n            changed = true,\n            show = true,\n        }\n        \n        states[\"OH\"] = {\n            name = \"Wound Poison\",\n            slot = \"off-hand\",\n            icon = 134197,\n            stacks = 105,\n            missing = false,\n            duration = 1200,\n            expirationTime = GetTime() + 1200,\n            index = 2,\n            progressType = \"timed\",\n            autoHide = true,\n            changed = true,\n            show = true,\n        }\n        aura_env.flag = true\n    elseif event == \"PLAYER_ENTERING_WORLD\" or event == \"UNIT_INVENTORY_CHANGED\" then --doesn't return valid durations without C_Timer\n        C_Timer.After(0.5, function()\n                WeakAuras.ScanEvents(\"ITEM_ENCH\")\n            end\n        )\n    elseif event == \"ITEM_ENCH\" and not WeakAuras.IsOptionsOpen() then\n        for k, v in pairs(states) do\n            v.show = false\n            v.changed = true\n        end\n        \n        local mh = GetInventoryItemLink(\"player\", 16)\n        local oh = GetInventoryItemLink(\"player\", 17)\n        local itemType = oh and select(9, GetItemInfo(oh)) or false\n        local isWeapon = itemType and (itemType == \"INVTYPE_WEAPON\" or itemType == \"INVTYPE_WEAPONOFFHAND\")\n        \n        local hasMHEnchant, MHExpiration, MHCharges, MHEnchantID, hasOHEnchant, OHExpiration, OHCharges, OHEnchantID = GetWeaponEnchantInfo()\n        -- main-hand\n        if hasMHEnchant then\n            local name = \"main-hand\"\n            local icon = 136235\n            local stacks = MHCharges or 0\n            \n            if MHEnchantID and aura_env.list[MHEnchantID] then\n                name = aura_env.list[MHEnchantID][1]\n                icon = aura_env.list[MHEnchantID][2]\n            elseif mh then\n                icon = select(10, GetItemInfo(mh))\n            end\n            \n            local duration = MHExpiration / 1000\n            local expirationTime = GetTime() + duration\n            \n            states[\"MH\"] = {\n                name = name,\n                slot = \"main-hand\",\n                icon = icon,\n                stacks = stacks,\n                missing = false,\n                duration = duration,\n                expirationTime = expirationTime,\n                index = 1,\n                progressType = \"timed\",\n                autoHide = true,\n                changed = true,\n                show = true,\n            } \n        elseif aura_env.config.missingMH and mh then\n            local icon = select(10, GetItemInfo(mh))\n            states[\"MH\"] = {\n                name = \"main-hand\",\n                slot = \"missing MH\",\n                icon = icon,\n                stacks = 0,\n                index = 1,\n                missing = true,\n                autoHide = false,\n                changed = true,\n                show = true,\n            } \n        end\n        \n        -- off-hand\n        if hasOHEnchant then\n            local name = \"off-hand\"\n            local icon = 136235\n            local stacks = OHCharges or 0\n            \n            if OHEnchantID and aura_env.list[OHEnchantID] then\n                name = aura_env.list[OHEnchantID][1]\n                icon = aura_env.list[OHEnchantID][2]\n            elseif oh then\n                icon = select(10, GetItemInfo(oh))\n            end\n            \n            local duration = OHExpiration / 1000\n            local expirationTime = GetTime() + duration\n            \n            states[\"OH\"] = {\n                name = name,\n                slot = \"off-hand\",\n                icon = icon,\n                stacks = stacks,\n                missing = false,\n                duration = duration,\n                expirationTime = expirationTime,\n                index = 2,\n                progressType = \"timed\",\n                autoHide = true,\n                changed = true,\n                show = true,\n            }\n        elseif aura_env.config.missingOH and oh and isWeapon then\n            local icon = select(10, GetItemInfo(oh))\n            states[\"OH\"] = {\n                name = \"off-hand\",\n                slot = \"missing OH\",\n                icon = icon,\n                stacks = 0,\n                index = 2,\n                missing = true,\n                autoHide = false,\n                changed = true,\n                show = true,\n            } \n        end\n        \n        aura_env.flag = true\n        return true\n    end\nend",
						["events"] = "PLAYER_ENTERING_WORLD UNIT_INVENTORY_CHANGED:player ITEM_ENCH",
						["check"] = "event",
						["names"] = {
						},
						["use_unit"] = true,
						["customVariables"] = "{\n    stacks = {\n        display = \"stacks left\",\n        type = \"number\",\n    },\n    missing = {\n        display = \"missing enchant\",\n        type = \"bool\",\n    },\n    duration = {\n        display = \"duration (in seconds)\",\n        type = \"number\",\n    },\n}",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["colorR"] = 1,
					["scalex"] = 1,
					["alphaType"] = "custom",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function(progress, start, delta)\n    if aura_env.flag then\n        aura_env.flag = false\n        aura_env.sortAndOffset()\n    end\n    return start\nend",
					["use_alpha"] = true,
					["type"] = "custom",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["y"] = 0,
					["x"] = 0,
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["rotate"] = 0,
					["duration"] = "1",
					["colorA"] = 1,
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 10,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "CENTER",
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
					["text_font"] = "PT Sans Narrow",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "TOP",
					["text_anchorYOffset"] = -4,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%slot",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "TOP",
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
					["text_font"] = "PT Sans Narrow",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_text_format_slot_format"] = "none",
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [3]
				{
					["text_text_format_p_time_format"] = 0,
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
					["text_shadowXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["anchorXOffset"] = 0,
					["text_anchorYOffset"] = -10,
					["text_text_format_p_format"] = "timed",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_precision"] = 1,
					["text_visible"] = true,
					["text_fontSize"] = 14,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_shadowYOffset"] = 0,
				}, -- [4]
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
					["useGlowColor"] = true,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [5]
			},
			["height"] = 40,
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["single"] = 59,
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["use_spellknown"] = false,
				["zoneIds"] = "",
				["level_operator"] = ">=",
				["spec"] = {
					["multi"] = {
					},
				},
				["level"] = "60",
				["use_never"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["config"] = {
				["missingOH"] = true,
				["direction"] = 4,
				["missingMH"] = true,
				["spacing"] = 30,
			},
			["xOffset"] = -126,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "C_Timer.After(1, function()\n        WeakAuras.ScanEvents(\"ITEM_ENCH\") \n    end\n)\n\n\naura_env.list = {\n    [1] = {\"Rockbiter\", 136086, 300},\n    [2] = {\"Frostbrand\", 135847, 300},\n    [3] = {\"Flametongue\", 135814, 300},\n    [4] = {\"Flametongue\", 135814, 300},\n    [5] = {\"Flametongue\", 135814, 300},\n    [6] = {\"Rockbiter\", 136086, 300},\n    [7] = {\"Deadly Poison\", 132290, 1800},\n    [8] = {\"Deadly Poison\", 132290, 1800},\n    [12] = {\"Frostbrand\", 135847, 300},\n    [13] = {\"Sharpened\", 135249, 1800}, --[+3 Damage]\n    [14] = {\"Sharpened\", 135250, 1800}, --[+4 Damage]\n    [19] = {\"Weighted\", 135255, 1800}, --[+2 Damage]\n    [20] = {\"Weighted\", 135256, 1800}, --[+3 Damage]\n    [21] = {\"Weighted\", 135257, 1800}, --[+4 Damage]\n    [22] = {\"Crippling Poison\", 132274, 1800},\n    [23] = {\"Mind-Numbing Poison\", 136066, 1800},\n    [25] = {\"Shadow Oil\", 134803, 1800},\n    [26] = {\"Frost Oil\", 134800, 1800},\n    [29] = {\"Rockbiter\", 136086, 300},\n    [35] = {\"Mind-numbing Poison\", 136066, 1800},\n    [39] = {\"Sharpened\", 135248, 1800}, --[+1 Damage] ????\n    [40] = {\"Sharpened\", 135248, 1800}, --[+2 Damage]\n    [42] = {\"Instant Poison\", 132273, 1800},\n    [124] = {\"Flametongue Totem\", 135814, 120},\n    [283] = {\"Windfury\", 136018, 300},\n    [284] = {\"Windfury\", 136018, 300},\n    [285] = {\"Flametongue Totem\", 135814, 120},\n    [323] = {\"Instant Poison\", 132273, 1800},\n    [324] = {\"Instant Poison\", 132273, 1800},\n    [325] = {\"Instant Poison\", 132273, 1800},\n    [483] = {\"Sharpened\", 135251, 1800}, --[+6 Damage]\n    [484] = {\"Weighted\", 135258, 1800}, --[+6 Damage]\n    [503] = {\"Rockbiter\", 136086, 300},\n    [504] = {\"Rockbiter\", 136086, 300},\n    [523] = {\"Flametongue\", 135814, 300},\n    [524] = {\"Frostbrand\", 135847, 300},\n    [525] = {\"Windfury\", 136018, 300},\n    [543] = {\"Flametongue Totem\", 135814, 120},\n    [563] = {\"Windfury Totem\", 136114, 120},\n    [564] = {\"Windfury Totem\", 136114, 120},\n    [603] = {\"Crippling Poison\", 134799, 1800},\n    [623] = {\"Instant Poison\", 132273, 1800},\n    [624] = {\"Instant Poison\", 132273, 1800},\n    [625] = {\"Instant Poison\", 132273, 1800},\n    [626] = {\"Deadly Poison\", 132290, 1800},\n    [627] = {\"Deadly Poison\", 132290, 1800},\n    [643] = {\"Mind-Numbing Poison\", 136066, 1800},\n    [683] = {\"Rockbiter\", 136086, 300},\n    [703] = {\"Wound Poison\", 132274, 1800},\n    [704] = {\"Wound Poison\", 132274, 1800},\n    [705] = {\"Wound Poison\", 132274, 1800},\n    [706] = {\"Wound Poison\", 132274, 1800},\n    [1643] = {\"Sharpened\", 135252, 1800}, --[+8 Damage]\n    [1663] = {\"Rockbiter\", 136086, 300},\n    [1664] = {\"Rockbiter\", 136086, 300},\n    [1665] = {\"Flametongue\", 135814, 300},\n    [1666] = {\"Flametongue\", 135814, 300},\n    [1667] = {\"Frostbrand\", 135847, 300},\n    [1668] = {\"Frostbrand\", 135847, 300},\n    [1669] = {\"Windfury\", 136018, 300},\n    [1683] = {\"Flametongue Totem\", 135814, 120},\n    [1703] = {\"Weighted\", 135259, 1800}, --[+8 Damage]\n    [1783] = {\"Windfury Totem\", 136114, 120},\n    [2623] = {\"Minor Wizard Oil\", 134711, 1800},\n    [2624] = {\"Minor Mana Oil\", 134878, 1800},\n    [2625] = {\"Lesser Mana Oil\", 134879, 1800},\n    [2626] = {\"Lesser Wizard Oil\", 134725, 1800},\n    [2627] = {\"Wizard Oil\", 134726, 1800},\n    [2628] = {\"Brilliant Wizard Oil\", 134727, 1800},\n    [2629] = {\"Brilliant Mana Oil\", 134722, 1800},\n    [2630] = {\"Deadly Poison\", 132290, 1800},\n    [2632] = {\"Rockbiter\", 136086, 300},\n    [2633] = {\"Rockbiter\", 136086, 300},\n    [2634] = {\"Flametongue Totem\", 135814, 120},\n    [2635] = {\"Frostbrand\", 135847, 300},\n    [2636] = {\"Windfury\", 136018, 300},\n    [2637] = {\"Flametongue Totem\", 135814, 120},\n    [2638] = {\"Windfury Totem\", 136114, 120},\n    [2639] = {\"Windfury Totem\", 136114, 120},\n    [2641] = {\"Instant Poison\", 132273, 1800},\n    [2642] = {\"Deadly Poison\", 132290, 1800}, --6\n    [2643] = {\"Deadly Poison\", 132290, 1800}, --7\n    [2644] = {\"Wound Poison\", 132274, 1800},\n}\n\naura_env.sortAndOffset = function()\n    local spacing = aura_env.config.spacing or 2\n    local count = WeakAuras.IsOptionsOpen() and 1 or 0\n    local t = {}\n    \n    for k, v in pairs(WeakAuras.clones[aura_env.id]) do\n        if v.state and v.state.slot and v.state.index then\n            table.insert(t, v)\n        end\n    end\n    table.sort(t, function(a, b) return a.state.index < b.state.index end)\n    \n    for i, region in pairs(t) do\n        if region.toShow then\n            local xOffset\n            local yOffset\n            \n            \n            if aura_env.config.direction == 1 then\n                xOffset = 0 - (region.width + spacing) * count\n                yOffset = 0\n            elseif aura_env.config.direction == 2 then\n                xOffset = 0 + (region.width + spacing) * count\n                yOffset = 0\n            elseif aura_env.config.direction == 3 then\n                xOffset = 0\n                yOffset = 0 + (region.width + spacing) * count\n            elseif aura_env.config.direction == 4 then\n                xOffset = 0\n                yOffset = 0 - (region.width + spacing) * count\n            end\n            \n            region:SetAnchor(\"CENTER\" , WeakAuras.regions[aura_env.id].region, \"CENTER\")\n            region:SetOffset(xOffset, yOffset)\n            \n            count = count + 1\n        end\n    end\nend\n\n\n",
					["do_custom"] = true,
				},
			},
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["cooldown"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "missing",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.5.glow",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.5.useGlowColor",
						}, -- [2]
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "sub.5.glowColor",
						}, -- [3]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["op"] = "<=",
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<=",
								["value"] = "120",
								["variable"] = "duration",
							}, -- [1]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 1,
										["op"] = "<=",
										["value"] = "6",
										["variable"] = "stacks",
									}, -- [1]
									{
										["trigger"] = 1,
										["op"] = ">=",
										["value"] = "1",
										["variable"] = "stacks",
									}, -- [2]
								},
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.5.glow",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.5.useGlowColor",
						}, -- [2]
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "sub.5.glowColor",
						}, -- [3]
					},
				}, -- [2]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownTextDisabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 20501,
			["id"] = "Shaman: Wep Enchant Timers 2",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 40,
			["semver"] = "2.0.0",
			["uid"] = "yxBD(YESHck",
			["inverse"] = false,
			["parent"] = "老雷增强萨WA",
			["displayIcon"] = 136244,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["cooldownEdge"] = false,
		},
		["副手"] = {
			["sparkWidth"] = 10,
			["iconSource"] = -1,
			["authorOptions"] = {
			},
			["adjustedMax"] = "3",
			["yOffset"] = 114.2884521484375,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["url"] = "",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
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
				0.2235294117647059, -- [2]
				0.03137254901960784, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["single"] = 52,
					["multi"] = {
						[52] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["race"] = {
					["multi"] = {
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
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["texture"] = "0101",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = true,
			["tocversion"] = 20502,
			["alpha"] = 1,
			["uid"] = "bbt5YfxIo4(",
			["displayIcon"] = 132223,
			["borderBackdrop"] = "None",
			["parent"] = "老雷增强萨WA",
			["sparkRotationMode"] = "AUTO",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["event"] = "Swing Timer",
						["use_unit"] = true,
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["spellIds"] = {
						},
						["use_hand"] = true,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["hand"] = "off",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["event"] = "Conditions",
						["use_unit"] = true,
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["backdropInFront"] = false,
			["stickyDuration"] = false,
			["version"] = 17,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
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
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "聊天",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_LEFT",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%n",
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
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_text_format_n_format"] = "none",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
				{
					["tick_blend_mode"] = "ADD",
					["tick_rotation"] = 0,
					["tick_xOffset"] = 0,
					["tick_desaturate"] = false,
					["automatic_length"] = true,
					["tick_thickness"] = 2,
					["type"] = "subtick",
					["use_texture"] = false,
					["tick_placement_mode"] = "AtValue",
					["tick_texture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
					["tick_visible"] = true,
					["tick_placement"] = "1.1",
					["tick_yOffset"] = 0,
					["tick_length"] = 30,
					["tick_mirror"] = false,
					["tick_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
				}, -- [5]
				{
					["tick_blend_mode"] = "ADD",
					["tick_rotation"] = 0,
					["tick_xOffset"] = 0,
					["tick_desaturate"] = false,
					["automatic_length"] = true,
					["tick_thickness"] = 2,
					["type"] = "subtick",
					["use_texture"] = false,
					["tick_placement_mode"] = "AtValue",
					["tick_texture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
					["tick_visible"] = true,
					["tick_placement"] = "0.6",
					["tick_yOffset"] = 0,
					["tick_length"] = 30,
					["tick_mirror"] = false,
					["tick_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
				}, -- [6]
			},
			["height"] = 15,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["anchorFrameFrame"] = "WeakAuras:Windfury ICD",
			["sparkOffsetX"] = 0,
			["borderInFront"] = true,
			["xOffset"] = 0,
			["icon_side"] = "LEFT",
			["icon"] = true,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["anchorFrameParent"] = true,
			["sparkHeight"] = 30,
			["useAdjustededMax"] = true,
			["zoom"] = 0,
			["semver"] = "1.0.16",
			["width"] = 300,
			["id"] = "副手",
			["config"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["sparkHidden"] = "NEVER",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "0.55",
					},
					["changes"] = {
						{
							["value"] = {
								0.7607843137254902, -- [1]
								0, -- [2]
								0.00392156862745098, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
						{
							["property"] = "sparkColor",
						}, -- [2]
					},
				}, -- [1]
			},
			["information"] = {
			},
			["spark"] = false,
		},
		["Archimonde - Air Burst Cast"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "32014",
						["auranames"] = {
							"32014", -- [1]
						},
						["duration"] = "2",
						["destUnit"] = "player",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "",
						["showClones"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cast",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["use_eventtype"] = true,
						["use_aggro"] = true,
						["use_unit"] = true,
						["use_genericShowOn"] = true,
						["debuffType"] = "HARMFUL",
						["names"] = {
						},
						["type"] = "unit",
						["unevent"] = "timed",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["realSpellName"] = "Impale",
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["useName"] = true,
						["unit"] = "target",
						["group_countOperator"] = ">",
						["useAffected"] = true,
						["useExactSpellId"] = false,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "BURST ON %1.destName",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["text_text_format_1.destUnit_format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "USE TEAR",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = false,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [3]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
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
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [4]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Serpentshrine Cavern",
				["use_zoneIds"] = true,
				["encounterid"] = "622",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136116,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Archimonde - Air Burst Cast",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "MPANdzGFVAL",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "destUnit",
						["value"] = "player",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "{rt7} AIR BURST ON ME {rt7}",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["水盾/电盾"] = {
			["iconSource"] = -1,
			["wagoID"] = "nsp7fsMNg",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 157.42,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "",
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
							"Water Shield", -- [1]
							"Lightning Shield", -- [2]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["auraspellids"] = {
							"33736", -- [1]
							"325", -- [2]
							"905", -- [3]
							"945", -- [4]
							"8134", -- [5]
							"10431", -- [6]
							"10432", -- [7]
							"25469", -- [8]
							"25472", -- [9]
							"324", -- [10]
						},
						["spellName"] = 8177,
						["names"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["matchesShowOn"] = "showAlways",
						["realSpellName"] = "Grounding Totem",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["useName"] = false,
						["useExactSpellId"] = true,
						["use_track"] = true,
						["subeventSuffix"] = "_CAST_START",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "spell",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellName"] = 24398,
						["use_exact_spellName"] = true,
						["event"] = "Spell Known",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
			["version"] = 19,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_shadowXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 1,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fontSize"] = 14,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_round_type"] = "floor",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
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
			["parent"] = "老雷增强萨WA",
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["icon"] = true,
			["information"] = {
			},
			["displayIcon"] = 132315,
			["uid"] = "PVxS0nT4DLi",
			["zoom"] = 0,
			["cooldownTextDisabled"] = true,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "水盾/电盾",
			["width"] = 40,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["selfPoint"] = "CENTER",
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
						{
							["value"] = 0.45,
							["property"] = "alpha",
						}, -- [2]
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
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 1,
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
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\WaterDrop.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "buffed",
								["value"] = 0,
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
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["xOffset"] = -84.68,
		},
		["BT - Shell of Pain"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "38976",
						["auranames"] = {
							"41371", -- [1]
						},
						["duration"] = "8",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["unit"] = "target",
						["useExactSpellId"] = false,
						["group_countOperator"] = ">",
						["subeventPrefix"] = "SPELL_BUILDING",
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["type"] = "aura2",
						["unevent"] = "timed",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["useName"] = true,
						["use_eventtype"] = true,
						["use_unit"] = true,
						["useAffected"] = true,
						["use_aggro"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "STOP ATTACKING",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
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
					["glowScale"] = 1,
					["glow"] = true,
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["use_zone"] = false,
				["encounterid"] = "2458",
				["zone"] = "Serpentshrine Cavern",
				["use_encounter"] = false,
				["use_zoneIds"] = true,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136121,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "BT - Shell of Pain",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "4UqZT9xGqcW",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Naj'entus - Tidal Shield"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "",
						["auranames"] = {
							"39872", -- [1]
						},
						["duration"] = "8",
						["amount"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["use_eventtype"] = true,
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_aggro"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["unit"] = "target",
						["useExactSpellId"] = false,
						["use_genericShowOn"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["useName"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_status"] = false,
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["useAffected"] = true,
						["subeventSuffix"] = "_AURA_APPLIED",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "",
						["auranames"] = {
						},
						["use_genericShowOn"] = true,
						["amount"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["use_health"] = false,
						["subeventSuffix"] = "_AURA_APPLIED",
						["event"] = "Health",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["use_eventtype"] = true,
						["useExactSpellId"] = false,
						["unit"] = "group",
						["debuffType"] = "HELPFUL",
						["names"] = {
						},
						["useName"] = true,
						["duration"] = "8",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_npcId"] = false,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["unevent"] = "timed",
						["type"] = "unit",
						["use_unit"] = true,
						["useAffected"] = true,
						["use_aggro"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "BREAK SHIELD",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "DONT BREAK",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = false,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [3]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [4]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Serpentshrine Cavern",
				["use_zoneIds"] = true,
				["encounterid"] = "601",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136017,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Naj'entus - Tidal Shield",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "AfsHa8VNPYj",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<=",
						["variable"] = "health",
						["value"] = "8500",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.text_visible",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								0.062745098039216, -- [2]
								0.074509803921569, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [2]
						{
							["property"] = "sub.2.text_visible",
						}, -- [3]
						{
							["property"] = "sub.4.glow",
						}, -- [4]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["火焰新星图腾监控"] = {
			["iconSource"] = -1,
			["wagoID"] = "nsp7fsMNg",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 86,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "",
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
						["track"] = "auto",
						["type"] = "spell",
						["spellName"] = 1535,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["names"] = {
						},
						["realSpellName"] = 1535,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_exact_spellName"] = true,
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["event"] = "Conditions",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
			["version"] = 19,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["text_color"] = {
						0, -- [1]
						1, -- [2]
						0.2156862745098039, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_fontType"] = "OUTLINE",
					["text_shadowYOffset"] = 0,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 15,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_precision"] = 1,
				}, -- [3]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
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
			["parent"] = "老雷增强萨WA",
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["icon"] = true,
			["information"] = {
			},
			["displayIcon"] = 135824,
			["uid"] = "ejLsBJRS56g",
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "火焰新星图腾监控",
			["width"] = 40,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 73.09100341796875,
		},
		["巨魔天赋计时"] = {
			["iconSource"] = -1,
			["wagoID"] = "nsp7fsMNg",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 156.33,
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
						["spellName"] = 20554,
						["useName"] = true,
						["auranames"] = {
							"狂暴", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = "Berserking",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["type"] = "aura2",
						["names"] = {
						},
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 19,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["glow"] = true,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["use_race"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["single"] = "Troll",
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "老雷增强萨WA",
			["regionType"] = "icon",
			["icon"] = true,
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
			["information"] = {
			},
			["cooldownTextDisabled"] = false,
			["uid"] = "R4TkgA)l6ie",
			["zoom"] = 0,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "巨魔天赋计时",
			["frameStrata"] = 4,
			["alpha"] = 1,
			["width"] = 40,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = 114.68,
			["conditions"] = {
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
							["value"] = 0.8,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "",
		},
		["Gurtogg - Acidic Wound"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["message_format_s_format"] = "none",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "22841",
						["spellId"] = "42023",
						["auranames"] = {
							"42005", -- [1]
						},
						["use_genericShowOn"] = true,
						["message_operator"] = "find('%s')",
						["destUnit"] = "player",
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["use_eventtype"] = true,
						["percenthealth"] = "100",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "Supremus punches the ground in anger",
						["use_spellId"] = true,
						["sourceNpcId"] = "",
						["useAffected"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["subeventSuffix"] = "",
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["spellName"] = "Intangible Presence",
						["use_sourceNpcId"] = false,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["duration"] = "3",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["names"] = {
						},
						["use_unit"] = true,
						["use_destName"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["type"] = "aura2",
						["percenthealth_operator"] = "<",
						["unevent"] = "timed",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Intangible Presence",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["subeventPrefix"] = "PARTY_KILL",
						["use_message"] = true,
						["use_percenthealth"] = true,
						["use_messageType"] = false,
						["useExactSpellId"] = false,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(trigger)\n    return (trigger[1] and trigger[2]) or trigger[3]    \nend\n\n\n",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "DROP THREAT",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [3]
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
				}, -- [4]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "605",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 132155,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Gurtogg - Acidic Wound",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "fUd3re(Hx4c",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">=",
						["variable"] = "stacks",
						["value"] = "15",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.text_visible",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.4.glow",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Council - Hammer of Justice"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Sound\\Interface\\RaidWarning.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = 41426,
						["auranames"] = {
							"41468", -- [1]
						},
						["use_genericShowOn"] = true,
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_DAMAGE",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_eventtype"] = true,
						["use_aggro"] = true,
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["duration"] = "40",
						["type"] = "aura2",
						["auraspellids"] = {
						},
						["unevent"] = "timed",
						["realSpellName"] = "Impale",
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["unit"] = "player",
						["group_countOperator"] = ">",
						["useAffected"] = true,
						["useExactSpellId"] = false,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "STUNNED",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "608",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135963,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Council - Hammer of Justice",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "omd8ZWRPOcq",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["BT - Fear"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "41061",
						["auranames"] = {
							"41150", -- [1]
						},
						["use_genericShowOn"] = true,
						["destUnit"] = "player",
						["amount"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_DAMAGE",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_aggro"] = true,
						["unit"] = "player",
						["useExactSpellId"] = false,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["useName"] = true,
						["duration"] = "3",
						["unevent"] = "timed",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"38215", -- [1]
						},
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_unit"] = true,
						["useAffected"] = true,
						["use_eventtype"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "FEARED",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["use_zone"] = false,
				["encounterid"] = "2458",
				["zone"] = "Serpentshrine Cavern",
				["use_encounter"] = false,
				["use_zoneIds"] = true,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136183,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "BT - Fear",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "cYE)JrT0HJJ",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Gurtogg - Bewildering Strike"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["message_format_s_format"] = "none",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "22841",
						["spellId"] = "42023",
						["auranames"] = {
							"40491", -- [1]
						},
						["use_genericShowOn"] = true,
						["message_operator"] = "find('%s')",
						["destUnit"] = "player",
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["use_eventtype"] = true,
						["percenthealth"] = "100",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "Supremus punches the ground in anger",
						["use_spellId"] = true,
						["sourceNpcId"] = "",
						["useAffected"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["subeventSuffix"] = "",
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["spellName"] = "Intangible Presence",
						["use_sourceNpcId"] = false,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["duration"] = "3",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["names"] = {
						},
						["use_unit"] = true,
						["use_destName"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["type"] = "aura2",
						["percenthealth_operator"] = "<",
						["unevent"] = "timed",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Intangible Presence",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["subeventPrefix"] = "PARTY_KILL",
						["use_message"] = true,
						["use_percenthealth"] = true,
						["use_messageType"] = false,
						["useExactSpellId"] = false,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(trigger)\n    return (trigger[1] and trigger[2]) or trigger[3]    \nend\n\n\n",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "DISORIENTED",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "605",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 132096,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Gurtogg - Bewildering Strike",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "Khv11wwsWt8",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["BT - Stun Effects"] = {
			["iconSource"] = -1,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\BigWigs\\Media\\Sounds\\Alarm.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "41061",
						["auranames"] = {
							"41272", -- [1]
							"41274", -- [2]
							"41213", -- [3]
							"40936", -- [4]
						},
						["use_genericShowOn"] = true,
						["destUnit"] = "player",
						["amount"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_DAMAGE",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_aggro"] = true,
						["unit"] = "player",
						["useExactSpellId"] = false,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["useName"] = true,
						["duration"] = "3",
						["unevent"] = "timed",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"38215", -- [1]
						},
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_unit"] = true,
						["useAffected"] = true,
						["use_eventtype"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "STUNNED",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["use_zone"] = false,
				["encounterid"] = "2458",
				["zone"] = "Serpentshrine Cavern",
				["use_encounter"] = false,
				["use_zoneIds"] = true,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 132368,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "BT - Stun Effects",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "IWwKLnCr2)s",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Shahraz - Fatal Forward"] = {
			["iconSource"] = 0,
			["xOffset"] = 0,
			["displayText"] = "%p",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["icon"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "BOTTOM",
			["desaturate"] = false,
			["rotation"] = 180,
			["font"] = "Friz Quadrata TT",
			["load"] = {
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["zone"] = "Black Temple",
				["use_zoneIds"] = true,
				["encounterid"] = "607",
				["zoneIds"] = "339",
			},
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["shadowXOffset"] = 1,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\targeting-mark.tga",
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 20504,
			["alpha"] = 1,
			["uid"] = "0U5tEANf87v",
			["displayIcon"] = 136202,
			["outline"] = "OUTLINE",
			["wagoID"] = "Y5J7NdyVH",
			["color"] = {
				1, -- [1]
				0, -- [2]
				0.94901960784314, -- [3]
				1, -- [4]
			},
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["shadowYOffset"] = -1,
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["events"] = "RAID_TARGET_UPDATE",
						["custom"] = "function(states, event, ...)\n    local mark = GetRaidTargetIndex(\"player\")\n    if mark == 3 then\n        states[\"\"] = {\n            show = true,\n            changed = true,\n            progressType = \"static\",\n            \n        }\n        return true\n    else\n        if states[\"\"] then\n            states[\"\"].show = false\n            states[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n",
						["subeventPrefix"] = "SPELL",
						["check"] = "event",
						["custom_type"] = "stateupdate",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 51,
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
			["discrete_rotation"] = 0,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "FORWARD",
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
					["text_anchorXOffset"] = 5,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "TOP",
					["text_visible"] = true,
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_anchorYOffset"] = -36,
				}, -- [2]
			},
			["height"] = 160,
			["rotate"] = true,
			["fontSize"] = 12,
			["mirror"] = false,
			["preferToUpdate"] = false,
			["information"] = {
			},
			["authorOptions"] = {
			},
			["displayText_format_p_time_dynamic"] = false,
			["displayText_format_p_time_precision"] = 1,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\RunAway.ogg",
					["do_sound"] = true,
				},
				["init"] = {
					["custom"] = "aura_env.marks = {\n    [1] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_1\",\n    [2] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_2\",\n    [3] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_3\",\n    [4] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_4\",\n    [5] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_5\",\n    [6] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_6\",\n    [7] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_7\",\n    [8] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_8\",\n}",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["config"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["justify"] = "LEFT",
			["cooldownEdge"] = true,
			["id"] = "Shahraz - Fatal Forward",
			["width"] = 160,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["inverse"] = false,
			["wordWrap"] = "WordWrap",
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["fixedWidth"] = 200,
		},
		["BT - Chaotic Light"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "38976",
						["auranames"] = {
							"41034", -- [1]
						},
						["duration"] = "8",
						["amount"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["use_eventtype"] = true,
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_aggro"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["unit"] = "target",
						["useExactSpellId"] = false,
						["use_genericShowOn"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["useName"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_status"] = false,
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_unit"] = true,
						["useAffected"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "NO SPELLS",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["use_zone"] = false,
				["encounterid"] = "2458",
				["zone"] = "Serpentshrine Cavern",
				["use_encounter"] = false,
				["use_zoneIds"] = true,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135874,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "BT - Chaotic Light",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "qRzIragej)P",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["BT - Curses"] = {
			["iconSource"] = -1,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "{rt7} CURSE ON %c {rt7}",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = true,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "41061",
						["auranames"] = {
							"39647", -- [1]
							"41170", -- [2]
						},
						["use_genericShowOn"] = true,
						["destUnit"] = "player",
						["amount"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_DAMAGE",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_aggro"] = true,
						["unit"] = "player",
						["useExactSpellId"] = false,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["useName"] = true,
						["duration"] = "3",
						["unevent"] = "timed",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"38215", -- [1]
						},
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_unit"] = true,
						["useAffected"] = true,
						["use_eventtype"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "DECURSE",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["use_zone"] = false,
				["encounterid"] = "2458",
				["zone"] = "Serpentshrine Cavern",
				["use_encounter"] = false,
				["use_zoneIds"] = true,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135952,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "BT - Curses",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "xl9cShewn(b",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Reliquary - Spite"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = 41426,
						["auranames"] = {
							"41376", -- [1]
						},
						["use_genericShowOn"] = true,
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["event"] = "Cast",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_eventtype"] = true,
						["use_aggro"] = true,
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["duration"] = "40",
						["type"] = "aura2",
						["auraspellids"] = {
						},
						["unevent"] = "timed",
						["realSpellName"] = "Impale",
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["unit"] = "player",
						["group_countOperator"] = ">",
						["useAffected"] = true,
						["useExactSpellId"] = false,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "IMMUNE",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "DMG SOON",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [3]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [4]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "606",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136150,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Reliquary - Spite",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "EnfkzXPT3G8",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "expirationTime",
						["value"] = "6",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "{rt7} SPITE ON %c ! HEAL SOON {rt7}",
								["custom"] = "function() return UnitName(\"player\") end",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "expirationTime",
						["value"] = "3",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "DMG IN 3",
								["custom"] = "function() return UnitName(\"player\") end",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "expirationTime",
						["value"] = "2",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "DMG IN 2",
								["custom"] = "function() return UnitName(\"player\") end",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "expirationTime",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "DMG IN 1",
								["custom"] = "function() return UnitName(\"player\") end",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["地震术"] = {
			["iconSource"] = -1,
			["wagoID"] = "nsp7fsMNg",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 157.0285339355469,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "",
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
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 25454,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["realSpellName"] = "地震術",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useName"] = true,
						["auranames"] = {
							"43339", -- [1]
						},
						["unit"] = "player",
						["type"] = "aura2",
						["debuffType"] = "HELPFUL",
						["useRem"] = false,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\nreturn t[1]\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
			["version"] = 19,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["text_text"] = "%p",
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
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_2.p_format"] = "timed",
					["text_text_format_p_time_precision"] = 1,
					["type"] = "subtext",
					["anchorXOffset"] = 0,
					["text_color"] = {
						0, -- [1]
						1, -- [2]
						0.1294117647058823, -- [3]
						1, -- [4]
					},
					["text_font"] = "聊天",
					["text_visible"] = true,
					["text_shadowYOffset"] = 0,
					["text_text_format_2.p_time_dynamic_threshold"] = 60,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_format"] = 0,
					["text_fontSize"] = 15,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_2.p_time_precision"] = 1,
				}, -- [3]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
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
			["parent"] = "老雷增强萨WA",
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["icon"] = true,
			["information"] = {
			},
			["displayIcon"] = 136027,
			["uid"] = "6E6sjYZk9l4",
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "地震术",
			["width"] = 40,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
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
							["value"] = 0.8,
							["property"] = "alpha",
						}, -- [2]
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
							["value"] = 0,
							["property"] = "iconSource",
						}, -- [1]
						{
							["value"] = false,
							["property"] = "sub.2.glow",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "charges",
						["value"] = "1",
						["op"] = "==",
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
			["xOffset"] = -4.68,
		},
		["Archimonde - Soul Charge"] = {
			["iconSource"] = -1,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = true,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "28433",
						["auranames"] = {
						},
						["duration"] = "40",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["event"] = "Combat Events",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = false,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["unit"] = "player",
						["useExactSpellId"] = true,
						["group_countOperator"] = ">",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
						["use_genericShowOn"] = true,
						["type"] = "aura2",
						["unevent"] = "timed",
						["auraspellids"] = {
							"32053", -- [1]
							"32054", -- [2]
						},
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = false,
						["use_eventtype"] = true,
						["use_unit"] = true,
						["useAffected"] = true,
						["use_aggro"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "SILENCED",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = false,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "+ DMG TAKEN",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = false,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [3]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Serpentshrine Cavern",
				["use_zoneIds"] = true,
				["encounterid"] = "622",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 132869,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Archimonde - Soul Charge",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "BoCJUC4mbvQ",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "spellId",
						["value"] = "32053",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.text_visible",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "spellId",
						["value"] = "32054",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.text_visible",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["小喵-T6-BT-阿克蒙德-空气爆裂-点击提示"] = {
			["iconSource"] = 0,
			["wagoID"] = "NFPtZZFKQ",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 150,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/NFPtZZFKQ/8",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "32014",
						["duration"] = "5.5",
						["names"] = {
						},
						["destUnit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "combatlog",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["custom_hide"] = "timed",
						["event"] = "Combat Log",
						["subeventPrefix"] = "SPELL",
						["custom_type"] = "stateupdate",
						["use_spellId"] = true,
						["events"] = "CLEU:SPELL_AURA_APPLIED:SPELL_CAST_SUCCESS",
						["spellIds"] = {
						},
						["check"] = "event",
						["use_destUnit"] = true,
						["unit"] = "player",
						["customVariables"] = "\n{\n    expirationTime = 0,\n    duration = 0,\n}",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["spellId"] = "32014",
						["duration"] = "5.5",
						["names"] = {
						},
						["destUnit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "combatlog",
						["subeventSuffix"] = "_DAMAGE",
						["custom_hide"] = "timed",
						["event"] = "Combat Log",
						["subeventPrefix"] = "SPELL",
						["custom_type"] = "stateupdate",
						["use_spellId"] = true,
						["events"] = "CLEU:SPELL_AURA_APPLIED:SPELL_CAST_SUCCESS",
						["spellIds"] = {
						},
						["check"] = "event",
						["use_destUnit"] = true,
						["unit"] = "player",
						["customVariables"] = "\n{\n    expirationTime = 0,\n    duration = 0,\n}",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["message"] = "#羽毛测试",
						["type"] = "event",
						["unit"] = "player",
						["event"] = "Chat Message",
						["use_message"] = true,
						["duration"] = "5.5",
						["message_operator"] = "==",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
			["version"] = 8,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "CENTER",
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
					["text_font"] = "聊天",
					["text_visible"] = true,
					["text_shadowYOffset"] = 0,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fontSize"] = 20,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_shadowXOffset"] = 0,
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
						0.67058823529412, -- [2]
						0.03921568627451, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
				{
					["text_text_format_p_time_format"] = 0,
					["text_text"] = "准备开羽毛",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "聊天",
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_shadowYOffset"] = 0,
					["text_shadowXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_visible"] = true,
					["text_text_format_p_time_precision"] = 1,
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_anchorYOffset"] = -5,
				}, -- [4]
				{
					["text_text_format_p_time_format"] = 0,
					["text_text"] = "开羽毛！",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_color"] = {
						1, -- [1]
						0.73725490196078, -- [2]
						0.019607843137255, -- [3]
						1, -- [4]
					},
					["text_font"] = "聊天",
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_shadowYOffset"] = 0,
					["text_shadowXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_visible"] = false,
					["text_text_format_p_time_precision"] = 1,
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_anchorYOffset"] = -5,
				}, -- [5]
			},
			["height"] = 60,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["use_zoneIds"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "622",
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["selfPoint"] = "CENTER",
			["parent"] = "小喵-T6-BT-阿克蒙德-空气爆裂",
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["custom"] = "aura_env.create()",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "local e = aura_env \nif not _G[e.id..\"Button\"] then \n    local region = WeakAuras.GetRegion(e.id) \n    e.btn = CreateFrame(\"Button\", e.id..\"Button\", region, \"SecureActionButtonTemplate\") \n    e.btn:SetHighlightTexture([[Interface\\Buttons\\ButtonHilight-Square]],\"ADD\") \n    e.btn:SetPushedTexture([[Interface\\Buttons\\UI-Quickslot-Depress]]) \n    e.btn:SetAttribute(\"type\", \"macro\") \n    e.btn:SetAllPoints(region)\nend \nlocal btn = _G[e.id..\"Button\"]\nlocal m = \"/use item:24494\"\ne.btn:SetAttribute(\"type\", \"macro\") \ne.btn:RegisterForClicks(\"LeftButtonDown\", \"RightButtonDown\") \ne.btn:SetAttribute(\"macrotext\",m)",
					["do_custom"] = false,
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["information"] = {
			},
			["displayIcon"] = "Interface\\Icons\\Spell_Arcane_Arcane01",
			["uid"] = "55RNlYabbyE",
			["zoom"] = 0.25,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.7",
			["tocversion"] = 20504,
			["id"] = "小喵-T6-BT-阿克蒙德-空气爆裂-点击提示",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 60,
			["alpha"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "1.2",
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								0.65882352941176, -- [2]
								0.027450980392157, -- [3]
								1, -- [4]
							},
							["property"] = "sub.2.text_color",
						}, -- [2]
						{
							["property"] = "sub.4.text_visible",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "sub.5.text_visible",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [5]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "1.2",
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								0.65882352941176, -- [2]
								0.027450980392157, -- [3]
								1, -- [4]
							},
							["property"] = "sub.2.text_color",
						}, -- [2]
						{
							["property"] = "sub.4.text_visible",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "sub.5.text_visible",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [5]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 3,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "1.2",
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								0.65882352941176, -- [2]
								0.027450980392157, -- [3]
								1, -- [4]
							},
							["property"] = "sub.2.text_color",
						}, -- [2]
						{
							["property"] = "sub.4.text_visible",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "sub.5.text_visible",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [5]
					},
				}, -- [3]
			},
			["cooldown"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Archimonde - Phase 2"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "28433",
						["auranames"] = {
							"32014", -- [1]
						},
						["duration"] = "60",
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["use_eventtype"] = true,
						["event"] = "Chat Message",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "The trap has sprung",
						["use_spellId"] = false,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["useExactSpellId"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["names"] = {
						},
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
						["type"] = "event",
						["useName"] = true,
						["unevent"] = "timed",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_threatUnit"] = true,
						["use_npcId"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["use_message"] = true,
						["spellName"] = "Intangible Presence",
						["useAffected"] = true,
						["use_aggro"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "SAVED BY TYRANDE",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Serpentshrine Cavern",
				["use_zoneIds"] = true,
				["encounterid"] = "622",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 134162,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Archimonde - Phase 2",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "GGJYr8mNFfn",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["GCD History 2"] = {
			["arcLength"] = 360,
			["controlledChildren"] = {
				"Last_Player_Cast 2", -- [1]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -200.2326049804688,
			["preferToUpdate"] = false,
			["yOffset"] = -8.0206298828125,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["useAnchorPerUnit"] = false,
			["url"] = "https://wago.io/a3Jjx5ymT/5",
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
						["names"] = {
						},
						["unit"] = "player",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["radius"] = 200,
			["useLimit"] = true,
			["align"] = "CENTER",
			["uid"] = "YvY(j5XLZ3)",
			["rotation"] = 0,
			["borderSize"] = 2,
			["version"] = 5,
			["subRegions"] = {
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
			["grow"] = "LEFT",
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
			["customSort"] = "function(a,b)\n    return a.cloneId > b.cloneId\nend\n\n\n",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["space"] = 4,
			["animate"] = true,
			["authorOptions"] = {
			},
			["scale"] = 1,
			["rowSpace"] = 1,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["hybridPosition"] = "hybridFirst",
			["limit"] = 7,
			["stagger"] = 0,
			["config"] = {
			},
			["constantFactor"] = "RADIUS",
			["gridWidth"] = 5,
			["borderOffset"] = 4,
			["semver"] = "1.0.4",
			["tocversion"] = 20504,
			["id"] = "GCD History 2",
			["sort"] = "custom",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["internalVersion"] = 51,
			["borderInset"] = 1,
			["selfPoint"] = "RIGHT",
			["fullCircle"] = true,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["gridType"] = "RD",
		},
		["风系图腾"] = {
			["iconSource"] = -1,
			["wagoID"] = "nsp7fsMNg",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 86,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "",
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
						["itemName"] = 0,
						["use_totemNamePattern"] = false,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["use_totemType"] = true,
						["debuffType"] = "HELPFUL",
						["spellName"] = 0,
						["type"] = "spell",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_threatUnit"] = true,
						["form"] = {
						},
						["use_itemName"] = true,
						["totemType"] = 4,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["threatUnit"] = "target",
						["event"] = "Totem",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["useExactSpellId"] = false,
						["use_unit"] = true,
						["unit"] = "player",
						["event"] = "Conditions",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
			["version"] = 19,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["text_color"] = {
						0, -- [1]
						1, -- [2]
						0.2156862745098039, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_fontType"] = "OUTLINE",
					["text_shadowYOffset"] = 0,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 15,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_precision"] = 1,
				}, -- [3]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
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
			["parent"] = "老雷增强萨WA",
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["icon"] = true,
			["information"] = {
			},
			["displayIcon"] = 136114,
			["uid"] = "uSxh8CoXz41",
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "风系图腾",
			["width"] = 40,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0,
							["property"] = "iconSource",
						}, -- [2]
						{
							["value"] = 0.5,
							["property"] = "alpha",
						}, -- [3]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "5",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["xOffset"] = -85.2818603515625,
		},
		["Archimonde - Doomfire"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = true,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["rem"] = "5",
						["spellId"] = "31944",
						["auranames"] = {
							"31944", -- [1]
						},
						["duration"] = "3",
						["destUnit"] = "player",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "",
						["showClones"] = false,
						["subeventSuffix"] = "_AURA_APPLIED",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["use_eventtype"] = true,
						["group_countOperator"] = ">",
						["use_aggro"] = true,
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["useExactSpellId"] = false,
						["debuffType"] = "HARMFUL",
						["type"] = "combatlog",
						["useName"] = true,
						["use_threatUnit"] = true,
						["unevent"] = "timed",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["remOperator"] = ">",
						["unit"] = "player",
						["useAffected"] = true,
						["useRem"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "MOVE AWAY",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Serpentshrine Cavern",
				["use_zoneIds"] = true,
				["encounterid"] = "622",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135830,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Archimonde - Doomfire",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "THHUoTU8G3A",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Supremus - Molten Flame"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "40126",
						["auranames"] = {
							"40253", -- [1]
						},
						["duration"] = "3",
						["amount"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["use_eventtype"] = true,
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_aggro"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["unit"] = "player",
						["useExactSpellId"] = false,
						["use_genericShowOn"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["useName"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_status"] = false,
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["useAffected"] = true,
						["subeventSuffix"] = "_DAMAGE",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "MOVE AWAY",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Serpentshrine Cavern",
				["use_zoneIds"] = true,
				["encounterid"] = "602",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135802,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Supremus - Molten Flame",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "XXGdIIId2vv",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Reliquary - Seethe"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = 41426,
						["auranames"] = {
							"41520", -- [1]
						},
						["use_genericShowOn"] = true,
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["event"] = "Cast",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_eventtype"] = true,
						["use_aggro"] = true,
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["duration"] = "40",
						["type"] = "aura2",
						["auraspellids"] = {
						},
						["unevent"] = "timed",
						["realSpellName"] = "Impale",
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["unit"] = "player",
						["group_countOperator"] = ">",
						["useAffected"] = true,
						["useExactSpellId"] = false,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "CAREFUL",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "+ THREAT",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [3]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [4]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "606",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 132117,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Reliquary - Seethe",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "JPDBUzyPwnX",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Archimonde - Grip of the Legion"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "{rt7} CURSE ON %c {rt7}",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = true,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "28433",
						["auranames"] = {
							"31972", -- [1]
						},
						["duration"] = "40",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["event"] = "Combat Events",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = false,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["unit"] = "player",
						["useExactSpellId"] = false,
						["group_countOperator"] = ">",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
						["use_genericShowOn"] = true,
						["type"] = "aura2",
						["unevent"] = "timed",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["use_eventtype"] = true,
						["use_unit"] = true,
						["useAffected"] = true,
						["use_aggro"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "DECURSE",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Serpentshrine Cavern",
				["use_zoneIds"] = true,
				["encounterid"] = "622",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 132937,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Archimonde - Grip of the Legion",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "ptnIAa1mgeV",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Threat Differential on Nameplates"] = {
			["xOffset"] = -50,
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["yOffset"] = 0,
			["anchorPoint"] = "LEFT",
			["displayText_format_p_time_format"] = 0,
			["url"] = "https://wago.io/yssC_nf5K/9",
			["icon"] = true,
			["keepAspectRatio"] = false,
			["wordWrap"] = "WordWrap",
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["displayText_format_thing_format"] = "none",
			["shadowXOffset"] = 1,
			["customAnchor"] = "function()\n    if (aura_env.state.unitId) then\n        return C_NamePlate.GetNamePlateForUnit(aura_env.state.unitId)\n    end\nend\n\n\n",
			["regionType"] = "text",
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 20504,
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
			["cooldownEdge"] = false,
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
			["internalVersion"] = 51,
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
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["x"] = 0,
					["duration_type"] = "seconds",
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
			["cooldownTextDisabled"] = false,
			["displayText_format_displayValue_format"] = "none",
			["automaticWidth"] = "Auto",
			["authorOptions"] = {
				{
					["type"] = "input",
					["useDesc"] = true,
					["width"] = 2,
					["desc"] = "Format: tank1,tank2,tank3,etc",
					["name"] = "Additional Tanks",
					["key"] = "addtanks",
					["default"] = "Tank1,Tank2,Tank3",
					["length"] = 10,
					["multiline"] = true,
					["useLength"] = false,
				}, -- [1]
				{
					["type"] = "header",
					["useName"] = false,
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
			["config"] = {
				["addtanks"] = "Tank1,Tank2,Tank3",
			},
			["load"] = {
				["zoneIds"] = "",
				["talent2"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["single"] = 16,
					["multi"] = {
						[16] = true,
					},
				},
				["talent"] = {
					["single"] = 102,
					["multi"] = {
						[102] = true,
					},
				},
				["use_never"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
						["group"] = true,
						["raid"] = true,
					},
				},
				["use_affixes"] = true,
				["difficulty"] = {
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
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_ingroup"] = false,
				["race"] = {
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
			["anchorFrameParent"] = true,
			["displayText_format_p_time_precision"] = 1,
			["displayText_format_formatDiff_format"] = "none",
			["selfPoint"] = "CENTER",
			["semver"] = "1.0.8",
			["justify"] = "LEFT",
			["anchorFrameType"] = "NAMEPLATE",
			["id"] = "Threat Differential on Nameplates",
			["desc"] = "Shows the threat difference between yourself and the party/raid member with the most threat on enemy nameplates.\n\nColor determined by Tankstatus:\n\"Tanking\"  (default: green)\n\"Insecurely Tanking\" (default: yellow \"!!!\")\n\"Tanked by Other Tank\"  (default: blue)\n\"Untanked\" (default: red)",
			["frameStrata"] = 1,
			["width"] = 40,
			["displayText_format_c1_format"] = "none",
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
			["inverse"] = false,
			["displayText"] = "%c\n",
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
		["BT/MH - Frenzy"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\BigWigs\\Media\\Sounds\\Alarm.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "41061",
						["auranames"] = {
							"38166", -- [1]
						},
						["use_genericShowOn"] = true,
						["destUnit"] = "player",
						["amount"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_DAMAGE",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_aggro"] = true,
						["unit"] = "target",
						["useExactSpellId"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["useName"] = true,
						["duration"] = "3",
						["unevent"] = "timed",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"38215", -- [1]
						},
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_unit"] = true,
						["useAffected"] = true,
						["use_eventtype"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "TRANQ SHOT",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["use_zone"] = false,
				["encounterid"] = "2458",
				["zone"] = "Serpentshrine Cavern",
				["use_encounter"] = false,
				["use_zoneIds"] = true,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136215,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "BT/MH - Frenzy",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "cEApnnas9j7",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Azgalor - Rain of Fire"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = true,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\BigWigs\\Media\\Sounds\\Alarm.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "31341",
						["auranames"] = {
							"31341", -- [1]
						},
						["duration"] = "3",
						["destUnit"] = "player",
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["useExactSpellId"] = false,
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "I will not be touched by rabble such as you",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["useIgnoreName"] = false,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_aggro"] = true,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["use_eventtype"] = true,
						["spellName"] = "",
						["use_status"] = false,
						["use_genericShowOn"] = true,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
							"41917", -- [1]
						},
						["useName"] = true,
						["realSpellName"] = "Impale",
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["unit"] = "player",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["type"] = "combatlog",
						["use_message"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["subeventSuffix"] = "_AURA_APPLIED",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "MOVE OUT",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "621",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136186,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Azgalor - Rain of Fire",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "7zBUezkv54l",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["水系图腾"] = {
			["iconSource"] = -1,
			["wagoID"] = "nsp7fsMNg",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 86,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "",
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
						["itemName"] = 0,
						["use_totemNamePattern"] = false,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["use_totemType"] = true,
						["debuffType"] = "HELPFUL",
						["spellName"] = 0,
						["type"] = "spell",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_threatUnit"] = true,
						["form"] = {
						},
						["use_itemName"] = true,
						["totemType"] = 3,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["threatUnit"] = "target",
						["event"] = "Totem",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["useExactSpellId"] = false,
						["use_unit"] = true,
						["unit"] = "player",
						["event"] = "Conditions",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
			["version"] = 19,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["text_color"] = {
						0, -- [1]
						1, -- [2]
						0.2156862745098039, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_fontType"] = "OUTLINE",
					["text_shadowYOffset"] = 0,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 15,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_precision"] = 1,
				}, -- [3]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
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
			["parent"] = "老雷增强萨WA",
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["icon"] = true,
			["information"] = {
			},
			["displayIcon"] = 136053,
			["uid"] = "xkHmWh9rVan",
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "水系图腾",
			["width"] = 40,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0,
							["property"] = "iconSource",
						}, -- [2]
						{
							["value"] = 0.5,
							["property"] = "alpha",
						}, -- [3]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "5",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["xOffset"] = -7.02960205078125,
		},
		["BT - Whirlwind"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "38976",
						["auranames"] = {
							"41097", -- [1]
						},
						["duration"] = "8",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["unit"] = "nameplate",
						["useExactSpellId"] = false,
						["group_countOperator"] = ">",
						["subeventPrefix"] = "SPELL_BUILDING",
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["type"] = "aura2",
						["unevent"] = "timed",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["useName"] = true,
						["use_eventtype"] = true,
						["use_unit"] = true,
						["useAffected"] = true,
						["use_aggro"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "MOVE AWAY",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["use_zone"] = false,
				["encounterid"] = "2458",
				["zone"] = "Serpentshrine Cavern",
				["use_encounter"] = false,
				["use_zoneIds"] = true,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 132369,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "BT - Whirlwind",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "vLzoICTvYxD",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Akama - Rain of Fire"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = true,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\BigWigs\\Media\\Sounds\\Alarm.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "18806",
						["spellId"] = "42023",
						["auranames"] = {
							"34322", -- [1]
						},
						["use_genericShowOn"] = true,
						["message_operator"] = "find('%s')",
						["destUnit"] = "player",
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["use_eventtype"] = true,
						["percenthealth"] = "20",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "Supremus punches the ground in anger",
						["use_spellId"] = true,
						["sourceNpcId"] = "",
						["useAffected"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["subeventSuffix"] = "_DAMAGE",
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["spellName"] = "Intangible Presence",
						["use_sourceNpcId"] = false,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["duration"] = "3",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["names"] = {
						},
						["use_unit"] = true,
						["use_destName"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["type"] = "combatlog",
						["percenthealth_operator"] = "<=",
						["unevent"] = "timed",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Intangible Presence",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_message"] = true,
						["use_percenthealth"] = true,
						["use_messageType"] = false,
						["useExactSpellId"] = false,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				{
					["trigger"] = {
						["npcId"] = "18806",
						["spellId"] = "42023",
						["auranames"] = {
							"34322", -- [1]
						},
						["use_genericShowOn"] = true,
						["message_operator"] = "find('%s')",
						["destUnit"] = "player",
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["use_eventtype"] = true,
						["percenthealth"] = "20",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "Supremus punches the ground in anger",
						["use_spellId"] = true,
						["sourceNpcId"] = "",
						["useAffected"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["subeventSuffix"] = "_DAMAGE",
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["spellName"] = "Intangible Presence",
						["use_sourceNpcId"] = false,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["duration"] = "3",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["names"] = {
						},
						["use_unit"] = true,
						["use_destName"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["type"] = "combatlog",
						["percenthealth_operator"] = "<=",
						["unevent"] = "timed",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Intangible Presence",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_message"] = true,
						["use_percenthealth"] = true,
						["use_messageType"] = false,
						["useExactSpellId"] = false,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(trigger)\n    return (trigger[1] and trigger[2]) or trigger[3]    \nend\n\n\n",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "MOVE OUT",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "603",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136186,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Akama - Rain of Fire",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "Aq3WpEDvZgq",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Kazrogal - Cripple"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\BigWigs\\Media\\Sounds\\Alarm.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = 40832,
						["auranames"] = {
							"31477", -- [1]
						},
						["duration"] = "5",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["useExactSpellId"] = false,
						["event"] = "Chat Message",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "I will not be touched by rabble such as you",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["useIgnoreName"] = false,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["use_eventtype"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["useName"] = true,
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
							"41917", -- [1]
						},
						["type"] = "aura2",
						["use_npcId"] = false,
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["use_message"] = true,
						["subeventSuffix"] = "_DAMAGE",
						["useAffected"] = true,
						["group_countOperator"] = ">",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "SLOWED",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "620",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136135,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Kazrogal - Cripple",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "ILHskFgo7Uv",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Reliquary - Rune Shield"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = 41426,
						["auranames"] = {
							"41431", -- [1]
						},
						["use_genericShowOn"] = true,
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["event"] = "Cast",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_eventtype"] = true,
						["use_aggro"] = true,
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["duration"] = "40",
						["type"] = "aura2",
						["auraspellids"] = {
						},
						["unevent"] = "timed",
						["realSpellName"] = "Impale",
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["unit"] = "target",
						["group_countOperator"] = ">",
						["useAffected"] = true,
						["useExactSpellId"] = false,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				{
					["trigger"] = {
						["unit"] = "player",
						["type"] = "unit",
						["use_hostility"] = true,
						["event"] = "Unit Characteristics",
						["use_unit"] = true,
						["hostility"] = "hostile",
						["use_attackable"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "SPELLSTEAL",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "606",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135735,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Reliquary - Rune Shield",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "ceFNXnuG8)E",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Supremus - Phase 1"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "18806",
						["spellId"] = 33387,
						["auranames"] = {
							"34322", -- [1]
						},
						["use_genericShowOn"] = true,
						["message_operator"] = "find('%s')",
						["destUnit"] = "player",
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["use_eventtype"] = true,
						["percenthealth"] = "20",
						["event"] = "Chat Message",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "The ground begins to crack open",
						["use_spellId"] = true,
						["sourceNpcId"] = "",
						["useAffected"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["spellName"] = "Intangible Presence",
						["use_sourceNpcId"] = false,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["duration"] = "60",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["names"] = {
						},
						["use_unit"] = true,
						["use_destName"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["type"] = "event",
						["percenthealth_operator"] = "<=",
						["unevent"] = "timed",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Intangible Presence",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_message"] = true,
						["use_percenthealth"] = true,
						["use_messageType"] = false,
						["useExactSpellId"] = false,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(trigger)\n    return (trigger[1] and trigger[2]) or trigger[3]    \nend\n\n\n",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "THREAT RESET",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "PHASE 1",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [3]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "602",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136080,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Supremus - Phase 1",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "asJoWk(vKfH",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "expirationTime",
						["value"] = "5",
					},
					["changes"] = {
						{
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["BT - Electric Spur"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "38976",
						["auranames"] = {
							"40076", -- [1]
						},
						["duration"] = "8",
						["amount"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["use_eventtype"] = true,
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_aggro"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["unit"] = "target",
						["useExactSpellId"] = false,
						["use_genericShowOn"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["useName"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_status"] = false,
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_unit"] = true,
						["useAffected"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "HEAL TANK",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
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
					["glowScale"] = 1,
					["glow"] = true,
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["use_zone"] = false,
				["encounterid"] = "2458",
				["zone"] = "Serpentshrine Cavern",
				["use_encounter"] = false,
				["use_zoneIds"] = true,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135597,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "BT - Electric Spur",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "hzAksxivERi",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["火爹"] = {
			["iconSource"] = -1,
			["wagoID"] = "nsp7fsMNg",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 155,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "",
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
						["track"] = "auto",
						["type"] = "spell",
						["spellName"] = 2894,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["names"] = {
						},
						["realSpellName"] = 2894,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_exact_spellName"] = true,
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["event"] = "Conditions",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
			["version"] = 19,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_shadowXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 1,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fontSize"] = 12,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_round_type"] = "floor",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 30,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
					},
				},
				["spellknown"] = 2894,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "老雷增强萨WA",
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["icon"] = true,
			["information"] = {
			},
			["displayIcon"] = 135790,
			["uid"] = "3w0bQnuz)TS",
			["zoom"] = 0,
			["cooldownTextDisabled"] = true,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "火爹",
			["width"] = 30,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["selfPoint"] = "CENTER",
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
						["trigger"] = 1,
						["variable"] = "show",
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
			["xOffset"] = 160,
		},
		["Illidan - Shear"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Sound\\Interface\\RaidWarning.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = 41032,
						["auranames"] = {
							"41453", -- [1]
							"41452", -- [2]
						},
						["use_genericShowOn"] = true,
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["useExactSpellId"] = true,
						["event"] = "Cast",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["useIgnoreName"] = false,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_eventtype"] = true,
						["spellName"] = "Intangible Presence",
						["unit"] = "target",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["duration"] = "40",
						["type"] = "unit",
						["unevent"] = "timed",
						["auraspellids"] = {
							"41452", -- [1]
							"41453", -- [2]
						},
						["realSpellName"] = "Impale",
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = false,
						["subeventPrefix"] = "SPELL",
						["use_aggro"] = true,
						["useAffected"] = true,
						["subeventSuffix"] = "_DAMAGE",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["use_aggro"] = true,
						["unit"] = "target",
						["use_unit"] = true,
						["event"] = "Threat Situation",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "USE MITIGATION",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "609",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136158,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Illidan - Shear",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "J9qZGb8tKeM",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Illidan - Uncaged Wrath"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["do_loop"] = false,
					["message_custom"] = "function() return UnitName(\"player\") end",
					["message_type"] = "SAY",
					["do_message"] = false,
					["message"] = "",
					["do_sound"] = true,
					["do_glow"] = false,
					["sound"] = "Sound\\Interface\\RaidWarning.ogg",
					["sound_repeat"] = 1,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "39869",
						["auranames"] = {
							"41083", -- [1]
						},
						["duration"] = "3",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["useExactSpellId"] = false,
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "I will not be touched by rabble such as you",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["useIgnoreName"] = false,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["use_eventtype"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["useName"] = true,
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
							"41917", -- [1]
						},
						["type"] = "combatlog",
						["use_npcId"] = false,
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["use_message"] = true,
						["subeventSuffix"] = "_AURA_APPLIED",
						["useAffected"] = true,
						["group_countOperator"] = ">",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "BACK TO GLAIVE",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "609",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136224,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Illidan - Uncaged Wrath",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "kMKASo0KHR8",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Illidan - Parastic Shadowfiend"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "{rt7} PARASITES ON %c in 10 {rt7}",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = true,
					["sound"] = "Sound\\Interface\\RaidWarning.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = 40832,
						["auranames"] = {
							"41917", -- [1]
						},
						["use_genericShowOn"] = true,
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["useExactSpellId"] = false,
						["event"] = "Cast",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["useIgnoreName"] = false,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_eventtype"] = true,
						["spellName"] = "Intangible Presence",
						["unit"] = "player",
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["duration"] = "40",
						["type"] = "aura2",
						["unevent"] = "timed",
						["auraspellids"] = {
							"41917", -- [1]
						},
						["realSpellName"] = "Impale",
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["use_aggro"] = true,
						["useAffected"] = true,
						["subeventSuffix"] = "_DAMAGE",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "MOVE",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "609",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136214,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Illidan - Parastic Shadowfiend",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "LCs8GfJyCFR",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
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
							["value"] = {
								["message"] = "Parasites in 3",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "expirationTime",
						["value"] = "2",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "2",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "expirationTime",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "1",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["BT - Harpooner's Mark"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "38976",
						["auranames"] = {
							"40084", -- [1]
						},
						["duration"] = "8",
						["amount"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["use_eventtype"] = true,
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_aggro"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["unit"] = "player",
						["useExactSpellId"] = false,
						["use_genericShowOn"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["useName"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_status"] = false,
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_unit"] = true,
						["useAffected"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "FIXATED",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["use_zone"] = false,
				["encounterid"] = "2458",
				["zone"] = "Serpentshrine Cavern",
				["use_encounter"] = false,
				["use_zoneIds"] = true,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 132212,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "BT - Harpooner's Mark",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "yjLs0qRClPW",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Akama - Interrupts"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\BigWigs\\Media\\Sounds\\Alarm.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "18806",
						["spellId"] = 13482,
						["auranames"] = {
							"34322", -- [1]
						},
						["duration"] = "3",
						["message_operator"] = "find('%s')",
						["destUnit"] = "player",
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["useExactSpellId"] = false,
						["percenthealth"] = "20",
						["event"] = "Cast",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "Supremus punches the ground in anger",
						["use_spellId"] = true,
						["sourceNpcId"] = "",
						["useAffected"] = true,
						["use_eventtype"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["spellName"] = "Intangible Presence",
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_sourceNpcId"] = false,
						["use_exact_spellId"] = false,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "target",
						["use_genericShowOn"] = true,
						["use_aggro"] = true,
						["use_threatUnit"] = true,
						["names"] = {
						},
						["use_unit"] = true,
						["use_destName"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["type"] = "unit",
						["realSpellName"] = "Intangible Presence",
						["unevent"] = "timed",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_messageType"] = false,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_message"] = true,
						["use_percenthealth"] = true,
						["percenthealth_operator"] = "<=",
						["subeventSuffix"] = "_DAMAGE",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				{
					["trigger"] = {
						["npcId"] = "18806",
						["spellId"] = 42025,
						["auranames"] = {
							"34322", -- [1]
						},
						["duration"] = "3",
						["message_operator"] = "find('%s')",
						["destUnit"] = "player",
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["useExactSpellId"] = false,
						["percenthealth"] = "20",
						["event"] = "Cast",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "Supremus punches the ground in anger",
						["use_spellId"] = true,
						["sourceNpcId"] = "",
						["useAffected"] = true,
						["use_eventtype"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["spellName"] = "Intangible Presence",
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_sourceNpcId"] = false,
						["use_exact_spellId"] = false,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "target",
						["use_genericShowOn"] = true,
						["use_aggro"] = true,
						["use_threatUnit"] = true,
						["names"] = {
						},
						["use_unit"] = true,
						["use_destName"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["type"] = "unit",
						["realSpellName"] = "Intangible Presence",
						["unevent"] = "timed",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_messageType"] = false,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_message"] = true,
						["use_percenthealth"] = true,
						["percenthealth_operator"] = "<=",
						["subeventSuffix"] = "_DAMAGE",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [2]
				{
					["trigger"] = {
						["npcId"] = "18806",
						["spellId"] = 14900,
						["auranames"] = {
							"34322", -- [1]
						},
						["duration"] = "3",
						["message_operator"] = "find('%s')",
						["destUnit"] = "player",
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["useExactSpellId"] = false,
						["percenthealth"] = "20",
						["event"] = "Cast",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "Supremus punches the ground in anger",
						["use_spellId"] = true,
						["sourceNpcId"] = "",
						["useAffected"] = true,
						["use_eventtype"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["spellName"] = "Intangible Presence",
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_sourceNpcId"] = false,
						["use_exact_spellId"] = false,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "target",
						["use_genericShowOn"] = true,
						["use_aggro"] = true,
						["use_threatUnit"] = true,
						["names"] = {
						},
						["use_unit"] = true,
						["use_destName"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["type"] = "unit",
						["realSpellName"] = "Intangible Presence",
						["unevent"] = "timed",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_messageType"] = false,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_message"] = true,
						["use_percenthealth"] = true,
						["percenthealth_operator"] = "<=",
						["subeventSuffix"] = "_DAMAGE",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [3]
				{
					["trigger"] = {
						["npcId"] = "18806",
						["spellId"] = 42317,
						["auranames"] = {
							"34322", -- [1]
						},
						["duration"] = "3",
						["message_operator"] = "find('%s')",
						["destUnit"] = "player",
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["useExactSpellId"] = false,
						["percenthealth"] = "20",
						["event"] = "Cast",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "Supremus punches the ground in anger",
						["use_spellId"] = true,
						["sourceNpcId"] = "",
						["useAffected"] = true,
						["use_eventtype"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["spellName"] = "Intangible Presence",
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_sourceNpcId"] = false,
						["use_exact_spellId"] = false,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "target",
						["use_genericShowOn"] = true,
						["use_aggro"] = true,
						["use_threatUnit"] = true,
						["names"] = {
						},
						["use_unit"] = true,
						["use_destName"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["type"] = "unit",
						["realSpellName"] = "Intangible Presence",
						["unevent"] = "timed",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_messageType"] = false,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_message"] = true,
						["use_percenthealth"] = true,
						["percenthealth_operator"] = "<=",
						["subeventSuffix"] = "_DAMAGE",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [4]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(trigger)\n    return (trigger[1] and trigger[2]) or trigger[3]    \nend\n\n\n",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "INTERRUPT",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_class"] = false,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["encounterid"] = "603",
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["MAGE"] = true,
						["WARRIOR"] = true,
						["ROGUE"] = true,
						["SHAMAN"] = true,
					},
				},
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 132219,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Akama - Interrupts",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "X6lGARDueZu",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Council - Consecration"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = true,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\BigWigs\\Media\\Sounds\\Alarm.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "43429",
						["auranames"] = {
							"41478", -- [1]
						},
						["duration"] = "3",
						["destUnit"] = "player",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_DAMAGE",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["use_eventtype"] = true,
						["use_aggro"] = true,
						["use_unit"] = true,
						["use_genericShowOn"] = true,
						["debuffType"] = "HELPFUL",
						["names"] = {
						},
						["type"] = "combatlog",
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["realSpellName"] = "Impale",
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["useName"] = true,
						["unit"] = "target",
						["group_countOperator"] = ">",
						["useAffected"] = true,
						["useExactSpellId"] = false,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "43429",
						["auranames"] = {
							"41478", -- [1]
						},
						["duration"] = "3",
						["destUnit"] = "player",
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["subeventSuffix"] = "_DAMAGE",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_eventtype"] = true,
						["useExactSpellId"] = false,
						["spellName"] = "Intangible Presence",
						["use_destName"] = false,
						["unit"] = "target",
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["type"] = "combatlog",
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["realSpellName"] = "Impale",
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_aggro"] = true,
						["useAffected"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [2]
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "41541",
						["auranames"] = {
							"41478", -- [1]
						},
						["duration"] = "3",
						["destUnit"] = "player",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_DAMAGE",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["use_eventtype"] = true,
						["use_aggro"] = true,
						["use_unit"] = true,
						["use_genericShowOn"] = true,
						["debuffType"] = "HELPFUL",
						["names"] = {
						},
						["type"] = "combatlog",
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["realSpellName"] = "Impale",
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["useName"] = true,
						["unit"] = "target",
						["group_countOperator"] = ">",
						["useAffected"] = true,
						["useExactSpellId"] = false,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [3]
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "41541",
						["auranames"] = {
							"41478", -- [1]
						},
						["duration"] = "3",
						["destUnit"] = "player",
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["subeventSuffix"] = "_DAMAGE",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_eventtype"] = true,
						["useExactSpellId"] = false,
						["spellName"] = "Intangible Presence",
						["use_destName"] = false,
						["unit"] = "target",
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["type"] = "combatlog",
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["realSpellName"] = "Impale",
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_aggro"] = true,
						["useAffected"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "MOVE OUT",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "608",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135926,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Council - Consecration",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "sZv2rq0u30T",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Archimonde - Air Burst"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "32014",
						["auranames"] = {
							"32014", -- [1]
						},
						["duration"] = "5",
						["destUnit"] = "player",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "",
						["showClones"] = false,
						["subeventSuffix"] = "_DAMAGE",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_eventtype"] = true,
						["useExactSpellId"] = false,
						["group_countOperator"] = ">",
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["use_genericShowOn"] = true,
						["type"] = "combatlog",
						["unevent"] = "timed",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["realSpellName"] = "Impale",
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["useAffected"] = true,
						["use_aggro"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "AIR BURST",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "USE TEAR",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = false,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [3]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
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
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [4]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Serpentshrine Cavern",
				["use_zoneIds"] = true,
				["encounterid"] = "622",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136116,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Archimonde - Air Burst",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "CxBZZ8E5RjP",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "expirationTime",
						["value"] = "1.5",
					},
					["changes"] = {
						{
							["property"] = "sub.2.text_visible",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.3.text_visible",
						}, -- [2]
						{
							["value"] = true,
							["property"] = "sub.4.glow",
						}, -- [3]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["德莱尼天赋"] = {
			["iconSource"] = -1,
			["wagoID"] = "nsp7fsMNg",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 156.33,
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
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 28880,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["realSpellName"] = "那魯的祝福",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 19,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["use_race"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["single"] = "Draenei",
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "老雷增强萨WA",
			["regionType"] = "icon",
			["icon"] = true,
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
			["information"] = {
			},
			["cooldownTextDisabled"] = false,
			["uid"] = "LTd99VdNOdc",
			["zoom"] = 0,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "德莱尼天赋",
			["frameStrata"] = 3,
			["alpha"] = 1,
			["width"] = 40,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = 114.68,
			["conditions"] = {
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
							["value"] = 0.8,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "",
		},
		["Council - Reflective Shield"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Sound\\Interface\\RaidWarning.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = 41426,
						["auranames"] = {
							"41475", -- [1]
						},
						["use_genericShowOn"] = true,
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_DAMAGE",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_eventtype"] = true,
						["use_aggro"] = true,
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["duration"] = "40",
						["type"] = "aura2",
						["auraspellids"] = {
							"41475", -- [1]
						},
						["unevent"] = "timed",
						["realSpellName"] = "Impale",
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = false,
						["unit"] = "target",
						["group_countOperator"] = ">",
						["useAffected"] = true,
						["useExactSpellId"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "DMG REFLECT",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "608",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135940,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Council - Reflective Shield",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "BDkBcUJ8ub5",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Gorefiend - Incinerate"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\BigWigs\\Media\\Sounds\\Alarm.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "22841",
						["spellId"] = "42023",
						["auranames"] = {
							"40239", -- [1]
						},
						["use_genericShowOn"] = true,
						["message_operator"] = "find('%s')",
						["destUnit"] = "player",
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["use_eventtype"] = true,
						["percenthealth"] = "100",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "Supremus punches the ground in anger",
						["use_spellId"] = true,
						["sourceNpcId"] = "",
						["useAffected"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["subeventSuffix"] = "",
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["spellName"] = "Intangible Presence",
						["use_sourceNpcId"] = false,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["duration"] = "3",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["names"] = {
						},
						["use_unit"] = true,
						["use_destName"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["type"] = "aura2",
						["percenthealth_operator"] = "<",
						["unevent"] = "timed",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Intangible Presence",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["subeventPrefix"] = "PARTY_KILL",
						["use_message"] = true,
						["use_percenthealth"] = true,
						["use_messageType"] = false,
						["useExactSpellId"] = false,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(trigger)\n    return (trigger[1] and trigger[2]) or trigger[3]    \nend\n\n\n",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "DISPELL",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "604",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135789,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Gorefiend - Incinerate",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "j)u6Ihlg4o)",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Council - Circle of Healing Melee"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Sound\\Interface\\RaidWarning.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = 41455,
						["auranames"] = {
							"41475", -- [1]
						},
						["use_genericShowOn"] = true,
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_DAMAGE",
						["event"] = "Cast",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_eventtype"] = true,
						["use_aggro"] = true,
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["duration"] = "40",
						["type"] = "unit",
						["auraspellids"] = {
						},
						["unevent"] = "timed",
						["realSpellName"] = "Impale",
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["unit"] = "target",
						["group_countOperator"] = ">",
						["useAffected"] = true,
						["useExactSpellId"] = false,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				{
					["trigger"] = {
						["useName"] = true,
						["auranames"] = {
							"41450", -- [1]
						},
						["unit"] = "target",
						["matchesShowOn"] = "showOnMissing",
						["type"] = "aura2",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "INTERRUPT",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_class"] = false,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["encounterid"] = "608",
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["DRUID"] = true,
						["WARRIOR"] = true,
						["ROGUE"] = true,
					},
				},
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135943,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Council - Circle of Healing Melee",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "rzITpiWRf5)",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Consume item"] = {
			["outline"] = "OUTLINE",
			["iconSource"] = -1,
			["wagoID"] = "HkMcSSN7q",
			["authorOptions"] = {
			},
			["displayText"] = "%i %p %c\n",
			["customText"] = "\n\n",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/HkMcSSN7q/4",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "stateupdate",
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["customDuration"] = "\nfunction()\n    local reqAmount = aura_env.config[\"reqAmount\"]\n    local currentAmount = GetItemCount(\"Free Action Potion\",false,false)\n    local result = 0\n    if (currentAmount >= reqAmount) then\n        result =1\n    end\n    \n    return result, 1,1\nend",
						["spellIds"] = {
						},
						["events"] = "BAG_UPDATE",
						["names"] = {
						},
						["check"] = "event",
						["custom"] = "function(allstates, event, ...)\n    \n    local consumes = aura_env.evool.consumes\n    \n    \n    for consume,reqAmount in pairs(consumes) do\n        \n        --print(consume, reqAmount)\n        allstates[consume] = allstates[consume] or {} -- error checking\n        \n        local state = allstates[consume]\n        \n        \n        \n        local name, _, _, _, _, _, _, _,_, icon = GetItemInfo(consume)\n        local currentAmount = GetItemCount(consume,false,false)\n        \n        state.name = name\n        state.icon = icon\n        state.progressType = 'static'\n        state.value = currentAmount\n        state.total = reqAmount\n        state.autoHide = true\n        state.show = true\n        if(reqAmount <= 0) then\n            state.show =false\n        end\n        state.glow =true\n        state.completed = currentAmount >= reqAmount\n        \n        state.index = name\n        state.changed = true\n    end\n    \n    return true\nend",
						["unit"] = "player",
						["customVariables"] = "{\n    completed = \"bool\"\n\n}",
					},
					["untrigger"] = {
						["custom"] = "function()\n    local reqAmount = aura_env.config[\"reqAmount\"]\n    return reqAmount <= 0\nend",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function()\nreturn true\nend\n",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 51,
			["keepAspectRatio"] = false,
			["wordWrap"] = "WordWrap",
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["version"] = 4,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%n %p/%t",
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "LEFT",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_t_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_t_format"] = "timed",
					["text_text_format_t_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_precision"] = 1,
					["type"] = "subtext",
					["text_anchorXOffset"] = 10,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_text_format_p_time_format"] = 0,
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_RIGHT",
					["text_text_format_n_format"] = "none",
					["text_text_format_t_time_precision"] = 1,
					["text_fontSize"] = 15,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["anchorXOffset"] = 0,
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "√",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = -10,
					["text_color"] = {
						0, -- [1]
						1, -- [2]
						0.13333333333333, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "LEFT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [3]
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
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [4]
			},
			["height"] = 24,
			["load"] = {
				["ingroup"] = {
					["single"] = "raid",
					["multi"] = {
						["raid"] = true,
					},
				},
				["use_never"] = false,
				["talent"] = {
					["single"] = 58,
					["multi"] = {
						[58] = true,
					},
				},
				["zoneIds"] = "",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["zone"] = "奧格瑪",
				["use_zone"] = true,
				["use_class"] = true,
				["use_spellknown"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_level"] = true,
				["level_operator"] = ">",
				["level"] = "55",
				["spellknown"] = 1953,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["justify"] = "LEFT",
			["parent"] = "NAXX 狂暴战 药剂清单",
			["fontSize"] = 13,
			["automaticWidth"] = "Auto",
			["cooldownEdge"] = false,
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">=",
						["value"] = 1,
						["variable"] = "completed",
					},
					["changes"] = {
						{
							["value"] = "Pixel",
							["property"] = "sub.4.glowType",
						}, -- [1]
						{
							["value"] = {
								0.11764705882353, -- [1]
								1, -- [2]
								0.24313725490196, -- [3]
								1, -- [4]
							},
							["property"] = "sub.2.text_color",
						}, -- [2]
						{
							["value"] = false,
							["property"] = "sub.4.glow",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "sub.3.text_visible",
						}, -- [4]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "completed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = "Pixel",
							["property"] = "sub.4.glowType",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								0.18823529411765, -- [2]
								0.16470588235294, -- [3]
								1, -- [4]
							},
							["property"] = "sub.2.text_color",
						}, -- [2]
						{
							["value"] = true,
							["property"] = "sub.4.glow",
						}, -- [3]
					},
				}, -- [2]
			},
			["xOffset"] = 5,
			["preferToUpdate"] = false,
			["regionType"] = "icon",
			["uid"] = "eCxiQXRjR4L",
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "slidebottom",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "spiralandpulse",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["width"] = 24,
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.3",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 20504,
			["id"] = "Consume item",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.evool ={}\naura_env.evool.consumes={    \n    [22854] = 5,\n    [22831]=40,\n    [9224]=40,\n    [32062]=40,\n    [27503]=40,\n    [28421]=20,\n    [33092]=40,\n    [27658]=40,\n    [22838]=15 --加速藥水\n    \n    \n}",
					["do_custom"] = true,
				},
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["useTooltip"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "TOP",
		},
		["Anetheron - Inferno"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "{rt7} INFERNAL ON %c {rt7}",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = true,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "31299",
						["auranames"] = {
							"31298", -- [1]
						},
						["duration"] = "3",
						["destUnit"] = "player",
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["useExactSpellId"] = false,
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "I will not be touched by rabble such as you",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["useIgnoreName"] = false,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_aggro"] = true,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["use_eventtype"] = true,
						["spellName"] = "",
						["use_status"] = false,
						["use_genericShowOn"] = true,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
							"41917", -- [1]
						},
						["useName"] = true,
						["realSpellName"] = "Impale",
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["unit"] = "player",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["type"] = "combatlog",
						["use_message"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "INFERNAL",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "619",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136219,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Anetheron - Inferno",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "JoTGdhSshM2",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Tems' BT/MH Pack"] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
				"BT - L5 Arcane Charge", -- [1]
				"BT - Rain of Chaos", -- [2]
				"BT - Flamestrike", -- [3]
				"BT - Harpooner's Mark", -- [4]
				"BT - Electric Spur", -- [5]
				"BT - Cyclone Totem", -- [6]
				"BT - Fixate", -- [7]
				"BT - Ice Trap", -- [8]
				"BT - Silencing Shot", -- [9]
				"BT - Whirlwind", -- [10]
				"BT - Shell of Pain", -- [11]
				"BT - Shell of Life", -- [12]
				"BT - Chaotic Light", -- [13]
				"BT - Whirling Blade", -- [14]
				"BT/MH - Frenzy", -- [15]
				"BT - Curses", -- [16]
				"BT - Death Coil", -- [17]
				"BT - Fear", -- [18]
				"BT - Cloud of Disease", -- [19]
				"BT - Stun Effects", -- [20]
				"BT - Sunder Armor", -- [21]
				"BT - Mortal Wound", -- [22]
				"MH - Banshee Curse", -- [23]
				"MH - Anti Magic Shell", -- [24]
				"Naj'entus - Impaling Spine", -- [25]
				"Naj'entus - Tidal Shield", -- [26]
				"Naj'entus - Missing MS", -- [27]
				"Supremus - Fixate", -- [28]
				"Supremus - Molten Flame", -- [29]
				"Supremus - Volcanic Geyser", -- [30]
				"Supremus - Phase 1", -- [31]
				"Supremus - Phase 2", -- [32]
				"Akama - Rain of Fire", -- [33]
				"Akama - Interrupts", -- [34]
				"Akama - Debilitating Poison", -- [35]
				"Gorefiend - Shadow of Death", -- [36]
				"Gorefiend - Crushing Shadows", -- [37]
				"Gorefiend - Incinerate", -- [38]
				"Gurtogg - Bloodboil", -- [39]
				"Gurtogg - Acidic Wound", -- [40]
				"Gurtogg - Bewildering Strike", -- [41]
				"Gurtogg - Fel Rage", -- [42]
				"Reliquary - Frenzy", -- [43]
				"Reliquary - Spirit Shock", -- [44]
				"Reliquary - Rune Shield", -- [45]
				"Reliquary - Deaden", -- [46]
				"Reliquary - Spite", -- [47]
				"Reliquary - Seethe", -- [48]
				"Reliquary - Soul Drain", -- [49]
				"Reliquary - Active Boss", -- [50]
				"Shahraz - Fatal Left", -- [51]
				"Shahraz - Fatal Right", -- [52]
				"Shahraz - Fatal Forward", -- [53]
				"Shahraz - Fatal Attraction", -- [54]
				"Shahraz - Prismatic Aura", -- [55]
				"Council - Judgement", -- [56]
				"Council - Dampen Magic", -- [57]
				"Council - Blizzard", -- [58]
				"Council - Flamestrike", -- [59]
				"Council - Consecration", -- [60]
				"Council - Arcane Explosion", -- [61]
				"Council - Blessings", -- [62]
				"Council - Circle of Healing Melee", -- [63]
				"Council - Circle of Healing Ranged", -- [64]
				"Council - Reflective Shield", -- [65]
				"Council - Hammer of Justice", -- [66]
				"Council - Auras", -- [67]
				"Illidan - Demon Within", -- [68]
				"Illidan - Uncaged Wrath", -- [69]
				"Illidan - Shear", -- [70]
				"Illidan - Enrage", -- [71]
				"Illidan - Flame Crash", -- [72]
				"Illidan - Blaze", -- [73]
				"Illidan - Aura of the Dead", -- [74]
				"Illidan - Dark Barrage", -- [75]
				"Illidan - Parastic Shadowfiend", -- [76]
				"Illidan - Shadow Demon", -- [77]
				"Illidan - Phase 2", -- [78]
				"Illidan - Shadow Prison", -- [79]
				"Winterchill - Death and Decay", -- [80]
				"Winterchill - Icebolt", -- [81]
				"Winterchill - Frost Nova", -- [82]
				"Anetheron - Inferno", -- [83]
				"Anetheron - Carrion Swarm", -- [84]
				"Anetheron - Sleep", -- [85]
				"Kazrogal - Mark of Kazrogal", -- [86]
				"Kazrogal - Cripple", -- [87]
				"Kazrogal - War Stomp", -- [88]
				"Azgalor - Rain of Fire", -- [89]
				"Azgalor - Howl of Azgalor", -- [90]
				"Azgalor - Doom", -- [91]
				"Archimonde - Air Burst", -- [92]
				"Archimonde - Air Burst Cast", -- [93]
				"Archimonde - Grip of the Legion", -- [94]
				"Archimonde - Doomfire", -- [95]
				"Archimonde - Fear", -- [96]
				"Archimonde - Soul Charge", -- [97]
				"Archimonde - Phase 2", -- [98]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["groupIcon"] = 136172,
			["gridType"] = "RD",
			["fullCircle"] = true,
			["space"] = 5,
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
			["radius"] = 200,
			["useLimit"] = false,
			["align"] = "CENTER",
			["stagger"] = 0,
			["version"] = 7,
			["subRegions"] = {
			},
			["limit"] = 5,
			["borderInset"] = 1,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
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
			["yOffset"] = 121.126953125,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["animate"] = true,
			["xOffset"] = -532.2318522135416,
			["scale"] = 0.75,
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
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["anchorPoint"] = "CENTER",
			["arcLength"] = 360,
			["constantFactor"] = "RADIUS",
			["internalVersion"] = 51,
			["borderOffset"] = 4,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Tems' BT/MH Pack",
			["frameStrata"] = 1,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["uid"] = "ZYZYm395YYF",
			["rowSpace"] = 1,
			["rotation"] = 0,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "LEFT",
		},
		["Akama - Debilitating Poison"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "{rt7} POISON ON %c {rt7}",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = true,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "18806",
						["spellId"] = "42023",
						["auranames"] = {
							"41978", -- [1]
						},
						["use_genericShowOn"] = true,
						["message_operator"] = "find('%s')",
						["destUnit"] = "player",
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["use_eventtype"] = true,
						["percenthealth"] = "20",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "Supremus punches the ground in anger",
						["use_spellId"] = true,
						["sourceNpcId"] = "",
						["useAffected"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["subeventSuffix"] = "_DAMAGE",
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["spellName"] = "Intangible Presence",
						["use_sourceNpcId"] = false,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["duration"] = "3",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["names"] = {
						},
						["use_unit"] = true,
						["use_destName"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["type"] = "aura2",
						["percenthealth_operator"] = "<=",
						["unevent"] = "timed",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Intangible Presence",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_message"] = true,
						["use_percenthealth"] = true,
						["use_messageType"] = false,
						["useExactSpellId"] = false,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(trigger)\n    return (trigger[1] and trigger[2]) or trigger[3]    \nend\n\n\n",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "POISONED",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "603",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 132274,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Akama - Debilitating Poison",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "xS3)hqzWBmH",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["平砍重置 2.7+2.6  Never public"] = {
			["sparkWidth"] = 20,
			["iconSource"] = -1,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 526.0005493164062,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["url"] = "",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
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
				0, -- [1]
				0.4392156862745098, -- [2]
				0.8705882352941177, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["difficulty"] = {
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
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["texture"] = "TC2 Default",
			["zoom"] = 0,
			["spark"] = true,
			["tocversion"] = 20501,
			["alpha"] = 1,
			["uid"] = "OIK)UQULGha",
			["sparkOffsetX"] = 0,
			["customText"] = "function()\n    local t1 =  WeakAuras.GetTriggerStateForTrigger(aura_env.id, 1)\n    local t3 =  WeakAuras.GetTriggerStateForTrigger(aura_env.id, 3)\n    if (t1 and t3  and t1[\"\"] and t3[\"\"]) then\n        if (t1[\"\"].expirationTime >= t3[\"\"].expirationTime) then\n            return  t1[\"\"].expirationTime - t3[\"\"].expirationTime\n        else \n            return  0\n        end\n    end\nend",
			["sparkRotationMode"] = "AUTO",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["genericShowOn"] = "showOnActive",
						["duration"] = "1",
						["event"] = "Swing Timer",
						["unit"] = "player",
						["use_unit"] = true,
						["names"] = {
						},
						["spellIds"] = {
						},
						["use_hand"] = true,
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["hand"] = "main",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["event"] = "Conditions",
						["names"] = {
						},
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["unevent"] = "auto",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "unit",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Swing Timer",
						["use_unit"] = true,
						["use_hand"] = true,
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["hand"] = "off",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["hand"] = "off",
					},
				}, -- [3]
				{
					["trigger"] = {
						["use_amount"] = false,
						["duration"] = "3",
						["subeventPrefix"] = "SPELL",
						["spellName"] = "风怒攻击",
						["type"] = "combatlog",
						["subeventSuffix"] = "_DAMAGE",
						["unit"] = "player",
						["use_unit"] = true,
						["event"] = "Combat Log",
						["use_sourceName"] = false,
						["unevent"] = "auto",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["names"] = {
						},
						["use_destUnit"] = false,
						["sourceUnit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
			["useAdjustedMin"] = false,
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
			["backdropInFront"] = false,
			["stickyDuration"] = false,
			["version"] = 15,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = " %p",
					["text_text_format_3.p_time_format"] = 0,
					["rotateText"] = "NONE",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_t_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["text_text_format_3.p_time_precision"] = 1,
					["text_text_format_t_format"] = "timed",
					["text_text_format_t_time_precision"] = 1,
					["text_shadowXOffset"] = 1,
					["type"] = "subtext",
					["text_text_format_t_time_dynamic_threshold"] = 60,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "伤害数字",
					["text_text_format_3.p_format"] = "timed",
					["text_shadowYOffset"] = -1,
					["text_text_format_3.p_time_dynamic_threshold"] = 60,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_time_format"] = 0,
					["text_fontSize"] = 30,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
				}, -- [3]
				{
					["border_size"] = 1,
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["text_color"] = {
					},
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "1 Pixel",
					["border_offset"] = 1,
				}, -- [4]
			},
			["height"] = 5,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["useAdjustedMax"] = false,
			["borderBackdrop"] = "None",
			["borderInFront"] = true,
			["xOffset"] = -5.900146484375,
			["icon_side"] = "LEFT",
			["customTextUpdate"] = "update",
			["backgroundColor"] = {
				0.31764705882353, -- [1]
				0.22745098039216, -- [2]
				0.16862745098039, -- [3]
				0.60000002384186, -- [4]
			},
			["sparkHeight"] = 50,
			["icon"] = false,
			["config"] = {
			},
			["id"] = "平砍重置 2.7+2.6  Never public",
			["semver"] = "1.0.14",
			["backdropColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["sparkHidden"] = "NEVER",
			["width"] = 5,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["auto"] = true,
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL_INVERSE",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 4,
								["op"] = ">",
								["variable"] = "expirationTime",
								["value"] = "0",
							}, -- [1]
							{
								["trigger"] = 4,
								["variable"] = "expirationTime",
								["value"] = "0.9",
								["op"] = "<=",
							}, -- [2]
							{
								["trigger"] = 3,
								["op"] = "==",
								["variable"] = "expirationTime",
								["value"] = "0.9",
							}, -- [3]
							{
								["trigger"] = 1,
								["variable"] = "expirationTime",
								["value"] = "0.9",
								["op"] = ">",
							}, -- [4]
							{
								["trigger"] = 1,
								["variable"] = "expirationTime",
								["value"] = "1.3",
								["op"] = "<=",
							}, -- [5]
						},
					},
					["changes"] = {
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
								["sound_path"] = "H:\\World of Warcraft Classic\\World of Warcraft Classic 1.13.2.31687\\World of Warcraft\\_classic_\\Interface\\AddOns\\DBM-VPYike\\count\\1.ogg",
								["sound_channel"] = "Dialog",
							},
							["property"] = "sound",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 4,
								["op"] = ">",
								["value"] = "0",
								["variable"] = "expirationTime",
							}, -- [1]
							{
								["trigger"] = 4,
								["variable"] = "expirationTime",
								["op"] = "<=",
								["value"] = "0.9",
							}, -- [2]
							{
								["trigger"] = 3,
								["op"] = "==",
								["value"] = "0.9",
								["variable"] = "expirationTime",
							}, -- [3]
							{
								["trigger"] = 1,
								["variable"] = "expirationTime",
								["op"] = ">",
								["value"] = "1.3",
							}, -- [4]
							{
								["trigger"] = 1,
								["variable"] = "expirationTime",
								["op"] = "<=",
								["value"] = "1.8",
							}, -- [5]
						},
					},
					["changes"] = {
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\swordecho.ogg",
								["sound_channel"] = "Dialog",
							},
							["property"] = "sound",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 4,
								["op"] = ">",
								["value"] = 0,
								["variable"] = "show",
							}, -- [1]
							{
								["trigger"] = 3,
								["op"] = "==",
								["value"] = "0.9",
								["variable"] = "expirationTime",
							}, -- [2]
							{
								["trigger"] = 1,
								["variable"] = "expirationTime",
								["op"] = ">",
								["value"] = "0.9",
							}, -- [3]
							{
								["trigger"] = 1,
								["variable"] = "expirationTime",
								["op"] = "<=",
								["value"] = "1.3",
							}, -- [4]
						},
					},
					["changes"] = {
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
								["sound_channel"] = "Dialog",
							},
							["property"] = "sound",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 4,
								["op"] = ">",
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 3,
								["op"] = "==",
								["variable"] = "expirationTime",
								["value"] = "0.9",
							}, -- [2]
							{
								["trigger"] = 1,
								["variable"] = "expirationTime",
								["value"] = "1.3",
								["op"] = ">",
							}, -- [3]
							{
								["trigger"] = 1,
								["variable"] = "expirationTime",
								["value"] = "1.8",
								["op"] = "<=",
							}, -- [4]
						},
					},
					["changes"] = {
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\swordecho.ogg",
								["sound_channel"] = "Dialog",
							},
							["property"] = "sound",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
		},
		["Azgalor - Howl of Azgalor"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\BigWigs\\Media\\Sounds\\Alarm.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = 40832,
						["auranames"] = {
							"31344", -- [1]
						},
						["duration"] = "5",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["useExactSpellId"] = false,
						["event"] = "Chat Message",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "I will not be touched by rabble such as you",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["useIgnoreName"] = false,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["use_eventtype"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["useName"] = true,
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
							"41917", -- [1]
						},
						["type"] = "aura2",
						["use_npcId"] = false,
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["use_message"] = true,
						["subeventSuffix"] = "_DAMAGE",
						["useAffected"] = true,
						["group_countOperator"] = ">",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "SILENCED",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "621",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136164,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Azgalor - Howl of Azgalor",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "kQAFDY8jUsL",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["主手"] = {
			["sparkWidth"] = 10,
			["iconSource"] = -1,
			["authorOptions"] = {
			},
			["adjustedMax"] = "3",
			["yOffset"] = 129,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["url"] = "",
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
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["single"] = 52,
					["multi"] = {
						[52] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
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
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
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
				["zoneIds"] = "",
			},
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["texture"] = "0101",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["tocversion"] = 20502,
			["alpha"] = 1,
			["config"] = {
			},
			["displayIcon"] = 132223,
			["sparkOffsetX"] = 0,
			["parent"] = "老雷增强萨WA",
			["sparkRotationMode"] = "AUTO",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["unit"] = "player",
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["duration"] = "1",
						["event"] = "Swing Timer",
						["spellIds"] = {
						},
						["use_hand"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["hand"] = "main",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Conditions",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["unit"] = "player",
						["genericShowOn"] = "showOnActive",
						["use_absorbMode"] = true,
						["subeventSuffix"] = "_CAST_START",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
			["backdropInFront"] = false,
			["stickyDuration"] = false,
			["version"] = 17,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
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
					["text_font"] = "聊天",
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_shadowYOffset"] = -1,
					["text_text_format_p_time_format"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_LEFT",
					["text_text_format_p_format"] = "timed",
					["text_fontType"] = "None",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_n_format"] = "none",
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%n",
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
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_text_format_n_format"] = "none",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
			},
			["height"] = 15,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["anchorFrameFrame"] = "WeakAuras:Windfury ICD",
			["borderBackdrop"] = "None",
			["borderInFront"] = true,
			["xOffset"] = 0,
			["icon_side"] = "LEFT",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["sparkHeight"] = 30,
			["anchorFrameParent"] = true,
			["useAdjustededMax"] = true,
			["zoom"] = 0,
			["semver"] = "1.0.16",
			["anchorFrameType"] = "SELECTFRAME",
			["id"] = "主手",
			["sparkHidden"] = "NEVER",
			["frameStrata"] = 1,
			["width"] = 300,
			["auto"] = true,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["value"] = "0.55",
						["variable"] = "expirationTime",
					},
					["changes"] = {
						{
							["value"] = {
								0.7607843137254902, -- [1]
								0, -- [2]
								0.00392156862745098, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
						{
							["property"] = "sparkColor",
						}, -- [2]
					},
				}, -- [1]
			},
			["information"] = {
			},
			["uid"] = "oUfhcpmfEuG",
		},
		["Council - Arcane Explosion"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = false,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "18806",
						["spellId"] = 33387,
						["auranames"] = {
							"34322", -- [1]
						},
						["duration"] = "5",
						["message_operator"] = "find('%s')",
						["destUnit"] = "player",
						["amount"] = "0",
						["group_count"] = "0",
						["range_operator"] = "<=",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["use_eventtype"] = true,
						["useAffected"] = true,
						["percenthealth"] = "20",
						["event"] = "Range Check",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "Thaladred the Darkener sets eyes on",
						["use_spellId"] = true,
						["use_messageType"] = false,
						["use_range"] = true,
						["spellName"] = "Intangible Presence",
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_aggro"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["range"] = "10",
						["subeventPrefix"] = "SPELL",
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "target",
						["names"] = {
						},
						["use_threatUnit"] = true,
						["realSpellName"] = "Intangible Presence",
						["useExactSpellId"] = false,
						["use_sourceNpcId"] = false,
						["use_destName"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["use_unit"] = true,
						["type"] = "unit",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["use_message"] = true,
						["use_percenthealth"] = true,
						["percenthealth_operator"] = "<=",
						["sourceNpcId"] = "",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				{
					["trigger"] = {
						["npcId"] = "22950",
						["spellId"] = 33387,
						["auranames"] = {
							"34322", -- [1]
						},
						["use_genericShowOn"] = true,
						["message_operator"] = "find('%s')",
						["destUnit"] = "player",
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["use_eventtype"] = true,
						["percenthealth"] = "0",
						["event"] = "Health",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "Thaladred the Darkener sets eyes on",
						["use_spellId"] = true,
						["sourceNpcId"] = "",
						["useAffected"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["spellName"] = "Intangible Presence",
						["use_sourceNpcId"] = false,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "target",
						["duration"] = "5",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["names"] = {
						},
						["use_unit"] = true,
						["use_destName"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["type"] = "unit",
						["percenthealth_operator"] = ">",
						["unevent"] = "timed",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Intangible Presence",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_message"] = true,
						["use_percenthealth"] = true,
						["use_messageType"] = false,
						["useExactSpellId"] = false,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "MOVE AWAY",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "608",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136116,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Council - Arcane Explosion",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "kEvlWqUCcc9",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Illidan - Dark Barrage"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Sound\\Interface\\RaidWarning.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "40585",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "3",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "40585",
						["auranames"] = {
							"40585", -- [1]
						},
						["duration"] = "3",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "",
						["showClones"] = false,
						["useExactSpellId"] = false,
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "I will not be touched by rabble such as you",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["useIgnoreName"] = false,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["use_eventtype"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["useName"] = true,
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
							"41917", -- [1]
						},
						["type"] = "aura2",
						["use_npcId"] = false,
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["use_message"] = true,
						["subeventSuffix"] = "_CAST_START",
						["useAffected"] = true,
						["group_countOperator"] = ">",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "BARRAGE INC",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "DEFENSIVES",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [3]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
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
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [4]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "609",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136181,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Illidan - Dark Barrage",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "6Jr0cbflyO8",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
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
							["property"] = "sub.2.text_visible",
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
							["property"] = "sub.3.text_visible",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.4.glow",
						}, -- [2]
						{
							["value"] = {
								["message"] = "{rt7} BARRAGE ON %c ! HEAL ME {rt7}",
								["custom"] = "function() return UnitName(\"player\") end",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [3]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["BT - Cloud of Disease"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = true,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\BigWigs\\Media\\Sounds\\Alarm.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "41061",
						["auranames"] = {
							"41193", -- [1]
						},
						["use_genericShowOn"] = true,
						["destUnit"] = "player",
						["amount"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_DAMAGE",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_aggro"] = true,
						["unit"] = "player",
						["useExactSpellId"] = false,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["useName"] = true,
						["duration"] = "3",
						["unevent"] = "timed",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"38215", -- [1]
						},
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_unit"] = true,
						["useAffected"] = true,
						["use_eventtype"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "MOVE OUT",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["use_zone"] = false,
				["encounterid"] = "2458",
				["zone"] = "Serpentshrine Cavern",
				["use_encounter"] = false,
				["use_zoneIds"] = true,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136006,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "BT - Cloud of Disease",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "CsTpOXwIgBC",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["小喵-T6-BT-阿克蒙德-女神之泪"] = {
			["iconSource"] = -1,
			["wagoID"] = "NFPtZZFKQ",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 148.8888549804688,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/NFPtZZFKQ/8",
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
						["type"] = "item",
						["use_count"] = true,
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["use_itemName"] = true,
						["unit"] = "player",
						["itemName"] = 24494,
						["event"] = "Item Count",
						["count"] = "0",
						["names"] = {
						},
						["genericShowOn"] = "showOnCooldown",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["count_operator"] = "==",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["npcId"] = "17968",
						["type"] = "unit",
						["unit"] = "target",
						["use_unit"] = true,
						["use_npcId"] = true,
						["use_unitisunit"] = false,
						["event"] = "Unit Characteristics",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "alphaPulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 8,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["glow"] = true,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_text_format_p_time_format"] = 0,
					["text_text"] = "未领取 女神之泪",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_color"] = {
						1, -- [1]
						0, -- [2]
						0.054901960784314, -- [3]
						1, -- [4]
					},
					["text_font"] = "聊天",
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_shadowYOffset"] = 0,
					["text_shadowXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_visible"] = true,
					["text_text_format_p_time_precision"] = 1,
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_anchorYOffset"] = -5,
				}, -- [3]
			},
			["height"] = 60,
			["load"] = {
				["ingroup"] = {
				},
				["use_encounter"] = true,
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
				["use_encounterid"] = true,
				["encounterid"] = "622",
				["use_zone"] = false,
				["use_never"] = false,
				["zone"] = "暗夜精灵村庄, 诺达希尔",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_alive"] = true,
				["use_zoneIds"] = false,
				["zoneIds"] = "329",
			},
			["parent"] = "小喵-T6-BT-阿克蒙德-空气爆裂",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["xOffset"] = 84.4447021484375,
			["icon"] = true,
			["information"] = {
			},
			["cooldownTextDisabled"] = false,
			["uid"] = "SZ0L)MatN(h",
			["zoom"] = 0,
			["semver"] = "1.0.7",
			["tocversion"] = 20504,
			["id"] = "小喵-T6-BT-阿克蒙德-女神之泪",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 60,
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["cooldownEdge"] = false,
			["conditions"] = {
			},
			["cooldown"] = false,
			["selfPoint"] = "CENTER",
		},
		["BT - L5 Arcane Charge"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "20036",
						["spellId"] = 41360,
						["auranames"] = {
							"35035", -- [1]
						},
						["use_genericShowOn"] = true,
						["amount"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cast",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_nameplateType"] = false,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "nameplate",
						["use_eventtype"] = true,
						["useExactSpellId"] = false,
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["type"] = "unit",
						["duration"] = "2",
						["unevent"] = "timed",
						["use_npcId"] = false,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"38626", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["useAffected"] = true,
						["use_aggro"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "HEAL %1.destName",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["use_zone"] = false,
				["encounterid"] = "2458",
				["zone"] = "Serpentshrine Cavern",
				["use_encounter"] = false,
				["use_zoneIds"] = true,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135734,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "BT - L5 Arcane Charge",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "l85HZdNQqsF",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["BT - Rain of Chaos"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = true,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\BigWigs\\Media\\Sounds\\Alarm.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "38976",
						["auranames"] = {
							"40946", -- [1]
						},
						["duration"] = "8",
						["amount"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["use_eventtype"] = true,
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_aggro"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["unit"] = "player",
						["useExactSpellId"] = false,
						["use_genericShowOn"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["useName"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_status"] = false,
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_unit"] = true,
						["useAffected"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "40946",
						["auranames"] = {
							"40946", -- [1]
						},
						["use_genericShowOn"] = true,
						["destUnit"] = "player",
						["amount"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_DAMAGE",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_aggro"] = true,
						["unit"] = "player",
						["useExactSpellId"] = false,
						["debuffType"] = "HARMFUL",
						["type"] = "combatlog",
						["useName"] = true,
						["duration"] = "3",
						["unevent"] = "timed",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"38215", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["useAffected"] = true,
						["use_eventtype"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [2]
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "40946",
						["auranames"] = {
							"40946", -- [1]
						},
						["use_genericShowOn"] = true,
						["destUnit"] = "player",
						["amount"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_DAMAGE",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_aggro"] = true,
						["unit"] = "player",
						["useExactSpellId"] = false,
						["debuffType"] = "HARMFUL",
						["type"] = "combatlog",
						["useName"] = true,
						["duration"] = "3",
						["unevent"] = "timed",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"38215", -- [1]
						},
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_unit"] = true,
						["useAffected"] = true,
						["use_eventtype"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "MOVE OUT",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["use_zone"] = false,
				["encounterid"] = "2458",
				["zone"] = "Serpentshrine Cavern",
				["use_encounter"] = false,
				["use_zoneIds"] = true,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135804,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "BT - Rain of Chaos",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "un3mC5d89mF",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Winterchill - Frost Nova"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\BigWigs\\Media\\Sounds\\Alarm.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = 40832,
						["auranames"] = {
							"31250", -- [1]
						},
						["duration"] = "5",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["useExactSpellId"] = false,
						["event"] = "Chat Message",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "I will not be touched by rabble such as you",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["useIgnoreName"] = false,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["use_eventtype"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["useName"] = true,
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
							"41917", -- [1]
						},
						["type"] = "aura2",
						["use_npcId"] = false,
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["use_message"] = true,
						["subeventSuffix"] = "_DAMAGE",
						["useAffected"] = true,
						["group_countOperator"] = ">",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "DISPELL",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "618",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135848,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Winterchill - Frost Nova",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "CSyC9OQecTl",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["BT - Flamestrike"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = true,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\BigWigs\\Media\\Sounds\\Alarm.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "38976",
						["auranames"] = {
							"41481", -- [1]
						},
						["duration"] = "8",
						["amount"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["use_eventtype"] = true,
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_aggro"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["unit"] = "player",
						["useExactSpellId"] = false,
						["use_genericShowOn"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["useName"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_status"] = false,
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_unit"] = true,
						["useAffected"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "41481",
						["auranames"] = {
							"40946", -- [1]
						},
						["use_genericShowOn"] = true,
						["destUnit"] = "player",
						["amount"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_DAMAGE",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_aggro"] = true,
						["unit"] = "player",
						["useExactSpellId"] = false,
						["debuffType"] = "HARMFUL",
						["type"] = "combatlog",
						["useName"] = true,
						["duration"] = "3",
						["unevent"] = "timed",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"38215", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["useAffected"] = true,
						["use_eventtype"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [2]
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "41481",
						["auranames"] = {
							"40946", -- [1]
						},
						["use_genericShowOn"] = true,
						["destUnit"] = "player",
						["amount"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_DAMAGE",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_aggro"] = true,
						["unit"] = "player",
						["useExactSpellId"] = false,
						["debuffType"] = "HARMFUL",
						["type"] = "combatlog",
						["useName"] = true,
						["duration"] = "3",
						["unevent"] = "timed",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"38215", -- [1]
						},
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_unit"] = true,
						["useAffected"] = true,
						["use_eventtype"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [3]
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "41379",
						["auranames"] = {
							"40946", -- [1]
						},
						["use_genericShowOn"] = true,
						["destUnit"] = "player",
						["amount"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_DAMAGE",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_aggro"] = true,
						["unit"] = "player",
						["useExactSpellId"] = false,
						["debuffType"] = "HARMFUL",
						["type"] = "combatlog",
						["useName"] = true,
						["duration"] = "3",
						["unevent"] = "timed",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"38215", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["useAffected"] = true,
						["use_eventtype"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [4]
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "41379",
						["auranames"] = {
							"40946", -- [1]
						},
						["use_genericShowOn"] = true,
						["destUnit"] = "player",
						["amount"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_DAMAGE",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_aggro"] = true,
						["unit"] = "player",
						["useExactSpellId"] = false,
						["debuffType"] = "HARMFUL",
						["type"] = "combatlog",
						["useName"] = true,
						["duration"] = "3",
						["unevent"] = "timed",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"38215", -- [1]
						},
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_unit"] = true,
						["useAffected"] = true,
						["use_eventtype"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [5]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "MOVE OUT",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["use_zone"] = false,
				["encounterid"] = "2458",
				["zone"] = "Serpentshrine Cavern",
				["use_encounter"] = false,
				["use_zoneIds"] = true,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135826,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "BT - Flamestrike",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "E7rKMNiLyoS",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Kazrogal - Mark of Kazrogal"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\BigWigs\\Media\\Sounds\\Alarm.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = 40832,
						["auranames"] = {
							"31447", -- [1]
						},
						["duration"] = "5",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["useExactSpellId"] = false,
						["event"] = "Chat Message",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "I will not be touched by rabble such as you",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["useIgnoreName"] = false,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["use_eventtype"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["useName"] = true,
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
							"41917", -- [1]
						},
						["type"] = "aura2",
						["use_npcId"] = false,
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["use_message"] = true,
						["subeventSuffix"] = "_DAMAGE",
						["useAffected"] = true,
						["group_countOperator"] = ">",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				{
					["trigger"] = {
						["powertype"] = 0,
						["unit"] = "player",
						["event"] = "Power",
						["type"] = "unit",
						["debuffType"] = "HELPFUL",
						["use_powertype"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "MARK ON YOU",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "SPREAD NOW",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [3]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
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
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [4]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_class"] = false,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["encounterid"] = "620",
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["HUNTER"] = true,
						["WARLOCK"] = true,
						["SHAMAN"] = true,
						["MAGE"] = true,
						["DRUID"] = true,
						["PALADIN"] = true,
						["PRIEST"] = true,
					},
				},
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136214,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Kazrogal - Mark of Kazrogal",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "F2gMsPC0Bnx",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<=",
						["variable"] = "power",
						["value"] = "3000",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.text_visible",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.4.glow",
						}, -- [2]
						{
							["value"] = {
								["message"] = "MANA LOW! RUNNING AWAY",
								["message_type"] = "YELL",
							},
							["property"] = "chat",
						}, -- [3]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Illidan - Shadow Prison"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Sound\\Interface\\RaidWarning.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = 40832,
						["auranames"] = {
							"40647", -- [1]
						},
						["duration"] = "5",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["useExactSpellId"] = false,
						["event"] = "Chat Message",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "I will not be touched by rabble such as you",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["useIgnoreName"] = false,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["use_eventtype"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["useName"] = true,
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
							"41917", -- [1]
						},
						["type"] = "aura2",
						["use_npcId"] = false,
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["use_message"] = true,
						["subeventSuffix"] = "_DAMAGE",
						["useAffected"] = true,
						["group_countOperator"] = ">",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "LAST PHASE",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "609",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 132303,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Illidan - Shadow Prison",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "OyMP1I0oUp4",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Winterchill - Icebolt"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "{rt7} ICEBOLT ON %c ! HEAL ME {rt7}",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = true,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "28433",
						["auranames"] = {
							"31249", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["event"] = "Combat Events",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = false,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_aggro"] = true,
						["use_unit"] = true,
						["group_countOperator"] = ">",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["debuffType"] = "HARMFUL",
						["unevent"] = "timed",
						["type"] = "aura2",
						["use_npcId"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_threatUnit"] = true,
						["unit"] = "player",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["use_eventtype"] = true,
						["duration"] = "40",
						["useAffected"] = true,
						["useExactSpellId"] = false,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "TOMBED",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Serpentshrine Cavern",
				["use_zoneIds"] = true,
				["encounterid"] = "618",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135846,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Winterchill - Icebolt",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "IiKkddlQ(H2",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Archimonde - Fear"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = true,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "28433",
						["auranames"] = {
							"31970", -- [1]
						},
						["duration"] = "40",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["event"] = "Combat Events",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = false,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["unit"] = "player",
						["useExactSpellId"] = false,
						["group_countOperator"] = ">",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
						["use_genericShowOn"] = true,
						["type"] = "aura2",
						["unevent"] = "timed",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["use_eventtype"] = true,
						["use_unit"] = true,
						["useAffected"] = true,
						["use_aggro"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "FEARED",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Serpentshrine Cavern",
				["use_zoneIds"] = true,
				["encounterid"] = "622",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136147,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Archimonde - Fear",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "HvwogBf9RpQ",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["萨满之怒"] = {
			["iconSource"] = -1,
			["wagoID"] = "nsp7fsMNg",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 156.2395935058594,
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
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 30823,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["realSpellName"] = "薩滿之怒",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 19,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["text_color"] = {
						0, -- [1]
						1, -- [2]
						0.2156862745098039, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_fontType"] = "OUTLINE",
					["text_shadowYOffset"] = 0,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 15,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_precision"] = 1,
				}, -- [3]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
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
			["parent"] = "老雷增强萨WA",
			["regionType"] = "icon",
			["icon"] = true,
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
			["information"] = {
			},
			["cooldownTextDisabled"] = false,
			["uid"] = "NiahmHZGZ7R",
			["zoom"] = 0,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "萨满之怒",
			["frameStrata"] = 3,
			["alpha"] = 1,
			["width"] = 40,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = 34.68,
			["conditions"] = {
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
							["value"] = 0.8,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
					},
					["changes"] = {
						{
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["url"] = "",
		},
		["Gurtogg - Bloodboil"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "BB on me, NEXT!",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = true,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["message_format_s_format"] = "none",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "22841",
						["spellId"] = "42023",
						["auranames"] = {
							"42005", -- [1]
						},
						["use_genericShowOn"] = true,
						["message_operator"] = "find('%s')",
						["destUnit"] = "player",
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["use_eventtype"] = true,
						["percenthealth"] = "100",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "Supremus punches the ground in anger",
						["use_spellId"] = true,
						["sourceNpcId"] = "",
						["useAffected"] = true,
						["use_destUnit"] = true,
						["use_track"] = true,
						["subeventSuffix"] = "",
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["spellName"] = "Intangible Presence",
						["use_sourceNpcId"] = false,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["duration"] = "3",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["names"] = {
						},
						["use_unit"] = true,
						["use_destName"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["type"] = "aura2",
						["percenthealth_operator"] = "<",
						["unevent"] = "timed",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Intangible Presence",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["subeventPrefix"] = "PARTY_KILL",
						["use_message"] = true,
						["use_percenthealth"] = true,
						["use_messageType"] = false,
						["useExactSpellId"] = false,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(trigger)\n    return (trigger[1] and trigger[2]) or trigger[3]    \nend\n\n\n",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
						["PRIEST"] = true,
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "605",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136124,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Gurtogg - Bloodboil",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "ojVNtdAj8iZ",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Illidan - Phase 2"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Sound\\Interface\\RaidWarning.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = 40832,
						["auranames"] = {
							"41083", -- [1]
						},
						["duration"] = "5",
						["amount"] = "0",
						["group_count"] = "0",
						["spellName"] = "Intangible Presence",
						["showClones"] = false,
						["useExactSpellId"] = false,
						["event"] = "Chat Message",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "I will not be touched by rabble such as you",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["useIgnoreName"] = false,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["use_eventtype"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["useName"] = true,
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
							"41917", -- [1]
						},
						["type"] = "event",
						["use_npcId"] = false,
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["use_message"] = true,
						["subeventSuffix"] = "_DAMAGE",
						["useAffected"] = true,
						["group_countOperator"] = ">",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "P2 INC",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "609",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135819,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Illidan - Phase 2",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "9QGRVfA2mMM",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Council - Judgement"] = {
			["iconSource"] = 0,
			["wagoID"] = "Y5J7NdyVH",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Sound\\Interface\\RaidWarning.ogg",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_custom"] = false,
					["do_message"] = false,
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "41467",
						["auranames"] = {
							"41453", -- [1]
							"41452", -- [2]
						},
						["use_genericShowOn"] = true,
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["useExactSpellId"] = true,
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["useIgnoreName"] = false,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_eventtype"] = true,
						["spellName"] = "Intangible Presence",
						["unit"] = "target",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["duration"] = "2",
						["type"] = "aura2",
						["unevent"] = "timed",
						["auraspellids"] = {
							"41469", -- [1]
						},
						["realSpellName"] = "Impale",
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["useName"] = false,
						["subeventPrefix"] = "SPELL",
						["use_aggro"] = true,
						["useAffected"] = true,
						["subeventSuffix"] = "_CAST_START",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				{
					["trigger"] = {
						["npcId"] = "16024",
						["spellId"] = "41467",
						["auranames"] = {
							"41453", -- [1]
							"41452", -- [2]
						},
						["use_genericShowOn"] = true,
						["amount"] = "0",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["useExactSpellId"] = true,
						["event"] = "Cast",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["useIgnoreName"] = false,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["use_exact_spellId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_eventtype"] = true,
						["spellName"] = "Intangible Presence",
						["unit"] = "target",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["duration"] = "2",
						["type"] = "unit",
						["unevent"] = "timed",
						["auraspellids"] = {
							"41469", -- [1]
						},
						["realSpellName"] = "Intangible Presence",
						["use_threatUnit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = false,
						["subeventPrefix"] = "SPELL",
						["use_aggro"] = true,
						["useAffected"] = true,
						["subeventSuffix"] = "_CAST_START",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [2]
				{
					["trigger"] = {
						["use_class"] = false,
						["type"] = "unit",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["event"] = "Unit Characteristics",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "unit",
						["use_status"] = false,
						["unit"] = "target",
						["use_aggro"] = true,
						["use_unit"] = true,
						["event"] = "Threat Situation",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
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
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "DEFENSIVE",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "SPELL REFLECT",
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
					["text_text_format_1.destName_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_1._format"] = "none",
					["type"] = "subtext",
					["text_text_format_AFFECTED_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_justify"] = "CENTER",
				}, -- [3]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["text_color"] = {
					},
					["glowThickness"] = 1,
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
					["glowLength"] = 10,
					["glowType"] = "buttonOverlay",
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [4]
			},
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["zone"] = "Tempest Keep",
				["use_zoneIds"] = true,
				["encounterid"] = "608",
				["zoneIds"] = "339",
			},
			["config"] = {
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 135959,
			["xOffset"] = 0,
			["semver"] = "1.1.2",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 20504,
			["id"] = "Council - Judgement",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "6dyFt1hAH8O",
			["inverse"] = false,
			["parent"] = "Tems' BT/MH Pack",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "==",
						["variable"] = "class",
						["value"] = "WARRIOR",
					},
					["changes"] = {
						{
							["property"] = "sub.2.text_visible",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.3.text_visible",
						}, -- [2]
						{
							["value"] = true,
							["property"] = "sub.4.glow",
						}, -- [3]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["NAXX 狂暴战 药剂清单"] = {
			["grow"] = "DOWN",
			["controlledChildren"] = {
				"Caption text", -- [1]
				"Consume item", -- [2]
			},
			["borderBackdrop"] = "None",
			["wagoID"] = "HkMcSSN7q",
			["xOffset"] = -1860.999209955782,
			["preferToUpdate"] = false,
			["groupIcon"] = 134842,
			["gridType"] = "RD",
			["fullCircle"] = true,
			["space"] = 4,
			["url"] = "https://wago.io/HkMcSSN7q/4",
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
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnActive",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["columnSpace"] = 1,
			["internalVersion"] = 51,
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
			["align"] = "LEFT",
			["stagger"] = 0,
			["version"] = 4,
			["uid"] = "Mfi6DZV3Q6q",
			["borderInset"] = 1,
			["selfPoint"] = "TOPLEFT",
			["load"] = {
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
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
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
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["customSort"] = "function(a, b)\n    if(a.name and b.name) then\n        return a.name <= b.name\n    else\n        print(a.data.name)\n            return false\n        end\n        \n    end",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotation"] = 0,
			["animate"] = false,
			["useLimit"] = false,
			["scale"] = 0.6,
			["authorOptions"] = {
			},
			["border"] = true,
			["borderEdge"] = "None",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 3,
			["limit"] = 5,
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["sort"] = "none",
			["constantFactor"] = "RADIUS",
			["rowSpace"] = 1,
			["borderOffset"] = 17,
			["semver"] = "1.0.3",
			["tocversion"] = 20504,
			["id"] = "NAXX 狂暴战 药剂清单",
			["gridWidth"] = 5,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["anchorPoint"] = "CENTER",
			["config"] = {
			},
			["arcLength"] = 360,
			["radius"] = 200,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["yOffset"] = 159.3478315703289,
		},
		["Caption text"] = {
			["outline"] = "OUTLINE",
			["wagoID"] = "HkMcSSN7q",
			["authorOptions"] = {
			},
			["displayText"] = "RAID药剂清单                    ",
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/HkMcSSN7q/4",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnActive",
						["duration"] = "1",
						["use_itemName"] = true,
						["unit"] = "player",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["use_unit"] = true,
						["event"] = "Conditions",
						["unevent"] = "auto",
						["itemName"] = 0,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function()\nreturn true\nend\n",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
			["wordWrap"] = "WordWrap",
			["font"] = "Friz Quadrata TT",
			["version"] = 4,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["load"] = {
				["ingroup"] = {
					["single"] = "raid",
					["multi"] = {
						["raid"] = true,
					},
				},
				["use_never"] = false,
				["talent"] = {
					["single"] = 58,
					["multi"] = {
						[58] = true,
					},
				},
				["zoneIds"] = "",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["zone"] = "奧格瑪",
				["use_zone"] = true,
				["use_class"] = true,
				["use_spellknown"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_level"] = true,
				["level_operator"] = ">",
				["level"] = "55",
				["spellknown"] = 1953,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["fixedWidth"] = 200,
			["selfPoint"] = "TOP",
			["preferToUpdate"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "slidebottom",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "spiralandpulse",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
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
			["xOffset"] = 5,
			["justify"] = "LEFT",
			["tocversion"] = 20504,
			["id"] = "Caption text",
			["config"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["automaticWidth"] = "Auto",
			["uid"] = "pn84AM)8tKh",
			["semver"] = "1.0.3",
			["yOffset"] = 5,
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
			["parent"] = "NAXX 狂暴战 药剂清单",
		},
		["牛头人天赋"] = {
			["iconSource"] = -1,
			["wagoID"] = "nsp7fsMNg",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 156.33,
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
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 20549,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["realSpellName"] = "戰爭踐踏",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 51,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 19,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["use_race"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["single"] = "Tauren",
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "老雷增强萨WA",
			["regionType"] = "icon",
			["icon"] = true,
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
			["information"] = {
			},
			["cooldownTextDisabled"] = false,
			["uid"] = "PQNYVrdit2F",
			["zoom"] = 0,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "牛头人天赋",
			["frameStrata"] = 3,
			["alpha"] = 1,
			["width"] = 40,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = 114.68,
			["conditions"] = {
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
							["value"] = 0.8,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "",
		},
	},
	["lastArchiveClear"] = 1648129760,
	["minimap"] = {
		["hide"] = false,
	},
	["lastUpgrade"] = 1648129765,
	["dbVersion"] = 51,
	["login_squelch_time"] = 10,
	["registered"] = {
	},
	["frame"] = {
		["xOffset"] = -5.001220703125,
		["width"] = 830.0001831054688,
		["height"] = 665.0001220703125,
		["yOffset"] = -69.166748046875,
	},
	["editor_theme"] = "Monokai",
}
