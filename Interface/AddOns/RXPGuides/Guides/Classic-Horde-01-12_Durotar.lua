local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
<< Horde
#name 1-6杜洛塔尔
#version 1
#group RestedXP部落1-22
#defaultfor Troll/Orc
#next 6-10杜洛塔尔

step << !Orc !Troll
    #completewith next
    +|cFFFCDC00您选择了一个适合兽人和巨魔的指南。您应该选择在|r中开始的相同起始区域
step
    .goto Durotar,43.29,68.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kaltunk|r
    .accept 4641 >>接任务: |cFFFCDC00起点|r
    .target Kaltunk
step << Warrior/Shaman/Warlock
    #completewith next
    +|cFFFCDC00Kill|cFFFF5722斑点野猪|r。在你拥有35件价值铜的供应商物品（包括你的盔甲）之前，将它们洗劫一空。|r << Warlock
    +|cFFFCDC00Kill|cFFFF5722斑点野猪|r。在你拥有10件价值铜的供应商物品（包括你的盔甲）之前，将它们洗劫一空。|r << Warrior/Shaman
    .goto Durotar,43.85,71.73,50,0 << Warlock
    .goto Durotar,44.19,65.34,50,0 << Warrior/Shaman
    .mob Mottled Boar
    .money >0.01
step << Warlock
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ruzan|r
    .accept 1485 >>接任务: |cFFFCDC00邪灵劣魔|r
    .target Ruzan
step << Warrior/Shaman
    .goto Durotar,43.49,67.35,30,0
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duokna|r
    .vendor >>供应商垃圾箱
    .target Duokna
    .money >0.01
step
    .goto Durotar,42.28,68.48,12,0 << !Warrior !Shaman
    .goto Durotar,42.29,68.39,12,0 << Warrior/Shaman
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gornek|r
    .turnin 4641 >>交任务: |cFF00FF25起点|r
    .accept 788 >>接任务: |cFFFCDC00小试身手|r
    .target Gornek
step << Warrior/Shaman
    .goto Durotar,42.28,68.48,10,0 
    .goto Durotar,42.89,69.44 << Warrior
    .goto Durotar,42.39,69.00 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Frang|r << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shikrik|r << Shaman
    .train 6673 >>火车|T132333:0|t[战斗呐喊] << Warrior
    .train 8017 >>火车|T136086:0|t[火箭武器] << Shaman
    .target Frang << Warrior
    .target Shikrik << Shaman
step << Warlock
    #softcore
    #completewith Nartok
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>前往|cFF00FF25Nartok|r
    .money <0.01
step << Warlock
    #softcore
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>朝|cFF00FF25Hramg|r行驶
    .money >0.01
step << Warlock
    #hardcore
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>朝|cFF00FF25Hramg|r行驶
step << Warlock
    #softcore
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Hraug|r
    .vendor >>供应商垃圾箱
    .target Hraug
    .money >0.01
step << Warlock
    #hardcore
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Hraug|r
    .vendor >>供应商垃圾箱
    .target Hraug
step << Warlock
    #label Nartok
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Nartok|r
    .train 348 >>火车|T135817:0|t[献祭]
    .target Nartok
step << !Warrior !Rogue
    #softcore
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duokna|r
    >>|cFF0E8312购买|r |T132794:0|t[清爽的泉水]|cFF0E6312 << !Hunter
    >>|cFF0E8312从她那里购买|r |T132382:0|t[粗箭头]|cFF0E6312 |r << Hunter
    .collect 159,30,6394,1 << !Hunter !Shaman --Refreshing Spring Water (30)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .target Duokna
    .money <0.015 << !Hunter
    .money <0.0040 << Hunter
step << Warlock
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duokna|r
    >>|cFF0E8312购买|r |T132794:0|t[清爽的泉水]|cFF0E6312
    .collect 159,5,6394,1 --Refreshing Spring Water (5)
    .target Duokna
    .money <0.0025
step << Warlock
    #completewith next
    .goto Durotar,43.57,67.28,25,0
    >>在前往燃烧之刃湾的途中杀死|cFFFF5722斑点野猪
    >>|cFFFCDC00在到达那里之前，尝试进入第二级|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock
    .goto Durotar,45.30,56.42,100 >>前往燃烧之刃湾
    .isOnQuest 1485
step << Warlock
    .loop 50,Durotar,43.87,58.42,44.53,58.62,45.18,58.42,45.83,58.59,45.79,57.43,46.46,57.57,47.19,57.12,46.21,56.69,46.28,56.11,45.65,56.90,45.35,56.32,44.77,56.87,44.58,56.10,44.27,56.59,43.85,55.52,43.87,58.42
    >>杀死|cFFFF5722家族成员|r。为|cFF00BCD4Vile熟悉的头部|r
    .complete 1485,1 --Vile Familiar Head (6)
    .mob Vile Familiar
step
    #completewith Sarkoth
    .goto Durotar,43.57,67.28,35,0 << !Warlock
    .goto Durotar,43.89,65.84,45,0 << !Warlock
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
step << Warlock/Warrior/Shaman/Hunter
    #som
    .loop 50,Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.77,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
    .xp 2+870>>研磨至870+/900xp << Warlock
    .xp 3+760>>研磨至760+/1400xp << Warrior/Shaman/Hunter
    .mob Mottled Boar
step << Warlock
    #era
    .loop 50,Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.77,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
    .xp 3+685>>研磨至685+/1400xp
    .mob Mottled Boar
step << Warlock
    #era
    #completewith Ruzan2
	>>|cFFFCDC00Grind |cFFFF5722斑点野猪|r。在您拥有价值1银的供应商物品之前，将其洗劫一空|r
    .mob Mottled Boar
	.money >0.01
step << Warlock/Warrior/Shaman/Hunter
    #som
    #completewith Ruzan2
	>>|cFFFCDC00Grind |cFFFF5722斑点野猪|r。在您拥有价值2白银的供应商物品之前，请将其盗走|r << Warrior
	>>|cFFFCDC00Grind |cFFFF5722斑点野猪|r。在您拥有价值1银75铜的供应商物品之前，将其洗劫一空 << Warlock
	>>|cFFFCDC00Grind |cFFFF5722斑点野猪|r。在您拥有价值1银10铜的供应商物品之前，将其洗劫一空 << Hunter
	>>|cFFFCDC00Grind |cFFFF5722斑点野猪|r。在您拥有价值1银的供应商物品之前，将其洗劫一空|r << Shaman
    .mob Mottled Boar
	.money >0.02 << Warrior
	.money >0.0175 << Warlock
	.money >0.011 << Hunter
	.money >0.01 << Shaman
step << Rogue
    #label Duokna2
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duokna|r
    .vendor >>供应商垃圾箱
    .target Duokna
step << Warlock
    #label Ruzan2
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ruzan|r
    .turnin 1485 >>交任务: |cFF00FF25邪灵劣魔|r
    .accept 1499 >>接任务: |cFFFCDC00邪灵劣魔|r
    .target Ruzan
step << Warlock
    #completewith Gornek2
    .cast 688 >>|cFFFCDC00Cast|r|T136218:0|t[召唤小鬼]
step << Warlock
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
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Rwag|r
    .turnin 3083 >>交任务: |cFF00FF25密文石板|r << Troll Rogue 
    .turnin 3088 >>交任务: |cFF00FF25密文羊皮纸|r << Orc Rogue 
    .train 53 >>列车|T132090:0|t[后标签]
    .target Rwag
    .money <0.04
    .xp <4,1
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
    .money <0.01
step << Warlock
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>朝|cFF00FF25Hramg|r行驶
    .money >0.01
step << Warlock
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Hraug|r
    .vendor >>供应商垃圾箱
    .target Hraug
    .money >0.01
step << Warlock
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Nartok|r
    .turnin 3090 >>交任务: 被污染的羊皮纸
    .train 172 >>列车|T136118:0|t[腐败]
    .target Nartok
step
    #sticky
    #label Galgar
    .goto Durotar,42.73,67.23,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Galgar|r
    .accept 4402 >>接任务: |cFFFCDC00戈加尔的清凉果|r
    .target Galgar
step
    #era
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duokna|r
    >>|cFF0E8312购买|r |T132794:0|t[清爽的泉水]|cFF0E6312 << !Rogue !Warrior !Hunter
    >>|cFF0E8312从她那里购买|r |T132382:0|t[粗箭头]|cFF0E6312 |r << Hunter
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >>供应商垃圾箱
    .target Duokna
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<15 << !Rogue !Warrior !Hunter
step
    #som
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duokna|r
    >>|cFF0E8312购买|r |T132794:0|t[清爽的泉水]|cFF0E6312 << !Rogue !Warrior !Hunter !Shaman
    >>|cFF0E8312从她那里购买|r |T132382:0|t[粗箭头]|cFF0E6312 |r << Hunter
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >>供应商垃圾箱
    .target Duokna
    .money <0.0145 << Hunter
    .money >0.1 << Rogue/Warrior/Shaman
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman
step << Hunter
    #som
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duokna|r
    >>|cFF0E8312从她那里购买|r |T132382:0|t[粗箭头]|cFF0E6312 |r
    .collect 2512,400,6394,1 --Rough Arrow (400)
    .vendor >>供应商垃圾箱
    .target Duokna
    .money <0.0115
    .itemcount 2512,<200
step << Hunter
    #som
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duokna|r
    >>|cFF0E8312从她那里购买|r |T132382:0|t[粗箭头]|cFF0E6312 |r
    .collect 2512,200,6394,1 --Rough Arrow (200)
    .vendor >>供应商垃圾箱
    .target Duokna
    .money <0.0105
    .itemcount 2512,<200
step << Shaman
    #som
    #requires Galgar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shikrik|r and |cFF00FF25Canaga|r
    .turnin 3084 >>交任务: |cFF00FF25符文石板|r << Troll
    .turnin 3089 >>交任务: |cFF00FF25符文羊皮纸|r << Orc
    .train 8042 >>列车|T136026:0|t[地震]
    .goto Durotar,42.39,69.00
    .accept 1516 >>接任务: |cFFFCDC00大地的召唤|r
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Shaman
    #era
    #requires Galgar
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shikrik|r
    .turnin 3084 >>交任务: |cFF00FF25符文石板|r << Troll
    .turnin 3089 >>交任务: |cFF00FF25符文羊皮纸|r << Orc
    .target Shikrik
step << Mage
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Mai'ah|r
    .turnin 3086 >>交任务: |cFF00FF25雕文石板|r << Troll
    .train 1459 >>列车|T135932:0|t[奥秘智力]
    .target Mai'ah
step << !Warlock
    #requires Galgar
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zureetha|r
    .accept 792 >>接任务: |cFFFCDC00邪灵劣魔|r
    .target Zureetha Fargaze
step << Hunter
    #som
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jen'shan|r
    .turnin 3082 >>交任务: |cFF00FF25风蚀石板|r << Troll
    .turnin 3087 >>交任务: |cFF00FF25风蚀羊皮纸|r << Orc
    .train 1978 >>列车|T132204:0|t[蛇刺]
    .target Jen'shan
step << Hunter
    #era
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jen'shan|r
    .turnin 3082 >>交任务: |cFF00FF25风蚀石板|r << Troll
    .turnin 3087 >>交任务: |cFF00FF25风蚀羊皮纸|r << Orc
    .target Jen'shan
step << Warrior
    #som
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Frang|r
    .turnin 2383 >>交任务: |cFF00FF25简易羊皮纸|r << Orc
    .turnin 3065 >>交任务: |cFF00FF25普通石板|r << Troll
    .train 100 >>列车|T132337:0|t[收费]
    .train 772 >>列车|T132155:0|t[伦德]
    .target Frang
    .money <0.02
step << Warrior
    #som
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Frang|r
    .turnin 2383 >>交任务: |cFF00FF25简易羊皮纸|r << Orc
    .turnin 3065 >>交任务: |cFF00FF25普通石板|r << Troll
    .train 772 >>列车|T132155:0|t[伦德]
    .target Frang
