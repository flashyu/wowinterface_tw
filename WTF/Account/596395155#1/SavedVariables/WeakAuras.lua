
WeakAurasSaved = {
	["dynamicIconCache"] = {
	},
	["editor_tab_spaces"] = 4,
	["displays"] = {
		["Form Mana Bar - Druid"] = {
			["sparkWidth"] = 10,
			["colorState"] = "",
			["sparkOffsetX"] = 0,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["alpha"] = 1,
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["icon"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["use_showCost"] = true,
						["subeventPrefix"] = "SPELL",
						["powertype"] = 0,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["unevent"] = "auto",
						["event"] = "Power",
						["use_percentpower"] = false,
						["unit"] = "player",
						["use_absorbMode"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["percentpower"] = "90",
						["percentpower_operator"] = "<=",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"768", -- [1]
							"5487", -- [2]
							"9634", -- [3]
						},
						["unit"] = "player",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["configGroup"] = "mana_bar",
			["overlays"] = {
				{
					0, -- [1]
					0, -- [2]
					0, -- [3]
					0.40000003576279, -- [4]
				}, -- [1]
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
			["isPrimaryResource"] = false,
			["iconSource"] = -1,
			["barColor"] = {
				0.03921568627451, -- [1]
				0.45098039215686, -- [2]
				0.82745098039216, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["parent"] = "Resources - Druid",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.region.configGroup = \"form_mana_bar\"",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
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
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
				}, -- [3]
			},
			["height"] = 5,
			["internalVersion"] = 53,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
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
				["zoneIds"] = "",
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["selfPoint"] = "TOP",
			["source"] = "import",
			["authorOptions"] = {
			},
			["version"] = 20,
			["config"] = {
			},
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["auto"] = true,
			["uid"] = "Ai2HUT(KjJE",
			["icon_side"] = "RIGHT",
			["width"] = 405,
			["overlayclip"] = true,
			["texture"] = "Solid",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["zoom"] = 0,
			["spark"] = false,
			["tocversion"] = 30400,
			["sparkHidden"] = "NEVER",
			["id"] = "Form Mana Bar - Druid",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["sparkHeight"] = 30,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["semver"] = "2.0.17",
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">=",
						["variable"] = "percentpower",
						["value"] = "80",
					},
					["linked"] = false,
					["changes"] = {
						{
							["value"] = {
								["custom"] = "aura_env.region.colorState = \"full\"\nLWA.UpdateBar()",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["op"] = "<=",
						["variable"] = "alwaystrue",
					},
					["linked"] = true,
					["changes"] = {
						{
							["value"] = {
								["custom"] = "aura_env.region.colorState = \"\"\nLWA.UpdateBar()",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [2]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.30000001192093, -- [4]
			},
		},
		["Swiftmend"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 18562,
						["realSpellName"] = "迅捷治愈",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"768", -- [1]
							"5487", -- [2]
							"9634", -- [3]
						},
						["unit"] = "player",
						["matchesShowOn"] = "showOnMissing",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["class_and_spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
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
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["use_exact_spellknown"] = false,
				["spellknown"] = 18562,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["displayIcon"] = "",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["cooldownTextDisabled"] = false,
			["width"] = 48,
			["useCooldownModRate"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Swiftmend",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "2.0.17",
			["uid"] = "0Ud0qZm2Znb",
			["inverse"] = true,
			["parent"] = "Core - Druid",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
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
					},
				}, -- [3]
			},
			["cooldown"] = true,
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
		["Class Options - Druid"] = {
			["iconSource"] = 0,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "GTFO",
						["unit"] = "player",
						["custom_hide"] = "timed",
						["custom"] = "function ()\n    if LWA and LWA.Init then\n        C_Timer.After(0.05, LWA.Init)\n    end\nend",
						["events"] = "OPTIONS",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["custom_type"] = "event",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["selfPoint"] = "TOP",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 1,
			["load"] = {
				["use_class"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
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
			["authorOptions"] = {
				{
					["subOptions"] = {
						{
							["subOptions"] = {
								{
									["type"] = "space",
									["variableWidth"] = true,
									["height"] = 2,
									["width"] = 2,
									["useHeight"] = true,
								}, -- [1]
								{
									["softMin"] = 5,
									["type"] = "range",
									["bigStep"] = 1,
									["max"] = 50,
									["step"] = 1,
									["width"] = 1.25,
									["min"] = 5,
									["key"] = "height",
									["softMax"] = 50,
									["useDesc"] = false,
									["name"] = "Resource Height",
									["default"] = 20,
								}, -- [2]
								{
									["type"] = "select",
									["default"] = 1,
									["values"] = {
										"12345", -- [1]
										"12,3K", -- [2]
										"12345 (100%)", -- [3]
										"12,3K (100%)", -- [4]
										"100%", -- [5]
									},
									["key"] = "format",
									["useDesc"] = false,
									["name"] = "Text Format",
									["width"] = 0.75,
								}, -- [3]
								{
									["type"] = "space",
									["variableWidth"] = true,
									["height"] = 2,
									["width"] = 2,
									["useHeight"] = true,
								}, -- [4]
								{
									["useName"] = true,
									["type"] = "header",
									["text"] = "Default Color",
									["noMerge"] = true,
									["width"] = 1,
								}, -- [5]
								{
									["type"] = "color",
									["default"] = {
										0.03921568627451, -- [1]
										0.45098039215686, -- [2]
										0.82745098039216, -- [3]
										1, -- [4]
									},
									["key"] = "color1",
									["useDesc"] = false,
									["name"] = "Color 1",
									["width"] = 1,
								}, -- [6]
								{
									["type"] = "color",
									["default"] = {
										0.23137254901961, -- [1]
										0.63137254901961, -- [2]
										1, -- [3]
										1, -- [4]
									},
									["key"] = "color2",
									["useDesc"] = false,
									["name"] = "Color",
									["width"] = 1,
								}, -- [7]
								{
									["type"] = "select",
									["default"] = 1,
									["values"] = {
										"Horizontal", -- [1]
										"Vertical", -- [2]
										"None", -- [3]
									},
									["key"] = "gradient",
									["useDesc"] = false,
									["name"] = "Gradient Direction",
									["width"] = 1,
								}, -- [8]
								{
									["type"] = "space",
									["variableWidth"] = true,
									["height"] = 2,
									["width"] = 2,
									["useHeight"] = true,
								}, -- [9]
							},
							["hideReorder"] = true,
							["useDesc"] = false,
							["nameSource"] = 0,
							["width"] = 1,
							["useCollapse"] = true,
							["collapse"] = true,
							["name"] = "Mana Bar",
							["key"] = "mana_bar",
							["limitType"] = "none",
							["groupType"] = "simple",
							["type"] = "group",
							["size"] = 10,
						}, -- [1]
						{
							["subOptions"] = {
								{
									["type"] = "space",
									["variableWidth"] = true,
									["height"] = 2,
									["width"] = 2,
									["useHeight"] = true,
								}, -- [1]
								{
									["softMin"] = 5,
									["type"] = "range",
									["bigStep"] = 1,
									["max"] = 50,
									["step"] = 1,
									["width"] = 1.25,
									["min"] = 5,
									["key"] = "height",
									["softMax"] = 50,
									["useDesc"] = false,
									["name"] = "Resource Height",
									["default"] = 5,
								}, -- [2]
								{
									["type"] = "space",
									["variableWidth"] = true,
									["height"] = 2,
									["width"] = 2,
									["useHeight"] = true,
								}, -- [3]
								{
									["useName"] = true,
									["type"] = "header",
									["text"] = "Default Color",
									["noMerge"] = true,
									["width"] = 1,
								}, -- [4]
								{
									["type"] = "color",
									["default"] = {
										0.03921568627451, -- [1]
										0.45098039215686, -- [2]
										0.82745098039216, -- [3]
										1, -- [4]
									},
									["key"] = "color1",
									["useDesc"] = false,
									["name"] = "Color 1",
									["width"] = 1,
								}, -- [5]
								{
									["type"] = "color",
									["default"] = {
										0.23137254901961, -- [1]
										0.63137254901961, -- [2]
										1, -- [3]
										1, -- [4]
									},
									["key"] = "color2",
									["useDesc"] = false,
									["name"] = "Color",
									["width"] = 1,
								}, -- [6]
								{
									["type"] = "select",
									["default"] = 1,
									["values"] = {
										"Horizontal", -- [1]
										"Vertical", -- [2]
										"None", -- [3]
									},
									["key"] = "gradient",
									["useDesc"] = false,
									["name"] = "Gradient Direction",
									["width"] = 1,
								}, -- [7]
								{
									["useName"] = true,
									["type"] = "header",
									["text"] = "Over 90% Mana in Form",
									["noMerge"] = true,
									["width"] = 1,
								}, -- [8]
								{
									["type"] = "color",
									["default"] = {
										1, -- [1]
										1, -- [2]
										1, -- [3]
										0.35000002384186, -- [4]
									},
									["key"] = "full_color1",
									["useDesc"] = false,
									["name"] = "Color 1",
									["width"] = 1,
								}, -- [9]
								{
									["type"] = "color",
									["default"] = {
										1, -- [1]
										1, -- [2]
										1, -- [3]
										0.44999998807907, -- [4]
									},
									["key"] = "full_color2",
									["useDesc"] = false,
									["name"] = "Color",
									["width"] = 1,
								}, -- [10]
								{
									["type"] = "select",
									["default"] = 1,
									["values"] = {
										"Horizontal", -- [1]
										"Vertical", -- [2]
										"None", -- [3]
									},
									["key"] = "full_gradient",
									["useDesc"] = false,
									["name"] = "Gradient Direction",
									["width"] = 1,
								}, -- [11]
								{
									["type"] = "space",
									["variableWidth"] = true,
									["height"] = 2,
									["width"] = 2,
									["useHeight"] = true,
								}, -- [12]
							},
							["hideReorder"] = true,
							["useDesc"] = false,
							["nameSource"] = 0,
							["width"] = 1,
							["useCollapse"] = true,
							["collapse"] = true,
							["name"] = "Form Mana Bar",
							["key"] = "form_mana_bar",
							["limitType"] = "none",
							["groupType"] = "simple",
							["type"] = "group",
							["size"] = 10,
						}, -- [2]
						{
							["subOptions"] = {
								{
									["type"] = "space",
									["variableWidth"] = true,
									["height"] = 2,
									["width"] = 2,
									["useHeight"] = true,
								}, -- [1]
								{
									["softMin"] = 5,
									["type"] = "range",
									["bigStep"] = 1,
									["max"] = 50,
									["step"] = 1,
									["width"] = 1.25,
									["min"] = 5,
									["key"] = "height",
									["softMax"] = 50,
									["useDesc"] = false,
									["name"] = "Resource Height",
									["default"] = 20,
								}, -- [2]
								{
									["type"] = "space",
									["variableWidth"] = true,
									["height"] = 2,
									["width"] = 2,
									["useHeight"] = true,
								}, -- [3]
								{
									["useName"] = true,
									["type"] = "header",
									["text"] = "Default Color",
									["noMerge"] = true,
									["width"] = 1,
								}, -- [4]
								{
									["type"] = "color",
									["default"] = {
										0.69019607843137, -- [1]
										0, -- [2]
										0, -- [3]
										1, -- [4]
									},
									["key"] = "color1",
									["useDesc"] = false,
									["name"] = "Color 1",
									["width"] = 1,
								}, -- [5]
								{
									["type"] = "color",
									["default"] = {
										0.90980392156863, -- [1]
										0.26666666666667, -- [2]
										0.12156862745098, -- [3]
										1, -- [4]
									},
									["key"] = "color2",
									["useDesc"] = false,
									["name"] = "Color",
									["width"] = 1,
								}, -- [6]
								{
									["type"] = "select",
									["default"] = 1,
									["values"] = {
										"Horizontal", -- [1]
										"Vertical", -- [2]
										"None", -- [3]
									},
									["key"] = "gradient",
									["useDesc"] = false,
									["name"] = "Gradient Direction",
									["width"] = 1,
								}, -- [7]
								{
									["type"] = "space",
									["variableWidth"] = true,
									["height"] = 2,
									["width"] = 2,
									["useHeight"] = true,
								}, -- [8]
							},
							["hideReorder"] = true,
							["useDesc"] = false,
							["nameSource"] = 0,
							["width"] = 1,
							["useCollapse"] = true,
							["collapse"] = true,
							["name"] = "Rage Bar",
							["key"] = "rage_bar",
							["limitType"] = "none",
							["groupType"] = "simple",
							["type"] = "group",
							["size"] = 10,
						}, -- [3]
						{
							["subOptions"] = {
								{
									["type"] = "space",
									["variableWidth"] = true,
									["height"] = 2,
									["width"] = 2,
									["useHeight"] = true,
								}, -- [1]
								{
									["softMin"] = 5,
									["type"] = "range",
									["bigStep"] = 1,
									["max"] = 50,
									["step"] = 1,
									["width"] = 1.25,
									["min"] = 5,
									["key"] = "height",
									["softMax"] = 50,
									["useDesc"] = false,
									["name"] = "Resource Height",
									["default"] = 20,
								}, -- [2]
								{
									["type"] = "space",
									["variableWidth"] = true,
									["height"] = 2,
									["width"] = 2,
									["useHeight"] = true,
								}, -- [3]
								{
									["useName"] = true,
									["type"] = "header",
									["text"] = "Default Color",
									["noMerge"] = true,
									["width"] = 1,
								}, -- [4]
								{
									["type"] = "color",
									["default"] = {
										1, -- [1]
										0.74901960784314, -- [2]
										0.16078431372549, -- [3]
										1, -- [4]
									},
									["key"] = "color1",
									["useDesc"] = false,
									["name"] = "Color 1",
									["width"] = 1,
								}, -- [5]
								{
									["type"] = "color",
									["default"] = {
										1, -- [1]
										0.85490196078431, -- [2]
										0.41960784313725, -- [3]
										1, -- [4]
									},
									["key"] = "color2",
									["useDesc"] = false,
									["name"] = "Color",
									["width"] = 1,
								}, -- [6]
								{
									["type"] = "select",
									["default"] = 1,
									["values"] = {
										"Horizontal", -- [1]
										"Vertical", -- [2]
										"None", -- [3]
									},
									["key"] = "gradient",
									["useDesc"] = false,
									["name"] = "Gradient Direction",
									["width"] = 1,
								}, -- [7]
								{
									["type"] = "space",
									["variableWidth"] = true,
									["height"] = 2,
									["width"] = 2,
									["useHeight"] = true,
								}, -- [8]
							},
							["hideReorder"] = true,
							["useDesc"] = false,
							["nameSource"] = 0,
							["width"] = 1,
							["useCollapse"] = true,
							["collapse"] = true,
							["name"] = "Energy Bar",
							["key"] = "energy_bar",
							["limitType"] = "none",
							["groupType"] = "simple",
							["type"] = "group",
							["size"] = 10,
						}, -- [4]
						{
							["subOptions"] = {
								{
									["type"] = "space",
									["variableWidth"] = true,
									["height"] = 2,
									["width"] = 2,
									["useHeight"] = true,
								}, -- [1]
								{
									["softMin"] = 5,
									["type"] = "range",
									["bigStep"] = 1,
									["max"] = 50,
									["step"] = 1,
									["width"] = 1.25,
									["min"] = 5,
									["key"] = "height",
									["softMax"] = 50,
									["useDesc"] = false,
									["name"] = "Resource Height",
									["default"] = 15,
								}, -- [2]
								{
									["type"] = "space",
									["variableWidth"] = true,
									["height"] = 2,
									["width"] = 2,
									["useHeight"] = true,
								}, -- [3]
								{
									["useName"] = true,
									["type"] = "header",
									["text"] = "Default Color",
									["noMerge"] = true,
									["width"] = 1,
								}, -- [4]
								{
									["type"] = "color",
									["default"] = {
										0.83137254901961, -- [1]
										0.14901960784314, -- [2]
										0, -- [3]
										1, -- [4]
									},
									["key"] = "color1",
									["useDesc"] = false,
									["name"] = "Color 1",
									["width"] = 1,
								}, -- [5]
								{
									["type"] = "color",
									["default"] = {
										1, -- [1]
										0.34117647058824, -- [2]
										0.27843137254902, -- [3]
										1, -- [4]
									},
									["key"] = "color2",
									["useDesc"] = false,
									["name"] = "Color",
									["width"] = 1,
								}, -- [6]
								{
									["type"] = "select",
									["default"] = 1,
									["values"] = {
										"Horizontal", -- [1]
										"Vertical", -- [2]
										"None", -- [3]
									},
									["key"] = "gradient",
									["useDesc"] = false,
									["name"] = "Gradient Direction",
									["width"] = 1,
								}, -- [7]
								{
									["useName"] = true,
									["type"] = "header",
									["text"] = "Highlight",
									["noMerge"] = true,
									["width"] = 1,
								}, -- [8]
								{
									["type"] = "color",
									["default"] = {
										0.25098039215686, -- [1]
										0.69019607843137, -- [2]
										0.18823529411765, -- [3]
										1, -- [4]
									},
									["key"] = "highlight_color1",
									["useDesc"] = false,
									["name"] = "Color 1",
									["width"] = 1,
								}, -- [9]
								{
									["type"] = "color",
									["default"] = {
										0.49019607843137, -- [1]
										0.94509803921569, -- [2]
										0.42745098039216, -- [3]
										1, -- [4]
									},
									["key"] = "highlight_color2",
									["useDesc"] = false,
									["name"] = "Color",
									["width"] = 1,
								}, -- [10]
								{
									["type"] = "select",
									["default"] = 1,
									["values"] = {
										"Horizontal", -- [1]
										"Vertical", -- [2]
										"None", -- [3]
									},
									["key"] = "highlight_gradient",
									["useDesc"] = false,
									["name"] = "Gradient Direction",
									["width"] = 1,
								}, -- [11]
								{
									["useName"] = true,
									["type"] = "header",
									["text"] = "Full",
									["noMerge"] = true,
									["width"] = 1,
								}, -- [12]
								{
									["type"] = "color",
									["default"] = {
										0.92549019607843, -- [1]
										0.92549019607843, -- [2]
										0.92549019607843, -- [3]
										1, -- [4]
									},
									["key"] = "full_color1",
									["useDesc"] = false,
									["name"] = "Color 1",
									["width"] = 1,
								}, -- [13]
								{
									["type"] = "color",
									["default"] = {
										1, -- [1]
										1, -- [2]
										1, -- [3]
										1, -- [4]
									},
									["key"] = "full_color2",
									["useDesc"] = false,
									["name"] = "Color",
									["width"] = 1,
								}, -- [14]
								{
									["type"] = "select",
									["default"] = 1,
									["values"] = {
										"Horizontal", -- [1]
										"Vertical", -- [2]
										"None", -- [3]
									},
									["key"] = "full_gradient",
									["useDesc"] = false,
									["name"] = "Gradient Direction",
									["width"] = 1,
								}, -- [15]
								{
									["type"] = "space",
									["variableWidth"] = true,
									["height"] = 2,
									["width"] = 2,
									["useHeight"] = true,
								}, -- [16]
							},
							["hideReorder"] = true,
							["useDesc"] = false,
							["nameSource"] = 0,
							["width"] = 1,
							["useCollapse"] = true,
							["collapse"] = true,
							["name"] = "Combo Points",
							["key"] = "combo_points",
							["limitType"] = "none",
							["groupType"] = "simple",
							["type"] = "group",
							["size"] = 10,
						}, -- [5]
					},
					["hideReorder"] = true,
					["useDesc"] = false,
					["nameSource"] = 0,
					["collapse"] = false,
					["width"] = 1,
					["useCollapse"] = false,
					["noMerge"] = false,
					["name"] = "Resources",
					["key"] = "resources",
					["limitType"] = "none",
					["groupType"] = "simple",
					["type"] = "group",
					["size"] = 10,
				}, -- [1]
			},
			["config"] = {
				["resources"] = {
					["rage_bar"] = {
						["height"] = 20,
						["gradient"] = 1,
						["color2"] = {
							0.90980392156863, -- [1]
							0.26666666666667, -- [2]
							0.12156862745098, -- [3]
							1, -- [4]
						},
						["color1"] = {
							0.69019607843137, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
					},
					["energy_bar"] = {
						["height"] = 20,
						["gradient"] = 1,
						["color2"] = {
							1, -- [1]
							0.85490196078431, -- [2]
							0.41960784313725, -- [3]
							1, -- [4]
						},
						["color1"] = {
							1, -- [1]
							0.74901960784314, -- [2]
							0.16078431372549, -- [3]
							1, -- [4]
						},
					},
					["form_mana_bar"] = {
						["color2"] = {
							0.23137254901961, -- [1]
							0.63137254901961, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["full_gradient"] = 1,
						["full_color2"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							0.44999998807907, -- [4]
						},
						["full_color1"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							0.35000002384186, -- [4]
						},
						["gradient"] = 1,
						["height"] = 5,
						["color1"] = {
							0.03921568627451, -- [1]
							0.45098039215686, -- [2]
							0.82745098039216, -- [3]
							1, -- [4]
						},
					},
					["mana_bar"] = {
						["color2"] = {
							0.23137254901961, -- [1]
							0.63137254901961, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["height"] = 20,
						["format"] = 1,
						["gradient"] = 1,
						["color1"] = {
							0.03921568627451, -- [1]
							0.45098039215686, -- [2]
							0.82745098039216, -- [3]
							1, -- [4]
						},
					},
					["combo_points"] = {
						["full_gradient"] = 1,
						["highlight_gradient"] = 1,
						["color1"] = {
							0.83137254901961, -- [1]
							0.14901960784314, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["color2"] = {
							1, -- [1]
							0.34117647058824, -- [2]
							0.27843137254902, -- [3]
							1, -- [4]
						},
						["highlight_color2"] = {
							0.49019607843137, -- [1]
							0.94509803921569, -- [2]
							0.42745098039216, -- [3]
							1, -- [4]
						},
						["full_color2"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["height"] = 15,
						["gradient"] = 1,
						["highlight_color1"] = {
							0.25098039215686, -- [1]
							0.69019607843137, -- [2]
							0.18823529411765, -- [3]
							1, -- [4]
						},
						["full_color1"] = {
							0.92549019607843, -- [1]
							0.92549019607843, -- [2]
							0.92549019607843, -- [3]
							1, -- [4]
						},
					},
				},
			},
			["parent"] = "Luxthos - Druid",
			["information"] = {
			},
			["regionType"] = "icon",
			["desc"] = "Made by Luxthos - twitch.tv/luxthos",
			["displayIcon"] = 134520,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["cooldownTextDisabled"] = false,
			["width"] = 1,
			["useCooldownModRate"] = true,
			["zoom"] = 0,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Class Options - Druid",
			["frameStrata"] = 1,
			["alpha"] = 0,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["uid"] = "GlOXC69Zy0E",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "LWA = LWA or { UpdateBar = function() end }\nLWA.configs = LWA.configs or {}\nLWA.configs[\"class\"] = aura_env.config\nLWA.resources = {\n    \"Health Bar - Druid\",\n    \"Mana Bar - Druid\",\n    \"Rage Bar - Druid\",\n    \"Energy Bar - Druid\",\n    \"Combo Points - Druid\",\n    \"Form Mana Bar - Druid\",\n    \"Cast Bar - Druid\",\n}",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["conditions"] = {
			},
			["cooldown"] = false,
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
		["Tranquility - Restoration"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 740,
						["realSpellName"] = "宁静",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 95,
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellName"] = 0,
						["use_talent"] = true,
						["use_unit"] = true,
						["event"] = "Talent Known",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["class_and_spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 95,
					["multi"] = {
						[95] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["use_never"] = false,
				["spellknown"] = 740,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["displayIcon"] = "",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["cooldownTextDisabled"] = false,
			["width"] = 48,
			["useCooldownModRate"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Tranquility - Restoration",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "2.0.17",
			["uid"] = "QwdbY9(v6mW",
			["inverse"] = true,
			["parent"] = "Core - Druid",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
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
					},
				}, -- [3]
			},
			["cooldown"] = true,
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
		["Savage Roar"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["parent"] = "Core - Druid",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["showClones"] = false,
						["type"] = "aura2",
						["auranames"] = {
							"52610", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["event"] = "Health",
						["unit"] = "player",
						["unitExists"] = true,
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
						},
						["unit"] = "player",
						["ownOnly"] = true,
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
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
				["use_class"] = true,
				["race"] = {
				},
				["use_spellknown"] = true,
				["use_spec"] = true,
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["spellknown"] = 52610,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["uid"] = "OUtQcZ8s2hC",
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
				},
				["finish"] = {
				},
			},
			["regionType"] = "icon",
			["zoom"] = 0.3,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["cooldownEdge"] = true,
			["auto"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Savage Roar",
			["useCooldownModRate"] = true,
			["alpha"] = 1,
			["width"] = 48,
			["xOffset"] = 0,
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
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
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [5]
					},
				}, -- [4]
			},
			["cooldown"] = true,
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
		["Core - Druid"] = {
			["grow"] = "CUSTOM",
			["controlledChildren"] = {
				"Rake", -- [1]
				"Rip", -- [2]
				"Savage Roar", -- [3]
				"Tiger's Fury", -- [4]
				"Mangle (Bear)", -- [5]
				"Maul", -- [6]
				"Lacerate", -- [7]
				"Demoralizing Roar", -- [8]
				"Enrage - Druid", -- [9]
				"Moonfire", -- [10]
				"Insect Swarm", -- [11]
				"Rejuvenation", -- [12]
				"Regrowth", -- [13]
				"Lifebloom", -- [14]
				"Swiftmend", -- [15]
				"Wild Growth", -- [16]
				"Eclipse (Solar)", -- [17]
				"Eclipse (Lunar)", -- [18]
				"Starfall", -- [19]
				"Berserk", -- [20]
				"Nature's Swiftness - Druid", -- [21]
				"Force of Nature", -- [22]
				"Typhoon", -- [23]
				"Innervate - Restoration", -- [24]
				"Tranquility - Restoration", -- [25]
				"Barkskin", -- [26]
				"Survival Instincts", -- [27]
				"Frenzied Regeneration", -- [28]
				"Bash", -- [29]
				"Nature's Grasp", -- [30]
				"Dash", -- [31]
				"Feral Charge - Bear", -- [32]
				"Feral Charge - Cat", -- [33]
				"Innervate", -- [34]
				"Tranquility", -- [35]
				"Rebirth", -- [36]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "Ner0rxotC",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["fullCircle"] = true,
			["space"] = 2,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
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
						["debuffType"] = "HELPFUL",
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
			["gridWidth"] = 5,
			["useLimit"] = false,
			["align"] = "CENTER",
			["selfPoint"] = "TOP",
			["gridType"] = "RD",
			["desc"] = "Made by Luxthos - twitch.tv/luxthos",
			["stagger"] = 0,
			["version"] = 20,
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
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["xOffset"] = -6.103515625e-05,
			["source"] = "import",
			["customGrow"] = "function(newPositions, activeRegions)\n    if LWA and LWA.GrowCore then\n        LWA.GrowCore(newPositions, activeRegions)\n    end\nend",
			["scale"] = 1,
			["sortHybridTable"] = {
				["Swiftmend"] = false,
				["Tranquility - Restoration"] = false,
				["Savage Roar"] = false,
				["Mangle (Bear)"] = false,
				["Enrage - Druid"] = false,
				["Feral Charge - Bear"] = false,
				["Tiger's Fury"] = false,
				["Rebirth"] = false,
				["Innervate - Restoration"] = false,
				["Regrowth"] = false,
				["Lacerate"] = false,
				["Wild Growth"] = false,
				["Lifebloom"] = false,
				["Tranquility"] = false,
				["Innervate"] = false,
				["Feral Charge - Cat"] = false,
				["Maul"] = false,
				["Barkskin"] = false,
				["Dash"] = false,
				["Nature's Swiftness - Druid"] = false,
				["Force of Nature"] = false,
				["Insect Swarm"] = false,
				["Rake"] = false,
				["Rip"] = false,
				["Starfall"] = false,
				["Nature's Grasp"] = false,
				["Berserk"] = false,
				["Eclipse (Lunar)"] = false,
				["Typhoon"] = false,
				["Frenzied Regeneration"] = false,
				["Demoralizing Roar"] = false,
				["Moonfire"] = false,
				["Survival Instincts"] = false,
				["Rejuvenation"] = false,
				["Bash"] = false,
				["Eclipse (Solar)"] = false,
			},
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["uid"] = "ExSesMCYhiR",
			["parent"] = "Luxthos - Druid",
			["constantFactor"] = "RADIUS",
			["rowSpace"] = 1,
			["borderOffset"] = 4,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Core - Druid",
			["arcLength"] = 360,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["radius"] = 200,
			["borderInset"] = 1,
			["limit"] = 5,
			["animate"] = false,
			["conditions"] = {
			},
			["information"] = {
			},
			["config"] = {
			},
		},
		["Wrath of Elune"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
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
						["showClones"] = false,
						["type"] = "aura2",
						["auranames"] = {
							"46833", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["unit"] = "player",
						["unitExists"] = true,
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
						["type"] = "item",
						["use_itemName"] = true,
						["use_equipped"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["equipped_operator"] = ">=",
						["use_itemSetId"] = true,
						["itemSetId"] = "52",
						["use_genericShowOn"] = true,
						["event"] = "Item Set",
						["itemName"] = 0,
						["equipped"] = "4",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "item",
						["use_itemName"] = true,
						["use_equipped"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["equipped_operator"] = ">=",
						["use_itemSetId"] = true,
						["itemSetId"] = "68",
						["use_genericShowOn"] = true,
						["event"] = "Item Set",
						["itemName"] = 0,
						["equipped"] = "4",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "item",
						["use_itemName"] = true,
						["use_equipped"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["equipped_operator"] = ">=",
						["use_itemSetId"] = true,
						["itemSetId"] = "275",
						["use_genericShowOn"] = true,
						["event"] = "Item Set",
						["itemName"] = 0,
						["equipped"] = "4",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "item",
						["use_itemName"] = true,
						["use_equipped"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["equipped_operator"] = ">=",
						["use_itemSetId"] = true,
						["itemSetId"] = "774",
						["use_genericShowOn"] = true,
						["event"] = "Item Set",
						["itemName"] = 0,
						["equipped"] = "4",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [5]
				{
					["trigger"] = {
						["type"] = "item",
						["use_itemName"] = true,
						["use_equipped"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["equipped_operator"] = ">=",
						["use_itemSetId"] = true,
						["itemSetId"] = "781",
						["use_genericShowOn"] = true,
						["event"] = "Item Set",
						["itemName"] = 0,
						["equipped"] = "4",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [6]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    -- Gladiator's Wildhide\n    return t[1] and (t[2] or t[3] or t[4] or t[5] or t[6])\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["single"] = 8,
					["multi"] = {
						[8] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_level"] = true,
				["race"] = {
				},
				["use_class"] = true,
				["use_spellknown"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["level"] = "80",
				["level_operator"] = ">=",
				["zoneIds"] = "",
			},
			["source"] = "import",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["authorOptions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["icon"] = true,
			["desc"] = "",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["cooldownTextDisabled"] = false,
			["width"] = 48,
			["useCooldownModRate"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Wrath of Elune",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "2.0.17",
			["uid"] = "77oV7Pb0uaT",
			["inverse"] = false,
			["parent"] = "Dynamic Effects - Druid",
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
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "slidebottom",
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
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["Nature's Grace"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
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
						["showClones"] = false,
						["type"] = "aura2",
						["auranames"] = {
							"16886", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["unit"] = "player",
						["unitExists"] = true,
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
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[8] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_talent"] = false,
				["use_class"] = true,
				["race"] = {
				},
				["size"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_spellknown"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["zoneIds"] = "",
			},
			["source"] = "import",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["authorOptions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["icon"] = true,
			["desc"] = "",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["cooldownTextDisabled"] = false,
			["width"] = 48,
			["useCooldownModRate"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Nature's Grace",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "2.0.17",
			["uid"] = "rcunwsaraXE",
			["inverse"] = false,
			["parent"] = "Dynamic Effects - Druid",
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
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "slidebottom",
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
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["Left Side - Druid"] = {
			["grow"] = "CUSTOM",
			["controlledChildren"] = {
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "Ner0rxotC",
			["parent"] = "Luxthos - Druid",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "TOPLEFT",
			["fullCircle"] = true,
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 2,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
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
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["radius"] = 200,
			["gridType"] = "RD",
			["selfPoint"] = "TOPRIGHT",
			["align"] = "CENTER",
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
			["desc"] = "Made by Luxthos - twitch.tv/luxthos",
			["stagger"] = 0,
			["useLimit"] = false,
			["version"] = 20,
			["subRegions"] = {
			},
			["internalVersion"] = 53,
			["config"] = {
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
			["sortHybridTable"] = {
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["uid"] = "QsrLB8cSG3Y",
			["source"] = "import",
			["customGrow"] = "function(newPositions, activeRegions)\n    if LWA and LWA.GrowLeftSide then\n        LWA.GrowLeftSide(newPositions, activeRegions)\n    end\nend",
			["scale"] = 1,
			["xOffset"] = -6.103515625e-05,
			["border"] = false,
			["anchorFrameFrame"] = "WeakAuras:General Options - Druid",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["limit"] = 5,
			["gridWidth"] = 5,
			["anchorFrameParent"] = false,
			["constantFactor"] = "RADIUS",
			["rowSpace"] = 1,
			["borderOffset"] = 4,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Left Side - Druid",
			["animate"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["borderEdge"] = "Square Full White",
			["borderInset"] = 1,
			["authorOptions"] = {
			},
			["arcLength"] = 360,
			["conditions"] = {
			},
			["information"] = {
			},
			["rotation"] = 0,
		},
		["Omen of Clarity"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
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
						["type"] = "aura2",
						["auranames"] = {
							"16870", -- [1]
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
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["single"] = 102,
					["multi"] = {
						[61] = true,
						[102] = true,
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
				["use_class"] = true,
				["race"] = {
				},
				["use_spellknown"] = true,
				["use_spec"] = true,
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["spellknown"] = 16864,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["authorOptions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["icon"] = true,
			["desc"] = "",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["cooldownTextDisabled"] = false,
			["width"] = 48,
			["useCooldownModRate"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Omen of Clarity",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "2.0.17",
			["uid"] = "kN8B6wjArgr",
			["inverse"] = false,
			["parent"] = "Dynamic Effects - Druid",
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
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "slidebottom",
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
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["Tiger's Fury"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["parent"] = "Core - Druid",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["showClones"] = false,
						["type"] = "aura2",
						["auranames"] = {
							"9846", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["unit"] = "player",
						["unitExists"] = true,
						["ownOnly"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "spell",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["realSpellName"] = "猛虎之怒",
						["use_spellName"] = true,
						["spellName"] = 9846,
						["event"] = "Cooldown Progress (Spell)",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"768", -- [1]
						},
						["unit"] = "player",
						["ownOnly"] = true,
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[3]\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
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
				["use_class"] = true,
				["race"] = {
				},
				["use_spellknown"] = true,
				["use_spec"] = true,
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["spellknown"] = 9846,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["uid"] = "0PDlyvdHtVl",
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
				},
				["finish"] = {
				},
			},
			["regionType"] = "icon",
			["zoom"] = 0.3,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["cooldownEdge"] = false,
			["auto"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Tiger's Fury",
			["useCooldownModRate"] = true,
			["alpha"] = 1,
			["width"] = 48,
			["xOffset"] = 0,
			["config"] = {
			},
			["inverse"] = true,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [2]
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
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "insufficientResources",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.47450980392157, -- [1]
								0.51372549019608, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
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
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["property"] = "color",
						}, -- [5]
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [6]
					},
				}, -- [5]
			},
			["cooldown"] = true,
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
		["Challenging Roar"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
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
						["auranames"] = {
							"5209", -- [1]
						},
						["event"] = "Health",
						["unit"] = "target",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_matchedRune"] = false,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["names"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["use_exact_spellName"] = false,
						["realSpellName"] = "挑战咆哮",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["spellName"] = 5209,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["class_and_spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["use_never"] = false,
				["spellknown"] = 5209,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["displayIcon"] = "",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["cooldownTextDisabled"] = false,
			["width"] = 48,
			["useCooldownModRate"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Challenging Roar",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "2.0.17",
			["uid"] = "hxiKkj)l(Ay",
			["inverse"] = true,
			["parent"] = "Dynamic Spells - Druid",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [2]
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
				}, -- [3]
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
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [5]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "slidebottom",
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
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["Innervate - Restoration"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["match_countOperator"] = ">",
						["auranames"] = {
							"29166", -- [1]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "group",
						["useName"] = true,
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["match_count"] = "0",
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
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 29166,
						["realSpellName"] = "激活",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "unit",
						["use_unit"] = true,
						["talent"] = {
							["single"] = 95,
						},
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
						["event"] = "Talent Known",
						["use_talent"] = true,
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[3]\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["class_and_spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 95,
					["multi"] = {
						[95] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["use_never"] = false,
				["spellknown"] = 29166,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["displayIcon"] = "",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["cooldownTextDisabled"] = false,
			["width"] = 48,
			["useCooldownModRate"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Innervate - Restoration",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "2.0.17",
			["uid"] = "t4GQAkAeNOc",
			["inverse"] = true,
			["parent"] = "Core - Druid",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [2]
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
				}, -- [3]
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
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [5]
					},
				}, -- [4]
			},
			["cooldown"] = true,
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
		["Dynamic Spells - Druid"] = {
			["grow"] = "CUSTOM",
			["controlledChildren"] = {
				"Challenging Roar", -- [1]
				"Growl", -- [2]
				"Faerie Fire (Feral)", -- [3]
				"Cower - Druid", -- [4]
				"Maim", -- [5]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "Ner0rxotC",
			["parent"] = "Luxthos - Druid",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "TOPRIGHT",
			["fullCircle"] = true,
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 2,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
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
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["radius"] = 200,
			["gridType"] = "RD",
			["selfPoint"] = "BOTTOMRIGHT",
			["align"] = "CENTER",
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
			["desc"] = "Made by Luxthos - twitch.tv/luxthos",
			["stagger"] = 0,
			["useLimit"] = false,
			["version"] = 20,
			["subRegions"] = {
			},
			["internalVersion"] = 53,
			["config"] = {
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
			["sortHybridTable"] = {
				["Growl"] = false,
				["Faerie Fire (Feral)"] = false,
				["Cower - Druid"] = false,
				["Challenging Roar"] = false,
				["Maim"] = false,
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["uid"] = "D6BRpm9Q4kM",
			["source"] = "import",
			["customGrow"] = "function(newPositions, activeRegions)\n    if LWA and LWA.GrowDynamicSpells then\n        LWA.GrowDynamicSpells(newPositions, activeRegions)\n    end\nend",
			["scale"] = 1,
			["xOffset"] = -6.103515625e-05,
			["border"] = false,
			["anchorFrameFrame"] = "WeakAuras:General Options - Druid",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["limit"] = 5,
			["gridWidth"] = 5,
			["anchorFrameParent"] = false,
			["constantFactor"] = "RADIUS",
			["rowSpace"] = 1,
			["borderOffset"] = 4,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Dynamic Spells - Druid",
			["animate"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["borderEdge"] = "Square Full White",
			["borderInset"] = 1,
			["authorOptions"] = {
			},
			["arcLength"] = 360,
			["conditions"] = {
			},
			["information"] = {
			},
			["rotation"] = 0,
		},
		["test"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"Maintenance - Druid 2", -- [1]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["scale"] = 1,
			["border"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderSize"] = 2,
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["authorOptions"] = {
			},
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
			["borderEdge"] = "Square Full White",
			["borderOffset"] = 4,
			["regionType"] = "group",
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
			["id"] = "test",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["uid"] = "r(NxedpP5Us",
			["internalVersion"] = 53,
			["subRegions"] = {
			},
			["borderInset"] = 1,
			["conditions"] = {
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
			["information"] = {
			},
		},
		["Mark of the Wild 2"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
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
						["itemName"] = 6265,
						["use_count"] = false,
						["auranames"] = {
							"1126", -- [1]
							"21849", -- [2]
						},
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["unitExists"] = true,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_itemName"] = true,
						["unevent"] = "auto",
						["names"] = {
						},
						["spellIds"] = {
						},
						["duration"] = "1",
						["type"] = "aura2",
						["event"] = "Item Count",
						["unit"] = "player",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 6265,
						["use_count"] = false,
						["auranames"] = {
							"1126", -- [1]
							"21849", -- [2]
						},
						["duration"] = "1",
						["names"] = {
						},
						["unitExists"] = true,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["use_itemName"] = true,
						["event"] = "Item Count",
						["use_unit"] = true,
						["type"] = "aura2",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["matchesShowOn"] = "showOnActive",
						["remOperator"] = "<=",
						["rem"] = "300",
						["unit"] = "player",
						["useRem"] = true,
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["itemName"] = 6265,
						["use_count"] = false,
						["auranames"] = {
							"1126", -- [1]
							"21849", -- [2]
						},
						["matchesShowOn"] = "showOnMissing",
						["subeventPrefix"] = "SPELL",
						["unitExists"] = true,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_itemName"] = true,
						["unevent"] = "auto",
						["names"] = {
						},
						["spellIds"] = {
						},
						["duration"] = "1",
						["type"] = "aura2",
						["event"] = "Item Count",
						["unit"] = "player",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["use_resting"] = true,
						["use_incombat"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["unit"] = "player",
						["event"] = "Conditions",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom"] = "function()\n    if LWA and LWA.Init then\n        LWA.Init()\n    end\nend",
						["custom_type"] = "event",
						["debuffType"] = "HELPFUL",
						["events"] = "OPTIONS",
						["unit"] = "player",
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
					},
				}, -- [5]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    if t[4] then -- If in Rested Area\n        return false\n    end\n    \n    local behavior = aura_env.config.maintenance.mark_of_the_wild.behavior\n    \n    if behavior == 1 then -- Show if Applied\n        return t[1]\n    elseif behavior == 2 then -- Show if Missing\n        return t[2] or t[3]\n    else -- Always Show\n        return true\n    end\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_offset"] = 0,
					["type"] = "subborder",
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
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
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
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
				["spellknown"] = 1126,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["parent"] = "Maintenance - Druid 2",
			["config"] = {
				["maintenance"] = {
					["mark_of_the_wild"] = {
						["behavior"] = 2,
					},
				},
			},
			["semver"] = "2.0.17",
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
			["cooldown"] = true,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["authorOptions"] = {
				{
					["subOptions"] = {
						{
							["type"] = "header",
							["useName"] = true,
							["text"] = "Behavior",
							["noMerge"] = false,
							["width"] = 1,
						}, -- [1]
						{
							["subOptions"] = {
								{
									["text"] = "Mark of the Wild",
									["type"] = "description",
									["fontSize"] = "large",
									["width"] = 1,
								}, -- [1]
								{
									["type"] = "select",
									["values"] = {
										"Show if Applied", -- [1]
										"Show if Missing", -- [2]
										"Always Show", -- [3]
									},
									["default"] = 2,
									["name"] = "Behavior",
									["useDesc"] = false,
									["key"] = "behavior",
									["width"] = 1,
								}, -- [2]
							},
							["hideReorder"] = true,
							["useDesc"] = false,
							["nameSource"] = 0,
							["name"] = "Mark of the Wild",
							["width"] = 1,
							["useCollapse"] = false,
							["noMerge"] = false,
							["collapse"] = false,
							["type"] = "group",
							["limitType"] = "none",
							["groupType"] = "simple",
							["key"] = "mark_of_the_wild",
							["size"] = 10,
						}, -- [2]
					},
					["hideReorder"] = true,
					["useDesc"] = false,
					["nameSource"] = 0,
					["name"] = "Maintenance Icons",
					["width"] = 1,
					["useCollapse"] = true,
					["noMerge"] = false,
					["collapse"] = true,
					["type"] = "group",
					["limitType"] = "none",
					["groupType"] = "simple",
					["key"] = "maintenance",
					["size"] = 10,
				}, -- [1]
			},
			["xOffset"] = 0,
			["width"] = 48,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Mark of the Wild 2",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["useCooldownModRate"] = true,
			["uid"] = "h7uB2va6AVN",
			["inverse"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [1]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["icon"] = true,
		},
		["General Options - Druid"] = {
			["iconSource"] = 0,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "GTFO",
						["unit"] = "player",
						["custom_hide"] = "timed",
						["custom"] = "function(event, arg1, arg2, ...)\n    local valid = false\n    \n    if \"OPTIONS\" == event or (\"PLAYER_ENTERING_WORLD\" == event and (arg1 or arg2)) then\n        C_Timer.After(0.05, LWA.Init)\n        \n    elseif \"UNIT_PET\" == event or \"UNIT_ENTERED_VEHICLE\" == event or \"UNIT_EXITED_VEHICLE\" == event then\n        valid = (\"player\" == arg1)\n        \n    elseif \"UNIT_HEALTH\" == event then\n        valid = (\"pet\" == arg1)\n    else\n        valid = true\n    end\n    \n    if valid then\n        C_Timer.After(0.1, LWA.UpdateResources)\n    end\nend",
						["events"] = "OPTIONS,PLAYER_ENTERING_WORLD,PLAYER_SPECIALIZATION_CHANGED,UPDATE_SHAPESHIFT_FORM,PLAYER_TALENT_UPDATE,PLAYER_PVP_TALENT_UPDATE,PLAYER_LEVEL_UP,UNIT_PET,UNIT_ENTERED_VEHICLE,UNIT_EXITED_VEHICLE,UNIT_HEALTH",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["custom_type"] = "event",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "GTFO",
						["unit"] = "player",
						["custom_hide"] = "timed",
						["custom"] = "function(event, ...)\n    local data = WeakAuras.GetData(aura_env.id)\n    local frame = WeakAuras.GetRegion(data.parent)\n    \n    if frame then\n        local alpha = 1\n        local cfg = LWA.GetConfig(\"ooc_alpha\")\n        \n        if not UnitAffectingCombat(\"player\") then\n            alpha = cfg.alpha\n        end\n        \n        if UnitExists(\"target\") then\n            local isEnemy = UnitCanAttack(\"player\", \"target\") or UnitIsEnemy(\"player\", \"target\")\n            \n            if (not isEnemy and cfg.ignore_friendly) or (isEnemy and cfg.ignore_enemy) then\n                alpha = 1\n            end\n        end\n        \n        frame:SetAlpha(alpha)\n        \n        return true\n    end\n    \n    return false\nend",
						["events"] = "PLAYER_ENTERING_WORLD,PLAYER_REGEN_ENABLED,PLAYER_REGEN_DISABLED,PLAYER_TARGET_CHANGED,PLAYER_ALIVE,PLAYER_DEAD,PLAYER_UNGHOST",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["custom_type"] = "event",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
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
				}, -- [3]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["selfPoint"] = "TOP",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 48,
			["load"] = {
				["use_class"] = true,
				["talent"] = {
					["multi"] = {
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
			["authorOptions"] = {
				{
					["useName"] = true,
					["type"] = "header",
					["text"] = "Global Settings",
					["noMerge"] = false,
					["width"] = 1,
				}, -- [1]
				{
					["subOptions"] = {
						{
							["type"] = "space",
							["variableWidth"] = true,
							["height"] = 2,
							["width"] = 2,
							["useHeight"] = true,
						}, -- [1]
						{
							["softMin"] = 0,
							["type"] = "range",
							["bigStep"] = 1,
							["max"] = 10,
							["step"] = 1,
							["width"] = 1,
							["min"] = 0,
							["key"] = "border_size",
							["softMax"] = 10,
							["useDesc"] = false,
							["name"] = "Border Size",
							["default"] = 0,
						}, -- [2]
						{
							["softMin"] = 0,
							["type"] = "range",
							["bigStep"] = 1,
							["max"] = 100,
							["step"] = 1,
							["width"] = 1,
							["min"] = 0,
							["key"] = "zoom",
							["softMax"] = 100,
							["useDesc"] = false,
							["name"] = "Icon Zoom",
							["default"] = 30,
						}, -- [3]
						{
							["type"] = "color",
							["default"] = {
								0, -- [1]
								0, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["key"] = "border_color",
							["useDesc"] = false,
							["name"] = "Border Color",
							["width"] = 1,
						}, -- [4]
						{
							["type"] = "toggle",
							["default"] = true,
							["key"] = "apply_border",
							["useDesc"] = false,
							["name"] = "Apply Border to Resources",
							["width"] = 1,
						}, -- [5]
						{
							["type"] = "space",
							["variableWidth"] = true,
							["height"] = 2,
							["width"] = 2,
							["useHeight"] = true,
						}, -- [6]
					},
					["hideReorder"] = true,
					["useDesc"] = false,
					["nameSource"] = 0,
					["width"] = 1,
					["useCollapse"] = true,
					["collapse"] = true,
					["name"] = "Global Style",
					["key"] = "style",
					["limitType"] = "none",
					["groupType"] = "simple",
					["type"] = "group",
					["size"] = 10,
				}, -- [2]
				{
					["subOptions"] = {
						{
							["type"] = "space",
							["variableWidth"] = true,
							["height"] = 2,
							["width"] = 2,
							["useHeight"] = true,
						}, -- [1]
						{
							["softMin"] = 0,
							["type"] = "range",
							["bigStep"] = 0.05,
							["max"] = 1,
							["step"] = 0.05,
							["width"] = 2,
							["min"] = 0,
							["key"] = "alpha",
							["desc"] = "Change the alpha of the groups when out of combat.",
							["softMax"] = 1,
							["useDesc"] = true,
							["name"] = "Out of Combat Alpha",
							["default"] = 1,
						}, -- [2]
						{
							["type"] = "toggle",
							["default"] = true,
							["desc"] = "Enable to show full opacity on enemy target.",
							["key"] = "ignore_enemy",
							["useDesc"] = true,
							["name"] = "Ignore on Enemy Target",
							["width"] = 1,
						}, -- [3]
						{
							["type"] = "toggle",
							["default"] = true,
							["desc"] = "Enable to show full opacity on friendly target.",
							["key"] = "ignore_friendly",
							["useDesc"] = true,
							["name"] = "Ignore on Friendly Target",
							["width"] = 1,
						}, -- [4]
						{
							["type"] = "space",
							["variableWidth"] = true,
							["height"] = 2,
							["width"] = 2,
							["useHeight"] = true,
						}, -- [5]
					},
					["hideReorder"] = true,
					["useDesc"] = false,
					["nameSource"] = 0,
					["width"] = 1,
					["useCollapse"] = true,
					["collapse"] = true,
					["name"] = "Out of Combat Alpha",
					["key"] = "ooc_alpha",
					["limitType"] = "none",
					["groupType"] = "simple",
					["type"] = "group",
					["size"] = 10,
				}, -- [3]
				{
					["useName"] = true,
					["type"] = "header",
					["text"] = "Icons Size & Spacing",
					["noMerge"] = false,
					["width"] = 1,
				}, -- [4]
				{
					["subOptions"] = {
						{
							["type"] = "space",
							["variableWidth"] = true,
							["height"] = 2,
							["width"] = 2,
							["useHeight"] = true,
						}, -- [1]
						{
							["softMin"] = 16,
							["type"] = "range",
							["bigStep"] = 2,
							["max"] = 72,
							["step"] = 2,
							["width"] = 1,
							["min"] = 16,
							["key"] = "width",
							["softMax"] = 72,
							["useDesc"] = false,
							["name"] = "Width",
							["default"] = 48,
						}, -- [2]
						{
							["softMin"] = 8,
							["type"] = "range",
							["bigStep"] = 2,
							["max"] = 72,
							["step"] = 2,
							["width"] = 1,
							["min"] = 8,
							["key"] = "height",
							["softMax"] = 72,
							["useDesc"] = false,
							["name"] = "Height",
							["default"] = 48,
						}, -- [3]
						{
							["softMin"] = 0,
							["type"] = "range",
							["bigStep"] = 1,
							["max"] = 20,
							["step"] = 1,
							["width"] = 1,
							["min"] = 0,
							["key"] = "spacing",
							["softMax"] = 20,
							["useDesc"] = false,
							["name"] = "Spacing",
							["default"] = 3,
						}, -- [4]
						{
							["softMin"] = 4,
							["type"] = "range",
							["bigStep"] = 1,
							["max"] = 12,
							["step"] = 1,
							["width"] = 1,
							["min"] = 4,
							["key"] = "nb",
							["softMax"] = 12,
							["useDesc"] = false,
							["name"] = "Number of Icons",
							["default"] = 8,
						}, -- [5]
						{
							["type"] = "select",
							["default"] = 2,
							["values"] = {
								"Above Main Icons", -- [1]
								"Below Main Icons", -- [2]
							},
							["key"] = "resources_position",
							["useDesc"] = false,
							["name"] = "Resources Position",
							["width"] = 1,
						}, -- [6]
						{
							["type"] = "space",
							["variableWidth"] = true,
							["height"] = 2,
							["width"] = 2,
							["useHeight"] = true,
						}, -- [7]
					},
					["hideReorder"] = true,
					["useDesc"] = false,
					["nameSource"] = 0,
					["width"] = 1,
					["useCollapse"] = true,
					["collapse"] = true,
					["name"] = "Main Icons",
					["key"] = "primary",
					["limitType"] = "none",
					["groupType"] = "simple",
					["type"] = "group",
					["size"] = 10,
				}, -- [5]
				{
					["subOptions"] = {
						{
							["type"] = "space",
							["variableWidth"] = true,
							["height"] = 2,
							["width"] = 2,
							["useHeight"] = true,
						}, -- [1]
						{
							["softMin"] = 16,
							["type"] = "range",
							["bigStep"] = 2,
							["max"] = 72,
							["step"] = 2,
							["width"] = 1,
							["min"] = 16,
							["key"] = "width",
							["softMax"] = 72,
							["useDesc"] = false,
							["name"] = "Width",
							["default"] = 32,
						}, -- [2]
						{
							["softMin"] = 8,
							["type"] = "range",
							["bigStep"] = 2,
							["max"] = 72,
							["step"] = 2,
							["width"] = 1,
							["min"] = 8,
							["key"] = "height",
							["softMax"] = 72,
							["useDesc"] = false,
							["name"] = "Height",
							["default"] = 32,
						}, -- [3]
						{
							["softMin"] = 0,
							["type"] = "range",
							["bigStep"] = 1,
							["max"] = 20,
							["step"] = 1,
							["width"] = 1,
							["min"] = 0,
							["key"] = "spacing",
							["softMax"] = 20,
							["useDesc"] = false,
							["name"] = "Spacing",
							["default"] = 3,
						}, -- [4]
						{
							["type"] = "space",
							["variableWidth"] = true,
							["height"] = 2,
							["width"] = 2,
							["useHeight"] = true,
						}, -- [5]
					},
					["hideReorder"] = true,
					["useDesc"] = false,
					["nameSource"] = 0,
					["width"] = 1,
					["useCollapse"] = true,
					["collapse"] = true,
					["name"] = "Secondary Icons",
					["key"] = "secondary",
					["limitType"] = "none",
					["groupType"] = "simple",
					["type"] = "group",
					["size"] = 10,
				}, -- [6]
				{
					["subOptions"] = {
						{
							["type"] = "space",
							["variableWidth"] = true,
							["height"] = 2,
							["width"] = 2,
							["useHeight"] = true,
						}, -- [1]
						{
							["softMin"] = 16,
							["type"] = "range",
							["bigStep"] = 2,
							["max"] = 72,
							["step"] = 2,
							["width"] = 1,
							["min"] = 16,
							["key"] = "width",
							["softMax"] = 72,
							["useDesc"] = false,
							["name"] = "Width",
							["default"] = 34,
						}, -- [2]
						{
							["softMin"] = 8,
							["type"] = "range",
							["bigStep"] = 2,
							["max"] = 72,
							["step"] = 2,
							["width"] = 1,
							["min"] = 8,
							["key"] = "height",
							["softMax"] = 72,
							["useDesc"] = false,
							["name"] = "Height",
							["default"] = 34,
						}, -- [3]
						{
							["softMin"] = 0,
							["type"] = "range",
							["bigStep"] = 1,
							["max"] = 20,
							["step"] = 1,
							["width"] = 1,
							["min"] = 0,
							["key"] = "spacing",
							["softMax"] = 20,
							["useDesc"] = false,
							["name"] = "Spacing",
							["default"] = 3,
						}, -- [4]
						{
							["softMin"] = 0,
							["type"] = "range",
							["bigStep"] = 1,
							["max"] = 200,
							["step"] = 1,
							["width"] = 1,
							["min"] = 0,
							["key"] = "margin",
							["softMax"] = 50,
							["useDesc"] = false,
							["name"] = "Bottom Margin",
							["default"] = 10,
						}, -- [5]
						{
							["type"] = "space",
							["variableWidth"] = true,
							["height"] = 2,
							["width"] = 2,
							["useHeight"] = true,
						}, -- [6]
					},
					["hideReorder"] = true,
					["useDesc"] = false,
					["nameSource"] = 0,
					["width"] = 1,
					["useCollapse"] = true,
					["collapse"] = true,
					["name"] = "Dynamic Icons",
					["key"] = "dynamic",
					["limitType"] = "none",
					["groupType"] = "simple",
					["type"] = "group",
					["size"] = 10,
				}, -- [7]
				{
					["subOptions"] = {
						{
							["type"] = "space",
							["variableWidth"] = true,
							["height"] = 2,
							["width"] = 2,
							["useHeight"] = true,
						}, -- [1]
						{
							["softMin"] = 16,
							["type"] = "range",
							["bigStep"] = 2,
							["max"] = 72,
							["step"] = 2,
							["width"] = 1,
							["min"] = 16,
							["key"] = "width",
							["softMax"] = 72,
							["useDesc"] = false,
							["name"] = "Width",
							["default"] = 36,
						}, -- [2]
						{
							["softMin"] = 8,
							["type"] = "range",
							["bigStep"] = 2,
							["max"] = 72,
							["step"] = 2,
							["width"] = 1,
							["min"] = 8,
							["key"] = "height",
							["softMax"] = 72,
							["useDesc"] = false,
							["name"] = "Height",
							["default"] = 36,
						}, -- [3]
						{
							["softMin"] = 0,
							["type"] = "range",
							["bigStep"] = 1,
							["max"] = 20,
							["step"] = 1,
							["width"] = 1,
							["min"] = 0,
							["key"] = "spacing",
							["softMax"] = 20,
							["useDesc"] = false,
							["name"] = "Spacing",
							["default"] = 3,
						}, -- [4]
						{
							["softMin"] = 0,
							["type"] = "range",
							["bigStep"] = 1,
							["max"] = 200,
							["step"] = 1,
							["width"] = 1,
							["min"] = 0,
							["key"] = "margin",
							["softMax"] = 50,
							["useDesc"] = false,
							["name"] = "Side Margin",
							["default"] = 3,
						}, -- [5]
						{
							["type"] = "toggle",
							["default"] = false,
							["key"] = "grow_horizontal",
							["useDesc"] = false,
							["name"] = "Grow Horizontally",
							["width"] = 1,
						}, -- [6]
						{
							["type"] = "space",
							["variableWidth"] = true,
							["height"] = 2,
							["width"] = 2,
							["useHeight"] = true,
						}, -- [7]
					},
					["hideReorder"] = true,
					["useDesc"] = false,
					["nameSource"] = 0,
					["width"] = 1,
					["useCollapse"] = true,
					["collapse"] = true,
					["name"] = "Side Icons",
					["key"] = "side",
					["limitType"] = "none",
					["groupType"] = "simple",
					["type"] = "group",
					["size"] = 10,
				}, -- [8]
				{
					["subOptions"] = {
						{
							["type"] = "space",
							["variableWidth"] = true,
							["height"] = 2,
							["width"] = 2,
							["useHeight"] = true,
						}, -- [1]
						{
							["type"] = "description",
							["text"] = "Please take note that all maintenance icons will be hidden while in a rested area out of combat no matter what behavior is selected. To see the normal behavior, leave the rested area or simply enter combat.",
							["fontSize"] = "medium",
							["width"] = 2,
						}, -- [2]
						{
							["type"] = "space",
							["variableWidth"] = true,
							["height"] = 1,
							["width"] = 2,
							["useHeight"] = true,
						}, -- [3]
						{
							["useName"] = true,
							["type"] = "header",
							["text"] = "Icon Size & Spacing",
							["noMerge"] = true,
							["width"] = 1,
						}, -- [4]
						{
							["softMin"] = 16,
							["type"] = "range",
							["bigStep"] = 2,
							["max"] = 72,
							["step"] = 2,
							["width"] = 1,
							["min"] = 16,
							["key"] = "width",
							["softMax"] = 72,
							["useDesc"] = false,
							["name"] = "Width",
							["default"] = 36,
						}, -- [5]
						{
							["softMin"] = 8,
							["type"] = "range",
							["bigStep"] = 2,
							["max"] = 72,
							["step"] = 2,
							["width"] = 1,
							["min"] = 8,
							["key"] = "height",
							["softMax"] = 72,
							["useDesc"] = false,
							["name"] = "Height",
							["default"] = 36,
						}, -- [6]
						{
							["softMin"] = 0,
							["type"] = "range",
							["bigStep"] = 1,
							["max"] = 20,
							["step"] = 1,
							["width"] = 1,
							["min"] = 0,
							["key"] = "spacing",
							["softMax"] = 20,
							["useDesc"] = false,
							["name"] = "Spacing",
							["default"] = 3,
						}, -- [7]
						{
							["softMin"] = 0,
							["type"] = "range",
							["bigStep"] = 1,
							["max"] = 200,
							["step"] = 1,
							["width"] = 1,
							["min"] = 0,
							["key"] = "margin",
							["softMax"] = 50,
							["useDesc"] = false,
							["name"] = "Top Margin",
							["default"] = 10,
						}, -- [8]
						{
							["type"] = "space",
							["variableWidth"] = true,
							["height"] = 2,
							["width"] = 2,
							["useHeight"] = true,
						}, -- [9]
					},
					["hideReorder"] = true,
					["useDesc"] = false,
					["nameSource"] = 0,
					["width"] = 1,
					["useCollapse"] = true,
					["collapse"] = true,
					["name"] = "Maintenance Icons",
					["key"] = "maintenance",
					["limitType"] = "none",
					["groupType"] = "simple",
					["type"] = "group",
					["size"] = 10,
				}, -- [9]
				{
					["useName"] = true,
					["type"] = "header",
					["text"] = "Resources",
					["noMerge"] = false,
					["width"] = 1,
				}, -- [10]
				{
					["subOptions"] = {
						{
							["subOptions"] = {
								{
									["type"] = "space",
									["variableWidth"] = true,
									["height"] = 2,
									["width"] = 2,
									["useHeight"] = true,
								}, -- [1]
								{
									["softMin"] = 5,
									["type"] = "range",
									["bigStep"] = 1,
									["max"] = 50,
									["step"] = 1,
									["width"] = 1.25,
									["min"] = 5,
									["key"] = "height",
									["softMax"] = 50,
									["useDesc"] = false,
									["name"] = "Resource Height",
									["default"] = 20,
								}, -- [2]
								{
									["type"] = "select",
									["default"] = 1,
									["values"] = {
										"12345", -- [1]
										"12,3K", -- [2]
										"12345 (100%)", -- [3]
										"12,3K (100%)", -- [4]
										"100%", -- [5]
									},
									["key"] = "format",
									["useDesc"] = false,
									["name"] = "Text Format",
									["width"] = 0.75,
								}, -- [3]
								{
									["type"] = "space",
									["variableWidth"] = true,
									["height"] = 2,
									["width"] = 2,
									["useHeight"] = true,
								}, -- [4]
								{
									["useName"] = true,
									["type"] = "header",
									["text"] = "Default Color",
									["noMerge"] = true,
									["width"] = 1,
								}, -- [5]
								{
									["type"] = "color",
									["default"] = {
										0.34509803921569, -- [1]
										0.64313725490196, -- [2]
										0.28235294117647, -- [3]
										1, -- [4]
									},
									["key"] = "color1",
									["useDesc"] = false,
									["name"] = "Color 1",
									["width"] = 1,
								}, -- [6]
								{
									["type"] = "color",
									["default"] = {
										0.5843137254902, -- [1]
										0.90588235294118, -- [2]
										0.52156862745098, -- [3]
										1, -- [4]
									},
									["key"] = "color2",
									["useDesc"] = false,
									["name"] = "Color",
									["width"] = 1,
								}, -- [7]
								{
									["type"] = "select",
									["default"] = 1,
									["values"] = {
										"Horizontal", -- [1]
										"Vertical", -- [2]
										"None", -- [3]
									},
									["key"] = "gradient",
									["useDesc"] = false,
									["name"] = "Gradient Direction",
									["width"] = 1,
								}, -- [8]
								{
									["type"] = "space",
									["variableWidth"] = true,
									["height"] = 2,
									["width"] = 2,
									["useHeight"] = true,
								}, -- [9]
							},
							["hideReorder"] = true,
							["useDesc"] = false,
							["nameSource"] = 0,
							["width"] = 1,
							["useCollapse"] = true,
							["collapse"] = true,
							["name"] = "Health Bar",
							["key"] = "health_bar",
							["limitType"] = "none",
							["groupType"] = "simple",
							["type"] = "group",
							["size"] = 10,
						}, -- [1]
						{
							["subOptions"] = {
								{
									["type"] = "space",
									["variableWidth"] = true,
									["height"] = 2,
									["width"] = 2,
									["useHeight"] = true,
								}, -- [1]
								{
									["softMin"] = 5,
									["type"] = "range",
									["bigStep"] = 1,
									["max"] = 50,
									["step"] = 1,
									["width"] = 1.25,
									["min"] = 5,
									["key"] = "height",
									["softMax"] = 50,
									["useDesc"] = false,
									["name"] = "Resource Height",
									["default"] = 20,
								}, -- [2]
								{
									["type"] = "space",
									["variableWidth"] = true,
									["height"] = 2,
									["width"] = 2,
									["useHeight"] = true,
								}, -- [3]
								{
									["useName"] = true,
									["type"] = "header",
									["text"] = "Default Color",
									["noMerge"] = true,
									["width"] = 1,
								}, -- [4]
								{
									["type"] = "color",
									["default"] = {
										0.52941176470588, -- [1]
										0.090196078431373, -- [2]
										0.090196078431373, -- [3]
										1, -- [4]
									},
									["key"] = "color1",
									["useDesc"] = false,
									["name"] = "Color 1",
									["width"] = 1,
								}, -- [5]
								{
									["type"] = "color",
									["default"] = {
										0.77647058823529, -- [1]
										0.1843137254902, -- [2]
										0.1843137254902, -- [3]
										1, -- [4]
									},
									["key"] = "color2",
									["useDesc"] = false,
									["name"] = "Color",
									["width"] = 1,
								}, -- [6]
								{
									["type"] = "select",
									["default"] = 1,
									["values"] = {
										"Horizontal", -- [1]
										"Vertical", -- [2]
										"None", -- [3]
									},
									["key"] = "gradient",
									["useDesc"] = false,
									["name"] = "Gradient Direction",
									["width"] = 1,
								}, -- [7]
								{
									["useName"] = true,
									["type"] = "header",
									["text"] = "Uninterruptible",
									["noMerge"] = true,
									["width"] = 1,
								}, -- [8]
								{
									["type"] = "color",
									["default"] = {
										0.52549019607843, -- [1]
										0.52549019607843, -- [2]
										0.52549019607843, -- [3]
										0.90000000596046, -- [4]
									},
									["key"] = "unint_color1",
									["useDesc"] = false,
									["name"] = "Color 1",
									["width"] = 1,
								}, -- [9]
								{
									["type"] = "color",
									["default"] = {
										0.70980392156863, -- [1]
										0.70980392156863, -- [2]
										0.70980392156863, -- [3]
										1, -- [4]
									},
									["key"] = "unint_color2",
									["useDesc"] = false,
									["name"] = "Color",
									["width"] = 1,
								}, -- [10]
								{
									["type"] = "select",
									["default"] = 1,
									["values"] = {
										"Horizontal", -- [1]
										"Vertical", -- [2]
										"None", -- [3]
									},
									["key"] = "unint_gradient",
									["useDesc"] = false,
									["name"] = "Gradient Direction",
									["width"] = 1,
								}, -- [11]
								{
									["type"] = "space",
									["variableWidth"] = true,
									["height"] = 2,
									["width"] = 2,
									["useHeight"] = true,
								}, -- [12]
							},
							["hideReorder"] = true,
							["useDesc"] = false,
							["nameSource"] = 0,
							["width"] = 1,
							["useCollapse"] = true,
							["collapse"] = true,
							["name"] = "Cast Bar",
							["key"] = "cast_bar",
							["limitType"] = "none",
							["groupType"] = "simple",
							["type"] = "group",
							["size"] = 10,
						}, -- [2]
					},
					["hideReorder"] = true,
					["useDesc"] = false,
					["nameSource"] = 0,
					["collapse"] = false,
					["width"] = 1,
					["useCollapse"] = false,
					["noMerge"] = false,
					["name"] = "Resources",
					["key"] = "resources",
					["limitType"] = "none",
					["groupType"] = "simple",
					["type"] = "group",
					["size"] = 10,
				}, -- [11]
				{
					["useName"] = true,
					["type"] = "header",
					["text"] = "Cast Bar Notice",
					["noMerge"] = false,
					["width"] = 1,
				}, -- [12]
				{
					["type"] = "description",
					["text"] = "This suite of WeakAuras contains a Casting Bar that will replace the default World of Warcraft casting bar. If you want to remove it, simply select the \"Cast Bar\" aura inside the Resources Group and check \"Never\" in the Load Tab. Once that's done, make sure to \"/reload\".\n\n",
					["fontSize"] = "medium",
					["width"] = 2,
				}, -- [13]
			},
			["config"] = {
				["style"] = {
					["apply_border"] = true,
					["border_size"] = 0,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["zoom"] = 30,
				},
				["ooc_alpha"] = {
					["ignore_enemy"] = true,
					["alpha"] = 1,
					["ignore_friendly"] = true,
				},
				["maintenance"] = {
					["height"] = 36,
					["width"] = 36,
					["margin"] = 10,
					["spacing"] = 3,
				},
				["dynamic"] = {
					["height"] = 34,
					["width"] = 34,
					["margin"] = 10,
					["spacing"] = 3,
				},
				["primary"] = {
					["spacing"] = 3,
					["height"] = 48,
					["resources_position"] = 2,
					["nb"] = 8,
					["width"] = 48,
				},
				["resources"] = {
					["cast_bar"] = {
						["color2"] = {
							0.77647058823529, -- [1]
							0.1843137254902, -- [2]
							0.1843137254902, -- [3]
							1, -- [4]
						},
						["unint_gradient"] = 1,
						["gradient"] = 1,
						["height"] = 20,
						["unint_color2"] = {
							0.70980392156863, -- [1]
							0.70980392156863, -- [2]
							0.70980392156863, -- [3]
							1, -- [4]
						},
						["unint_color1"] = {
							0.52549019607843, -- [1]
							0.52549019607843, -- [2]
							0.52549019607843, -- [3]
							0.90000000596046, -- [4]
						},
						["color1"] = {
							0.52941176470588, -- [1]
							0.090196078431373, -- [2]
							0.090196078431373, -- [3]
							1, -- [4]
						},
					},
					["health_bar"] = {
						["color2"] = {
							0.5843137254902, -- [1]
							0.90588235294118, -- [2]
							0.52156862745098, -- [3]
							1, -- [4]
						},
						["height"] = 20,
						["format"] = 1,
						["gradient"] = 1,
						["color1"] = {
							0.34509803921569, -- [1]
							0.64313725490196, -- [2]
							0.28235294117647, -- [3]
							1, -- [4]
						},
					},
				},
				["side"] = {
					["grow_horizontal"] = false,
					["spacing"] = 3,
					["height"] = 36,
					["margin"] = 3,
					["width"] = 36,
				},
				["secondary"] = {
					["height"] = 32,
					["spacing"] = 3,
					["width"] = 32,
				},
			},
			["parent"] = "Luxthos - Druid",
			["information"] = {
			},
			["regionType"] = "icon",
			["desc"] = "Made by Luxthos - twitch.tv/luxthos",
			["displayIcon"] = 134520,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["cooldownTextDisabled"] = false,
			["width"] = 405,
			["useCooldownModRate"] = true,
			["zoom"] = 0,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "General Options - Druid",
			["frameStrata"] = 1,
			["alpha"] = 0,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["uid"] = "44ta(qk14T6",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "local classes = {\n    WARRIOR = \"Warrior\",\n    PALADIN = \"Paladin\",\n    HUNTER = \"Hunter\",\n    ROGUE = \"Rogue\",\n    PRIEST = \"Priest\",\n    DEATHKNIGHT = \"Death Knight\",\n    SHAMAN = \"Shaman\",\n    MAGE = \"Mage\",\n    WARLOCK = \"Warlock\",\n    DRUID = \"Druid\",\n}\nlocal CLASS = classes[UnitClassBase(\"player\")]\n\nLWA = LWA or {}\n\nLWA.env = aura_env\nLWA.resources = LWA.resources or {}\nLWA.configs = LWA.configs or {}\nLWA.config = nil\n\nLWA.configs[\"general\"] = aura_env.config\n\nLWA.CLASS = CLASS\nLWA.MAX_WIDTH = 405\nLWA.RESOURCES_HEIGHT = 0\n\nlocal CLASS_OPTIONS = \"Class Options - \" .. CLASS\nlocal CORE_GROUP = \"Core - \" .. CLASS\nlocal RESOURCES_GROUP = \"Resources - \" .. CLASS\nlocal DYNAMIC_EFFECTS_GROUP = \"Dynamic Effects - \" .. CLASS\nlocal DYNAMIC_SPELLS_GROUP = \"Dynamic Spells - \" .. CLASS\nlocal LEFT_SIDE_GROUP = \"Left Side - \" .. CLASS\nlocal RIGHT_SIDE_GROUP = \"Right Side - \" .. CLASS\nlocal MAINTENANCE_GROUP = \"Maintenance - \" .. CLASS\n\nlocal function tclone(t1)\n    local t = {}\n    \n    if t1 then\n        for k, v in pairs(t1) do\n            if \"table\" == type(v) then\n                v = tclone(v)\n            end\n            \n            if \"string\" == type(k) then\n                t[k] = v\n            else\n                tinsert(t, v)\n            end\n        end\n    end\n    \n    return t\nend\n\nlocal function tmerge(...)\n    local ts = {...}\n    local t = tclone(ts[1])\n    local t2\n    \n    for i = 2, #ts do\n        t2 = ts[i] or {}\n        \n        for k, v in pairs(t2) do\n            if \"table\" == type(v) then\n                v = tclone(v)\n                \n                if t[k] and #t[k] == 0 then\n                    t[k] = tmerge(t[k], v)\n                else\n                    t[k] = v\n                end\n            else\n                t[k] = v\n            end\n        end\n    end\n    \n    return t\nend\n\nlocal function SetRegionSize(r, w, h)\n    r:SetRegionWidth(w)\n    r:SetRegionHeight(h)\nend\n\nlocal function ResizeAnchorFrame()\n    local config = LWA.GetConfig()\n    local h = 0\n    local cr = WeakAuras.GetRegion(CORE_GROUP)\n    \n    if cr and cr:IsVisible() then\n        h = cr:GetHeight()\n        \n        if config.primary.resources_position == 1 then -- Above\n            h = h + config.primary.spacing + LWA.RESOURCES_HEIGHT\n        end\n    end\n    \n    SetRegionSize(LWA.env.region, LWA.MAX_WIDTH, max(1, h, config.primary.height + config.primary.spacing + LWA.RESOURCES_HEIGHT))\nend\n\nfunction LWA.GetConfig(grp, force)\n    local default = {\n        style = {\n            border_size = 0,\n            border_color = { [1] = 0, [2] = 0, [3] = 0, [4] = 1 },\n            apply_border = true,\n            zoom = 30,\n        },\n        primary = {\n            nb = 6,\n            width = 48,\n            height = 48,\n            spacing = 0,\n            resources_position = 2, -- Below\n        },\n        secondary = {\n            width = 32,\n            height = 32,\n            spacing = 0,\n        },\n        dynamic = {\n            width = 32,\n            height = 32,\n            spacing = 0,\n            margin = 0,\n        },\n        side = {\n            width = 32,\n            height = 32,\n            spacing = 0,\n            margin = 0,\n            grow_horizontal = 0,\n        },\n        maintenance = {\n            width = 32,\n            height = 32,\n            spacing = 0,\n            margin = 0,\n        },\n        ooc_alpha = {\n            alpha = 1,\n            ignore_enemy = true,\n            ignore_friendly = true,\n        },\n        resources = {\n            health_bar = {\n                format = 1\n            },\n            mana_bar = {\n                format = 1\n            }\n        },\n    }\n    \n    if force or not LWA.config or WeakAuras.IsOptionsOpen() then\n        LWA.config = tmerge(\n            default,\n            LWA.configs[\"general\"],\n            LWA.configs[\"class\"] or {}\n        )\n    end\n    \n    if grp then\n        return LWA.config[grp] or {}\n    end\n    \n    return LWA.config\nend\n\nfunction LWA.Init()\n    local config = LWA.GetConfig(nil, true)\n    local isOptionsOpen = WeakAuras.IsOptionsOpen()\n    local zoom = config.style.zoom / 100\n    local missingData = false\n    \n    LWA.MAX_WIDTH = max(4, config.primary.nb) * (config.primary.width + config.primary.spacing) - config.primary.spacing\n    \n    local function InitIcons(group, c, selfPoint)\n        local grpRegion = WeakAuras.GetRegion(group)\n        \n        if missingData or not grpRegion then\n            missingData = true\n            return\n        end\n        \n        local i, isAbilities = 0, CORE_GROUP == group\n        \n        for childId, regions in pairs(grpRegion.controlledChildren) do\n            local region = regions[\"\"] and regions[\"\"].regionData.region\n            \n            i = i + 1\n            \n            if region then\n                region:SetAnchor(selfPoint, region.relativeTo, region.relativePoint)\n                --region:ClearAllPoints()\n                --region:SetPoint(selfPoint)\n                \n                if region.SetZoom then\n                    region:SetZoom(zoom)\n                else\n                    print(\"LWA Issue: \" .. CLASS .. \" > \" .. group .. \" > \" .. childId)\n                end\n                \n                if isAbilities and i > config.primary.nb then\n                    SetRegionSize(region, config.secondary.width, config.secondary.height)\n                else\n                    SetRegionSize(region, c.width, c.height)\n                end\n                \n                LWA.UpdateBorder(region)\n            end\n        end\n    end\n    \n    InitIcons(CORE_GROUP, config.primary, \"TOP\")\n    InitIcons(LEFT_SIDE_GROUP, config.side, \"TOPRIGHT\")\n    InitIcons(RIGHT_SIDE_GROUP, config.side, \"TOPLEFT\")\n    InitIcons(MAINTENANCE_GROUP, config.maintenance, \"TOP\")\n    InitIcons(DYNAMIC_EFFECTS_GROUP, config.dynamic, \"BOTTOMLEFT\")\n    InitIcons(DYNAMIC_SPELLS_GROUP, config.dynamic, \"BOTTOMRIGHT\")\n    \n    if missingData then return end\n    \n    LWA.UpdateResources()\n    \n    WeakAuras.GetRegion(DYNAMIC_EFFECTS_GROUP):DoPositionChildren()\n    WeakAuras.GetRegion(DYNAMIC_SPELLS_GROUP):DoPositionChildren()\n    WeakAuras.GetRegion(LEFT_SIDE_GROUP):DoPositionChildren()\n    WeakAuras.GetRegion(RIGHT_SIDE_GROUP):DoPositionChildren()\n    \n    LWA.OptionsClosedCheck()\nend\n\nfunction LWA.UpdateResources()\n    local config = LWA.GetConfig()\n    \n    local totalHeight, nb = 0, 0\n    local h1 = config.primary.height\n    local s1 = config.primary.spacing\n    local y = 0\n    \n    LWA.RESOURCES_HEIGHT = 0\n    \n    local grpRegion = WeakAuras.GetRegion(RESOURCES_GROUP)\n    local nbResources = #LWA.resources or 0\n    \n    if grpRegion and nbResources > 0 then\n        if config.primary.resources_position == 2 then\n            y = h1 + s1\n        end\n        \n        grpRegion:SetOffset(0, -y)\n        \n        local isOptionsOpen = WeakAuras.IsOptionsOpen()\n        \n        local resData, resRegion, isVisible, regionType\n        local w, h = 0, 0\n        \n        local function InitResource(region, index, nb)\n            if not region then return end\n            \n            index = max(1, index or 1)\n            nb = max(1, nb or 1)\n            \n            w, h = LWA.MAX_WIDTH, 20\n            \n            if nb > 1 then\n                local s = config.primary.spacing\n                \n                w = (w + s) / nb - s\n            end\n            \n            local cg = region.configGroup\n            \n            if cg and config.resources[cg] then\n                h = config.resources[cg].height or 20\n            end\n            \n            SetRegionSize(region, w, h)\n            LWA.UpdateBorder(region, true)\n            LWA.UpdateBar({ region = region }, index, nb)\n            \n            if region.bar.spark then\n                region.bar.spark:SetHeight(Round(h * 1.5))\n            end\n        end\n        \n        y = 0\n        \n        for _, resId in ipairs(LWA.resources) do\n            resRegion = WeakAuras.GetRegion(resId)\n            \n            if resRegion then\n                isVisible = isOptionsOpen or resRegion:IsVisible()\n                regionType = resRegion.regionType\n                h = 0\n                \n                if \"aurabar\" == regionType then\n                    InitResource(resRegion)\n                    \n                elseif \"dynamicgroup\" == regionType then\n                    local nbChild = 0\n                    local childRegions = {}\n                    \n                    for _, region in pairs(resRegion.controlledChildren) do\n                        if region and region[\"\"] then\n                            nbChild = nbChild + 1\n                            \n                            childRegions[region[\"\"].regionData.dataIndex] = region[\"\"].regionData.region\n                        end\n                    end\n                    \n                    if not isOptionsOpen and childRegions[1] then\n                        isVisible = childRegions[1]:IsVisible()\n                    end\n                    \n                    for i, region in ipairs(childRegions) do\n                        InitResource(region, i, nbChild)\n                        \n                        region:SetYOffset(-y)\n                    end\n                end\n                \n                if isVisible then\n                    nb = nb + 1\n                    \n                    if isVisible then\n                        if \"dynamicgroup\" == regionType then\n                            resRegion:DoPositionChildren()\n                        else\n                            resRegion:SetOffset(0, -y)\n                        end\n                    end\n                    \n                    totalHeight = totalHeight + h\n                    y = y + h + s1\n                end\n            end\n        end\n        \n        LWA.RESOURCES_HEIGHT = totalHeight + max(nb - 1, 0) * config.primary.spacing\n    end\n    \n    grpRegion = WeakAuras.GetRegion(CORE_GROUP)\n    \n    if grpRegion then\n        grpRegion:DoPositionChildren()\n    end\n    \n    ResizeAnchorFrame()\n    \n    grpRegion = WeakAuras.GetRegion(MAINTENANCE_GROUP)\n    \n    if grpRegion then\n        grpRegion:DoPositionChildren()\n    end\n    \n    C_Timer.After(0.1, ResizeAnchorFrame)\nend\n\nfunction LWA.GrowCore(newPositions, activeRegions)\n    local nb = #activeRegions\n    \n    if nb <= 0 then\n        C_Timer.After(0.125, ResizeAnchorFrame)\n        \n        return\n    end\n    \n    local config = LWA.GetConfig()\n    \n    local w1 = config.primary.width\n    local h1 = config.primary.height\n    local s1 = config.primary.spacing\n    \n    \n    local maxPrimary = min(nb, config.primary.nb)\n    local x, y\n    local xOffset = ((maxPrimary - 1) * (w1 + s1) / 2)\n    local yOffset = 0\n    \n    if config.primary.resources_position == 1 then  -- Above\n        yOffset = LWA.RESOURCES_HEIGHT + s1\n    end\n    \n    for i, regionData in ipairs(activeRegions) do\n        x = (i - 1) * (w1 + s1) - xOffset\n        y = -yOffset\n        \n        SetRegionSize(regionData.region, w1, h1)\n        \n        newPositions[i] = { x, y }\n        \n        if i == maxPrimary then break end\n    end\n    \n    local maxSecondary = nb - maxPrimary\n    \n    if maxSecondary > 0 then\n        local w2 = config.secondary.width\n        local h2 = config.secondary.height\n        local s2 = config.secondary.spacing\n        \n        local nbPerRow = math.floor((LWA.MAX_WIDTH + s2) / (w2 + s2)) or 1\n        local yOffset = yOffset + h1 - h2 + max(s1, s2) - s2\n        local i2, m\n        \n        if config.primary.resources_position == 2 then -- Below\n            yOffset = yOffset + LWA.RESOURCES_HEIGHT + s1\n        end\n        \n        for i, regionData in ipairs(activeRegions) do\n            if i > maxPrimary then\n                i2 = i - maxPrimary\n                m = (i2 % nbPerRow)\n                \n                if m == 1 then\n                    xOffset = (min(maxSecondary - i + maxPrimary, nbPerRow - 1)) * (w2 + s2) / 2\n                    yOffset = yOffset + h2 + s2\n                end\n                \n                if m == 0 then\n                    m = nbPerRow\n                end\n                \n                x = (m - 1) * (w2 + s2) - xOffset\n                y = -yOffset\n                \n                SetRegionSize(regionData.region, w2, h2)\n                \n                newPositions[i] = { x, y }\n            end\n        end\n    end\n    \n    C_Timer.After(0.125, ResizeAnchorFrame)\nend\n\nfunction LWA.GrowDynamicEffects(newPositions, activeRegions)\n    local nb = #activeRegions\n    \n    if nb <= 0 then return end\n    \n    local config = LWA.GetConfig()\n    \n    local w = config.dynamic.width\n    local h = config.dynamic.height\n    local s1 = config.primary.spacing\n    local s2 = config.dynamic.spacing\n    \n    local xOffset = 0\n    local yOffset = config.dynamic.margin + max(s1, s2) - s2 - h\n    local nbPerRow, m = math.floor(((LWA.MAX_WIDTH / 2) + s2) / (w + s2)) or 1\n    \n    for i, regionData in ipairs(activeRegions) do\n        m = (i % nbPerRow)\n        \n        if m == 1 then\n            xOffset = 0\n            yOffset = yOffset + h + s2\n        end\n        \n        if m == 0 then\n            m = nbPerRow\n        end\n        \n        newPositions[i] = { xOffset, yOffset }\n        \n        xOffset = xOffset + w + s2\n    end\nend\n\nfunction LWA.GrowDynamicSpells(newPositions, activeRegions)\n    local nb = #activeRegions\n    \n    if nb <= 0 then return end\n    \n    local config = LWA.GetConfig()\n    \n    local w = config.dynamic.width\n    local h = config.dynamic.height\n    local s1 = config.primary.spacing\n    local s2 = config.dynamic.spacing\n    \n    local xOffset = 0\n    local yOffset = config.dynamic.margin + max(s1, s2) - s2 - h\n    local nbPerRow, m = math.floor(((LWA.MAX_WIDTH / 2) + s2) / (w + s2)) or 1\n    \n    for i, regionData in ipairs(activeRegions) do\n        m = (i % nbPerRow)\n        \n        if m == 1 then\n            xOffset = 0\n            yOffset = yOffset + h + s2\n        end\n        \n        if m == 0 then\n            m = nbPerRow\n        end\n        \n        newPositions[i] = { -xOffset, yOffset }\n        \n        xOffset = xOffset + w + s2\n    end\nend\n\nfunction LWA.GrowLeftSide(newPositions, activeRegions)\n    local nb = #activeRegions\n    \n    if nb <= 0 then return end\n    \n    local config = LWA.GetConfig()\n    \n    local w1 = config.primary.width\n    local h1 = config.primary.height\n    local s1 = config.primary.spacing\n    \n    local w2 = config.side.width\n    local h2 = config.side.height\n    local s2 = config.side.spacing\n    \n    local x, y\n    local xOffset = config.side.margin + max(s1, s2)\n    local yOffset = 0\n    \n    for i, regionData in ipairs(activeRegions) do\n        x = -xOffset\n        y = -yOffset\n        \n        newPositions[i] = { x, y }\n        \n        if config.side.grow_horizontal then\n            xOffset = xOffset + w2 + s2\n        else\n            yOffset = yOffset + h2 + s2\n        end\n    end\nend\n\nfunction LWA.GrowRightSide(newPositions, activeRegions)\n    local nb = #activeRegions\n    \n    if nb <= 0 then return end\n    \n    local config = LWA.GetConfig()\n    \n    local w1 = config.primary.width\n    local h1 = config.primary.height\n    local s1 = config.primary.spacing\n    \n    local w2 = config.side.width\n    local h2 = config.side.height\n    local s2 = config.side.spacing\n    \n    local x, y\n    local xOffset = config.side.margin + max(s1, s2)\n    local yOffset = 0\n    \n    for i, regionData in ipairs(activeRegions) do\n        x = xOffset\n        y = -yOffset\n        \n        newPositions[i] = { x, y }\n        \n        if config.side.grow_horizontal then\n            xOffset = xOffset + w2 + s2\n        else\n            yOffset = yOffset + h2 + s2\n        end\n    end\nend\n\nfunction LWA.GrowMaintenance(newPositions, activeRegions)\n    local nb = #activeRegions\n    \n    if nb <= 0 then return end\n    \n    local config = LWA.GetConfig()\n    \n    local maxPrimary = min(nb, config.primary.nb)\n    \n    local w1 = config.primary.width\n    local h1 = config.primary.height\n    local s1 = config.primary.spacing\n    \n    local w2 = config.maintenance.width\n    local h2 = config.maintenance.height\n    local s2 = config.maintenance.spacing\n    \n    local x, y\n    local xOffset = (maxPrimary - 1) * (w1 + s1) / 2\n    local yOffset = config.maintenance.margin + max(s1, s2) - s2 - h2\n    \n    local nbPerRow = math.floor((LWA.MAX_WIDTH + s2) / (w2 + s2)) or 1\n    local m\n    \n    for i, regionData in ipairs(activeRegions) do\n        m = (i % nbPerRow)\n        \n        if m == 1 then\n            xOffset = (min(nb - i, nbPerRow - 1)) * (w2 + s2) / 2\n            yOffset = yOffset + h2 + s2\n        end\n        \n        if m == 0 then\n            m = nbPerRow\n        end\n        \n        x = (m - 1) * (w2 + s2) - xOffset\n        y = -yOffset\n        \n        newPositions[i] = { x, y }\n    end\nend\n\nfunction LWA.UpdateBorder(region, isBar)\n    if #region.subRegions > 0 then\n        local config, size, r, g, b, a = LWA.GetConfig(), 0\n        \n        if not isBar or (isBar and config.style.apply_border) then\n            size = config.style.border_size\n            r, g, b, a = unpack(config.style.border_color)\n        end\n        \n        for _, border in ipairs(region.subRegions) do\n            if \"subborder\" == border.type then\n                border:SetVisible(size > 0)\n                \n                if size > 0 then\n                    local bd = border:GetBackdrop()\n                    bd.edgeSize = size\n                    border:SetBackdrop(bd)\n                    border:SetBorderColor(r, g, b, a)\n                end\n            end\n        end\n    end\nend\n\nlocal function MixRGB(c1, c2, pos)\n    pos = 1 - (pos or 0.5)\n    \n    local r, g, b, a\n    \n    r = (c1[1] * pos) + (c2[1] * (1 - pos))\n    g = (c1[2] * pos) + (c2[2] * (1 - pos))\n    b = (c1[3] * pos) + (c2[3] * (1 - pos))\n    a = (c1[4] * pos) + (c2[4] * (1 - pos))\n    \n    return {\n        r,\n        g,\n        b,\n        a\n    }\nend\n\nfunction LWA.UpdateBar(aura, i, nb)\n    local config = LWA.GetConfig(\"resources\")\n    local e = aura or aura_env\n    local region = e.region\n    local cg = region.configGroup\n    \n    if not (region and cg and config[cg]) then\n        return\n    end\n    \n    cg = config[cg]\n    \n    local cs = region.colorState or \"\"\n    \n    if cs ~= \"\" then\n        cs = cs .. \"_\"\n    end\n    \n    i = (i or 1) - (region.colorOffset or 0)\n    nb = min(region.colorMax or 99, nb or 1)\n    \n    local c1, c2 = cg[cs .. \"color1\"], cg[cs .. \"color2\"]\n    local bar = region.bar\n    \n    if cg[cs .. \"gradient\"] and cg[cs .. \"gradient\"] < 3 then\n        if not bar.gradient then\n            bar.gradient = bar:CreateTexture()\n            bar.gradient:SetAllPoints(bar.bg)\n\n            local mask = bar:CreateMaskTexture()\n            mask:SetTexture([[Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_FullWhite]], \"CLAMPTOBLACKADDITIVE\", \"CLAMPTOBLACKADDITIVE\", \"NEAREST\")\n            mask:SetAllPoints(bar.fg)\n\n            bar.gradient:AddMaskTexture(mask)\n        end\n        \n        bar.gradient:SetTexture(bar:GetTexture())\n        \n        if nb > 1 then\n            local cc1, cc2 = c1, c2\n            \n            if i > 1 then\n                c1 = MixRGB(cc1, cc2, (i - 1) / nb)\n            end\n            \n            c2 = MixRGB(cc1, cc2, i / nb)\n        end\n        \n        local orientation = \"HORIZONTAL\"\n        \n        if cg[cs .. \"gradient\"] == 2 then\n            orientation = \"VERTICAL\"\n        end\n        \n        if bar.gradient.SetGradientAlpha then\n            bar.gradient:SetGradientAlpha(orientation, c1[1], c1[2], c1[3], c1[4], c2[1], c2[2], c2[3], c2[4])\n        else\n            bar.gradient:SetGradient(orientation, CreateColor(c1[1], c1[2], c1[3], c1[4]), CreateColor(c2[1], c2[2], c2[3], c2[4]))\n        end\n        \n        bar.gradient:SetAlpha(1)\n        bar.fg:SetAlpha(0)\n    else\n        bar:SetForegroundColor(unpack(c1))\n        bar.fg:SetAlpha(1)\n        \n        if bar.gradient then\n            bar.gradient:SetAlpha(0)\n        end\n    end\nend\n\nfunction LWA.GrowDynamicResource(newPositions, activeRegions, resourceType)\n    local nb = #activeRegions\n    \n    if nb <= 0 then return end\n    \n    local config = LWA.GetConfig()\n    \n    local s = config.primary.spacing\n    \n    local w, h = (LWA.MAX_WIDTH + s) / nb\n    local x, xOffset = 0, (LWA.MAX_WIDTH - w + s) / 2\n    \n    for i, regionData in ipairs(activeRegions) do\n        x = (i - 1) * w - xOffset\n        \n        regionData.region:SetRegionWidth(w - s)\n        \n        newPositions[i] = { x, 0 }\n    end\nend\n\nlocal function round(num, decimals)\n    local mult = 10^(decimals or 0)\n    \n    return Round(num * mult) / mult\nend\n\nlocal barFormats = {\n    \"value\",\n    \"kvalue\",\n    \"value (percent%)\",\n    \"kvalue (percent%)\",\n    \"percent%\",\n}\n\nfunction LWA.UpdateBarText(value, percent, format)\n    local text = barFormats[format] or \"value\"\n    \n    text = text:gsub(\"percent\", round(percent, 0))\n    \n    if 2 == format or 4 == format then\n        local rem = math.fmod(value, 1000) or 0\n        \n        if rem >= 950 then\n            rem = 0\n        end\n        \n        text = text:gsub(\"kvalue\", FormatLargeNumber(Round((value - rem) / 1000)) .. \".\" .. Round(rem / 100) .. \"K\"):gsub(\"%.0K\", \"K\"):gsub(\"%.\", DECIMAL_SEPERATOR)\n    else\n        text = text:gsub(\"value\", value)\n    end\n    \n    return text\nend\n\nlocal optionsCloseHandler = nil\n\nfunction LWA.OptionsClosedCheck()\n    if optionsCloseHandler then\n        optionsCloseHandler:Cancel()\n        optionsCloseHandler = nil\n    end\n    \n    if WeakAuras.IsOptionsOpen() then\n        optionsCloseHandler = C_Timer.NewTimer(0.1, LWA.OptionsClosedCheck)\n    else\n        C_Timer.After(0.1, LWA.UpdateResources)\n    end\nend",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["conditions"] = {
			},
			["cooldown"] = false,
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
		["Insect Swarm"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["parent"] = "Core - Druid",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["showClones"] = false,
						["type"] = "aura2",
						["auranames"] = {
							"5570", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["event"] = "Health",
						["unit"] = "target",
						["unitExists"] = true,
						["ownOnly"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useName"] = true,
						["debuffType"] = "HELPFUL",
						["auraspellids"] = {
							"33891", -- [1]
						},
						["use_genericShowOn"] = true,
						["matchesShowOn"] = "showOnMissing",
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["auranames"] = {
							"768", -- [1]
							"5487", -- [2]
							"9634", -- [3]
						},
						["type"] = "aura2",
						["useExactSpellId"] = true,
						["use_track"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
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
				["use_class"] = true,
				["race"] = {
				},
				["use_spellknown"] = true,
				["use_spec"] = true,
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["spellknown"] = 5570,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["uid"] = "n7QQ0FXtrPs",
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
				},
				["finish"] = {
				},
			},
			["regionType"] = "icon",
			["zoom"] = 0.3,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["cooldownEdge"] = true,
			["auto"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Insect Swarm",
			["useCooldownModRate"] = true,
			["alpha"] = 1,
			["width"] = 48,
			["xOffset"] = 0,
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 1,
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
							["value"] = false,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["value"] = "0",
								["op"] = "==",
								["variable"] = "matchCount",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5, -- [4]
							},
							["property"] = "color",
						}, -- [2]
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
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [3]
			},
			["cooldown"] = true,
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
		["Faerie Fire (Feral)"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["parent"] = "Dynamic Spells - Druid",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 16857,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["realSpellName"] = "精灵之火（野性）",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
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
				["use_class"] = true,
				["race"] = {
				},
				["use_spellknown"] = true,
				["use_spec"] = true,
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["spellknown"] = 16857,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["uid"] = "QH7uttrNRUi",
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
				},
				["finish"] = {
				},
			},
			["regionType"] = "icon",
			["zoom"] = 0.3,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["cooldownEdge"] = false,
			["auto"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Faerie Fire (Feral)",
			["useCooldownModRate"] = true,
			["alpha"] = 1,
			["width"] = 48,
			["xOffset"] = 0,
			["config"] = {
			},
			["inverse"] = true,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
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
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "slidebottom",
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
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["Right Side - Druid"] = {
			["grow"] = "CUSTOM",
			["controlledChildren"] = {
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "Ner0rxotC",
			["parent"] = "Luxthos - Druid",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "TOPRIGHT",
			["fullCircle"] = true,
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 2,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
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
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["radius"] = 200,
			["gridType"] = "RD",
			["selfPoint"] = "TOPLEFT",
			["align"] = "CENTER",
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
			["desc"] = "Made by Luxthos - twitch.tv/luxthos",
			["stagger"] = 0,
			["useLimit"] = false,
			["version"] = 20,
			["subRegions"] = {
			},
			["internalVersion"] = 53,
			["config"] = {
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
			["sortHybridTable"] = {
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["uid"] = "phQEpHoOa(0",
			["source"] = "import",
			["customGrow"] = "function(newPositions, activeRegions)\n    if LWA and LWA.GrowRightSide then\n        LWA.GrowRightSide(newPositions, activeRegions)\n    end\nend",
			["scale"] = 1,
			["xOffset"] = -6.103515625e-05,
			["border"] = false,
			["anchorFrameFrame"] = "WeakAuras:General Options - Druid",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["limit"] = 5,
			["gridWidth"] = 5,
			["anchorFrameParent"] = false,
			["constantFactor"] = "RADIUS",
			["rowSpace"] = 1,
			["borderOffset"] = 4,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Right Side - Druid",
			["animate"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["borderEdge"] = "Square Full White",
			["borderInset"] = 1,
			["authorOptions"] = {
			},
			["arcLength"] = 360,
			["conditions"] = {
			},
			["information"] = {
			},
			["rotation"] = 0,
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
				["init"] = {
				},
				["finish"] = {
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
						["sourceFlags"] = "Mine",
						["use_sourceFlags"] = true,
						["use_cloneId"] = false,
						["use_spellSchool"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "combatlog",
						["subeventPrefix"] = "SPELL",
						["auraType"] = "BUFF",
						["subeventSuffix"] = "_AURA_REMOVED",
						["useExactSpellId"] = true,
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellName"] = false,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["auraspellids"] = {
							"48517", -- [1]
						},
						["duration"] = "15",
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
							"48517", -- [1]
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
						["realSpellName"] = 26985,
						["use_spellName"] = true,
						["spellName"] = 26985,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
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
					["text_text_format_p_time_mod_rate"] = true,
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
					["text_text_format_p_time_format"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
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
			["parent"] = "雷德王阿姨-日蚀月蚀提示+内置cd",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["icon"] = true,
			["xOffset"] = 0,
			["alpha"] = 1,
			["zoom"] = 0,
			["uid"] = "gMB1DBDCkGO",
			["tocversion"] = 30400,
			["id"] = "日蚀冷却",
			["width"] = 64,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["useCooldownModRate"] = true,
			["config"] = {
			},
			["inverse"] = false,
			["cooldownTextDisabled"] = false,
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
			["selfPoint"] = "CENTER",
		},
		["Frenzied Regeneration"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["parent"] = "Core - Druid",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["showClones"] = false,
						["type"] = "aura2",
						["auranames"] = {
							"22842", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["unit"] = "player",
						["unitExists"] = true,
						["ownOnly"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "spell",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["realSpellName"] = "狂暴回复",
						["use_spellName"] = true,
						["spellName"] = 22842,
						["event"] = "Cooldown Progress (Spell)",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
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
				["use_class"] = true,
				["race"] = {
				},
				["use_spellknown"] = true,
				["use_spec"] = true,
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["spellknown"] = 22842,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["uid"] = "ZnvhlBjZOHd",
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
				},
				["finish"] = {
				},
			},
			["regionType"] = "icon",
			["zoom"] = 0.3,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["cooldownEdge"] = false,
			["auto"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Frenzied Regeneration",
			["useCooldownModRate"] = true,
			["alpha"] = 1,
			["width"] = 48,
			["xOffset"] = 0,
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [2]
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
				}, -- [3]
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
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [5]
					},
				}, -- [4]
			},
			["cooldown"] = true,
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
		["Natural Perfection"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["parent"] = "Dynamic Effects - Druid",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["showClones"] = false,
						["type"] = "aura2",
						["auraspellids"] = {
							"146739", -- [1]
						},
						["useExactSpellId"] = false,
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["unit"] = "player",
						["unitExists"] = true,
						["auranames"] = {
							"45281", -- [1]
						},
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						0.88627450980392, -- [2]
						0.76862745098039, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_text_format_p_time_format"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_fontType"] = "OUTLINE",
					["text_text_format_p_time_precision"] = 1,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_anchorYOffset"] = -4,
				}, -- [4]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[35] = true,
						[98] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_talent"] = false,
				["use_class"] = true,
				["race"] = {
				},
				["size"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_spellknown"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["zoneIds"] = "",
			},
			["source"] = "import",
			["uid"] = "CWKA5taO1Wi",
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
				},
				["finish"] = {
				},
			},
			["regionType"] = "icon",
			["zoom"] = 0.3,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["cooldownEdge"] = true,
			["auto"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Natural Perfection",
			["useCooldownModRate"] = true,
			["alpha"] = 1,
			["width"] = 48,
			["xOffset"] = 0,
			["config"] = {
			},
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
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "slidebottom",
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
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["Rage Bar - Druid"] = {
			["sparkWidth"] = 10,
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["icon"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["names"] = {
						},
						["unevent"] = "auto",
						["use_unit"] = true,
						["duration"] = "1",
						["use_showCost"] = true,
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["powertype"] = 1,
						["spellIds"] = {
						},
						["unit"] = "player",
						["event"] = "Power",
						["subeventSuffix"] = "_CAST_START",
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useName"] = true,
						["debuffType"] = "HELPFUL",
						["auranames"] = {
							"5487", -- [1]
							"9634", -- [2]
						},
						["ownOnly"] = true,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["realSpellName"] = 192081,
						["use_spellName"] = true,
						["duration"] = "1",
						["unevent"] = "auto",
						["event"] = "Cooldown Progress (Spell)",
						["type"] = "aura2",
						["use_track"] = true,
						["spellName"] = 192081,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 53,
			["overlays"] = {
				{
					0, -- [1]
					0, -- [2]
					0, -- [3]
					0.40000003576279, -- [4]
				}, -- [1]
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
			["isPrimaryResource"] = true,
			["sparkOffsetX"] = 0,
			["barColor"] = {
				0.8, -- [1]
				0.13333333333333, -- [2]
				0.062745098039216, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["parent"] = "Resources - Druid",
			["actions"] = {
				["start"] = {
					["do_message"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.region.configGroup = \"rage_bar\"",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
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
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = true,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_fontType"] = "OUTLINE",
					["anchorXOffset"] = 0,
					["type"] = "subtext",
					["text_text_format_p_format"] = "timed",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_text_format_p_time_format"] = 0,
					["text_shadowYOffset"] = -1,
					["text_text_format_1.percentpower_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_CENTER",
					["anchorYOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
					["text_fontSize"] = 14,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
				}, -- [4]
			},
			["height"] = 20,
			["configGroup"] = "rage_bar",
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
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
				["pvptalent"] = {
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
					},
				},
				["zoneIds"] = "",
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["authorOptions"] = {
			},
			["source"] = "import",
			["selfPoint"] = "TOP",
			["config"] = {
			},
			["version"] = 20,
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["auto"] = true,
			["uid"] = "wzGOW8i)ajg",
			["icon_side"] = "RIGHT",
			["width"] = 405,
			["sparkHeight"] = 30,
			["texture"] = "Solid",
			["sparkHidden"] = "NEVER",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["tocversion"] = 30400,
			["id"] = "Rage Bar - Druid",
			["zoom"] = 0,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["overlayclip"] = true,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["semver"] = "2.0.17",
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.30000001192093, -- [4]
			},
		},
		["Rake"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["parent"] = "Core - Druid",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["showClones"] = false,
						["type"] = "aura2",
						["auranames"] = {
							"1822", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["event"] = "Health",
						["unit"] = "target",
						["unitExists"] = true,
						["ownOnly"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"768", -- [1]
						},
						["unit"] = "player",
						["ownOnly"] = true,
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
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
				["use_class"] = true,
				["race"] = {
				},
				["use_spellknown"] = true,
				["use_spec"] = true,
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["spellknown"] = 1822,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["uid"] = "t9XXcGKFB8e",
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
				},
				["finish"] = {
				},
			},
			["regionType"] = "icon",
			["zoom"] = 0.3,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["cooldownEdge"] = true,
			["auto"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Rake",
			["useCooldownModRate"] = true,
			["alpha"] = 1,
			["width"] = 48,
			["xOffset"] = 0,
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 1,
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
							["value"] = false,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["value"] = "0",
								["op"] = "==",
								["variable"] = "matchCount",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5, -- [4]
							},
							["property"] = "color",
						}, -- [2]
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
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [3]
			},
			["cooldown"] = true,
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
		["Rip"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["parent"] = "Core - Druid",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["showClones"] = false,
						["type"] = "aura2",
						["auranames"] = {
							"1079", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["event"] = "Health",
						["unit"] = "target",
						["unitExists"] = true,
						["ownOnly"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"768", -- [1]
						},
						["unit"] = "player",
						["ownOnly"] = true,
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
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
				["use_class"] = true,
				["race"] = {
				},
				["use_spellknown"] = true,
				["use_spec"] = true,
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["spellknown"] = 1079,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["uid"] = "ddkzXtcnE1c",
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
				},
				["finish"] = {
				},
			},
			["regionType"] = "icon",
			["zoom"] = 0.3,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["cooldownEdge"] = true,
			["auto"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Rip",
			["useCooldownModRate"] = true,
			["alpha"] = 1,
			["width"] = 48,
			["xOffset"] = 0,
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 1,
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
							["value"] = false,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["value"] = "0",
								["op"] = "==",
								["variable"] = "matchCount",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5, -- [4]
							},
							["property"] = "color",
						}, -- [2]
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
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [3]
			},
			["cooldown"] = true,
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
		["Starfall"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
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
						["type"] = "aura2",
						["auranames"] = {
							"53201", -- [1]
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
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["use_showgcd"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 53201,
						["realSpellName"] = "星辰坠落",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["class_and_spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["use_never"] = false,
				["spellknown"] = 53201,
				["zoneIds"] = "",
			},
			["width"] = 48,
			["source"] = "import",
			["auto"] = true,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["frameStrata"] = 1,
			["regionType"] = "icon",
			["displayIcon"] = "",
			["useTooltip"] = false,
			["xOffset"] = 0,
			["config"] = {
			},
			["useCooldownModRate"] = true,
			["parent"] = "Core - Druid",
			["zoom"] = 0.3,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Starfall",
			["cooldownTextDisabled"] = false,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "bZ6hv0iYQFf",
			["inverse"] = true,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [2]
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
				}, -- [3]
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
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [5]
					},
				}, -- [4]
			},
			["cooldown"] = true,
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
		["Maim"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
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
						["auranames"] = {
							"22570", -- [1]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "target",
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
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 22570,
						["realSpellName"] = "割碎",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["class_and_spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["use_never"] = false,
				["spellknown"] = 22570,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["displayIcon"] = "",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["cooldownTextDisabled"] = false,
			["width"] = 48,
			["useCooldownModRate"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Maim",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "2.0.17",
			["uid"] = "EKazP6dlf(Q",
			["inverse"] = true,
			["parent"] = "Dynamic Spells - Druid",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [2]
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
				}, -- [3]
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
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [5]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "slidebottom",
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
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["Berserk"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
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
						["type"] = "aura2",
						["auranames"] = {
							"50334", -- [1]
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
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["use_showgcd"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 50334,
						["realSpellName"] = "狂暴",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["class_and_spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["use_never"] = false,
				["spellknown"] = 50334,
				["zoneIds"] = "",
			},
			["width"] = 48,
			["source"] = "import",
			["auto"] = true,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["frameStrata"] = 1,
			["regionType"] = "icon",
			["displayIcon"] = "",
			["useTooltip"] = false,
			["xOffset"] = 0,
			["config"] = {
			},
			["useCooldownModRate"] = true,
			["parent"] = "Core - Druid",
			["zoom"] = 0.3,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Berserk",
			["cooldownTextDisabled"] = false,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "Knlzhqrqegs",
			["inverse"] = true,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [2]
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
				}, -- [3]
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
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [5]
					},
				}, -- [4]
			},
			["cooldown"] = true,
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
		["Barkskin"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["match_countOperator"] = ">",
						["auranames"] = {
							"22812", -- [1]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["useName"] = true,
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["match_count"] = "0",
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
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["use_showgcd"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 22812,
						["realSpellName"] = "树皮术",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["class_and_spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["use_never"] = false,
				["spellknown"] = 22812,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["displayIcon"] = "",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["cooldownTextDisabled"] = false,
			["width"] = 48,
			["useCooldownModRate"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Barkskin",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "2.0.17",
			["uid"] = "zVHTa0vtfqJ",
			["inverse"] = true,
			["parent"] = "Core - Druid",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [2]
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
				}, -- [3]
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
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [5]
					},
				}, -- [4]
			},
			["cooldown"] = true,
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
		["Health Bar - Druid"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["wagoID"] = "Ner0rxotC",
			["parent"] = "Resources - Druid",
			["preferToUpdate"] = false,
			["customText"] = "function()\n    local s = aura_env.state  \n    \n    if LWA and LWA.UpdateBarText then\n        local format = LWA.GetConfig(\"resources\").health_bar.format\n        \n        return LWA.UpdateBarText(s.value, s.percenthealth, format)\n    end\n    \n    return s.value\nend\n\n",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["width"] = 405,
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.30000001192093, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["names"] = {
						},
						["unevent"] = "auto",
						["use_unit"] = true,
						["duration"] = "1",
						["use_showCost"] = true,
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["powertype"] = 0,
						["spellIds"] = {
						},
						["unit"] = "player",
						["event"] = "Health",
						["subeventSuffix"] = "_CAST_START",
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["configGroup"] = "health_bar",
			["overlays"] = {
				{
					0, -- [1]
					0, -- [2]
					0, -- [3]
					0.40000003576279, -- [4]
				}, -- [1]
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
			["isPrimaryResource"] = true,
			["iconSource"] = -1,
			["barColor"] = {
				0.34509803921569, -- [1]
				0.64313725490196, -- [2]
				0.28235294117647, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["xOffset"] = 0,
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_message"] = false,
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.region.configGroup = \"health_bar\"\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
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
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
				}, -- [3]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%c",
					["text_text_format_p_time_format"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["anchorXOffset"] = 0,
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_format"] = "timed",
					["text_text_format_c_format"] = "none",
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_visible"] = true,
					["text_text_format_p_time_mod_rate"] = true,
					["anchorYOffset"] = 0,
					["type"] = "subtext",
					["text_text_format_percenthealth_round_type"] = "floor",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_text_format_percenthealth_decimal_precision"] = 0,
					["text_shadowYOffset"] = -1,
					["text_text_format_1.percentpower_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_CENTER",
					["text_shadowXOffset"] = 1,
					["text_text_format_p_time_legacy_floor"] = true,
					["text_fontSize"] = 14,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_percenthealth_format"] = "Number",
				}, -- [4]
			},
			["height"] = 20,
			["internalVersion"] = 53,
			["load"] = {
				["use_class"] = true,
				["use_petbattle"] = false,
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["selfPoint"] = "TOP",
			["source"] = "import",
			["authorOptions"] = {
			},
			["version"] = 20,
			["config"] = {
			},
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["icon"] = false,
			["uid"] = "FTJebp3h4F3",
			["icon_side"] = "RIGHT",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["overlayclip"] = true,
			["texture"] = "Solid",
			["alpha"] = 1,
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 30400,
			["sparkHidden"] = "NEVER",
			["id"] = "Health Bar - Druid",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["sparkHeight"] = 30,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["semver"] = "2.0.17",
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["spark"] = false,
		},
		["Survival Instincts"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["match_countOperator"] = ">",
						["names"] = {
						},
						["event"] = "Health",
						["unit"] = "player",
						["type"] = "aura2",
						["useName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["match_count"] = "0",
						["subeventSuffix"] = "_CAST_START",
						["auranames"] = {
							"61336", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 61336,
						["realSpellName"] = "生存本能",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["class_and_spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["use_never"] = false,
				["spellknown"] = 61336,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["displayIcon"] = "",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["cooldownTextDisabled"] = false,
			["width"] = 48,
			["useCooldownModRate"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Survival Instincts",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "2.0.17",
			["uid"] = "hY154tVzEsO",
			["inverse"] = true,
			["parent"] = "Core - Druid",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [2]
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
				}, -- [3]
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
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [5]
					},
				}, -- [4]
			},
			["cooldown"] = true,
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
		["Rejuvenation"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["parent"] = "Core - Druid",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["showClones"] = false,
						["type"] = "aura2",
						["auranames"] = {
							"774", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["event"] = "Health",
						["unit"] = "player",
						["unitExists"] = true,
						["ownOnly"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useName"] = true,
						["debuffType"] = "HELPFUL",
						["auranames"] = {
							"33891", -- [1]
						},
						["type"] = "aura2",
						["matchesShowOn"] = "showOnActive",
						["ownOnly"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["useName"] = true,
						["debuffType"] = "HELPFUL",
						["auranames"] = {
							"768", -- [1]
							"5487", -- [2]
							"9634", -- [3]
						},
						["type"] = "aura2",
						["matchesShowOn"] = "showOnMissing",
						["ownOnly"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["genericShowOn"] = "showOnCooldown",
						["talent"] = {
							["single"] = 95,
						},
						["use_genericShowOn"] = true,
						["use_inverse"] = false,
						["event"] = "Talent Known",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["ownOnly"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "player",
						["use_unit"] = true,
						["use_track"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["genericShowOn"] = "showOnCooldown",
						["talent"] = {
							["single"] = 11,
						},
						["use_genericShowOn"] = true,
						["use_inverse"] = false,
						["event"] = "Talent Known",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["ownOnly"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "player",
						["use_unit"] = true,
						["use_track"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [5]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    if t[4] then -- know Swiftmend (Restoration)\n        return t[2] -- in Tree Form\n    elseif t[5] then -- know Moonkin Form (Balance)\n        return false\n    else\n        return t[3] -- not in Cat or Bear Form\n    end\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
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
				["use_class"] = true,
				["race"] = {
				},
				["use_spellknown"] = true,
				["use_spec"] = true,
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["spellknown"] = 774,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["uid"] = "LTA2xmmpOre",
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
				},
				["finish"] = {
				},
			},
			["regionType"] = "icon",
			["zoom"] = 0.3,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["cooldownEdge"] = true,
			["auto"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Rejuvenation",
			["useCooldownModRate"] = true,
			["alpha"] = 1,
			["width"] = 48,
			["xOffset"] = 0,
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 1,
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
							["value"] = false,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["value"] = "0",
								["op"] = "==",
								["variable"] = "matchCount",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5, -- [4]
							},
							["property"] = "color",
						}, -- [2]
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
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [3]
			},
			["cooldown"] = true,
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
		["Eclipse (Solar)"] = {
			["iconSource"] = 0,
			["wagoID"] = "Ner0rxotC",
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
						["type"] = "aura2",
						["auranames"] = {
							"48517", -- [1]
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
						["track"] = "auto",
						["spellId"] = "48518",
						["use_matchedRune"] = false,
						["duration"] = "30",
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_showgcd"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "combatlog",
						["use_spellName"] = false,
						["subeventSuffix"] = "_AURA_APPLIED",
						["sourceUnit"] = "player",
						["names"] = {
						},
						["event"] = "Combat Log",
						["use_genericShowOn"] = true,
						["realSpellName"] = 0,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["spellName"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["use_percenthealth"] = true,
						["event"] = "Conditions",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"768", -- [1]
							"5487", -- [2]
							"9634", -- [3]
						},
						["unit"] = "player",
						["matchesShowOn"] = "showOnMissing",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\nreturn t[4]\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["class_and_spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
						[22] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_talent"] = false,
				["use_class"] = true,
				["use_spellknown"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["use_never"] = false,
				["spellknown"] = 3674,
				["zoneIds"] = "",
			},
			["width"] = 48,
			["source"] = "import",
			["auto"] = true,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["frameStrata"] = 1,
			["regionType"] = "icon",
			["displayIcon"] = 136006,
			["useTooltip"] = false,
			["xOffset"] = 0,
			["config"] = {
			},
			["useCooldownModRate"] = true,
			["parent"] = "Core - Druid",
			["zoom"] = 0.3,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Eclipse (Solar)",
			["cooldownTextDisabled"] = false,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "9NMwOCgNnDD",
			["inverse"] = true,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
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
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["property"] = "color",
						}, -- [5]
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [6]
					},
				}, -- [2]
			},
			["cooldown"] = true,
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
		["Cast Bar - Druid"] = {
			["sparkWidth"] = 10,
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["overlays"] = {
				{
					1, -- [1]
					0.70196078431373, -- [2]
					0.23137254901961, -- [3]
					1, -- [4]
				}, -- [1]
			},
			["sparkOffsetX"] = 0,
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["icon"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["use_showLatency"] = false,
						["use_inverse"] = false,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["powertype"] = 6,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["event"] = "Cast",
						["duration"] = "1",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
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
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["event"] = "Conditions",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "custom",
						["use_eventtype"] = true,
						["event"] = "Chat Message",
						["unit"] = "player",
						["events"] = "PLAYER_ENTERING_WORLD",
						["debuffType"] = "HELPFUL",
						["custom"] = "function()\n    CastingBarFrame:UnregisterAllEvents()\nend",
						["use_unit"] = true,
						["custom_type"] = "event",
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["configGroup"] = "cast_bar",
			["parent"] = "Resources - Druid",
			["selfPoint"] = "TOP",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.region.configGroup = \"cast_bar\"\n\nLWA = LWA or { UpdateBar = function() end }",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["internalVersion"] = 53,
			["sparkMirror"] = false,
			["desc"] = "Made by Luxthos - twitch.tv/luxthos",
			["authorOptions"] = {
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
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = true,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_fontType"] = "OUTLINE",
					["type"] = "subtext",
					["anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_text_format_p_time_format"] = 0,
					["text_shadowYOffset"] = -1,
					["text_text_format_p_time_precision"] = 1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_RIGHT",
					["anchorYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fontSize"] = 13,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_format"] = "timed",
				}, -- [4]
				{
					["text_text_format_n_format"] = "none",
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
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_visible"] = true,
					["text_fontSize"] = 13,
					["anchorXOffset"] = 0,
					["text_shadowXOffset"] = 1,
				}, -- [5]
			},
			["height"] = 20,
			["desaturate"] = false,
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
				["use_class"] = true,
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["race"] = {
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["WARLOCK"] = true,
					},
				},
				["zoneIds"] = "",
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["barColor"] = {
				0.71372549019608, -- [1]
				0.16078431372549, -- [2]
				0.16078431372549, -- [3]
				1, -- [4]
			},
			["source"] = "import",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.30000001192093, -- [4]
			},
			["version"] = 20,
			["config"] = {
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["uid"] = "1)0XcdXf9hJ",
			["width"] = 405,
			["icon_side"] = "LEFT",
			["frameStrata"] = 1,
			["sparkHeight"] = 20,
			["texture"] = "Solid",
			["overlaysTexture"] = {
				"Solid", -- [1]
			},
			["zoom"] = 0.3,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Cast Bar - Druid",
			["overlayclip"] = false,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["spark"] = true,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["sparkHidden"] = "NEVER",
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "interruptible",
						["value"] = 0,
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "interruptible",
								["value"] = 0,
							}, -- [1]
							{
								["value"] = 1,
								["variable"] = "show",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								["custom"] = "aura_env.region.colorState = \"unint\"\nLWA.UpdateBar()",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "alwaystrue",
					},
					["linked"] = true,
					["changes"] = {
						{
							["value"] = {
								["custom"] = "aura_env.region.colorState = \"\"\nLWA.UpdateBar()",
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
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [3]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["auto"] = true,
		},
		["Earth and Moon"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
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
						["showClones"] = false,
						["type"] = "aura2",
						["auranames"] = {
							"60433", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["unit"] = "target",
						["unitExists"] = false,
						["ownOnly"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HARMFUL",
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
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
						[25] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_talent"] = false,
				["use_class"] = true,
				["race"] = {
				},
				["size"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_spellknown"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["zoneIds"] = "",
			},
			["source"] = "import",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["authorOptions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["icon"] = true,
			["desc"] = "",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["cooldownTextDisabled"] = false,
			["width"] = 48,
			["useCooldownModRate"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Earth and Moon",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "2.0.17",
			["uid"] = "Zhm6HzgZDbn",
			["inverse"] = false,
			["parent"] = "Dynamic Effects - Druid",
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
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "slidebottom",
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
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["Infected Wound"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
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
						["showClones"] = false,
						["type"] = "aura2",
						["auranames"] = {
							"58179", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["unit"] = "target",
						["unitExists"] = false,
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
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[64] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_group_leader"] = false,
				["use_talent"] = false,
				["use_class"] = true,
				["race"] = {
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["use_spellknown"] = false,
				["raid_role"] = {
					["single"] = "MAINASSIST",
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["source"] = "import",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["authorOptions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["icon"] = true,
			["desc"] = "",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["cooldownTextDisabled"] = false,
			["width"] = 48,
			["useCooldownModRate"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Infected Wound",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "2.0.17",
			["uid"] = "Tj9RhNq5Aso",
			["inverse"] = false,
			["parent"] = "Dynamic Effects - Druid",
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
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "slidebottom",
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
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["Dynamic Effects - Druid"] = {
			["grow"] = "CUSTOM",
			["controlledChildren"] = {
				"Mangle (Cat)", -- [1]
				"Omen of Clarity", -- [2]
				"Nature's Grace", -- [3]
				"Savage Defense", -- [4]
				"Infected Wound", -- [5]
				"Predator's Swiftness", -- [6]
				"Earth and Moon", -- [7]
				"Owlkin Frenzy", -- [8]
				"Natural Perfection", -- [9]
				"Elune's Wrath", -- [10]
				"Wrath of Elune", -- [11]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "Ner0rxotC",
			["parent"] = "Luxthos - Druid",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "TOPLEFT",
			["fullCircle"] = true,
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 2,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
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
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["radius"] = 200,
			["gridType"] = "RD",
			["selfPoint"] = "BOTTOMLEFT",
			["align"] = "CENTER",
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
			["desc"] = "Made by Luxthos - twitch.tv/luxthos",
			["stagger"] = 0,
			["useLimit"] = false,
			["version"] = 20,
			["subRegions"] = {
			},
			["internalVersion"] = 53,
			["config"] = {
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
			["sortHybridTable"] = {
				["Natural Perfection"] = false,
				["Omen of Clarity"] = false,
				["Elune's Wrath"] = false,
				["Mangle (Cat)"] = false,
				["Earth and Moon"] = false,
				["Savage Defense"] = false,
				["Predator's Swiftness"] = false,
				["Wrath of Elune"] = false,
				["Owlkin Frenzy"] = false,
				["Nature's Grace"] = false,
				["Infected Wound"] = false,
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["uid"] = "JX6NOW6NqVu",
			["source"] = "import",
			["customGrow"] = "function(newPositions, activeRegions)\n    if LWA and LWA.GrowDynamicEffects then\n        LWA.GrowDynamicEffects(newPositions, activeRegions)\n    end\nend",
			["scale"] = 1,
			["xOffset"] = -6.103515625e-05,
			["border"] = false,
			["anchorFrameFrame"] = "WeakAuras:General Options - Druid",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["limit"] = 5,
			["gridWidth"] = 5,
			["anchorFrameParent"] = false,
			["constantFactor"] = "RADIUS",
			["rowSpace"] = 1,
			["borderOffset"] = 4,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Dynamic Effects - Druid",
			["animate"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["borderEdge"] = "Square Full White",
			["borderInset"] = 1,
			["authorOptions"] = {
			},
			["arcLength"] = 360,
			["conditions"] = {
			},
			["information"] = {
			},
			["rotation"] = 0,
		},
		["Predator's Swiftness"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
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
						["showClones"] = false,
						["type"] = "aura2",
						["auranames"] = {
							"69369", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["unit"] = "player",
						["unitExists"] = true,
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
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[49] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_talent"] = false,
				["use_class"] = true,
				["race"] = {
				},
				["size"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_spellknown"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["zoneIds"] = "",
			},
			["source"] = "import",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["authorOptions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["icon"] = true,
			["desc"] = "",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["cooldownTextDisabled"] = false,
			["width"] = 48,
			["useCooldownModRate"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Predator's Swiftness",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "2.0.17",
			["uid"] = "PgK1dU4xl08",
			["inverse"] = false,
			["parent"] = "Dynamic Effects - Druid",
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
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "slidebottom",
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
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["Faerie Fire 2"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
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
						["auranames"] = {
							"770", -- [1]
							"16857", -- [2]
						},
						["event"] = "Health",
						["unit"] = "target",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useName"] = true,
						["auranames"] = {
							"770", -- [1]
							"16857", -- [2]
						},
						["useRem"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["type"] = "aura2",
						["remOperator"] = "<=",
						["rem"] = "60",
						["unit"] = "target",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"770", -- [1]
							"16857", -- [2]
						},
						["matchesShowOn"] = "showOnMissing",
						["event"] = "Health",
						["unit"] = "target",
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["use_resting"] = true,
						["use_incombat"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["unit"] = "player",
						["event"] = "Conditions",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom"] = "function()\n    if LWA and LWA.Init then\n        LWA.Init()\n    end\nend",
						["custom_type"] = "event",
						["debuffType"] = "HELPFUL",
						["events"] = "OPTIONS",
						["unit"] = "player",
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
					},
				}, -- [5]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    if t[4] then -- If in Rested Area\n        return false\n    end\n\n    local behavior = aura_env.config.maintenance.faerie_fire.behavior\n\n    if behavior == 1 then -- Show if Applied\n        return t[1]\n    elseif behavior == 2 then -- Show if Missing\n        return t[2] or t[3]\n    else -- Always Show\n        return true\n    end\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_offset"] = 0,
					["type"] = "subborder",
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
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
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["use_class"] = true,
				["race"] = {
				},
				["use_spellknown"] = true,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["spellknown"] = 770,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["parent"] = "Maintenance - Druid 2",
			["config"] = {
				["maintenance"] = {
					["faerie_fire"] = {
						["behavior"] = 1,
					},
				},
			},
			["semver"] = "2.0.17",
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
			["cooldown"] = true,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["authorOptions"] = {
				{
					["subOptions"] = {
						{
							["type"] = "header",
							["useName"] = true,
							["text"] = "Behavior",
							["noMerge"] = false,
							["width"] = 1,
						}, -- [1]
						{
							["subOptions"] = {
								{
									["text"] = "Faerie Fire",
									["type"] = "description",
									["fontSize"] = "large",
									["width"] = 1,
								}, -- [1]
								{
									["type"] = "select",
									["values"] = {
										"Show if Applied", -- [1]
										"Show if Missing", -- [2]
										"Always Show", -- [3]
									},
									["default"] = 1,
									["name"] = "Behavior",
									["useDesc"] = false,
									["key"] = "behavior",
									["width"] = 1,
								}, -- [2]
							},
							["hideReorder"] = true,
							["useDesc"] = false,
							["nameSource"] = 0,
							["name"] = "Faerie Fire",
							["width"] = 1,
							["useCollapse"] = false,
							["noMerge"] = false,
							["collapse"] = false,
							["type"] = "group",
							["limitType"] = "none",
							["groupType"] = "simple",
							["key"] = "faerie_fire",
							["size"] = 10,
						}, -- [2]
					},
					["hideReorder"] = true,
					["useDesc"] = false,
					["nameSource"] = 0,
					["name"] = "Maintenance Icons",
					["width"] = 1,
					["useCollapse"] = true,
					["noMerge"] = false,
					["collapse"] = true,
					["type"] = "group",
					["limitType"] = "none",
					["groupType"] = "simple",
					["key"] = "maintenance",
					["size"] = 10,
				}, -- [1]
			},
			["xOffset"] = 0,
			["width"] = 48,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Faerie Fire 2",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["useCooldownModRate"] = true,
			["uid"] = "nkjtOATp3RC",
			["inverse"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["value"] = "30",
						["variable"] = "expirationTime",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
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
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [2]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["icon"] = true,
		},
		["Mangle (Bear)"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["parent"] = "Core - Druid",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["realSpellName"] = "裂伤（熊）",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["use_track"] = true,
						["spellName"] = 33878,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"5487", -- [1]
							"9634", -- [2]
						},
						["unit"] = "player",
						["ownOnly"] = true,
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["single"] = 61,
					["multi"] = {
						[61] = true,
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
				["use_class"] = true,
				["race"] = {
				},
				["use_spellknown"] = true,
				["use_spec"] = true,
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["spellknown"] = 33878,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["uid"] = "q70(5V6Uwvr",
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
				},
				["finish"] = {
				},
			},
			["regionType"] = "icon",
			["zoom"] = 0.3,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["cooldownEdge"] = false,
			["auto"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Mangle (Bear)",
			["useCooldownModRate"] = true,
			["alpha"] = 1,
			["width"] = 48,
			["xOffset"] = 0,
			["config"] = {
			},
			["inverse"] = true,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
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
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "insufficientResources",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.47450980392157, -- [1]
								0.51372549019608, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "spellInRange",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								0.87450980392157, -- [1]
								0.34117647058824, -- [2]
								0.32941176470588, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [5]
			},
			["cooldown"] = true,
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
		["Enrage - Druid"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["parent"] = "Core - Druid",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["showClones"] = false,
						["type"] = "aura2",
						["auranames"] = {
							"5229", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["unit"] = "player",
						["unitExists"] = true,
						["ownOnly"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["type"] = "spell",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["realSpellName"] = "激怒",
						["use_spellName"] = true,
						["debuffType"] = "HELPFUL",
						["event"] = "Cooldown Progress (Spell)",
						["use_track"] = true,
						["spellName"] = 5229,
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"5487", -- [1]
							"9634", -- [2]
						},
						["unit"] = "player",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[3]\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
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
				["use_class"] = true,
				["race"] = {
				},
				["use_spellknown"] = true,
				["use_spec"] = true,
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["spellknown"] = 5229,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["uid"] = "V7d7buiqtNv",
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
				},
				["finish"] = {
				},
			},
			["regionType"] = "icon",
			["zoom"] = 0.3,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["cooldownEdge"] = false,
			["auto"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Enrage - Druid",
			["useCooldownModRate"] = true,
			["alpha"] = 1,
			["width"] = 48,
			["xOffset"] = 0,
			["config"] = {
			},
			["inverse"] = true,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [2]
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
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "insufficientResources",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.47450980392157, -- [1]
								0.51372549019608, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
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
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
						{
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["property"] = "color",
						}, -- [5]
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [6]
					},
				}, -- [5]
			},
			["cooldown"] = true,
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
		["Thorns 2"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
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
						["itemName"] = 6265,
						["use_count"] = false,
						["auranames"] = {
							"467", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["unitExists"] = true,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_itemName"] = true,
						["unevent"] = "auto",
						["names"] = {
						},
						["spellIds"] = {
						},
						["duration"] = "1",
						["type"] = "aura2",
						["event"] = "Item Count",
						["unit"] = "player",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 6265,
						["use_count"] = false,
						["auranames"] = {
							"467", -- [1]
						},
						["duration"] = "1",
						["names"] = {
						},
						["unitExists"] = true,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["use_itemName"] = true,
						["event"] = "Item Count",
						["use_unit"] = true,
						["type"] = "aura2",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["matchesShowOn"] = "showOnActive",
						["remOperator"] = "<=",
						["rem"] = "60",
						["unit"] = "player",
						["useRem"] = true,
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["itemName"] = 6265,
						["use_count"] = false,
						["auranames"] = {
							"467", -- [1]
						},
						["matchesShowOn"] = "showOnMissing",
						["subeventPrefix"] = "SPELL",
						["unitExists"] = true,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_itemName"] = true,
						["unevent"] = "auto",
						["names"] = {
						},
						["spellIds"] = {
						},
						["duration"] = "1",
						["type"] = "aura2",
						["event"] = "Item Count",
						["unit"] = "player",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["use_resting"] = true,
						["use_incombat"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["unit"] = "player",
						["event"] = "Conditions",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom"] = "function()\n    if LWA and LWA.Init then\n        LWA.Init()\n    end\nend",
						["custom_type"] = "event",
						["debuffType"] = "HELPFUL",
						["events"] = "OPTIONS",
						["unit"] = "player",
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
					},
				}, -- [5]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    if t[4] then -- If in Rested Area\n        return false\n    end\n\n    local behavior = aura_env.config.maintenance.thorns.behavior\n\n    if behavior == 1 then -- Show if Applied\n        return t[1]\n    elseif behavior == 2 then -- Show if Missing\n        return t[2] or t[3]\n    else -- Always Show\n        return true\n    end\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_offset"] = 0,
					["type"] = "subborder",
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
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
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
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
				["spellknown"] = 467,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["parent"] = "Maintenance - Druid 2",
			["config"] = {
				["maintenance"] = {
					["thorns"] = {
						["behavior"] = 2,
					},
				},
			},
			["semver"] = "2.0.17",
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
			["cooldown"] = true,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["authorOptions"] = {
				{
					["subOptions"] = {
						{
							["type"] = "header",
							["useName"] = true,
							["text"] = "Behavior",
							["noMerge"] = false,
							["width"] = 1,
						}, -- [1]
						{
							["subOptions"] = {
								{
									["text"] = "Thorns",
									["type"] = "description",
									["fontSize"] = "large",
									["width"] = 1,
								}, -- [1]
								{
									["type"] = "select",
									["values"] = {
										"Show if Applied", -- [1]
										"Show if Missing", -- [2]
										"Always Show", -- [3]
									},
									["default"] = 2,
									["name"] = "Behavior",
									["useDesc"] = false,
									["key"] = "behavior",
									["width"] = 1,
								}, -- [2]
							},
							["hideReorder"] = true,
							["useDesc"] = false,
							["nameSource"] = 0,
							["name"] = "Thorns",
							["width"] = 1,
							["useCollapse"] = false,
							["noMerge"] = false,
							["collapse"] = false,
							["type"] = "group",
							["limitType"] = "none",
							["groupType"] = "simple",
							["key"] = "thorns",
							["size"] = 10,
						}, -- [2]
					},
					["hideReorder"] = true,
					["useDesc"] = false,
					["nameSource"] = 0,
					["name"] = "Maintenance Icons",
					["width"] = 1,
					["useCollapse"] = true,
					["noMerge"] = false,
					["collapse"] = true,
					["type"] = "group",
					["limitType"] = "none",
					["groupType"] = "simple",
					["key"] = "maintenance",
					["size"] = 10,
				}, -- [1]
			},
			["xOffset"] = 0,
			["width"] = 48,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Thorns 2",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["useCooldownModRate"] = true,
			["uid"] = "RgQ3wU7ewdv",
			["inverse"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [1]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["icon"] = true,
		},
		["Prowl 2"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
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
						["useName"] = true,
						["auranames"] = {
							"5215", -- [1]
						},
						["match_countOperator"] = ">",
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["match_count"] = "0",
						["type"] = "aura2",
						["useMatch_count"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["event"] = "Cooldown Progress (Spell)",
						["unit"] = "player",
						["realSpellName"] = "潜行",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["spellName"] = 5215,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_offset"] = 0,
					["type"] = "subborder",
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
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
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["class_and_spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["zoneIds"] = "",
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["use_never"] = false,
				["spellknown"] = 5215,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["parent"] = "Maintenance - Druid 2",
			["semver"] = "2.0.17",
			["uid"] = "Gu6tHRqfkck",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
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
			["regionType"] = "icon",
			["cooldown"] = true,
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
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [5]
					},
				}, -- [2]
			},
			["xOffset"] = 0,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Prowl 2",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 48,
			["zoom"] = 0.3,
			["config"] = {
			},
			["inverse"] = true,
			["icon"] = true,
			["displayIcon"] = "",
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
		["Growl"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["parent"] = "Dynamic Spells - Druid",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["showClones"] = false,
						["type"] = "aura2",
						["auranames"] = {
							"6795", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["unit"] = "target",
						["unitExists"] = false,
						["ownOnly"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HARMFUL",
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
						["realSpellName"] = "低吼",
						["use_spellName"] = true,
						["spellName"] = 6795,
						["event"] = "Cooldown Progress (Spell)",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
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
				["use_class"] = true,
				["race"] = {
				},
				["use_spellknown"] = true,
				["use_spec"] = true,
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["spellknown"] = 6795,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["uid"] = "pK1SpNVEiIV",
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
				},
				["finish"] = {
				},
			},
			["regionType"] = "icon",
			["zoom"] = 0.3,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["cooldownEdge"] = false,
			["auto"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Growl",
			["useCooldownModRate"] = true,
			["alpha"] = 1,
			["width"] = 48,
			["xOffset"] = 0,
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [2]
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
				}, -- [3]
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
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [5]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "slidebottom",
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
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["Elune's Wrath"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
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
						["showClones"] = false,
						["type"] = "aura2",
						["auranames"] = {
							"64823", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["unit"] = "player",
						["unitExists"] = true,
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
						["type"] = "item",
						["use_itemName"] = true,
						["use_equipped"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["equipped_operator"] = ">=",
						["use_itemSetId"] = true,
						["itemSetId"] = "790",
						["use_genericShowOn"] = true,
						["event"] = "Item Set",
						["itemName"] = 0,
						["equipped"] = "4",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "item",
						["use_itemName"] = true,
						["use_equipped"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["equipped_operator"] = ">=",
						["use_itemSetId"] = true,
						["itemSetId"] = "828",
						["use_genericShowOn"] = true,
						["event"] = "Item Set",
						["itemName"] = 0,
						["equipped"] = "4",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    -- Nightsong Garb\n    return t[1] and (t[2] or t[3])\nend\n\n",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["single"] = 8,
					["multi"] = {
						[8] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_level"] = true,
				["race"] = {
				},
				["use_class"] = true,
				["use_spellknown"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["level"] = "80",
				["level_operator"] = ">=",
				["zoneIds"] = "",
			},
			["source"] = "import",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["authorOptions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["icon"] = true,
			["desc"] = "",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["cooldownTextDisabled"] = false,
			["width"] = 48,
			["useCooldownModRate"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Elune's Wrath",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "2.0.17",
			["uid"] = "itoU7ePKUqF",
			["inverse"] = false,
			["parent"] = "Dynamic Effects - Druid",
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
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "slidebottom",
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
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["Mangle (Cat)"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
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
						["showClones"] = false,
						["type"] = "aura2",
						["auranames"] = {
							"33876", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["unit"] = "target",
						["unitExists"] = false,
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
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[60] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_group_leader"] = false,
				["use_talent"] = false,
				["use_class"] = true,
				["race"] = {
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["use_spellknown"] = false,
				["raid_role"] = {
					["single"] = "MAINASSIST",
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["source"] = "import",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["authorOptions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["icon"] = true,
			["desc"] = "",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["cooldownTextDisabled"] = false,
			["width"] = 48,
			["useCooldownModRate"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Mangle (Cat)",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "2.0.17",
			["uid"] = "el6j8YtRKYg",
			["inverse"] = false,
			["parent"] = "Dynamic Effects - Druid",
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
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "slidebottom",
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
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["Rebirth"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 20484,
						["realSpellName"] = "复生",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["class_and_spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["use_never"] = false,
				["spellknown"] = 20484,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["displayIcon"] = "",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["cooldownTextDisabled"] = false,
			["width"] = 48,
			["useCooldownModRate"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Rebirth",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "2.0.17",
			["uid"] = "PE)w7y89aWN",
			["inverse"] = true,
			["parent"] = "Core - Druid",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
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
					},
				}, -- [3]
			},
			["cooldown"] = true,
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
		["Demoralizing Roar"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["parent"] = "Core - Druid",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
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
						["auranames"] = {
							"48560", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["event"] = "Health",
						["unit"] = "target",
						["unitExists"] = true,
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
						["type"] = "aura2",
						["auranames"] = {
							"5487", -- [1]
							"9634", -- [2]
						},
						["unit"] = "player",
						["ownOnly"] = true,
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
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
				["spellknown"] = 99,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["xOffset"] = 0,
			["zoom"] = 0.3,
			["frameStrata"] = 1,
			["regionType"] = "icon",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["cooldownEdge"] = false,
			["uid"] = "cpGxNsyXSqb",
			["icon"] = true,
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Demoralizing Roar",
			["width"] = 48,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["useCooldownModRate"] = true,
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
						["op"] = "<",
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5, -- [4]
							},
							["property"] = "color",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [5]
					},
				}, -- [4]
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
		["Combo Point 4 - Druid"] = {
			["sparkWidth"] = 10,
			["colorState"] = "",
			["sparkOffsetX"] = 0,
			["wagoID"] = "Ner0rxotC",
			["parent"] = "Combo Points - Druid",
			["preferToUpdate"] = false,
			["adjustedMin"] = "3",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["uid"] = "4X62Y0an9tX",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.region.configGroup = \"combo_points\"\n\nLWA = LWA or { UpdateBar = function() end }",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["names"] = {
						},
						["unevent"] = "auto",
						["use_unit"] = true,
						["duration"] = "1",
						["event"] = "Power",
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["powertype"] = 4,
						["spellIds"] = {
						},
						["unit"] = "player",
						["use_power"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_powertype"] = true,
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
						},
						["unit"] = "player",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["configGroup"] = "combo_points",
			["selfPoint"] = "TOP",
			["isPrimaryResource"] = false,
			["iconSource"] = -1,
			["barColor"] = {
				0.85882352941176, -- [1]
				0.14509803921569, -- [2]
				0.050980392156863, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["xOffset"] = 0,
			["adjustedMax"] = "4",
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
						0, -- [4]
					},
					["border_visible"] = false,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
				}, -- [3]
			},
			["height"] = 20,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.34336978197098, -- [4]
			},
			["load"] = {
				["use_class"] = true,
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = true,
			["internalVersion"] = 53,
			["source"] = "import",
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
			["authorOptions"] = {
			},
			["version"] = 20,
			["smoothProgress"] = false,
			["useAdjustededMin"] = true,
			["regionType"] = "aurabar",
			["spark"] = false,
			["config"] = {
			},
			["icon_side"] = "RIGHT",
			["icon"] = false,
			["sparkHeight"] = 30,
			["texture"] = "Solid",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Combo Point 4 - Druid",
			["width"] = 56,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["sparkHidden"] = "NEVER",
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "power",
						["value"] = "3",
					},
					["changes"] = {
						{
							["value"] = {
								["custom"] = "aura_env.region.colorState = \"\"\nLWA.UpdateBar(aura_env, 4, 5)",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "power",
						["value"] = "4",
					},
					["linked"] = true,
					["changes"] = {
						{
							["value"] = {
								["custom"] = "aura_env.region.colorState = \"highlight\"\nLWA.UpdateBar(aura_env, 4, 5)",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "power",
						["value"] = "5",
					},
					["linked"] = true,
					["changes"] = {
						{
							["value"] = {
								["custom"] = "aura_env.region.colorState = \"full\"\nLWA.UpdateBar(aura_env, 4, 5)",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [3]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["semver"] = "2.0.17",
		},
		["Combo Point 2 - Druid"] = {
			["sparkWidth"] = 10,
			["colorState"] = "",
			["sparkOffsetX"] = 0,
			["wagoID"] = "Ner0rxotC",
			["parent"] = "Combo Points - Druid",
			["preferToUpdate"] = false,
			["adjustedMin"] = "1",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["uid"] = "FN7gVrBBOwr",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.region.configGroup = \"combo_points\"\n\nLWA = LWA or { UpdateBar = function() end }",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["names"] = {
						},
						["unevent"] = "auto",
						["use_unit"] = true,
						["duration"] = "1",
						["event"] = "Power",
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["powertype"] = 4,
						["spellIds"] = {
						},
						["unit"] = "player",
						["use_power"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_powertype"] = true,
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
						},
						["unit"] = "player",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["configGroup"] = "combo_points",
			["selfPoint"] = "TOP",
			["isPrimaryResource"] = false,
			["iconSource"] = -1,
			["barColor"] = {
				0.85882352941176, -- [1]
				0.14509803921569, -- [2]
				0.050980392156863, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["xOffset"] = 0,
			["adjustedMax"] = "2",
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
						0, -- [4]
					},
					["border_visible"] = false,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
				}, -- [3]
			},
			["height"] = 20,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.34336978197098, -- [4]
			},
			["load"] = {
				["use_class"] = true,
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = true,
			["internalVersion"] = 53,
			["source"] = "import",
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
			["authorOptions"] = {
			},
			["version"] = 20,
			["smoothProgress"] = false,
			["useAdjustededMin"] = true,
			["regionType"] = "aurabar",
			["spark"] = false,
			["config"] = {
			},
			["icon_side"] = "RIGHT",
			["icon"] = false,
			["sparkHeight"] = 30,
			["texture"] = "Solid",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Combo Point 2 - Druid",
			["width"] = 56,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["sparkHidden"] = "NEVER",
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "power",
						["value"] = "3",
					},
					["changes"] = {
						{
							["value"] = {
								["custom"] = "aura_env.region.colorState = \"\"\nLWA.UpdateBar(aura_env, 2, 5)",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "power",
						["value"] = "4",
					},
					["linked"] = true,
					["changes"] = {
						{
							["value"] = {
								["custom"] = "aura_env.region.colorState = \"highlight\"\nLWA.UpdateBar(aura_env, 2, 5)",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "power",
						["value"] = "5",
					},
					["linked"] = true,
					["changes"] = {
						{
							["value"] = {
								["custom"] = "aura_env.region.colorState = \"full\"\nLWA.UpdateBar(aura_env, 2, 5)",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [3]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["semver"] = "2.0.17",
		},
		["Combo Point 3 - Druid"] = {
			["sparkWidth"] = 10,
			["colorState"] = "",
			["sparkOffsetX"] = 0,
			["wagoID"] = "Ner0rxotC",
			["parent"] = "Combo Points - Druid",
			["preferToUpdate"] = false,
			["adjustedMin"] = "2",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["uid"] = "cz1DthPZOqq",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.region.configGroup = \"combo_points\"\n\nLWA = LWA or { UpdateBar = function() end }",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["names"] = {
						},
						["unevent"] = "auto",
						["use_unit"] = true,
						["duration"] = "1",
						["event"] = "Power",
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["powertype"] = 4,
						["spellIds"] = {
						},
						["unit"] = "player",
						["use_power"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_powertype"] = true,
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
						},
						["unit"] = "player",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["configGroup"] = "combo_points",
			["selfPoint"] = "TOP",
			["isPrimaryResource"] = false,
			["iconSource"] = -1,
			["barColor"] = {
				0.85882352941176, -- [1]
				0.14509803921569, -- [2]
				0.050980392156863, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["xOffset"] = 0,
			["adjustedMax"] = "3",
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
						0, -- [4]
					},
					["border_visible"] = false,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
				}, -- [3]
			},
			["height"] = 20,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.34336978197098, -- [4]
			},
			["load"] = {
				["use_class"] = true,
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = true,
			["internalVersion"] = 53,
			["source"] = "import",
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
			["authorOptions"] = {
			},
			["version"] = 20,
			["smoothProgress"] = false,
			["useAdjustededMin"] = true,
			["regionType"] = "aurabar",
			["spark"] = false,
			["config"] = {
			},
			["icon_side"] = "RIGHT",
			["icon"] = false,
			["sparkHeight"] = 30,
			["texture"] = "Solid",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Combo Point 3 - Druid",
			["width"] = 56,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["sparkHidden"] = "NEVER",
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "power",
						["value"] = "3",
					},
					["changes"] = {
						{
							["value"] = {
								["custom"] = "aura_env.region.colorState = \"\"\nLWA.UpdateBar(aura_env, 3, 5)",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "power",
						["value"] = "4",
					},
					["linked"] = true,
					["changes"] = {
						{
							["value"] = {
								["custom"] = "aura_env.region.colorState = \"highlight\"\nLWA.UpdateBar(aura_env, 3, 5)",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "power",
						["value"] = "5",
					},
					["linked"] = true,
					["changes"] = {
						{
							["value"] = {
								["custom"] = "aura_env.region.colorState = \"full\"\nLWA.UpdateBar(aura_env, 3, 5)",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [3]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["semver"] = "2.0.17",
		},
		["Combo Point 1 - Druid"] = {
			["sparkWidth"] = 10,
			["colorState"] = "",
			["sparkOffsetX"] = 0,
			["wagoID"] = "Ner0rxotC",
			["parent"] = "Combo Points - Druid",
			["preferToUpdate"] = false,
			["adjustedMin"] = "0",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["uid"] = "2GvALqy0J87",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.region.configGroup = \"combo_points\"\n\nLWA = LWA or { UpdateBar = function() end }",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["names"] = {
						},
						["unevent"] = "auto",
						["use_unit"] = true,
						["duration"] = "1",
						["event"] = "Power",
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["powertype"] = 4,
						["spellIds"] = {
						},
						["unit"] = "player",
						["use_power"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_powertype"] = true,
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
						},
						["unit"] = "player",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["configGroup"] = "combo_points",
			["selfPoint"] = "TOP",
			["isPrimaryResource"] = false,
			["iconSource"] = -1,
			["barColor"] = {
				0.85882352941176, -- [1]
				0.14509803921569, -- [2]
				0.050980392156863, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["xOffset"] = 0,
			["adjustedMax"] = "1",
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
						0, -- [4]
					},
					["border_visible"] = false,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
				}, -- [3]
			},
			["height"] = 20,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.34336978197098, -- [4]
			},
			["load"] = {
				["use_class"] = true,
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = true,
			["internalVersion"] = 53,
			["source"] = "import",
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
			["authorOptions"] = {
			},
			["version"] = 20,
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["spark"] = false,
			["config"] = {
			},
			["icon_side"] = "RIGHT",
			["icon"] = false,
			["sparkHeight"] = 30,
			["texture"] = "Solid",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Combo Point 1 - Druid",
			["width"] = 56,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["sparkHidden"] = "NEVER",
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "power",
						["value"] = "3",
					},
					["changes"] = {
						{
							["value"] = {
								["custom"] = "aura_env.region.colorState = \"\"\nLWA.UpdateBar(aura_env, 1, 5)",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "power",
						["value"] = "4",
					},
					["linked"] = true,
					["changes"] = {
						{
							["value"] = {
								["custom"] = "aura_env.region.colorState = \"highlight\"\nLWA.UpdateBar(aura_env, 1, 5)",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "power",
						["value"] = "5",
					},
					["linked"] = true,
					["changes"] = {
						{
							["value"] = {
								["custom"] = "aura_env.region.colorState = \"full\"\nLWA.UpdateBar(aura_env, 1, 5)",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [3]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["semver"] = "2.0.17",
		},
		["Combo Points - Druid"] = {
			["grow"] = "CUSTOM",
			["controlledChildren"] = {
				"Combo Point 1 - Druid", -- [1]
				"Combo Point 2 - Druid", -- [2]
				"Combo Point 3 - Druid", -- [3]
				"Combo Point 4 - Druid", -- [4]
				"Combo Point 5 - Druid", -- [5]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "Ner0rxotC",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["fullCircle"] = true,
			["space"] = 2,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
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
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["radius"] = 200,
			["arcLength"] = 360,
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
			["gridWidth"] = 5,
			["animate"] = false,
			["stagger"] = 0,
			["useLimit"] = false,
			["version"] = 20,
			["subRegions"] = {
			},
			["internalVersion"] = 53,
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
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
			["xOffset"] = 0,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["hybridPosition"] = "hybridFirst",
			["source"] = "import",
			["customGrow"] = "function(newPositions, activeRegions)\n    if LWA and LWA.GrowDynamicResource then\n        LWA.GrowDynamicResource(newPositions, activeRegions)\n    end\nend",
			["scale"] = 1,
			["uid"] = "CAdAqbii(zf",
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["sortHybridTable"] = {
				["Combo Point 3 - Druid"] = false,
				["Combo Point 2 - Druid"] = false,
				["Combo Point 4 - Druid"] = false,
				["Combo Point 5 - Druid"] = false,
				["Combo Point 1 - Druid"] = false,
			},
			["rotation"] = 0,
			["constantFactor"] = "RADIUS",
			["parent"] = "Resources - Druid",
			["borderOffset"] = 4,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Combo Points - Druid",
			["rowSpace"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["limit"] = 6,
			["config"] = {
			},
			["selfPoint"] = "TOP",
			["gridType"] = "RD",
			["conditions"] = {
			},
			["information"] = {
			},
			["borderInset"] = 1,
		},
		["Feral Charge - Cat"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_matchedRune"] = false,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["names"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["use_exact_spellName"] = false,
						["realSpellName"] = "野性冲锋 - 豹",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["spellName"] = 49376,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["class_and_spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["use_never"] = false,
				["spellknown"] = 49376,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["displayIcon"] = "",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["cooldownTextDisabled"] = false,
			["width"] = 48,
			["useCooldownModRate"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Feral Charge - Cat",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "2.0.17",
			["uid"] = "6PM3A1h2Fml",
			["inverse"] = true,
			["parent"] = "Core - Druid",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
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
					},
				}, -- [3]
			},
			["cooldown"] = true,
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
		["雷德王阿姨-日蚀月蚀提示+内置cd"] = {
			["arcLength"] = 360,
			["controlledChildren"] = {
				"日蚀触发", -- [1]
				"日蚀冷却", -- [2]
				"月蚀触发 ", -- [3]
				"月蚀冷却 ", -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -123.6231079101563,
			["preferToUpdate"] = false,
			["yOffset"] = 134.544677734375,
			["anchorPoint"] = "CENTER",
			["fullCircle"] = true,
			["useAnchorPerUnit"] = false,
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
						["unit"] = "player",
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
			["gridWidth"] = 5,
			["sort"] = "none",
			["subRegions"] = {
			},
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["useLimit"] = false,
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
			["radius"] = 200,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["gridType"] = "RD",
			["animate"] = false,
			["authorOptions"] = {
			},
			["scale"] = 1,
			["source"] = "import",
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["anchorPerUnit"] = "CUSTOM",
			["config"] = {
			},
			["borderInset"] = 1,
			["constantFactor"] = "RADIUS",
			["grow"] = "RIGHT",
			["borderOffset"] = 4,
			["rowSpace"] = 1,
			["tocversion"] = 30400,
			["id"] = "雷德王阿姨-日蚀月蚀提示+内置cd",
			["limit"] = 5,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["sortHybridTable"] = {
				["日蚀触发"] = false,
				["月蚀触发 "] = false,
				["日蚀冷却"] = false,
				["月蚀冷却 "] = false,
			},
			["uid"] = "pKJz0wdW89z",
			["rotation"] = 0,
			["space"] = 0,
			["conditions"] = {
			},
			["information"] = {
			},
			["selfPoint"] = "LEFT",
		},
		["Mana Bar - Druid"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["wagoID"] = "Ner0rxotC",
			["parent"] = "Resources - Druid",
			["preferToUpdate"] = false,
			["customText"] = "function()\n    local s = aura_env.state\n    \n    if LWA and LWA.UpdateBarText then\n        local format = LWA.GetConfig(\"resources\").mana_bar.format\n        \n        return LWA.UpdateBarText(s.value, s.percentpower, format)\n    end\n    \n    return s.value\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["width"] = 405,
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.30000001192093, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["names"] = {
						},
						["unevent"] = "auto",
						["use_unit"] = true,
						["duration"] = "1",
						["use_showCost"] = true,
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["powertype"] = 0,
						["spellIds"] = {
						},
						["unit"] = "player",
						["event"] = "Power",
						["subeventSuffix"] = "_CAST_START",
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useName"] = true,
						["debuffType"] = "HELPFUL",
						["auranames"] = {
							"768", -- [1]
							"5487", -- [2]
							"9634", -- [3]
						},
						["type"] = "aura2",
						["matchesShowOn"] = "showOnMissing",
						["ownOnly"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[2]\nend\n    \n    ",
				["activeTriggerMode"] = 1,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["configGroup"] = "mana_bar",
			["overlays"] = {
				{
					0, -- [1]
					0, -- [2]
					0, -- [3]
					0.40000003576279, -- [4]
				}, -- [1]
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
			["isPrimaryResource"] = true,
			["iconSource"] = -1,
			["barColor"] = {
				0.03921568627451, -- [1]
				0.45098039215686, -- [2]
				0.82745098039216, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["xOffset"] = 0,
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_message"] = false,
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.region.configGroup = \"mana_bar\"",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
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
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%c",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = true,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_c_format"] = "none",
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
					["type"] = "subtext",
					["text_visible"] = true,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_text_format_p_time_format"] = 0,
					["text_shadowYOffset"] = -1,
					["text_text_format_1.percentpower_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_CENTER",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_text_format_p_time_precision"] = 1,
					["text_fontSize"] = 14,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["anchorYOffset"] = 0,
				}, -- [4]
			},
			["height"] = 20,
			["internalVersion"] = 53,
			["load"] = {
				["use_class"] = true,
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["selfPoint"] = "TOP",
			["source"] = "import",
			["authorOptions"] = {
			},
			["version"] = 20,
			["config"] = {
			},
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["icon"] = false,
			["uid"] = "Of4tfbr7O)D",
			["icon_side"] = "RIGHT",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["overlayclip"] = true,
			["texture"] = "Solid",
			["alpha"] = 1,
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 30400,
			["sparkHidden"] = "NEVER",
			["id"] = "Mana Bar - Druid",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["sparkHeight"] = 30,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["semver"] = "2.0.17",
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">=",
						["variable"] = "percentpower",
						["value"] = "80",
					},
					["changes"] = {
						{
							["property"] = "sub.5.text_visible",
						}, -- [1]
					},
				}, -- [1]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["spark"] = false,
		},
		["Resources - Druid"] = {
			["controlledChildren"] = {
				"Health Bar - Druid", -- [1]
				"Mana Bar - Druid", -- [2]
				"Rage Bar - Druid", -- [3]
				"Energy Bar - Druid", -- [4]
				"Combo Points - Druid", -- [5]
				"Form Mana Bar - Druid", -- [6]
				"Cast Bar - Druid", -- [7]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "TOP",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
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
						["debuffType"] = "HELPFUL",
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
			["desc"] = "Made by Luxthos - twitch.tv/luxthos",
			["version"] = 20,
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
			["source"] = "import",
			["scale"] = 1,
			["customAnchor"] = "",
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "group",
			["borderSize"] = 2,
			["anchorFrameParent"] = false,
			["authorOptions"] = {
			},
			["borderOffset"] = 4,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Resources - Druid",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["borderInset"] = 1,
			["uid"] = "j4E1H(LMng4",
			["parent"] = "Luxthos - Druid",
			["conditions"] = {
			},
			["information"] = {
			},
			["selfPoint"] = "CENTER",
		},
		["Prowl"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["match_countOperator"] = ">",
						["auranames"] = {
							"5215", -- [1]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["useName"] = true,
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["match_count"] = "0",
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
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 5215,
						["realSpellName"] = "潜行",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["class_and_spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["use_never"] = false,
				["spellknown"] = 5215,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["displayIcon"] = "",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["cooldownTextDisabled"] = false,
			["width"] = 48,
			["useCooldownModRate"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Prowl",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "2.0.17",
			["uid"] = "eBj4MSNvoFZ",
			["inverse"] = true,
			["parent"] = "Maintenance - Druid",
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
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [5]
					},
				}, -- [2]
			},
			["cooldown"] = true,
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
		["Faerie Fire"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["parent"] = "Maintenance - Druid",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"770", -- [1]
							"16857", -- [2]
						},
						["event"] = "Health",
						["unit"] = "target",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useName"] = true,
						["auranames"] = {
							"770", -- [1]
							"16857", -- [2]
						},
						["debuffType"] = "HARMFUL",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unit"] = "target",
						["rem"] = "60",
						["spellIds"] = {
						},
						["type"] = "aura2",
						["remOperator"] = "<=",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["useRem"] = true,
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"770", -- [1]
							"16857", -- [2]
						},
						["matchesShowOn"] = "showOnMissing",
						["event"] = "Health",
						["unit"] = "target",
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
				}, -- [3]
				{
					["trigger"] = {
						["use_resting"] = true,
						["use_incombat"] = false,
						["use_unit"] = true,
						["type"] = "unit",
						["unit"] = "player",
						["event"] = "Conditions",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom"] = "function()\n    if LWA and LWA.Init then\n        LWA.Init()\n    end\nend",
						["custom_type"] = "event",
						["custom_hide"] = "custom",
						["unit"] = "player",
						["events"] = "OPTIONS",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [5]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    if t[4] then -- If in Rested Area\n        return false\n    end\n\n    local behavior = aura_env.config.maintenance.faerie_fire.behavior\n\n    if behavior == 1 then -- Show if Applied\n        return t[1]\n    elseif behavior == 2 then -- Show if Missing\n        return t[2] or t[3]\n    else -- Always Show\n        return true\n    end\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
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
				["use_class"] = true,
				["race"] = {
				},
				["use_spellknown"] = true,
				["use_spec"] = true,
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["spellknown"] = 770,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["uid"] = "w83D0Lovz9N",
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
				},
				["finish"] = {
				},
			},
			["regionType"] = "icon",
			["zoom"] = 0.3,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["cooldownEdge"] = true,
			["auto"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Faerie Fire",
			["useCooldownModRate"] = true,
			["alpha"] = 1,
			["width"] = 48,
			["xOffset"] = 0,
			["config"] = {
				["maintenance"] = {
					["faerie_fire"] = {
						["behavior"] = 1,
					},
				},
			},
			["inverse"] = false,
			["authorOptions"] = {
				{
					["subOptions"] = {
						{
							["useName"] = true,
							["type"] = "header",
							["text"] = "Behavior",
							["noMerge"] = false,
							["width"] = 1,
						}, -- [1]
						{
							["subOptions"] = {
								{
									["type"] = "description",
									["text"] = "Faerie Fire",
									["fontSize"] = "large",
									["width"] = 1,
								}, -- [1]
								{
									["type"] = "select",
									["default"] = 1,
									["values"] = {
										"Show if Applied", -- [1]
										"Show if Missing", -- [2]
										"Always Show", -- [3]
									},
									["key"] = "behavior",
									["useDesc"] = false,
									["name"] = "Behavior",
									["width"] = 1,
								}, -- [2]
							},
							["hideReorder"] = true,
							["useDesc"] = false,
							["nameSource"] = 0,
							["collapse"] = false,
							["width"] = 1,
							["useCollapse"] = false,
							["noMerge"] = false,
							["name"] = "Faerie Fire",
							["key"] = "faerie_fire",
							["limitType"] = "none",
							["groupType"] = "simple",
							["type"] = "group",
							["size"] = 10,
						}, -- [2]
					},
					["hideReorder"] = true,
					["useDesc"] = false,
					["nameSource"] = 0,
					["collapse"] = true,
					["width"] = 1,
					["useCollapse"] = true,
					["noMerge"] = false,
					["name"] = "Maintenance Icons",
					["key"] = "maintenance",
					["limitType"] = "none",
					["groupType"] = "simple",
					["type"] = "group",
					["size"] = 10,
				}, -- [1]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "30",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
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
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [2]
			},
			["cooldown"] = true,
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
		["Tranquility"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 740,
						["realSpellName"] = "宁静",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 95,
						},
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["use_inverse"] = true,
						["use_unit"] = true,
						["use_talent"] = true,
						["event"] = "Talent Known",
						["use_track"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["class_and_spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 95,
					["multi"] = {
						[95] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["use_never"] = false,
				["spellknown"] = 740,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["displayIcon"] = "",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["cooldownTextDisabled"] = false,
			["width"] = 48,
			["useCooldownModRate"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Tranquility",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "2.0.17",
			["uid"] = "CP6JCXpBD3t",
			["inverse"] = true,
			["parent"] = "Core - Druid",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
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
					},
				}, -- [3]
			},
			["cooldown"] = true,
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
		["Lacerate"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["parent"] = "Core - Druid",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
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
						["auranames"] = {
							"33745", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["event"] = "Health",
						["unit"] = "target",
						["unitExists"] = true,
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
						["type"] = "aura2",
						["auranames"] = {
							"5487", -- [1]
							"9634", -- [2]
						},
						["unit"] = "player",
						["ownOnly"] = true,
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
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
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.86274509803922, -- [2]
						0.62745098039216, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_visible"] = true,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_anchorYOffset"] = -4,
				}, -- [4]
			},
			["height"] = 48,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
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
				["spellknown"] = 33745,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["xOffset"] = 0,
			["zoom"] = 0.3,
			["frameStrata"] = 1,
			["regionType"] = "icon",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["cooldownEdge"] = true,
			["uid"] = "ffDhViEpkax",
			["icon"] = true,
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Lacerate",
			["width"] = 48,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["useCooldownModRate"] = true,
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
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 1,
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
							["value"] = false,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["value"] = "0",
								["op"] = "==",
								["variable"] = "matchCount",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5, -- [4]
							},
							["property"] = "color",
						}, -- [2]
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
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [3]
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
						["use_genericShowOn"] = true,
						["event"] = "Action Usable",
						["use_exact_spellName"] = true,
						["realSpellName"] = 26986,
						["use_spellName"] = true,
						["spellName"] = 26986,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
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
					["text_text_format_p_format"] = "timed",
					["type"] = "subtext",
					["anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowXOffset"] = 0,
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
			["information"] = {
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
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["tocversion"] = 30400,
			["id"] = "月蚀触发 ",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 64,
			["useCooldownModRate"] = true,
			["uid"] = "LTHO4pI9bMU",
			["inverse"] = false,
			["zoom"] = 0,
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
		["Wild Growth"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
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
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["use_showgcd"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 48438,
						["realSpellName"] = "野性成长",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"768", -- [1]
							"5487", -- [2]
							"9634", -- [3]
						},
						["unit"] = "player",
						["matchesShowOn"] = "showOnMissing",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["class_and_spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["use_never"] = false,
				["spellknown"] = 48438,
				["zoneIds"] = "",
			},
			["width"] = 48,
			["source"] = "import",
			["auto"] = true,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["frameStrata"] = 1,
			["regionType"] = "icon",
			["displayIcon"] = "",
			["useTooltip"] = false,
			["xOffset"] = 0,
			["config"] = {
			},
			["useCooldownModRate"] = true,
			["parent"] = "Core - Druid",
			["zoom"] = 0.3,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Wild Growth",
			["cooldownTextDisabled"] = false,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "c)8QS9LlTrP",
			["inverse"] = true,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
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
					},
				}, -- [2]
			},
			["cooldown"] = true,
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
		["Thorns"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["parent"] = "Maintenance - Druid",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 6265,
						["use_count"] = false,
						["auranames"] = {
							"467", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["unitExists"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Item Count",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["useName"] = true,
						["duration"] = "1",
						["names"] = {
						},
						["unevent"] = "auto",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 6265,
						["use_count"] = false,
						["auranames"] = {
							"467", -- [1]
						},
						["duration"] = "1",
						["unit"] = "player",
						["unitExists"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["names"] = {
						},
						["event"] = "Item Count",
						["matchesShowOn"] = "showOnActive",
						["useName"] = true,
						["rem"] = "60",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["remOperator"] = "<=",
						["use_unit"] = true,
						["use_itemName"] = true,
						["useRem"] = true,
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["itemName"] = 6265,
						["use_count"] = false,
						["auranames"] = {
							"467", -- [1]
						},
						["matchesShowOn"] = "showOnMissing",
						["unit"] = "player",
						["unitExists"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Item Count",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["useName"] = true,
						["duration"] = "1",
						["names"] = {
						},
						["unevent"] = "auto",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["use_resting"] = true,
						["use_incombat"] = false,
						["use_unit"] = true,
						["type"] = "unit",
						["unit"] = "player",
						["event"] = "Conditions",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom"] = "function()\n    if LWA and LWA.Init then\n        LWA.Init()\n    end\nend",
						["custom_type"] = "event",
						["custom_hide"] = "custom",
						["unit"] = "player",
						["events"] = "OPTIONS",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [5]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    if t[4] then -- If in Rested Area\n        return false\n    end\n\n    local behavior = aura_env.config.maintenance.thorns.behavior\n\n    if behavior == 1 then -- Show if Applied\n        return t[1]\n    elseif behavior == 2 then -- Show if Missing\n        return t[2] or t[3]\n    else -- Always Show\n        return true\n    end\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
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
				["spellknown"] = 467,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["uid"] = "ZvYA0Rto9QN",
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
				},
				["finish"] = {
				},
			},
			["regionType"] = "icon",
			["zoom"] = 0.3,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["cooldownEdge"] = true,
			["auto"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Thorns",
			["useCooldownModRate"] = true,
			["alpha"] = 1,
			["width"] = 48,
			["xOffset"] = 0,
			["config"] = {
				["maintenance"] = {
					["thorns"] = {
						["behavior"] = 2,
					},
				},
			},
			["inverse"] = false,
			["authorOptions"] = {
				{
					["subOptions"] = {
						{
							["useName"] = true,
							["type"] = "header",
							["text"] = "Behavior",
							["noMerge"] = false,
							["width"] = 1,
						}, -- [1]
						{
							["subOptions"] = {
								{
									["type"] = "description",
									["text"] = "Thorns",
									["fontSize"] = "large",
									["width"] = 1,
								}, -- [1]
								{
									["type"] = "select",
									["default"] = 2,
									["values"] = {
										"Show if Applied", -- [1]
										"Show if Missing", -- [2]
										"Always Show", -- [3]
									},
									["key"] = "behavior",
									["useDesc"] = false,
									["name"] = "Behavior",
									["width"] = 1,
								}, -- [2]
							},
							["hideReorder"] = true,
							["useDesc"] = false,
							["nameSource"] = 0,
							["collapse"] = false,
							["width"] = 1,
							["useCollapse"] = false,
							["noMerge"] = false,
							["name"] = "Thorns",
							["key"] = "thorns",
							["limitType"] = "none",
							["groupType"] = "simple",
							["type"] = "group",
							["size"] = 10,
						}, -- [2]
					},
					["hideReorder"] = true,
					["useDesc"] = false,
					["nameSource"] = 0,
					["collapse"] = true,
					["width"] = 1,
					["useCollapse"] = true,
					["noMerge"] = false,
					["name"] = "Maintenance Icons",
					["key"] = "maintenance",
					["limitType"] = "none",
					["groupType"] = "simple",
					["type"] = "group",
					["size"] = 10,
				}, -- [1]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
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
		["Lifebloom"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["parent"] = "Core - Druid",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["showClones"] = false,
						["type"] = "aura2",
						["auranames"] = {
							"33763", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["event"] = "Health",
						["unit"] = "player",
						["unitExists"] = true,
						["ownOnly"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useName"] = true,
						["debuffType"] = "HELPFUL",
						["auranames"] = {
							"768", -- [1]
							"5487", -- [2]
							"9634", -- [3]
						},
						["type"] = "aura2",
						["matchesShowOn"] = "showOnMissing",
						["ownOnly"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["genericShowOn"] = "showOnCooldown",
						["talent"] = {
							["single"] = 11,
						},
						["use_genericShowOn"] = true,
						["use_inverse"] = true,
						["event"] = "Talent Known",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["ownOnly"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "player",
						["use_unit"] = true,
						["use_track"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"768", -- [1]
							"5487", -- [2]
							"9634", -- [3]
						},
						["unit"] = "player",
						["matchesShowOn"] = "showOnMissing",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
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
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.86274509803922, -- [2]
						0.62745098039216, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_visible"] = true,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_anchorYOffset"] = -4,
				}, -- [4]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
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
				["use_class"] = true,
				["race"] = {
				},
				["use_spellknown"] = true,
				["use_spec"] = true,
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["spellknown"] = 33763,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["uid"] = "oNnYT)QpSiA",
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
				},
				["finish"] = {
				},
			},
			["regionType"] = "icon",
			["zoom"] = 0.3,
			["information"] = {
			},
			["cooldownEdge"] = true,
			["auto"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Lifebloom",
			["useCooldownModRate"] = true,
			["alpha"] = 1,
			["width"] = 48,
			["xOffset"] = 0,
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 1,
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
							["value"] = false,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["value"] = "0",
								["op"] = "==",
								["variable"] = "matchCount",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5, -- [4]
							},
							["property"] = "color",
						}, -- [2]
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
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [3]
			},
			["cooldown"] = true,
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
		["Mark of the Wild"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["parent"] = "Maintenance - Druid",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 6265,
						["use_count"] = false,
						["auranames"] = {
							"1126", -- [1]
							"21849", -- [2]
						},
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["unitExists"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Item Count",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["useName"] = true,
						["duration"] = "1",
						["names"] = {
						},
						["unevent"] = "auto",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 6265,
						["use_count"] = false,
						["auranames"] = {
							"1126", -- [1]
							"21849", -- [2]
						},
						["duration"] = "1",
						["unit"] = "player",
						["unitExists"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["names"] = {
						},
						["event"] = "Item Count",
						["matchesShowOn"] = "showOnActive",
						["useName"] = true,
						["rem"] = "300",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["remOperator"] = "<=",
						["use_unit"] = true,
						["use_itemName"] = true,
						["useRem"] = true,
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["itemName"] = 6265,
						["use_count"] = false,
						["auranames"] = {
							"1126", -- [1]
							"21849", -- [2]
						},
						["matchesShowOn"] = "showOnMissing",
						["unit"] = "player",
						["unitExists"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Item Count",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["useName"] = true,
						["duration"] = "1",
						["names"] = {
						},
						["unevent"] = "auto",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["use_resting"] = true,
						["use_incombat"] = false,
						["use_unit"] = true,
						["type"] = "unit",
						["unit"] = "player",
						["event"] = "Conditions",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom"] = "function()\n    if LWA and LWA.Init then\n        LWA.Init()\n    end\nend",
						["custom_type"] = "event",
						["custom_hide"] = "custom",
						["unit"] = "player",
						["events"] = "OPTIONS",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [5]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    if t[4] then -- If in Rested Area\n        return false\n    end\n    \n    local behavior = aura_env.config.maintenance.mark_of_the_wild.behavior\n    \n    if behavior == 1 then -- Show if Applied\n        return t[1]\n    elseif behavior == 2 then -- Show if Missing\n        return t[2] or t[3]\n    else -- Always Show\n        return true\n    end\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
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
				["spellknown"] = 1126,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["uid"] = "iblMih4QexS",
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
				},
				["finish"] = {
				},
			},
			["regionType"] = "icon",
			["zoom"] = 0.3,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["cooldownEdge"] = true,
			["auto"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Mark of the Wild",
			["useCooldownModRate"] = true,
			["alpha"] = 1,
			["width"] = 48,
			["xOffset"] = 0,
			["config"] = {
				["maintenance"] = {
					["mark_of_the_wild"] = {
						["behavior"] = 2,
					},
				},
			},
			["inverse"] = false,
			["authorOptions"] = {
				{
					["subOptions"] = {
						{
							["useName"] = true,
							["type"] = "header",
							["text"] = "Behavior",
							["noMerge"] = false,
							["width"] = 1,
						}, -- [1]
						{
							["subOptions"] = {
								{
									["type"] = "description",
									["text"] = "Mark of the Wild",
									["fontSize"] = "large",
									["width"] = 1,
								}, -- [1]
								{
									["type"] = "select",
									["default"] = 2,
									["values"] = {
										"Show if Applied", -- [1]
										"Show if Missing", -- [2]
										"Always Show", -- [3]
									},
									["key"] = "behavior",
									["useDesc"] = false,
									["name"] = "Behavior",
									["width"] = 1,
								}, -- [2]
							},
							["hideReorder"] = true,
							["useDesc"] = false,
							["nameSource"] = 0,
							["collapse"] = false,
							["width"] = 1,
							["useCollapse"] = false,
							["noMerge"] = false,
							["name"] = "Mark of the Wild",
							["key"] = "mark_of_the_wild",
							["limitType"] = "none",
							["groupType"] = "simple",
							["type"] = "group",
							["size"] = 10,
						}, -- [2]
					},
					["hideReorder"] = true,
					["useDesc"] = false,
					["nameSource"] = 0,
					["collapse"] = true,
					["width"] = 1,
					["useCollapse"] = true,
					["noMerge"] = false,
					["name"] = "Maintenance Icons",
					["key"] = "maintenance",
					["limitType"] = "none",
					["groupType"] = "simple",
					["type"] = "group",
					["size"] = 10,
				}, -- [1]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
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
		["Maintenance - Druid"] = {
			["grow"] = "CUSTOM",
			["controlledChildren"] = {
				"Prowl", -- [1]
				"Mark of the Wild", -- [2]
				"Thorns", -- [3]
				"Faerie Fire", -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "Ner0rxotC",
			["parent"] = "Luxthos - Druid",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "BOTTOM",
			["fullCircle"] = true,
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 2,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
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
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["radius"] = 200,
			["gridType"] = "RD",
			["selfPoint"] = "TOP",
			["align"] = "CENTER",
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
			["desc"] = "Made by Luxthos - twitch.tv/luxthos",
			["stagger"] = 0,
			["useLimit"] = false,
			["version"] = 20,
			["subRegions"] = {
			},
			["internalVersion"] = 53,
			["config"] = {
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
			["sortHybridTable"] = {
				["Faerie Fire"] = false,
				["Prowl"] = false,
				["Thorns"] = false,
				["Mark of the Wild"] = false,
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["uid"] = "YDkzqn0D7Li",
			["source"] = "import",
			["customGrow"] = "function(newPositions, activeRegions)\n    if LWA and LWA.GrowMaintenance then\n        LWA.GrowMaintenance(newPositions, activeRegions)\n    end\nend",
			["scale"] = 1,
			["xOffset"] = 0,
			["border"] = false,
			["anchorFrameFrame"] = "WeakAuras:General Options - Druid",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["limit"] = 5,
			["gridWidth"] = 5,
			["anchorFrameParent"] = false,
			["constantFactor"] = "RADIUS",
			["rowSpace"] = 1,
			["borderOffset"] = 4,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Maintenance - Druid",
			["animate"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["borderEdge"] = "Square Full White",
			["borderInset"] = 1,
			["authorOptions"] = {
			},
			["arcLength"] = 360,
			["conditions"] = {
			},
			["information"] = {
			},
			["rotation"] = 0,
		},
		["Maintenance - Druid 2"] = {
			["grow"] = "CUSTOM",
			["controlledChildren"] = {
				"Prowl 2", -- [1]
				"Mark of the Wild 2", -- [2]
				"Thorns 2", -- [3]
				"Faerie Fire 2", -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "Ner0rxotC",
			["parent"] = "test",
			["preferToUpdate"] = false,
			["yOffset"] = 569.3968811035156,
			["gridType"] = "RD",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 2,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
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
						["names"] = {
						},
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["internalVersion"] = 53,
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
			["align"] = "CENTER",
			["radius"] = 200,
			["rotation"] = 0,
			["desc"] = "Made by Luxthos - twitch.tv/luxthos",
			["stagger"] = 0,
			["selfPoint"] = "TOP",
			["version"] = 20,
			["subRegions"] = {
			},
			["sortHybridTable"] = {
				["Mark of the Wild"] = false,
				["Faerie Fire"] = false,
				["Prowl"] = false,
				["Thorns"] = false,
			},
			["arcLength"] = 360,
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
			["authorOptions"] = {
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderInset"] = 1,
			["source"] = "import",
			["customGrow"] = "function(newPositions, activeRegions)\n    if LWA and LWA.GrowMaintenance then\n        LWA.GrowMaintenance(newPositions, activeRegions)\n    end\nend",
			["scale"] = 1,
			["borderEdge"] = "Square Full White",
			["border"] = false,
			["anchorFrameFrame"] = "WeakAuras:General Options - Druid",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["xOffset"] = -47.74609375,
			["frameStrata"] = 1,
			["anchorFrameParent"] = false,
			["constantFactor"] = "RADIUS",
			["rowSpace"] = 1,
			["borderOffset"] = 4,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Maintenance - Druid 2",
			["limit"] = 5,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SELECTFRAME",
			["anchorPoint"] = "BOTTOM",
			["config"] = {
			},
			["uid"] = "HD)weB6vbbz",
			["fullCircle"] = true,
			["conditions"] = {
			},
			["information"] = {
			},
			["useLimit"] = false,
		},
		["Maul"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["use_showgcd"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 6807,
						["realSpellName"] = "重殴",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"5487", -- [1]
							"9634", -- [2]
						},
						["unit"] = "player",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["use_unit"] = true,
						["type"] = "unit",
						["unit"] = "player",
						["talent"] = {
							["single"] = 61,
						},
						["use_talent"] = true,
						["use_inverse"] = true,
						["event"] = "Talent Known",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["class_and_spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
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
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_never"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["use_exact_spellknown"] = false,
				["spellknown"] = 6807,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["displayIcon"] = "",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["cooldownTextDisabled"] = false,
			["width"] = 48,
			["useCooldownModRate"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Maul",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "2.0.17",
			["uid"] = "vxfDMIjGlCO",
			["inverse"] = true,
			["parent"] = "Core - Druid",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "insufficientResources",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.47450980392157, -- [1]
								0.51372549019608, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "spellInRange",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								0.87450980392157, -- [1]
								0.34117647058824, -- [2]
								0.32941176470588, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [2]
			},
			["cooldown"] = true,
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
		["Energy Bar - Druid"] = {
			["sparkWidth"] = 10,
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["icon"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["names"] = {
						},
						["unevent"] = "auto",
						["use_unit"] = true,
						["duration"] = "1",
						["use_showCost"] = false,
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["powertype"] = 3,
						["spellIds"] = {
						},
						["unit"] = "player",
						["event"] = "Power",
						["subeventSuffix"] = "_CAST_START",
						["use_powertype"] = true,
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
						},
						["unit"] = "player",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["activeTriggerMode"] = 1,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 53,
			["overlays"] = {
				{
					0, -- [1]
					0, -- [2]
					0, -- [3]
					0.40000003576279, -- [4]
				}, -- [1]
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
			["isPrimaryResource"] = true,
			["sparkOffsetX"] = 0,
			["barColor"] = {
				1, -- [1]
				0.78823529411765, -- [2]
				0.23921568627451, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["parent"] = "Resources - Druid",
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_message"] = false,
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.region.configGroup = \"energy_bar\"",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
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
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = true,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_fontType"] = "OUTLINE",
					["anchorXOffset"] = 0,
					["type"] = "subtext",
					["text_text_format_p_format"] = "timed",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_text_format_p_time_format"] = 0,
					["text_shadowYOffset"] = -1,
					["text_text_format_1.percentpower_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_CENTER",
					["anchorYOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
					["text_fontSize"] = 14,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
				}, -- [4]
			},
			["height"] = 20,
			["configGroup"] = "energy_bar",
			["load"] = {
				["use_class"] = true,
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["authorOptions"] = {
			},
			["source"] = "import",
			["selfPoint"] = "TOP",
			["config"] = {
			},
			["version"] = 20,
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["auto"] = true,
			["uid"] = "0DvX1MKRUm)",
			["icon_side"] = "RIGHT",
			["width"] = 405,
			["sparkHeight"] = 30,
			["texture"] = "Solid",
			["sparkHidden"] = "NEVER",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["tocversion"] = 30400,
			["id"] = "Energy Bar - Druid",
			["zoom"] = 0,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["overlayclip"] = true,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["semver"] = "2.0.17",
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.30000001192093, -- [4]
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
				["init"] = {
				},
				["finish"] = {
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
						["spellName"] = 26985,
						["use_genericShowOn"] = true,
						["event"] = "Action Usable",
						["use_exact_spellName"] = true,
						["realSpellName"] = 26985,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["unit"] = "player",
						["genericShowOn"] = "showAlways",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
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
					["text_text_format_p_time_mod_rate"] = true,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
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
			["parent"] = "雷德王阿姨-日蚀月蚀提示+内置cd",
			["cooldown"] = false,
			["authorOptions"] = {
			},
			["icon"] = true,
			["xOffset"] = 0,
			["alpha"] = 1,
			["zoom"] = 0,
			["uid"] = "WwOVJKbhwK4",
			["tocversion"] = 30400,
			["id"] = "日蚀触发",
			["width"] = 64,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["useCooldownModRate"] = true,
			["config"] = {
			},
			["inverse"] = false,
			["cooldownTextDisabled"] = false,
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
			["selfPoint"] = "CENTER",
		},
		["Nature's Swiftness - Druid"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
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
						["auranames"] = {
							"17116", -- [1]
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
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["use_showgcd"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 17116,
						["realSpellName"] = "自然迅捷",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["class_and_spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 39,
					["multi"] = {
						[39] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["use_never"] = false,
				["spellknown"] = 17116,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["displayIcon"] = "",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["cooldownTextDisabled"] = false,
			["width"] = 48,
			["useCooldownModRate"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Nature's Swiftness - Druid",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "2.0.17",
			["uid"] = "rixW7HYVvI9",
			["inverse"] = true,
			["parent"] = "Core - Druid",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [2]
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
				}, -- [3]
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
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
						{
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [5]
					},
				}, -- [4]
			},
			["cooldown"] = true,
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
		["Feral Charge - Bear"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 16979,
						["realSpellName"] = "野性冲锋 - 熊",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["class_and_spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["use_never"] = false,
				["spellknown"] = 16979,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["displayIcon"] = "",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["cooldownTextDisabled"] = false,
			["width"] = 48,
			["useCooldownModRate"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Feral Charge - Bear",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "2.0.17",
			["uid"] = "ZR5N1BFdeyi",
			["inverse"] = true,
			["parent"] = "Core - Druid",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
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
					},
				}, -- [3]
			},
			["cooldown"] = true,
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
		["Dash"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["match_countOperator"] = ">",
						["auranames"] = {
							"1850", -- [1]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["useName"] = true,
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["match_count"] = "0",
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
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["use_showgcd"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 1850,
						["realSpellName"] = "急奔",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["class_and_spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["use_never"] = false,
				["spellknown"] = 1850,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["displayIcon"] = "",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["cooldownTextDisabled"] = false,
			["width"] = 48,
			["useCooldownModRate"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Dash",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "2.0.17",
			["uid"] = "8lbUw3FvnD0",
			["inverse"] = true,
			["parent"] = "Core - Druid",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [2]
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
				}, -- [3]
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
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [5]
					},
				}, -- [4]
			},
			["cooldown"] = true,
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
		["Nature's Grasp"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
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
						["auranames"] = {
							"16689", -- [1]
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
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 16689,
						["realSpellName"] = "自然之握",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["class_and_spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 39,
					["multi"] = {
						[39] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["use_never"] = false,
				["spellknown"] = 16689,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["displayIcon"] = "",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["cooldownTextDisabled"] = false,
			["width"] = 48,
			["useCooldownModRate"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Nature's Grasp",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "2.0.17",
			["uid"] = "R3Th)RqCnHo",
			["inverse"] = true,
			["parent"] = "Core - Druid",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [2]
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
				}, -- [3]
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
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [5]
					},
				}, -- [4]
			},
			["cooldown"] = true,
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
						["use_auraType"] = true,
						["use_sourceFlags"] = true,
						["use_cloneId"] = false,
						["use_spellSchool"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "combatlog",
						["matchesShowOn"] = "showAlways",
						["useExactSpellId"] = true,
						["auraType"] = "BUFF",
						["subeventSuffix"] = "_AURA_REMOVED",
						["event"] = "Combat Log",
						["names"] = {
						},
						["use_spellId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["auraspellids"] = {
							"48517", -- [1]
						},
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
							"48518", -- [1]
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
						["realSpellName"] = 26986,
						["use_spellName"] = true,
						["spellName"] = 26986,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
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
					["text_text_format_p_format"] = "timed",
					["type"] = "subtext",
					["anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "聊天",
					["text_shadowXOffset"] = 0,
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
			["information"] = {
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
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["tocversion"] = 30400,
			["id"] = "月蚀冷却 ",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 64,
			["useCooldownModRate"] = true,
			["uid"] = "bG5BVG3wv1u",
			["inverse"] = false,
			["zoom"] = 0,
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
		["Owlkin Frenzy"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
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
						["showClones"] = false,
						["type"] = "aura2",
						["auranames"] = {
							"48391", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["unit"] = "player",
						["unitExists"] = true,
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
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[20] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_talent"] = false,
				["use_class"] = true,
				["race"] = {
				},
				["size"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_spellknown"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["zoneIds"] = "",
			},
			["source"] = "import",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["authorOptions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["icon"] = true,
			["desc"] = "",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["cooldownTextDisabled"] = false,
			["width"] = 48,
			["useCooldownModRate"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Owlkin Frenzy",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "2.0.17",
			["uid"] = "gaId)Sz2m16",
			["inverse"] = false,
			["parent"] = "Dynamic Effects - Druid",
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
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "slidebottom",
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
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["Combo Point 5 - Druid"] = {
			["sparkWidth"] = 10,
			["colorState"] = "",
			["sparkOffsetX"] = 0,
			["wagoID"] = "Ner0rxotC",
			["parent"] = "Combo Points - Druid",
			["preferToUpdate"] = false,
			["adjustedMin"] = "4",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["uid"] = "xYUAViyXt2E",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.region.configGroup = \"combo_points\"\n\nLWA = LWA or { UpdateBar = function() end }",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["names"] = {
						},
						["unevent"] = "auto",
						["use_unit"] = true,
						["duration"] = "1",
						["event"] = "Power",
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["powertype"] = 4,
						["spellIds"] = {
						},
						["unit"] = "player",
						["use_power"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_powertype"] = true,
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
						},
						["unit"] = "player",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["configGroup"] = "combo_points",
			["selfPoint"] = "TOP",
			["isPrimaryResource"] = false,
			["iconSource"] = -1,
			["barColor"] = {
				0.85882352941176, -- [1]
				0.14509803921569, -- [2]
				0.050980392156863, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["xOffset"] = 0,
			["adjustedMax"] = "5",
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
						0, -- [4]
					},
					["border_visible"] = false,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
				}, -- [3]
			},
			["height"] = 20,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.34336978197098, -- [4]
			},
			["load"] = {
				["use_class"] = true,
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = true,
			["internalVersion"] = 53,
			["source"] = "import",
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
			["authorOptions"] = {
			},
			["version"] = 20,
			["smoothProgress"] = false,
			["useAdjustededMin"] = true,
			["regionType"] = "aurabar",
			["spark"] = false,
			["config"] = {
			},
			["icon_side"] = "RIGHT",
			["icon"] = false,
			["sparkHeight"] = 30,
			["texture"] = "Solid",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Combo Point 5 - Druid",
			["width"] = 56,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["sparkHidden"] = "NEVER",
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "power",
						["value"] = "3",
					},
					["changes"] = {
						{
							["value"] = {
								["custom"] = "aura_env.region.colorState = \"\"\nLWA.UpdateBar(aura_env, 5, 5)",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "power",
						["value"] = "4",
					},
					["linked"] = true,
					["changes"] = {
						{
							["value"] = {
								["custom"] = "aura_env.region.colorState = \"highlight\"\nLWA.UpdateBar(aura_env, 5, 5)",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "power",
						["value"] = "5",
					},
					["linked"] = true,
					["changes"] = {
						{
							["value"] = {
								["custom"] = "aura_env.region.colorState = \"full\"\nLWA.UpdateBar(aura_env, 5, 5)",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [3]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["semver"] = "2.0.17",
		},
		["Moonfire"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["parent"] = "Core - Druid",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["showClones"] = false,
						["type"] = "aura2",
						["auranames"] = {
							"8921", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["event"] = "Health",
						["unit"] = "target",
						["unitExists"] = true,
						["ownOnly"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["auraspellids"] = {
							"33891", -- [1]
						},
						["auranames"] = {
							"768", -- [1]
							"5487", -- [2]
							"9634", -- [3]
						},
						["useExactSpellId"] = true,
						["matchesShowOn"] = "showOnMissing",
						["type"] = "aura2",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
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
				["use_class"] = true,
				["race"] = {
				},
				["use_spellknown"] = true,
				["use_spec"] = true,
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["spellknown"] = 8921,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["uid"] = "RgVq)lXxTRM",
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
				},
				["finish"] = {
				},
			},
			["regionType"] = "icon",
			["zoom"] = 0.3,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["cooldownEdge"] = true,
			["auto"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Moonfire",
			["useCooldownModRate"] = true,
			["alpha"] = 1,
			["width"] = 48,
			["xOffset"] = 0,
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 1,
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
							["value"] = false,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["value"] = "0",
								["op"] = "==",
								["variable"] = "matchCount",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5, -- [4]
							},
							["property"] = "color",
						}, -- [2]
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
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [3]
			},
			["cooldown"] = true,
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
		["Savage Defense"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
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
						["showClones"] = false,
						["type"] = "aura2",
						["auranames"] = {
							"62606", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["unit"] = "player",
						["unitExists"] = true,
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
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["single"] = 8,
					["multi"] = {
						[8] = true,
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
				["use_class"] = true,
				["race"] = {
				},
				["use_spellknown"] = true,
				["use_spec"] = true,
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["spellknown"] = 62600,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["authorOptions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["icon"] = true,
			["desc"] = "",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["cooldownTextDisabled"] = false,
			["width"] = 48,
			["useCooldownModRate"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Savage Defense",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "2.0.17",
			["uid"] = "KANNFkqDl)M",
			["inverse"] = false,
			["parent"] = "Dynamic Effects - Druid",
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
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "slidebottom",
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
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["Typhoon"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 50516,
						["realSpellName"] = "台风",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["class_and_spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["use_never"] = false,
				["spellknown"] = 50516,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["displayIcon"] = "",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["cooldownTextDisabled"] = false,
			["width"] = 48,
			["useCooldownModRate"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Typhoon",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "2.0.17",
			["uid"] = "4VEtm4HWOpq",
			["inverse"] = true,
			["parent"] = "Core - Druid",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
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
					},
				}, -- [3]
			},
			["cooldown"] = true,
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
		["Force of Nature"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 33831,
						["realSpellName"] = "自然之力",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["class_and_spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["use_never"] = false,
				["spellknown"] = 33831,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["displayIcon"] = "",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["cooldownTextDisabled"] = false,
			["width"] = 48,
			["useCooldownModRate"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Force of Nature",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "2.0.17",
			["uid"] = "K48rnlhfHQZ",
			["inverse"] = true,
			["parent"] = "Core - Druid",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
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
					},
				}, -- [3]
			},
			["cooldown"] = true,
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
		["Regrowth"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["parent"] = "Core - Druid",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["showClones"] = false,
						["type"] = "aura2",
						["auranames"] = {
							"8936", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["event"] = "Health",
						["unit"] = "player",
						["unitExists"] = true,
						["ownOnly"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useName"] = true,
						["debuffType"] = "HELPFUL",
						["auranames"] = {
							"33891", -- [1]
						},
						["type"] = "aura2",
						["matchesShowOn"] = "showOnActive",
						["ownOnly"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["useName"] = true,
						["debuffType"] = "HELPFUL",
						["auranames"] = {
							"768", -- [1]
							"5487", -- [2]
							"9634", -- [3]
						},
						["type"] = "aura2",
						["matchesShowOn"] = "showOnMissing",
						["ownOnly"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["genericShowOn"] = "showOnCooldown",
						["talent"] = {
							["single"] = 95,
						},
						["use_genericShowOn"] = true,
						["use_inverse"] = false,
						["event"] = "Talent Known",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["ownOnly"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "player",
						["use_unit"] = true,
						["use_track"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["genericShowOn"] = "showOnCooldown",
						["talent"] = {
							["single"] = 11,
						},
						["use_genericShowOn"] = true,
						["use_inverse"] = false,
						["event"] = "Talent Known",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["ownOnly"] = true,
						["matchesShowOn"] = "showAlways",
						["unit"] = "player",
						["use_unit"] = true,
						["use_track"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [5]
				{
					["trigger"] = {
						["type"] = "spell",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellName"] = 5570,
						["event"] = "Spell Known",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [6]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    if t[4] and t[6] then -- know Swiftmend & Insect Swarm (Restoration)\n        return t[2] -- in Tree Form\n    elseif t[5] then -- know Moonkin Form (Balance)\n        return false\n    else\n        return t[3] -- not in Cat or Bear Form\n    end\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
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
				["use_class"] = true,
				["race"] = {
				},
				["use_spellknown"] = true,
				["use_spec"] = true,
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["spellknown"] = 8936,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["uid"] = "HTM5MOYRbi4",
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
				},
				["finish"] = {
				},
			},
			["regionType"] = "icon",
			["zoom"] = 0.3,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["cooldownEdge"] = true,
			["auto"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Regrowth",
			["useCooldownModRate"] = true,
			["alpha"] = 1,
			["width"] = 48,
			["xOffset"] = 0,
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 1,
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
							["value"] = false,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["value"] = "0",
								["op"] = "==",
								["variable"] = "matchCount",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5, -- [4]
							},
							["property"] = "color",
						}, -- [2]
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
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [3]
			},
			["cooldown"] = true,
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
		["Eclipse (Lunar)"] = {
			["iconSource"] = 0,
			["wagoID"] = "Ner0rxotC",
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
						["type"] = "aura2",
						["auranames"] = {
							"48518", -- [1]
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
						["track"] = "auto",
						["spellId"] = "48517",
						["use_matchedRune"] = false,
						["duration"] = "30",
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_showgcd"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "combatlog",
						["use_spellName"] = false,
						["subeventSuffix"] = "_AURA_APPLIED",
						["sourceUnit"] = "player",
						["names"] = {
						},
						["event"] = "Combat Log",
						["use_genericShowOn"] = true,
						["realSpellName"] = 0,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["spellName"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["use_percenthealth"] = true,
						["event"] = "Conditions",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"768", -- [1]
							"5487", -- [2]
							"9634", -- [3]
						},
						["unit"] = "player",
						["matchesShowOn"] = "showOnMissing",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\nreturn t[4]\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["class_and_spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
						[22] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_talent"] = false,
				["use_class"] = true,
				["use_spellknown"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["use_never"] = false,
				["spellknown"] = 3674,
				["zoneIds"] = "",
			},
			["width"] = 48,
			["source"] = "import",
			["auto"] = true,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["frameStrata"] = 1,
			["regionType"] = "icon",
			["displayIcon"] = 135753,
			["useTooltip"] = false,
			["xOffset"] = 0,
			["config"] = {
			},
			["useCooldownModRate"] = true,
			["parent"] = "Core - Druid",
			["zoom"] = 0.3,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Eclipse (Lunar)",
			["cooldownTextDisabled"] = false,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "9ebTNiTwp)7",
			["inverse"] = true,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
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
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["property"] = "color",
						}, -- [5]
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [6]
					},
				}, -- [2]
			},
			["cooldown"] = true,
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
		["Luxthos - Druid"] = {
			["controlledChildren"] = {
				"Class Options - Druid", -- [1]
				"General Options - Druid", -- [2]
				"Dynamic Effects - Druid", -- [3]
				"Dynamic Spells - Druid", -- [4]
				"Left Side - Druid", -- [5]
				"Right Side - Druid", -- [6]
				"Core - Druid", -- [7]
				"Maintenance - Druid", -- [8]
				"Resources - Druid", -- [9]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "Ner0rxotC",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 72.794189453125,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
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
						["debuffType"] = "HELPFUL",
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
			["desc"] = "Made by Luxthos - twitch.tv/luxthos",
			["version"] = 20,
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
			["source"] = "import",
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "group",
			["borderSize"] = 2,
			["borderInset"] = 1,
			["borderOffset"] = 4,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Luxthos - Druid",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["groupIcon"] = "interface/icons/classicon_druid.blp",
			["config"] = {
			},
			["uid"] = "vG3HWvzVpPQ",
			["xOffset"] = 639.4926147460938,
			["conditions"] = {
			},
			["information"] = {
			},
			["selfPoint"] = "CENTER",
		},
		["Innervate"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["match_countOperator"] = ">",
						["auranames"] = {
							"29166", -- [1]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "group",
						["useName"] = true,
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["match_count"] = "0",
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
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 29166,
						["realSpellName"] = "激活",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				{
					["trigger"] = {
						["use_unit"] = true,
						["type"] = "unit",
						["unit"] = "player",
						["talent"] = {
							["single"] = 95,
						},
						["use_talent"] = true,
						["use_inverse"] = true,
						["event"] = "Talent Known",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[3]\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["class_and_spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 95,
					["multi"] = {
						[95] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["use_never"] = false,
				["spellknown"] = 29166,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["displayIcon"] = "",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["cooldownTextDisabled"] = false,
			["width"] = 48,
			["useCooldownModRate"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Innervate",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "2.0.17",
			["uid"] = "rYrmgqpVoE3",
			["inverse"] = true,
			["parent"] = "Core - Druid",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [2]
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
				}, -- [3]
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
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [5]
					},
				}, -- [4]
			},
			["cooldown"] = true,
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
		["Bash"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["xOffset"] = 0,
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
						["auranames"] = {
							"5211", -- [1]
						},
						["event"] = "Health",
						["unit"] = "target",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_matchedRune"] = false,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["names"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["use_exact_spellName"] = false,
						["realSpellName"] = "猛击",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["spellName"] = 5211,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["class_and_spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["use_never"] = false,
				["spellknown"] = 5211,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["displayIcon"] = "",
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["cooldownTextDisabled"] = false,
			["width"] = 48,
			["useCooldownModRate"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 30400,
			["id"] = "Bash",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "2.0.17",
			["uid"] = "2RBpqHiYPjY",
			["inverse"] = true,
			["parent"] = "Core - Druid",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
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
							["property"] = "sub.3.glow",
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
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "Pixel",
							["property"] = "sub.3.glowType",
						}, -- [2]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [5]
					},
				}, -- [4]
			},
			["cooldown"] = true,
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
		["Cower - Druid"] = {
			["iconSource"] = -1,
			["wagoID"] = "Ner0rxotC",
			["parent"] = "Dynamic Spells - Druid",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/LuxthosDruidWrath/20",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 8998,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["realSpellName"] = "畏缩",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 20,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 2,
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
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
				["use_class"] = true,
				["race"] = {
				},
				["use_spellknown"] = true,
				["use_spec"] = true,
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["spellknown"] = 8998,
				["zoneIds"] = "",
			},
			["source"] = "import",
			["uid"] = "8s52Y24Bi8n",
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
				},
				["finish"] = {
				},
			},
			["regionType"] = "icon",
			["zoom"] = 0.3,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["cooldownEdge"] = false,
			["auto"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.17",
			["tocversion"] = 30400,
			["id"] = "Cower - Druid",
			["useCooldownModRate"] = true,
			["alpha"] = 1,
			["width"] = 48,
			["xOffset"] = 0,
			["config"] = {
			},
			["inverse"] = true,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.3.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.3.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
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
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "slidebottom",
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
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
	},
	["login_squelch_time"] = 10,
	["lastArchiveClear"] = 1664034415,
	["minimap"] = {
		["hide"] = false,
	},
	["lastUpgrade"] = 1664034420,
	["dbVersion"] = 53,
	["registered"] = {
	},
	["editor_font_size"] = 12,
	["frame"] = {
		["xOffset"] = -1047.841247558594,
		["yOffset"] = -35.245849609375,
		["height"] = 665.0001220703125,
		["width"] = 830,
	},
	["editor_theme"] = "Monokai",
}
