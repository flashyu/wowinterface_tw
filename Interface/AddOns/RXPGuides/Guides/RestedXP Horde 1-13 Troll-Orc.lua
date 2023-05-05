local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#version 1
#group RestedXP部落1-30
#defaultfor Orc/Troll
#name 1-6杜洛塔尔
#next 6-10杜洛塔尔
step << !Orc !Troll
    #completewith next
    +|cFFFCDC00您选择了一个适合兽人和巨魔的指南。您应该选择在|r中开始的相同起始区域
step
    .goto Durotar,43.33,68.61 << wotlk
    .goto Durotar,43.29,68.53 << tbc
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kaltunk|r
    .accept 4641 >>接任务: |cFFFCDC00起点|r
    .target Kaltunk
step << Warrior/Shaman tbc/Warlock tbc
    #completewith next
    +|cFFFCDC00Kill|cFFFF5722斑点野猪|r。在您拥有34件价值铜的供应商物品（包括您的盔甲）之前，将其洗劫一空。|r << Warlock
    +|cFFFCDC00Kill|cFFFF5722斑点野猪|r。在你拥有10件价值铜的供应商物品（包括你的盔甲）之前，将它们洗劫一空。|r << Warrior/Shaman
    .goto Durotar,43.85,71.73,50,0 << Warlock
    .goto Durotar,44.19,65.34,50,0 << Warrior/Shaman
    .mob Mottled Boar
    .money >0.01
step << Warlock tbc
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ruzan|r
    .accept 1485 >>接任务: |cFFFCDC00邪灵劣魔|r
    .target Ruzan
step << Warrior/Shaman tbc
    .goto Durotar,43.49,67.35,30,0
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duokna|r
    .vendor >>供应商垃圾箱
    .target Duokna
    .money >0.01
step
    .goto Durotar,42.28,68.48,12,0 << Warlock/Shaman wotlk
    .goto Durotar,42.29,68.39,12,0 << Warrior/Shaman tbc
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gornek|r
    .turnin 4641 >>交任务: |cFF00FF25起点|r
    .accept 788 >>接任务: |cFFFCDC00小试身手|r
    .target Gornek
step << Warrior/Shaman tbc
    .goto Durotar,42.28,68.48,10,0 
    .goto Durotar,42.89,69.44 << Warrior
    .goto Durotar,42.39,69.00 << Shaman tbc
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Frang|r << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shikrik|r << Shaman tbc
    .train 6673 >>火车|T132333:0|t[战斗呐喊] << Warrior
    .train 8017 >>火车|T136086:0|t[火箭武器] << Shaman tbc
    .target Frang << Warrior
    .target Shikrik << Shaman tbc
step << Warlock tbc
    #completewith Nartok
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>前往|cFF00FF25Nartok|r
    .money <0.01
step << Warlock tbc
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>朝|cFF00FF25Hramg|r行驶
    .money >0.01
step << Warlock tbc
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Hraug|r
    .vendor >>供应商垃圾箱
    .target Hraug
    .money >0.01
step << Warlock tbc
    #label Nartok
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Nartok|r
    .train 348 >>火车|T135817:0|t[献祭]
    .target Nartok
step << !Warrior !Rogue
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duokna|r
    >>|cFF0E8312购买|r |T132794:0|t[清爽的泉水]|cFF0E6312 << !Hunter
    >>|cFF0E8312从她那里购买|r |T132382:0|t[粗箭头]|cFF0E6312 |r << Hunter
    .collect 159,30,6394,1 << !Hunter tbc --Refreshing Spring Water (30)
    .collect 159,10,6394,1 << !Hunter wotlk --Refreshing Spring Water (10)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .target Duokna
    .money <0.015 << !Hunter tbc
    .money <0.0048 << !Hunter wotlk
    .money <0.0040 << Hunter
step << Warlock tbc
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duokna|r
    >>|cFF0E8312购买|r |T132794:0|t[清爽的泉水]|cFF0E6312
    .collect 159,5,6394,1 --Refreshing Spring Water (5)
    .target Duokna
    .money <0.0024
step << Warlock tbc
    #completewith next
    .goto Durotar,43.57,67.28,25,0
    >>在前往燃烧之刃湾的途中杀死|cFFFF5722斑点野猪
    >>|cFFFCDC00在到达那里之前，尝试进入第二级|r
    >>|cFFFCDC00尽量不要使用|r|T132794:0|t[清爽的泉水]|cFFFCDC00|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock tbc
    .goto Durotar,45.30,56.42,100 >>前往燃烧之刃湾
    .isOnQuest 1485
step << Warlock tbc
    .loop 50,Durotar,43.87,58.42,44.53,58.62,45.18,58.42,45.83,58.59,45.79,57.43,46.46,57.57,47.19,57.12,46.21,56.69,46.28,56.11,45.65,56.90,45.35,56.32,44.77,56.87,44.58,56.10,44.27,56.59,43.85,55.52,43.87,58.42
    >>杀死|cFFFF5722家族成员|r。为|cFF00BCD4Vile熟悉的头部|r
    .complete 1485,1 --Vile Familiar Head (6)
    .mob Vile Familiar
step
    #completewith Sarkoth
    .goto Durotar,43.57,67.28,25,0 << !Warlock/wotlk
    .goto Durotar,43.89,65.84,45,0 << !Warlock/wotlk
    >>杀死|cFFFF5722斑点野猪|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step
    .goto Durotar,40.59,62.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Hana'zua|r
    .accept 790 >>接任务: |cFFFCDC00萨科斯|r
    .target Hana'zua
step
    #label Sarkoth
	.goto Durotar,40.88,66.41,40,0
	.goto Durotar,40.41,66.64,40,0
	.goto Durotar,40.43,67.36,40,0
	.goto Durotar,40.72,67.39,40,0
	.loop 20,Durotar,40.88,66.41,40.41,66.64,40.43,67.36,40.72,67.39,40.88,66.41
    >>杀死|cFFFF5722Sarkoth|r。抢了他|cFF00BCD4Sparkoth的癞爪|r
    .complete 790,1 --Sarkoth's Mangled Claw (1)
    .mob Sarkoth
step
    .goto Durotar,40.59,62.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Hana'zua|r
    .turnin 790 >>交任务: |cFF00FF25萨科斯|r
    .accept 804 >>接任务: |cFFFCDC00萨科斯|r
    .target Hana'zua
step
    .loop 50,Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.77,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
    >>杀死|cFFFF5722斑点野猪|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock tbc
    #xprate <1.5
    .loop 50,Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.77,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
    .xp 3+685>>研磨至685+/1400xp
    .mob Mottled Boar
step << Warlock tbc/wotlk
    #xprate 1.48-1.58
    .loop 50,Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.77,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
    .xp 3+845>>研磨至845+/1400xp << wotlk
    .xp 3+372>>研磨至372+/1400xp << Warlock tbc
    .mob Mottled Boar
--Cutting Teeth gives 50 more xp in wotlk
step << wotlk
    #xprate 1.58-1.68
    .loop 50,Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.77,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
    .xp 3+808>>研磨至808+/1400xp
    .mob Mottled Boar
step << wotlk
    #xprate >1.6999
    .loop 50,Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.77,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
    .xp 3+771>>研磨至771+/1400xp
    .mob Mottled Boar
step << !Warlock
    #xprate <1.5
    .loop 50,Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.77,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
    .xp 2+520>>研磨至520+/900xp << wotlk
    .xp 2+570>>研磨至570+/900xp << tbc
    .mob Mottled Boar
step << Warlock
    #xprate <1.5
    #completewith Duokna2 << wotlk
    #completewith Ruzan2 << tbc
	>>|cFFFCDC00Grind |cFFFF5722斑点野猪|r。把它们偷走，直到你有价值95铜的供应商物品。你也可以以13铜的价格出售你的装备
	.money >0.0095
    .mob Mottled Boar
step << Warlock
    #xprate >1.4999
    #completewith Duokna2 << wotlk
    #completewith Ruzan2 << tbc
	>>|cFFFCDC00Grind |cFFFF5722斑点野猪|r。将它们偷走，直到你有价值1银90铜的供应商物品。你也可以以13铜的价格出售你的装备
	.money >0.0190
    .mob Mottled Boar
step << Rogue/Warlock wotlk
    #label Duokna2
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duokna|r
    .vendor >>供应商垃圾箱
    .target Duokna
step << !Rogue !Warrior
    #label Duokna2
    #xprate >1.4999
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duokna|r
    >>|cFFFCDC00不要买|r|T132794:0|t[清爽的泉水]|cFFFCDC0还没有|r << !Hunter !Shaman
    .vendor >>供应商垃圾箱
    .target Duokna
    .money >0.1
step << Warlock tbc
    #label Ruzan2
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ruzan|r
    .turnin 1485 >>交任务: |cFF00FF25邪灵劣魔|r
    .accept 1499 >>接任务: |cFFFCDC00邪灵劣魔|r
    .target Ruzan
step << Warlock tbc
    #completewith Gornek2
    .cast 688 >>|cFFFCDC00Cast|r|T136218:0|t[召唤小鬼]
step << Warlock tbc
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zureetha|r
    .turnin 1499 >>交任务: |cFF00FF25邪灵劣魔|r 
    .accept 794 >>接任务: |cFFFCDC00火刃奖章|r
    .target Zureetha Fargaze
step
    #label Gornek2
    .goto Durotar,42.28,68.48,12,0 << Warlock
    .goto Durotar,42.29,68.39,12,0 << !Warlock
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gornek|r
    .turnin 788 >>交任务: |cFF00FF25小试身手|r
    .turnin 804 >>交任务: |cFF00FF25萨科斯|r
    .accept 2383 >>接任务: |cFFFCDC00简易羊皮纸|r << Orc Warrior
    .accept 3065 >>接任务: |cFFFCDC00普通石板|r << Troll Warrior
    .accept 3082 >>接任务: |cFFFCDC00风蚀石板|r << Troll Hunter
    .accept 3083 >>接任务: |cFFFCDC00密文石板|r << Troll Rogue
    .accept 3084 >>接任务: |cFFFCDC00符文石板|r << Troll Shaman
    .accept 3085 >>接任务: |cFFFCDC00神圣石板|r << Troll Priest
    .accept 3086 >>接任务: |cFFFCDC00雕文石板|r << Troll Mage
    .accept 3087 >>接任务: |cFFFCDC00风蚀羊皮纸|r << Orc Hunter
    .accept 3088 >>接任务: |cFFFCDC00密文羊皮纸|r << Orc Rogue
    .accept 3089 >>接任务: |cFFFCDC00符文羊皮纸|r << Orc Shaman
    .accept 3090 >>接任务: |cFFFCDC00被污染的羊皮纸|r << Orc Warlock
    .accept 789 >>接任务: |cFFFCDC00工蝎的尾巴|r
    .target Gornek
step << Rogue
    #completewith Rwag
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>向|cFF00FF25Rwag|r行驶
step << Rogue
    #xprate >1.4999
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Rwag|r
    .turnin 3083 >>交任务: |cFF00FF25密文石板|r << Troll Rogue 
    .turnin 3088 >>交任务: |cFF00FF25密文羊皮纸|r << Orc Rogue 
    .train 53 >>列车|T132090:0|t[后标签]
    .money <0.04
    .target Rwag
step << Rogue
    #label Rwag
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Rwag|r
    .turnin 3083 >>交任务: |cFF00FF25密文石板|r << Troll Rogue 
    .turnin 3088 >>交任务: |cFF00FF25密文羊皮纸|r << Orc Rogue 
    .target Rwag
step << Warlock
    #completewith Nartok2
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>前往|cFF00FF25Nartok|r
    .money <0.01 << tbc
step << Warlock tbc
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>朝|cFF00FF25Hramg|r行驶
    .money >0.01
step << Warlock tbc
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Hraug|r
    .vendor >>供应商垃圾箱
    .target Hraug
    .money >0.01
--95c for imp
step << Warlock tbc
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Nartok|r
    .turnin 3090 >>交任务: 被污染的羊皮纸
    .train 172 >>列车|T136118:0|t[腐败]
	.train 688 >>列车召唤小鬼 << wotlk
    .target Nartok
step << Warlock wotlk
    #xprate >1.4999
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Nartok|r
    .turnin 3090 >>交任务: 被污染的羊皮纸
    .train 172 >>列车|T136118:0|t[腐败]
	.train 688 >>列车|T136218:0|t[召唤入口]
    .target Nartok
step << Warlock wotlk
    #xprate <1.5
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Nartok|r
    .turnin 3090 >>交任务: 被污染的羊皮纸
	.train 688 >>列车|T136218:0|t[召唤入口]
    .target Nartok
step << Warlock wotlk
    #completewith next
    .cast 688 >>|cFFFCDC00Cast|r|T136218:0|t[召唤小鬼]
step
    #sticky
    #label Galgar
    .goto Durotar,42.73,67.23,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Galgar|r
    .accept 4402 >>接任务: |cFFFCDC00戈加尔的清凉果|r
    .target Galgar