step << Warrior
    #era
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
    .complete 4402,1 --Cactus Apple (10)
step
    #completewith Tails
    .goto Durotar,44.98,69.13,20,0
    .goto Durotar,45.64,65.70,45,0
    .goto Durotar,47.37,65.67,45,0
    >>睡觉时使用|T133486:0|t[Forman的21点]|cFF00FF25Lazy Peons |r
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step << !Warlock
    #completewith Imps
    >>杀死|cFFFF5722坏工人|r。为|cFF00BCD4Corpid Worker Tails|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step << !Warlock
    #label Imps
    .loop 45,Durotar,43.87,58.42,44.53,58.62,45.18,58.42,45.83,58.59,45.79,57.43,46.46,57.57,47.19,57.12,46.21,56.69,46.28,56.11,45.65,56.90,45.35,56.32,44.77,56.87,44.58,56.10,44.27,56.59,43.85,55.52,43.87,58.42
    >>杀死|cFFFF5722邪恶家族|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step
    #label Tails
    .loop 45,Durotar,43.26,58.28,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.28,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.28
    >>杀死|cFFFF5722坏工人|r。为|cFF00BCD4Corpid Worker Tails|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step
    .loop 40,Durotar,44.98,69.13,45.64,65.70,47.37,65.67,46.74,60.66,47.09,57.90,43.90,57.79,42.70,57.25,41.27,58.95,40.91,60.41,38.83,61.84,44.98,69.13
    >>睡觉时使用|T133486:0|t[Forman的21点]|cFF00FF25Lazy Peons |r
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step
    #era
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
    .itemcount 159,<5 << !Rogue !Warrior !Hunter
    .itemcount 2512,<600 << Hunter
step
    #label Sting
    .goto Durotar,42.29,68.39,12,0
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gornek|r
    .turnin 789 >>交任务: |cFF00FF25工蝎的尾巴|r
    .target Gornek
step << Shaman
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shikrik|r and |cFF00FF25Canaga|r
    .train 8042 >>列车|T136026:0|t[地震]
    .goto Durotar,42.39,69.00
    .accept 1516 >>接任务: |cFFFCDC00大地的召唤|r
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller 
step << Mage
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Mai'ah|r
    .train 116 >>列车|T135846:0|t[霜冻螺栓]
    .target Mai'ah
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ken'jai|r
    .train 589 >>训练你的职业技能
    .money <0.021
    .target Ken'jai
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ken'jai|r
    .train 1243 >>火车|T135987:0|t[强力词：坚韧]
    .train 589 >>火车|T136207:0|t[阴影词：痛苦]
    .money <0.011
    .target Ken'jai
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ken'jai|r
    .train 589 >>火车|T136207:0|t[阴影词：痛苦]
    .money <0.01
    .target Ken'jai
step << !Warlock
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zureetha|r
    .turnin 792 >>交任务: |cFF00FF25邪灵劣魔|r
    .accept 794 >>接任务: |cFFFCDC00火刃奖章|r
    .target Zureetha Fargaze
step << Hunter
    #era
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jen'shan|r
    .train 1978 >>列车|T132204:0|t[蛇刺]
    .target Jen'shan
step << Warrior
    #era
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Frang|r
    .train 100 >>列车|T132337:0|t[收费]
    .train 772 >>列车|T132155:0|t[伦德]
    .target Frang
    .money <0.02
    .train 772,1
step << Warrior
    #era
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Frang|r
    .train 772 >>列车|T132155:0|t[伦德]
    .target Frang
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Frang|r
    .train 100 >>列车|T132337:0|t[收费]
    .target Frang
    .money <0.01
step
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Thazz'ril|r
    .turnin 5441 >>交任务: |cFF00FF25懒惰的苦工|r
    .accept 6394 >>接任务: |cFFFCDC00塔兹利尔的镐|r
    .target Foreman Thazz'ril
step
    #era
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
    .complete 4402,1 --Cactus Apple (10)
step << !Warrior !Rogue !Shaman
    #era
    .loop 45,Durotar,43.87,58.42,44.53,58.62,45.18,58.42,45.83,58.59,45.79,57.43,46.46,57.57,47.19,57.12,46.21,56.69,46.28,56.11,45.65,56.90,45.35,56.32,44.77,56.87,44.58,56.10,44.27,56.59,43.85,55.52,43.87,58.42
    .xp 4+1720>>研磨至1720+/2100xp
    .mob Vile Familiar
    .isOnQuest 4402
step << !Warrior !Rogue !Shaman
    #era
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
    #era
    .loop 25,Durotar,42.70,52.99,42.97,51.14,43.56,52.05,43.74,52.65,44.13,52.85,44.82,52.51,44.83,53.40,44.78,54.57,45.14,55.02,45.51,55.23,45.14,55.02,44.51,55.03,44.21,54.12,43.92,54.30,43.87,55.22,43.46,55.56,43.05,55.24,42.38,54.22,42.53,53.48,43.27,53.82,42.70,52.99
    .xp 5+1635>>研磨至1635+/28000p << !Shaman
    .xp 5+645>>研磨至645+/28000p << Shaman
    .isQuestTurnedIn 4402
step
    #era
    .loop 25,Durotar,42.70,52.99,42.97,51.14,43.56,52.05,43.74,52.65,44.13,52.85,44.82,52.51,44.83,53.40,44.78,54.57,45.14,55.02,45.51,55.23,45.14,55.02,44.51,55.03,44.21,54.12,43.92,54.30,43.87,55.22,43.46,55.56,43.05,55.24,42.38,54.22,42.53,53.48,43.27,53.82,42.70,52.99
    .xp 5+1255>>研磨至1255+/2800xp << !Shaman
    .xp 5+265>>研磨至265+/28000p << Shaman
    .isOnQuest 4402
step
    #softcore
    #completewith Betrayers
    .goto Durotar,44.70,52.47
    .deathskip >>|cFFFCDC00或者，在箭头|r附近的|cFF00FF25Spirit Healer |r处死亡并重新喷漆
    .target Spirit Healer
step
	#completewith next
    .goto Durotar,44.70,52.47
    .goto Durotar,53.55,44.68,30 >>|cFFFCDC00通过将角色放置在岩石边缘，直到它们看起来漂浮，然后注销并返回|r来执行注销跳过
	.link https://www.youtube.com/watch?v=7vmnvdjbUnM >>单击此处
step
    #label Betrayers
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
    #era
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Thazz'ril|r
    .turnin 6394 >>交任务: |cFF00FF25塔兹利尔的镐|r
    .target Foreman Thazz'ril
step
    #som
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Thazz'ril|r
    .turnin 6394 >>交任务: |cFF00FF25塔兹利尔的镐|r
    .target Foreman Thazz'ril
    .xp 5+1460,1 << !Shaman
    .xp 5,1 << Shaman
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
    .money <0.02
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
    .target Frang
    .money <0.02
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Frang|r
    .train 3127 >>列车|T132269:0|t[Parry]
    .target Frang
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
    .money <0.02
step << Rogue
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Rwag|r
    .train 1757 >>火车|T136189:0|t[邪恶的打击]
    .target Rwag
step << Warlock
    #completewith Hraug3
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>朝|cFF00FF25Hramg|r行驶
step << Warlock
    #label Hraug3
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Hraug|r
    >>|cFF0E8312从他那里购买|r |T133738:0|t[Grimoire of Blood Pact]|cFF0E6312 |r
    .collect 16321,1,817,1 --Grimoire of Blood Pact
    .vendor >>供应商垃圾箱
    .target Hraug
    .money <0.03
step << Warlock
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Nartok|r
    .train 695 >>列车|T136197:0|t[影子螺栓]
    .train 1454 >>列车|T136126:0|t[生命抽头]
    .target Nartok
    .money <0.02
step << Warlock
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Nartok|r
    .train 695 >>列车|T136197:0|t[影子螺栓]
    .target Nartok
step << Warlock
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
    #som
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
#classic
<< Horde
#name 6-10杜洛塔尔
#version 1
#group RestedXP部落1-22
#defaultfor Troll/Orc
#next 10-12 杜隆塔尔

step
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ukor|r
    .accept 2161 >>接任务: |cFFFCDC00苦工的重担|r
    .target Ukor
step
	#era/som
    .goto Durotar,54.3,73.3,25,0
    .goto Durotar,54.5,75.0,25,0
    .goto Durotar,54.1,76.6,25,0
    .goto Durotar,54.1,76.6,0
    >>探索者巡视了一下
.target Lar Prowltusk
>>与|cFF00FF25Lar Prowltusk|r交谈
    .accept 786 >>接任务: |cFFFCDC00科卡尔半人马的进攻|r
step
    .goto Durotar,56.0,73.9
.target Vel'rin Fang
>>与|cFF00FF25Vel'rin Fang|r交谈
    .accept 817 >>接任务: |cFFFCDC00生活所需的虎皮|r
step
    .goto Durotar,55.9,74.4
.target Master Vornal
>>与|cFF00FF25Master Vornal|r交谈
    .accept 818 >>接任务: |cFFFCDC00沃纳尔大师|r
step
    .goto Durotar,55.9,74.7
>>与|cFF00FF25Master Gadrin|r交谈
    .turnin 805 >>交任务: |cFF00FF25去森金村报到|r
.target Master Gadrin
    .accept 808 >>接任务: |cFFFCDC00明希纳的颅骨|r
    .accept 826 >>接任务: |cFFFCDC00扎拉赞恩|r
    .accept 823 >>接任务: |cFFFCDC00向奥戈尼尔报告|r
step << Rogue
    .goto Durotar,56.29,73.40
    .vendor >>购买K'Waii投掷的3级装备
step << Shaman
    .goto Durotar,56.5,73.1
    >>修理你的武器。如果你有足够的钱(5s4c)，请从Traxexir购买一根手杖。否则，请跳过此步骤(稍后再回来)
    .collect 2495,1 --Collect Walking Stick
step << Rogue
    .goto Durotar,56.5,73.1
     >>修理你的武器。如果你有足够的钱(4s1c)，请从Traxexir购买细高跟鞋。否则，请跳过此步骤(稍后再回来)
    .collect 2494,1 --Collect Stiletto
step << Orc Warrior
    .goto Durotar,56.5,73.1
    >>修理你的武器。如果你有足够的钱(4s84c)，请从Traxexir购买一把大斧头。否则，请跳过此步骤(稍后再回来)
    .collect 2491,1 --Collect Large Axe
step << Troll Warrior
    .goto Durotar,56.5,73.1
    >>修理你的武器。如果你有足够的钱(5s40c)，就从Traxexir买一辆Tomahawk。否则，请跳过此步骤(稍后再回来)
    .collect 2490,1 --Collect Tomahawk
step << Hunter
    .goto Durotar,56.5,73.1
    >>修理你的武器。如果你有足够的钱(2秒85美分)，请从Traxexir购买Hornwood Recurrive Bow。否则，请跳过此步骤(稍后再回来)
    .collect 2506,1 --Collect Hornwood Recurve Bow
step
	#era/som
    #sticky
    #completewith next
    .goto Durotar,59.7,71.7,50,0
    .goto Durotar,57.6,77.9,50,0
    >>沿着海滩奔跑，尽可能多地杀死爬行动物和马克鲁拉，以获取黏液和眼睛。您不必在此处完成此步骤。
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
step
	#era/som
    .goto Durotar,52.1,83.3,75 >>到达海滩尽头
step
	#era/som
    .goto Durotar,50.9,79.2,30 >>进入科尔卡基地
step << Priest
	#era/som
    #sticky
	#softcore
    >>在整个杜隆塔尔，开始收集3堆亚麻布。这将用于稍后制作魔杖
    >>如果你已经买了根魔杖，或者可以从AH那里买到便宜的，那么跳过这一步。
    .collect 2589,60 --Linen Cloth (60)
step << Priest
	#era/som
    #sticky
	#hardcore
    >>在整个杜隆塔尔，开始收集3堆亚麻布。这将用于稍后制作魔杖
    .collect 2589,60 --Linen Cloth (60)
