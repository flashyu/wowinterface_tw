
WeakAurasSaved = {
	["dynamicIconCache"] = {
	},
	["editor_tab_spaces"] = 4,
	["login_squelch_time"] = 10,
	["lastArchiveClear"] = 1648129760,
	["minimap"] = {
		["hide"] = false,
	},
	["lastUpgrade"] = 1648129765,
	["dbVersion"] = 51,
	["registered"] = {
	},
	["frame"] = {
		["xOffset"] = -5.001220703125,
		["yOffset"] = -69.166748046875,
		["height"] = 665.0001220703125,
		["width"] = 830.0001831054688,
	},
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["group_countOperator"] = ">",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_DAMAGE",
						["use_genericShowOn"] = true,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["unevent"] = "timed",
						["useName"] = true,
						["use_threatUnit"] = true,
						["auraspellids"] = {
							"41917", -- [1]
						},
						["realSpellName"] = "Impale",
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["type"] = "aura2",
						["use_message"] = true,
						["names"] = {
						},
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
						["subeventSuffix"] = "_DAMAGE",
						["spellName"] = "",
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["type"] = "combatlog",
						["debuffType"] = "HARMFUL",
						["unevent"] = "timed",
						["useName"] = true,
						["use_threatUnit"] = true,
						["auraspellids"] = {
							"41917", -- [1]
						},
						["use_npcId"] = false,
						["unit"] = "player",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["use_message"] = true,
						["use_status"] = false,
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
						["subeventSuffix"] = "_DAMAGE",
						["spellName"] = "",
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["type"] = "combatlog",
						["debuffType"] = "HARMFUL",
						["unevent"] = "timed",
						["useName"] = true,
						["use_threatUnit"] = true,
						["auraspellids"] = {
							"41917", -- [1]
						},
						["use_npcId"] = false,
						["unit"] = "player",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["use_message"] = true,
						["use_status"] = false,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["encounterid"] = "618",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "kcldR32OmAt",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Winterchill - Death and Decay",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136144,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["use_eventtype"] = true,
						["unit"] = "target",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "SPELL_BUILDING",
						["type"] = "combatlog",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["duration"] = "3",
						["useName"] = true,
						["useExactSpellId"] = false,
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
						["use_eventtype"] = true,
						["unit"] = "target",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "combatlog",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["duration"] = "3",
						["useName"] = true,
						["useExactSpellId"] = false,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["use_zone"] = false,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_zoneIds"] = true,
				["use_encounter"] = false,
				["zone"] = "Serpentshrine Cavern",
				["encounterid"] = "2458",
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "tFhRaGI7c9N",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "BT - Whirling Blade",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135568,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["useExactSpellId"] = true,
						["use_aggro"] = true,
						["group_countOperator"] = ">",
						["unit"] = "target",
						["debuffType"] = "HELPFUL",
						["useName"] = false,
						["type"] = "aura2",
						["unevent"] = "timed",
						["auraspellids"] = {
							"41478", -- [1]
						},
						["use_threatUnit"] = true,
						["use_npcId"] = false,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["duration"] = "40",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["encounterid"] = "608",
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "n6alA68VQ(p",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Council - Dampen Magic",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135729,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["useExactSpellId"] = false,
						["use_aggro"] = true,
						["group_countOperator"] = ">",
						["unit"] = "target",
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["type"] = "combatlog",
						["auraspellids"] = {
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["use_npcId"] = false,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["names"] = {
						},
						["use_genericShowOn"] = true,
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
						["use_unit"] = true,
						["useExactSpellId"] = false,
						["use_aggro"] = true,
						["use_destName"] = false,
						["subeventPrefix"] = "SPELL_BUILDING",
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["type"] = "combatlog",
						["auraspellids"] = {
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["use_npcId"] = false,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["unit"] = "target",
						["spellName"] = "Intangible Presence",
						["useAffected"] = true,
						["use_eventtype"] = true,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["encounterid"] = "608",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "48t0aUt1Czf",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Council - Flamestrike",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135826,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
				},
				["init"] = {
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
						["unit"] = "player",
						["type"] = "spell",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Totem",
						["form"] = {
						},
						["use_itemName"] = true,
						["totemType"] = 2,
						["use_threatUnit"] = true,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["threatUnit"] = "target",
						["names"] = {
						},
						["realSpellName"] = 0,
						["use_track"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["useExactSpellId"] = false,
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
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
					["glowThickness"] = 1,
					["glow"] = false,
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
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
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
			["cooldownEdge"] = false,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["xOffset"] = -46.3323974609375,
			["cooldown"] = true,
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
						["value"] = "5",
						["variable"] = "expirationTime",
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [2]
			},
			["config"] = {
			},
			["frameStrata"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "土系图腾",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 40,
			["cooldownTextDisabled"] = false,
			["uid"] = "QtC4wIx4Rm2",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = 136023,
			["information"] = {
			},
			["parent"] = "老雷增强萨WA",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["group_countOperator"] = ">",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_DAMAGE",
						["use_genericShowOn"] = true,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["unevent"] = "timed",
						["useName"] = true,
						["use_threatUnit"] = true,
						["auraspellids"] = {
							"41917", -- [1]
						},
						["realSpellName"] = "Impale",
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["type"] = "aura2",
						["use_message"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["use_eventtype"] = true,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
				["zoneIds"] = "339",
				["encounterid"] = "619",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "dhQfYe5XuuT",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Anetheron - Sleep",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136090,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["use_aggro"] = true,
						["useExactSpellId"] = false,
						["use_unit"] = true,
						["use_eventtype"] = true,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["type"] = "aura2",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["group_countOperator"] = ">",
						["useAffected"] = true,
						["unit"] = "group",
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
						["useExactSpellId"] = false,
						["use_unit"] = true,
						["duration"] = "40",
						["use_eventtype"] = true,
						["useName"] = true,
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["type"] = "aura2",
						["use_threatUnit"] = true,
						["unevent"] = "timed",
						["realSpellName"] = "Impale",
						["unit"] = "player",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["group_countOperator"] = ">",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = false,
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
				["zoneIds"] = "339",
				["encounterid"] = "605",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "KhWLqWeIpX9",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
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
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Gurtogg - Fel Rage",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135791,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["useExactSpellId"] = false,
						["use_unit"] = true,
						["duration"] = "40",
						["use_eventtype"] = true,
						["useName"] = true,
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["type"] = "aura2",
						["use_threatUnit"] = true,
						["unevent"] = "timed",
						["realSpellName"] = "Impale",
						["unit"] = "player",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["group_countOperator"] = ">",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["encounterid"] = "604",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "YrfFyUKrh8U",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Gorefiend - Crushing Shadows",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136224,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["subeventSuffix"] = "_CAST_SUCCESS",
						["useExactSpellId"] = false,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL_BUILDING",
						["type"] = "aura2",
						["use_status"] = false,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["unevent"] = "timed",
						["useName"] = true,
						["use_genericShowOn"] = true,
						["useAffected"] = true,
						["unit"] = "player",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["use_zone"] = false,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_zoneIds"] = true,
				["use_encounter"] = false,
				["zone"] = "Serpentshrine Cavern",
				["encounterid"] = "2458",
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "9CxiqalbRo2",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "MH - Banshee Curse",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136020,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["group_countOperator"] = ">",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_DAMAGE",
						["use_genericShowOn"] = true,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["unevent"] = "timed",
						["useName"] = true,
						["use_threatUnit"] = true,
						["auraspellids"] = {
							"41917", -- [1]
						},
						["realSpellName"] = "Impale",
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["type"] = "aura2",
						["use_message"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["use_eventtype"] = true,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
				["zoneIds"] = "339",
				["encounterid"] = "619",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "IJOzL41LXb(",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Anetheron - Carrion Swarm",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136128,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
				},
				["init"] = {
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
						["unit"] = "player",
						["type"] = "spell",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Totem",
						["form"] = {
						},
						["use_itemName"] = true,
						["totemType"] = 1,
						["use_threatUnit"] = true,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["threatUnit"] = "target",
						["names"] = {
						},
						["realSpellName"] = 0,
						["use_track"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["useExactSpellId"] = false,
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
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
					["glowThickness"] = 1,
					["glow"] = false,
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
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
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
			["cooldownEdge"] = false,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["xOffset"] = 33.45068359375,
			["cooldown"] = true,
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
						["value"] = "5",
						["variable"] = "expirationTime",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [2]
			},
			["config"] = {
			},
			["frameStrata"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "火系图腾",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 40,
			["cooldownTextDisabled"] = false,
			["uid"] = "bZdxrHUJPpk",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = 135825,
			["information"] = {
			},
			["parent"] = "老雷增强萨WA",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["subeventSuffix"] = "_CAST_SUCCESS",
						["useExactSpellId"] = false,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL_BUILDING",
						["type"] = "aura2",
						["use_status"] = false,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["unevent"] = "timed",
						["useName"] = true,
						["use_genericShowOn"] = true,
						["useAffected"] = true,
						["unit"] = "player",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
				["zoneIds"] = "339",
				["use_zone"] = false,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_zoneIds"] = true,
				["use_encounter"] = false,
				["zone"] = "Serpentshrine Cavern",
				["encounterid"] = "2458",
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "vUtNtvaPge6",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "BT - Silencing Shot",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 132323,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["group_countOperator"] = ">",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_DAMAGE",
						["use_genericShowOn"] = true,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["unevent"] = "timed",
						["useName"] = true,
						["use_threatUnit"] = true,
						["auraspellids"] = {
							"41917", -- [1]
						},
						["realSpellName"] = "Impale",
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["type"] = "aura2",
						["use_message"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["use_eventtype"] = true,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
				["zoneIds"] = "339",
				["encounterid"] = "620",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "0SmCH8P16ZC",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Kazrogal - War Stomp",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 132368,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "spell",
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = 8177,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["use_exact_spellName"] = true,
						["unit"] = "player",
						["use_track"] = true,
						["spellName"] = 8177,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["event"] = "Conditions",
						["unit"] = "player",
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
					["glowThickness"] = 1,
					["glow"] = false,
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
			["cooldownEdge"] = false,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["xOffset"] = 113.08642578125,
			["cooldown"] = true,
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
			["config"] = {
			},
			["frameStrata"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "根基",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 40,
			["cooldownTextDisabled"] = false,
			["uid"] = ")Rk9(zjWfVU",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = 136039,
			["information"] = {
			},
			["parent"] = "老雷增强萨WA",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["useExactSpellId"] = false,
						["use_messageType"] = false,
						["use_destUnit"] = false,
						["use_track"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["spellName"] = "Intangible Presence",
						["subeventPrefix"] = "SPELL",
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["duration"] = "60",
						["use_threatUnit"] = true,
						["realSpellName"] = "Intangible Presence",
						["names"] = {
						},
						["use_unit"] = true,
						["use_destName"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["use_aggro"] = true,
						["useName"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["percenthealth_operator"] = "<=",
						["type"] = "event",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_sourceNpcId"] = false,
						["use_message"] = true,
						["use_percenthealth"] = true,
						["useAffected"] = true,
						["sourceNpcId"] = "",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "nameplate",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "event",
						["unit"] = "player",
						["use_eventtype"] = true,
						["debuffType"] = "HELPFUL",
						["duration"] = "60",
						["event"] = "Combat Events",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
				["zoneIds"] = "339",
				["encounterid"] = "602",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "d3klKQM1bCO",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
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
						["op"] = ">",
						["value"] = "5",
						["variable"] = "expirationTime",
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
						["value"] = "5",
						["variable"] = "expirationTime",
					},
					["changes"] = {
						{
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Supremus - Phase 2",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 132345,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["useExactSpellId"] = false,
						["use_aggro"] = true,
						["group_countOperator"] = ">",
						["unit"] = "target",
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["type"] = "unit",
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["use_threatUnit"] = true,
						["use_npcId"] = false,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["duration"] = "40",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
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
						["useName"] = true,
						["auranames"] = {
							"41451", -- [1]
						},
						["debuffType"] = "HELPFUL",
						["matchesShowOn"] = "showOnMissing",
						["type"] = "aura2",
						["unit"] = "target",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
				["zoneIds"] = "339",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["MAGE"] = true,
						["WARLOCK"] = true,
						["SHAMAN"] = true,
					},
				},
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["encounterid"] = "608",
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "NgQcwUOdG1P",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Council - Circle of Healing Ranged",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135943,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
		},
		["仇恨95OT警告"] = {
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 625,
			["anchorPoint"] = "CENTER",
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
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
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
			["rotation"] = 0,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 333,
			["rotate"] = true,
			["load"] = {
				["talent"] = {
					["single"] = 13,
					["multi"] = {
						[13] = true,
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
				["size"] = {
					["single"] = "twenty",
					["multi"] = {
						["ten"] = true,
						["twentyfive"] = true,
						["twenty"] = true,
						["fortyman"] = true,
					},
				},
			},
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["mirror"] = false,
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\cancel-icon.tga",
			["width"] = 333,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["tocversion"] = 20502,
			["id"] = "仇恨95OT警告",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["discrete_rotation"] = 0,
			["uid"] = "vATkuM8oFnD",
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
			["parent"] = "老雷增强萨WA",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["use_eventtype"] = true,
						["unit"] = "player",
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL_BUILDING",
						["type"] = "aura2",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["duration"] = "3",
						["useName"] = true,
						["useExactSpellId"] = false,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
				["zoneIds"] = "339",
				["use_zone"] = false,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_zoneIds"] = true,
				["use_encounter"] = false,
				["zone"] = "Serpentshrine Cavern",
				["encounterid"] = "2458",
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "6QD2CA(4oUh",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "BT - Sunder Armor",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 132363,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["auranames"] = {
							"萨满之怒", -- [1]
						},
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = "Bloodlust",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["type"] = "aura2",
						["unit"] = "player",
						["genericShowOn"] = "showAlways",
						["use_track"] = true,
						["spellName"] = 2825,
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
					["glowThickness"] = 1,
					["glow"] = true,
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
			["cooldownEdge"] = false,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["xOffset"] = 34.68,
			["cooldown"] = true,
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
			["config"] = {
			},
			["frameStrata"] = 4,
			["zoom"] = 0,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "萨满之怒倒计时",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 40,
			["cooldownTextDisabled"] = false,
			["uid"] = "gMC8IABGZLG",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = "136012",
			["information"] = {
			},
			["parent"] = "老雷增强萨WA",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["subeventSuffix"] = "_DAMAGE",
						["spellName"] = "Intangible Presence",
						["use_aggro"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["useName"] = false,
						["type"] = "unit",
						["auraspellids"] = {
							"41452", -- [1]
							"41453", -- [2]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["use_npcId"] = false,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["duration"] = "40",
						["use_unit"] = true,
						["unit"] = "target",
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
						["type"] = "unit",
						["use_aggro"] = true,
						["debuffType"] = "HELPFUL",
						["use_unit"] = true,
						["event"] = "Threat Situation",
						["unit"] = "target",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
				["zoneIds"] = "339",
				["encounterid"] = "609",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "LAu9Dfg0Uo7",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Illidan - Flame Crash",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135784,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["realSpellName"] = "狂暴",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["spellName"] = 20554,
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
					["glowThickness"] = 1,
					["glow"] = false,
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
			["xOffset"] = 114.68,
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
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["url"] = "",
			["cooldown"] = true,
			["zoom"] = 0,
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "巨魔天赋",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 3,
			["width"] = 40,
			["alpha"] = 1,
			["uid"] = "gkuSGdm(jt6",
			["inverse"] = false,
			["icon"] = true,
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
			["information"] = {
			},
			["parent"] = "老雷增强萨WA",
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
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["realSpellName"] = "嗜血術",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["spellName"] = 2825,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["event"] = "Conditions",
						["unit"] = "player",
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
					["glowThickness"] = 1,
					["glow"] = false,
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
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [3]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["single"] = "Horde",
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
			["cooldownEdge"] = false,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["xOffset"] = 74.68,
			["cooldown"] = true,
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
			["config"] = {
			},
			["frameStrata"] = 3,
			["zoom"] = 0,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "嗜血",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 40,
			["cooldownTextDisabled"] = false,
			["uid"] = "8DQxhSsTLGm",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = "136012",
			["information"] = {
			},
			["parent"] = "老雷增强萨WA",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["use_aggro"] = true,
						["useExactSpellId"] = true,
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["useName"] = false,
						["debuffType"] = "HELPFUL",
						["auraspellids"] = {
							"41450", -- [1]
							"41451", -- [2]
						},
						["type"] = "aura2",
						["use_threatUnit"] = true,
						["unevent"] = "timed",
						["use_npcId"] = false,
						["unit"] = "target",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["duration"] = "40",
						["use_unit"] = true,
						["spellName"] = "Intangible Presence",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
				["zoneIds"] = "339",
				["encounterid"] = "608",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "dolUauyz1bB",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
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
						["op"] = "==",
						["value"] = "41450",
						["variable"] = "spellId",
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
						["value"] = "41451",
						["variable"] = "spellId",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.text_visible",
						}, -- [1]
					},
				}, -- [2]
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Council - Blessings",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135938,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["use_eventtype"] = true,
						["unit"] = "player",
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL_BUILDING",
						["type"] = "aura2",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["duration"] = "3",
						["useName"] = true,
						["useExactSpellId"] = false,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
				["zoneIds"] = "339",
				["use_zone"] = false,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_zoneIds"] = true,
				["use_encounter"] = false,
				["zone"] = "Serpentshrine Cavern",
				["encounterid"] = "2458",
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "scI4LkQMJA6",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "BT - Mortal Wound",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 132109,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
					["sound_repeat"] = 1,
					["sound"] = "Sound\\Interface\\RaidWarning.ogg",
					["do_glow"] = false,
				},
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["group_countOperator"] = ">",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_AURA_APPLIED",
						["use_genericShowOn"] = true,
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["unevent"] = "timed",
						["useName"] = false,
						["use_threatUnit"] = true,
						["auraspellids"] = {
							"40683", -- [1]
						},
						["realSpellName"] = "Impale",
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["type"] = "aura2",
						["use_message"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["use_eventtype"] = true,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["encounterid"] = "609",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "d(qb32GAZQt",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Illidan - Enrage",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136215,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
			["version"] = 19,
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
			["uid"] = "ddt13SDElVu",
			["config"] = {
			},
			["borderInset"] = 1,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["information"] = {
			},
			["authorOptions"] = {
			},
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["use_aggro"] = true,
						["useExactSpellId"] = true,
						["use_unit"] = true,
						["use_eventtype"] = true,
						["debuffType"] = "HARMFUL",
						["useName"] = false,
						["type"] = "aura2",
						["auraspellids"] = {
							"41292", -- [1]
							"41350", -- [2]
							"41337", -- [3]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["group_countOperator"] = ">",
						["useAffected"] = true,
						["unit"] = "player",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
				["zoneIds"] = "339",
				["encounterid"] = "606",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "Hj3trGfC7HR",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
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
						["op"] = "==",
						["value"] = "41292",
						["variable"] = "spellId",
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
						["value"] = "41350",
						["variable"] = "spellId",
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
						["value"] = "41337",
						["variable"] = "spellId",
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
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Reliquary - Active Boss",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136123,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["subeventSuffix"] = "_AURA_APPLIED",
						["spellName"] = "",
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["type"] = "combatlog",
						["debuffType"] = "HARMFUL",
						["unevent"] = "timed",
						["useName"] = true,
						["use_threatUnit"] = true,
						["auraspellids"] = {
							"41917", -- [1]
						},
						["use_npcId"] = false,
						["unit"] = "player",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["use_message"] = true,
						["use_status"] = false,
						["useAffected"] = true,
						["use_eventtype"] = true,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["encounterid"] = "609",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "X6Z6mLWeEpm",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Illidan - Aura of the Dead",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136204,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["use_aggro"] = true,
						["useExactSpellId"] = false,
						["use_unit"] = true,
						["use_eventtype"] = true,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["type"] = "aura2",
						["auraspellids"] = {
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["group_countOperator"] = ">",
						["useAffected"] = true,
						["unit"] = "player",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["encounterid"] = "606",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "IkqlpQeUpjD",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Reliquary - Soul Drain",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136222,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["useExactSpellId"] = false,
						["percenthealth"] = "20",
						["event"] = "Unit Characteristics",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "Thaladred the Darkener sets eyes on",
						["use_spellId"] = true,
						["use_messageType"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["destUnit"] = "player",
						["use_destUnit"] = false,
						["use_track"] = true,
						["duration"] = "5",
						["use_amount"] = true,
						["use_unitisunit"] = true,
						["use_status"] = false,
						["useGroup_count"] = true,
						["unit"] = "target",
						["use_threatUnit"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = "Intangible Presence",
						["group_countOperator"] = ">",
						["names"] = {
						},
						["use_destFlags2"] = false,
						["useName"] = true,
						["use_destName"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["unevent"] = "timed",
						["type"] = "unit",
						["use_aggro"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["percenthealth_operator"] = "<=",
						["use_unit"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["unitisunit"] = "player",
						["use_message"] = true,
						["use_percenthealth"] = true,
						["useAffected"] = true,
						["sourceNpcId"] = "",
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
						["useExactSpellId"] = false,
						["use_messageType"] = false,
						["use_destUnit"] = false,
						["use_track"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["spellName"] = "Intangible Presence",
						["subeventPrefix"] = "SPELL",
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["duration"] = "5",
						["use_threatUnit"] = true,
						["realSpellName"] = "Intangible Presence",
						["names"] = {
						},
						["use_unit"] = true,
						["use_destName"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["use_aggro"] = true,
						["useName"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["percenthealth_operator"] = "<=",
						["type"] = "event",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_sourceNpcId"] = false,
						["use_message"] = true,
						["use_percenthealth"] = true,
						["useAffected"] = true,
						["sourceNpcId"] = "",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["encounterid"] = "602",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "j2jocBHIeSS",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Supremus - Fixate",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136129,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
		},
		["双插风怒计时"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["wagoID"] = "nsp7fsMNg",
			["xOffset"] = -85.53851318359375,
			["preferToUpdate"] = false,
			["yOffset"] = 74.35903930664062,
			["anchorPoint"] = "CENTER",
			["semver"] = "1.0.18",
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
						["names"] = {
						},
						["use_track"] = true,
						["spellName"] = "Windfury Totem",
						["event"] = "Combat Log",
						["use_totemType"] = true,
						["debuffType"] = "HELPFUL",
						["threatUnit"] = "target",
						["type"] = "combatlog",
						["use_threatUnit"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["use_spellId"] = true,
						["form"] = {
						},
						["use_itemName"] = true,
						["totemType"] = 4,
						["realSpellName"] = 0,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["duration"] = "10",
						["subeventPrefix"] = "SPELL",
						["sourceUnit"] = "player",
						["use_unit"] = true,
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
						["names"] = {
						},
						["use_track"] = true,
						["spellName"] = "Windfury Totem",
						["event"] = "Combat Log",
						["use_totemType"] = true,
						["debuffType"] = "HELPFUL",
						["threatUnit"] = "target",
						["type"] = "combatlog",
						["use_threatUnit"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["use_spellId"] = true,
						["form"] = {
						},
						["use_itemName"] = true,
						["totemType"] = 4,
						["realSpellName"] = 0,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["duration"] = "10",
						["subeventPrefix"] = "SPELL",
						["sourceUnit"] = "player",
						["use_unit"] = true,
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
						["names"] = {
						},
						["use_track"] = true,
						["spellName"] = "Windfury Totem",
						["event"] = "Combat Log",
						["use_totemType"] = true,
						["debuffType"] = "HELPFUL",
						["threatUnit"] = "target",
						["type"] = "combatlog",
						["use_threatUnit"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["use_spellId"] = true,
						["form"] = {
						},
						["use_itemName"] = true,
						["totemType"] = 4,
						["realSpellName"] = 0,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["duration"] = "10",
						["subeventPrefix"] = "SPELL",
						["sourceUnit"] = "player",
						["use_unit"] = true,
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
						["names"] = {
						},
						["use_track"] = true,
						["spellName"] = "Windfury Totem",
						["event"] = "Combat Log",
						["use_totemType"] = true,
						["debuffType"] = "HELPFUL",
						["threatUnit"] = "target",
						["type"] = "combatlog",
						["use_threatUnit"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["use_spellId"] = true,
						["form"] = {
						},
						["use_itemName"] = true,
						["totemType"] = 4,
						["realSpellName"] = 0,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["duration"] = "10",
						["subeventPrefix"] = "SPELL",
						["sourceUnit"] = "player",
						["use_unit"] = true,
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
						["names"] = {
						},
						["use_track"] = true,
						["spellName"] = "Windfury Totem",
						["event"] = "Combat Log",
						["use_totemType"] = true,
						["debuffType"] = "HELPFUL",
						["threatUnit"] = "target",
						["type"] = "combatlog",
						["use_threatUnit"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["use_spellId"] = true,
						["form"] = {
						},
						["use_itemName"] = true,
						["totemType"] = 4,
						["realSpellName"] = 0,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["duration"] = "10",
						["subeventPrefix"] = "SPELL",
						["sourceUnit"] = "player",
						["use_unit"] = true,
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
			["cooldownEdge"] = false,
			["barColor"] = {
				0, -- [1]
				0.89019607843137, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["cooldown"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 5,
						["op"] = "<=",
						["value"] = "3",
						["variable"] = "expirationTime",
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
						["op"] = "<=",
						["value"] = "3",
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
						["op"] = "<=",
						["value"] = "3",
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
						["op"] = "<=",
						["value"] = "3",
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
						["value"] = "3",
						["variable"] = "expirationTime",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.4.glow",
						}, -- [1]
					},
				}, -- [5]
			},
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
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_text_format_p_time_format"] = 0,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
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
					["glow"] = false,
					["glow_anchor"] = "bar",
					["glowLength"] = 10,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [4]
			},
			["height"] = 13,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
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
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["sparkOffsetY"] = 0,
			["sparkHidden"] = "NEVER",
			["icon_side"] = "RIGHT",
			["zoom"] = 0,
			["sparkHeight"] = 30,
			["texture"] = "Blizzard",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["cooldownTextDisabled"] = false,
			["spark"] = false,
			["tocversion"] = 20502,
			["id"] = "双插风怒计时",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["frameStrata"] = 5,
			["width"] = 40,
			["authorOptions"] = {
			},
			["uid"] = "fbWAT6R016d",
			["inverse"] = false,
			["parent"] = "老雷增强萨WA",
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 136114,
			["information"] = {
			},
			["iconSource"] = -1,
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["subeventSuffix"] = "_CAST_SUCCESS",
						["useExactSpellId"] = false,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "combatlog",
						["use_status"] = false,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["unevent"] = "timed",
						["useName"] = true,
						["use_genericShowOn"] = true,
						["useAffected"] = true,
						["unit"] = "player",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
				["zoneIds"] = "339",
				["use_zone"] = false,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_zoneIds"] = true,
				["use_encounter"] = false,
				["zone"] = "Serpentshrine Cavern",
				["encounterid"] = "2458",
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "kR7RXL58WaN",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "BT - Cyclone Totem",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135825,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["subeventSuffix"] = "_DAMAGE",
						["spellName"] = "",
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["type"] = "combatlog",
						["debuffType"] = "HARMFUL",
						["unevent"] = "timed",
						["useName"] = true,
						["use_threatUnit"] = true,
						["auraspellids"] = {
							"41917", -- [1]
						},
						["use_npcId"] = false,
						["unit"] = "player",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["use_message"] = true,
						["use_status"] = false,
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
						["subeventSuffix"] = "_DAMAGE",
						["spellName"] = "",
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["type"] = "combatlog",
						["debuffType"] = "HARMFUL",
						["unevent"] = "timed",
						["useName"] = true,
						["use_threatUnit"] = true,
						["auraspellids"] = {
							"41917", -- [1]
						},
						["use_npcId"] = false,
						["unit"] = "player",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["use_message"] = true,
						["use_status"] = false,
						["useAffected"] = true,
						["use_eventtype"] = true,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
				["zoneIds"] = "339",
				["encounterid"] = "609",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "QcsYMCy3fvR",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Illidan - Blaze",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135794,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
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
					["text_shadowXOffset"] = 1,
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
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_text_format_n_format"] = "none",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [4]
			},
			["height"] = 14.99997425079346,
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
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["uid"] = "jwzt6lS95ZP",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["xOffset"] = 0,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["selfPoint"] = "CENTER",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon_side"] = "RIGHT",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["sparkHeight"] = 30,
			["texture"] = "Blizzard",
			["alpha"] = 1,
			["zoom"] = 0,
			["spark"] = false,
			["tocversion"] = 20502,
			["id"] = "施法条",
			["width"] = 300,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["sparkHidden"] = "NEVER",
			["config"] = {
			},
			["inverse"] = false,
			["sparkOffsetX"] = 0,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["information"] = {
			},
			["parent"] = "老雷增强萨WA",
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
				["zoneIds"] = "339",
				["encounterid"] = "607",
				["use_zoneIds"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
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
						["spellIds"] = {
						},
						["events"] = "RAID_TARGET_UPDATE",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function(states, event, ...)\n    local mark = GetRaidTargetIndex(\"player\")\n    if mark == 2 then\n        states[\"\"] = {\n            show = true,\n            changed = true,\n            progressType = \"static\",\n            \n        }\n        return true\n    else\n        if states[\"\"] then\n            states[\"\"].show = false\n            states[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n",
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
					["text_anchorYOffset"] = -40,
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
			},
			["height"] = 160,
			["rotate"] = true,
			["fontSize"] = 12,
			["mirror"] = false,
			["fixedWidth"] = 200,
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["displayText_format_p_time_dynamic"] = false,
			["displayText_format_p_time_precision"] = 1,
			["wordWrap"] = "WordWrap",
			["config"] = {
			},
			["semver"] = "1.1.2",
			["justify"] = "LEFT",
			["zoom"] = 0,
			["id"] = "Shahraz - Fatal Left",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 160,
			["cooldownEdge"] = true,
			["parent"] = "Tems' BT/MH Pack",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Left.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.marks = {\n    [1] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_1\",\n    [2] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_2\",\n    [3] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_3\",\n    [4] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_4\",\n    [5] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_5\",\n    [6] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_6\",\n    [7] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_7\",\n    [8] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_8\",\n}",
					["do_custom"] = true,
				},
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
			},
			["preferToUpdate"] = false,
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
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["realSpellName"] = "英勇氣概",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["spellName"] = 32182,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["event"] = "Conditions",
						["unit"] = "player",
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
					["glowThickness"] = 1,
					["glow"] = false,
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
				["faction"] = {
					["single"] = "Alliance",
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
			["cooldownEdge"] = false,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["xOffset"] = 74.68,
			["cooldown"] = true,
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
			["config"] = {
			},
			["frameStrata"] = 3,
			["zoom"] = 0,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "英勇（联盟",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 40,
			["cooldownTextDisabled"] = false,
			["uid"] = "aoF2swghIli",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = "136012",
			["information"] = {
			},
			["parent"] = "老雷增强萨WA",
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
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "spell",
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = 2062,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["use_exact_spellName"] = true,
						["unit"] = "player",
						["use_track"] = true,
						["spellName"] = 2062,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["event"] = "Conditions",
						["unit"] = "player",
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
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_text_format_p_time_format"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
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
					["glowThickness"] = 1,
					["glow"] = false,
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
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 2062,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["cooldownEdge"] = false,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["xOffset"] = 160,
			["cooldown"] = true,
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
			["config"] = {
			},
			["frameStrata"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "土爹",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 30,
			["cooldownTextDisabled"] = true,
			["uid"] = "lOY95fhNaJf",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = 136024,
			["information"] = {
			},
			["parent"] = "老雷增强萨WA",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["useExactSpellId"] = false,
						["use_aggro"] = true,
						["group_countOperator"] = ">",
						["unit"] = "target",
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["type"] = "combatlog",
						["auraspellids"] = {
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["use_npcId"] = false,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["names"] = {
						},
						["use_genericShowOn"] = true,
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
						["use_unit"] = true,
						["useExactSpellId"] = false,
						["use_aggro"] = true,
						["use_destName"] = false,
						["subeventPrefix"] = "SPELL_BUILDING",
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["type"] = "combatlog",
						["auraspellids"] = {
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["use_npcId"] = false,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["unit"] = "target",
						["spellName"] = "Intangible Presence",
						["useAffected"] = true,
						["use_eventtype"] = true,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["encounterid"] = "608",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "(0Wxs0G4ETv",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Council - Blizzard",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135857,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["auranames"] = {
							"32182", -- [1]
						},
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = "Bloodlust",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["type"] = "aura2",
						["unit"] = "player",
						["genericShowOn"] = "showAlways",
						["use_track"] = true,
						["spellName"] = 2825,
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
					["glowThickness"] = 1,
					["glow"] = true,
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
				["faction"] = {
					["single"] = "Alliance",
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
			["cooldownEdge"] = false,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["xOffset"] = 74.68,
			["cooldown"] = true,
			["conditions"] = {
			},
			["config"] = {
			},
			["frameStrata"] = 4,
			["zoom"] = 0,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "英勇倒计时（联盟",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 40,
			["cooldownTextDisabled"] = false,
			["uid"] = "aUyv1KLjQse",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = "136012",
			["information"] = {
			},
			["parent"] = "老雷增强萨WA",
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
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["auranames"] = {
							"Bloodlust", -- [1]
						},
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = "Bloodlust",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["type"] = "aura2",
						["unit"] = "player",
						["genericShowOn"] = "showAlways",
						["use_track"] = true,
						["spellName"] = 2825,
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
					["glowThickness"] = 1,
					["glow"] = true,
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
				["faction"] = {
					["single"] = "Horde",
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
			["cooldownEdge"] = false,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["xOffset"] = 74.68,
			["cooldown"] = true,
			["conditions"] = {
			},
			["config"] = {
			},
			["frameStrata"] = 4,
			["zoom"] = 0,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "嗜血倒计时",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 40,
			["cooldownTextDisabled"] = false,
			["uid"] = "Q)daFw21)7e",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = "136012",
			["information"] = {
			},
			["parent"] = "老雷增强萨WA",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["useExactSpellId"] = false,
						["use_aggro"] = true,
						["group_countOperator"] = ">",
						["unit"] = "player",
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["type"] = "aura2",
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["use_threatUnit"] = true,
						["use_npcId"] = false,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["duration"] = "40",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["encounterid"] = "607",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = ")5Gsbuy6uhx",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Shahraz - Fatal Attraction",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136202,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["customVariables"] = "{\n    group = {\n        type = \"number\"\n    }\n}",
						["event"] = "Health",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["events"] = "CLEU:SPELL_CAST_START:SPELL_AURA_APPLIED",
						["custom"] = "function(allstates, event, ...)\n    local subevent = select(2,...)\n    local spell = select(12,...)\n    allstates[\"\"] = allstates[\"\"] or {\n        show = true,\n        changed = true,\n        progressType = \"static\",\n        autoHide = true,\n        group = 1,\n        \n    }\n    \n    if subevent == \"SPELL_CAST_START\" then \n        -- 41426\n        if spell == 41426 then \n            allstates[\"\"].group = allstates[\"\"].group + 1\n            if allstates[\"\"].group > 2 then \n                allstates[\"\"].group = 1    \n            end\n            allstates[\"\"].changed = true\n        end\n        \n        \n    end\n    \n    return true\nend\n\n\n",
						["names"] = {
						},
						["check"] = "event",
						["spellIds"] = {
						},
						["custom_type"] = "stateupdate",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["customVariables"] = "{\n    group = {\n        type = \"number\"\n    }\n}",
						["subeventSuffix"] = "_CAST_START",
						["useExactSpellId"] = true,
						["names"] = {
						},
						["event"] = "Health",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["events"] = "CLEU:SPELL_CAST_START:SPELL_AURA_APPLIED",
						["spellIds"] = {
						},
						["auraspellids"] = {
							"41350", -- [1]
						},
						["check"] = "event",
						["use_unit"] = true,
						["custom_type"] = "stateupdate",
						["debuffType"] = "HARMFUL",
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
					["text_visible"] = true,
					["text_fontSize"] = 24,
					["anchorXOffset"] = 0,
					["text_anchorYOffset"] = -5,
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
			["height"] = 60,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "606",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["icon"] = true,
			["regionType"] = "icon",
			["displayIcon"] = 135739,
			["url"] = "https://wago.io/XnxeqBBKm/1",
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
			},
			["zoom"] = 0.3,
			["uid"] = "KKh)Nq(IiQk",
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.0",
			["tocversion"] = 20504,
			["id"] = "小喵-T6-BT-三脸-打断",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 60,
			["frameStrata"] = 1,
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
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "group",
						["op"] = "==",
						["value"] = "1",
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
						["value"] = "2",
						["op"] = "==",
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
			["cooldown"] = false,
			["authorOptions"] = {
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["subeventSuffix"] = "_CAST_SUCCESS",
						["useExactSpellId"] = false,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL_BUILDING",
						["type"] = "aura2",
						["use_status"] = false,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["unevent"] = "timed",
						["useName"] = true,
						["use_genericShowOn"] = true,
						["useAffected"] = true,
						["unit"] = "player",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
				["zoneIds"] = "339",
				["use_zone"] = false,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_zoneIds"] = true,
				["use_encounter"] = false,
				["zone"] = "Serpentshrine Cavern",
				["encounterid"] = "2458",
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "eTo(MWl6fLD",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "BT - Ice Trap",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135848,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["use_aggro"] = true,
						["useExactSpellId"] = false,
						["use_unit"] = true,
						["use_eventtype"] = true,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["type"] = "aura2",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL_BUILDING",
						["group_countOperator"] = ">",
						["useAffected"] = true,
						["unit"] = "target",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["glow"] = true,
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
				["zoneIds"] = "339",
				["use_zone"] = false,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_zoneIds"] = true,
				["use_encounter"] = false,
				["zone"] = "Serpentshrine Cavern",
				["encounterid"] = "2458",
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "VV9y9mQzHl5",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "BT - Shell of Life",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135981,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["subeventSuffix"] = "_CAST_SUCCESS",
						["useExactSpellId"] = false,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL_BUILDING",
						["type"] = "aura2",
						["use_status"] = false,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["unevent"] = "timed",
						["useName"] = true,
						["use_genericShowOn"] = true,
						["useAffected"] = true,
						["unit"] = "player",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["encounterid"] = "601",
				["use_zoneIds"] = true,
				["zone"] = "Serpentshrine Cavern",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "e6jraNG2mUM",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Naj'entus - Impaling Spine",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135855,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
			["version"] = 8,
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
			["uid"] = "1PsV(qJXBjZ",
			["config"] = {
			},
			["selfPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["information"] = {
			},
			["borderInset"] = 1,
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["use_aggro"] = true,
						["useExactSpellId"] = true,
						["use_unit"] = true,
						["use_eventtype"] = true,
						["debuffType"] = "HARMFUL",
						["useName"] = false,
						["type"] = "aura2",
						["auraspellids"] = {
							"40883", -- [1]
							"40891", -- [2]
							"40880", -- [3]
							"40897", -- [4]
							"40882", -- [5]
							"40896", -- [6]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["group_countOperator"] = ">",
						["useAffected"] = true,
						["unit"] = "player",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
				["zoneIds"] = "339",
				["encounterid"] = "607",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "(c2BGif)r0k",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
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
						["op"] = "==",
						["value"] = "40883",
						["variable"] = "spellId",
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
						["value"] = "40891",
						["variable"] = "spellId",
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
						["value"] = "40880",
						["variable"] = "spellId",
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
						["value"] = "40897",
						["variable"] = "spellId",
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
						["value"] = "40882",
						["variable"] = "spellId",
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
						["value"] = "40896",
						["variable"] = "spellId",
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
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Shahraz - Prismatic Aura",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 134139,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["subeventSuffix"] = "_CAST_SUCCESS",
						["useExactSpellId"] = false,
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "SPELL_BUILDING",
						["type"] = "aura2",
						["use_status"] = false,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["unevent"] = "timed",
						["useName"] = true,
						["use_genericShowOn"] = true,
						["useAffected"] = true,
						["unit"] = "target",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
				["zoneIds"] = "339",
				["use_zone"] = false,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_zoneIds"] = true,
				["use_encounter"] = false,
				["zone"] = "Serpentshrine Cavern",
				["encounterid"] = "2458",
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "jC7E(al)2dV",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "MH - Anti Magic Shell",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136120,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["subeventSuffix"] = "_AURA_APPLIED",
						["useExactSpellId"] = false,
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "aura2",
						["use_status"] = false,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["unevent"] = "timed",
						["useName"] = true,
						["use_genericShowOn"] = true,
						["useAffected"] = true,
						["unit"] = "target",
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
						["unit"] = "target",
						["use_eventtype"] = true,
						["use_unit"] = true,
						["matchesShowOn"] = "showOnMissing",
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["useName"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["useExactSpellId"] = false,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["encounterid"] = "601",
				["use_zoneIds"] = true,
				["zone"] = "Serpentshrine Cavern",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "vobsepTkmgu",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Naj'entus - Missing MS",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 134197,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["realSpellName"] = "血性狂暴",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["spellName"] = 33697,
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
					["glowThickness"] = 1,
					["glow"] = false,
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
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
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
			["xOffset"] = 114.68,
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
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["url"] = "",
			["cooldown"] = true,
			["zoom"] = 0,
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "兽人天赋",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 3,
			["width"] = 40,
			["alpha"] = 1,
			["uid"] = "WYUlrKkAdg2",
			["inverse"] = false,
			["icon"] = true,
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
						["op"] = "==",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [2]
			},
			["information"] = {
			},
			["parent"] = "老雷增强萨WA",
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
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["realSpellName"] = "風暴打擊",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["spellName"] = 17364,
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
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["unit"] = "target",
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
					["glowThickness"] = 1,
					["glow"] = false,
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
					["text_text_format_p_time_format"] = 0,
					["type"] = "subtext",
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_color"] = {
						1, -- [1]
						0.5333333333333333, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_font"] = "聊天",
					["text_anchorYOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_text_format_2.s_format"] = "none",
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
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
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
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
			["xOffset"] = -44.68,
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
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["url"] = "",
			["cooldown"] = true,
			["zoom"] = 0,
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "风暴打击",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 40,
			["alpha"] = 1,
			["uid"] = "O0r3)C)SSg0",
			["inverse"] = false,
			["icon"] = true,
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
						["op"] = "==",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [2]
			},
			["information"] = {
			},
			["parent"] = "老雷增强萨WA",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["useExactSpellId"] = false,
						["fetchRaidMark"] = false,
						["use_unit"] = true,
						["use_aggro"] = true,
						["useName"] = true,
						["use_threatUnit"] = true,
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["type"] = "aura2",
						["realSpellName"] = "Impale",
						["unevent"] = "timed",
						["duration"] = "40",
						["unit"] = "player",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["spellName"] = "Intangible Presence",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["encounterid"] = "604",
				["use_zoneIds"] = true,
				["zone"] = "Serpentshrine Cavern",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "QREKKdswLsh",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
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
								["value"] = "8",
								["variable"] = "expirationTime",
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
								["value"] = "5",
								["variable"] = "expirationTime",
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
								["value"] = "4",
								["variable"] = "expirationTime",
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
								["value"] = "3",
								["variable"] = "expirationTime",
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
								["value"] = "2",
								["variable"] = "expirationTime",
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
								["value"] = "1",
								["variable"] = "expirationTime",
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
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Gorefiend - Shadow of Death",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135752,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["use_eventtype"] = true,
						["unit"] = "player",
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "combatlog",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["duration"] = "3",
						["useName"] = true,
						["useExactSpellId"] = false,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["encounterid"] = "602",
				["use_zoneIds"] = true,
				["zone"] = "Serpentshrine Cavern",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "CNxpkdjGljP",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Supremus - Volcanic Geyser",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135830,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["zoneIds"] = "339",
				["encounterid"] = "607",
				["use_zoneIds"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
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
						["spellIds"] = {
						},
						["events"] = "RAID_TARGET_UPDATE",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function(states, event, ...)\n    local mark = GetRaidTargetIndex(\"player\")\n    if mark == 1 then\n        states[\"\"] = {\n            show = true,\n            changed = true,\n            progressType = \"static\",\n            \n        }\n        return true\n    else\n        if states[\"\"] then\n            states[\"\"].show = false\n            states[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n",
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
					["text_shadowXOffset"] = 1,
					["text_anchorYOffset"] = -48,
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
			},
			["height"] = 160,
			["rotate"] = true,
			["fontSize"] = 12,
			["mirror"] = false,
			["fixedWidth"] = 200,
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["displayText_format_p_time_dynamic"] = false,
			["displayText_format_p_time_precision"] = 1,
			["wordWrap"] = "WordWrap",
			["config"] = {
			},
			["semver"] = "1.1.2",
			["justify"] = "LEFT",
			["zoom"] = 0,
			["id"] = "Shahraz - Fatal Right",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 160,
			["cooldownEdge"] = true,
			["parent"] = "Tems' BT/MH Pack",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Right.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.marks = {\n    [1] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_1\",\n    [2] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_2\",\n    [3] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_3\",\n    [4] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_4\",\n    [5] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_5\",\n    [6] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_6\",\n    [7] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_7\",\n    [8] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_8\",\n}",
					["do_custom"] = true,
				},
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
			},
			["preferToUpdate"] = false,
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["useExactSpellId"] = false,
						["use_aggro"] = true,
						["group_countOperator"] = ">",
						["unit"] = "target",
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["type"] = "unit",
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["use_threatUnit"] = true,
						["use_npcId"] = false,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["duration"] = "40",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
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
						["useName"] = true,
						["auranames"] = {
							"41431", -- [1]
						},
						["debuffType"] = "HELPFUL",
						["matchesShowOn"] = "showOnMissing",
						["type"] = "aura2",
						["unit"] = "target",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["encounterid"] = "606",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "WaaJAdD(LN0",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Reliquary - Spirit Shock",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135739,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
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
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
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
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["genericShowOn"] = "showOnActive",
						["use_absorbMode"] = true,
						["event"] = "Swing Timer",
						["names"] = {
						},
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["use_hand"] = true,
						["use_unit"] = true,
						["duration"] = "1",
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
						["names"] = {
						},
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["unevent"] = "auto",
						["duration"] = "1",
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
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["hand"] = "off",
						["unevent"] = "auto",
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
						["debuffType"] = "HELPFUL",
						["use_unit"] = true,
						["event"] = "Combat Log",
						["use_sourceName"] = false,
						["unit"] = "player",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["subeventSuffix"] = "_DAMAGE",
						["use_destUnit"] = false,
						["sourceUnit"] = "player",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_DAMAGE",
						["debuffType"] = "HELPFUL",
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
						["spellName"] = "风怒攻击",
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
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
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
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
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
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
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
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
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
						["unit"] = "player",
						["type"] = "aura2",
						["debuffType"] = "HELPFUL",
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
						["unit"] = "player",
						["type"] = "aura2",
						["debuffType"] = "HELPFUL",
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
					["text_text_format_3.p_time_precision"] = 1,
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_t_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_t_format"] = "timed",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_t_time_precision"] = 1,
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
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_fontType"] = "None",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
				}, -- [3]
				{
					["type"] = "subborder",
					["border_offset"] = 1,
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
					["border_size"] = 1,
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
			},
			["height"] = 15,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = true,
			["useAdjustedMax"] = false,
			["adjustedMax"] = "3",
			["config"] = {
			},
			["borderInFront"] = true,
			["xOffset"] = -1.6668701171875,
			["icon_side"] = "LEFT",
			["sparkOffsetX"] = 0,
			["sparkRotationMode"] = "AUTO",
			["sparkHeight"] = 50,
			["icon"] = true,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "1.0.14",
			["anchorFrameType"] = "SCREEN",
			["sparkHidden"] = "NEVER",
			["backdropColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 300,
			["id"] = "2.6/2.6 同速 2",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
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
			["spark"] = true,
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
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["auranames"] = {
							"血性狂怒", -- [1]
						},
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = "Berserking",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["type"] = "aura2",
						["unit"] = "player",
						["genericShowOn"] = "showAlways",
						["use_track"] = true,
						["spellName"] = 20554,
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
					["glowThickness"] = 1,
					["glow"] = true,
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
			["xOffset"] = 114.68,
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
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["url"] = "",
			["cooldown"] = true,
			["zoom"] = 0,
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "兽人天赋计时",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 4,
			["width"] = 40,
			["alpha"] = 1,
			["uid"] = "6QPrGJ2Pyz(",
			["inverse"] = false,
			["icon"] = true,
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
			["information"] = {
			},
			["parent"] = "老雷增强萨WA",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["use_aggro"] = true,
						["useExactSpellId"] = false,
						["use_unit"] = true,
						["use_eventtype"] = true,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["type"] = "aura2",
						["auraspellids"] = {
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "RANGE",
						["group_countOperator"] = ">",
						["useAffected"] = true,
						["unit"] = "player",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
				["zoneIds"] = "339",
				["encounterid"] = "606",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "N3S6(hSlr)B",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Reliquary - Deaden",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136212,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["subeventSuffix"] = "_DAMAGE",
						["spellName"] = "Intangible Presence",
						["use_aggro"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["useName"] = false,
						["type"] = "aura2",
						["auraspellids"] = {
							"41452", -- [1]
							"41453", -- [2]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["use_npcId"] = false,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["duration"] = "40",
						["use_unit"] = true,
						["unit"] = "target",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
				["zoneIds"] = "339",
				["encounterid"] = "608",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "EJaTJUKvSqD",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
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
						["op"] = "==",
						["value"] = "41452",
						["variable"] = "spellId",
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
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Council - Auras",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135872,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
					["desc"] = "Time before the icons dissapear",
					["key"] = "duration",
					["default"] = 7.5,
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
							["desc"] = "Spell ID of the spell to ignore",
							["key"] = "id",
							["default"] = 0,
						}, -- [1]
					},
					["hideReorder"] = false,
					["useDesc"] = false,
					["nameSource"] = 1,
					["width"] = 1,
					["useCollapse"] = true,
					["collapse"] = false,
					["name"] = "Blacklist spells",
					["key"] = "blacklist",
					["limitType"] = "none",
					["groupType"] = "array",
					["type"] = "group",
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
				["init"] = {
					["custom"] = "aura_env.lastCast = nil;\naura_env.blacklist = { --Yes Vardex, I know it's \"racially charged\"\n    [75] = true, --Auto Shot\n} \naura_env.spellcasts = 0;\n\n\nfor key,spell in pairs(aura_env.config.blacklist) do\n    aura_env.blacklist[spell.id] = true\nend\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
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
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Chat Message",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["custom"] = "function(allstates, event, ...)\n    local unit,_,spellID = ...\n    if unit == \"player\" then\n        if event == \"UNIT_SPELLCAST_SENT\" then \n            spellID = select(4, ...) \n            aura_env.lastCast = spellID\n        end\n        \n        if event == \"UNIT_SPELLCAST_SUCCEEDED\" \n        and spellID\n        and spellID == aura_env.lastCast  \n        and not aura_env.blacklist[spellID]\n        then\n            local name,_,icon = GetSpellInfo(spellID)\n            allstates[aura_env.spellcasts] = {\n                show = true,\n                changed = true,\n                name = name,\n                icon = icon,\n                caster = unit,\n                progressType = \"timed\",\n                duration = aura_env.config.duration,\n                expirationTime = GetTime() + aura_env.config.duration,\n                autoHide = true,\n            }\n            aura_env.spellcasts = aura_env.spellcasts+1\n            return true\n        end\n    end\n    \nend\n\n\n",
						["spellIds"] = {
						},
						["events"] = "UNIT_SPELLCAST_SENT, UNIT_SPELLCAST_SUCCEEDED:player",
						["check"] = "event",
						["names"] = {
						},
						["custom_type"] = "stateupdate",
						["custom_hide"] = "timed",
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
				["zoneIds"] = "",
			},
			["zoom"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
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
					["colorA"] = 1,
					["duration"] = "100%",
					["rotate"] = 0,
					["easeStrength"] = 1,
					["duration_type"] = "relative",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["icon"] = true,
			["cooldown"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
				["blacklist"] = {
				},
				["duration"] = 20,
			},
			["auto"] = true,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.4",
			["tocversion"] = 20504,
			["id"] = "Last_Player_Cast 2",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 45,
			["frameStrata"] = 1,
			["uid"] = "wMBcYiddrpH",
			["inverse"] = false,
			["xOffset"] = 0,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "GCD History 2",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["use_aggro"] = true,
						["useExactSpellId"] = false,
						["use_unit"] = true,
						["use_eventtype"] = true,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["type"] = "aura2",
						["auraspellids"] = {
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["group_countOperator"] = ">",
						["useAffected"] = true,
						["unit"] = "target",
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
						["use_hostility"] = true,
						["useExactSpellId"] = false,
						["names"] = {
						},
						["use_aggro"] = true,
						["useName"] = true,
						["debuffType"] = "HELPFUL",
						["unevent"] = "timed",
						["type"] = "unit",
						["use_threatUnit"] = true,
						["auraspellids"] = {
						},
						["use_npcId"] = false,
						["unit"] = "target",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["spellName"] = "Intangible Presence",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
				["zoneIds"] = "339",
				["encounterid"] = "606",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "8qZ7Uy1KDcU",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Reliquary - Frenzy",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136224,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["subeventSuffix"] = "_CAST_SUCCESS",
						["useExactSpellId"] = false,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL_BUILDING",
						["type"] = "aura2",
						["use_status"] = false,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["unevent"] = "timed",
						["useName"] = true,
						["use_genericShowOn"] = true,
						["useAffected"] = true,
						["unit"] = "player",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
				["zoneIds"] = "339",
				["use_zone"] = false,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_zoneIds"] = true,
				["use_encounter"] = false,
				["zone"] = "Serpentshrine Cavern",
				["encounterid"] = "2458",
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "m4(P1TtSk07",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "BT - Fixate",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136129,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["subeventSuffix"] = "_CAST_SUCCESS",
						["useExactSpellId"] = false,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL_BUILDING",
						["type"] = "aura2",
						["use_status"] = false,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["unevent"] = "timed",
						["useName"] = true,
						["use_genericShowOn"] = true,
						["useAffected"] = true,
						["unit"] = "player",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
				["zoneIds"] = "339",
				["use_zone"] = false,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_zoneIds"] = true,
				["use_encounter"] = false,
				["zone"] = "Serpentshrine Cavern",
				["encounterid"] = "2458",
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "Ic00nGcwClT",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "BT - Death Coil",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136145,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["useExactSpellId"] = false,
						["use_unit"] = true,
						["duration"] = "40",
						["use_eventtype"] = true,
						["useName"] = true,
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["type"] = "aura2",
						["use_threatUnit"] = true,
						["unevent"] = "timed",
						["realSpellName"] = "Impale",
						["unit"] = "player",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["group_countOperator"] = ">",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["encounterid"] = "621",
				["use_zoneIds"] = true,
				["zone"] = "Serpentshrine Cavern",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "XowMLoOXzlk",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
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
								["value"] = "3",
								["variable"] = "expirationTime",
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
								["value"] = "2",
								["variable"] = "expirationTime",
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
								["value"] = "1",
								["variable"] = "expirationTime",
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
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Azgalor - Doom",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 132094,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["subeventSuffix"] = "_DAMAGE",
						["spellName"] = "",
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["type"] = "event",
						["debuffType"] = "HARMFUL",
						["unevent"] = "timed",
						["useName"] = true,
						["use_threatUnit"] = true,
						["auraspellids"] = {
							"41917", -- [1]
						},
						["use_npcId"] = false,
						["unit"] = "player",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["use_message"] = true,
						["use_status"] = false,
						["useAffected"] = true,
						["use_eventtype"] = true,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
				["zoneIds"] = "339",
				["encounterid"] = "609",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "eeUqnsWX1Sp",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Illidan - Demon Within",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136172,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["subeventSuffix"] = "_DAMAGE",
						["spellName"] = "Intangible Presence",
						["use_aggro"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["type"] = "aura2",
						["auraspellids"] = {
							"41917", -- [1]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["use_npcId"] = false,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["duration"] = "40",
						["use_unit"] = true,
						["unit"] = "player",
						["useAffected"] = true,
						["use_eventtype"] = true,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["encounterid"] = "609",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "llx)CBwqO)H",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Illidan - Shadow Demon",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136185,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
		},
		["Shaman: Wep Enchant Timers 2"] = {
			["iconSource"] = -1,
			["wagoID"] = "zIewDveCx",
			["authorOptions"] = {
				{
					["type"] = "header",
					["text"] = "|cFF00FFFFGENERAL|r",
					["useName"] = true,
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "toggle",
					["default"] = true,
					["key"] = "missingMH",
					["useDesc"] = false,
					["name"] = "Display missing main-hand",
					["width"] = 1,
				}, -- [2]
				{
					["type"] = "toggle",
					["default"] = true,
					["key"] = "missingOH",
					["useDesc"] = false,
					["name"] = "Display missing off-hand",
					["width"] = 1,
				}, -- [3]
				{
					["type"] = "header",
					["text"] = "|cFF00FFFFPOSITION SETTINGS|r",
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
					["key"] = "direction",
					["name"] = "Icon growth direction",
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
					["name"] = "Icon spacing (in pixels)",
					["default"] = 10,
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
						["customVariables"] = "{\n    stacks = {\n        display = \"stacks left\",\n        type = \"number\",\n    },\n    missing = {\n        display = \"missing enchant\",\n        type = \"bool\",\n    },\n    duration = {\n        display = \"duration (in seconds)\",\n        type = \"number\",\n    },\n}",
						["debuffType"] = "HELPFUL",
						["use_unit"] = true,
						["type"] = "custom",
						["names"] = {
						},
						["useExactSpellId"] = true,
						["unevent"] = "auto",
						["events"] = "PLAYER_ENTERING_WORLD UNIT_INVENTORY_CHANGED:player ITEM_ENCH",
						["event"] = "Weapon Enchant",
						["custom"] = "function(states, event, ...)\n    if event == \"OPTIONS\" then\n        states[\"\"] = {\n            name = \"Instant Poison\",\n            slot = \"main-hand\",\n            icon = 132273,\n            stacks = 55,\n            missing = false,\n            duration = 900,\n            expirationTime = GetTime() + 900,\n            index = 1,\n            progressType = \"timed\",\n            autoHide = true,\n            changed = true,\n            show = true,\n        } \n        \n        states[\"\"] = {\n            name = \"Wound Poison\",\n            slot = \"main-hand\",\n            icon = 134197,\n            stacks = 105,\n            missing = false,\n            duration = 1200,\n            expirationTime = GetTime() + 1200,\n            index = 2,\n            progressType = \"timed\",\n            autoHide = true,\n            changed = true,\n            show = true,\n        }\n        \n        states[\"OH\"] = {\n            name = \"Deadly Poison\",\n            slot = \"off-hand\",\n            icon = 132290,\n            stacks = 105,\n            missing = false,\n            duration = 1200,\n            expirationTime = GetTime() + 1200,\n            index = 2,\n            progressType = \"timed\",\n            autoHide = true,\n            changed = true,\n            show = true,\n        }\n        \n        states[\"OH\"] = {\n            name = \"Wound Poison\",\n            slot = \"off-hand\",\n            icon = 134197,\n            stacks = 105,\n            missing = false,\n            duration = 1200,\n            expirationTime = GetTime() + 1200,\n            index = 2,\n            progressType = \"timed\",\n            autoHide = true,\n            changed = true,\n            show = true,\n        }\n        aura_env.flag = true\n    elseif event == \"PLAYER_ENTERING_WORLD\" or event == \"UNIT_INVENTORY_CHANGED\" then --doesn't return valid durations without C_Timer\n        C_Timer.After(0.5, function()\n                WeakAuras.ScanEvents(\"ITEM_ENCH\")\n            end\n        )\n    elseif event == \"ITEM_ENCH\" and not WeakAuras.IsOptionsOpen() then\n        for k, v in pairs(states) do\n            v.show = false\n            v.changed = true\n        end\n        \n        local mh = GetInventoryItemLink(\"player\", 16)\n        local oh = GetInventoryItemLink(\"player\", 17)\n        local itemType = oh and select(9, GetItemInfo(oh)) or false\n        local isWeapon = itemType and (itemType == \"INVTYPE_WEAPON\" or itemType == \"INVTYPE_WEAPONOFFHAND\")\n        \n        local hasMHEnchant, MHExpiration, MHCharges, MHEnchantID, hasOHEnchant, OHExpiration, OHCharges, OHEnchantID = GetWeaponEnchantInfo()\n        -- main-hand\n        if hasMHEnchant then\n            local name = \"main-hand\"\n            local icon = 136235\n            local stacks = MHCharges or 0\n            \n            if MHEnchantID and aura_env.list[MHEnchantID] then\n                name = aura_env.list[MHEnchantID][1]\n                icon = aura_env.list[MHEnchantID][2]\n            elseif mh then\n                icon = select(10, GetItemInfo(mh))\n            end\n            \n            local duration = MHExpiration / 1000\n            local expirationTime = GetTime() + duration\n            \n            states[\"MH\"] = {\n                name = name,\n                slot = \"main-hand\",\n                icon = icon,\n                stacks = stacks,\n                missing = false,\n                duration = duration,\n                expirationTime = expirationTime,\n                index = 1,\n                progressType = \"timed\",\n                autoHide = true,\n                changed = true,\n                show = true,\n            } \n        elseif aura_env.config.missingMH and mh then\n            local icon = select(10, GetItemInfo(mh))\n            states[\"MH\"] = {\n                name = \"main-hand\",\n                slot = \"missing MH\",\n                icon = icon,\n                stacks = 0,\n                index = 1,\n                missing = true,\n                autoHide = false,\n                changed = true,\n                show = true,\n            } \n        end\n        \n        -- off-hand\n        if hasOHEnchant then\n            local name = \"off-hand\"\n            local icon = 136235\n            local stacks = OHCharges or 0\n            \n            if OHEnchantID and aura_env.list[OHEnchantID] then\n                name = aura_env.list[OHEnchantID][1]\n                icon = aura_env.list[OHEnchantID][2]\n            elseif oh then\n                icon = select(10, GetItemInfo(oh))\n            end\n            \n            local duration = OHExpiration / 1000\n            local expirationTime = GetTime() + duration\n            \n            states[\"OH\"] = {\n                name = name,\n                slot = \"off-hand\",\n                icon = icon,\n                stacks = stacks,\n                missing = false,\n                duration = duration,\n                expirationTime = expirationTime,\n                index = 2,\n                progressType = \"timed\",\n                autoHide = true,\n                changed = true,\n                show = true,\n            }\n        elseif aura_env.config.missingOH and oh and isWeapon then\n            local icon = select(10, GetItemInfo(oh))\n            states[\"OH\"] = {\n                name = \"off-hand\",\n                slot = \"missing OH\",\n                icon = icon,\n                stacks = 0,\n                index = 2,\n                missing = true,\n                autoHide = false,\n                changed = true,\n                show = true,\n            } \n        end\n        \n        aura_env.flag = true\n        return true\n    end\nend",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"6829", -- [1]
						},
						["spellIds"] = {
						},
						["unit"] = "player",
						["check"] = "event",
						["custom_type"] = "stateupdate",
						["custom_hide"] = "timed",
						["weapon"] = "main",
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
					["alphaFunc"] = "function(progress, start, delta)\n    if aura_env.flag then\n        aura_env.flag = false\n        aura_env.sortAndOffset()\n    end\n    return start\nend",
					["use_alpha"] = true,
					["type"] = "custom",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["y"] = 0,
					["x"] = 0,
					["colorA"] = 1,
					["duration"] = "1",
					["easeStrength"] = 3,
					["rotate"] = 0,
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
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_anchorYOffset"] = -4,
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
					["text_visible"] = false,
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_text_format_slot_format"] = "none",
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
					["text_shadowYOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_anchorYOffset"] = -10,
					["text_text_format_p_format"] = "timed",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_visible"] = true,
					["text_text_format_p_time_precision"] = 1,
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_shadowXOffset"] = 0,
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
					["glow"] = false,
					["glowThickness"] = 1,
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
				["size"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["level"] = "60",
				["level_operator"] = ">=",
				["zoneIds"] = "",
			},
			["uid"] = "yxBD(YESHck",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "C_Timer.After(1, function()\n        WeakAuras.ScanEvents(\"ITEM_ENCH\") \n    end\n)\n\n\naura_env.list = {\n    [1] = {\"Rockbiter\", 136086, 300},\n    [2] = {\"Frostbrand\", 135847, 300},\n    [3] = {\"Flametongue\", 135814, 300},\n    [4] = {\"Flametongue\", 135814, 300},\n    [5] = {\"Flametongue\", 135814, 300},\n    [6] = {\"Rockbiter\", 136086, 300},\n    [7] = {\"Deadly Poison\", 132290, 1800},\n    [8] = {\"Deadly Poison\", 132290, 1800},\n    [12] = {\"Frostbrand\", 135847, 300},\n    [13] = {\"Sharpened\", 135249, 1800}, --[+3 Damage]\n    [14] = {\"Sharpened\", 135250, 1800}, --[+4 Damage]\n    [19] = {\"Weighted\", 135255, 1800}, --[+2 Damage]\n    [20] = {\"Weighted\", 135256, 1800}, --[+3 Damage]\n    [21] = {\"Weighted\", 135257, 1800}, --[+4 Damage]\n    [22] = {\"Crippling Poison\", 132274, 1800},\n    [23] = {\"Mind-Numbing Poison\", 136066, 1800},\n    [25] = {\"Shadow Oil\", 134803, 1800},\n    [26] = {\"Frost Oil\", 134800, 1800},\n    [29] = {\"Rockbiter\", 136086, 300},\n    [35] = {\"Mind-numbing Poison\", 136066, 1800},\n    [39] = {\"Sharpened\", 135248, 1800}, --[+1 Damage] ????\n    [40] = {\"Sharpened\", 135248, 1800}, --[+2 Damage]\n    [42] = {\"Instant Poison\", 132273, 1800},\n    [124] = {\"Flametongue Totem\", 135814, 120},\n    [283] = {\"Windfury\", 136018, 300},\n    [284] = {\"Windfury\", 136018, 300},\n    [285] = {\"Flametongue Totem\", 135814, 120},\n    [323] = {\"Instant Poison\", 132273, 1800},\n    [324] = {\"Instant Poison\", 132273, 1800},\n    [325] = {\"Instant Poison\", 132273, 1800},\n    [483] = {\"Sharpened\", 135251, 1800}, --[+6 Damage]\n    [484] = {\"Weighted\", 135258, 1800}, --[+6 Damage]\n    [503] = {\"Rockbiter\", 136086, 300},\n    [504] = {\"Rockbiter\", 136086, 300},\n    [523] = {\"Flametongue\", 135814, 300},\n    [524] = {\"Frostbrand\", 135847, 300},\n    [525] = {\"Windfury\", 136018, 300},\n    [543] = {\"Flametongue Totem\", 135814, 120},\n    [563] = {\"Windfury Totem\", 136114, 120},\n    [564] = {\"Windfury Totem\", 136114, 120},\n    [603] = {\"Crippling Poison\", 134799, 1800},\n    [623] = {\"Instant Poison\", 132273, 1800},\n    [624] = {\"Instant Poison\", 132273, 1800},\n    [625] = {\"Instant Poison\", 132273, 1800},\n    [626] = {\"Deadly Poison\", 132290, 1800},\n    [627] = {\"Deadly Poison\", 132290, 1800},\n    [643] = {\"Mind-Numbing Poison\", 136066, 1800},\n    [683] = {\"Rockbiter\", 136086, 300},\n    [703] = {\"Wound Poison\", 132274, 1800},\n    [704] = {\"Wound Poison\", 132274, 1800},\n    [705] = {\"Wound Poison\", 132274, 1800},\n    [706] = {\"Wound Poison\", 132274, 1800},\n    [1643] = {\"Sharpened\", 135252, 1800}, --[+8 Damage]\n    [1663] = {\"Rockbiter\", 136086, 300},\n    [1664] = {\"Rockbiter\", 136086, 300},\n    [1665] = {\"Flametongue\", 135814, 300},\n    [1666] = {\"Flametongue\", 135814, 300},\n    [1667] = {\"Frostbrand\", 135847, 300},\n    [1668] = {\"Frostbrand\", 135847, 300},\n    [1669] = {\"Windfury\", 136018, 300},\n    [1683] = {\"Flametongue Totem\", 135814, 120},\n    [1703] = {\"Weighted\", 135259, 1800}, --[+8 Damage]\n    [1783] = {\"Windfury Totem\", 136114, 120},\n    [2623] = {\"Minor Wizard Oil\", 134711, 1800},\n    [2624] = {\"Minor Mana Oil\", 134878, 1800},\n    [2625] = {\"Lesser Mana Oil\", 134879, 1800},\n    [2626] = {\"Lesser Wizard Oil\", 134725, 1800},\n    [2627] = {\"Wizard Oil\", 134726, 1800},\n    [2628] = {\"Brilliant Wizard Oil\", 134727, 1800},\n    [2629] = {\"Brilliant Mana Oil\", 134722, 1800},\n    [2630] = {\"Deadly Poison\", 132290, 1800},\n    [2632] = {\"Rockbiter\", 136086, 300},\n    [2633] = {\"Rockbiter\", 136086, 300},\n    [2634] = {\"Flametongue Totem\", 135814, 120},\n    [2635] = {\"Frostbrand\", 135847, 300},\n    [2636] = {\"Windfury\", 136018, 300},\n    [2637] = {\"Flametongue Totem\", 135814, 120},\n    [2638] = {\"Windfury Totem\", 136114, 120},\n    [2639] = {\"Windfury Totem\", 136114, 120},\n    [2641] = {\"Instant Poison\", 132273, 1800},\n    [2642] = {\"Deadly Poison\", 132290, 1800}, --6\n    [2643] = {\"Deadly Poison\", 132290, 1800}, --7\n    [2644] = {\"Wound Poison\", 132274, 1800},\n}\n\naura_env.sortAndOffset = function()\n    local spacing = aura_env.config.spacing or 2\n    local count = WeakAuras.IsOptionsOpen() and 1 or 0\n    local t = {}\n    \n    for k, v in pairs(WeakAuras.clones[aura_env.id]) do\n        if v.state and v.state.slot and v.state.index then\n            table.insert(t, v)\n        end\n    end\n    table.sort(t, function(a, b) return a.state.index < b.state.index end)\n    \n    for i, region in pairs(t) do\n        if region.toShow then\n            local xOffset\n            local yOffset\n            \n            \n            if aura_env.config.direction == 1 then\n                xOffset = 0 - (region.width + spacing) * count\n                yOffset = 0\n            elseif aura_env.config.direction == 2 then\n                xOffset = 0 + (region.width + spacing) * count\n                yOffset = 0\n            elseif aura_env.config.direction == 3 then\n                xOffset = 0\n                yOffset = 0 + (region.width + spacing) * count\n            elseif aura_env.config.direction == 4 then\n                xOffset = 0\n                yOffset = 0 - (region.width + spacing) * count\n            end\n            \n            region:SetAnchor(\"CENTER\" , WeakAuras.regions[aura_env.id].region, \"CENTER\")\n            region:SetOffset(xOffset, yOffset)\n            \n            count = count + 1\n        end\n    end\nend\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136244,
			["parent"] = "老雷增强萨WA",
			["semver"] = "2.0.0",
			["width"] = 40,
			["cooldownTextDisabled"] = true,
			["auto"] = true,
			["tocversion"] = 20501,
			["id"] = "Shaman: Wep Enchant Timers 2",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["config"] = {
				["direction"] = 4,
				["missingOH"] = true,
				["missingMH"] = true,
				["spacing"] = 30,
			},
			["inverse"] = false,
			["selfPoint"] = "CENTER",
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
								["variable"] = "duration",
								["value"] = "120",
							}, -- [1]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 1,
										["op"] = "<=",
										["variable"] = "stacks",
										["value"] = "6",
									}, -- [1]
									{
										["trigger"] = 1,
										["op"] = ">=",
										["variable"] = "stacks",
										["value"] = "1",
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
			["cooldown"] = true,
			["xOffset"] = -126,
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
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["role"] = {
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
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["event"] = "Swing Timer",
						["names"] = {
						},
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["use_hand"] = true,
						["genericShowOn"] = "showOnActive",
						["duration"] = "1",
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
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["genericShowOn"] = "showOnActive",
						["use_absorbMode"] = true,
						["unevent"] = "auto",
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
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "聊天",
					["text_fontType"] = "None",
					["text_shadowYOffset"] = -1,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_LEFT",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 12,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_precision"] = 1,
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
					["text_visible"] = true,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_n_format"] = "none",
				}, -- [4]
				{
					["tick_blend_mode"] = "ADD",
					["tick_rotation"] = 0,
					["tick_xOffset"] = 0,
					["tick_desaturate"] = false,
					["automatic_length"] = true,
					["tick_thickness"] = 2,
					["tick_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["use_texture"] = false,
					["tick_placement_mode"] = "AtValue",
					["tick_visible"] = true,
					["tick_placement"] = "1.1",
					["tick_yOffset"] = 0,
					["tick_texture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
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
					["tick_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["use_texture"] = false,
					["tick_placement_mode"] = "AtValue",
					["tick_visible"] = true,
					["tick_placement"] = "0.6",
					["tick_yOffset"] = 0,
					["tick_texture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
					["tick_length"] = 30,
					["tick_mirror"] = false,
					["type"] = "subtick",
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
			["spark"] = false,
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
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkHidden"] = "NEVER",
			["semver"] = "1.0.16",
			["anchorFrameType"] = "SELECTFRAME",
			["id"] = "副手",
			["config"] = {
			},
			["frameStrata"] = 1,
			["width"] = 300,
			["zoom"] = 0,
			["useAdjustededMax"] = true,
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
			["preferToUpdate"] = false,
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["useExactSpellId"] = false,
						["use_aggro"] = true,
						["group_countOperator"] = ">",
						["unit"] = "target",
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["type"] = "unit",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["use_npcId"] = false,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["use_unit"] = true,
						["useAffected"] = true,
						["use_eventtype"] = true,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = false,
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
				["zoneIds"] = "339",
				["encounterid"] = "622",
				["use_zoneIds"] = true,
				["zone"] = "Serpentshrine Cavern",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "MPANdzGFVAL",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
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
						["op"] = "==",
						["value"] = "player",
						["variable"] = "destUnit",
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
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Archimonde - Air Burst Cast",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136116,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
				},
				["init"] = {
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
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["useExactSpellId"] = true,
						["realSpellName"] = "Grounding Totem",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useName"] = false,
						["subeventPrefix"] = "SPELL",
						["matchesShowOn"] = "showAlways",
						["use_track"] = true,
						["spellName"] = 8177,
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
						["debuffType"] = "HELPFUL",
						["use_exact_spellName"] = true,
						["event"] = "Spell Known",
						["use_track"] = true,
						["spellName"] = 24398,
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
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_text_format_p_time_format"] = 1,
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
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
					["glowThickness"] = 1,
					["glow"] = false,
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
			["cooldownEdge"] = false,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["xOffset"] = -84.68,
			["cooldown"] = true,
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
			["config"] = {
			},
			["frameStrata"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "水盾/电盾",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 40,
			["cooldownTextDisabled"] = true,
			["uid"] = "PVxS0nT4DLi",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = 132315,
			["information"] = {
			},
			["parent"] = "老雷增强萨WA",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["use_aggro"] = true,
						["useExactSpellId"] = false,
						["use_unit"] = true,
						["use_eventtype"] = true,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["type"] = "aura2",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL_BUILDING",
						["group_countOperator"] = ">",
						["useAffected"] = true,
						["unit"] = "target",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["glow"] = true,
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
				["zoneIds"] = "339",
				["use_zone"] = false,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_zoneIds"] = true,
				["use_encounter"] = false,
				["zone"] = "Serpentshrine Cavern",
				["encounterid"] = "2458",
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "4UqZT9xGqcW",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "BT - Shell of Pain",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136121,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["subeventSuffix"] = "_AURA_APPLIED",
						["useExactSpellId"] = false,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "aura2",
						["use_status"] = false,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["unevent"] = "timed",
						["useName"] = true,
						["use_genericShowOn"] = true,
						["useAffected"] = true,
						["unit"] = "target",
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
						["use_aggro"] = true,
						["useExactSpellId"] = false,
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["useName"] = true,
						["unevent"] = "timed",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["duration"] = "8",
						["names"] = {
						},
						["unit"] = "group",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["encounterid"] = "601",
				["use_zoneIds"] = true,
				["zone"] = "Serpentshrine Cavern",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "AfsHa8VNPYj",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
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
						["trigger"] = 2,
						["op"] = "<=",
						["value"] = "8500",
						["variable"] = "health",
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
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Naj'entus - Tidal Shield",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136017,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["type"] = "spell",
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = 1535,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["genericShowOn"] = "showAlways",
						["use_exact_spellName"] = true,
						["use_track"] = true,
						["spellName"] = 1535,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["event"] = "Conditions",
						["unit"] = "player",
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
					["glowThickness"] = 1,
					["glow"] = false,
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
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
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
			["cooldownEdge"] = false,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["xOffset"] = 73.09100341796875,
			["cooldown"] = true,
			["conditions"] = {
			},
			["config"] = {
			},
			["frameStrata"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "火焰新星图腾监控",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 40,
			["cooldownTextDisabled"] = false,
			["uid"] = "ejLsBJRS56g",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = 135824,
			["information"] = {
			},
			["parent"] = "老雷增强萨WA",
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
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["auranames"] = {
							"狂暴", -- [1]
						},
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = "Berserking",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["type"] = "aura2",
						["unit"] = "player",
						["genericShowOn"] = "showAlways",
						["use_track"] = true,
						["spellName"] = 20554,
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
					["glowThickness"] = 1,
					["glow"] = true,
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
			["xOffset"] = 114.68,
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
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["url"] = "",
			["cooldown"] = true,
			["zoom"] = 0,
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "巨魔天赋计时",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 4,
			["width"] = 40,
			["alpha"] = 1,
			["uid"] = "R4TkgA)l6ie",
			["inverse"] = false,
			["icon"] = true,
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
			["information"] = {
			},
			["parent"] = "老雷增强萨WA",
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
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_message"] = false,
					["message_format_s_format"] = "none",
				},
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["useExactSpellId"] = false,
						["use_messageType"] = false,
						["use_destUnit"] = true,
						["use_track"] = true,
						["subeventSuffix"] = "",
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["spellName"] = "Intangible Presence",
						["subeventPrefix"] = "PARTY_KILL",
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["duration"] = "3",
						["use_threatUnit"] = true,
						["realSpellName"] = "Intangible Presence",
						["names"] = {
						},
						["use_unit"] = true,
						["use_destName"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["use_aggro"] = true,
						["useName"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["percenthealth_operator"] = "<",
						["type"] = "aura2",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_sourceNpcId"] = false,
						["use_message"] = true,
						["use_percenthealth"] = true,
						["useAffected"] = true,
						["sourceNpcId"] = "",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
				["zoneIds"] = "339",
				["encounterid"] = "605",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "fUd3re(Hx4c",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
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
						["op"] = ">=",
						["value"] = "15",
						["variable"] = "stacks",
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
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Gurtogg - Acidic Wound",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 132155,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["useExactSpellId"] = false,
						["use_aggro"] = true,
						["group_countOperator"] = ">",
						["unit"] = "player",
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["type"] = "aura2",
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["use_threatUnit"] = true,
						["use_npcId"] = false,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["duration"] = "40",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
				["zoneIds"] = "339",
				["encounterid"] = "608",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "omd8ZWRPOcq",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Council - Hammer of Justice",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135963,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["use_eventtype"] = true,
						["unit"] = "player",
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL_BUILDING",
						["type"] = "aura2",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["duration"] = "3",
						["useName"] = true,
						["useExactSpellId"] = false,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
				["zoneIds"] = "339",
				["use_zone"] = false,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_zoneIds"] = true,
				["use_encounter"] = false,
				["zone"] = "Serpentshrine Cavern",
				["encounterid"] = "2458",
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "cYE)JrT0HJJ",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "BT - Fear",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136183,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_message"] = false,
					["message_format_s_format"] = "none",
				},
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["useExactSpellId"] = false,
						["use_messageType"] = false,
						["use_destUnit"] = true,
						["use_track"] = true,
						["subeventSuffix"] = "",
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["spellName"] = "Intangible Presence",
						["subeventPrefix"] = "PARTY_KILL",
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["duration"] = "3",
						["use_threatUnit"] = true,
						["realSpellName"] = "Intangible Presence",
						["names"] = {
						},
						["use_unit"] = true,
						["use_destName"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["use_aggro"] = true,
						["useName"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["percenthealth_operator"] = "<",
						["type"] = "aura2",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_sourceNpcId"] = false,
						["use_message"] = true,
						["use_percenthealth"] = true,
						["useAffected"] = true,
						["sourceNpcId"] = "",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
				["zoneIds"] = "339",
				["encounterid"] = "605",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "Khv11wwsWt8",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Gurtogg - Bewildering Strike",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 132096,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["use_eventtype"] = true,
						["unit"] = "player",
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL_BUILDING",
						["type"] = "aura2",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["duration"] = "3",
						["useName"] = true,
						["useExactSpellId"] = false,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
				["zoneIds"] = "339",
				["use_zone"] = false,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_zoneIds"] = true,
				["use_encounter"] = false,
				["zone"] = "Serpentshrine Cavern",
				["encounterid"] = "2458",
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "IWwKLnCr2)s",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "BT - Stun Effects",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 132368,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["zoneIds"] = "339",
				["encounterid"] = "607",
				["use_zoneIds"] = true,
				["zone"] = "Black Temple",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
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
						["spellIds"] = {
						},
						["events"] = "RAID_TARGET_UPDATE",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function(states, event, ...)\n    local mark = GetRaidTargetIndex(\"player\")\n    if mark == 3 then\n        states[\"\"] = {\n            show = true,\n            changed = true,\n            progressType = \"static\",\n            \n        }\n        return true\n    else\n        if states[\"\"] then\n            states[\"\"].show = false\n            states[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n",
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
					["text_anchorYOffset"] = -36,
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
			},
			["height"] = 160,
			["rotate"] = true,
			["fontSize"] = 12,
			["mirror"] = false,
			["fixedWidth"] = 200,
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["displayText_format_p_time_dynamic"] = false,
			["displayText_format_p_time_precision"] = 1,
			["wordWrap"] = "WordWrap",
			["config"] = {
			},
			["semver"] = "1.1.2",
			["justify"] = "LEFT",
			["zoom"] = 0,
			["id"] = "Shahraz - Fatal Forward",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 160,
			["cooldownEdge"] = true,
			["parent"] = "Tems' BT/MH Pack",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\RunAway.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.marks = {\n    [1] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_1\",\n    [2] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_2\",\n    [3] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_3\",\n    [4] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_4\",\n    [5] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_5\",\n    [6] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_6\",\n    [7] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_7\",\n    [8] = \"Interface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_8\",\n}",
					["do_custom"] = true,
				},
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
			},
			["preferToUpdate"] = false,
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["subeventSuffix"] = "_CAST_SUCCESS",
						["useExactSpellId"] = false,
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "SPELL_BUILDING",
						["type"] = "aura2",
						["use_status"] = false,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["unevent"] = "timed",
						["useName"] = true,
						["use_genericShowOn"] = true,
						["useAffected"] = true,
						["unit"] = "target",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["use_zone"] = false,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_zoneIds"] = true,
				["use_encounter"] = false,
				["zone"] = "Serpentshrine Cavern",
				["encounterid"] = "2458",
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "qRzIragej)P",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "BT - Chaotic Light",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135874,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["use_eventtype"] = true,
						["unit"] = "player",
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL_BUILDING",
						["type"] = "aura2",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["duration"] = "3",
						["useName"] = true,
						["useExactSpellId"] = false,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["use_zone"] = false,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_zoneIds"] = true,
				["use_encounter"] = false,
				["zone"] = "Serpentshrine Cavern",
				["encounterid"] = "2458",
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "xl9cShewn(b",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "BT - Curses",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135952,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["useExactSpellId"] = false,
						["use_aggro"] = true,
						["group_countOperator"] = ">",
						["unit"] = "player",
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["type"] = "aura2",
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["use_threatUnit"] = true,
						["use_npcId"] = false,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["duration"] = "40",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["encounterid"] = "606",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "EnfkzXPT3G8",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
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
						["op"] = "<",
						["value"] = "6",
						["variable"] = "expirationTime",
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
						["value"] = "3",
						["variable"] = "expirationTime",
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
						["value"] = "2",
						["variable"] = "expirationTime",
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
						["value"] = "1",
						["variable"] = "expirationTime",
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
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Reliquary - Spite",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136150,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["realSpellName"] = "地震術",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["spellName"] = 25454,
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
						["useRem"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["unit"] = "player",
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
					["glowThickness"] = 1,
					["glow"] = false,
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
					["text_text_format_2.p_time_precision"] = 1,
					["type"] = "subtext",
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_color"] = {
						0, -- [1]
						1, -- [2]
						0.1294117647058823, -- [3]
						1, -- [4]
					},
					["text_font"] = "聊天",
					["text_fontType"] = "OUTLINE",
					["text_shadowYOffset"] = 0,
					["text_text_format_2.p_time_dynamic_threshold"] = 60,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
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
			["cooldownEdge"] = false,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["xOffset"] = -4.68,
			["cooldown"] = true,
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
						["op"] = "==",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [3]
			},
			["config"] = {
			},
			["frameStrata"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "地震术",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 40,
			["cooldownTextDisabled"] = false,
			["uid"] = "6E6sjYZk9l4",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = 136027,
			["information"] = {
			},
			["parent"] = "老雷增强萨WA",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["use_aggro"] = true,
						["useExactSpellId"] = true,
						["use_unit"] = true,
						["use_eventtype"] = true,
						["debuffType"] = "HARMFUL",
						["useName"] = false,
						["type"] = "aura2",
						["auraspellids"] = {
							"32053", -- [1]
							"32054", -- [2]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["group_countOperator"] = ">",
						["useAffected"] = true,
						["unit"] = "player",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
				["zoneIds"] = "339",
				["encounterid"] = "622",
				["use_zoneIds"] = true,
				["zone"] = "Serpentshrine Cavern",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "BoCJUC4mbvQ",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
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
						["op"] = "==",
						["value"] = "32053",
						["variable"] = "spellId",
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
						["value"] = "32054",
						["variable"] = "spellId",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.text_visible",
						}, -- [1]
					},
				}, -- [2]
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Archimonde - Soul Charge",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 132869,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["init"] = {
					["custom"] = "",
					["do_custom"] = true,
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
						["debuffType"] = "HELPFUL",
						["duration"] = "1",
						["use_itemName"] = true,
						["unit"] = "player",
						["itemName"] = 0,
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["event"] = "Conditions",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["buffShowOn"] = "showOnActive",
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
				["zone"] = "奧格瑪",
				["use_spellknown"] = false,
				["use_class"] = true,
				["use_zone"] = true,
				["level_operator"] = ">",
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["level"] = "55",
				["spellknown"] = 1953,
				["zoneIds"] = "",
			},
			["fontSize"] = 18,
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["conditions"] = {
			},
			["preferToUpdate"] = false,
			["parent"] = "NAXX 狂暴战 药剂清单",
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "slidebottom",
					["duration_type"] = "seconds",
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
			["yOffset"] = 5,
			["semver"] = "1.0.3",
			["justify"] = "LEFT",
			["tocversion"] = 20504,
			["id"] = "Caption text",
			["uid"] = "pn84AM)8tKh",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["automaticWidth"] = "Auto",
			["config"] = {
			},
			["xOffset"] = 5,
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
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "TOP",
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
				["init"] = {
				},
				["finish"] = {
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
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["buffShowOn"] = "showOnActive",
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
			["align"] = "LEFT",
			["stagger"] = 0,
			["version"] = 4,
			["anchorPoint"] = "CENTER",
			["config"] = {
			},
			["useLimit"] = false,
			["load"] = {
				["zoneIds"] = "",
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
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
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
				["race"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["customSort"] = "function(a, b)\n    if(a.name and b.name) then\n        return a.name <= b.name\n    else\n        print(a.data.name)\n            return false\n        end\n        \n    end",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["yOffset"] = 159.3478315703289,
			["animate"] = false,
			["selfPoint"] = "TOPLEFT",
			["scale"] = 0.6,
			["rotation"] = 0,
			["border"] = true,
			["borderEdge"] = "None",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 3,
			["limit"] = 5,
			["radius"] = 200,
			["arcLength"] = 360,
			["constantFactor"] = "RADIUS",
			["rowSpace"] = 1,
			["borderOffset"] = 17,
			["semver"] = "1.0.3",
			["tocversion"] = 20504,
			["id"] = "NAXX 狂暴战 药剂清单",
			["frameStrata"] = 1,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["sort"] = "none",
			["uid"] = "Mfi6DZV3Q6q",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["borderInset"] = 1,
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
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["subeventPrefix"] = "SPELL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["unit"] = "player",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["radius"] = 200,
			["useLimit"] = true,
			["align"] = "CENTER",
			["config"] = {
			},
			["rotation"] = 0,
			["internalVersion"] = 51,
			["version"] = 5,
			["subRegions"] = {
			},
			["authorOptions"] = {
			},
			["gridType"] = "RD",
			["load"] = {
				["use_class"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
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
				["zoneIds"] = "",
			},
			["customSort"] = "function(a,b)\n    return a.cloneId > b.cloneId\nend\n\n\n",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["grow"] = "LEFT",
			["animate"] = true,
			["space"] = 4,
			["scale"] = 1,
			["fullCircle"] = true,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["limit"] = 7,
			["selfPoint"] = "RIGHT",
			["borderInset"] = 1,
			["constantFactor"] = "RADIUS",
			["frameStrata"] = 1,
			["borderOffset"] = 4,
			["semver"] = "1.0.4",
			["tocversion"] = 20504,
			["id"] = "GCD History 2",
			["sort"] = "custom",
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["stagger"] = 0,
			["uid"] = "YvY(j5XLZ3)",
			["hybridPosition"] = "hybridFirst",
			["rowSpace"] = 1,
			["conditions"] = {
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
				["finish"] = {
				},
				["init"] = {
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
						["unit"] = "player",
						["type"] = "spell",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Totem",
						["form"] = {
						},
						["use_itemName"] = true,
						["totemType"] = 4,
						["use_threatUnit"] = true,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["threatUnit"] = "target",
						["names"] = {
						},
						["realSpellName"] = 0,
						["use_track"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["useExactSpellId"] = false,
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
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
					["glowThickness"] = 1,
					["glow"] = false,
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
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
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
			["cooldownEdge"] = false,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["xOffset"] = -85.2818603515625,
			["cooldown"] = true,
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
						["value"] = "5",
						["variable"] = "expirationTime",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [2]
			},
			["config"] = {
			},
			["frameStrata"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "风系图腾",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 40,
			["cooldownTextDisabled"] = false,
			["uid"] = "uSxh8CoXz41",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = 136114,
			["information"] = {
			},
			["parent"] = "老雷增强萨WA",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["group_countOperator"] = ">",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_DAMAGE",
						["use_genericShowOn"] = true,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["unevent"] = "timed",
						["useName"] = true,
						["use_threatUnit"] = true,
						["auraspellids"] = {
							"41917", -- [1]
						},
						["realSpellName"] = "Impale",
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["type"] = "event",
						["use_message"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["use_eventtype"] = true,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
				["zoneIds"] = "339",
				["encounterid"] = "609",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "9QGRVfA2mMM",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Illidan - Phase 2",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135819,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["subeventSuffix"] = "_DAMAGE",
						["useExactSpellId"] = false,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "aura2",
						["use_status"] = false,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["unevent"] = "timed",
						["useName"] = true,
						["use_genericShowOn"] = true,
						["useAffected"] = true,
						["unit"] = "player",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["encounterid"] = "602",
				["use_zoneIds"] = true,
				["zone"] = "Serpentshrine Cavern",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "XXGdIIId2vv",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Supremus - Molten Flame",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135802,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["useExactSpellId"] = false,
						["use_aggro"] = true,
						["group_countOperator"] = ">",
						["unit"] = "player",
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["type"] = "aura2",
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["use_threatUnit"] = true,
						["use_npcId"] = false,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["duration"] = "40",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["encounterid"] = "606",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "JPDBUzyPwnX",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Reliquary - Seethe",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 132117,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_message"] = true,
					["message_format_s_format"] = "none",
				},
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["useExactSpellId"] = false,
						["use_messageType"] = false,
						["use_destUnit"] = true,
						["use_track"] = true,
						["subeventSuffix"] = "",
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["spellName"] = "Intangible Presence",
						["subeventPrefix"] = "PARTY_KILL",
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["duration"] = "3",
						["use_threatUnit"] = true,
						["realSpellName"] = "Intangible Presence",
						["names"] = {
						},
						["use_unit"] = true,
						["use_destName"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["use_aggro"] = true,
						["useName"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["percenthealth_operator"] = "<",
						["type"] = "aura2",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_sourceNpcId"] = false,
						["use_message"] = true,
						["use_percenthealth"] = true,
						["useAffected"] = true,
						["sourceNpcId"] = "",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
				["zoneIds"] = "339",
				["encounterid"] = "605",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "ojVNtdAj8iZ",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Gurtogg - Bloodboil",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136124,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["spellIds"] = {
						},
						["custom"] = "function(allstates, event, unitId)\n    if not unitId then\n        return\n    end\n    \n    if event == \"NAME_PLATE_UNIT_REMOVED\" then\n        local state = allstates[unitId]\n        if state then\n            state.show = false\n            state.changed = true\n            return true\n        end\n        \n    elseif unitId ~= \"target\" then\n        \n        local isTanking, threatStatus, _, _, threatValue = UnitDetailedThreatSituation(\"player\", unitId)\n        \n        if not threatValue then\n            return \n        end\n        \n        local firstUnit, firstThreat, secondUnit, secondThreat = aura_env.ThreatFunc(unitId)\n        local displayValue\n        \n        if isTanking then\n            displayValue = threatValue - secondThreat\n        else\n            displayValue = threatValue - firstThreat\n            if firstUnit\n            and not UnitIsUnit(firstUnit, \"player\")\n            and aura_env.otherTanks[UnitName(firstUnit)]\n            then\n                threatStatus = 4\n            end\n        end\n        \n        allstates[unitId] = allstates[unitId] or {unit = unitId}\n        local state = allstates[unitId]\n        state.changed = true\n        state.show = true\n        state.status = threatStatus < 1 and 1 or threatStatus\n        state.value = Round(math.abs(displayValue) / 100)\n        return true\n    end\nend",
						["events"] = "NAME_PLATE_UNIT_ADDED, NAME_PLATE_UNIT_REMOVED, UNIT_THREAT_LIST_UPDATE, GROUP_ROSTER_UPDATE",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["genericShowOn"] = "showOnActive",
						["customVariables"] = "{\n    status = {\n        display = \"Threat Status\",\n        type = \"select\",\n        values = {\n            [1] = \"Untanked\", \n            [2] = \"Insecurely Tanking\", \n            [3] = \"Tanking\",\n            [4] = \"Tanked by Other Tank\"\n        }\n    }\n}",
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
					["easeStrength"] = 3,
					["type"] = "none",
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
					["use_color"] = false,
					["y"] = 0,
					["x"] = 0,
					["colorType"] = "custom",
					["rotate"] = 0,
					["colorFunc"] = "function()    \n    --if not aura_env.state then return 0, 0, 0, 1 end  -- error checking.\n    if aura_env.state.status == 3 then\n        return unpack(aura_env.config[\"color_tanking\"]) -- Reminder: return R, G, B, Alpha (using numbers between 0 and 1)\n    elseif aura_env.state.status == 2 then        \n        return unpack(aura_env.config[\"color_insecure\"])\n    elseif aura_env.state.status == 4  then\n        return unpack(aura_env.config[\"color_others\"])\n    elseif aura_env.state.status <= 1 then\n        return unpack(aura_env.config[\"color_untanked\"])\n    else\n        return 0,0,0,1\n    end \nend",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["colorB"] = 1,
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
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
			["preferToUpdate"] = false,
			["displayText_format_displayValue_format"] = "none",
			["automaticWidth"] = "Auto",
			["authorOptions"] = {
				{
					["type"] = "input",
					["useDesc"] = true,
					["width"] = 2,
					["desc"] = "Format: tank1,tank2,tank3,etc",
					["name"] = "Additional Tanks",
					["multiline"] = true,
					["default"] = "Tank1,Tank2,Tank3",
					["length"] = 10,
					["key"] = "addtanks",
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
					["text"] = "Size, position and font can be changed under  the \"Display\" tab.",
					["type"] = "description",
					["fontSize"] = "medium",
					["width"] = 2,
				}, -- [3]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["height"] = 1,
					["useHeight"] = true,
					["width"] = 1,
				}, -- [4]
				{
					["text"] = "Change colors under the \"Conditions\" tab.\nYou can add additional glows etc. to the different conditions.\n\"Untanked\"\n\"Insecurely Tanking\"\n\"Tanking\"\n\"Tanked by Other Tank\"",
					["type"] = "description",
					["fontSize"] = "medium",
					["width"] = 2,
				}, -- [5]
			},
			["config"] = {
				["addtanks"] = "Tank1,Tank2,Tank3",
			},
			["displayText"] = "%c\n",
			["displayText_format_p_time_precision"] = 1,
			["anchorFrameParent"] = true,
			["displayText_format_formatDiff_format"] = "none",
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "local function split(input) -- sligtly modfied version of WeakAuras.split function\n    input = input or \"\"\n    local ret = {}\n    local split, element = true\n    split = input:find(\"[,%s]\")\n    while(split) do\n        element, input = input:sub(1, split-1), input:sub(split+1)\n        if(element ~= \"\") then\n            ret[element] = true\n        end\n        split = input:find(\"[,%s]\")\n    end\n    if(input ~= \"\") then\n        ret[input] = true\n    end\n    return ret\nend\n\naura_env.otherTanks = split(aura_env.config.addtanks)\n\n\naura_env.ThreatFunc = function(unit)\n    local firstUnit, secondUnit\n    local firstThreat, secondThreat = 0, 0\n    local threat, pet\n    for member in WA_IterateGroupMembers() do\n        threat = select(5, UnitDetailedThreatSituation(member, unit))\n        if threat then\n            if threat > firstThreat then\n                secondUnit = firstUnit\n                secondThreat = firstThreat\n                firstUnit = member\n                firstThreat = threat\n            elseif threat > secondThreat then\n                secondUnit = member\n                secondThreat = threat\n            end\n        end\n        \n        pet = member..\"pet\"\n        if UnitExists(pet) then\n            threat = select(5, UnitDetailedThreatSituation(pet, unit))\n            if threat then\n                if threat > firstThreat then\n                    secondUnit = firstUnit\n                    secondThreat = firstThreat\n                    firstUnit = pet\n                    firstThreat = threat\n                elseif threat > secondThreat then\n                    secondUnit = pet\n                    secondThreat = threat\n                end\n            end\n        end\n    end\n    return firstUnit, firstThreat, secondUnit, secondThreat\nend",
					["do_custom"] = true,
				},
			},
			["displayText_format_c1_format"] = "none",
			["semver"] = "1.0.8",
			["width"] = 40,
			["id"] = "Threat Differential on Nameplates",
			["desc"] = "Shows the threat difference between yourself and the party/raid member with the most threat on enemy nameplates.\n\nColor determined by Tankstatus:\n\"Tanking\"  (default: green)\n\"Insecurely Tanking\" (default: yellow \"!!!\")\n\"Tanked by Other Tank\"  (default: blue)\n\"Untanked\" (default: red)",
			["frameStrata"] = 1,
			["anchorFrameType"] = "NAMEPLATE",
			["justify"] = "LEFT",
			["selfPoint"] = "CENTER",
			["inverse"] = false,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
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
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_ingroup"] = false,
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
				["use_affixes"] = true,
				["ingroup"] = {
					["multi"] = {
						["group"] = true,
						["raid"] = true,
					},
				},
				["use_never"] = false,
				["zoneIds"] = "",
			},
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
						["value"] = 1,
						["variable"] = "status",
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
						["value"] = 2,
						["variable"] = "status",
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
						["value"] = 3,
						["variable"] = "status",
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
						["value"] = 4,
						["variable"] = "status",
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
			["cooldownTextDisabled"] = false,
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["use_eventtype"] = true,
						["unit"] = "target",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "SPELL_BUILDING",
						["type"] = "aura2",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["duration"] = "3",
						["useName"] = true,
						["useExactSpellId"] = false,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["use_zone"] = false,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_zoneIds"] = true,
				["use_encounter"] = false,
				["zone"] = "Serpentshrine Cavern",
				["encounterid"] = "2458",
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "cEApnnas9j7",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "BT/MH - Frenzy",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136215,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["realSpellName"] = "薩滿之怒",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["spellName"] = 30823,
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
					["glowThickness"] = 1,
					["glow"] = false,
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
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
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
			["xOffset"] = 34.68,
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
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["url"] = "",
			["cooldown"] = true,
			["zoom"] = 0,
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "萨满之怒",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 3,
			["width"] = 40,
			["alpha"] = 1,
			["uid"] = "NiahmHZGZ7R",
			["inverse"] = false,
			["icon"] = true,
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
			["information"] = {
			},
			["parent"] = "老雷增强萨WA",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["use_aggro"] = true,
						["useExactSpellId"] = false,
						["use_unit"] = true,
						["use_eventtype"] = true,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["type"] = "aura2",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["group_countOperator"] = ">",
						["useAffected"] = true,
						["unit"] = "player",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
				["zoneIds"] = "339",
				["encounterid"] = "622",
				["use_zoneIds"] = true,
				["zone"] = "Serpentshrine Cavern",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "HvwogBf9RpQ",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Archimonde - Fear",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136147,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["use_aggro"] = true,
						["useExactSpellId"] = false,
						["use_unit"] = true,
						["use_eventtype"] = true,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["type"] = "aura2",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL_BUILDING",
						["group_countOperator"] = ">",
						["useAffected"] = true,
						["unit"] = "nameplate",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
				["zoneIds"] = "339",
				["use_zone"] = false,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_zoneIds"] = true,
				["use_encounter"] = false,
				["zone"] = "Serpentshrine Cavern",
				["encounterid"] = "2458",
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "vLzoICTvYxD",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "BT - Whirlwind",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 132369,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["useExactSpellId"] = false,
						["use_unit"] = true,
						["duration"] = "40",
						["use_eventtype"] = true,
						["useName"] = true,
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["type"] = "aura2",
						["use_threatUnit"] = true,
						["unevent"] = "timed",
						["realSpellName"] = "Impale",
						["unit"] = "player",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["group_countOperator"] = ">",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["encounterid"] = "618",
				["use_zoneIds"] = true,
				["zone"] = "Serpentshrine Cavern",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "IiKkddlQ(H2",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Winterchill - Icebolt",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135846,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["group_countOperator"] = ">",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_DAMAGE",
						["use_genericShowOn"] = true,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["unevent"] = "timed",
						["useName"] = true,
						["use_threatUnit"] = true,
						["auraspellids"] = {
							"41917", -- [1]
						},
						["realSpellName"] = "Impale",
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["type"] = "aura2",
						["use_message"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["use_eventtype"] = true,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
				["zoneIds"] = "339",
				["encounterid"] = "609",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "OyMP1I0oUp4",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Illidan - Shadow Prison",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 132303,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["useExactSpellId"] = false,
						["use_aggro"] = true,
						["group_countOperator"] = ">",
						["unit"] = "target",
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["type"] = "aura2",
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["use_threatUnit"] = true,
						["use_npcId"] = false,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["duration"] = "40",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
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
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["use_hostility"] = true,
						["use_attackable"] = true,
						["hostility"] = "hostile",
						["use_unit"] = true,
						["event"] = "Unit Characteristics",
						["unit"] = "player",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["encounterid"] = "606",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "ceFNXnuG8)E",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Reliquary - Rune Shield",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135735,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["useExactSpellId"] = false,
						["use_messageType"] = false,
						["use_destUnit"] = false,
						["use_track"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["spellName"] = "Intangible Presence",
						["subeventPrefix"] = "SPELL",
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["duration"] = "60",
						["use_threatUnit"] = true,
						["realSpellName"] = "Intangible Presence",
						["names"] = {
						},
						["use_unit"] = true,
						["use_destName"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["use_aggro"] = true,
						["useName"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["percenthealth_operator"] = "<=",
						["type"] = "event",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_sourceNpcId"] = false,
						["use_message"] = true,
						["use_percenthealth"] = true,
						["useAffected"] = true,
						["sourceNpcId"] = "",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
				["zoneIds"] = "339",
				["encounterid"] = "602",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "asJoWk(vKfH",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
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
						["op"] = ">",
						["value"] = "5",
						["variable"] = "expirationTime",
					},
					["changes"] = {
						{
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Supremus - Phase 1",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136080,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["subeventSuffix"] = "_CAST_SUCCESS",
						["useExactSpellId"] = false,
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "SPELL_BUILDING",
						["type"] = "aura2",
						["use_status"] = false,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["unevent"] = "timed",
						["useName"] = true,
						["use_genericShowOn"] = true,
						["useAffected"] = true,
						["unit"] = "target",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["glow"] = true,
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
				["zoneIds"] = "339",
				["use_zone"] = false,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_zoneIds"] = true,
				["use_encounter"] = false,
				["zone"] = "Serpentshrine Cavern",
				["encounterid"] = "2458",
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "hzAksxivERi",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "BT - Electric Spur",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135597,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["subeventSuffix"] = "_CAST_SUCCESS",
						["useExactSpellId"] = false,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL_BUILDING",
						["type"] = "aura2",
						["use_status"] = false,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["unevent"] = "timed",
						["useName"] = true,
						["use_genericShowOn"] = true,
						["useAffected"] = true,
						["unit"] = "player",
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
						["use_eventtype"] = true,
						["unit"] = "player",
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "combatlog",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["duration"] = "3",
						["useName"] = true,
						["useExactSpellId"] = false,
						["useAffected"] = true,
						["use_aggro"] = true,
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
						["use_eventtype"] = true,
						["unit"] = "player",
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL_BUILDING",
						["type"] = "combatlog",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["duration"] = "3",
						["useName"] = true,
						["useExactSpellId"] = false,
						["useAffected"] = true,
						["use_aggro"] = true,
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
						["use_eventtype"] = true,
						["unit"] = "player",
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "combatlog",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["duration"] = "3",
						["useName"] = true,
						["useExactSpellId"] = false,
						["useAffected"] = true,
						["use_aggro"] = true,
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
						["use_eventtype"] = true,
						["unit"] = "player",
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL_BUILDING",
						["type"] = "combatlog",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["duration"] = "3",
						["useName"] = true,
						["useExactSpellId"] = false,
						["useAffected"] = true,
						["use_aggro"] = true,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["use_zone"] = false,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_zoneIds"] = true,
				["use_encounter"] = false,
				["zone"] = "Serpentshrine Cavern",
				["encounterid"] = "2458",
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "E7rKMNiLyoS",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "BT - Flamestrike",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135826,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["subeventSuffix"] = "_DAMAGE",
						["spellName"] = "Intangible Presence",
						["use_aggro"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["useName"] = false,
						["type"] = "unit",
						["auraspellids"] = {
							"41452", -- [1]
							"41453", -- [2]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["use_npcId"] = false,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["duration"] = "40",
						["use_unit"] = true,
						["unit"] = "target",
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
						["type"] = "unit",
						["use_aggro"] = true,
						["debuffType"] = "HELPFUL",
						["use_unit"] = true,
						["event"] = "Threat Situation",
						["unit"] = "target",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["encounterid"] = "609",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "J9qZGb8tKeM",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Illidan - Shear",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136158,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
					["sound_repeat"] = 1,
					["sound"] = "Sound\\Interface\\RaidWarning.ogg",
					["do_glow"] = false,
				},
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["group_countOperator"] = ">",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_AURA_APPLIED",
						["use_genericShowOn"] = true,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["unevent"] = "timed",
						["useName"] = true,
						["use_threatUnit"] = true,
						["auraspellids"] = {
							"41917", -- [1]
						},
						["realSpellName"] = "Impale",
						["use_aggro"] = true,
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
						["use_eventtype"] = true,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["encounterid"] = "609",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "kMKASo0KHR8",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Illidan - Uncaged Wrath",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136224,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["subeventSuffix"] = "_DAMAGE",
						["spellName"] = "Intangible Presence",
						["use_aggro"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["type"] = "aura2",
						["auraspellids"] = {
							"41917", -- [1]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["use_npcId"] = false,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["duration"] = "40",
						["use_unit"] = true,
						["unit"] = "player",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["encounterid"] = "609",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "LCs8GfJyCFR",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
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
						["op"] = "<",
						["value"] = "3",
						["variable"] = "expirationTime",
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
						["value"] = "2",
						["variable"] = "expirationTime",
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
						["value"] = "1",
						["variable"] = "expirationTime",
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
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Illidan - Parastic Shadowfiend",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136214,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["subeventSuffix"] = "_CAST_SUCCESS",
						["useExactSpellId"] = false,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL_BUILDING",
						["type"] = "aura2",
						["use_status"] = false,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["unevent"] = "timed",
						["useName"] = true,
						["use_genericShowOn"] = true,
						["useAffected"] = true,
						["unit"] = "player",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
				["zoneIds"] = "339",
				["use_zone"] = false,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_zoneIds"] = true,
				["use_encounter"] = false,
				["zone"] = "Serpentshrine Cavern",
				["encounterid"] = "2458",
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "yjLs0qRClPW",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "BT - Harpooner's Mark",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 132212,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["subeventSuffix"] = "_DAMAGE",
						["percenthealth_operator"] = "<=",
						["use_eventtype"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["spellName"] = "Intangible Presence",
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_exact_spellId"] = false,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "target",
						["use_genericShowOn"] = true,
						["use_aggro"] = true,
						["use_npcId"] = false,
						["names"] = {
						},
						["use_unit"] = true,
						["use_destName"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["use_messageType"] = false,
						["useName"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["realSpellName"] = "Intangible Presence",
						["type"] = "unit",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_threatUnit"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_sourceNpcId"] = false,
						["use_message"] = true,
						["use_percenthealth"] = true,
						["useAffected"] = true,
						["sourceNpcId"] = "",
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
						["subeventSuffix"] = "_DAMAGE",
						["percenthealth_operator"] = "<=",
						["use_eventtype"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["spellName"] = "Intangible Presence",
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_exact_spellId"] = false,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "target",
						["use_genericShowOn"] = true,
						["use_aggro"] = true,
						["use_npcId"] = false,
						["names"] = {
						},
						["use_unit"] = true,
						["use_destName"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["use_messageType"] = false,
						["useName"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["realSpellName"] = "Intangible Presence",
						["type"] = "unit",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_threatUnit"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_sourceNpcId"] = false,
						["use_message"] = true,
						["use_percenthealth"] = true,
						["useAffected"] = true,
						["sourceNpcId"] = "",
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
						["subeventSuffix"] = "_DAMAGE",
						["percenthealth_operator"] = "<=",
						["use_eventtype"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["spellName"] = "Intangible Presence",
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_exact_spellId"] = false,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "target",
						["use_genericShowOn"] = true,
						["use_aggro"] = true,
						["use_npcId"] = false,
						["names"] = {
						},
						["use_unit"] = true,
						["use_destName"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["use_messageType"] = false,
						["useName"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["realSpellName"] = "Intangible Presence",
						["type"] = "unit",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_threatUnit"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_sourceNpcId"] = false,
						["use_message"] = true,
						["use_percenthealth"] = true,
						["useAffected"] = true,
						["sourceNpcId"] = "",
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
						["subeventSuffix"] = "_DAMAGE",
						["percenthealth_operator"] = "<=",
						["use_eventtype"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["spellName"] = "Intangible Presence",
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["subeventPrefix"] = "SPELL_BUILDING",
						["use_exact_spellId"] = false,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "target",
						["use_genericShowOn"] = true,
						["use_aggro"] = true,
						["use_npcId"] = false,
						["names"] = {
						},
						["use_unit"] = true,
						["use_destName"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["use_messageType"] = false,
						["useName"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["realSpellName"] = "Intangible Presence",
						["type"] = "unit",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_threatUnit"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_sourceNpcId"] = false,
						["use_message"] = true,
						["use_percenthealth"] = true,
						["useAffected"] = true,
						["sourceNpcId"] = "",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
				["zoneIds"] = "339",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["MAGE"] = true,
						["WARRIOR"] = true,
						["SHAMAN"] = true,
						["ROGUE"] = true,
					},
				},
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["encounterid"] = "603",
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "X6lGARDueZu",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Akama - Interrupts",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 132219,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["subeventSuffix"] = "_CAST_SUCCESS",
						["useExactSpellId"] = false,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL_BUILDING",
						["type"] = "aura2",
						["use_status"] = false,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["unevent"] = "timed",
						["useName"] = true,
						["use_genericShowOn"] = true,
						["useAffected"] = true,
						["unit"] = "player",
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
						["use_eventtype"] = true,
						["unit"] = "player",
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "combatlog",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["duration"] = "3",
						["useName"] = true,
						["useExactSpellId"] = false,
						["useAffected"] = true,
						["use_aggro"] = true,
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
						["use_eventtype"] = true,
						["unit"] = "player",
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL_BUILDING",
						["type"] = "combatlog",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["duration"] = "3",
						["useName"] = true,
						["useExactSpellId"] = false,
						["useAffected"] = true,
						["use_aggro"] = true,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["use_zone"] = false,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_zoneIds"] = true,
				["use_encounter"] = false,
				["zone"] = "Serpentshrine Cavern",
				["encounterid"] = "2458",
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "un3mC5d89mF",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "BT - Rain of Chaos",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135804,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["use_aggro"] = true,
						["useExactSpellId"] = false,
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["type"] = "combatlog",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["use_npcId"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["use_unit"] = true,
						["group_countOperator"] = ">",
						["useAffected"] = true,
						["use_eventtype"] = true,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = false,
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
				["zoneIds"] = "339",
				["encounterid"] = "622",
				["use_zoneIds"] = true,
				["zone"] = "Serpentshrine Cavern",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "CxBZZ8E5RjP",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
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
						["op"] = "<",
						["value"] = "1.5",
						["variable"] = "expirationTime",
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
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Archimonde - Air Burst",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136116,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["realSpellName"] = "那魯的祝福",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["spellName"] = 28880,
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
					["glowThickness"] = 1,
					["glow"] = false,
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
			["xOffset"] = 114.68,
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
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["url"] = "",
			["cooldown"] = true,
			["zoom"] = 0,
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "德莱尼天赋",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 3,
			["width"] = 40,
			["alpha"] = 1,
			["uid"] = "LTd99VdNOdc",
			["inverse"] = false,
			["icon"] = true,
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
			["information"] = {
			},
			["parent"] = "老雷增强萨WA",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["useExactSpellId"] = true,
						["use_aggro"] = true,
						["group_countOperator"] = ">",
						["unit"] = "target",
						["debuffType"] = "HELPFUL",
						["useName"] = false,
						["type"] = "aura2",
						["unevent"] = "timed",
						["auraspellids"] = {
							"41475", -- [1]
						},
						["use_threatUnit"] = true,
						["use_npcId"] = false,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["duration"] = "40",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
				["zoneIds"] = "339",
				["encounterid"] = "608",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "BDkBcUJ8ub5",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Council - Reflective Shield",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135940,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["useExactSpellId"] = false,
						["use_messageType"] = false,
						["use_destUnit"] = true,
						["use_track"] = true,
						["subeventSuffix"] = "",
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["spellName"] = "Intangible Presence",
						["subeventPrefix"] = "PARTY_KILL",
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["duration"] = "3",
						["use_threatUnit"] = true,
						["realSpellName"] = "Intangible Presence",
						["names"] = {
						},
						["use_unit"] = true,
						["use_destName"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["use_aggro"] = true,
						["useName"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["percenthealth_operator"] = "<",
						["type"] = "aura2",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_sourceNpcId"] = false,
						["use_message"] = true,
						["use_percenthealth"] = true,
						["useAffected"] = true,
						["sourceNpcId"] = "",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
				["zoneIds"] = "339",
				["encounterid"] = "604",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "j)u6Ihlg4o)",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Gorefiend - Incinerate",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135789,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["use_eventtype"] = true,
						["unit"] = "player",
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL_BUILDING",
						["type"] = "aura2",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["duration"] = "3",
						["useName"] = true,
						["useExactSpellId"] = false,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["use_zone"] = false,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_zoneIds"] = true,
				["use_encounter"] = false,
				["zone"] = "Serpentshrine Cavern",
				["encounterid"] = "2458",
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "CsTpOXwIgBC",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "BT - Cloud of Disease",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136006,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
						["customVariables"] = "{\n    completed = \"bool\"\n\n}",
						["unit"] = "player",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["customDuration"] = "\nfunction()\n    local reqAmount = aura_env.config[\"reqAmount\"]\n    local currentAmount = GetItemCount(\"Free Action Potion\",false,false)\n    local result = 0\n    if (currentAmount >= reqAmount) then\n        result =1\n    end\n    \n    return result, 1,1\nend",
						["custom"] = "function(allstates, event, ...)\n    \n    local consumes = aura_env.evool.consumes\n    \n    \n    for consume,reqAmount in pairs(consumes) do\n        \n        --print(consume, reqAmount)\n        allstates[consume] = allstates[consume] or {} -- error checking\n        \n        local state = allstates[consume]\n        \n        \n        \n        local name, _, _, _, _, _, _, _,_, icon = GetItemInfo(consume)\n        local currentAmount = GetItemCount(consume,false,false)\n        \n        state.name = name\n        state.icon = icon\n        state.progressType = 'static'\n        state.value = currentAmount\n        state.total = reqAmount\n        state.autoHide = true\n        state.show = true\n        if(reqAmount <= 0) then\n            state.show =false\n        end\n        state.glow =true\n        state.completed = currentAmount >= reqAmount\n        \n        state.index = name\n        state.changed = true\n    end\n    \n    return true\nend",
						["spellIds"] = {
						},
						["names"] = {
						},
						["check"] = "event",
						["events"] = "BAG_UPDATE",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
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
					["anchorXOffset"] = 0,
					["text_selfPoint"] = "LEFT",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_t_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_t_format"] = "timed",
					["text_text_format_p_time_dynamic_threshold"] = 60,
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
					["text_text_format_t_time_precision"] = 1,
					["text_shadowYOffset"] = 0,
					["text_text_format_n_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_RIGHT",
					["text_fontType"] = "OUTLINE",
					["text_text_format_p_time_format"] = 0,
					["text_fontSize"] = 15,
					["text_text_format_t_time_dynamic_threshold"] = 60,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
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
					["glow"] = false,
					["glowThickness"] = 1,
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
				["zone"] = "奧格瑪",
				["use_spellknown"] = false,
				["use_class"] = true,
				["use_zone"] = true,
				["level_operator"] = ">",
				["use_level"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["level"] = "55",
				["spellknown"] = 1953,
				["zoneIds"] = "",
			},
			["semver"] = "1.0.3",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.evool ={}\naura_env.evool.consumes={    \n    [22854] = 5,\n    [22831]=40,\n    [9224]=40,\n    [32062]=40,\n    [27503]=40,\n    [28421]=20,\n    [33092]=40,\n    [27658]=40,\n    [22838]=15 --加速藥水\n    \n    \n}",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["fontSize"] = 13,
			["automaticWidth"] = "Auto",
			["selfPoint"] = "TOP",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["fixedWidth"] = 200,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["xOffset"] = 5,
			["regionType"] = "icon",
			["config"] = {
			},
			["useTooltip"] = false,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["zoom"] = 0,
			["justify"] = "LEFT",
			["tocversion"] = 20504,
			["id"] = "Consume item",
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "slidebottom",
					["duration_type"] = "seconds",
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
			["alpha"] = 1,
			["width"] = 24,
			["preferToUpdate"] = false,
			["uid"] = "eCxiQXRjR4L",
			["inverse"] = false,
			["cooldownEdge"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">=",
						["variable"] = "completed",
						["value"] = 1,
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
			["cooldown"] = false,
			["parent"] = "NAXX 狂暴战 药剂清单",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["subeventSuffix"] = "_CAST_SUCCESS",
						["spellName"] = "",
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["type"] = "combatlog",
						["debuffType"] = "HARMFUL",
						["unevent"] = "timed",
						["useName"] = true,
						["use_threatUnit"] = true,
						["auraspellids"] = {
							"41917", -- [1]
						},
						["use_npcId"] = false,
						["unit"] = "player",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["use_message"] = true,
						["use_status"] = false,
						["useAffected"] = true,
						["use_eventtype"] = true,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
				["zoneIds"] = "339",
				["encounterid"] = "619",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "JoTGdhSshM2",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Anetheron - Inferno",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136219,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["event"] = "Health",
						["unit"] = "player",
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
			["config"] = {
			},
			["uid"] = "ZYZYm395YYF",
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
			["selfPoint"] = "LEFT",
			["animate"] = true,
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["scale"] = 0.75,
			["xOffset"] = -532.2318522135416,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["limit"] = 5,
			["rotation"] = 0,
			["rowSpace"] = 1,
			["constantFactor"] = "RADIUS",
			["internalVersion"] = 51,
			["borderOffset"] = 4,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Tems' BT/MH Pack",
			["gridWidth"] = 5,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["arcLength"] = 360,
			["borderInset"] = 1,
			["anchorPoint"] = "CENTER",
			["sort"] = "none",
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["yOffset"] = 121.126953125,
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["sourceNpcId"] = "",
						["percenthealth"] = "20",
						["event"] = "Range Check",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["message"] = "Thaladred the Darkener sets eyes on",
						["use_spellId"] = true,
						["percenthealth_operator"] = "<=",
						["use_range"] = true,
						["spellName"] = "Intangible Presence",
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_status"] = false,
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_aggro"] = true,
						["useGroup_count"] = true,
						["use_genericShowOn"] = true,
						["unit"] = "target",
						["range"] = "10",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_npcId"] = true,
						["realSpellName"] = "Intangible Presence",
						["useExactSpellId"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["use_destName"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["type"] = "unit",
						["unevent"] = "timed",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["use_unit"] = true,
						["use_sourceNpcId"] = false,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_threatUnit"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
						["use_message"] = true,
						["use_percenthealth"] = true,
						["useAffected"] = true,
						["use_messageType"] = false,
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
						["useExactSpellId"] = false,
						["use_messageType"] = false,
						["use_destUnit"] = false,
						["use_track"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["spellName"] = "Intangible Presence",
						["subeventPrefix"] = "SPELL",
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "target",
						["duration"] = "5",
						["use_threatUnit"] = true,
						["realSpellName"] = "Intangible Presence",
						["names"] = {
						},
						["use_unit"] = true,
						["use_destName"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["use_aggro"] = true,
						["useName"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["percenthealth_operator"] = ">",
						["type"] = "unit",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_sourceNpcId"] = false,
						["use_message"] = true,
						["use_percenthealth"] = true,
						["useAffected"] = true,
						["sourceNpcId"] = "",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["encounterid"] = "608",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "kEvlWqUCcc9",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Council - Arcane Explosion",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136116,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
		},
		["平砍重置 2.7+2.6  Never public"] = {
			["sparkWidth"] = 20,
			["iconSource"] = -1,
			["xOffset"] = -5.900146484375,
			["preferToUpdate"] = false,
			["yOffset"] = 526.0005493164062,
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
				0, -- [1]
				0.4392156862745098, -- [2]
				0.8705882352941177, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
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
			["spark"] = true,
			["tocversion"] = 20501,
			["alpha"] = 1,
			["uid"] = "OIK)UQULGha",
			["sparkOffsetX"] = 0,
			["customText"] = "function()\n    local t1 =  WeakAuras.GetTriggerStateForTrigger(aura_env.id, 1)\n    local t3 =  WeakAuras.GetTriggerStateForTrigger(aura_env.id, 3)\n    if (t1 and t3  and t1[\"\"] and t3[\"\"]) then\n        if (t1[\"\"].expirationTime >= t3[\"\"].expirationTime) then\n            return  t1[\"\"].expirationTime - t3[\"\"].expirationTime\n        else \n            return  0\n        end\n    end\nend",
			["customTextUpdate"] = "update",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Swing Timer",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["use_hand"] = true,
						["names"] = {
						},
						["use_unit"] = true,
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
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["use_unit"] = true,
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
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
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["hand"] = "off",
						["unit"] = "player",
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
						["debuffType"] = "HELPFUL",
						["use_unit"] = true,
						["event"] = "Combat Log",
						["use_sourceName"] = false,
						["names"] = {
						},
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["unevent"] = "auto",
						["use_destUnit"] = false,
						["sourceUnit"] = "player",
						["unit"] = "player",
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
					["text_text_format_t_time_precision"] = 1,
					["text_text_format_p_time_format"] = 0,
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
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 30,
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
			},
			["height"] = 5,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["useAdjustedMax"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["borderInFront"] = true,
			["authorOptions"] = {
			},
			["icon_side"] = "LEFT",
			["sparkRotationMode"] = "AUTO",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["sparkHeight"] = 50,
			["borderBackdrop"] = "None",
			["auto"] = true,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["semver"] = "1.0.14",
			["useAdjustededMax"] = false,
			["id"] = "平砍重置 2.7+2.6  Never public",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 5,
			["sparkHidden"] = "NEVER",
			["icon"] = false,
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
								["value"] = "0.9",
							}, -- [4]
							{
								["trigger"] = 1,
								["variable"] = "expirationTime",
								["op"] = "<=",
								["value"] = "1.3",
							}, -- [5]
						},
					},
					["changes"] = {
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound_path"] = "H:\\World of Warcraft Classic\\World of Warcraft Classic 1.13.2.31687\\World of Warcraft\\_classic_\\Interface\\AddOns\\DBM-VPYike\\count\\1.ogg",
								["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
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
								["value"] = "1.3",
								["op"] = ">",
							}, -- [4]
							{
								["trigger"] = 1,
								["variable"] = "expirationTime",
								["value"] = "1.8",
								["op"] = "<=",
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
								["value"] = "0.9",
								["op"] = ">",
							}, -- [3]
							{
								["trigger"] = 1,
								["variable"] = "expirationTime",
								["value"] = "1.3",
								["op"] = "<=",
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
								["value"] = "1.3",
							}, -- [3]
							{
								["trigger"] = 1,
								["variable"] = "expirationTime",
								["op"] = "<=",
								["value"] = "1.8",
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
			["config"] = {
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
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["use_hand"] = true,
						["event"] = "Swing Timer",
						["duration"] = "1",
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
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_unit"] = true,
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
					["text_text_format_n_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "聊天",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = -1,
					["text_text_format_p_time_format"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_LEFT",
					["text_fontType"] = "None",
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 12,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_precision"] = 1,
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
					["text_visible"] = true,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_n_format"] = "none",
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
			["uid"] = "oUfhcpmfEuG",
			["anchorFrameFrame"] = "WeakAuras:Windfury ICD",
			["borderBackdrop"] = "None",
			["borderInFront"] = true,
			["xOffset"] = 0,
			["icon_side"] = "LEFT",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
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
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["auto"] = true,
			["semver"] = "1.0.16",
			["width"] = 300,
			["id"] = "主手",
			["sparkHidden"] = "NEVER",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["zoom"] = 0,
			["useAdjustededMax"] = true,
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
			["preferToUpdate"] = false,
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["group_countOperator"] = ">",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_DAMAGE",
						["use_genericShowOn"] = true,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["unevent"] = "timed",
						["useName"] = true,
						["use_threatUnit"] = true,
						["auraspellids"] = {
							"41917", -- [1]
						},
						["realSpellName"] = "Impale",
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["type"] = "aura2",
						["use_message"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["use_eventtype"] = true,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
				["zoneIds"] = "339",
				["encounterid"] = "621",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "kQAFDY8jUsL",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Azgalor - Howl of Azgalor",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136164,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["useExactSpellId"] = false,
						["use_messageType"] = false,
						["use_destUnit"] = true,
						["use_track"] = true,
						["subeventSuffix"] = "_DAMAGE",
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["spellName"] = "Intangible Presence",
						["subeventPrefix"] = "SPELL_BUILDING",
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["duration"] = "3",
						["use_threatUnit"] = true,
						["realSpellName"] = "Intangible Presence",
						["names"] = {
						},
						["use_unit"] = true,
						["use_destName"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["use_aggro"] = true,
						["useName"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["percenthealth_operator"] = "<=",
						["type"] = "aura2",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_sourceNpcId"] = false,
						["use_message"] = true,
						["use_percenthealth"] = true,
						["useAffected"] = true,
						["sourceNpcId"] = "",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
				["zoneIds"] = "339",
				["encounterid"] = "603",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "xS3)hqzWBmH",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Akama - Debilitating Poison",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 132274,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["group_countOperator"] = ">",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["use_genericShowOn"] = true,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["unevent"] = "timed",
						["useName"] = true,
						["use_threatUnit"] = true,
						["auraspellids"] = {
							"41917", -- [1]
						},
						["realSpellName"] = "Impale",
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["type"] = "aura2",
						["use_message"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["use_eventtype"] = true,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = false,
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
				["zoneIds"] = "339",
				["encounterid"] = "609",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "6Jr0cbflyO8",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
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
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Illidan - Dark Barrage",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136181,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["useExactSpellId"] = false,
						["use_aggro"] = true,
						["group_countOperator"] = ">",
						["unit"] = "target",
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["type"] = "unit",
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["use_threatUnit"] = true,
						["use_npcId"] = false,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["duration"] = "40",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
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
						["useName"] = true,
						["auranames"] = {
							"41450", -- [1]
						},
						["debuffType"] = "HELPFUL",
						["matchesShowOn"] = "showOnMissing",
						["type"] = "aura2",
						["unit"] = "target",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
				["zoneIds"] = "339",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["DRUID"] = true,
						["WARRIOR"] = true,
						["ROGUE"] = true,
					},
				},
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["encounterid"] = "608",
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "rzITpiWRf5)",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Council - Circle of Healing Melee",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135943,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "item",
						["use_count"] = true,
						["subeventSuffix"] = "_CAST_START",
						["count_operator"] = "==",
						["use_genericShowOn"] = true,
						["use_itemName"] = true,
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["count"] = "0",
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["event"] = "Item Count",
						["itemName"] = 24494,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["npcId"] = "17968",
						["type"] = "unit",
						["debuffType"] = "HELPFUL",
						["use_unit"] = true,
						["use_unitisunit"] = false,
						["use_npcId"] = true,
						["event"] = "Unit Characteristics",
						["unit"] = "target",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
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
					["glowThickness"] = 1,
					["glow"] = true,
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
					["text_anchorYOffset"] = -5,
					["text_color"] = {
						1, -- [1]
						0, -- [2]
						0.054901960784314, -- [3]
						1, -- [4]
					},
					["text_font"] = "聊天",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_text_format_p_time_precision"] = 1,
					["text_visible"] = true,
					["text_fontSize"] = 15,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
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
				["zoneIds"] = "329",
				["use_encounterid"] = true,
				["use_zoneIds"] = false,
				["use_zone"] = false,
				["use_never"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["zone"] = "暗夜精灵村庄, 诺达希尔",
				["use_alive"] = true,
				["encounterid"] = "622",
				["size"] = {
					["multi"] = {
					},
				},
			},
			["cooldownEdge"] = false,
			["regionType"] = "icon",
			["xOffset"] = 84.4447021484375,
			["icon"] = true,
			["selfPoint"] = "CENTER",
			["cooldown"] = false,
			["zoom"] = 0,
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.7",
			["tocversion"] = 20504,
			["id"] = "小喵-T6-BT-阿克蒙德-女神之泪",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["width"] = 60,
			["uid"] = "SZ0L)MatN(h",
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
			},
			["parent"] = "小喵-T6-BT-阿克蒙德-空气爆裂",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["use_aggro"] = true,
						["useExactSpellId"] = false,
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "SPELL",
						["useName"] = true,
						["auraspellids"] = {
							"38626", -- [1]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["duration"] = "2",
						["type"] = "unit",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["use_zone"] = false,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_zoneIds"] = true,
				["use_encounter"] = false,
				["zone"] = "Serpentshrine Cavern",
				["encounterid"] = "2458",
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "l85HZdNQqsF",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "BT - L5 Arcane Charge",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135734,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["useExactSpellId"] = false,
						["use_aggro"] = true,
						["group_countOperator"] = ">",
						["unit"] = "target",
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["type"] = "combatlog",
						["auraspellids"] = {
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["use_npcId"] = false,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["names"] = {
						},
						["use_genericShowOn"] = true,
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
						["use_unit"] = true,
						["useExactSpellId"] = false,
						["use_aggro"] = true,
						["use_destName"] = false,
						["subeventPrefix"] = "SPELL_BUILDING",
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["type"] = "combatlog",
						["auraspellids"] = {
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["use_npcId"] = false,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["unit"] = "target",
						["spellName"] = "Intangible Presence",
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
						["useExactSpellId"] = false,
						["use_aggro"] = true,
						["group_countOperator"] = ">",
						["unit"] = "target",
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["type"] = "combatlog",
						["auraspellids"] = {
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["use_npcId"] = false,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["names"] = {
						},
						["use_genericShowOn"] = true,
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
						["use_unit"] = true,
						["useExactSpellId"] = false,
						["use_aggro"] = true,
						["use_destName"] = false,
						["subeventPrefix"] = "SPELL_BUILDING",
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["type"] = "combatlog",
						["auraspellids"] = {
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["use_npcId"] = false,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["unit"] = "target",
						["spellName"] = "Intangible Presence",
						["useAffected"] = true,
						["use_eventtype"] = true,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["encounterid"] = "608",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "sZv2rq0u30T",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Council - Consecration",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135926,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["group_countOperator"] = ">",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_DAMAGE",
						["use_genericShowOn"] = true,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["unevent"] = "timed",
						["useName"] = true,
						["use_threatUnit"] = true,
						["auraspellids"] = {
							"41917", -- [1]
						},
						["realSpellName"] = "Impale",
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["type"] = "aura2",
						["use_message"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["use_eventtype"] = true,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
				["zoneIds"] = "339",
				["encounterid"] = "618",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "CSyC9OQecTl",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Winterchill - Frost Nova",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135848,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["type"] = "spell",
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = 2894,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["genericShowOn"] = "showAlways",
						["use_exact_spellName"] = true,
						["use_track"] = true,
						["spellName"] = 2894,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["event"] = "Conditions",
						["unit"] = "player",
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
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_text_format_p_time_format"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
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
					["glowThickness"] = 1,
					["glow"] = false,
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
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 2894,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["cooldownEdge"] = false,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["xOffset"] = 160,
			["cooldown"] = true,
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
			["config"] = {
			},
			["frameStrata"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "火爹",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 30,
			["cooldownTextDisabled"] = true,
			["uid"] = "3w0bQnuz)TS",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = 135790,
			["information"] = {
			},
			["parent"] = "老雷增强萨WA",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["group_countOperator"] = ">",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_DAMAGE",
						["use_genericShowOn"] = true,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["unevent"] = "timed",
						["useName"] = true,
						["use_threatUnit"] = true,
						["auraspellids"] = {
							"41917", -- [1]
						},
						["realSpellName"] = "Impale",
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["type"] = "aura2",
						["use_message"] = true,
						["names"] = {
						},
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
						["powertype"] = 0,
						["use_unit"] = true,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["event"] = "Power",
						["unit"] = "player",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = false,
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
				["zoneIds"] = "339",
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
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["encounterid"] = "620",
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "F2gMsPC0Bnx",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
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
						["trigger"] = 2,
						["op"] = "<=",
						["value"] = "3000",
						["variable"] = "power",
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
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Kazrogal - Mark of Kazrogal",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136214,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["group_countOperator"] = ">",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_DAMAGE",
						["use_genericShowOn"] = true,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["unevent"] = "timed",
						["useName"] = true,
						["use_threatUnit"] = true,
						["auraspellids"] = {
							"41917", -- [1]
						},
						["realSpellName"] = "Impale",
						["use_aggro"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = false,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["type"] = "aura2",
						["use_message"] = true,
						["names"] = {
						},
						["useAffected"] = true,
						["use_eventtype"] = true,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
				["zoneIds"] = "339",
				["encounterid"] = "620",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "ILHskFgo7Uv",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Kazrogal - Cripple",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136135,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["useExactSpellId"] = false,
						["use_messageType"] = false,
						["use_destUnit"] = true,
						["use_track"] = true,
						["subeventSuffix"] = "_DAMAGE",
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["spellName"] = "Intangible Presence",
						["subeventPrefix"] = "SPELL",
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["duration"] = "3",
						["use_threatUnit"] = true,
						["realSpellName"] = "Intangible Presence",
						["names"] = {
						},
						["use_unit"] = true,
						["use_destName"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["use_aggro"] = true,
						["useName"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["percenthealth_operator"] = "<=",
						["type"] = "combatlog",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_sourceNpcId"] = false,
						["use_message"] = true,
						["use_percenthealth"] = true,
						["useAffected"] = true,
						["sourceNpcId"] = "",
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
						["useExactSpellId"] = false,
						["use_messageType"] = false,
						["use_destUnit"] = true,
						["use_track"] = true,
						["subeventSuffix"] = "_DAMAGE",
						["use_amount"] = true,
						["use_destFlags2"] = false,
						["use_status"] = false,
						["useGroup_count"] = true,
						["spellName"] = "Intangible Presence",
						["subeventPrefix"] = "SPELL_BUILDING",
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["duration"] = "3",
						["use_threatUnit"] = true,
						["realSpellName"] = "Intangible Presence",
						["names"] = {
						},
						["use_unit"] = true,
						["use_destName"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["use_aggro"] = true,
						["useName"] = true,
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["percenthealth_operator"] = "<=",
						["type"] = "combatlog",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_sourceNpcId"] = false,
						["use_message"] = true,
						["use_percenthealth"] = true,
						["useAffected"] = true,
						["sourceNpcId"] = "",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["encounterid"] = "603",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "Aq3WpEDvZgq",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Akama - Rain of Fire",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136186,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
				},
				["init"] = {
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
						["unit"] = "player",
						["type"] = "spell",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Totem",
						["form"] = {
						},
						["use_itemName"] = true,
						["totemType"] = 3,
						["use_threatUnit"] = true,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["threatUnit"] = "target",
						["names"] = {
						},
						["realSpellName"] = 0,
						["use_track"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["useExactSpellId"] = false,
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
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
					["glowThickness"] = 1,
					["glow"] = false,
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
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
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
			["cooldownEdge"] = false,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["icon"] = true,
			["xOffset"] = -7.02960205078125,
			["cooldown"] = true,
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
						["value"] = "5",
						["variable"] = "expirationTime",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [2]
			},
			["config"] = {
			},
			["frameStrata"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "水系图腾",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 40,
			["cooldownTextDisabled"] = false,
			["uid"] = "xkHmWh9rVan",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = 136053,
			["information"] = {
			},
			["parent"] = "老雷增强萨WA",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["subeventSuffix"] = "_AURA_APPLIED",
						["spellName"] = "",
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["type"] = "combatlog",
						["debuffType"] = "HARMFUL",
						["unevent"] = "timed",
						["useName"] = true,
						["use_threatUnit"] = true,
						["auraspellids"] = {
							"41917", -- [1]
						},
						["use_npcId"] = false,
						["unit"] = "player",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["use_message"] = true,
						["use_status"] = false,
						["useAffected"] = true,
						["use_eventtype"] = true,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["encounterid"] = "621",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "7zBUezkv54l",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Azgalor - Rain of Fire",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136186,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["use_aggro"] = true,
						["useExactSpellId"] = false,
						["use_unit"] = true,
						["use_eventtype"] = true,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["type"] = "aura2",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_npcId"] = true,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["group_countOperator"] = ">",
						["useAffected"] = true,
						["unit"] = "player",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
				["zoneIds"] = "339",
				["encounterid"] = "622",
				["use_zoneIds"] = true,
				["zone"] = "Serpentshrine Cavern",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "ptnIAa1mgeV",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Archimonde - Grip of the Legion",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 132937,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["unit"] = "player",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["useExactSpellId"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["type"] = "combatlog",
						["use_npcId"] = true,
						["unevent"] = "timed",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["realSpellName"] = "Impale",
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_threatUnit"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["remOperator"] = ">",
						["use_aggro"] = true,
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["encounterid"] = "622",
				["use_zoneIds"] = true,
				["zone"] = "Serpentshrine Cavern",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "THHUoTU8G3A",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Archimonde - Doomfire",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135830,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = "Intangible Presence",
						["use_aggro"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["useName"] = false,
						["type"] = "aura2",
						["auraspellids"] = {
							"41469", -- [1]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["use_npcId"] = false,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Impale",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["duration"] = "2",
						["use_unit"] = true,
						["unit"] = "target",
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
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = "Intangible Presence",
						["use_aggro"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["useName"] = false,
						["type"] = "unit",
						["auraspellids"] = {
							"41469", -- [1]
						},
						["unevent"] = "timed",
						["use_threatUnit"] = true,
						["use_npcId"] = false,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["realSpellName"] = "Intangible Presence",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["duration"] = "2",
						["use_unit"] = true,
						["unit"] = "target",
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
						["use_class"] = false,
						["type"] = "unit",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["event"] = "Unit Characteristics",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "unit",
						["use_status"] = false,
						["debuffType"] = "HELPFUL",
						["use_aggro"] = true,
						["use_unit"] = true,
						["event"] = "Threat Situation",
						["unit"] = "target",
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_visible"] = false,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_affected_format"] = "none",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = false,
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
				["zoneIds"] = "339",
				["encounterid"] = "608",
				["use_zoneIds"] = true,
				["zone"] = "Tempest Keep",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "6dyFt1hAH8O",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
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
						["trigger"] = 2,
						["op"] = "==",
						["value"] = "WARRIOR",
						["variable"] = "class",
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
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Council - Judgement",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 135959,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
				["finish"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_sound"] = false,
				},
				["init"] = {
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
						["use_aggro"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["spellName"] = "Intangible Presence",
						["use_unit"] = true,
						["use_genericShowOn"] = true,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["type"] = "event",
						["auraspellids"] = {
							"38215", -- [1]
						},
						["unevent"] = "timed",
						["realSpellName"] = "Impale",
						["use_npcId"] = true,
						["threatUnit"] = "target",
						["amount_operator"] = ">",
						["use_threatUnit"] = true,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_message"] = true,
						["names"] = {
						},
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
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
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
					["text_justify"] = "CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_text_format_affected_format"] = "none",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
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
				["zoneIds"] = "339",
				["encounterid"] = "622",
				["use_zoneIds"] = true,
				["zone"] = "Serpentshrine Cavern",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
						["PRIEST"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["uid"] = "GGJYr8mNFfn",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["parent"] = "Tems' BT/MH Pack",
			["cooldownTextDisabled"] = false,
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "1.1.2",
			["tocversion"] = 20504,
			["id"] = "Archimonde - Phase 2",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 134162,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/Y5J7NdyVH/7",
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
						["unit"] = "player",
						["custom_type"] = "stateupdate",
						["use_spellId"] = true,
						["events"] = "CLEU:SPELL_AURA_APPLIED:SPELL_CAST_SUCCESS",
						["spellIds"] = {
						},
						["check"] = "event",
						["use_destUnit"] = true,
						["subeventPrefix"] = "SPELL",
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
						["unit"] = "player",
						["custom_type"] = "stateupdate",
						["use_spellId"] = true,
						["events"] = "CLEU:SPELL_AURA_APPLIED:SPELL_CAST_SUCCESS",
						["spellIds"] = {
						},
						["check"] = "event",
						["use_destUnit"] = true,
						["subeventPrefix"] = "SPELL",
						["customVariables"] = "\n{\n    expirationTime = 0,\n    duration = 0,\n}",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["message"] = "#羽毛测试",
						["type"] = "event",
						["debuffType"] = "HELPFUL",
						["message_operator"] = "==",
						["use_message"] = true,
						["duration"] = "5.5",
						["event"] = "Chat Message",
						["unit"] = "player",
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
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 60,
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
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
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
					["glowThickness"] = 1,
					["glow"] = false,
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
					["text_anchorYOffset"] = -5,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "聊天",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_text_format_p_time_precision"] = 1,
					["text_visible"] = true,
					["text_fontSize"] = 20,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
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
					["text_anchorYOffset"] = -5,
					["text_color"] = {
						1, -- [1]
						0.73725490196078, -- [2]
						0.019607843137255, -- [3]
						1, -- [4]
					},
					["text_font"] = "聊天",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_text_format_p_time_precision"] = 1,
					["text_visible"] = false,
					["text_fontSize"] = 20,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
				}, -- [5]
			},
			["height"] = 60,
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "622",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_zoneIds"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["cooldownEdge"] = false,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
					["custom"] = "aura_env.create()",
					["do_custom"] = false,
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "local e = aura_env \nif not _G[e.id..\"Button\"] then \n    local region = WeakAuras.GetRegion(e.id) \n    e.btn = CreateFrame(\"Button\", e.id..\"Button\", region, \"SecureActionButtonTemplate\") \n    e.btn:SetHighlightTexture([[Interface\\Buttons\\ButtonHilight-Square]],\"ADD\") \n    e.btn:SetPushedTexture([[Interface\\Buttons\\UI-Quickslot-Depress]]) \n    e.btn:SetAttribute(\"type\", \"macro\") \n    e.btn:SetAllPoints(region)\nend \nlocal btn = _G[e.id..\"Button\"]\nlocal m = \"/use item:24494\"\ne.btn:SetAttribute(\"type\", \"macro\") \ne.btn:RegisterForClicks(\"LeftButtonDown\", \"RightButtonDown\") \ne.btn:SetAttribute(\"macrotext\",m)",
					["do_custom"] = false,
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["value"] = "1.2",
						["variable"] = "expirationTime",
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
						["value"] = "1.2",
						["variable"] = "expirationTime",
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
						["value"] = "1.2",
						["variable"] = "expirationTime",
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
			["config"] = {
			},
			["alpha"] = 1,
			["zoom"] = 0.25,
			["semver"] = "1.0.7",
			["tocversion"] = 20504,
			["id"] = "小喵-T6-BT-阿克蒙德-空气爆裂-点击提示",
			["width"] = 60,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["uid"] = "55RNlYabbyE",
			["inverse"] = false,
			["parent"] = "小喵-T6-BT-阿克蒙德-空气爆裂",
			["displayIcon"] = "Interface\\Icons\\Spell_Arcane_Arcane01",
			["information"] = {
			},
			["selfPoint"] = "CENTER",
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
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["realSpellName"] = "戰爭踐踏",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["spellName"] = 20549,
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
					["glowThickness"] = 1,
					["glow"] = false,
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
			["xOffset"] = 114.68,
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
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["url"] = "",
			["cooldown"] = true,
			["zoom"] = 0,
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.18",
			["tocversion"] = 20502,
			["id"] = "牛头人天赋",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 3,
			["width"] = 40,
			["alpha"] = 1,
			["uid"] = "PQNYVrdit2F",
			["inverse"] = false,
			["icon"] = true,
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
			["information"] = {
			},
			["parent"] = "老雷增强萨WA",
		},
	},
	["editor_theme"] = "Monokai",
}