step
    #xprate <1.5
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duokna|r
    >>|cFF0E8312购买|r |T132794:0|t[清爽的泉水]|cFF0E6312 << !Rogue !Warrior !Hunter !Shaman
    >>|cFF0E8312从她那里购买|r |T132382:0|t[粗箭头]|cFF0E6312 |r << Hunter
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman tbc --Refreshing Spring Water (15)
    .collect 159,5,6394,1 << !Rogue !Warrior !Hunter !Shaman wotlk --Refreshing Spring Water (5)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >>供应商垃圾箱
    .target Duokna
    .money >0.1 << Rogue/Warrior/Shaman
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman tbc
    .itemcount 159,<5 << !Rogue !Warrior !Hunter !Shaman wotlk
    .itemcount 2512,<600 << Hunter
step
    #xprate >1.4999
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duokna|r
    >>|cFF0E8312购买|r |T132794:0|t[清爽的泉水]|cFF0E6312 << !Rogue !Warrior !Hunter !Shaman
    >>|cFF0E8312从她那里购买|r |T132382:0|t[粗箭头]|cFF0E6312 |r << Hunter
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman tbc --Refreshing Spring Water (15)
    .collect 159,5,6394,1 << !Rogue !Warrior !Hunter !Shaman wotlk --Refreshing Spring Water (5)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >>供应商垃圾箱
    .target Duokna
    .money <0.0177 << Priest tbc/Mage tbc
    .money <0.0145 << Hunter
    .money <0.0129 << Priest wotlk/Mage wotlk
    .money <0.0072 << Warlock tbc
    .money <0.0024 << Warlock wotlk
    .money >0.1 << Rogue/Warrior/Shaman
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman tbc
    .itemcount 159,<5 << !Rogue !Warrior !Hunter !Shaman tbc
    .itemcount 2512,<600 << Hunter
step << Hunter
    #xprate >1.4999
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duokna|r
    >>|cFF0E8312从她那里购买|r |T132382:0|t[粗箭头]|cFF0E6312 |r
    .collect 2512,400,6394,1 --Rough Arrow (400)
    .vendor >>供应商垃圾箱
    .target Duokna
    .money <0.0115
    .itemcount 2512,<200
step << Hunter
    #xprate >1.4999
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duokna|r
    >>|cFF0E8312从她那里购买|r |T132382:0|t[粗箭头]|cFF0E6312 |r
    .collect 2512,200,6394,1 --Rough Arrow (200)
    .vendor >>供应商垃圾箱
    .target Duokna
    .money <0.0105
    .itemcount 2512,<200
step << Priest
    #xprate >1.4999
    #requires Galgar
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ken'jai|r
    .train 589 >>训练你的职业技能
    .turnin 3085 >>交任务: |cFF00FF25神圣石板|r
    .money <0.02
    .target Ken'jai
step << Priest
    #xprate >1.4999
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ken'jai|r
    .train 1243 >>火车|T135987:0|t[强力词：坚韧]
    .train 589 >>火车|T136207:0|t[阴影词：痛苦]
    .turnin 3085 >>交任务: |cFF00FF25神圣石板|r
    .money <0.0105
    .target Ken'jai
step << Priest
    #xprate >1.4999
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ken'jai|r
    .train 589 >>火车|T136207:0|t[阴影词：痛苦]
    .turnin 3085 >>交任务: |cFF00FF25神圣石板|r
    .money <0.0095
    .target Ken'jai
step << skip
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ken'jai|r
    .train 1243 >>火车|T135987:0|t[强力词：坚韧]
    .turnin 3085 >>交任务: |cFF00FF25神圣石板|r
    .money >0.1
    .target Ken'jai
--VV stam is useless at the start
step << Priest
    #requires Galgar
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ken'jai|r
    .turnin 3085 >>交任务: |cFF00FF25神圣石板|r
    .target Ken'jai
step << Shaman
    #xprate >1.4999
    #requires Galgar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shikrik|r and |cFF00FF25Canaga|r
    .turnin 3084 >>交任务: |cFF00FF25符文石板|r << Troll
    .turnin 3089 >>交任务: |cFF00FF25符文羊皮纸|r << Orc
    .train 8017 >>火车|T136086:0|t[火箭武器] << wotlk
    .train 8042 >>列车|T136026:0|t[地震]
    .goto Durotar,42.39,69.00
    .accept 1516 >>接任务: |cFFFCDC00大地的召唤|r
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Shaman
    #requires Galgar
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shikrik|r
    .turnin 3084 >>交任务: |cFF00FF25符文石板|r << Troll
    .turnin 3089 >>交任务: |cFF00FF25符文羊皮纸|r << Orc
    .train 8017 >>火车|T136086:0|t[火箭武器] << wotlk
    .target Shikrik
step << Mage
    #xprate >1.4999
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Mai'ah|r
    .turnin 3086 >>交任务: |cFF00FF25雕文石板|r << Troll
    .train 1459 >>列车|T135932:0|t[奥秘智力]
    .train 116 >>列车|T135846:0|t[霜冻螺栓]
    .target Mai'ah
step << Mage
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Mai'ah|r
    .turnin 3086 >>交任务: |cFF00FF25雕文石板|r << Troll
    .train 1459 >>列车|T135932:0|t[奥秘智力]
    .target Mai'ah
step << !Warlock/wotlk
    #requires Galgar
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zureetha|r
    .accept 792 >>接任务: |cFFFCDC00邪灵劣魔|r
    .target Zureetha Fargaze
step << Hunter
    #xprate >1.4999
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jen'shan|r
    .turnin 3082 >>交任务: |cFF00FF25风蚀石板|r << Troll
    .turnin 3087 >>交任务: |cFF00FF25风蚀羊皮纸|r << Orc
    .train 1978 >>列车|T132204:0|t[蛇刺]
    .target Jen'shan
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jen'shan|r
    .turnin 3082 >>交任务: |cFF00FF25风蚀石板|r << Troll
    .turnin 3087 >>交任务: |cFF00FF25风蚀羊皮纸|r << Orc
    .target Jen'shan
step << Warrior
    #xprate >1.4999
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Frang|r
    .turnin 2383 >>交任务: |cFF00FF25简易羊皮纸|r << Orc
    .turnin 3065 >>交任务: |cFF00FF25普通石板|r << Troll
    .train 100 >>列车|T132337:0|t[收费]
    .train 772 >>列车|T132155:0|t[伦德]
    .target Frang
    .money <0.0190
step << Warrior
    #xprate >1.4999
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Frang|r
    .turnin 2383 >>交任务: |cFF00FF25简易羊皮纸|r << Orc
    .turnin 3065 >>交任务: |cFF00FF25普通石板|r << Troll
    .train 100 >>列车|T132337:0|t[收费]
    .target Frang
    .money <0.0095
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Frang|r
    .turnin 2383 >>交任务: |cFF00FF25简易羊皮纸|r << Orc
    .turnin 3065 >>交任务: |cFF00FF25普通石板|r << Troll
    .target Frang
step
    #requires Galgar << Warlock
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Thazz'ril|r
    .accept 5441 >>接任务: |cFFFCDC00懒惰的苦工|r
    .target Foreman Thazz'ril
step
    #completewith Sting
    >>在仙人掌附近|cFF00BCD4Cacts Apples|r
    .complete 4402,1 --Cactus Apple (10) Vanilla/TBC, (6) WOTLK
step
    #completewith Tails
    .goto Durotar,44.98,69.13,20,0
    .goto Durotar,45.64,65.70,45,0
    .goto Durotar,47.37,65.67,45,0
    >>睡觉时使用|T133486:0|t[Forman的21点]|cFF00FF25Lazy Peons |r
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step << !Warlock/wotlk
    #completewith Imps
    >>杀死|cFFFF5722坏工人|r。为|cFF00BCD4Corpid Worker Tails|r
    .complete 789,1 --Scorpid Worker Tail (10) Vanilla/TBC, (8) WOTLK
    .mob Scorpid Worker
step << !Warlock/wotlk
    #label Imps
    .loop 45,Durotar,43.87,58.42,44.53,58.62,45.18,58.42,45.83,58.59,45.79,57.43,46.46,57.57,47.19,57.12,46.21,56.69,46.28,56.11,45.65,56.90,45.35,56.32,44.77,56.87,44.58,56.10,44.27,56.59,43.85,55.52,43.87,58.42
    >>杀死|cFFFF5722邪恶家族|r
    .complete 792,1 --Vile Familiar (12) Vanilla/TBC, (8) WOTLK
    .mob Vile Familiar
step
    #label Tails
    .loop 45,Durotar,43.26,58.28,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.28,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.28
    >>杀死|cFFFF5722坏工人|r。为|cFF00BCD4Corpid Worker Tails|r
    .complete 789,1 --Scorpid Worker Tail (10) Vanilla/TBC, (8) WOTLK
    .mob Scorpid Worker
step
    .loop 40,Durotar,44.98,69.13,45.64,65.70,47.37,65.67,46.74,60.66,47.09,57.90,43.90,57.79,42.70,57.25,41.27,58.95,40.91,60.41,38.83,61.84,44.98,69.13
    >>睡觉时使用|T133486:0|t[Forman的21点]|cFF00FF25Lazy Peons |r
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step
    #xprate <1.5
    .loop 50,Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.77,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
    .xp 4 >>研磨至4级
    .mob Mottled Boar
    .mob Scorpid Worker
    .mob Vile Familiar
step
    .goto Durotar,42.73,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Galgar|r
    .turnin 4402 >>交任务: |cFF00FF25戈加尔的清凉果|r
    .target Galgar
    .isQuestComplete 4402
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duokna|r
    >>|cFF0E8312购买|r |T132794:0|t[清爽的泉水]|cFF0E6312 << !Rogue !Warrior !Hunter
    >>|cFF0E8312从她那里购买|r |T132382:0|t[粗箭头]|cFF0E6312 |r << Hunter
    .collect 159,5,6394,1 << !Rogue !Warrior !Hunter --Refreshing Spring Water (5)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >>供应商垃圾箱
    .target Duokna
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<5 << !Rogue !Warrior !Hunter !Shaman
    .itemcount 159,<2 << Shaman
    .itemcount 2512,<600 << Hunter
step
    #label Sting
    .goto Durotar,42.29,68.39,12,0
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gornek|r
    .turnin 789 >>交任务: |cFF00FF25工蝎的尾巴|r
    .target Gornek
step << Shaman
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shikrik|r and |cFF00FF25Canaga|r
    .train 8042 >>列车|T136026:0|t[地震]
    .goto Durotar,42.39,69.00
    .accept 1516 >>接任务: |cFFFCDC00大地的召唤|r
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller 
step << Mage
    #xprate <1.5
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Mai'ah|r
    .train 116 >>列车|T135846:0|t[霜冻螺栓]
    .target Mai'ah
step << Priest
    #xprate <1.5
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ken'jai|r
    .train 589 >>训练你的职业技能
    .money <0.02
    .target Ken'jai
step << Priest
    #xprate <1.5
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ken'jai|r
    .train 1243 >>火车|T135987:0|t[强力词：坚韧]
    .train 589 >>火车|T136207:0|t[阴影词：痛苦]
    .money <0.0105
    .target Ken'jai
step << Priest
    #xprate <1.5
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ken'jai|r
    .train 589 >>火车|T136207:0|t[阴影词：痛苦]
    .money <0.0095
    .target Ken'jai
step << !Warlock/wotlk
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zureetha|r
    .turnin 792 >>交任务: |cFF00FF25邪灵劣魔|r
    .accept 794 >>接任务: |cFFFCDC00火刃奖章|r
    .target Zureetha Fargaze
step << Hunter
    #xprate <1.5
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jen'shan|r
    .train 1978 >>列车|T132204:0|t[蛇刺]
    .target Jen'shan
 step << Warrior
    #xprate <1.5
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Frang|r
    .train 100 >>列车|T132337:0|t[收费]
    .train 772 >>列车|T132155:0|t[伦德]
    .target Frang
    .money <0.0190
step << Warrior
    #xprate <1.5
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Frang|r
    .train 100 >>列车|T132337:0|t[收费]
    .target Frang
    .money <0.0095
step
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Thazz'ril|r
    .turnin 5441 >>交任务: |cFF00FF25懒惰的苦工|r
    .accept 6394 >>接任务: |cFFFCDC00塔兹利尔的镐|r
    .target Foreman Thazz'ril
step
    #xprate <1.5
    #completewith next
    .xp 4+1720>>研磨至1720+/2100xp
    .mob Mottled Boar
    .mob Scorpid Worker
    .mob Vile Familiar
    .isOnQuest 4402