step
	#era/som
    .unitscan Warlord Kolkanis
    #sticky
    #completewith Bonfire
    +如果是稀有的，在你7级时杀死它。确保使用早期的治疗药剂。
step
	#era/som
    >>在帐篷里的地上焚烧卷轴
    .goto Durotar,49.8,81.2
    .complete 786,1 --Attack Plan: Valley of Trials destroyed (1)
step
	#era/som
    >>在地上焚烧卷轴
    .goto Durotar,47.7,77.4
    .complete 786,2 --Attack Plan: Sen'jin Village destroyed (1)
step
	#era/som
    #label Bonfire
    >>在地上焚烧卷轴
    .goto Durotar,46.3,79.0
    .complete 786,3 --Attack Plan: Orgrimmar destroyed (1)
step
	#era/som
    #softcore
    .goto Durotar,57.5,73.3,200 >>在篝火中死去，在精神治疗者那里重生，或者逃跑
step << Shaman
	#era/som
    #softcore
    .goto Durotar,56.5,73.1
    >>修理你的武器。如果你有足够的钱(5s4c)，请从Traxexir购买一根手杖。否则，请跳过此步骤(稍后再回来)
	>>你可以从外面和他说话
    .collect 2495,1 --Collect Walking Stick
step << Rogue
	#era/som
    #softcore
    .goto Durotar,56.5,73.1
     >>修理你的武器。如果你有足够的钱(4s1c)，请从Traxexir购买细高跟鞋。否则，请跳过此步骤(稍后再回来)
	>>你可以从外面和他说话
    .collect 2494,1 --Collect Stiletto
step << Orc Warrior
	#era/som
    #softcore
    .goto Durotar,56.5,73.1
    >>修理你的武器。如果你有足够的钱(4s84c)，请从Traxexir购买一把大斧头。否则，请跳过此步骤(稍后再回来)
	>>你可以从外面和他说话
    .collect 2491,1 --Collect Large Axe
step << Troll Warrior
	#era/som
    #softcore
    .goto Durotar,56.5,73.1
    >>修理你的武器。如果你有足够的钱(5s40c)，就从Traxexir买一辆Tomahawk。否则，请跳过此步骤(稍后再回来)
	>>你可以从外面和他说话
    .collect 2490,1 --Collect Tomahawk
step << Hunter
	#era/som
    #softcore
    .goto Durotar,56.5,73.1
    >>修理你的武器。如果你有足够的钱(2秒85美分)，请从Traxexir购买Hornwood Recurrive Bow。否则，请跳过此步骤(稍后再回来)
	>>你可以从外面和他说话
    .collect 2506,1 --Collect Hornwood Recurve Bow
step
    #softcore
    #completewith next
    .goto Durotar,57.3,53.5,120 >>死于地拉加德要塞外的北塔。在剃刀山重生
step
	#era/som
    #hardcore
    #completewith next
    .goto Durotar,50.9,79.2,50,0
    .goto Durotar,52.5,44.4,120 >>离开科尔卡尔基地。在去剃须刀山的路上碾碎暴徒
step
	#som
	#phase 3-6
    #hardcore
    #completewith next
    .goto Durotar,52.2,43.2,120 >>前往剃须山
step
    .goto Durotar,52.2,43.2
>>与|cFF00FF25Orgnil Soulscar|r交谈
    .turnin 823 >>交任务: |cFF00FF25向奥戈尼尔报告|r
.target Orgnil Soulscar
    .accept 806 >>接任务: |cFFFCDC00黑暗风暴|r
step
    >>煤仓内，顶层
    .goto Durotar,51.9,43.5
.target Gar'Thok
>>与|cFF00FF25Gar'OK|r交谈
    .accept 784 >>接任务: |cFFFCDC00背信弃义的人类|r
    .accept 837 >>接任务: |cFFFCDC00野猪人的进犯|r
step
    .goto Durotar,51.1,42.4
.target Cook Torka
>>与|cFF00FF25Cook Torka|r交谈
    .accept 815 >>接任务: |cFFFCDC00恐龙蛋大餐|r
step
    #completewith next
    .goto Durotar,50.2,43.1,15 >>沿着这条小路走
step
    >>爬上塔楼
    .goto Durotar,49.9,40.3
.target Furl Scornbrow
>>与|cFF00FF25Furl Scornbrow|r交谈
    .accept 791 >>接任务: |cFFFCDC00新的背包|r
step << Shaman
    .goto Durotar,52.0,40.5
    >>修理你的武器。如果你有足够的钱(5s4c)，从乌戈尔买一根拐杖。否则，请跳过此步骤(稍后再回来)
    .collect 2495,1 --Collect Walking Stick
step << Rogue
    .goto Durotar,52.0,40.5
     >>修理你的武器。如果你有足够的钱(4s1c)，从乌戈尔买一个细高跟鞋。否则，请跳过此步骤(稍后再回来)
    .collect 2494,1 --Collect Stiletto
step << Orc Warrior
    .goto Durotar,52.0,40.5
    >>修理你的武器。如果你有足够的钱(4s84c)，从乌戈尔买一把大斧子。否则，请跳过此步骤(稍后再回来)
    .collect 2491,1 --Collect Large Axe
step << Troll Warrior
    .goto Durotar,52.0,40.5
    >>修理你的武器。如果你有足够的钱(5s40c)，从乌戈尔买一辆战斧。否则，请跳过此步骤(稍后再回来)
    .collect 2490,1 --Collect Tomahawk
step << Hunter
	#completewith next
    .goto Durotar,53.0,41.0
    >>修理你的武器。如果你有足够的钱(2s85c)，从Ghrawt买一把Hornwood Recurve Bow。否则，请跳过此步骤(稍后再回来)
    .collect 2506,1 --Collect Hornwood Recurve Bow
step << Hunter
    .goto Durotar,53.0,41.0
    .vendor >>从Ghrawt那里买足够的箭来装满你的箭袋
step << Warrior/Rogue
    .goto Durotar,52.0,40.7
    .money <0.0020
    .train 2018 >>火车铁匠。锻造允许你制造锐化宝石(+2武器伤害，持续1小时)。如果你愿意，可以跳过锻造和采矿
step << Warrior/Rogue
    .goto Durotar,51.8,40.9
    .money <0.0010
    .trainer 2580 >>训练采矿。在你的魔法书中施放“寻找矿物”
step << Warrior/Rogue
    .goto Durotar,53.0,42.0
    .money <0.0081
    .collect 2901,1 >>购买采矿镐。留意我的静脉，用铁匠技术为你的武器制作磨石
step << !Warrior !Rogue !Hunter
    .goto Durotar,51.5,41.6
.target Innkeeper Grosk
>>与|cFF00FF25Innkeeper Grosk|r交谈
    .turnin 2161 >>交任务: |cFF00FF25苦工的重担|r
    .home >>把你的炉石放在剃刀山
    .vendor >>尽可能多地购买5级水
step << Warrior/Rogue/Hunter
    .goto Durotar,51.5,41.6
.target Innkeeper Grosk
>>与|cFF00FF25Innkeeper Grosk|r交谈
    .turnin 2161 >>交任务: |cFF00FF25苦工的重担|r
    .home >>把你的炉石放在剃刀山
    .vendor >>购买最多20种5级食物
step << Priest
    .goto Durotar,54.3,42.9
>>与|cFF00FF25Tai'jin|r交谈
    .turnin 5649 >>接任务: |cFFFCDC00部族的传统|r
.target Tai'jin
    .accept 5648 >>接任务: |cFFFCDC00灵魂之衣|r
step << Priest
    >>使用较低治疗等级2，然后在咕哝Kor'ja身上使用力量词：坚韧
    .goto Durotar,53.1,46.5
    .complete 5648,1 --Heal and fortify Grunt Kor'ja
step << Priest
    .goto Durotar,54.3,42.9
.target Tai'jin
>>与|cFF00FF25Tai'jin|r交谈
    .turnin 5648 >>交任务: |cFF00FF25灵魂之衣|r
step << Priest
	#som
	#phase 3-6
    #sticky
	#softcore
    >>在整个杜隆塔尔，开始收集3堆亚麻布。这将用于稍后制作魔杖
    >>如果你已经买了根魔杖，或者可以从AH那里买到便宜的，那么跳过这一步。
    .collect 2589,60 --Linen Cloth (60)
step << Priest
	#som
	#phase 3-6
    #sticky
	#hardcore
    >>在整个杜隆塔尔，开始收集3堆亚麻布。这将用于稍后制作魔杖
    .collect 2589,60 --Linen Cloth (60)
step
    #sticky
    #label KulTiras
    .goto Durotar,58.14,57.56,0
    >>杀死Kul Tiras暴徒。抢走他们的碎片
    .complete 784,1 --Kul Tiras Sailor (10)
    .complete 784,2 --Kul Tiras Marine (8)
    .complete 791,1 --Canvas Scraps (8)
step
    .goto Durotar,59.2,58.3,25 >>进入要塞
step
    .goto Durotar,59.7,58.3
    >>去要塞的顶层。杀死Benedict中尉并抢走他的钥匙-小心他使用盾牌猛击(打断)
    .complete 784,3 --Lieutenant Benedict (1)
    .collect 4882,1 --Collect Benedict's Key (1)
step
    .goto Durotar,59.8,57.8,12,0
    .goto Durotar,59.9,57.5,12 >>在这里上楼梯
    >>掠夺胸部。从物品中接受任务
    .goto Durotar,59.3,57.6
    .collect 4881,1,830 --Collect Aged Envelope (1)
    .accept 830 >>接任务: |cFFFCDC00将军的命令|r
step
	#era
    .goto Durotar,58.4,57.2
    .xp 7+2195>>提升经验到2195+/4500xp
step
	#som
	#phase 1-2
    .goto Durotar,58.4,57.2
    .xp 7+1890>>提升经验到1890+/4500xp
step
	#som
	#phase 3-6
    .goto Durotar,58.4,57.2
    .xp 7+750>>提升经验到750+/4500xp
step
    #softcore
    #requires KulTiras
    .goto Durotar,53.5,44.5,120 >>在精神治疗者处死亡并重生，或者逃跑
step
    #softcore
    .goto Durotar,51.9,43.5
>>与|cFF00FF25Gar'OK|r交谈
    .turnin 784 >>交任务: |cFF00FF25背信弃义的人类|r
.target Gar'Thok
    .accept 825 >>接任务: |cFFFCDC00海底沉船|r
    .turnin 830 >>交任务: |cFF00FF25将军的命令|r
    .accept 831 >>接任务: |cFFFCDC00将军的命令|r
step
    #hardcore
    #requires KulTiras
    >>跑回Razor Hill
    .goto Durotar,51.9,43.5
>>与|cFF00FF25Gar'OK|r交谈
    .turnin 784 >>交任务: |cFF00FF25背信弃义的人类|r
.target Gar'Thok
    .accept 825 >>接任务: |cFFFCDC00海底沉船|r
    .turnin 830 >>交任务: |cFF00FF25将军的命令|r
    .accept 831 >>接任务: |cFFFCDC00将军的命令|r
step
    .goto Durotar,49.9,40.3
.target Furl Scornbrow
>>与|cFF00FF25Furl Scornbrow|r交谈
    .turnin 791 >>交任务: |cFF00FF25新的背包|r
step << Shaman
    .goto Durotar,52.0,40.5
    >>修理你的武器。如果你有足够的钱(5s4c)，从乌戈尔买一根拐杖。否则，请跳过此步骤(稍后再回来)
    .collect 2495,1 --Collect Walking Stick
step << Rogue
    .goto Durotar,52.0,40.5
     >>修理你的武器。如果你有足够的钱(4s1c)，从乌戈尔买一个细高跟鞋。否则，请跳过此步骤(稍后再回来)
    .collect 2494,1 --Collect Stiletto
step << Orc Warrior
    .goto Durotar,52.0,40.5
    >>修理你的武器。如果你有足够的钱(4s84c)，从乌戈尔买一把大斧子。否则，请跳过此步骤(稍后再回来)
    .collect 2491,1 --Collect Large Axe
