
HekiliDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["profileKeys"] = {
		["康樂股長 - 伊弗斯"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["runOnce"] = {
				["forceReloadAllDefaultPriorities_20220228"] = true,
				["forceEnableAllClassesOnceDueToBug_20220225"] = true,
				["forceEnableEnhancedRecheckBoomkin_20210712"] = true,
				["forceReloadClassDefaultOptions_20220306_11"] = true,
				["updateMaxRefreshToNewSpecOptions_20220222"] = true,
				["resetAberrantPackageDates_20190728_1"] = true,
			},
			["specs"] = {
				[11] = {
					["settings"] = {
						["bearweaving_enabled"] = false,
						["flowerweaving_mode"] = "any",
						["lunar_cooldown_leeway"] = 14,
						["max_ff_energy"] = 15,
						["optimize_rake"] = false,
						["feral_tank"] = "Feral Tank (IV)",
						["ferociousbite_enabled"] = true,
						["min_roar_offset"] = 24,
						["flowerweaving_enabled"] = false,
						["min_bite_rip_remains"] = 4,
						["min_weave_mana"] = 25,
						["min_bite_sr_remains"] = 4,
						["feral_dps"] = "Feral DPS (IV)",
						["max_bite_energy"] = 25,
						["balance"] = "Balance (IV)",
						["bearweaving_instancetype"] = "raid",
						["bearweaving_bossonly"] = true,
						["flowerweaving_mingroupsize"] = 10,
						["rip_leeway"] = 3,
					},
				},
			},
			["packs"] = {
				["Feral DPS (IV)"] = {
					["builtIn"] = true,
					["date"] = 20230425,
					["spec"] = 11,
					["desc"] = "WotLK Feral Druid Priorities\n\nToggle advanced rotation recommendations in the class options.",
					["profile"] = "actions.precombat+=/mark_of_the_wild,if=!up&!buff.gift_of_the_wild.up\nactions.precombat+=/thorns,if=!up\nactions.precombat+=/cat_form,if=!up\nactions.precombat+=/potion\n\nactions+=/call_action_list,name=init\nactions+=/use_items\nactions+=/potion\nactions+=/hyperspeed_acceleration,use_off_gcd=1,if=set_bonus.tier7feral_4pc=1&(buff.tigers_fury.up||cooldown.tigers_fury.remains>=15)\nactions+=/run_action_list,name=bear,if=buff.dire_bear_form.up\nactions+=/run_action_list,name=cat_aoe,if=buff.cat_form.up&active_enemies>2\nactions+=/run_action_list,name=cat,if=buff.cat_form.up\nactions+=/cat_form,if=!up\n\nactions.init+=/variable,name=time_to_die,value=ttd\nactions.init+=/variable,name=end_thresh,value=end_thresh\nactions.init+=/variable,name=bite_at_end,value=combo_points.current=5&(variable.time_to_die<variable.end_thresh||debuff.rip.up&variable.time_to_die-debuff.rip.remains<variable.end_thresh)\nactions.init+=/variable,name=bite_before_rip,value=combo_points.current=5&debuff.rip.remains>=settings.min_bite_rip_remains&buff.savage_roar.remains>=settings.min_bite_sr_remains\nactions.init+=/variable,name=bite_during_berserk,value=buff.berserk.up&energy.current<=settings.max_bite_energy\nactions.init+=/variable,name=ff_during_berserk,value=energy.current<=settings.max_ff_energy\nactions.init+=/variable,name=wait_for_tf,value=cooldown.tigers_fury.remains<=buff.berserk.duration&cooldown.tigers_fury.remains+1<variable.time_to_die-buff.berserk.duration\nactions.init+=/variable,name=rip_now,value=!debuff.rip.up&combo_points.current=5&variable.time_to_die>=variable.end_thresh\n\nactions.cat+=/faerie_fire_feral,if=!buff.clearcasting.up&(target.outside2||buff.berserk.up&variable.ff_during_berserk||!buff.berserk.up&energy.current<87)&(!variable.rip_now||energy.current<action.rip.spend)&can_spend_ff\nactions.cat+=/tigers_fury,use_off_gcd=1,if=energy.current<30-(buff.clearcasting.up&15||0)\nactions.cat+=/berserk,if=!variable.wait_for_tf&debuff.rip.up&!buff.clearcasting.up\nactions.cat+=/savage_roar,if=!up\nactions.cat+=/savage_roar,if=debuff.rip.up&buff.savage_roar.up&!buff.clearcasting.up&buff.savage_roar.remains-(rip_maxremains+settings.rip_leeway)<=0&rip_maxremains+settings.min_roar_offset<=sr_new_duration&!buff.savage_roar.remains>=variable.time_to_die\nactions.cat+=/shred,if=buff.clearcasting.up&debuff.bleed.up&debuff.mangle.up\nactions.cat+=/mangle_cat,if=buff.clearcasting.up&!debuff.mangle.up\nactions.cat+=/rip,if=variable.rip_now\nactions.cat+=/rake,if=buff.clearcasting.up&!debuff.bleed.up&variable.time_to_die>=debuff.rake.duration\nactions.cat+=/ferocious_bite,if=settings.ferociousbite_enabled&energy.current<67&!buff.clearcasting.up&(variable.bite_at_end||variable.bite_before_rip)&(!buff.berserk.up||variable.bite_during_berserk)\nactions.cat+=/rake,if=!up&(combo_points.current<5||(energy.current-action.rake.spend+debuff.rip.remains*10>=action.rip.spend&energy.current-action.rake.spend+buff.savage_roar.remains*10>=action.savage_roar.spend))&(should_rake||!debuff.bleed.up)\nactions.cat+=/mangle_cat,if=!debuff.mangle.up||(debuff.mangle.remains<2&energy.current-action.mangle_cat.spend+debuff.rip.remains*10>=action.rip.spend&energy.current-action.mangle_cat.spend+buff.savage_roar.remains*10>=action.savage_roar.spend)\nactions.cat+=/dire_bear_form,if=should_bearweave\nactions.cat+=/gift_of_the_wild,if=should_flowerweave&mana.pct>settings.min_weave_mana&energy.current<42\nactions.cat+=/shred,if=((combo_points.current<5||energy.current-action.shred.spend+debuff.rip.remains*10>=action.rip.spend)&(combo_points.current=0||energy.current-action.shred.spend+buff.savage_roar.remains*10>=action.savage_roar.spend)&(rip_canextend||!should_rake||energy.current-action.shred.spend+debuff.rake.remains*10>=action.rake.spend))||energy.current=100\n\nactions.cat_aoe+=/faerie_fire_feral,if=!buff.clearcasting.up&(buff.berserk.up&variable.ff_during_berserk||!buff.berserk.up&energy.current<87)&can_spend_ff\nactions.cat_aoe+=/tigers_fury,use_off_gcd=1,if=energy.current<30-(buff.clearcasting.up&15||0)\nactions.cat_aoe+=/berserk,if=energy.current>60&cooldown.tigers_fury.remains>=15\nactions.cat_aoe+=/savage_roar,if=!up&variable.time_to_die>1+latency\nactions.cat_aoe+=/swipe_cat,if=buff.clearcasting.up\nactions.cat_aoe+=/mangle_cat,if=set_bonus.idol_of_the_corruptor=1&combo_points.current=0&buff.savage_roar.remains<=1&(variable.time_to_die>buff.savage_roar.remains+1+latency)&!buff.clearcasting.up\nactions.cat_aoe+=/rake,if=!up&!set_bonus.idol_of_the_corruptor=1&combo_points.current=0&buff.savage_roar.remains<=1&(variable.time_to_die>buff.savage_roar.remains+1+latency)&!buff.clearcasting.up\nactions.cat_aoe+=/swipe_cat\nactions.cat_aoe+=/gift_of_the_wild,if=should_flowerweave&mana.pct>settings.min_weave_mana&energy.current<45\n\nactions.bear+=/faerie_fire_feral,if=!buff.clearcasting.up\nactions.bear+=/cat_form,if=should_cat\nactions.bear+=/enrage,use_off_gcd=1,if=cooldown.mangle_bear.up\nactions.bear+=/maul,use_off_gcd=1,if=!up&!buff.clearcasting.up&rage.current>=action.maul.spend+(cooldown.mangle_bear.up&action.mangle_bear.spend||0)\nactions.bear+=/mangle_bear",
					["version"] = 20230425,
					["warnings"] = "Imported 6 action lists.\n",
					["lists"] = {
						["cat"] = {
							{
								["enabled"] = true,
								["criteria"] = "! buff.clearcasting.up & ( target.outside2 || buff.berserk.up & variable.ff_during_berserk || ! buff.berserk.up & energy.current < 87 ) & ( ! variable.rip_now || energy.current < action.rip.spend ) & can_spend_ff",
								["action"] = "faerie_fire_feral",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "tigers_fury",
								["criteria"] = "energy.current < 30 - ( buff.clearcasting.up & 15 || 0 )",
								["use_off_gcd"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! variable.wait_for_tf & debuff.rip.up & ! buff.clearcasting.up",
								["action"] = "berserk",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "savage_roar",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "debuff.rip.up & buff.savage_roar.up & ! buff.clearcasting.up & buff.savage_roar.remains - ( rip_maxremains + settings.rip_leeway ) <= 0 & rip_maxremains + settings.min_roar_offset <= sr_new_duration & ! buff.savage_roar.remains >= variable.time_to_die",
								["action"] = "savage_roar",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.clearcasting.up & debuff.bleed.up & debuff.mangle.up",
								["action"] = "shred",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.clearcasting.up & ! debuff.mangle.up",
								["action"] = "mangle_cat",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "variable.rip_now",
								["action"] = "rip",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.clearcasting.up & ! debuff.bleed.up & variable.time_to_die >= debuff.rake.duration",
								["action"] = "rake",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "settings.ferociousbite_enabled & energy.current < 67 & ! buff.clearcasting.up & ( variable.bite_at_end || variable.bite_before_rip ) & ( ! buff.berserk.up || variable.bite_during_berserk )",
								["action"] = "ferocious_bite",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! up & ( combo_points.current < 5 || ( energy.current - action.rake.spend + debuff.rip.remains * 10 >= action.rip.spend & energy.current - action.rake.spend + buff.savage_roar.remains * 10 >= action.savage_roar.spend ) ) & ( should_rake || ! debuff.bleed.up )",
								["action"] = "rake",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.mangle.up || ( debuff.mangle.remains < 2 & energy.current - action.mangle_cat.spend + debuff.rip.remains * 10 >= action.rip.spend & energy.current - action.mangle_cat.spend + buff.savage_roar.remains * 10 >= action.savage_roar.spend )",
								["action"] = "mangle_cat",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "should_bearweave",
								["action"] = "dire_bear_form",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "should_flowerweave & mana.pct > settings.min_weave_mana & energy.current < 42",
								["action"] = "gift_of_the_wild",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "( ( combo_points.current < 5 || energy.current - action.shred.spend + debuff.rip.remains * 10 >= action.rip.spend ) & ( combo_points.current = 0 || energy.current - action.shred.spend + buff.savage_roar.remains * 10 >= action.savage_roar.spend ) & ( rip_canextend || ! should_rake || energy.current - action.shred.spend + debuff.rake.remains * 10 >= action.rake.spend ) ) || energy.current = 100",
								["action"] = "shred",
							}, -- [15]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "! up & ! buff.gift_of_the_wild.up",
								["action"] = "mark_of_the_wild",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "thorns",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "cat_form",
							}, -- [3]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [4]
						},
						["cat_aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "! buff.clearcasting.up & ( buff.berserk.up & variable.ff_during_berserk || ! buff.berserk.up & energy.current < 87 ) & can_spend_ff",
								["action"] = "faerie_fire_feral",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "tigers_fury",
								["criteria"] = "energy.current < 30 - ( buff.clearcasting.up & 15 || 0 )",
								["use_off_gcd"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "energy.current > 60 & cooldown.tigers_fury.remains >= 15",
								["action"] = "berserk",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! up & variable.time_to_die > 1 + latency",
								["action"] = "savage_roar",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.clearcasting.up",
								["action"] = "swipe_cat",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.idol_of_the_corruptor = 1 & combo_points.current = 0 & buff.savage_roar.remains <= 1 & ( variable.time_to_die > buff.savage_roar.remains + 1 + latency ) & ! buff.clearcasting.up",
								["action"] = "mangle_cat",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! up & ! set_bonus.idol_of_the_corruptor = 1 & combo_points.current = 0 & buff.savage_roar.remains <= 1 & ( variable.time_to_die > buff.savage_roar.remains + 1 + latency ) & ! buff.clearcasting.up",
								["action"] = "rake",
							}, -- [7]
							{
								["action"] = "swipe_cat",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "should_flowerweave & mana.pct > settings.min_weave_mana & energy.current < 45",
								["action"] = "gift_of_the_wild",
							}, -- [9]
						},
						["bear"] = {
							{
								["enabled"] = true,
								["criteria"] = "! buff.clearcasting.up",
								["action"] = "faerie_fire_feral",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "should_cat",
								["action"] = "cat_form",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "enrage",
								["criteria"] = "cooldown.mangle_bear.up",
								["use_off_gcd"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "maul",
								["criteria"] = "! up & ! buff.clearcasting.up & rage.current >= action.maul.spend + ( cooldown.mangle_bear.up & action.mangle_bear.spend || 0 )",
								["use_off_gcd"] = 1,
							}, -- [4]
							{
								["action"] = "mangle_bear",
								["enabled"] = true,
							}, -- [5]
						},
						["init"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "ttd",
								["var_name"] = "time_to_die",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "end_thresh",
								["var_name"] = "end_thresh",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "combo_points.current = 5 & ( variable.time_to_die < variable.end_thresh || debuff.rip.up & variable.time_to_die - debuff.rip.remains < variable.end_thresh )",
								["var_name"] = "bite_at_end",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "combo_points.current = 5 & debuff.rip.remains >= settings.min_bite_rip_remains & buff.savage_roar.remains >= settings.min_bite_sr_remains",
								["var_name"] = "bite_before_rip",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.berserk.up & energy.current <= settings.max_bite_energy",
								["var_name"] = "bite_during_berserk",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "energy.current <= settings.max_ff_energy",
								["var_name"] = "ff_during_berserk",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "cooldown.tigers_fury.remains <= buff.berserk.duration & cooldown.tigers_fury.remains + 1 < variable.time_to_die - buff.berserk.duration",
								["var_name"] = "wait_for_tf",
							}, -- [7]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! debuff.rip.up & combo_points.current = 5 & variable.time_to_die >= variable.end_thresh",
								["var_name"] = "rip_now",
							}, -- [8]
						},
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "init",
							}, -- [1]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "hyperspeed_acceleration",
								["criteria"] = "set_bonus.tier7feral_4pc = 1 & ( buff.tigers_fury.up || cooldown.tigers_fury.remains >= 15 )",
								["use_off_gcd"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.dire_bear_form.up",
								["action"] = "run_action_list",
								["list_name"] = "bear",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.cat_form.up & active_enemies > 2",
								["action"] = "run_action_list",
								["list_name"] = "cat_aoe",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.cat_form.up",
								["action"] = "run_action_list",
								["list_name"] = "cat",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "cat_form",
							}, -- [8]
						},
					},
					["basedOn"] = "Feral DPS (IV)",
					["author"] = "Defzach",
				},
				["Balance (IV)"] = {
					["builtIn"] = true,
					["date"] = 20230228,
					["spec"] = 11,
					["desc"] = "Balance Druid priority for Hekili",
					["profile"] = "actions.precombat+=/mark_of_the_wild,if=!up&!buff.gift_of_the_wild.up\nactions.precombat+=/thorns,if=!up\nactions.precombat+=/moonkin_form,if=!up\nactions.precombat+=/potion\n\nactions+=/call_action_list,name=init\nactions+=/run_action_list,name=aoe,if=active_enemies>3\nactions+=/run_action_list,name=spam,if=variable.spam_now\nactions+=/run_action_list,name=fish\n\nactions.init+=/variable,name=lunar_spam_now,value=buff.eclipse_lunar.up\nactions.init+=/variable,name=solar_spam_now,value=buff.eclipse_solar.up\nactions.init+=/variable,name=spam_now,value=variable.lunar_spam_now||variable.solar_spam_now\nactions.init+=/variable,name=fish_now,value=!variable.lunar_spam_now&!variable.solar_spam_now\nactions.init+=/variable,name=lunar_can_proc,value=buff.eclipse_lunar.last_applied=0||query_time-buff.eclipse_lunar.last_applied>=30\nactions.init+=/variable,name=solar_can_proc,value=buff.eclipse_solar.last_applied=0||query_time-buff.eclipse_solar.last_applied>=30\nactions.init+=/variable,name=lunar_fish_now,value=variable.fish_now&variable.lunar_can_proc\nactions.init+=/variable,name=solar_fish_now,value=variable.fish_now&(variable.solar_can_proc||!variable.lunar_can_proc)\n\nactions.fish+=/starfire,if=buff.elunes_wrath.up&(!variable.lunar_fish_now||buff.elunes_wrath.remains<action.starfire.gcd||moving)\nactions.fish+=/moonfire,if=!debuff.moonfire.up&moving\nactions.fish+=/force_of_nature\nactions.fish+=/starfall\nactions.fish+=/faerie_fire,if=!up&(talent.improved_faerie_fire.enabled||group_members>=5||moving)\nactions.fish+=/insect_swarm,if=!debuff.insect_swarm.up\nactions.fish+=/typhoon,if=moving&glyph.typhoon.enabled\nactions.fish+=/moonfire,if=!debuff.moonfire.up&variable.lunar_fish_now&debuff.moonfire.remains<3\nactions.fish+=/wrath,if=variable.lunar_fish_now\nactions.fish+=/starfire,if=variable.solar_fish_now\n\nactions.spam+=/hyperspeed_acceleration,use_off_gcd=1,if=buff.eclipse_lunar.up&buff.eclipse_lunar.remains>settings.lunar_cooldown_leeway\nactions.spam+=/potion,use_off_gcd=1,if=buff.eclipse_lunar.up&buff.eclipse_lunar.remains>settings.lunar_cooldown_leeway\nactions.spam+=/use_items,use_off_gcd=1,if=buff.eclipse_lunar.up&buff.eclipse_lunar.remains>settings.lunar_cooldown_leeway\nactions.spam+=/starfire,if=buff.elunes_wrath.up\nactions.spam+=/insect_swarm,if=!debuff.insect_swarm.up&(!buff.eclipse_lunar.up||buff.eclipse_lunar.remains>7)\nactions.spam+=/wrath,if=variable.solar_spam_now\nactions.spam+=/starfire,if=variable.lunar_spam_now\n\nactions.aoe+=/typhoon,if=glyph.typhoon.enabled\nactions.aoe+=/starfall\nactions.aoe+=/hurricane",
					["version"] = 20230228,
					["warnings"] = "Imported 6 action lists.\n",
					["lists"] = {
						["fish"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.elunes_wrath.up & ( ! variable.lunar_fish_now || buff.elunes_wrath.remains < action.starfire.gcd || moving )",
								["action"] = "starfire",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.moonfire.up & moving",
								["action"] = "moonfire",
							}, -- [2]
							{
								["action"] = "force_of_nature",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "starfall",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! up & ( talent.improved_faerie_fire.enabled || group_members >= 5 || moving )",
								["action"] = "faerie_fire",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.insect_swarm.up",
								["action"] = "insect_swarm",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "moving & glyph.typhoon.enabled",
								["action"] = "typhoon",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.moonfire.up & variable.lunar_fish_now & debuff.moonfire.remains < 3",
								["action"] = "moonfire",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "variable.lunar_fish_now",
								["action"] = "wrath",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "variable.solar_fish_now",
								["action"] = "starfire",
							}, -- [10]
						},
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "init",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 3",
								["action"] = "run_action_list",
								["list_name"] = "aoe",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "variable.spam_now",
								["action"] = "run_action_list",
								["list_name"] = "spam",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "fish",
							}, -- [4]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "! up & ! buff.gift_of_the_wild.up",
								["action"] = "mark_of_the_wild",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "thorns",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "moonkin_form",
							}, -- [3]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [4]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "glyph.typhoon.enabled",
								["action"] = "typhoon",
							}, -- [1]
							{
								["action"] = "starfall",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "hurricane",
								["enabled"] = true,
							}, -- [3]
						},
						["spam"] = {
							{
								["enabled"] = true,
								["action"] = "hyperspeed_acceleration",
								["criteria"] = "buff.eclipse_lunar.up & buff.eclipse_lunar.remains > settings.lunar_cooldown_leeway",
								["use_off_gcd"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "potion",
								["criteria"] = "buff.eclipse_lunar.up & buff.eclipse_lunar.remains > settings.lunar_cooldown_leeway",
								["use_off_gcd"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "use_items",
								["criteria"] = "buff.eclipse_lunar.up & buff.eclipse_lunar.remains > settings.lunar_cooldown_leeway",
								["use_off_gcd"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.elunes_wrath.up",
								["action"] = "starfire",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.insect_swarm.up & ( ! buff.eclipse_lunar.up || buff.eclipse_lunar.remains > 7 )",
								["action"] = "insect_swarm",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "variable.solar_spam_now",
								["action"] = "wrath",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "variable.lunar_spam_now",
								["action"] = "starfire",
							}, -- [7]
						},
						["init"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.eclipse_lunar.up",
								["var_name"] = "lunar_spam_now",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.eclipse_solar.up",
								["var_name"] = "solar_spam_now",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "variable.lunar_spam_now || variable.solar_spam_now",
								["var_name"] = "spam_now",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! variable.lunar_spam_now & ! variable.solar_spam_now",
								["var_name"] = "fish_now",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.eclipse_lunar.last_applied = 0 || query_time - buff.eclipse_lunar.last_applied >= 30",
								["var_name"] = "lunar_can_proc",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.eclipse_solar.last_applied = 0 || query_time - buff.eclipse_solar.last_applied >= 30",
								["var_name"] = "solar_can_proc",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "variable.fish_now & variable.lunar_can_proc",
								["var_name"] = "lunar_fish_now",
							}, -- [7]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "variable.fish_now & ( variable.solar_can_proc || ! variable.lunar_can_proc )",
								["var_name"] = "solar_fish_now",
							}, -- [8]
						},
					},
					["author"] = "Defzach",
				},
				["Feral Tank (IV)"] = {
					["builtIn"] = true,
					["date"] = 20230206,
					["spec"] = 11,
					["desc"] = "WotLK Feral Druid Tank Priorities\n\nToggle advanced rotation recommendations in the class options.",
					["profile"] = "# APL v3.4.1-1.6.0 #\nactions.precombat+=/mark_of_the_wild,if=!up&!buff.gift_of_the_wild.up\nactions.precombat+=/thorns,if=!up\nactions.precombat+=/dire_bear_form,if=!up\nactions.precombat+=/potion\n\nactions+=/call_action_list,name=init\nactions+=/use_items\nactions+=/potion\nactions+=/hyperspeed_acceleration,use_off_gcd=1\nactions+=/run_action_list,name=bear_aoe,if=buff.dire_bear_form.up&active_enemies>4\nactions+=/run_action_list,name=bear,if=buff.dire_bear_form.up\nactions+=/dire_bear_form,if=!up\n\nactions.init+=/variable,name=time_to_die,value=(debuff.training_dummy.up&300)||target.time_to_die\nactions.init+=/variable,name=build_lacerate,value=!debuff.lacerate.up||debuff.lacerate.stack<5\nactions.init+=/variable,name=build_lacerate_cost,op=setif,if=variable.build_lacerate,value=action.lacerate.spend*(5-debuff.lacerate.stack),value_else=0\nactions.init+=/variable,name=maintain_lacerate,value=!variable.build_lacerate&debuff.lacerate.remains<8&debuff.lacerate.remains<variable.time_to_die\nactions.init+=/variable,name=maintain_lacerate_cost,op=setif,if=variable.maintain_lacerate,value=action.lacerate.spend,value_else=0\nactions.init+=/variable,name=emergency_lacerate,value=debuff.lacerate.up&debuff.lacerate.remains<4.5&debuff.lacerate.remains<variable.time_to_die\n\nactions.bear+=/faerie_fire_feral,if=target.outside2\nactions.bear+=/enrage,use_off_gcd=1,if=time<10\nactions.bear+=/berserk\nactions.bear+=/maul,use_off_gcd=1,if=rage.current>action.maul.spend+variable.build_lacerate_cost+variable.maintain_lacerate_cost+action.mangle_bear.spend\nactions.bear+=/lacerate,if=variable.emergency_lacerate\nactions.bear+=/mangle_bear\nactions.bear+=/faerie_fire_feral\nactions.bear+=/lacerate,if=variable.build_lacerate||variable.maintain_lacerate\nactions.bear+=/swipe_bear,if=rage.current>60\n\nactions.bear_aoe+=/enrage,use_off_gcd=1,if=time<10\nactions.bear_aoe+=/berserk\nactions.bear_aoe+=/maul,cycle_targets=1,use_off_gcd=1,if=rage.current>60\nactions.bear_aoe+=/swipe_bear,cycle_targets=1",
					["version"] = 20230206,
					["warnings"] = "Imported 5 action lists.\n",
					["lists"] = {
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "init",
							}, -- [1]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [3]
							{
								["use_off_gcd"] = 1,
								["action"] = "hyperspeed_acceleration",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.dire_bear_form.up & active_enemies > 4",
								["action"] = "run_action_list",
								["list_name"] = "bear_aoe",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.dire_bear_form.up",
								["action"] = "run_action_list",
								["list_name"] = "bear",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "dire_bear_form",
							}, -- [7]
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
								["value"] = "! debuff.lacerate.up || debuff.lacerate.stack < 5",
								["var_name"] = "build_lacerate",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "build_lacerate_cost",
								["criteria"] = "variable.build_lacerate",
								["value_else"] = "0",
								["value"] = "action.lacerate.spend * ( 5 - debuff.lacerate.stack )",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! variable.build_lacerate & debuff.lacerate.remains < 8 & debuff.lacerate.remains < variable.time_to_die",
								["var_name"] = "maintain_lacerate",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "maintain_lacerate_cost",
								["criteria"] = "variable.maintain_lacerate",
								["value_else"] = "0",
								["value"] = "action.lacerate.spend",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "debuff.lacerate.up & debuff.lacerate.remains < 4.5 & debuff.lacerate.remains < variable.time_to_die",
								["var_name"] = "emergency_lacerate",
							}, -- [6]
						},
						["bear"] = {
							{
								["enabled"] = true,
								["criteria"] = "target.outside2",
								["action"] = "faerie_fire_feral",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "enrage",
								["criteria"] = "time < 10",
								["use_off_gcd"] = 1,
							}, -- [2]
							{
								["action"] = "berserk",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "maul",
								["criteria"] = "rage.current > action.maul.spend + variable.build_lacerate_cost + variable.maintain_lacerate_cost + action.mangle_bear.spend",
								["use_off_gcd"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.emergency_lacerate",
								["action"] = "lacerate",
							}, -- [5]
							{
								["action"] = "mangle_bear",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "faerie_fire_feral",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "variable.build_lacerate || variable.maintain_lacerate",
								["action"] = "lacerate",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "rage.current > 60",
								["action"] = "swipe_bear",
							}, -- [9]
						},
						["bear_aoe"] = {
							{
								["enabled"] = true,
								["action"] = "enrage",
								["criteria"] = "time < 10",
								["use_off_gcd"] = 1,
							}, -- [1]
							{
								["action"] = "berserk",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "maul",
								["cycle_targets"] = 1,
								["use_off_gcd"] = 1,
								["criteria"] = "rage.current > 60",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "swipe_bear",
								["cycle_targets"] = 1,
							}, -- [4]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["description"] = "APL v3.4.1-1.6.0 #",
								["criteria"] = "! up & ! buff.gift_of_the_wild.up",
								["action"] = "mark_of_the_wild",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "thorns",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "dire_bear_form",
							}, -- [3]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [4]
						},
					},
					["basedOn"] = "Feral DPS (IV)",
					["author"] = "Defzach",
				},
			},
		},
	},
}