step
    .goto Durotar,44.67,64.92,25,0
    .goto Durotar,43.45,62.96,25,0
    .goto Durotar,43.82,62.72,25,0
    .goto Durotar,44.85,61.54,25,0
    .goto Durotar,44.88,59.66,25,0
    .goto Durotar,44.61,58.20,25,0
    .goto Durotar,45.46,58.49,25,0
    .goto Durotar,45.93,60.62,25,0
    .goto Durotar,46.87,60.36,25,0
    .goto Durotar,47.28,62.80,25,0
    .goto Durotar,46.08,62.98,25,0
    .loop 25,Durotar,44.67,64.92,43.45,62.96,43.82,62.72,44.85,61.54,44.88,59.66,44.61,58.20,45.46,58.49,45.93,60.62,46.87,60.36,47.28,62.80,46.08,62.98,44.67,64.92
    >>在仙人掌附近|cFF00BCD4Cacts Apples|r
    .complete 4402,1 --Cactus Apple (10) Vanilla/TBC, (6) WOTLK
step << !Warrior !Rogue !Shaman/wotlk
    #xprate <1.5
    .loop 45,Durotar,43.87,58.42,44.53,58.62,45.18,58.42,45.83,58.59,45.79,57.43,46.46,57.57,47.19,57.12,46.21,56.69,46.28,56.11,45.65,56.90,45.35,56.32,44.77,56.87,44.58,56.10,44.27,56.59,43.85,55.52,43.87,58.42
    .xp 4+1720>>研磨至1720+/2100xp
    .mob Vile Familiar
    .isOnQuest 4402
step << !Warrior !Rogue !Shaman/wotlk
    #xprate <1.5
    .loop 45,Durotar,43.87,58.42,44.53,58.62,45.18,58.42,45.83,58.59,45.79,57.43,46.46,57.57,47.19,57.12,46.21,56.69,46.28,56.11,45.65,56.90,45.35,56.32,44.77,56.87,44.58,56.10,44.27,56.59,43.85,55.52,43.87,58.42
    .xp 5 >>研磨至5级
    .mob Vile Familiar
    .isQuestTurnedIn 4402
step
	#completewith Thazz
    #label Cave
    .goto Durotar,45.35,56.27,30 >>进入洞穴
    .isOnQuest 6394
step
	#completewith Thazz
    #requires Cave
    .goto Durotar,45.37,55.39,15,0
    .goto Durotar,44.43,54.51,15,0
    .goto Durotar,43.72,53.79,10 >>前往|cFF00BCD4Thazz'ril's Pick|r
    .isOnQuest 6394
step << Shaman
    #completewith Yarrog
    #requires Cave
    >>杀死|cFFFF5722罪犯|r。为|cFF00BCD4Felstalker Hooves|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #label Thazz
    .goto Durotar,43.72,53.79
    >>靠墙抢劫|cFF00BCD4危险品
    .complete 6394,1 --Thazz'ril's Pick (1)
step
	#completewith next
    .goto Durotar,44.43,54.51,15,0
    .goto Durotar,44.77,53.33,15,0
    .goto Durotar,43.88,52.71,15,0
    .goto Durotar,43.39,52.07,15,0
    .goto Durotar,42.90,52.34,15,0
    .goto Durotar,42.70,52.99,35 >>前往|cFFFF5722Yarrog Baneshadow|r
step
    #label Yarrog
    .goto Durotar,42.70,52.99
    >>杀死|cFFFF5722Yarrog Baneshadow|r。抢夺他获得|cFF00BCD4燃烧之刃奖章|r
    .complete 794,1 --Burning Blade Medallion (1)
	.mob Yarrog Baneshadow
step << Shaman
    .loop 25,Durotar,42.70,52.99,42.97,51.14,43.56,52.05,43.74,52.65,44.13,52.85,44.82,52.51,44.83,53.40,44.78,54.57,45.14,55.02,45.51,55.23,45.14,55.02,44.51,55.03,44.21,54.12,43.92,54.30,43.87,55.22,43.46,55.56,43.05,55.24,42.38,54.22,42.53,53.48,43.27,53.82,42.70,52.99
    >>杀死|cFFFF5722罪犯|r。为|cFF00BCD4Felstalker Hooves|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #xprate <1.5
    .loop 25,Durotar,42.70,52.99,42.97,51.14,43.56,52.05,43.74,52.65,44.13,52.85,44.82,52.51,44.83,53.40,44.78,54.57,45.14,55.02,45.51,55.23,45.14,55.02,44.51,55.03,44.21,54.12,43.92,54.30,43.87,55.22,43.46,55.56,43.05,55.24,42.38,54.22,42.53,53.48,43.27,53.82,42.70,52.99
    .xp 5+1635>>研磨至1635+/28000p << !Shaman
    .xp 5+645>>研磨至645+/28000p << Shaman
    .isQuestTurnedIn 4402
step
    #xprate <1.5
    .loop 25,Durotar,42.70,52.99,42.97,51.14,43.56,52.05,43.74,52.65,44.13,52.85,44.82,52.51,44.83,53.40,44.78,54.57,45.14,55.02,45.51,55.23,45.14,55.02,44.51,55.03,44.21,54.12,43.92,54.30,43.87,55.22,43.46,55.56,43.05,55.24,42.38,54.22,42.53,53.48,43.27,53.82,42.70,52.99
    .xp 5+1255>>研磨至1255+/2800xp << !Shaman
    .xp 5+265>>研磨至265+/28000p << Shaman
    .isOnQuest 4402
step
	#completewith next
    .goto Durotar,44.70,52.47
    .goto Durotar,53.55,44.68,30 >>|cFFFCDC00通过将角色放置在岩石边缘，直到它们看起来漂浮，然后注销并返回|r来执行注销跳过
	.link https://www.youtube.com/watch?v=7vmnvdjbUnM >>单击此处
step
    .goto Durotar,51.95,43.50
    >>|cFFFCDC00你可以从外面或掩体顶部与他交谈
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gar'thok|r
    .accept 784 >>接任务: |cFFFCDC00背信弃义的人类|r
    .target Gar'thok
step
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>向塔行进
step
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>沿着塔向Furl行进
step
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Furl|r
    .accept 791 >>接任务: |cFFFCDC00新的背包|r
    .target Furl Scornbrow
step
    #completewith next
    .hs >>审判谷之心
step
    #xprate <1.5
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Thazz'ril|r
    .turnin 6394 >>交任务: |cFF00FF25塔兹利尔的镐|r
    .target Foreman Thazz'ril
step
    #xprate >1.4999
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Thazz'ril|r
    .turnin 6394 >>交任务: |cFF00FF25塔兹利尔的镐|r
    .target Foreman Thazz'ril
    .xp 5+1795,1 << !Shaman
    .xp 5+310,1 << Shaman
step
    .goto Durotar,42.73,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Galgar|r
    .turnin 4402 >>交任务: |cFF00FF25戈加尔的清凉果|r
    .target Galgar
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duokna|r
    .vendor >>供应商垃圾箱
    .target Duokna
    .money >0.03
step
    .goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zureetha|r
    .turnin 794 >>交任务: |cFF00FF25火刃奖章|r
    .accept 805 >>接任务: |cFFFCDC00去森金村报到|r
    .target Zureetha Fargaze
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ken'jai|r
	.accept 5649 >>接任务: |cFFFCDC00部族的传统|r
	.train 591 >>列车|T135924:0|t[Smite]
    .train 17 >>列车|T135940:0|t[电源字：屏蔽]
    .target Ken'jai
step << Mage
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Mai'ah|r
    .train 143 >>列车|T135812:0|t[火球]
    .train 2136 >>列车|T135807:0|t[火灾爆炸]
    .target Mai'ah
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shikrik|r and |cFF00FF25Canaga|r
    .train 332 >>列车|T136052:0|t[治疗波]
    .goto Durotar,42.39,69.00
    .turnin 1516 >>交任务: |cFF00FF25大地的召唤|r
    .accept 1517 >>接任务: |cFFFCDC00大地的召唤|r
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
    .xp <6,1
step << Shaman
    .goto Durotar,42.40,69.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Canaga|r
    .turnin 1516 >>交任务: |cFF00FF25大地的召唤|r
    .accept 1517 >>接任务: |cFFFCDC00大地的召唤|r
    .target Canaga Earthcaller
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jen'shan|r
    .train 1130 >>火车|T132212:0|t[猎人标记]
    .train 3044 >>火车|T132218:0|t[奥术射击]
    .target Jen'shan
    .money <0.0190
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jen'shan|r
    .train 3044 >>火车|T132218:0|t[奥术射击]
    .target Jen'shan
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Frang|r
    .train 3127 >>列车|T132269:0|t[Parry]
    .train 6343 >>火车|T136105:0|t[霹雳]
    .train 34428 >>火车|T132342:0|t[胜利冲刺] << wotlk
    .target Frang
    .money <0.0285 << wotlk
    .money <0.0190 << tbc
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Frang|r
    .train 3127 >>列车|T132269:0|t[Parry]
    .train 34428 >>火车|T132342:0|t[胜利冲刺] << wotlk
    .target Frang
    .money <0.0190 << wotlk
    .money <0.0095 << tbc
step << Rogue
    #completewith Rwag2
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>向|cFF00FF25Rwag|r行驶
step << Rogue
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Rwag|r
    .train 1757 >>火车|T136189:0|t[邪恶的打击]
    .train 1776 >>列车|T132155:0|t[Gouge]
    .target Rwag
    .money <0.0190
step << Rogue
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Rwag|r
    .train 1757 >>火车|T136189:0|t[邪恶的打击]
    .target Rwag
    .money <0.0095
step << Warlock wotlk
    #completewith Nartok3
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>前往|cFF00FF25Nartok|r
step << Warlock tbc
    #completewith Hraug3
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>朝|cFF00FF25Hramg|r行驶
step << Warlock tbc
    #label Hraug3
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Hraug|r
    >>|cFF0E8312从他那里购买|r |T133738:0|t[Grimoire of Blood Pact]|cFF0E6312 |r
    .collect 16321,1,817,1 --Grimoire of Blood Pact
    .vendor >>供应商垃圾箱
    .target Hraug
    .money <0.0285
step << Warlock
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Nartok|r
    .train 695 >>列车|T136197:0|t[影子螺栓]
    .train 1454 >>列车|T136126:0|t[生命抽头]
    .target Nartok
    .money <0.0190
step << Warlock
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Nartok|r
    .train 695 >>列车|T136197:0|t[影子螺栓]
    .target Nartok
    .money <0.0095
step << Warlock tbc
    #completewith Leave
    .train 20397 >>使用| T133738:0 | t[血之约定书]
    .itemcount 16321,1
    .use 16321
step << Shaman
    #completewith CallOE1
    #label Shrine
    .goto Durotar,43.36,69.60,25,0
    .goto Durotar,43.18,70.93,25,0
    .goto Durotar,41.31,73.63,12,0
    .goto Durotar,40.82,74.37,8,0
    .goto Durotar,42.71,75.18,10,0
    .goto Durotar,43.57,75.51,15,0
    .goto Durotar,44.13,76.36,25 >>前往|cFFDB2EEFShaman神社|r
    .isOnQuest 1517
step << Shaman
    #completewith next
    #requires Shrine
    .cast 8202 >>使用|T134743:0|t[地球莎普塔]
    .use 6635
step << Shaman
    #label CallOE1
    .goto Durotar,44.03,76.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cFF00FF25Manifestation|r
    .turnin 1517 >>交任务: |cFF00FF25大地的召唤|r
    .accept 1518 >>接任务: |cFFFCDC00大地的召唤|r
    .target Minor Manifestation of Earth
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Canaga|r
    .goto Durotar,42.40,69.17
    .turnin 1518 >>交任务: |cFF00FF25大地的召唤|r
    .target Canaga Earthcaller
step << Shaman
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shikrik|r
    .train 332 >>列车|T136052:0|t[治疗波]
    .target Shikrik
step
    #xprate >1.4999
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Thazz'ril|r
    .turnin 6394 >>交任务: |cFF00FF25塔兹利尔的镐|r
    .target Foreman Thazz'ril
step
    #label Leave
    .goto Durotar,47.09,69.21,25,0
    .goto Durotar,49.02,69.13,20,0
    .goto Durotar,49.90,68.43,25 >>退出审判谷
    .isOnQuest 805
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 6-10杜洛塔尔
#version 1
#group RestedXP部落1-30
#next 10-13 杜隆塔尔 << Warrior/Shaman
#next 10-12 Eversong树林 << !Warrior !Shaman

step
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ukor|r
    .accept 2161 >>接任务: |cFFFCDC00苦工的重担|r
    .target Ukor
step
    .goto Durotar,54.3,73.3,15,0
    .goto Durotar,54.5,75.0,15,0
    .goto Durotar,54.1,76.6,15,0
    .goto Durotar,54.3,73.3,15,0
    .goto Durotar,54.5,75.0,15,0
    .goto Durotar,54.1,76.6
    >>与拉尔·普罗图斯克交谈。他在3个点之间巡逻
.target Lar Prowltusk
>>与|cFF00FF25Lar Prowltusk|r交谈
    .accept 786 >>接任务: |cFFFCDC00科卡尔半人马的进攻|r
    .unitscan Lar Prowltusk
step
    >>在小屋里与Vel'rin Fang交谈