step << Troll Warrior
    .goto Durotar,52.0,40.5
    >>修理你的武器。如果你有足够的钱(5s40c)，从乌戈尔买一辆战斧。否则，请跳过此步骤(稍后再回来)
    .collect 2490,1 --Collect Tomahawk
step << Hunter
	#completewith next
    .goto Durotar,53.0,41.0
    >>修理你的武器。如果你有足够的钱(2s85c)，从Ghrawt买一把Hornwood Recurve Bow。否则，请跳过此步骤(稍后再回来)
    .collect 2506,1 --Collect Hornwood Recurve Bow
step << Hunter
    .goto Durotar,53.0,41.0
    .vendor >>从Ghrawt那里买足够的箭来装满你的箭袋
step << Warrior/Rogue
    .goto Durotar,52.0,40.7
    .money <0.0020
    .train 2018 >>火车铁匠。锻造允许你制造锐化宝石(+2武器伤害，持续1小时)。如果你愿意，可以跳过锻造和采矿
step << Warrior/Rogue
    .goto Durotar,51.8,40.9
    .money <0.0010
    .trainer 2580 >>训练采矿。在你的魔法书中施放“寻找矿物”
step << Warrior/Rogue
    .goto Durotar,53.0,42.0
    .money <0.0081
    .collect 2901,1 >>购买采矿镐。留意我的静脉，用铁匠技术为你的武器制作磨石
step << Shaman
    .goto Durotar,54.419,42.588
    .trainer >>训练你的职业技能
step << Priest
    .goto Durotar,54.3,42.9
    .trainer >>训练你的职业技能
step << Warrior
    .goto Durotar,54.190,42.468
    .trainer >>训练你的职业技能
step << Hunter
    .goto Durotar,51.8,43.5
    .trainer >>训练你的职业技能
step << Rogue
    .goto Durotar,52.0,43.7
    .trainer >>训练你的职业技能
step << Warlock
    .goto Durotar,54.4,41.2
    .trainer >>训练你的职业技能
    .goto Durotar,54.7,41.5
    .vendor >>如果您在培训后有钱，请购买Firebolt书籍(否则请稍后购买)
step << Warrior/Rogue
    .goto Durotar,54.2,41.9
    .money <0.01
    .trainer >>培训急救
step
    .goto Durotar,54.4,42.2
    .money <0.1250
    .vendor >>从Jark那里买一个6槽包
step << Priest/Warlock/Mage
    .goto Durotar,51.5,41.6
    .vendor >>尽可能多地购买5级水
step << Warrior/Rogue/Hunter
    .goto Durotar,51.5,41.6
    .vendor >>购买最多20种5级食物
step
    #sticky
    #completewith Tools
    >>在这里杀死一些Makrura以换取眼睛/爬行动物以换取黏液
    .complete 818,1 --Intact Makrura Eye (4)
    .complete 818,2 --Crawler Mucus (8)
step
    #label Tools
    >>检查离海岸最近的船上的工具箱。如果找不到这些产卵，请查看其他船只。它们可能有点难看
    .goto Durotar,61.9,55.5,12 >>在水下的窗户里
    .goto Durotar,62.3,56.3,12 >>水下的
    .goto Durotar,61.4,56.1,12 >>靠近海岸
    .complete 825,1 --Gnomish Tools (3)
step
    #sticky
    #completewith Fur
    >>杀死所有你看到的老虎的皮毛。现在不需要完成。
    .complete 817,1 --Durotar Tiger Fur (4)
step
    >>游到岛上。在这个岛上的地上掠夺Taillasher鸡蛋。他们通常由Taillasher看守
    .goto Durotar,68.8,71.5
    .complete 815,1 --Taillasher Egg (3)
step
    #sticky
    #completewith next
    >>在这里杀死一些Makrura以获取眼睛和爬行器以获取粘液。现在不需要完成。
    .complete 818,1 --Intact Makrura Eye (4)
    .complete 818,2 --Crawler Mucus (8)
step
    .goto Durotar,66.9,80.0,175 >>游到另一个岛
step
    #sticky
    #completewith Trolls
    >>杀死该地区的巨魔。当巫毒巨魔痊愈时要小心
    .complete 826,1 --Hexed Troll (8)
    .complete 826,2 --Voodoo Troll (8)
step
    .goto Durotar,67.4,87.8
    >>杀死扎拉扎内。当他施放治愈之波时，保存你的地球冲击。掠夺他的头 << Shaman
    >>杀死扎拉扎内。把你的凿击术留到他施放治疗波的时候。掠夺他的头 << Rogue
    >>杀死扎拉扎内。小心，因为他可以治愈(你可能需要治疗药剂)。掠夺他的头 << !Shaman !Rogue
    .complete 826,3 --Zalazane's Head (1)
step
    #label Trolls
    .goto Durotar,67.4,87.8
    >>在地上掠夺一个头骨
    .complete 808,1 --Minshina's Skull (1)
step
    #label Fur
    .goto Durotar,68.34,83.54
    >>杀死其余的巨魔。巫毒巨魔痊愈时要小心
    .complete 826,1 --Hexed Troll (8)
    .complete 826,2 --Voodoo Troll (8)
step
    >>获取剩余的虎皮
    .goto Durotar,64.7,88.5,90,0
    .goto Durotar,65.2,80.8,90,0
    .goto Durotar,59.9,83.6,90,0
    .goto Durotar,64.7,88.5,90,0
    .goto Durotar,65.2,80.8,90,0
    .goto Durotar,59.9,83.6,90,0
    .goto Durotar,59.9,83.6
    .complete 817,1 --Durotar Tiger Fur (4)
step
    #softcore
    .goto Durotar,57.5,73.3,200 >>在精神治疗者处死亡并重生，或者逃跑
step
    >>从Makrura/爬虫手中抢走剩余的眼睛和黏液
    .goto Durotar,59.7,71.7,100,0
    .goto Durotar,57.6,77.9,100,0
    .goto Durotar,59.7,71.7,100,0
    .goto Durotar,57.6,77.9,100,0
    .goto Durotar,59.7,71.7
    .complete 818,1 --Intact Makrura Eye (4)
    .complete 818,2 --Crawler Mucus (8)
step
    .goto Durotar,56.48,73.11
    .vendor >>Trayexir的供应商垃圾处理和维修。你可以在小屋外面和他说话
step << Mage
    >>到帐篷里去
    .goto Durotar,56.3,75.1
    .trainer >>训练你的职业技能
step
	#completewith SkullX
    +把微弱发光的骷髅从转弯处保存起来，以便以后使用(你会被告知何时使用)
step
    .goto Durotar,55.9,74.7
.target Master Gadrin
>>与|cFF00FF25Master Gadrin|r交谈
    .turnin 808 >>交任务: |cFF00FF25明希纳的颅骨|r
    .turnin 826 >>交任务: |cFF00FF25扎拉赞恩|r
step
    .goto Durotar,56.0,74.3
.target Master Vornal
>>与|cFF00FF25Master Vornal|r交谈
    .turnin 818 >>交任务: |cFF00FF25沃纳尔大师|r
step
    .goto Durotar,56.0,73.9
.target Vel'rin Fang
>>与|cFF00FF25Vel'rin Fang|r交谈
    .turnin 817 >>交任务: |cFF00FF25生活所需的虎皮|r
step
	#era/som
    .goto Durotar,54.3,73.3
.target Lar Prowltusk
>>与|cFF00FF25Lar Prowltusk|r交谈
    .turnin 786 >>交任务: |cFF00FF25科卡尔半人马的进攻|r
step
	#som
	#phase 3-6
    .goto Durotar,43.8,39.1
    .xp 9+4500>>提升经验到4500+/6500xp
step
	#som
	#phase 3-6
    .goto Durotar,51.1,42.4
.target Cook Torka
>>与|cFF00FF25Cook Torka|r交谈
    .turnin 815 >>交任务: |cFF00FF25恐龙蛋大餐|r
step
	#som
	#phase 3-6
    .goto Durotar,51.9,43.5
.target Gar'Thok
>>与|cFF00FF25Gar'OK|r交谈
    .turnin 825 >>交任务: |cFF00FF25海底沉船|r
step << Shaman
	#som
	#phase 3-6
    .goto Durotar,54.4,42.5
.target Swart
>>与|cFF00FF25Swart|r交谈
    .accept 2983 >>接任务: |cFFFCDC00火焰的召唤|r
    .trainer >>训练你的职业技能
step << Priest
	#som
	#phase 3-6
    .goto Durotar,54.3,42.9
    .trainer >>训练你的职业技能
step << Orc Warrior/Troll Warrior
	#som
	#phase 3-6
    .goto Durotar,54.190,42.468
.target Sorek
.target Tarshaw Jaggedscar
.target Krang Stonehoof
>>与|cFF00FF25Krang Stonehoof|r交谈
-->>与|cFF00FF25Tarshaw Jaggedscar|r交谈
-->>与|cFF00FF25Sorek|r交谈
    .accept 1505 >>接任务: |cFFFCDC00老兵犹塞克|r
    .trainer >>训练你的职业技能
step << Rogue
	#som
	#phase 3-6
    .goto Durotar,52.0,43.7
    .trainer >>训练你的职业技能
step << Warrior/Rogue
	#som
	#phase 3-6
    .goto Durotar,54.2,41.9
    .money <0.01
    .train 3273 >>培训急救
step << Warlock
	#som
	#phase 3-6
    .goto Durotar,54.4,41.2
    .trainer >>训练你的职业技能
.target Ophek
>>与|cFF00FF25Ophek|r交谈
    .accept 1506 >>接任务: |cFFFCDC00甘鲁尔的召唤|r
step << Hunter
	#som
	#phase 3-6
    .goto Durotar,51.8,43.5
    .trainer >>训练你的职业技能
.target Thotar
>>与|cFF00FF25Thotar|r交谈
    .accept 6062 >>接任务: |cFFFCDC00驯服野兽|r
step << Hunter
	#som
	#phase 3-6
    .goto Durotar,51.8,43.5
    .trainer >>训练你的职业技能
.target Thotar
>>与|cFF00FF25Thotar|r交谈
    .accept 6062 >>接任务: |cFFFCDC00驯服野兽|r
step << Hunter
	#som
	#phase 3-6
    >>单击包中的驯鹿棒。尝试在最大射程(30码)进行
    .goto Durotar,51.5,50.0
    .complete 6062,1 --Tame a Dire Mottled Boar
step << Hunter
	#som
	#phase 3-6
    .goto Durotar,51.8,43.5
>>与|cFF00FF25Thotar|r交谈
    .turnin 6062 >>交任务: |cFF00FF25驯服野兽|r
.target Thotar
    .accept 6083 >>接任务: |cFFFCDC00驯服野兽|r
step << Hunter
	#som
	#phase 3-6
    >>不要杀死你看到的装甲蝎子。你以后会需要的
    .goto Durotar,59.3,27.6
    .complete 6083,1 --Tame a Surf Crawler
step << Hunter
	#som
	#phase 3-6
    .goto Durotar,51.8,43.5
>>与|cFF00FF25Thotar|r交谈
    .turnin 6083 >>交任务: |cFF00FF25驯服野兽|r
.target Thotar
    .accept 6082 >>接任务: |cFFFCDC00驯服野兽|r
step << Hunter
	#som
	#phase 3-6
    .use 15920 >>点击你包里的驯蝎棒。尝试在最大射程(30码)进行
    .goto Durotar,59.3,27.6
    .complete 6082,1 --Tame an Armored Scorpid
step << Hunter
	#som
	#phase 3-6
    .goto Durotar,51.8,43.5
>>与|cFF00FF25Thotar|r交谈
    .turnin 6082 >>交任务: |cFF00FF25驯服野兽|r
.target Thotar
    .accept 6081 >>接任务: |cFFFCDC00训练野兽|r
step << Hunter
	#som
	#phase 3-6
    .goto Durotar,53.0,41.0
    .vendor >>供应商垃圾箱。购买10级箭，直到你的Quiver满为止(1000支箭)
