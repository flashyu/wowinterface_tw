
HekiliDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["profileKeys"] = {
		["狂暴專家 - 伊弗斯"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["displays"] = {
				["Interrupts"] = {
					["rel"] = "CENTER",
					["y"] = 119.444580078125,
					["x"] = -461.6661987304688,
				},
				["Cooldowns"] = {
					["rel"] = "CENTER",
					["y"] = 62.777587890625,
					["x"] = -462.2217102050781,
				},
				["Primary"] = {
					["y"] = 120.5550918579102,
					["x"] = -402.777099609375,
					["rel"] = "CENTER",
				},
				["AOE"] = {
					["rel"] = "CENTER",
					["y"] = 176.1105346679688,
					["x"] = -403.8885498046875,
				},
				["Defensives"] = {
					["rel"] = "CENTER",
					["y"] = 119.9998474121094,
					["x"] = -517.2218017578125,
				},
			},
			["runOnce"] = {
				["forceReloadClassDefaultOptions_20220306_1"] = true,
				["forceEnableAllClassesOnceDueToBug_20220225"] = true,
				["forceEnableEnhancedRecheckBoomkin_20210712"] = true,
				["forceReloadAllDefaultPriorities_20220228"] = true,
				["updateMaxRefreshToNewSpecOptions_20220222"] = true,
				["resetAberrantPackageDates_20190728_1"] = true,
			},
			["specs"] = {
				{
					["package"] = "Protection Warrior (wowtbc.gg)",
					["settings"] = {
						["rend_refresh_time"] = 0,
						["execute_whirlwind_enabled"] = true,
						["execute_bloodthirst_enabled"] = true,
						["weave_cooldown_threshold"] = 1.5,
						["weave_rage_threshold"] = 100,
						["execute_slam_prio"] = true,
						["arms"] = "Arms",
						["debuff_demoshout_enabled"] = false,
						["queueing_threshold"] = 60,
						["predict_tfb"] = true,
						["fury"] = "Fury",
						["optimize_overpower"] = false,
						["shout_spell"] = "commanding_shout",
						["debuff_sunder_enabled"] = true,
						["protection"] = "Protection Warrior (wowtbc.gg)",
						["weaving_enabled"] = false,
						["weave_health_threshold"] = 20,
						["main_gcd_spell"] = "slam",
						["execute_queueing_enabled"] = true,
					},
					["autoPacks"] = {
						["fury"] = "Fury",
						["arms"] = "Arms",
						["protection"] = "Protection Warrior (wowtbc.gg)",
					},
				}, -- [1]
			},
			["packs"] = {
				["Protection Warrior (wowtbc.gg)"] = {
					["source"] = "https://wowtbc.gg/wotlk/class-guides/protection-warrior/",
					["builtIn"] = true,
					["date"] = 20221003,
					["spec"] = 1,
					["desc"] = "This priority is based on the wowtbc.gg Wrath guide.",
					["lists"] = {
						["default"] = {
							{
								["action"] = "shield_bash",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "charge",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "debuff.sunder_armor.stack < 5 & target.time_to_die > 10 || debuff.sunder_armor.remains < 3",
								["action"] = "devastate",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "debuff.thunder_clap.down & talent.improved_thunder_clap.enabled",
								["action"] = "thunder_clap",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "tanking",
								["action"] = "shield_block",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "group & active_dot.vigilance = 0",
								["action"] = "vigilance",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.shout.down",
								["action"] = "battle_shout",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "debuff.demoralizing_shout.down",
								["action"] = "demoralizing_shout",
							}, -- [8]
							{
								["action"] = "heroic_throw",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "recklessness",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "retaliation",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "rage < 80",
								["action"] = "bloodrage",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "aggro & buff.dispellable_enrage.up & health.deficit > 40",
								["action"] = "enraged_regeneration",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "aggro & health.deficit > 50",
								["action"] = "last_stand",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "aggro & health.deficit > 50 & buff.last_stand.down",
								["action"] = "shield_wall",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "thunder_clap",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "shockwave",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & rage > 70",
								["action"] = "cleave",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & rage > 70",
								["action"] = "heroic_strike",
							}, -- [21]
							{
								["action"] = "shield_slam",
								["enabled"] = true,
							}, -- [22]
							{
								["action"] = "revenge",
								["enabled"] = true,
							}, -- [23]
							{
								["action"] = "devastate",
								["enabled"] = true,
							}, -- [24]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.stance.down",
								["action"] = "defensive_stance",
							}, -- [1]
							{
								["action"] = "berserker_rage",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "bloodrage",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.shout.down",
								["action"] = "battle_shout",
							}, -- [4]
							{
								["enabled"] = true,
								["potion"] = "indestructible_potion",
								["action"] = "potion",
							}, -- [5]
							{
								["action"] = "charge",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "heroic_throw",
								["enabled"] = true,
							}, -- [7]
						},
					},
					["version"] = 20221003,
					["warnings"] = "Imported 2 action lists.\n",
					["profile"] = "## Protection Warrior (wowtbc.gg)\n## 3 October 2022\n\nactions.precombat+=/defensive_stance,if=buff.stance.down\nactions.precombat+=/berserker_rage\nactions.precombat+=/bloodrage\nactions.precombat+=/battle_shout,if=buff.shout.down\nactions.precombat+=/potion,name=indestructible_potion\nactions.precombat+=/charge\nactions.precombat+=/heroic_throw\n\nactions+=/shield_bash\nactions+=/charge\nactions+=/devastate,if=debuff.sunder_armor.stack<5&target.time_to_die>10||debuff.sunder_armor.remains<3\nactions+=/thunder_clap,if=debuff.thunder_clap.down&talent.improved_thunder_clap.enabled\nactions+=/shield_block,if=tanking\nactions+=/vigilance,if=group&active_dot.vigilance=0\nactions+=/battle_shout,if=buff.shout.down\nactions+=/demoralizing_shout,if=debuff.demoralizing_shout.down\nactions+=/heroic_throw\nactions+=/recklessness\nactions+=/retaliation\nactions+=/potion\nactions+=/use_items\nactions+=/bloodrage,if=rage<80\nactions+=/enraged_regeneration,if=aggro&buff.dispellable_enrage.up&health.deficit>40\nactions+=/last_stand,if=aggro&health.deficit>50\nactions+=/shield_wall,if=aggro&health.deficit>50&buff.last_stand.down\nactions+=/thunder_clap,if=active_enemies>1\nactions+=/shockwave,if=active_enemies>1\nactions+=/cleave,if=active_enemies>1&rage>70\nactions+=/heroic_strike,if=active_enemies=1&rage>70\nactions+=/shield_slam\nactions+=/revenge\nactions+=/devastate",
					["author"] = "wowtbc.gg",
				},
				["Protection Warrior (IV)"] = {
					["source"] = "https://www.icy-veins.com/wotlk-classic/protection-warrior-tank-pve-rotation-cooldowns-abilities",
					["builtIn"] = true,
					["date"] = 20221003,
					["spec"] = 1,
					["desc"] = "This priority is based on the Icy Veins guide.",
					["lists"] = {
						["aoe"] = {
							{
								["action"] = "thunder_clap",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "shockwave",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "revenge",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "rage > 60",
								["action"] = "cleave",
							}, -- [4]
						},
						["default"] = {
							{
								["action"] = "pummel",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "shield_bash",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "spell_reflection",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "charge",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "bloodrage",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodlust.up & debuff.shattering_throw.down",
								["action"] = "shattering_throw",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "tanking",
								["action"] = "shield_block",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.shield_block.up",
								["action"] = "shield_slam",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "active_enemies > 1",
								["list_name"] = "aoe",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "down",
								["action"] = "demoralizing_shout",
							}, -- [11]
							{
								["action"] = "revenge",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "shield_slam",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "stat.attack_power > 3500 || active_enemies > 1",
								["action"] = "shockwave",
							}, -- [14]
							{
								["action"] = "devastate",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "rage > 60",
								["action"] = "heroic_strike",
							}, -- [16]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.stance.down",
								["action"] = "defensive_stance",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.battle_shout.down",
								["action"] = "battle_shout",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.my_battle_shout.down",
								["action"] = "commanding_shout",
							}, -- [3]
						},
					},
					["version"] = 20221003,
					["warnings"] = "Imported 3 action lists.\n",
					["profile"] = "## Protection Warrior (Icy Veins)\n## 2022-10-03\n\nactions.precombat+=/defensive_stance,if=buff.stance.down\nactions.precombat+=/battle_shout,if=buff.battle_shout.down\nactions.precombat+=/commanding_shout,if=buff.my_battle_shout.down\n\nactions+=/pummel\nactions+=/shield_bash\nactions+=/spell_reflection\nactions+=/charge\nactions+=/bloodrage\nactions+=/use_items\nactions+=/shattering_throw,if=buff.bloodlust.up&debuff.shattering_throw.down\nactions+=/shield_block,if=tanking\nactions+=/shield_slam,if=buff.shield_block.up\nactions+=/call_action_list,name=aoe,if=active_enemies>1\nactions+=/demoralizing_shout,if=down\nactions+=/revenge\nactions+=/shield_slam\nactions+=/shockwave,if=stat.attack_power>3500||active_enemies>1\nactions+=/devastate\nactions+=/heroic_strike,if=rage>60\n\nactions.aoe+=/thunder_clap\nactions.aoe+=/shockwave\nactions.aoe+=/revenge\nactions.aoe+=/cleave,if=rage>60",
					["author"] = "Icy Veins",
				},
				["Fury"] = {
					["builtIn"] = true,
					["date"] = 20230416,
					["spec"] = 1,
					["desc"] = "Fury Warrior priority for Hekili",
					["profile"] = "actions.precombat+=/berserker_stance,if=buff.stance.down\nactions.precombat+=/commanding_shout,if=assigned_shout.commanding_shout&buff.my_battle_shout.down&buff.my_commanding_shout.down\nactions.precombat+=/battle_shout,if=assigned_shout.battle_shout&buff.my_battle_shout.down&buff.my_commanding_shout.down\n\nactions+=/call_action_list,name=init\nactions+=/sunder_armor,if=variable.should_sunder&variable.emergency_sunder\nactions+=/pummel\nactions+=/run_action_list,name=berserker_stance,if=buff.berserker_stance.up\nactions+=/run_action_list,name=battle_stance,if=buff.battle_stance.up\nactions+=/run_action_list,name=defensive_stance,if=buff.defensive_stance.up\n\nactions.init+=/variable,name=time_to_die,value=(debuff.training_dummy.up&300)||target.time_to_die\nactions.init+=/variable,name=execute_phase,value=target.health.pct<20\nactions.init+=/variable,name=should_slam_over_execute,value=!variable.execute_phase||settings.execute_slam_prio\nactions.init+=/variable,name=should_bloodthirst,value=!variable.execute_phase||settings.execute_bloodthirst_enabled\nactions.init+=/variable,name=should_whirlwind,value=!variable.execute_phase||settings.execute_whirlwind_enabled\nactions.init+=/variable,name=should_sunder,value=settings.debuff_sunder_enabled&variable.time_to_die>((5-debuff.sunder_armor.stack)*(1.5+latency))+3\nactions.init+=/variable,name=build_sunder,value=!debuff.major_armor_reduction.up||(debuff.sunder_armor.up&debuff.sunder_armor.stack<5)\nactions.init+=/variable,name=maintain_sunder,value=!variable.build_sunder&debuff.sunder_armor.stack=5&debuff.sunder_armor.remains<7&cooldown.bloodthirst.remains&cooldown.whirlwind.remains&!buff.bloodsurge.up\nactions.init+=/variable,name=emergency_sunder,value=debuff.sunder_armor.up&debuff.sunder_armor.remains<1.5\nactions.init+=/variable,name=should_weave,value=cooldown.bloodthirst.remains>=settings.weave_cooldown_threshold&cooldown.whirlwind.remains>=settings.weave_cooldown_threshold&cooldown.recklessness.remains>1.5&cooldown.death_wish.remains>1.5&!buff.bloodsurge.up&!buff.recklessness.up&!buff.death_wish.up&rage.current<=weave_rage_threshold&target.health.pct>=settings.weave_health_threshold\nactions.init+=/variable,name=should_rend,value=variable.should_weave&rage.current>=10&debuff.rend.remains<=settings.rend_refresh_time\nactions.init+=/variable,name=should_overpower,value=variable.should_weave&rage.current>=20&(buff.overpower_ready.up||buff.taste_for_blood.up)\nactions.init+=/variable,name=weave_now,value=settings.weaving_enabled&(variable.should_rend||variable.should_overpower)\n\nactions.berserker_stance+=/bloodrage,use_off_gcd=1,if=rage.deficit>20\nactions.berserker_stance+=/heroic_strike,use_off_gcd=1,if=rage.current>=settings.queueing_threshold&active_enemies=1&!buff.recklessness.up&(!variable.execute_phase||settings.execute_queueing_enabled)\nactions.berserker_stance+=/cleave,use_off_gcd=1,if=rage.current>=settings.queueing_threshold&active_enemies>1&!buff.recklessness.up&(!variable.execute_phase||settings.execute_queueing_enabled)\nactions.berserker_stance+=/sunder_armor,if=variable.should_sunder&(variable.build_sunder||variable.maintain_sunder)\nactions.berserker_stance+=/death_wish,if=debuff.major_armor_reduction.up&!debuff.sunder_armor.up||debuff.sunder_armor.stack=5\nactions.berserker_stance+=/use_items,use_off_gcd=1\nactions.berserker_stance+=/hyperspeed_acceleration,use_off_gcd=1\nactions.berserker_stance+=/slam,if=buff.bloodsurge.up&main_gcd_spell_slam&variable.should_slam_over_execute\nactions.berserker_stance+=/bloodthirst,if=variable.should_bloodthirst&main_gcd_spell_bt\nactions.berserker_stance+=/whirlwind,if=variable.should_whirlwind&main_gcd_spell_ww\nactions.berserker_stance+=/slam,if=buff.bloodsurge.up&variable.should_slam_over_execute\nactions.berserker_stance+=/bloodthirst,if=variable.should_bloodthirst\nactions.berserker_stance+=/whirlwind,if=variable.should_whirlwind\nactions.berserker_stance+=/recklessness,if=(buff.death_wish.up||debuff.shattering_throw.up)\nactions.berserker_stance+=/execute\nactions.berserker_stance+=/slam,if=buff.bloodsurge.up\nactions.berserker_stance+=/demoralizing_shout,if=settings.debuff_demoshout_enabled&!debuff.demoralizing_shout.up\nactions.berserker_stance+=/battle_stance,use_off_gcd=1,if=variable.weave_now\n\nactions.battle_stance+=/shattering_throw,if=buff.bloodlust.up&debuff.shattering_throw.down\nactions.battle_stance+=/berserker_stance,use_off_gcd=1,if=(cooldown.bloodthirst.up||cooldown.whirlwind.up||rage.current<10)&(debuff.shattering_throw.up||!buff.bloodlust.up)\nactions.battle_stance+=/rend,if=!up||debuff.rend.remains<=settings.rend_refresh_time\nactions.battle_stance+=/overpower,if=talent.improved_overpower.rank>0\n\nactions.defensive_stance+=/berserker_stance,use_off_gcd=1",
					["version"] = 20230416,
					["warnings"] = "Imported 6 action lists.\n",
					["author"] = "Defox",
					["lists"] = {
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "init",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "variable.should_sunder & variable.emergency_sunder",
								["action"] = "sunder_armor",
							}, -- [2]
							{
								["action"] = "pummel",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "buff.berserker_stance.up",
								["list_name"] = "berserker_stance",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "buff.battle_stance.up",
								["list_name"] = "battle_stance",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "buff.defensive_stance.up",
								["list_name"] = "defensive_stance",
							}, -- [6]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.stance.down",
								["action"] = "berserker_stance",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.commanding_shout & buff.my_battle_shout.down & buff.my_commanding_shout.down",
								["action"] = "commanding_shout",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.battle_shout & buff.my_battle_shout.down & buff.my_commanding_shout.down",
								["action"] = "battle_shout",
							}, -- [3]
						},
						["defensive_stance"] = {
							{
								["use_off_gcd"] = 1,
								["action"] = "berserker_stance",
								["enabled"] = true,
							}, -- [1]
						},
						["battle_stance"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodlust.up & debuff.shattering_throw.down",
								["action"] = "shattering_throw",
							}, -- [1]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["criteria"] = "( cooldown.bloodthirst.up || cooldown.whirlwind.up || rage.current < 10 ) & ( debuff.shattering_throw.up || ! buff.bloodlust.up )",
								["action"] = "berserker_stance",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! up || debuff.rend.remains <= settings.rend_refresh_time",
								["action"] = "rend",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.improved_overpower.rank > 0",
								["action"] = "overpower",
							}, -- [4]
						},
						["berserker_stance"] = {
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["criteria"] = "rage.deficit > 20",
								["action"] = "bloodrage",
							}, -- [1]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["criteria"] = "rage.current >= settings.queueing_threshold & active_enemies = 1 & ! buff.recklessness.up & ( ! variable.execute_phase || settings.execute_queueing_enabled )",
								["action"] = "heroic_strike",
							}, -- [2]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["criteria"] = "rage.current >= settings.queueing_threshold & active_enemies > 1 & ! buff.recklessness.up & ( ! variable.execute_phase || settings.execute_queueing_enabled )",
								["action"] = "cleave",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.should_sunder & ( variable.build_sunder || variable.maintain_sunder )",
								["action"] = "sunder_armor",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "debuff.major_armor_reduction.up & ! debuff.sunder_armor.up || debuff.sunder_armor.stack = 5",
								["action"] = "death_wish",
							}, -- [5]
							{
								["use_off_gcd"] = 1,
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [6]
							{
								["use_off_gcd"] = 1,
								["action"] = "hyperspeed_acceleration",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodsurge.up & main_gcd_spell_slam & variable.should_slam_over_execute",
								["action"] = "slam",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "variable.should_bloodthirst & main_gcd_spell_bt",
								["action"] = "bloodthirst",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "variable.should_whirlwind & main_gcd_spell_ww",
								["action"] = "whirlwind",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodsurge.up & variable.should_slam_over_execute",
								["action"] = "slam",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "variable.should_bloodthirst",
								["action"] = "bloodthirst",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "variable.should_whirlwind",
								["action"] = "whirlwind",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "( buff.death_wish.up || debuff.shattering_throw.up )",
								["action"] = "recklessness",
							}, -- [14]
							{
								["action"] = "execute",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodsurge.up",
								["action"] = "slam",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "settings.debuff_demoshout_enabled & ! debuff.demoralizing_shout.up",
								["action"] = "demoralizing_shout",
							}, -- [17]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["criteria"] = "variable.weave_now",
								["action"] = "battle_stance",
							}, -- [18]
						},
						["init"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( debuff.training_dummy.up & 300 ) || target.time_to_die",
								["var_name"] = "time_to_die",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "target.health.pct < 20",
								["var_name"] = "execute_phase",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! variable.execute_phase || settings.execute_slam_prio",
								["var_name"] = "should_slam_over_execute",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! variable.execute_phase || settings.execute_bloodthirst_enabled",
								["var_name"] = "should_bloodthirst",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! variable.execute_phase || settings.execute_whirlwind_enabled",
								["var_name"] = "should_whirlwind",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "settings.debuff_sunder_enabled & variable.time_to_die > ( ( 5 - debuff.sunder_armor.stack ) * ( 1.5 + latency ) ) + 3",
								["var_name"] = "should_sunder",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! debuff.major_armor_reduction.up || ( debuff.sunder_armor.up & debuff.sunder_armor.stack < 5 )",
								["var_name"] = "build_sunder",
							}, -- [7]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! variable.build_sunder & debuff.sunder_armor.stack = 5 & debuff.sunder_armor.remains < 7 & cooldown.bloodthirst.remains & cooldown.whirlwind.remains & ! buff.bloodsurge.up",
								["var_name"] = "maintain_sunder",
							}, -- [8]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "debuff.sunder_armor.up & debuff.sunder_armor.remains < 1.5",
								["var_name"] = "emergency_sunder",
							}, -- [9]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "cooldown.bloodthirst.remains >= settings.weave_cooldown_threshold & cooldown.whirlwind.remains >= settings.weave_cooldown_threshold & cooldown.recklessness.remains > 1.5 & cooldown.death_wish.remains > 1.5 & ! buff.bloodsurge.up & ! buff.recklessness.up & ! buff.death_wish.up & rage.current <= weave_rage_threshold & target.health.pct >= settings.weave_health_threshold",
								["var_name"] = "should_weave",
							}, -- [10]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "variable.should_weave & rage.current >= 10 & debuff.rend.remains <= settings.rend_refresh_time",
								["var_name"] = "should_rend",
							}, -- [11]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "variable.should_weave & rage.current >= 20 & ( buff.overpower_ready.up || buff.taste_for_blood.up )",
								["var_name"] = "should_overpower",
							}, -- [12]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "settings.weaving_enabled & ( variable.should_rend || variable.should_overpower )",
								["var_name"] = "weave_now",
							}, -- [13]
						},
					},
				},
				["Arms"] = {
					["builtIn"] = true,
					["date"] = 20230226,
					["spec"] = 1,
					["desc"] = "Arms Warrior priority for Hekili",
					["profile"] = "actions.precombat+=/berserker_stance,if=buff.stance.down\nactions.precombat+=/commanding_shout,if=assigned_shout.commanding_shout&buff.my_battle_shout.down&buff.my_commanding_shout.down\nactions.precombat+=/battle_shout,if=assigned_shout.battle_shout&buff.my_battle_shout.down&buff.my_commanding_shout.down\n\nactions+=/call_action_list,name=init\nactions+=/sunder_armor,if=variable.should_sunder&variable.emergency_sunder\nactions+=/pummel\nactions+=/run_action_list,name=berserker_stance,if=buff.berserker_stance.up\nactions+=/run_action_list,name=battle_stance,if=buff.battle_stance.up\nactions+=/run_action_list,name=defensive_stance,if=buff.defensive_stance.up\n\nactions.init+=/variable,name=time_to_die,value=(debuff.training_dummy.up&300)||target.time_to_die\nactions.init+=/variable,name=execute_phase,value=target.health.pct<20\nactions.init+=/variable,name=should_sunder,value=settings.debuff_sunder_enabled&variable.time_to_die>((5-debuff.sunder_armor.stack)*(1.5+latency))+3\nactions.init+=/variable,name=build_sunder,value=!debuff.major_armor_reduction.up||(debuff.sunder_armor.up&debuff.sunder_armor.stack<5)\nactions.init+=/variable,name=maintain_sunder,value=!variable.build_sunder&debuff.sunder_armor.stack=5&debuff.sunder_armor.remains<7&cooldown.bloodthirst.remains&cooldown.whirlwind.remains&!buff.bloodsurge.up\nactions.init+=/variable,name=emergency_sunder,value=debuff.sunder_armor.up&debuff.sunder_armor.remains<1.5\n\nactions.battle_stance+=/charge,if=target.outside8\nactions.battle_stance+=/bloodrage,use_off_gcd=1,if=rage.deficit>20\nactions.battle_stance+=/heroic_strike,use_off_gcd=1,if=rage.current>=settings.queueing_threshold&active_enemies=1&!buff.recklessness.up&(!variable.execute_phase||settings.execute_queueing_enabled)\nactions.battle_stance+=/cleave,use_off_gcd=1,if=rage.current>=settings.queueing_threshold&active_enemies>1&!buff.recklessness.up&(!variable.execute_phase||settings.execute_queueing_enabled)\nactions.battle_stance+=/sunder_armor,if=variable.should_sunder&(variable.build_sunder||variable.maintain_sunder)\nactions.battle_stance+=/shattering_throw,if=buff.bloodlust.up&debuff.shattering_throw.down\nactions.battle_stance+=/potion\nactions.battle_stance+=/use_items\nactions.battle_stance+=/hyperspeed_acceleration\nactions.battle_stance+=/rend,if=debuff.rend.remains<=settings.rend_refresh_time\nactions.battle_stance+=/overpower,if=(buff.overpower_ready.up&!buff.taste_for_blood.up)||(buff.taste_for_blood.up&(!settings.optimize_overpower||buff.taste_for_blood.remains<1.5))\nactions.battle_stance+=/victory_rush\nactions.battle_stance+=/berserker_stance,if=debuff.rend.remains>12&cooldown.bladestorm.up&cooldown.recklessness.up\nactions.battle_stance+=/sweeping_strikes,use_off_gcd=1,if=active_enemies>1\nactions.battle_stance+=/bladestorm,if=debuff.rend.remains>=action.bladestorm.duration+action.overpower.gcd&(!variable.execute_phase||active_enemies>3)\nactions.battle_stance+=/execute\nactions.battle_stance+=/bladestorm,if=debuff.rend.remains>=action.bladestorm.duration+action.overpower.gcd\nactions.battle_stance+=/mortal_strike\nactions.battle_stance+=/demoralizing_shout,if=settings.debuff_demoshout_enabled&!debuff.demoralizing_shout.up\nactions.battle_stance+=/overpower,if=optimize_overpower&buff.taste_for_blood.up\nactions.battle_stance+=/slam,if=!moving\n\nactions.berserker_stance+=/recklessness,if=cooldown.bladestorm.remains<1.5||debuff.shattering_throw.up\nactions.berserker_stance+=/battle_stance\n\nactions.defensive_stance+=/berserker_stance",
					["version"] = 20230226,
					["warnings"] = "Imported 6 action lists.\n",
					["author"] = "Defox",
					["lists"] = {
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "init",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "variable.should_sunder & variable.emergency_sunder",
								["action"] = "sunder_armor",
							}, -- [2]
							{
								["action"] = "pummel",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "buff.berserker_stance.up",
								["list_name"] = "berserker_stance",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "buff.battle_stance.up",
								["list_name"] = "battle_stance",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "buff.defensive_stance.up",
								["list_name"] = "defensive_stance",
							}, -- [6]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.stance.down",
								["action"] = "berserker_stance",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.commanding_shout & buff.my_battle_shout.down & buff.my_commanding_shout.down",
								["action"] = "commanding_shout",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.battle_shout & buff.my_battle_shout.down & buff.my_commanding_shout.down",
								["action"] = "battle_shout",
							}, -- [3]
						},
						["init"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( debuff.training_dummy.up & 300 ) || target.time_to_die",
								["var_name"] = "time_to_die",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "target.health.pct < 20",
								["var_name"] = "execute_phase",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "settings.debuff_sunder_enabled & variable.time_to_die > ( ( 5 - debuff.sunder_armor.stack ) * ( 1.5 + latency ) ) + 3",
								["var_name"] = "should_sunder",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! debuff.major_armor_reduction.up || ( debuff.sunder_armor.up & debuff.sunder_armor.stack < 5 )",
								["var_name"] = "build_sunder",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! variable.build_sunder & debuff.sunder_armor.stack = 5 & debuff.sunder_armor.remains < 7 & cooldown.bloodthirst.remains & cooldown.whirlwind.remains & ! buff.bloodsurge.up",
								["var_name"] = "maintain_sunder",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "debuff.sunder_armor.up & debuff.sunder_armor.remains < 1.5",
								["var_name"] = "emergency_sunder",
							}, -- [6]
						},
						["battle_stance"] = {
							{
								["enabled"] = true,
								["criteria"] = "target.outside8",
								["action"] = "charge",
							}, -- [1]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["criteria"] = "rage.deficit > 20",
								["action"] = "bloodrage",
							}, -- [2]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["criteria"] = "rage.current >= settings.queueing_threshold & active_enemies = 1 & ! buff.recklessness.up & ( ! variable.execute_phase || settings.execute_queueing_enabled )",
								["action"] = "heroic_strike",
							}, -- [3]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["criteria"] = "rage.current >= settings.queueing_threshold & active_enemies > 1 & ! buff.recklessness.up & ( ! variable.execute_phase || settings.execute_queueing_enabled )",
								["action"] = "cleave",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.should_sunder & ( variable.build_sunder || variable.maintain_sunder )",
								["action"] = "sunder_armor",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodlust.up & debuff.shattering_throw.down",
								["action"] = "shattering_throw",
							}, -- [6]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "hyperspeed_acceleration",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "debuff.rend.remains <= settings.rend_refresh_time",
								["action"] = "rend",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "( buff.overpower_ready.up & ! buff.taste_for_blood.up ) || ( buff.taste_for_blood.up & ( ! settings.optimize_overpower || buff.taste_for_blood.remains < 1.5 ) )",
								["action"] = "overpower",
							}, -- [11]
							{
								["action"] = "victory_rush",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "debuff.rend.remains > 12 & cooldown.bladestorm.up & cooldown.recklessness.up",
								["action"] = "berserker_stance",
							}, -- [13]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["criteria"] = "active_enemies > 1",
								["action"] = "sweeping_strikes",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "debuff.rend.remains >= action.bladestorm.duration + action.overpower.gcd & ( ! variable.execute_phase || active_enemies > 3 )",
								["action"] = "bladestorm",
							}, -- [15]
							{
								["action"] = "execute",
								["enabled"] = true,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "debuff.rend.remains >= action.bladestorm.duration + action.overpower.gcd",
								["action"] = "bladestorm",
							}, -- [17]
							{
								["action"] = "mortal_strike",
								["enabled"] = true,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "settings.debuff_demoshout_enabled & ! debuff.demoralizing_shout.up",
								["action"] = "demoralizing_shout",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "optimize_overpower & buff.taste_for_blood.up",
								["action"] = "overpower",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "! moving",
								["action"] = "slam",
							}, -- [21]
						},
						["berserker_stance"] = {
							{
								["enabled"] = true,
								["criteria"] = "cooldown.bladestorm.remains < 1.5 || debuff.shattering_throw.up",
								["action"] = "recklessness",
							}, -- [1]
							{
								["action"] = "battle_stance",
								["enabled"] = true,
							}, -- [2]
						},
						["defensive_stance"] = {
							{
								["action"] = "berserker_stance",
								["enabled"] = true,
							}, -- [1]
						},
					},
				},
			},
		},
	},
}