.target Vel'rin Fang
>>与|cFF00FF25Vel'rin Fang|r交谈
    .accept 817 >>接任务: |cFFFCDC00生活所需的虎皮|r
    .goto Durotar,56.0,73.9
    >>在池边与沃纳尔大师和加德林交谈
.target Master Vornal
>>与|cFF00FF25Master Vornal|r交谈
    .accept 818 >>接任务: |cFFFCDC00沃纳尔大师|r
    .goto Durotar,55.9,74.4
>>与|cFF00FF25Master Gadrin|r交谈
    .turnin 805 >>交任务: |cFF00FF25去森金村报到|r
    .goto Durotar,55.9,74.7
.target Master Gadrin
    .accept 808 >>接任务: |cFFFCDC00明希纳的颅骨|r
    .accept 826 >>接任务: |cFFFCDC00扎拉赞恩|r
    .accept 823 >>接任务: |cFFFCDC00向奥戈尼尔报告|r
step << Shaman
    .goto Durotar,56.5,73.1
    .vendor >>供应商垃圾。如果你有足够的钱买手杖(4s80c)，就把你的武器卖掉。如果你还不够，你会回来的
step << Shaman
    .goto Durotar,56.5,73.1
    .money <0.0480
    >>买根手杖并装备它
    .collect 2495,1 --Collect Walking Stick
step << Rogue
.goto Durotar,56.5,73.1
.vendor >>供应商垃圾。如果你的武器能给你足够的钱买斯蒂莱托(3s82c)，就把它卖掉。如果你还不够，你会回来的
step << Rogue
    .goto Durotar,56.5,73.1
    .money <0.0382
    >>购买细高跟鞋并装备它
    .collect 2494,1 --Collect Stiletto
step << Orc Warrior
    .goto Durotar,56.5,73.1
.vendor >>供应商垃圾。如果你的武器有足够的钱买大斧(4s60c)，就卖掉它。如果你还不够，你会回来的
step << Orc Warrior
    .goto Durotar,56.5,73.1
    .money <0.0460
    >>购买一把大斧子并装备它
    .collect 2491,1 --Collect Large Axe
step << Paladin
    .goto Durotar,56.5,73.1
.vendor >>供应商垃圾。如果能给你足够的钱买格拉迪斯(5s9c)，就卖掉你的武器。如果你还不够，你会回来的
step << Paladin
    .goto Durotar,56.5,73.1
    .money <0.0509
    >>购买Gladius并装备它
    .collect 2488,1 --Collect Gladius
step << Hunter
    .goto Durotar,56.5,73.1
.vendor >>供应商垃圾。如果能给你足够的钱买Hornwood Recurve Bow(2s 71c)，就卖掉你的武器。如果你还不够，你会回来的
step << Hunter
    .goto Durotar,56.5,73.1
    .money <0.0271
    >>购买Hornwood递归弓并装备
    .collect 2506,1 --Collect Hornwood Recurve Bow
step
#sticky
#completewith next
.goto Durotar,59.7,71.7,0
    .goto Durotar,57.6,77.9,0
    >>为了黏液和眼睛，尽可能多地杀死爬行动物和马克鲁拉。这个任务可以稍后完成。
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
step
    .goto Durotar,52.1,83.3,75 >>到达海滩尽头
step
.goto Durotar,50.9,79.2,15 >>进入科尔卡基地
step
    #sticky
    #completewith Bonfire
    +如果军阀科尔卡尼斯正在阻止一个计划，在你7级时杀死他。确保使用仙人掌苹果惊喜+2 stam，并使用早期的治疗药剂。
    .unitscan Warlord Kolkanis
step
    >>在帐篷里的地上。
.goto Durotar,49.8,81.2
    .complete 786,1 --Attack Plan: Valley of Trials destroyed (1)
step
    .goto Durotar,47.7,77.4
    .complete 786,2 --Attack Plan: Sen'jin Village destroyed (1)
step
    #label Bonfire
.goto Durotar,46.3,79.0
    .complete 786,3 --Attack Plan: Orgrimmar destroyed (1)
step
    #completewith bonfireskip
    .deathskip >>在篝火中死去，在精神治疗者那里重生，或者跑回森津村
step << Shaman
    .goto Durotar,56.6,73.1
    .money <0.0480
    >>从外面楼梯下面与Traxexir交谈
    >>买根手杖并装备它
    .collect 2495,1 --Collect Walking Stick
step << Rogue
    .goto Durotar,56.5,73.1
    .money <0.0382
    >>从外面楼梯下面与Traxexir交谈
    >>购买细高跟鞋并装备它
    .collect 2494,1 --Collect Stiletto
step << Orc Warrior
    .money <0.0460
    .goto Durotar,56.5,73.1
    >>从外面楼梯下面与Traxexir交谈
    >>购买一把大斧子并装备它
    .collect 2491,1 --Collect Large Axe
step << Paladin
    .goto Durotar,56.5,73.1
    .money <0.0509
    >>从外面楼梯下面与Traxexir交谈
    >>购买Gladius并装备它
    .collect 2488,1 --Collect Gladius
step << Hunter
    .goto Durotar,56.5,73.1
    .money <0.0271
    >>购买Hornwood递归弓并装备
    .collect 2506,1 --Collect Hornwood Recurve Bow
step
    >>煤仓顶层内
    .goto Durotar,51.9,43.5
.target Gar'Thok
>>与|cFF00FF25Gar'OK|r交谈
    .accept 784 >>接任务: |cFFFCDC00背信弃义的人类|r
step
    #completewith next
    .goto Durotar,50.2,43.1,15 >>沿着这条小路走
step
    >>爬上塔楼和Furl Scornbrow谈谈
.goto Durotar,49.9,40.3
.target Furl Scornbrow
>>与|cFF00FF25Furl Scornbrow|r交谈
    .accept 791 >>接任务: |cFFFCDC00新的背包|r
step
    #sticky
    #label KulTiras
    .goto Durotar,59.2,58.3
>>杀死Kul Tiras暴徒。抢走他们的碎片
    .complete 784,1 --Kul Tiras Sailor (10)
    .complete 784,2 --Kul Tiras Marine (8)
    .complete 791,1 --Canvas Scraps (8)
step
    #label bonfireskip
    .goto Durotar,59.7,58.3
    >>去要塞的顶层。杀死Benedict中尉并抢走他的钥匙-小心他使用盾牌猛击(打断)
.complete 784,3 --Lieutenant Benedict (1)
.collect 4882,1 --Collect Benedict's Key (1)
step
.goto Durotar,59.8,57.8,8 >>在这里上楼梯
step
.goto Durotar,59.9,57.5,8 >>在这里上楼梯
step
>>掠夺胸部。从物品中接受任务
.goto Durotar,59.3,57.6
.collect 4881,1,830 --Collect Aged Envelope (1)
    .use 4881
.accept 830 >>接任务: |cFFFCDC00将军的命令|r
step
    .goto Durotar,58.4,57.2
.xp 7+2195>>提升经验到2195+/4500xp
step
    #requires KulTiras
    #completewith next
.deathskip >>在精神治疗者处死亡并重生，或者跑回剃须刀山
step
    .goto Durotar,51.9,43.5
>>与|cFF00FF25Gar'OK|r交谈
    .turnin 784 >>交任务: |cFF00FF25背信弃义的人类|r
.target Gar'Thok
    .accept 825 >>接任务: |cFFFCDC00海底沉船|r
    .turnin 830 >>交任务: |cFF00FF25将军的命令|r
    .accept 837 >>接任务: |cFFFCDC00野猪人的进犯|r
step
    .isOnQuest 823
    .goto Durotar,52.2,43.2
.target Orgnil Soulscar
>>与|cFF00FF25Orgnil Soulscar|r交谈
    .turnin 823 >>交任务: |cFF00FF25向奥戈尼尔报告|r
step << Shaman/Warrior
    .goto Durotar,52.2,43.2
>>与|cFF00FF25Orgnil Soulscar|r交谈
    .turnin 823 >>交任务: |cFF00FF25向奥戈尼尔报告|r
.target Orgnil Soulscar
    .accept 806 >>接任务: |cFFFCDC00黑暗风暴|r
step << !Shaman !Warrior
    #xprate <1.5
    .goto Durotar,52.2,43.2
.target Orgnil Soulscar
>>与|cFF00FF25Orgnil Soulscar|r交谈
    .turnin 823 >>交任务: |cFF00FF25向奥戈尼尔报告|r
step << Warlock/Shaman/Warrior
    #xprate <1.5
    .goto Durotar,51.9,43.5
.target Gar'Thok
>>与|cFF00FF25Gar'OK|r交谈
.accept 831 >>接任务: |cFFFCDC00将军的命令|r
step
    #xprate <1.5
.goto Durotar,49.9,40.3
.target Furl Scornbrow
>>与|cFF00FF25Furl Scornbrow|r交谈
    .turnin 791 >>交任务: |cFF00FF25新的背包|r
step
    >>与Cook Torka交谈
    .goto Durotar,51.1,42.4
.target Cook Torka
>>与|cFF00FF25Cook Torka|r交谈
    .accept 815 >>接任务: |cFFFCDC00恐龙蛋大餐|r
step << !Shaman !Warrior
    #xprate <1.5
    .abandon 806 >>放弃黑暗风暴
step << Shaman
    #xprate <1.5
    .goto Durotar,52.0,40.5
    .money <0.0480
    >>买根手杖并装备它
    .collect 2495,1 --Collect Walking Stick
step << Rogue
    #xprate <1.5
    .goto Durotar,52.0,40.5
    .money <0.0382
    >>购买细高跟鞋并装备它
    .collect 2494,1 --Collect Stiletto
step << Orc Warrior
    #xprate <1.5
    .goto Durotar,52.0,40.5
    .money <0.0460
    >>购买一把大斧子并装备它
    .collect 2491,1 --Collect Large Axe
step << Paladin
    #xprate <1.5
    .goto Durotar,52.0,40.5
    .money <0.0509
    >>购买Gladius并装备它
    .collect 2488,1 --Collect Gladius
step << Hunter
    #xprate <1.5
    .goto Durotar,53.0,41.0
    .money <0.0271
    >>购买Hornwood递归弓并装备
    .collect 2506,1 --Collect Hornwood Recurve Bow
step << Warrior/Rogue
    #xprate <1.5
    .goto Durotar,52.0,40.7
    .money <0.0020
    .train 2018 >>火车铁匠。锻造允许你制造锐化宝石(+2武器伤害，持续1小时)。如果你愿意，可以跳过锻造和采矿
step << Warrior/Rogue
    #xprate <1.5
.goto Durotar,51.8,40.9
    .money <0.0010
    .train 2580 >>训练采矿。
    .cast 2580 >>在你的魔法书中施放“寻找矿物”
step << Warrior/Rogue
    #xprate <1.5
    .goto Durotar,53.0,42.0
    .money <0.0077
.collect 2901,1 >>购买采矿镐。留意我的静脉，为你的武器制作磨石
step << Shaman
    #xprate <1.5
    .goto Durotar,54.419,42.588
    .train 2484 >>火车土缚图腾
    .train 324 >>列车避雷网
    .train 8044 >>列车地震r2
    .train 8018 >>训练摇滚武器r2
step << Priest
    #xprate <1.5
    .goto Durotar,54.3,42.9
    .train 139 >>列车更新
    .train 2052 >>训练Lesser Heal r2
>>与|cFF00FF25Tai'jin|r交谈
    .turnin 5649 >>接任务: |cFFFCDC00部族的传统|r
.target Tai'jin
    .accept 5648 >>接任务: |cFFFCDC00灵魂之衣|r
step << Priest
    .goto Durotar,53.1,46.5
    .cast 2052 >>在Grunt Kor'ja上施放低级别治疗(2级)
    .cast 1243 >>施展权力话语：格伦特·科尔贾的坚韧（排名1）
    .complete 5648,1 --Heal and cast Fortify on Grunt Kor'ja
step << Priest
    .goto Durotar,54.3,42.9
.target Tai'jin
>>与|cFF00FF25Tai'jin|r交谈
    .turnin 5648 >>接任务: |cFFFCDC00灵魂之衣|r
step << Warrior
.goto Durotar,54.190,42.468
    .train 284 >>训练英雄打击r2
    .train 1715 >>训练腿筋
step << Hunter
    .goto Durotar,51.8,43.5
    .train 5116 >>火车震荡射击
step << Rogue
.goto Durotar,52.0,43.7
    .train 6760 >>训练剔骨r2
    .train 5277 >>列车逃逸
step << Warlock
    .goto Durotar,54.4,41.2
    .train 980 >>训练痛苦诅咒
    .train 5782 >>训练恐惧
step << Warrior/Rogue
    .goto Durotar,54.2,41.9
    .money <0.0095
    .train 3273 >>培训急救
step
    .goto Durotar,54.4,42.2
    .money <0.1184
.vendor >>从Jark那里买一个6槽包
step << Priest/Mage/Warlock/Shaman/Druid
    .goto Durotar,51.5,41.6
    >>与客栈老板交谈