step
    .goto Durotar,48.9,48.5
    >>杀死该地区的Quilboars和Scouts
    .complete 837,1 --Razormane Quilboar (4)
    .complete 837,2 --Razormane Scout (4)
step
    .goto Durotar,43.8,39.1
    >>杀死该地区的除尘兵和战警。吸尘器施放回春(治疗)，而战警则是坦克。
    .complete 837,3 --Razormane Dustrunner (4)
    .complete 837,4 --Razormane Battleguard (4)
step << Warlock/Hunter
	#era/som
    .xp 9+4500>>提升经验到4500+/6500xp
step << Warlock/Hunter
	#era/som
    .goto Durotar,51.1,42.4
.target Cook Torka
>>与|cFF00FF25Cook Torka|r交谈
    .turnin 815 >>交任务: |cFF00FF25恐龙蛋大餐|r
step << Warlock/Hunter
	#era/som
    .goto Durotar,51.9,43.5
.target Gar'Thok
>>与|cFF00FF25Gar'OK|r交谈
    .turnin 825 >>交任务: |cFF00FF25海底沉船|r
    .turnin 837 >>交任务: |cFF00FF25野猪人的进犯|r
step << Warlock
	#era/som
    .goto Durotar,54.4,41.2
    .trainer >>训练你的职业技能
.target Ophek
>>与|cFF00FF25Ophek|r交谈
    .accept 1506 >>接任务: |cFFFCDC00甘鲁尔的召唤|r
step << Hunter
	#era/som
    .goto Durotar,51.8,43.5
    .trainer >>训练你的职业技能
.target Thotar
>>与|cFF00FF25Thotar|r交谈
    .accept 6062 >>接任务: |cFFFCDC00驯服野兽|r
step << Hunter
	#era/som
    .use 15917 >>单击包中的驯鹿棒。尝试在最大射程(30码)进行
    .goto Durotar,51.5,50.0
    .complete 6062,1 --Tame a Dire Mottled Boar
step << Hunter
	#era/som
    .goto Durotar,51.8,43.5
>>与|cFF00FF25Thotar|r交谈
    .turnin 6062 >>交任务: |cFF00FF25驯服野兽|r
.target Thotar
    .accept 6083 >>接任务: |cFFFCDC00驯服野兽|r
step << Hunter
	#era/som
   .use 15919 >>不要杀死你看到的装甲蝎子。你以后会需要的
    .goto Durotar,59.3,27.6
    .complete 6083,1 --Tame a Surf Crawler
step << Hunter
	#era/som
    .goto Durotar,51.8,43.5
>>与|cFF00FF25Thotar|r交谈
    .turnin 6083 >>交任务: |cFF00FF25驯服野兽|r
.target Thotar
    .accept 6082 >>接任务: |cFFFCDC00驯服野兽|r
step << Hunter
	#era/som
    .use 15920 >>点击你包里的驯蝎棒。尝试在最大射程(30码)进行
    .goto Durotar,59.3,27.6
    .complete 6082,1 --Tame an Armored Scorpid
step << Hunter
	#era/som
    .goto Durotar,51.8,43.5
>>与|cFF00FF25Thotar|r交谈
    .turnin 6082 >>交任务: |cFF00FF25驯服野兽|r
.target Thotar
    .accept 6081 >>接任务: |cFFFCDC00训练野兽|r
step << Hunter
	#era/som
    .goto Durotar,53.0,41.0
    .vendor >>供应商垃圾箱。购买10级箭，直到你的Quiver满为止(1000支箭)
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
	#label SkullX
    .goto Durotar,46.4,22.9
>>与|cFF00FF25Rezlak|r交谈
    .turnin 834 >>交任务: |cFF00FF25沙漠之风|r
.target Rezlak
    .accept 835 >>接任务: |cFFFCDC00保卫商路|r
step << Warlock
	#som
	#phase 3-6
	>>前往: 奥格瑞玛
    .goto Orgrimmar,48.246,45.281
>>与|cFF00FF25Gan'rul血眼|r交谈
    .turnin 1506 >>交任务: |cFF00FF25甘鲁尔的召唤|r
.target Gan'rul Bloodeye
    .accept 1501 >>接任务: |cFFFCDC00虚空中的生物|r
step << Warlock
	#softcore
	#som
	#phase 3-6
	#completewith next
	+跑到附近的火盆上。垃圾生命水龙头让你失去健康，然后死于火灾
	>>或者，跑进烈火峡谷，死在里面的暴徒手中
step << Warlock
	#som
	#phase 3-6
    .goto Durotar,47.3,17.9,200 >>前往: |cFFDB2EEF杜隆塔尔|r
step
    #completewith next
    .goto Durotar,41.7,25.5,120 >>跳进雷霆岭
step
	#softcore
    .use 4945 >>杀死菲兹尔，并为他的爪子掠夺他。尽量清除周围营地的暴徒，腾出空间。很多时候，先杀死他的宠物是有道理的。如果需要，使用您的骷髅健康锅。一个很好的开场白是粘胶他，然后走出暗影箭射程，杀死他的宠物而不被他击中。
	>>如果你正在努力，请分组完成此任务
    .goto Durotar,41.9,26.0
    .complete 806,1 --Fizzle's Claw (1)
step
	#hardcore
    .use 4945 >>杀死菲兹尔，并为他的爪子掠夺他。尽量清除周围营地的暴徒，腾出空间。在很多时候，先杀死他的宠物是有意义的，如果需要的话，可以使用你的骷髅和健康锅。一个很好的开场白是粘胶他，然后走出暗影箭射程，杀死他的宠物而不被他击中。
    .goto Durotar,41.9,26.0
    .complete 806,1 --Fizzle's Claw (1)
--N add a link for warrior/rogue? Also needs more specific wording per class
step
    #softcore
	#era/som
	.goto Durotar,41.5,18.6
    >>战斗出雷脊区域或死亡跳跃到墓地。
.target Rhinag
>>与|cFF00FF25Rhinag|r交谈
    .accept 812 >>接任务: |cFFFCDC00救命如救火|r
step << !Warrior !Shaman
	#som
	#phase 3-6
	.hs >>炉底到剃须山
step
    #hardcore
	#era/som
    .goto Durotar,39.18,31.65,90,0
	.goto Durotar,41.5,18.6
    >>冲出雷脊地区
.target Rhinag
>>与|cFF00FF25Rhinag|r交谈
    .accept 812 >>接任务: |cFFFCDC00救命如救火|r
step
	#era/som
    #completewith next
    .goto Orgrimmar,49.0,94.2,80 >>前往: 奥格瑞玛
step << Rogue
	#era/som
    .goto Orgrimmar,48.13,80.55
    .vendor >>购买Trak'gen投掷的等级11。11级时装备它
step << Hunter
	#era/som
    #completewith next
    .goto Orgrimmar,37.40,52.32
    .vendor >>从山体买些苹果喂你的宠物
    .collect 4536,10 --Shiny Red Apple (10)
step
	#era/som
    .goto Orgrimmar,34.340,36.328
.target Vol'jin
>>与|cFF00FF25Vol'jin|r交谈
    .turnin 831 >>交任务: |cFF00FF25将军的命令|r
step
	#era/som
    .goto Orgrimmar,31.9,37.7
.target Thrall
>>与|cFF00FF25Thrall|r交谈
    .accept 5726 >>接任务: |cFFFCDC00隐藏的敌人|r
step << Hunter
	#era/som
    .goto Orgrimmar,66.046,18.526
.target Ormak Grimshot
>>与|cFF00FF25Ormak Grimshot|r交谈
    .turnin 6081 >>交任务: |cFF00FF25训练野兽|r
step << Warlock
	#era/som
    .goto Orgrimmar,48.246,45.281
>>与|cFF00FF25Gan'rul血眼|r交谈
    .turnin 1506 >>交任务: |cFF00FF25甘鲁尔的召唤|r
.target Gan'rul Bloodeye
    .accept 1501 >>接任务: |cFFFCDC00虚空中的生物|r
step << Rogue
	#era/som
    .goto Orgrimmar,42.72,53.56
.target Therzok
>>与|cFF00FF25Therzok|r交谈
	.accept 1963 >>接任务: |cFFFCDC00碎手氏族|r
	.trainer >>训练你的职业技能
step
	#era/som
    .goto Orgrimmar,47.2,53.4
.target Kor'ghan
>>与|cFF00FF25Kor'ghan|r交谈
    .accept 813 >>接任务: |cFFFCDC00寻找解毒剂|r
    >>在酒吧里放上“野兽训练”。记得稍后教你的宠物技能 << Hunter
step
	#era/som
    >>放弃治疗的需要。这将删除任务上的计时器，但仍允许您继续执行
    .abandon 812 >>放弃治疗需求
step
	#era/som
    #completewith next
    .hs >>炉底到剃须山
step << !Warlock !Hunter
	#era/som
    .goto Durotar,51.1,42.4
.target Cook Torka
>>与|cFF00FF25Cook Torka|r交谈
    .turnin 815 >>交任务: |cFF00FF25恐龙蛋大餐|r
step << !Warlock !Hunter
	#era/som
    .goto Durotar,51.9,43.5
.target Gar'Thok
>>与|cFF00FF25Gar'OK|r交谈
    .turnin 825 >>交任务: |cFF00FF25海底沉船|r
    .turnin 837 >>交任务: |cFF00FF25野猪人的进犯|r
step
	#som
	#phase 3-6
    .goto Durotar,51.9,43.5
.target Gar'Thok
>>与|cFF00FF25Gar'OK|r交谈
    .turnin 837 >>交任务: |cFF00FF25野猪人的进犯|r
step
    .goto Durotar,52.3,43.1
>>与|cFF00FF25Orgnil Soulscar|r交谈
    .turnin 806 >>交任务: |cFF00FF25黑暗风暴|r
.target Orgnil Soulscar
    .accept 828 >>接任务: |cFFFCDC00玛高兹|r
step << Shaman
	#era/som
    .goto Durotar,54.4,42.5
.target Swart
>>与|cFF00FF25Swart|r交谈
    .accept 2983 >>接任务: |cFFFCDC00火焰的召唤|r
    .trainer >>训练你的职业技能
step << Priest
	#era/som
    .goto Durotar,54.3,42.9
    .trainer >>训练你的职业技能
step << Orc Warrior/Troll Warrior
	#era/som
    .goto Durotar,54.190,42.468
.target Sorek
.target Tarshaw Jaggedscar
.target Krang Stonehoof
>>与|cFF00FF25Krang Stonehoof|r交谈
-->>与|cFF00FF25Tarshaw Jaggedscar|r交谈
-->>与|cFF00FF25Sorek|r交谈
    .accept 1505 >>接任务: |cFFFCDC00老兵犹塞克|r
    .trainer >>训练你的职业技能
step << Rogue
	#era/som
    .goto Durotar,52.0,43.7
    .trainer >>训练你的职业技能
step << Warrior/Rogue
	#era/som
    .goto Durotar,54.2,41.9
    .money <0.01
    .train 3273 >>培训急救
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde
#name 10-12 杜隆塔尔
#version 1
#group RestedXP部落1-22
#defaultfor Troll/Orc
#next 11-14 银松森林 << Troll Rogue/Orc Rogue
#next 12-17 贫瘠之地 << Troll !Rogue/Orc !Rogue

step << Hunter
    #completewith next
    .goto Durotar,52.98,41.03
    >>如果你买得起，请从供应商处购买层压递归弓(和箭头)
    .collect 2507,1 --Laminated Recurve Bow (1)
step
    .goto Durotar,50.8,43.6
.target Takrin Pathseeker
>>与|cFF00FF25Takrin Pathseeker交谈|r
    .accept 840 >>接任务: |cFFFCDC00部落的新兵|r
step << Warrior/Shaman
    .goto The Barrens,62.2,19.4
>>与|cFF00FF25Kargal Battlescar|r交谈
    .turnin 840 >>交任务: |cFF00FF25部落的新兵|r
.target Kargal Battlescar
    .accept 842 >>接任务: |cFFFCDC00十字路口征兵|r
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
step << Warrior/Shaman
    .goto The Barrens,52.0,30.5,150 >>跑到十字路口
step << Warrior/Shaman
    .goto The Barrens,52.2,31.8
.target Tonga Runetotem
>>与|cFF00FF25Tonga Runetotem|r交谈
    .accept 870 >>接任务: |cFFFCDC00遗忘之池|r
step << Warrior/Shaman
    .goto The Barrens,52.2,31.0
>>与|cFF00FF25Sergra Darkthorn|r交谈
    .turnin 842 >>交任务: |cFF00FF25十字路口征兵|r
.target Sergra Darkthorn
    .accept 844 >>接任务: |cFFFCDC00平原陆行鸟的威胁|r
step << !Tauren Warrior/!Tauren Shaman
    .goto The Barrens,52.5,29.8
.target Zargh
>>与|cFF00FF25Zargh|r交谈
    .accept 6365 >>接任务: |cFFFCDC00送往奥格瑞玛的肉|r
step << Warrior/Shaman
    .goto The Barrens,51.9,30.3
.target Gazrog
>>与|cFF00FF25Gazrog|r交谈
    .accept 869 >>接任务: |cFFFCDC00偷钱的迅猛龙|r
step << Warrior/Shaman
    .goto The Barrens,51.5,30.8
.target Thork
>>与|cFF00FF25Thork|r交谈
    .accept 871 >>接任务: |cFFFCDC00野猪人的袭击|r
    .accept 5041 >>接任务: |cFFFCDC00十字路口的补给品|r
step << Warrior/Shaman
    .goto The Barrens,51.5,30.4
    .fp The Crossroads >>获得the Crossroads飞行路线
step << !Tauren Warrior/!Tauren Shaman
    >>不要去奥格瑞玛
    .goto The Barrens,51.5,30.3
>>与|cFF00FF25Devrak|r交谈
    .turnin 6365 >>交任务: |cFF00FF25送往奥格瑞玛的肉|r
.target Devrak
    .accept 6384 >>接任务: |cFFFCDC00飞往奥格瑞玛|r << !Rogue
step << Warrior/Shaman
    .goto The Barrens,51.5,30.1
.target Apothecary Helbrim
>>与|cFF00FF25药剂师Helbrid|r交谈
    .accept 848 >>接任务: |cFFFCDC00菌类孢子|r
    .accept 1492 >>接任务: |cFFFCDC00码头管理员迪兹维格|r
step << Warrior/Shaman
    #hardcore
    #sticky
    #completewith next
    +下一个任务可能很难，要格外小心
step << Warrior/Shaman
    #sticky
    #completewith next
    >>收集遗忘池周围的白蘑菇
    .complete 848,1 --Collect Fungal Spores (x4)
step << Warrior/Shaman
    >>潜水至气泡裂缝
    .goto The Barrens,45.1,22.5
    .complete 870,1 --Explore the waters of the Forgotten Pools
step << Warrior/Shaman
    >>收集遗忘池周围的白蘑菇
    .goto The Barrens,45.2,23.3,40,0
    .goto The Barrens,45.2,22.0,40,0
    .goto The Barrens,44.6,22.5,40,0
    .goto The Barrens,43.9,24.4,40,0
    .goto The Barrens,45.2,23.3
    .complete 848,1 --Collect Fungal Spores (x4)
step << Warrior/Shaman
    #softcore
    #completewith next
    .deathskip >>在精神治疗师处死亡并重生
step << Warrior/Shaman
    #softcore
>>与|cFF00FF25药剂师Helbrid|r交谈
    .turnin 848 >>交任务: |cFF00FF25菌类孢子|r
.target Apothecary Helbrim
    .accept 853 >>接任务: |cFFFCDC00药剂师扎玛|r
step << Warrior/Shaman
    #hardcore
    >>跑回十字路口
    .goto The Barrens,51.5,30.1
>>与|cFF00FF25药剂师Helbrid|r交谈
    .turnin 848 >>交任务: |cFF00FF25菌类孢子|r
.target Apothecary Helbrim
    .accept 853 >>接任务: |cFFFCDC00药剂师扎玛|r
step << Warrior/Shaman
    .goto The Barrens,52.2,31.8
>>与|cFF00FF25Tonga Runetotem|r交谈
    .turnin 870 >>交任务: |cFF00FF25遗忘之池|r
.target Tonga Runetotem
    .accept 877 >>接任务: |cFFFCDC00死水绿洲|r
step << Warrior/Shaman
    >>沿着这条路跑。小心路上的高级暴徒
    .goto The Barrens,44.4,59.2
    .fp Camp Taurajo >>获得Taurajo营地飞行路线
step << Warrior/Shaman
    >>向西进入Mulgore，寻找Morin Cloudstaller。他沿着东路巡逻
    .goto Mulgore,59.7,62.5,70,0
    .goto Mulgore,51.1,58.6,70,0
    .goto Mulgore,51.1,58.6
.target Morin Cloudstalker
>>与|cFF00FF25Morin Cloudstaker交谈|r
    .accept 749 >>接任务: |cFFFCDC00不幸的商队|r
	.unitscan Morin Cloudstalker
step << Warrior/Shaman
	#som
	#phase 3-6
    .goto Mulgore,53.7,48.1
    .turnin 749 >>交任务: |cFF00FF25不幸的商队|r
step << Warrior/Shaman
	#era/som
    .goto Mulgore,48.715,59.325
.target Harken Windtotem
>>与|cFF00FF25Harken Windtotem|r交谈
    .accept 761 >>接任务: |cFFFCDC00猎捕猛鹫|r
step << Warrior/Shaman
	#era/som
    .goto Mulgore,47.513,60.164
.target Baine Bloodhoof
>>与|cFF00FF25Baine血蹄|r交谈
    .accept 767 >>接任务: |cFFFCDC00幻象仪祭|r
    .accept 746 >>接任务: |cFFFCDC00矮人的挖掘场|r
step << Warrior/Shaman
	#era/som
    .goto Mulgore,47.3,62.0
.target Ruul Eagletalon
>>与|cFF00FF25Ruul Eagletalon|r交谈
    .accept 743 >>接任务: |cFFFCDC00风怒鹰身人|r
step << Warrior/Shaman
	#era/som
    .goto Mulgore,47.8,57.6
>>与|cFF00FF25Zarlman交谈两个月|r
    .turnin 767 >>交任务: |cFF00FF25幻象仪祭|r
.target Zarlman Two-Moons
    .accept 771 >>接任务: |cFFFCDC00幻象仪祭|r
step << Warrior/Shaman
	#era/som
    .goto Mulgore,47.0,57.0
.target Maur Raincaller
>>与|cFF00FF25Maur Rainchaller|r交谈
    .accept 766 >>接任务: |cFFFCDC00马兹拉纳其|r
step << Warrior/Shaman
	#era/som
    #sticky
    #label Mulgoreall
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
    .complete 761,1 --Trophy Swoop Quill (8)
step << Warrior/Shaman
	#era/som
	#completewith CaravanR
	.use 4854 >>留心鬼嚎(稀有狼)。他在穆尔戈雷北部巡逻。杀死并掠夺他以换取恶魔疤痕斗篷。从物品中接受任务
	.collect 4854,1,770
	.unitscan Ghost Howl
step << Warrior/Shaman
	#era/som
    .goto Mulgore,52.0,61.1,10,0
    .goto Mulgore,50.0,66.4,10,0
    .goto Mulgore,50.4,66.5,10,0
    .goto Mulgore,52.0,61.1,10,0
    .goto Mulgore,50.0,66.4,10,0
    .goto Mulgore,50.4,66.5,0
    >>在树下的地面上收集看起来像橡子的物品
    .complete 771,2 --Ambercorn (2)
step << Warrior/Shaman
	#era/som
    .goto Mulgore,53.7,66.3
    >>打劫水井周围的石头
    .complete 771,1 --Well Stone (2)
step << Warrior/Shaman
	#era/som
   .goto Mulgore,47.8,57.5
>>与|cFF00FF25Zarlman交谈两个月|r
    .turnin 771 >>交任务: |cFF00FF25幻象仪祭|r
.target Zarlman Two-Moons
    .accept 772 >>接任务: |cFFFCDC00幻象仪祭|r
step << Warrior/Shaman
    .goto Thunder Bluff,32.0,66.9,60 >>跑向电梯，进入雷霆崖
step << Warrior
    .goto Thunder Bluff,40.9,62.7
    .train 227 >>火车杆
    .train 199 >>列车2h梅斯
step << Warrior/Shaman
    >>去塔的顶层
    .goto Thunder Bluff,45.6,52.0,25,0
    .goto Thunder Bluff,46.8,49.9
    .fp Thunder Bluff >>获得Thunder Bluff飞行路线
step << Warrior/Shaman
	>>进入雷霆崖洞穴
    .goto Thunder Bluff,29.6,29.7,25,0
    .goto Thunder Bluff,23.0,21.1
.target Apothecary Zamah
>>与|cFF00FF25药剂师Zamah|r交谈
    .turnin 853 >>交任务: |cFF00FF25药剂师扎玛|r
step << Warrior/Shaman
	#era/som
	>>跑出洞穴，然后跳下桥下的某个地方离开雷霆崖
	>>跑到你南边的洞穴
    .goto Thunder Bluff,29.04,37.68,55,0
    .goto Mulgore,33.48,36.68,40,0
    .goto Mulgore,32.714,36.087
>>与|cFF00FF25Seer Wiserunner|r交谈
    .turnin 772 >>交任务: |cFF00FF25幻象仪祭|r
.target Seer Wiserunner
    .accept 773 >>接任务: |cFFFCDC00智慧仪祭|r
step << Warrior/Shaman
	#era/som
    >>杀死哈比。掠夺他们的魔爪
    .goto Mulgore,31.9,41.7
    .complete 743,1 --Windfury Talon (8)
step << Warrior/Shaman
	#era/som
    .goto Mulgore,31.3,49.9
   >>为探矿者选择杀死矮人暴徒
   .use 4702 >>使用锻炉上的镐，直到你打碎了其中的5个为止。这是在矮人营地完成的。
	.collect 4702,5,746,1
    .complete 746,1 --Broken Tools (5)
--N needs testing
step << Warrior/Shaman
	#era/som
    .goto Mulgore,59.9,25.6
.target Lorekeeper Raintotem
>>与|cFF00FF25Lorekeeper Raintom交谈|r
    .accept 833 >>接任务: |cFFFCDC00神圣的墓地|r
step << Warrior/Shaman
	#era/som
    >>杀死该地区的狐狸精
    .goto Mulgore,61.5,21.9
    .complete 833,1 --Bristleback Interloper (8)
step << Warrior/Shaman
	#era/som
    .goto Mulgore,61.5,21.1
.target Ancestral Spirit
>>与|cFF00FF25祖先精神|r交谈
    .turnin 773 >>交任务: |cFF00FF25智慧仪祭|r
step << Warrior/Shaman
	#era/som
    .goto Mulgore,59.8,25.6
.target Lorekeeper Raintotem
>>与|cFF00FF25Lorekeeper Raintom交谈|r
    .turnin 833 >>交任务: |cFF00FF25神圣的墓地|r
step << Warrior/Shaman
	#era/som
    #requires Mulgoreall
	#label CaravanR
    .goto Mulgore,53.7,48.1
    .turnin 749 >>交任务: |cFF00FF25不幸的商队|r
    .accept 751 >>接任务: |cFFFCDC00不幸的商队|r
step << Warrior/Shaman
	#era/som
    .goto Mulgore,47.0,57.2
.target Maur Raincaller
>>与|cFF00FF25Maur Rainchaller|r交谈
    .turnin 766 >>交任务: |cFF00FF25马兹拉纳其|r
step << Warrior/Shaman
	#era/som
	.isOnQuest 770
	.goto Mulgore,46.75,60.23
	>>把斗篷翻进去。小心，因为这会将其从角色/库存中删除