.target Innkeeper Grosk
>>与|cFF00FF25Innkeeper Grosk|r交谈
    .turnin 2161 >>交任务: |cFF00FF25苦工的重担|r
    .home >>把你的炉石放在剃刀山
    .vendor >>尽可能多地购买冰镇牛奶
step << Warrior/Rogue/Hunter
    .goto Durotar,51.5,41.6
    >>与客栈老板交谈
.target Innkeeper Grosk
>>与|cFF00FF25Innkeeper Grosk|r交谈
    .turnin 2161 >>交任务: |cFF00FF25苦工的重担|r
    .home >>把你的炉石放在剃刀山
    .vendor >>买尽可能多的肉腰
step << Paladin
    .goto Durotar,51.5,41.6
    >>与客栈老板交谈
.target Innkeeper Grosk
>>与|cFF00FF25Innkeeper Grosk|r交谈
    .turnin 2161 >>交任务: |cFF00FF25苦工的重担|r
    .home >>把你的炉石放在剃刀山
step << Warrior/Rogue/Paladin
    .goto Durotar,53.0,42.0
    .money <0.0077
.collect 2901,1 >>购买采矿镐。留意我的静脉，用铁匠技术为你的武器制作磨石
step << Paladin
    .goto Orgrimmar,49.1,94.7,20 >>前往: 奥格瑞玛
step << Paladin
    .goto Orgrimmar,32.272,35.794
    .trainer >>去训练你的职业技能
step << Paladin
    #completewith next
    .goto Durotar,59.2,58.3,15
    .hs >>炉底到剃须山
step
    #sticky
    #requires KulTiras
    #completewith Tools
    >>在这里杀死一些Makrura以获取眼睛/在前往其他任务的途中为Mucus抓取爬虫。你不需要在这里完成它。
    .complete 818,1 --Intact Makrura Eye (4)
    .complete 818,2 --Crawler Mucus (8)
step
    #completewith next
    >>检查离海岸最近的船上的工具箱。如果找不到这些产卵，请查看其他船只。它们可能有点难看
    .goto Durotar,61.9,55.5,10 >>在水下的窗户里
    .goto Durotar,62.3,56.3,10 >>水下的
    .goto Durotar,61.4,56.1,10 >>靠近海岸
step
    .goto Durotar,61.9,55.5,10,0
    .goto Durotar,62.3,56.3,10,0
    .goto Durotar,61.4,56.1,10,0
    .complete 825,1 --Gnomish Tools (3)
step
    #requires KulTiras
    #label Tools
    .goto Durotar,67.2,70.0,125 >>游到岛上
step
    #sticky
    #completewith Fur
    >>杀死所有你看到的老虎的皮毛
    .complete 817,1 --Durotar Tiger Fur (4)
step
    >>在这个岛上的地上掠夺Taillasher鸡蛋。他们通常由Taillasher看守
    .goto Durotar,68.8,71.5
    .complete 815,1 --Taillasher Egg (3)
step
    #sticky
    #completewith Swim
    >>在这里杀死一些Makrura以换取眼睛/爬行动物以换取黏液
    .complete 818,1 --Intact Makrura Eye (4)
    .complete 818,2 --Crawler Mucus (8)
step
    #label Swim
.goto Durotar,66.9,80.0,80 >>游到另一个岛
step
    #sticky
    #completewith Trolls
    >>杀死该地区的巨魔。当巫毒巨魔痊愈时要小心
    .complete 826,1 --Hexed Troll (8)
    .complete 826,2 --Voodoo Troll (8)
step << Shaman
    .goto Durotar,67.4,87.8
    >>杀死扎拉扎内。当他施放治愈之波时，保存你的地球冲击。掠夺他的头
    .complete 826,3 --Zalazane's Head (1)
step << Rogue
    .goto Durotar,67.4,87.8
    >>杀死扎拉扎内。把你的凿击术留到他施放治疗波的时候。掠夺他的头
    .complete 826,3 --Zalazane's Head (1)
step << !Rogue !Shaman
    .goto Durotar,67.4,87.8
    >>杀死扎拉扎内。小心，因为他可以治愈(你可能需要治疗药剂)。掠夺他的头
    .complete 826,3 --Zalazane's Head (1)
step
    #label Trolls
.goto Durotar,67.4,87.8
    >>在地上掠夺一个头骨
    .complete 808,1 --Minshina's Skull (1)
step
    #label Fur
>>杀死其余的巨魔。当巫毒巨魔痊愈时要小心
    .complete 826,1 --Hexed Troll (8)
    .complete 826,2 --Voodoo Troll (8)
step
>>完成剩余的虎皮
    .goto Durotar,64.7,88.5,30,0
    .goto Durotar,65.2,80.8,30,0
    .goto Durotar,59.9,83.6,30,0
    .goto Durotar,64.7,88.5,30,0
    .goto Durotar,65.2,80.8,30,0
    .goto Durotar,59.9,83.6,30,0
    .complete 817,1 --Durotar Tiger Fur (4)
step
     #completewith next
    .deathskip >>在精神疗愈者处死去并重生，或者跑回森津村
step
    >>完成从Makrura和Crawler那里获得剩余物品
        .goto Durotar,59.7,71.7,50,0
    .goto Durotar,57.6,77.9,50,0
    .goto Durotar,59.7,71.7,50,0
    .goto Durotar,57.6,77.9,50,0
    .goto Durotar,59.7,71.7,50,0
    .goto Durotar,57.6,77.9,50,0
    .goto Durotar,59.7,71.7,50,0
    .goto Durotar,57.6,77.9
    .complete 818,1 --Intact Makrura Eye (4)
    .complete 818,2 --Crawler Mucus (8)
step << Mage
    >>到帐篷里去
.goto Durotar,56.3,75.1
    .train 205 >>列车防冻螺栓r2
.train 118 >>训练变形
step
    >>返回森津村。保存微弱发光的骷髅供以后使用
.goto Durotar,55.9,74.7
.target Master Gadrin
>>与|cFF00FF25Master Gadrin|r交谈
    .turnin 808 >>交任务: |cFF00FF25明希纳的颅骨|r
    .turnin 826,1 >>交任务: |cFF00FF25扎拉赞恩|r << Warrior
    turnin 826 >>交任务: |cFF00FF25扎拉赞恩|r << !Warrior
step
    >>与Vornal大师、Vel'rin和Lar Prowltusk交谈
.target Master Vornal
>>与|cFF00FF25Master Vornal|r交谈
    .turnin 818 >>交任务: |cFF00FF25沃纳尔大师|r
    .goto Durotar,56.0,74.3
.target Vel'rin Fang
>>与|cFF00FF25Vel'rin Fang|r交谈
    .turnin 817 >>交任务: |cFF00FF25生活所需的虎皮|r
    .goto Durotar,56.0,73.9
    .unitscan Lar Prowltusk
.target Lar Prowltusk
>>与|cFF00FF25Lar Prowltusk|r交谈
    .turnin 786 >>交任务: |cFF00FF25科卡尔半人马的进攻|r
    .goto Durotar,54.3,73.3
step
    #completewith next
    .goto Durotar,48.9,48.5
    .hs >>炉底回到剃须山
step
    .goto Durotar,48.9,48.5
    >>杀死该地区的Quilboars和Scouts
    .complete 837,1 --Razormane Quilboar (4)
    .complete 837,2 --Razormane Scout (4)
step
    .goto Durotar,43.8,39.1
    >>杀死该地区的除尘兵和战警。吸尘器有返老还童(治疗)能力，而战队守卫则很虚弱
    .complete 837,3 --Razormane Dustrunner (4)
    .complete 837,4 --Razormane Battleguard (4)
step
    .goto Durotar,43.8,39.1
    .xp 9+5175>>研磨至4550+/65000p
step
    .goto Durotar,51.9,43.5
    >>前往地堡
.target Gar'Thok
>>与|cFF00FF25Gar'OK|r交谈
    .turnin 784 >>交任务: |cFF00FF25背信弃义的人类|r
    .turnin 830 >>交任务: |cFF00FF25将军的命令|r
    .turnin 837 >>交任务: |cFF00FF25野猪人的进犯|r
step << Hunter
    .xp <10,1
    .goto Durotar,51.8,43.5
.target Thotar
>>与|cFF00FF25Thotar|r交谈
    .accept 6062 >>接任务: |cFFFCDC00驯服野兽|r
    .train 13165 >>鹰的训练视角
    .train 13549 >>训练毒蛇刺r2
step << Warlock/Shaman/Warrior/Hunter
    #xprate >1.499
    .goto Durotar,51.9,43.5
.target Gar'Thok
>>与|cFF00FF25Gar'OK|r交谈
.accept 831 >>接任务: |cFFFCDC00将军的命令|r
step
    >>与Cook Torka交谈
    .goto Durotar,51.1,42.4
.target Cook Torka
>>与|cFF00FF25Cook Torka|r交谈
        .turnin 815 >>交任务: |cFF00FF25恐龙蛋大餐|r
step << Hunter
    .isOnQuest 6062
    .use 15917 >>单击包中的驯鹿棒。尝试在最大射程(30码)进行
.goto Durotar,51.5,50.0
.complete 6062,1 --Tame a Dire Mottled Boar
step << !Shaman !Warrior
    .abandon 806 >>放弃黑暗风暴
step
    .goto Durotar,43.8,39.1
    .xp 10 >>升级到10
step << Paladin
    #sticky
    #completewith next
    +如果你害怕Eversong比赛，那么现在手动选择10-13 Durotar->13-23 Barrens
step << Shaman
    .goto Durotar,54.4,42.5
.target Swart
>>与|cFF00FF25Swart|r交谈
    .accept 2983 >>接任务: |cFFFCDC00火焰的召唤|r
    .train 8075 >>大地图腾的训练力量
    .train 8050 >>列车火焰冲击
step << Priest
    .goto Durotar,54.3,42.9
    .train 2053 >>训练Lesser Heal r3
    .train 8092 >>训练心灵冲击
.train 594 >>训练暗语：痛苦r2
step << Orc Warrior/Troll Warrior/Undead Warrior
    .goto Durotar,54.190,42.468
.target Sorek
.target Tarshaw Jaggedscar
.target Krang Stonehoof
>>与|cFF00FF25Krang Stonehoof|r交谈
-->>与|cFF00FF25Tarshaw Jaggedscar|r交谈
-->>与|cFF00FF25Sorek|r交谈
    .accept 1505 >>接任务: |cFFFCDC00老兵犹塞克|r
    .train 2687 >>训练血腥
    .train 6546 >>列车Rend r2
step << Rogue
    .goto Durotar,52.0,43.7
    .train 2983 >>火车冲刺
    .train 674 >>训练双Wield
    .train 6770 >>训练Sap
    .train 1784 >>列车隐身
step << Rogue
    .goto Durotar,56.5,73.1
    .money <0.0382
    .vendor >>购买另一个细高跟鞋并装备它
step << Warrior/Rogue/Paladin
.goto Durotar,54.2,41.9
    .money <0.0095
    .train 3273 >>培训急救
step << Warlock
    .goto Durotar,54.4,41.2
.target Ophek
>>与|cFF00FF25Ophek|r交谈
    .accept 1506 >>接任务: |cFFFCDC00甘鲁尔的召唤|r
step << Warlock
    .goto Durotar,54.4,41.2
    .train 1120 >>训练吸取灵魂
    .train 6201 >>训练Create Healthstone
    .train 696 >>训练恶魔皮肤r2
    .train 707 >>火车献祭r2
step << Hunter
    .goto Durotar,51.8,43.5
.target Thotar
>>与|cFF00FF25Thotar|r交谈
    .accept 6062 >>接任务: |cFFFCDC00驯服野兽|r
    .train 13165 >>鹰的训练视角
    .train 13549 >>训练毒蛇刺r2
step << Hunter
    .goto Durotar,53.0,41.0
    .vendor >>供应商和库存10级箭头
step << Hunter
    .use 15917 >>单击包中的驯鹿棒。尝试在最大射程(30码)进行
.goto Durotar,51.5,50.0
.complete 6062,1 --Tame a Dire Mottled Boar
    .unitscan Dire Mottled Boar
step << Hunter
    .goto Durotar,51.8,43.5
>>与|cFF00FF25Thotar|r交谈
.turnin 6062 >>交任务: |cFF00FF25驯服野兽|r
.target Thotar
.accept 6083 >>接任务: |cFFFCDC00驯服野兽|r
step << Hunter
    .use 15919 >>不要杀死你看到的装甲蝎子，因为你需要驯服下一个。向北前往海滩，驯服一只冲浪爬虫。
.goto Durotar,59.3,27.6
.complete 6083,1 --Tame a Surf Crawler
    .unitscan Surf Crawler
step << Hunter
    >>返回Razor Hill
    .goto Durotar,51.8,43.5
>>与|cFF00FF25Thotar|r交谈
.turnin 6083 >>交任务: |cFF00FF25驯服野兽|r
.target Thotar
.accept 6082 >>接任务: |cFFFCDC00驯服野兽|r
step << Hunter
    .use 15920 >>点击你包里的驯蝎棒。尝试在最大射程(30码)进行
    .goto Durotar,59.3,27.6
    .complete 6082,1 --Tame an Armored Scorpid
    .unitscan Armored Scorpid
step << Hunter
    >>返回托塔
    .goto Durotar,51.8,43.5
>>与|cFF00FF25Thotar|r交谈
    .turnin 6082 >>交任务: |cFF00FF25驯服野兽|r
.target Thotar
    .accept 6081 >>接任务: |cFFFCDC00训练野兽|r
step << Hunter
    >>沿着这条路向北走，和雷兹拉克谈谈
    .goto Durotar,46.4,22.9
.target Rezlak
>>与|cFF00FF25Rezlak|r交谈
    .accept 834 >>接任务: |cFFFCDC00沙漠之风|r
step << Warlock/Hunter
    .goto Orgrimmar,49.0,94.2,20 >>前往: 奥格瑞玛
step << Hunter
    >>前往荣誉谷，与Ormak Grimshot交谈
    .goto Orgrimmar,66.046,18.526
.target Ormak Grimshot
>>与|cFF00FF25Ormak Grimshot|r交谈
    .turnin 6081 >>交任务: |cFF00FF25训练野兽|r
step << Hunter tbc
    >>在酒吧里放上“野兽训练”。记得稍后教你的宠物技能
.goto Orgrimmar,66.3,14.8
    .train 4195 >>训练非凡耐力
    .train 24547 >>训练天然护甲
step << Warlock
.goto Orgrimmar,48.246,45.281
>>与|cFF00FF25Gan'rul血眼|r交谈
.turnin 1506 >>交任务: |cFF00FF25甘鲁尔的召唤|r
.target Gan'rul Bloodeye
.accept 1501 >>接任务: |cFFFCDC00虚空中的生物|r
step << Warlock/Hunter
    .goto Orgrimmar,34.340,36.328
.target Vol'jin
>>与|cFF00FF25Vol'jin|r交谈
    .turnin 831 >>交任务: |cFF00FF25将军的命令|r
step << Warlock
.goto Orgrimmar,31.609,37.830
.target Thrall
>>与|cFF00FF25Thrall|r交谈
.accept 5726 >>接任务: |cFFFCDC00隐藏的敌人|r
step << Warlock
    #sticky
    #completewith next
.goto Orgrimmar,36.0,37.7 >>点击你的恶魔皮肤buff。在火盆顶部运行，并使用Life Tap进行冲模。在orgrimmar之外重生
step << Warlock/Hunter
.goto Orgrimmar,49.0,94.2,275 >>前往: |cFFDB2EEF杜隆塔尔|r
step << Warlock
.goto Durotar,55.0,9.7,25 >>进入骷髅岩
step << Warlock
    #sticky
    #label Collars
>>杀死燃烧之刃暴徒直到中尉徽章掉落
    .complete 5726,1 --Lieutenant's Insignia (1)
step << Warlock
    #sticky
    #label Eye
    #completewith Skull
    .use 4945 >>或者，你可以为任务物品杀死Gazz'uz(14级术士)。一定要使用之前的骷髅头、任何药水，或者在虚空行者身上使用粘性胶水。你可以用LoS(视线)Gazz'uz躲避他的暗箭，并害怕他的宠物。如果你不能杀了他，试着从他身边溜走，或者在水里死后重生。
    .collect 4903,1,832 --Collect Eye of Burning Shadow
    .accept 832 >>接任务: |cFFFCDC00燃影之眼|r
    .unitscan Gazz'uz
step << Warlock
    .goto Durotar,53.6,8.5,10,0
    .goto Durotar,51.8,8.1,10,0
    .goto Durotar,51.6,9.8
    >>进入洞穴的正确路径。继续跟踪洞穴，然后在洞穴尽头掠夺箱子
    .complete 1501,1 --Tablet of Verga (1)
step << Warlock
    #label Skull
    #completewith next
    .deathskip >>在精神疗愈者处死去并重生，或者逃到奥格瑞玛
step << Warlock
.goto Orgrimmar,49.0,94.2,20 >>前往: 奥格瑞玛
step << Warlock
    .goto Orgrimmar,31.733,37.823
>>与|cFF00FF25Thrall|r交谈
    .turnin 5726 >>交任务: |cFF00FF25隐藏的敌人|r
.target Thrall
    .accept 5727 >>接任务: |cFFFCDC00隐藏的敌人|r
step << Warlock
    .goto Orgrimmar,48.246,45.281
>>与|cFF00FF25Gan'rul血眼|r交谈
    .turnin 1501 >>交任务: |cFF00FF25虚空中的生物|r
.target Gan'rul Bloodeye
    .accept 1504 >>接任务: |cFFFCDC00誓缚|r
step << Warlock
    .isOnQuest 832
.goto Orgrimmar,49.473,50.589
.target Neeru Fireblade
>>与|cFF00FF25Neeru Fireblade|r交谈
    .turnin 832 >>交任务: |cFF00FF25燃影之眼|r
step << Warlock
    >>与Neeru交谈并完成他的八卦选项
.goto Orgrimmar,49.473,50.589
    .skipgossip
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade (1)
step << Warlock
    .goto Orgrimmar,49.5,50.0
    .use 7464>>使用召唤雕文召唤一个虚空行者。杀了它
    .complete 1504,1 --Summoned Voidwalker (1)
step << Warlock
    >>你现在可以召唤一个虚空行者
.goto Orgrimmar,48.246,45.281
.target Gan'rul Bloodeye
>>与|cFF00FF25Gan'rul血眼|r交谈
    .turnin 1504 >>交任务: |cFF00FF25誓缚|r
step << Warlock
    .goto Orgrimmar,31.733,37.823
.target Thrall
>>与|cFF00FF25Thrall|r交谈
    .turnin 5727 >>交任务: |cFF00FF25隐藏的敌人|r
step << Warlock
    #sticky
    #completewith next
    .goto Orgrimmar,36.0,37.7 >>点击你的恶魔皮肤buff。在火盆顶部运行，并使用Life Tap进行冲模。在orgrimmar之外重生
step << Warlock
    .goto Orgrimmar,49.0,94.2,275 >>前往: |cFFDB2EEF杜隆塔尔|r
step << !Shaman !Warrior !Warlock !Hunter
    .goto Durotar,46.4,22.9
.target Rezlak
>>与|cFF00FF25Rezlak|r交谈
    .accept 834 >>接任务: |cFFFCDC00沙漠之风|r
step << !Shaman !Warrior !Warlock
    >>掠夺地上的小麻袋
.goto Durotar,51.7,27.7
    .complete 834,1 --Sack of Supplies (5)
step << !Shaman !Warrior !Warlock
    .goto Durotar,46.4,22.9
    >>返回雷兹拉克
>>与|cFF00FF25Rezlak|r交谈
    .turnin 834 >>交任务: |cFF00FF25沙漠之风|r
.target Rezlak
    .accept 835 >>接任务: |cFFFCDC00保卫商路|r
step << !Shaman !Warrior !Warlock
    .goto Durotar,51.9,27.4,20 >>从这里穿过洞穴
step << !Shaman !Warrior !Warlock
    >>杀死该地区的哈比
    .goto Durotar,54.0,27.7,30,0
    .goto Durotar,51.3,23.5,30,0
    .goto Durotar,51.5,19.1,30,0
    .goto Durotar,54.0,27.7,30,0
    .goto Durotar,51.3,23.5,30,0
    .goto Durotar,51.5,19.1,30,0
    .complete 835,1 --Dustwind Savage (12)
    .complete 835,2 --Dustwind Storm Witch (8)
step << !Shaman !Warrior !Warlock
    #completewith next
    .deathskip >>在精神疗愈者处死去并重生，或者跑回雷兹拉克
step << !Shaman !Warrior !Warlock
    .goto Durotar,46.4,22.9
    >>返回雷兹拉克
.target Rezlak
>>与|cFF00FF25Rezlak|r交谈
    .turnin 835,2 >>交任务: |cFF00FF25保卫商路|r << Hunter
    .turnin 835 >>交任务: |cFF00FF25保卫商路|r << !Hunter
step << Hunter tbc
    .goto Durotar,57.2,12.0
    .tame 3108 >>驯服被包裹的冲浪爬虫(他们的爪等级为3)
step << !Shaman !Warrior
    #sticky
    #completewith next
+去齐柏林塔。带着齐柏林飞艇去幽暗城
    .goto Durotar,50.8,13.8
step << !Shaman !Warrior
.zone Tirisfal Glades >>Arrive in Tirisfal
step << !Shaman !Warrior
.goto Undercity,66.2,1.1,18 >>前往幽暗城
step << !Shaman !Warrior
.goto Undercity,62.0,11.3,18 >>在这里上楼梯
step << !Shaman !Warrior
    .goto Undercity,54.63,11.28
    .zone Silvermoon City >>前往: |cFFDB2EEF银月城|r
    .zoneskip Eversong Woods
step << Paladin
    #completewith next
    .goto Silvermoon City,91.2,36.9
    .trainer >>去训练你的职业技能
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 10-13 杜隆塔尔
#version 1
#group RestedXP部落1-30
#defaultfor Warrior !Tauren/Shaman !Tauren
#next 13-22荒地
step
    .goto Durotar,50.8,43.6
.target Takrin Pathseeker
>>与|cFF00FF25Takrin Pathseeker交谈|r
    .accept 840 >>接任务: |cFFFCDC00部落的新兵|r
step << Undead Warrior
    >>爬上塔楼
.goto Durotar,49.9,40.3
.target Furl Scornbrow
>>与|cFF00FF25Furl Scornbrow|r交谈
    .accept 791 >>接任务: |cFFFCDC00新的背包|r
step << Undead Warrior
    .goto Durotar,52.0,40.7
    .money <0.0020
    .train 2018 >>火车铁匠。锻造允许你制造锐化宝石(+2武器伤害，持续1小时)。如果你愿意，可以跳过锻造和采矿
step << Undead Warrior
    .goto Durotar,51.8,40.9
    .money <0.0010
    .train 2580 >>训练采矿。
    .cast 2580 >>在你的魔法书中施放“寻找矿物”
step << Undead Warrior
    .goto Durotar,53.0,42.0
    .money <0.0077
.collect 2901,1 >>购买采矿镐。留意我的静脉，用铁匠技术为你的武器制作磨石
step << Undead Warrior
    .goto Durotar,54.190,42.468
.target Sorek
.target Tarshaw Jaggedscar
.target Krang Stonehoof
>>与|cFF00FF25Krang Stonehoof|r交谈
-->>与|cFF00FF25Tarshaw Jaggedscar|r交谈
-->>与|cFF00FF25Sorek|r交谈
    .accept 1505 >>接任务: |cFFFCDC00老兵犹塞克|r
step << Undead Warrior
>>煤仓内，顶层
.goto Durotar,51.9,43.5
.target Gar'Thok
>>与|cFF00FF25Gar'OK|r交谈
.accept 784 >>接任务: |cFFFCDC00背信弃义的人类|r
step << Undead Warrior
    #sticky
    #label KulTiras
>>杀死Kul Tiras暴徒。抢走他们的碎片
    .complete 784,1 --Kul Tiras Sailor (10)
    .complete 784,2 --Kul Tiras Marine (8)
    .complete 791,1 --Canvas Scraps (8)
step << Undead Warrior
.goto Durotar,59.2,58.3,15 >>进入要塞
step << Undead Warrior
    .goto Durotar,59.7,58.3
    >>去要塞的顶层。杀死Benedict中尉并抢走他的钥匙-小心他使用盾牌猛击(打断)
.complete 784,3 --Lieutenant Benedict (1)
.collect 4882,1 --Collect Benedict's Key (1)
step << Undead Warrior
.goto Durotar,59.8,57.8,8 >>在这里上楼梯
step << Undead Warrior
.goto Durotar,59.9,57.5,8 >>在这里上楼梯
step << Undead Warrior
>>掠夺胸部。从物品中接受任务
.goto Durotar,59.3,57.6
.collect 4881,1,830 --Collect Aged Envelope (1)
.accept 830 >>接任务: |cFFFCDC00将军的命令|r
step << Undead Warrior
    >>跑到森津
.goto Durotar,55.9,74.7
.target Master Gadrin
>>与|cFF00FF25Master Gadrin|r交谈
    .accept 808 >>接任务: |cFFFCDC00明希纳的颅骨|r
    .accept 826 >>接任务: |cFFFCDC00扎拉赞恩|r
    .accept 823 >>接任务: |cFFFCDC00向奥戈尼尔报告|r
step << Undead Warrior
    .goto Durotar,67.3,87.1,350 >>游到岛上
step << Undead Warrior
    #sticky
    #completewith Trolls
    >>杀死该地区的巨魔。当巫毒巨魔痊愈时要小心
    .complete 826,1 --Hexed Troll (8)
    .complete 826,2 --Voodoo Troll (8)