.target Skorn Whitecloud
>>与|cFF00FF25Skorn Whitecloud|r交谈
    .turnin 770 >>交任务: |cFF00FF25恶魔之伤|r
step << Warrior/Shaman
	#era/som
    .goto Mulgore,47.513,60.164
.target Baine Bloodhoof
>>与|cFF00FF25Baine血蹄|r交谈
    .turnin 746 >>交任务: |cFF00FF25矮人的挖掘场|r
step << Warrior/Shaman
	#era/som
    .goto Mulgore,47.4,62.0
.target Ruul Eagletalon
>>与|cFF00FF25Ruul Eagletalon|r交谈
    .turnin 743 >>交任务: |cFF00FF25风怒鹰身人|r
step << Warrior/Shaman
	#era/som
    .goto Mulgore,48.7,59.4
.target Harken Windtotem
>>与|cFF00FF25Harken Windtotem|r交谈
    .turnin 761 >>交任务: |cFF00FF25猎捕猛鹫|r
step << Warrior/Shaman
	#era/som
    >>寻找Morin Cloudstaller。他沿着东路巡逻
    .goto Mulgore,51.1,58.6,70,0
    .goto Mulgore,59.7,62.5,70,0
    .goto Mulgore,51.1,58.6,70,0
    .goto Mulgore,59.7,62.5,70,0
    .goto Mulgore,51.1,58.6,70,0
    .goto Mulgore,59.7,62.5,70,0
    .goto Mulgore,59.7,62.5
>>与|cFF00FF25Morin Cloudstaker交谈|r
    .turnin 751 >>交任务: |cFF00FF25不幸的商队|r
.target Morin Cloudstalker
    .accept 764 >>接任务: |cFFFCDC00风险投资公司|r
    .accept 765 >>接任务: |cFFFCDC00菲兹普罗克主管|r
	.unitscan Morin Cloudstalker
step << Warrior/Shaman
	#era/som
    #sticky
    #label Workers
    >>杀死风险投资公司的暴徒
    .goto Mulgore,63.0,44.3
    .complete 764,1 --Venture Co. Worker (14)
    .complete 764,2 --Venture Co. Supervisor (6)
step << Warrior/Shaman
	#era/som
    >>跑进矿井，然后拥抱右边/东边。杀死监督员Fizspholler。抢他的剪贴板
    .goto Mulgore,64.9,43.3
    .complete 765,1 --Fizsprocket's Clipboard (1)
step << Warrior/Shaman
	#era/som
    #requires Workers
    .xp 11+7150>>提升经验到7150+/8700xp
step << Warrior/Shaman
	#era/som
    >>寻找Morin Cloudstaller。他沿着东路巡逻
    .goto Mulgore,51.1,58.6,70,0
    .goto Mulgore,59.7,62.5,70,0
    .goto Mulgore,51.1,58.6,70,0
    .goto Mulgore,59.7,62.5,70,0
    .goto Mulgore,51.1,58.6,70,0
    .goto Mulgore,59.7,62.5,70,0
    .goto Mulgore,59.7,62.5
.target Morin Cloudstalker
>>与|cFF00FF25Morin Cloudstaker交谈|r
    .turnin 764 >>交任务: |cFF00FF25风险投资公司|r
    .turnin 765 >>交任务: |cFF00FF25菲兹普罗克主管|r
	.unitscan Morin Cloudstalker
step << Warrior/Shaman
    #completewith next
    .hs >>炉底到剃须山
step << Shaman
	#level 12
    .goto Durotar,54.4,42.5
  .trainer >>训练你的职业技能
step << Orc Warrior/Troll Warrior
	#level 12
    .goto Durotar,54.190,42.468
    .trainer >>训练你的职业技能
step << Priest
    #sticky
    #label Linen
    >>在整个杜隆塔尔，开始收集3堆亚麻布。这将用于稍后制作魔杖
    >>如果你已经买了根魔杖，或者可以从AH那里买到便宜的，请跳过这一步
    .collect 2589,60 --Linen Cloth (60)
step << Troll Shaman/Orc Shaman
    .goto Durotar,36.6,58.0,25 >>沿着山路跑
step << Troll Shaman/Orc Shaman
    .goto Durotar,38.6,59.0
>>与|cFF00FF25Telf Joolam|r交谈
    .turnin 1524 >>交任务: |cFF00FF25火焰的召唤|r
.target Telf Joolam
    .accept 1525 >>接任务: |cFFFCDC00火焰的召唤|r
step << Warrior
    .goto Durotar,54.4,42.2
    .vendor >>从Jark购买6个老虎袋，直到你无法装备新袋子
step << Hunter
    .goto Durotar,53.0,41.0
    .vendor >>如果你有钱，就买层压递归弓。
step
    .goto Durotar,56.4,20.1
>>与|cFF00FF25Margoz|r交谈
    .turnin 828 >>交任务: |cFF00FF25玛高兹|r
.target Margoz
    .accept 827 >>接任务: |cFFFCDC00骷髅石|r
step << Hunter
    .goto Durotar,57.2,12.0
    .spell 1515 >>驯服冲浪爬虫
step
	#era/som
    #label scorp2
    #sticky
    >>杀死该区域的蝎子以获得毒囊
    .goto Durotar,55.7,15.7,0
    .goto Durotar,39.67,18.83,0
    .complete 813,1 --Venomtail Poison Sac (4)
step << Hunter
    .goto Durotar,55.06,9.91,60 >>跑向骷髅岩
step
	#era/som
    #sticky
    #label Collars2
    .goto Durotar,53.08,9.19,0
    >>在骷髅岩杀死燃烧之刃暴徒以获得灼热的项圈，直到中尉的徽章掉落
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
step
	#som
	#phase 3-6
    #sticky
    #label Collars2
    .goto Durotar,53.08,9.19,0
    >>在骷髅岩杀死燃烧的刀锋暴徒以烧灼项圈
    .complete 827,1 --Searing Collar (6)
step << Warlock
    .goto Durotar,53.6,8.5,25,0
    .goto Durotar,51.8,8.1,25,0
    .goto Durotar,51.6,9.8
    >>沿着洞穴的正确路径走。继续跟踪洞穴，在洞穴尽头掠夺箱子。
    .complete 1501,1 --Tablet of Verga (1)
step
    >>为了燃烧的阴影之眼杀死加兹乌斯。他可能在洞穴的多个区域。
    >>在虚空行者身上使用粘胶以避免被击中，使用治疗药剂恢复健康。使用LoS(视线)避开Gazz'uz的暗影箭
    >>杀死Gazz'uz后，你可以跑到洞穴内发现的水体中躲避虚空行者
    >>他很难相处，所以要小心。如果需要，可以跳过此任务
    .goto Durotar,51.8,10.0
    .collect 4903,1,832 --Collect Eye of Burning Shadow
    .accept 832 >>接任务: |cFFFCDC00燃影之眼|r
	.unitscan Gazz'uz
step
    #requires Collars2
    .goto Durotar,56.4,20.1
>>与|cFF00FF25Margoz|r交谈
    .turnin 827 >>交任务: |cFF00FF25骷髅石|r
.target Margoz
    .accept 829 >>接任务: |cFFFCDC00尼尔鲁·火刃|r
step << Shaman
    #completewith next
    .goto Durotar,52.8,28.7,40 >>到这里的洞穴里去
step << Shaman
    >>为了袋子杀死燃烧之刃信徒
    .goto Durotar,52.5,26.7
    .complete 1525,2 --Reagent Pouch (1)
step
    .goto Durotar,54.0,27.7,90,0
    .goto Durotar,51.3,23.5,90,0
    .goto Durotar,51.5,19.1,90,0
    .goto Durotar,54.0,27.7,90,0
    .goto Durotar,51.3,23.5,90,0
    .goto Durotar,51.5,19.1,90,0
    .goto Durotar,51.3,23.5
    >>杀死该地区的哈比
    .complete 835,1 --Dustwind Savage (12)
    .complete 835,2 --Dustwind Storm Witch (8)
step
    #softcore
    .deathskip >>在精神治疗师处死亡并重生
step
    #softcore
    .goto Durotar,46.4,22.9
.target Rezlak
>>与|cFF00FF25Rezlak|r交谈
    .turnin 835 >>交任务: |cFF00FF25保卫商路|r
step
    #hardcore
    >>跑回山洞，然后回到地精那里
    .goto Durotar,53.75,27.74,60,0
    .goto Durotar,51.75,27.40,60,0
    .goto Durotar,46.4,22.9
.target Rezlak
>>与|cFF00FF25Rezlak|r交谈
    .turnin 835 >>交任务: |cFF00FF25保卫商路|r
step
    #completewith next
	#requires scorp2
    .goto Durotar,45.50,11.70,70 >>前往: 奥格瑞玛
step << Rogue
	#som
	#phase 3-6
    .goto Orgrimmar,48.13,80.55
    .vendor >>购买Trak'gen投掷的等级11。11级时装备它
step << Hunter
	#som
	#phase 3-6
    #completewith next
    .goto Orgrimmar,37.40,52.32
    .vendor >>从山体买些苹果喂你的宠物
    .collect 4536,10 --Shiny Red Apple (10)
step
	#som
	#phase 3-6
    .goto Orgrimmar,34.340,36.328
.target Vol'jin
>>与|cFF00FF25Vol'jin|r交谈
    .turnin 831 >>交任务: |cFF00FF25将军的命令|r
step << Hunter
	#som
	#phase 3-6
    .goto Orgrimmar,66.046,18.526
.target Ormak Grimshot
>>与|cFF00FF25Ormak Grimshot|r交谈
    .turnin 6081 >>交任务: |cFF00FF25训练野兽|r
step << Warrior/Shaman
    #requires scorp2
    .goto Orgrimmar,54.097,68.407
>>与|cFF00FF25Innkeeper Gryshka|r交谈
    .turnin 6384 >>交任务: |cFF00FF25飞往奥格瑞玛|r
.target Innkeeper Gryshka
    .accept 6385 >>接任务: |cFFFCDC00双足飞龙管理员多拉斯|r
step << Warrior/Shaman
    .goto Orgrimmar,45.120,63.889
>>与|cFF00FF25Doras|r交谈
    .turnin 6385 >>交任务: |cFF00FF25双足飞龙管理员多拉斯|r
.target Doras
    .accept 6386 >>接任务: |cFFFCDC00返回十字路口|r
step
	#era/som
    #requires scorp2
    .goto Orgrimmar,31.733,37.823
.target Thrall
>>与|cFF00FF25Thrall|r交谈
    .turnin 5726 >>交任务: |cFF00FF25隐藏的敌人|r
step << Rogue
	#level 12
    .goto Orgrimmar,42.8,53.4
.target Therzok
>>与|cFF00FF25Therzok|r交谈
    .accept 1963 >>接任务: |cFFFCDC00碎手氏族|r
	.trainer >>训练你的职业技能
step << Rogue
    .goto Orgrimmar,42.8,53.4
.target Therzok
>>与|cFF00FF25Therzok|r交谈
    .accept 1963 >>接任务: |cFFFCDC00碎手氏族|r
step << Priest
    #sticky
    #label Robes
    #requires Linen
    >>如果你已经买了根魔杖，或者可以从AH那里买到便宜的，请跳过这一步
    >>去裁缝培训师那里学习裁缝。
    >>把你所有的亚麻布都拧成螺栓。从教练那里学习棕色亚麻长袍，并根据需要购买尽可能多的粗线来制作所有长袍
    .goto Orgrimmar,63.28,50.68
    .collect 6238,9 --Brown Linen Robe (9)
step << Priest
    #sticky
    #requires Robes
    >>如果你已经买了根魔杖，或者可以从AH那里买到便宜的，请跳过这一步
    >>列车魅力。开始解开你早先做的所有棕色亚麻长袍。如果您没有买到任何Lesser Magic Essence，请向供应商咨询并购买，或者稍后再来
    >>买一根铜棒，然后做一根刻字铜棒。
    >>从教练那里训练小魔杖。制作一个小魔杖。
    .goto Orgrimmar,53.77,38.37
    .collect 11287,1 --Lesser Magic Wand (1)