step << Undead Warrior
    .goto Durotar,67.4,87.8
    >>杀死扎拉扎内。小心，因为他可以治愈(你可能需要治疗药剂)。掠夺他的头
    .complete 826,3 --Zalazane's Head (1)
step << Undead Warrior
    #label Trolls
.goto Durotar,67.4,87.8
    >>在地上掠夺一个头骨
    .complete 808,1 --Minshina's Skull (1)
step << Undead Warrior
>>杀死其余的巨魔。当巫毒巨魔痊愈时要小心
    .complete 826,1 --Hexed Troll (8)
    .complete 826,2 --Voodoo Troll (8)
step << Undead Warrior
    #completewith next
    .deathskip >>在精神疗愈者处死去并重生，或者跑回森津村
step << Undead Warrior
    >>保存微弱发光的骷髅供以后使用
.goto Durotar,55.9,74.7
.target Master Gadrin
>>与|cFF00FF25Master Gadrin|r交谈
    .turnin 808 >>交任务: |cFF00FF25明希纳的颅骨|r
    .turnin 826 >>交任务: |cFF00FF25扎拉赞恩|r
step << Undead Warrior
    >>跑回Razor Hill
.goto Durotar,52.2,43.2
>>与|cFF00FF25Orgnil Soulscar|r交谈
    .turnin 823 >>交任务: |cFF00FF25向奥戈尼尔报告|r
.target Orgnil Soulscar
    .accept 806 >>接任务: |cFFFCDC00黑暗风暴|r
step
    #xprate >1.499
    .goto Durotar,48.9,48.5
    >>杀死该地区的Quilboars和Scouts
    .complete 837,1 --Razormane Quilboar (4)
    .complete 837,2 --Razormane Scout (4)
step
    #xprate >1.499
    .goto Durotar,43.8,39.1
    >>杀死该地区的除尘兵和战警。吸尘器有返老还童(治疗)能力，而战队守卫则很虚弱
    .complete 837,3 --Razormane Dustrunner (4)
    .complete 837,4 --Razormane Battleguard (4)
step
    .goto The Barrens,62.2,19.4
>>与|cFF00FF25Kargal Battlescar|r交谈
    .turnin 840 >>交任务: |cFF00FF25部落的新兵|r
.target Kargal Battlescar
    .accept 842 >>接任务: |cFFFCDC00十字路口征兵|r
step
    .goto The Barrens,62.2,19.4
    .zone The Barrens >>前往: |cFFDB2EEF贫瘠之地|r
step << Warrior
    .goto The Barrens,61.4,21.1
>>与|cFF00FF25Uzzek|r交谈
    .turnin 1505 >>交任务: |cFF00FF25老兵犹塞克|r
.target Uzzek
    .accept 1498 >>接任务: |cFFFCDC00防御之道|r
step << Orc Shaman/Troll Shaman
    .goto The Barrens,55.8,20.0
>>与|cFF00FF25Kranal Fiss|r交谈
    .turnin 2983 >>交任务: |cFF00FF25火焰的召唤|r
.target Kranal Fiss
    .accept 1524 >>接任务: |cFFFCDC00火焰的召唤|r
step << !Tauren
#xprate <1.5
    .goto The Barrens,52.0,30.5,150 >>跑到十字路口
step << Orc/Troll
#xprate <1.5
    .goto The Barrens,52.5,29.8
.target Zargh
>>与|cFF00FF25Zargh|r交谈
    .accept 6365 >>接任务: |cFFFCDC00送往奥格瑞玛的肉|r
step << !Tauren
#xprate <1.5
    .goto The Barrens,52.2,31.0
>>与|cFF00FF25Sergra Darkthorn|r交谈
    .turnin 842 >>交任务: |cFF00FF25十字路口征兵|r
.target Sergra Darkthorn
    .accept 844 >>接任务: |cFFFCDC00平原陆行鸟的威胁|r
step << !Tauren
#xprate <1.5
    .goto The Barrens,52.2,31.8
.target Tonga Runetotem
>>与|cFF00FF25Tonga Runetotem|r交谈
    .accept 870 >>接任务: |cFFFCDC00遗忘之池|r
step << !Tauren
#xprate <1.5
    .goto The Barrens,51.9,30.3
.target Gazrog
>>与|cFF00FF25Gazrog|r交谈
    .accept 869 >>接任务: |cFFFCDC00偷钱的迅猛龙|r
step << !Tauren
#xprate <1.5
    #completewith next
    .goto The Barrens,52.3,32.0
    .vendor >>根据需要购买6个槽袋
step << !Tauren
#xprate <1.5
    .goto The Barrens,51.5,30.8
.target Thork
>>与|cFF00FF25Thork|r交谈
    .accept 871 >>接任务: |cFFFCDC00野猪人的袭击|r
    .accept 5041 >>接任务: |cFFFCDC00十字路口的补给品|r
step << !Tauren
#xprate <1.5
    .goto The Barrens,51.5,30.4
    .fp >>获取十字路口飞行路线
step << Orc/Troll
#xprate <1.5
    >>不要飞往奥格瑞玛
.goto The Barrens,51.5,30.3
>>与|cFF00FF25Devrak|r交谈
    .turnin 6365 >>交任务: |cFF00FF25送往奥格瑞玛的肉|r
.target Devrak
    .accept 6384 >>接任务: |cFFFCDC00飞往奥格瑞玛|r
step << !Tauren
#xprate <1.5
.goto The Barrens,51.5,30.1
.target Apothecary Helbrim
>>与|cFF00FF25药剂师Helbrid|r交谈
    .accept 1492 >>接任务: |cFFFCDC00码头管理员迪兹维格|r
        .accept 848 >>接任务: |cFFFCDC00菌类孢子|r
step << !Tauren
#xprate <1.5
    #sticky
    #completewith next
    >>收集遗忘池周围的白蘑菇。尽量避免暴徒。
.complete 848,1 --Collect Fungal Spores (x4)
step << !Tauren
#xprate <1.5
>>潜水至气泡裂缝
.goto The Barrens,45.1,22.5
    .complete 870,1 --Explore the waters of the Forgotten Pools
step << !Tauren
#xprate <1.5
>>收集遗忘池周围的白蘑菇。尽量避免暴徒。
.goto The Barrens,45.2,23.3,40,0
.goto The Barrens,45.2,22.0,40,0
    .goto The Barrens,44.6,22.5,40,0
    .goto The Barrens,43.9,24.4,40,0
.complete 848,1 --Collect Fungal Spores (x4)
step << !Tauren tbc
#xprate <1.5
    #completewith next
    .deathskip >>在精神治疗者处死去并重生，或者跑回十字路口
step << !Tauren
#xprate <1.5
    .goto The Barrens,51.5,30.1
    >>与赫尔布里姆交谈。药剂师Zamah是一个定时问题，如果你在开机前任何时候都要发抖，请注销。
>>与|cFF00FF25药剂师Helbrid|r交谈
    .turnin 848 >>交任务: |cFF00FF25菌类孢子|r
.target Apothecary Helbrim
    .accept 853 >>接任务: |cFFFCDC00药剂师扎玛|r
    .timer 2700,Timer to reach Thunder Bluff
step << !Tauren
#xprate <1.5
    #completewith CampTaurajoFP
 +药剂师Zamah是一个定时问题，如果你在开机前任何时候都要发抖，请注销。
step << !Tauren
#xprate <1.5
    .goto The Barrens,52.2,31.8
>>与|cFF00FF25Tonga Runetotem|r交谈
    .turnin 870 >>交任务: |cFF00FF25遗忘之池|r
.target Tonga Runetotem
    .accept 877 >>接任务: |cFFFCDC00死水绿洲|r
step << !Tauren
    #label CampTaurajoFP
#xprate <1.5
    >>沿着这条路跑
.goto The Barrens,44.4,59.2
    .fp Camp Taurajo >>获取Taurajo营地飞行路线
--X add the actual flight path name to each .fp command. MAKE SURE to check it on the flight map itself as it may differ from the name of the subzone
step << !Tauren
#xprate <1.5
    .line Mulgore,69.0,60.0,58.4,61.7,51.9,59.3
    .goto Mulgore,51.4,59.2,50,0
    .goto Mulgore,59.6,62.4,50,0
    .goto Mulgore,51.4,59.2,50,0
    .goto Mulgore,59.6,62.4,50,0
        .goto Mulgore,51.4,59.2
    >>任务给予者沿着整条路巡逻
    .unitscan Morin Cloudstalker
.target Morin Cloudstalker
>>与|cFF00FF25Morin Cloudstaker交谈|r
    .accept 749 >>接任务: |cFFFCDC00不幸的商队|r
step << !Tauren
#xprate <1.5
    .goto Mulgore,48.2,53.4
.target Ahab Wheathoof
>>与|cFF00FF25Ahab Wheathoof|r交谈
    .accept 11129 >>接任务: |cFFFCDC00凯雷失踪了！|r
step << !Tauren
#xprate <1.5
    .goto Mulgore,53.7,48.1
    >>穿过湖面，然后掠夺商队中间的箱子
    .turnin 749 >>交任务: |cFF00FF25不幸的商队|r
    .accept 751 >>接任务: |cFFFCDC00不幸的商队|r
step << !Tauren
#xprate <1.5
    .goto Mulgore,55.5,55.8
    >>为了鲜嫩的漫游者肉杀死一只漫游者
    .collect 33009,1 --Collect Tender Strider Meat (1)
step << !Tauren
#xprate <1.5
    .line Mulgore,51.9,59.3,58.4,61.7,69.0,60.0
    .goto Mulgore,51.4,59.2,50,0
    .goto Mulgore,59.6,62.4,50,0
    .goto Mulgore,51.4,59.2,50,0
    .goto Mulgore,59.6,62.4,50,0
        .goto Mulgore,51.4,59.2
    .unitscan Morin Cloudstalker
.target Morin Cloudstalker
>>与|cFF00FF25Morin Cloudstaker交谈|r
    .turnin 751 >>交任务: |cFF00FF25不幸的商队|r
step << !Tauren
#xprate <1.5
    .goto Mulgore,47.3,56.9,30,0
    .goto Mulgore,49.4,63.9,30,0
    .goto Mulgore,50.2,60.2,30,0
    .goto Mulgore,46.8,59.6,30,0
    .use 33009 >>找到法国人凯尔。他顺时针巡视整个城镇(所以逆时针走)。走到他跟前，用嫩步兵肉
    .unitscan Kyle the Frenzied
.complete 11129,1 --Kyle Fed (1)
step << !Tauren
#xprate <1.5
    .goto Mulgore,48.3,53.3
.target Ahab Wheathoof
>>与|cFF00FF25Ahab Wheathoof|r交谈
    .turnin 11129 >>交任务: |cFF00FF25凯雷失踪了！|r
step << !Tauren
#xprate <1.5
.goto Thunder Bluff,32.0,66.9,20 >>跑向电梯，进入雷霆崖
step << !Tauren !Paladin
#xprate <1.5
    .goto Thunder Bluff,40.9,62.7
    .train 227 >>火车杆 << !Shaman wotlk
    .train 199 >>列车2h梅斯
step << Paladin
#xprate <1.5
    .goto Thunder Bluff,40.9,62.7
    .train 199 >>列车2h梅斯
step << !Tauren
#xprate <1.5
.goto Thunder Bluff,45.6,52.0,15 >>爬上塔楼
step << !Tauren
#xprate <1.5
    >>去塔的顶层
.goto Thunder Bluff,46.8,49.9
    .fp >>获得雷霆崖飞行路线
step << !Tauren
#xprate <1.5
.goto Thunder Bluff,29.6,29.7,15 >>跳进洞穴
step << !Tauren
#xprate <1.5
    .goto Thunder Bluff,23.0,21.1
.target Apothecary Zamah
>>与|cFF00FF25药剂师Zamah|r交谈
    .turnin 853 >>交任务: |cFF00FF25药剂师扎玛|r
step << !Tauren
#xprate <1.5
    #completewith next
    .hs >>炉底到剃须山
step
    .goto Durotar,43.1,30.3
.target Misha Tor'kren
>>与|cFF00FF25Misha Tor'kren|r交谈
    .accept 816 >>接任务: |cFFFCDC00丢失的孩子|r
step
    .goto Durotar,46.4,22.9
.target Rezlak
>>与|cFF00FF25Rezlak|r交谈
    .accept 834 >>接任务: |cFFFCDC00沙漠之风|r
step
    >>掠夺地上的小麻袋
.goto Durotar,51.7,27.7
    .complete 834,1 --Sack of Supplies (5)
step
    .goto Durotar,46.4,22.9
>>与|cFF00FF25Rezlak|r交谈
    .turnin 834 >>交任务: |cFF00FF25沙漠之风|r
.target Rezlak
    .accept 835 >>接任务: |cFFFCDC00保卫商路|r
step << wotlk
    .goto Durotar,42.103,15.0161
.target Rhinag
>>与|cFF00FF25Rhinag|r交谈
    .accept 812 >>接任务: |cFFFCDC00救命如救火|r
step << tbc
    .goto Durotar,42.5,18.6
.target Rhinag
>>与|cFF00FF25Rhinag|r交谈
    .accept 812 >>接任务: |cFFFCDC00救命如救火|r
step
.goto Orgrimmar,49.0,94.2,20 >>前往: 奥格瑞玛
step << Orc/Troll
#xprate <1.5
    .goto Orgrimmar,54.2,68.6
>>与|cFF00FF25Innkeeper Gryshka|r交谈
    .turnin 6384 >>交任务: |cFF00FF25飞往奥格瑞玛|r
.target Innkeeper Gryshka
    .accept 6385 >>接任务: |cFFFCDC00双足飞龙管理员多拉斯|r
step << Orc/Troll
#xprate <1.5
    .goto Orgrimmar,45.120,63.889
     >>交出任务，但不要飞回十字路口
>>与|cFF00FF25Doras|r交谈
    .turnin 6385 >>交任务: |cFF00FF25双足飞龙管理员多拉斯|r
.target Doras
    .accept 6386 >>接任务: |cFFFCDC00返回十字路口|r
step << Orc/Troll
    .goto Orgrimmar,34.340,36.328
    >>从飞行路线塔穿过大桥
.target Vol'jin
>>与|cFF00FF25Vol'jin|r交谈
    .turnin 831 >>交任务: |cFF00FF25将军的命令|r
step
    .goto Orgrimmar,31.9,37.7
.target Thrall
>>与|cFF00FF25Thrall|r交谈
    .accept 5726 >>接任务: |cFFFCDC00隐藏的敌人|r
step << Paladin
    .goto Orgrimmar,32.272,35.794
    .trainer >>去训练你的职业技能
step
    .goto Orgrimmar,47.2,53.4
    >>头撞到阴影的裂缝
.target Kor'ghan
>>与|cFF00FF25Kor'ghan|r交谈
    .accept 813 >>接任务: |cFFFCDC00寻找解毒剂|r
step
    #completewith Fizzle
    .goto Orgrimmar,53.03,48.78
    .zone 213 >>Zone into Ragefire Chasm
	.xp >11,1
--/dump C_Map.GetBestMapForUnit("player")
step
    #completewith Fizzle
    .deathskip >>在精神治疗师处死亡并重生
	.xp >11,1
--If player is 10 or lower
step
    #completewith next
    .goto Orgrimmar,49.0,94.2
    .zone Durotar >>前往: |cFFDB2EEF杜隆塔尔|r
	.xp <11,1
--If player is 11 or higher
step
    #label Fizzle
    >>杀死菲兹尔，并为他的爪子掠夺他。设法清除周围营地的暴徒，腾出空间
    .goto Durotar,41.9,26.0
    .complete 806,1 --Fizzle's Claw (1)
step << !Warrior
    #completewith next
.goto Durotar,39.2,32.3,30 >>离开雷脊
step << Warrior
    .goto Durotar,39.2,32.3
    >>为歌唱的鳞片杀死闪电隐藏。执行此操作时，请按照箭头指向出口。
    .complete 1498,1 --Singed Scale (5)
step << Warrior
    .isQuestComplete 1498
    #sticky
    #completewith next
.goto Durotar,39.2,32.3,30 >>离开雷脊
step
    #completewith kronsamu
    .complete 813,1 --Venomtail Poison Sac (4)
step
    #label kronsamu
>>开始为护身符杀死鳄鱼
    >>南下时杀了他们。我们接下来要做你的图腾任务 << Troll Shaman/Orc Shaman
    .goto Durotar,35.2,27.5,60,0
    .goto Durotar,35.7,57.8,60,0
    .goto Durotar,35.2,27.5,60,0
    .goto Durotar,35.7,57.8
    .complete 816,1 --Kron's Amulet (1)
step << Troll Shaman/Orc Shaman
    #completewith shamancallfire
    .complete 813,1 --Venomtail Poison Sac (4)
step << Troll Shaman/Orc Shaman
    #label shamancallfire
.goto Durotar,36.6,58.0,15 >>沿着山路跑
step << Troll Shaman/Orc Shaman
    .goto Durotar,38.6,59.0
>>与|cFF00FF25Telf Joolam|r交谈
    .turnin 1524 >>交任务: |cFF00FF25火焰的召唤|r
.target Telf Joolam
    .accept 1525 >>接任务: |cFFFCDC00火焰的召唤|r
step
    #completewith next
    .deathskip >>在精神治疗者处死亡并重生，或者跑回剃须刀山
step
.goto Durotar,52.3,43.1
>>与|cFF00FF25Orgnil Soulscar|r交谈
    .turnin 806 >>交任务: |cFF00FF25黑暗风暴|r
.target Orgnil Soulscar
    .accept 828 >>接任务: |cFFFCDC00玛高兹|r
step << Shaman
    #sticky
    #completewith next
    #level 12
    .trainer >>如果你要和其他人一起玩，就要训练祖先的精神
step << Shaman
    #level 12
    .goto Durotar,54.3,42.4
    .train 547 >>训练治愈波r3
    .train 1535 >>火车火新星图腾
step << Warrior
    #level 12
    .goto Durotar,54.3,42.4
    .train 5242 >>训练战斗呐喊r2
    .train 7384 >>列车功率过大
step << !Warrior
    .goto Durotar,54.4,42.2
.vendor >>从Jark购买6个老虎袋，直到你无法装备新袋子
step
    #xprate >1.499
    .goto Durotar,51.9,43.5
.target Gar'Thok
>>与|cFF00FF25Gar'OK|r交谈
    .turnin 837 >>交任务: |cFF00FF25野猪人的进犯|r
step
    >>从剃刀山往东走，然后笔直向北走
    .goto Durotar,55.6,36.6,80,0
    .goto Durotar,56.4,20.1
>>与|cFF00FF25Margoz|r交谈
    .turnin 828 >>交任务: |cFF00FF25玛高兹|r
.target Margoz
    .accept 827 >>接任务: |cFFFCDC00骷髅石|r
step
    #sticky
    #completewith next
    >>旅行时杀死蝎子获得毒囊
    .goto Durotar,55.7,15.7
    .complete 813,1 --Venomtail Poison Sac (4)
step
    #sticky
    #label Collars2
   .goto Durotar,51.8,10.0
>>在骷髅岩杀死燃烧之刃暴徒以灼烧项圈，直到中尉徽章掉落
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
step << Orc Shaman/Troll Shaman/Orc Warrior/Troll Shaman/Troll Warrior
    .use 4945 >>为了燃烧的阴影之眼杀死加兹乌斯。他可能在洞穴的多个区域。使用你之前保存的微弱发光骷髅，在虚空行者身上涂上粘性胶水以减少你受到的伤害，使用治疗药剂恢复健康。使用LoS(视线)避开他的影子箭。如果死亡意味着杀害和掠夺Gazz'uz，不要害怕死亡
.goto Durotar,51.8,10.0
.collect 4903,1,832 --Collect Eye of Burning Shadow
    .accept 832 >>接任务: |cFFFCDC00燃影之眼|r
    .unitscan Gazz'uz
step << Tauren Shaman/Tauren Warrior/Undead Warrior/Paladin
    .use 4945 >>为了燃烧的阴影之眼杀死加兹乌斯。他可能在洞穴的多个区域。如果你有治疗药剂，使用它们来恢复健康。使用LoS(视线)避开他的影子箭。如果死亡意味着杀害和掠夺Gazz'uz，不要害怕死亡
.goto Durotar,51.8,10.0
.collect 4903,1,832 --Collect Eye of Burning Shadow
    .accept 832 >>接任务: |cFFFCDC00燃影之眼|r
    .unitscan Gazz'uz
step
    #requires Collars2
    #sticky
    #completewith harpingme
    >>旅行时杀死蝎子获得毒囊
    .goto Durotar,55.7,15.7
    .complete 813,1 --Venomtail Poison Sac (4)
step
.goto Durotar,56.4,20.1
>>与|cFF00FF25Margoz|r交谈
    .turnin 827 >>交任务: |cFF00FF25骷髅石|r
.target Margoz
    .accept 829 >>接任务: |cFFFCDC00尼尔鲁·火刃|r
step << Shaman
    .isOnQuest 1525
    .goto Durotar,56.3,28.0,60,0
    .goto Durotar,52.8,28.7,20 >>向南走，然后进入这里的洞穴，在竖琴区上方
step << Shaman
    >>为试剂袋杀死燃烧之刃信徒
.goto Durotar,52.5,26.7
    .complete 1525,2 --Reagent Pouch (1)
step << Shaman
    .isOnQuest 1525
    .goto Durotar,52.8,28.7,20 >>离开洞穴
step
    .goto Durotar,54.0,27.7,30,0
    .goto Durotar,51.3,23.5,30,0
    .goto Durotar,51.5,19.1,30,0
    .goto Durotar,54.0,27.7,30,0
    .goto Durotar,51.3,23.5,30,0
    .goto Durotar,51.5,19.1,30,0
    >>杀死该地区的哈比
    .complete 835,1 --Dustwind Savage (12)
    .complete 835,2 --Dustwind Storm Witch (8)
step
    #completewith next
    .deathskip >>在精神疗愈者处死去并重生，或者跑回雷兹拉克
step
    >>返回雷兹拉克
    .goto Durotar,46.4,22.9
.target Rezlak
>>与|cFF00FF25Rezlak|r交谈
    .turnin 835 >>交任务: |cFF00FF25保卫商路|r
step
    >>为了毒囊杀死蝎子
    .goto Durotar,55.7,15.7
    .complete 813,1 --Venomtail Poison Sac (4)
step << Warrior/Rogue
	.goto Orgrimmar,81.2,19.0
	.collect 25873,1 >>从Zendo'jian那里购买一把锋利的飞刀
step
    .goto Orgrimmar,31.733,37.823
>>与|cFF00FF25Thrall|r交谈
    .turnin 5726 >>交任务: |cFF00FF25隐藏的敌人|r
.target Thrall
    .accept 5727 >>接任务: |cFFFCDC00隐藏的敌人|r << Shaman
step
    .goto Orgrimmar,47.0,53.4
.target Kor'ghan
>>与|cFF00FF25Kor'ghan|r交谈
    .turnin 813 >>交任务: |cFF00FF25寻找解毒剂|r
step
    .goto Orgrimmar,49.473,50.589
>>与|cFF00FF25Neeru Fireblade|r交谈
    .turnin 829 >>交任务: |cFF00FF25尼尔鲁·火刃|r
.target Neeru Fireblade
    .accept 809 >>接任务: |cFFFCDC00雅克塞罗斯|r
step
    .isOnQuest 832
    .goto Orgrimmar,49.473,50.589
.target Neeru Fireblade
>>与|cFF00FF25Neeru Fireblade|r交谈
    .turnin 832 >>交任务: |cFF00FF25燃影之眼|r
step << Shaman
    .goto Orgrimmar,49.473,50.589
    >>与Neeru Fireblade交谈
    .complete 5727,1
    .skipgossip 3216,1
--If NPC has an active quest accept/turnin (available or unavailable) you must add NPCID,X (X being the TALK ONLY gossip, which is 1 99% of the time)
step
    #completewith LostBut
    .goto Orgrimmar,53.03,48.78
    .zone 213 >>Zone into Ragefire Chasm
step
    #completewith LostBut
    .deathskip >>在精神治疗师处死亡并重生
step << tbc
    .goto Durotar,41.6,18.7
    >>即使显示“缺少前置请求”，您仍然可以提交此任务
.target Rhinag
>>与|cFF00FF25Rhinag|r交谈
    .turnin 812 >>交任务: |cFF00FF25救命如救火|r
step << wotlk
    .goto Durotar,42.103,15.0161
    >>即使显示“缺少前置请求”，您仍然可以提交此任务
.target Rhinag
>>与|cFF00FF25Rhinag|r交谈
    .turnin 812 >>交任务: |cFF00FF25救命如救火|r
step
    #label LostBut
    .goto Durotar,43.1,30.3
.target Misha Tor'kren
>>与|cFF00FF25Misha Tor'kren|r交谈
    .turnin 816 >>交任务: |cFF00FF25丢失的孩子|r
step
    .goto The Barrens,62.3,20.1
>>与|cFF00FF25Ak'Zeloth|r交谈
    .turnin 809 >>交任务: |cFF00FF25雅克塞罗斯|r
.target Ak'Zeloth
    .accept 924 >>接任务: |cFFFCDC00恶魔之种|r
step
    .goto The Barrens,62.3,20.0
    >>掠夺阿克泽洛斯旁边的紫石。这个项目有一个30分钟的计时器，所以一定要快点
    .collect 4986,1
    .turnin 926 >>交任务: |cFF00FF25有瑕疵的能量石|r
step << Warrior
    .goto The Barrens,61.4,21.1
>>与|cFF00FF25Uzzek|r交谈
    .turnin 1498 >>交任务: |cFF00FF25防御之道|r
.target Uzzek
    .accept 1502 >>接任务: |cFFFCDC00索恩格瑞姆·火眼|r
]])