step
	#era/som
    .goto Orgrimmar,47.0,53.4
.target Kor'ghan
>>与|cFF00FF25Kor'ghan|r交谈
    .turnin 813 >>交任务: |cFF00FF25寻找解毒剂|r
step << Warlock
    .goto Orgrimmar,48.246,45.281
>>与|cFF00FF25Gan'rul血眼|r交谈
    .turnin 1501 >>交任务: |cFF00FF25虚空中的生物|r
.target Gan'rul Bloodeye
    .accept 1504 >>接任务: |cFFFCDC00誓缚|r
step
	.isOnQuest 832
	.goto Orgrimmar,49.473,50.589
.target Neeru Fireblade
>>与|cFF00FF25Neeru Fireblade|r交谈
    .turnin 832 >>交任务: |cFF00FF25燃影之眼|r
step
	.goto Orgrimmar,49.473,50.589
>>与|cFF00FF25Neeru Fireblade|r交谈
    .turnin 829 >>交任务: |cFF00FF25尼尔鲁·火刃|r
.target Neeru Fireblade
    .accept 809 >>接任务: |cFFFCDC00雅克塞罗斯|r
step
	.goto Orgrimmar,49.473,50.589
>>与|cFF00FF25Neeru Fireblade|r交谈
    .turnin 829 >>交任务: |cFF00FF25尼尔鲁·火刃|r
.target Neeru Fireblade
    .accept 809 >>接任务: |cFFFCDC00雅克塞罗斯|r
step << Warlock
    .goto Orgrimmar,49.5,50.0
    >>使用召唤雕文召唤一个虚空行者。杀了它
    .complete 1504,1 --Summoned Voidwalker (1)
step << Warlock
    >>你现在可以召唤一个虚空行者
    .goto Orgrimmar,48.246,45.281
.target Gan'rul Bloodeye
>>与|cFF00FF25Gan'rul血眼|r交谈
    .turnin 1504 >>交任务: |cFF00FF25誓缚|r
step
	#softcore
	#completewith next
    .goto Orgrimmar,52.76,48.95
	.deathskip >>进入阴影裂缝中的愤怒火焰裂缝。死在里面的暴徒中，在精神治疗者那里重生。
step
	#era/som
	#softcore
    .goto Durotar,41.6,18.7
.target Rhinag
>>与|cFF00FF25Rhinag|r交谈
    .accept 812 >>接任务: |cFFFCDC00救命如救火|r
    .turnin 812 >>交任务: |cFF00FF25救命如救火|r
step
	#era/som
	#hardcore
	>>前往: |cFFDB2EEF杜隆塔尔|r
    .goto Durotar,41.6,18.7
.target Rhinag
>>与|cFF00FF25Rhinag|r交谈
    .accept 812 >>接任务: |cFFFCDC00救命如救火|r
    .turnin 812 >>交任务: |cFF00FF25救命如救火|r
step << Warrior
    .goto Durotar,42.01,24.33,90,0
    .goto Durotar,39.18,31.65
    >>掉进雷脊。杀死闪电隐藏和雷霆蜥蜴。抢走他们的歌声
    .complete 1498,1 --Singed Scale (5)
step
    >>开始为护身符杀死鳄鱼
    .goto Durotar,35.2,27.5,60,0
    .goto Durotar,35.7,57.8
    .complete 816,1 --Kron's Amulet (1)
step
    .goto Durotar,43.1,30.3
.target Misha Tor'kren
>>与|cFF00FF25Misha Tor'kren|r交谈
    .turnin 816 >>交任务: |cFF00FF25丢失的孩子|r
step << !Shaman !Warrior
    .goto The Barrens,62.2,19.4
>>与|cFF00FF25Kargal Battlescar|r交谈
    .turnin 840 >>交任务: |cFF00FF25部落的新兵|r
.target Kargal Battlescar
    .accept 842 >>接任务: |cFFFCDC00十字路口征兵|r
step
    .goto The Barrens,62.3,20.1
>>与|cFF00FF25Ak'Zeloth|r交谈
    .turnin 809 >>交任务: |cFF00FF25雅克塞罗斯|r
.target Ak'Zeloth
    .accept 924 >>接任务: |cFFFCDC00恶魔之种|r
step
    .goto The Barrens,62.3,20.0
    >>掠夺阿克泽洛斯旁边的紫石。这个项目有一个30分钟的计时器，所以一定要快点
    .turnin 926 >>交任务: |cFF00FF25有瑕疵的能量石|r
step << Warrior
    .goto The Barrens,61.4,21.1
>>与|cFF00FF25Uzzek|r交谈
    .turnin 1498 >>交任务: |cFF00FF25防御之道|r
.target Uzzek
    .accept 1502 >>接任务: |cFFFCDC00索恩格瑞姆·火眼|r
step << Rogue
    #label BeakCave
    .goto The Barrens,47.6,19.2,70 >>前往被燃烧之刃兽人包围的洞穴
step << Rogue
    >>右键单击祭坛
    .goto The Barrens,48.0,19.1
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
step << !Shaman !Warrior
    .goto The Barrens,52.0,30.5,150 >>跑到十字路口
step << !Shaman !Warrior
    .goto The Barrens,52.2,31.8
.target Tonga Runetotem
>>与|cFF00FF25Tonga Runetotem|r交谈
    .accept 870 >>接任务: |cFFFCDC00遗忘之池|r
step << !Shaman !Warrior
    .goto The Barrens,52.2,31.0
>>与|cFF00FF25Sergra Darkthorn|r交谈
    .turnin 842 >>交任务: |cFF00FF25十字路口征兵|r
.target Sergra Darkthorn
    .accept 844 >>接任务: |cFFFCDC00平原陆行鸟的威胁|r
step << Orc !Warrior !Shaman/Troll !Warrior !Shaman
    .goto The Barrens,52.5,29.8
.target Zargh
>>与|cFF00FF25Zargh|r交谈
    .accept 6365 >>接任务: |cFFFCDC00送往奥格瑞玛的肉|r
step << Shaman Troll/Shaman Orc/Warrior Orc/Warrior Troll
    .goto The Barrens,52.5,29.8
.target Zargh
>>与|cFF00FF25Zargh|r交谈
    .turnin 6386 >>交任务: |cFF00FF25返回十字路口|r
step
    .goto The Barrens,51.99,29.89
	.home >>把炉子放在十字路口
step << !Shaman !Warrior
    .goto The Barrens,51.9,30.3
.target Gazrog
>>与|cFF00FF25Gazrog|r交谈
    .accept 869 >>接任务: |cFFFCDC00偷钱的迅猛龙|r
step << !Shaman !Warrior
    .goto The Barrens,51.5,30.8
.target Thork
>>与|cFF00FF25Thork|r交谈
    .accept 871 >>接任务: |cFFFCDC00野猪人的袭击|r
    .accept 5041 >>接任务: |cFFFCDC00十字路口的补给品|r
step << !Shaman !Warrior
    .goto The Barrens,51.5,30.4
    .fp The Crossroads >>获得the Crossroads飞行路线
step << Orc !Warrior !Shaman/Troll !Warrior !Shaman
    >>不要去奥格瑞玛
    .goto The Barrens,51.5,30.3
>>与|cFF00FF25Devrak|r交谈
    .turnin 6365 >>交任务: |cFF00FF25送往奥格瑞玛的肉|r
.target Devrak
    .accept 6384 >>接任务: |cFFFCDC00飞往奥格瑞玛|r << !Rogue
step << !Shaman !Warrior
    .goto The Barrens,51.5,30.1
.target Apothecary Helbrim
>>与|cFF00FF25药剂师Helbrid|r交谈
    .accept 848 >>接任务: |cFFFCDC00菌类孢子|r
    .accept 1492 >>接任务: |cFFFCDC00码头管理员迪兹维格|r
step << Mage
	#era/som
    +如果您计划通过AoE调平，请手动选择“荒地AoE指南”。否则，选择12-17 Barrens Guide
step << Mage
	#som
	#phase 3-6
    +如果您计划通过AoE调平，请手动选择“荒地AoE指南”。否则，请选择12-17 Barrens Guide。请注意，随着最近100%任务xp SoM的变化，Mage AoE研磨比任务路线更糟糕
step << Rogue
    .goto The Barrens,51.5,30.3
    .fly >>飞往奥格瑞玛
step << Rogue
    .goto Orgrimmar,54.097,68.407
>>与|cFF00FF25Innkeeper Gryshka|r交谈
    .turnin 6384 >>交任务: |cFF00FF25飞往奥格瑞玛|r
.target Innkeeper Gryshka
    .accept 6385 >>接任务: |cFFFCDC00双足飞龙管理员多拉斯|r
step << Rogue
    .goto Orgrimmar,45.120,63.889
>>与|cFF00FF25Doras|r交谈
    .turnin 6385 >>交任务: |cFF00FF25双足飞龙管理员多拉斯|r
.target Doras
    .accept 6386 >>接任务: |cFFFCDC00返回十字路口|r
step << Rogue
    #sticky
    #completewith next
    .goto Durotar,50.8,13.8,40 >>去齐柏林塔。带着齐柏林飞艇去幽暗城
step << Rogue
    .zone Tirisfal Glades >>Arrive in Tirisfal
step << Rogue
	#som
	#phase 3-6
    .goto Tirisfal Glades,61.87,65.02,40 >>前往: |cFFDB2EEF幽暗城|r
step << Rogue
	#som
	#phase 3-6
    .goto Tirisfal Glades,61.81,74.42,30 >>跑到电梯间
step << Rogue
	#som
	#phase 3-6
    >>把其中一部电梯放下
    .goto Undercity,63.25,48.56
    .fp Undercity >>获取幽暗城飞行路线
step << Rogue
	#som
	#phase 3-6
    .money <0.3023
    .goto Tirisfal Glades,64.16,75.54
    >>与查尔斯交谈。买一把弯刀或弯刀。你很快就会训练剑(节省10银子)。如果你的武器更好，或者AH上有更好的东西，跳过这个
    .vendor >>买一把弯刀或弯刀，确保你还有10个银币。
step << Rogue
	#som
	#phase 3-6
    #softcore
    .goto Undercity,57.32,32.77
    .trainer >>训练剑。如果你之前没有足够的钱买一把弯刀，那么在买完之后，检查AH是否有武器
step << Rogue
	#completewith Barrens
    #som
    #phase 3-6
	.hs >>如果你的炉子没火了，就把炉子放回十字路口
step << Rogue
	#completewith next
    #som
    #phase 3-6
    .goto Tirisfal Glades,60.89,59.06,30,0
    .goto Tirisfal Glades,60.73,58.76
    .zone Durotar >>前往: |cFFDB2EEF杜隆塔尔|r
step << Rogue
    #som
    #phase 3-6
    >>跑向Razor Hill
    .goto Durotar,50.85,43.59
.target Takrin Pathseeker
>>与|cFF00FF25Takrin Pathseeker交谈|r
    .accept 840 >>接任务: |cFFFCDC00部落的新兵|r
step << Rogue
	#label Barrens
    #som
    #phase 3-6
    .goto The Barrens,62.26,19.38
	.zone The Barrens >>前往: |cFFDB2EEF贫瘠之地|r
step << Rogue
    #som
    #phase 3-6
    >>前往: |cFFDB2EEF贫瘠之地|r
    .goto The Barrens,62.26,19.38
>>与|cFF00FF25Kargal Battlescar|r交谈
    .turnin 840 >>交任务: |cFF00FF25部落的新兵|r
.target Kargal Battlescar
    .accept 842 >>接任务: |cFFFCDC00十字路口征兵|r
step << Rogue
    #som
    #phase 3-6
    .goto The Barrens,52.23,31.01
>>与|cFF00FF25Sergra Darkthorn|r交谈
    .turnin 842 >>交任务: |cFF00FF25十字路口征兵|r
.target Sergra Darkthorn
    .accept 844 >>接任务: |cFFFCDC00平原陆行鸟的威胁|r
]])
