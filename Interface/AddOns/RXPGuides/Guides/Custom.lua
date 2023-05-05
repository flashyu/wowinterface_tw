RXPGuides.RegisterGuide([[
#version 18
#wotlk
#group RestedXP 法师 AoE 68-80
<< Mage
#name 68-80 法师 AoE

step << Horde
#completewith HFZep1
.zone Undercity >>前往: |cFFDB2EEF幽暗城|r
step << Horde
.goto Undercity,85.1,10.0
.train 27101 >>训练你的职业技能
.xp <68,1
step << Horde
#completewith next
.goto Undercity,82.36,15.31
.goto Undercity,67.88,14.97,30 >>转到右侧的试剂供应商，执行“注销跳过”，将角色定位在最低楼梯的最高部分，直到看起来像漂浮在空中，然后注销并重新登录。
.link https://www.youtube.com/watch?v=-Bi95bCN8dM >>单击此处查看示例
>>如果你做不到这一点，就正常离开幽暗城
step << Horde
#label HFZep1
.goto Undercity,66.23,4.43,30,0
.goto Tirisfal Glades,59.97,58.56,30,0
.goto Tirisfal Glades,58.98,59.07
.zone HowlingFjord >>Take the Zeppelin from Tirisfal Glades to Howling Fjord
step << Horde
.goto HowlingFjord,79.05,29.70
.fp Vengeance Landing >>获取复仇着陆飞行路径
step << Horde
#label VLHS
#completewith Seals
.goto HowlingFjord,79.10,30.41,20,0
.goto BoreanTundra,79.73,30.85
.home >>将您的炉石设置为复仇登陆
step << Alliance
#completewith Boat1
.zone Ironforge >>前往: |cFFDB2EEF铁炉堡|r
step << Alliance
.goto Ironforge,28.6,7.2
.train 27101 >>训练你的职业技能
.xp <68,1
step << Alliance
#completewith next
.goto Ironforge,55.51,47.75
.fly Wetlands>>飞到湿地
.zoneskip Wetlands
.zoneskip HowlingFjord
step << Alliance
#label Boat1
.goto Wetlands,4.7,57.3
.zone HowlingFjord >>前往: |cFFDB2EEF秘蓝岛|r. Take it to Howling Fjord.
>>注：这艘船以前是奥伯丁号，但在《愤怒》中改为咆哮峡湾号。
step << Alliance
#label VKHS
#completewith Seals
.goto HowlingFjord,58.6,63.1,15,0
.goto HowlingFjord,58.39,62.45
.home >>将您的炉石设置为Valgarde
>>如果你愿意，可以买一些新的食物/水
step << Alliance
.goto HowlingFjord,59.79,63.24
.fp Valgarde >>获取Valgard飞行路线
step
#requires VLHS << Horde
#requires VKHS << Alliance
.loop 60,HowlingFjord,77.97,71.27,79.14,70.12,80.10,70.93,79.20,71.53,78.32,72.94,79.82,72.86,79.46,74.32,77.95,75.45,77.79,74.25,77.44,72.61,77.20,76.31,75.88,76.91,74.34,76.55,77.97,71.27
.xp 69 >>AoE研磨密封件至69
step
#completewith next
.zone Undercity >>前往: |cFFDB2EEF幽暗城|r << Horde
.zone Stormwind City >>前往: |cFFDB2EEF暴风城|r << Alliance
.xp <69,1
step
.goto Undercity,85.1,10.0 << Horde
.goto Stormwind City,49.2,87.7 << Alliance
.train 27124 >>训练你的职业技能
.xp <69,1
step
#completewith next
.hs >>从赫斯到瓦尔加德 << Alliance
.hs >>火炉到复仇登陆 << Horde
step
.loop 60,HowlingFjord,77.97,71.27,79.14,70.12,80.10,70.93,79.20,71.53,78.32,72.94,79.82,72.86,79.46,74.32,77.95,75.45,77.79,74.25,77.44,72.61,77.20,76.31,75.88,76.91,74.34,76.55,77.97,71.27
.xp 70 >>AoE研磨密封件至70
step
#completewith next
.zone Undercity >>前往: |cFFDB2EEF幽暗城|r << Horde
.zone Stormwind City >>前往: |cFFDB2EEF暴风城|r << Alliance
.xp <70,1
step
.goto Undercity,85.1,10.0 << Horde
.goto Stormwind City,49.2,87.7 << Alliance
.train 27126 >>训练你的职业技能
.xp <70,1
step
#completewith next
.hs >>火炉到复仇登陆 << Horde
.hs >>从赫斯到瓦尔加德 << Alliance
step
#label Seals
.loop 60,HowlingFjord,77.97,71.27,79.14,70.12,80.10,70.93,79.20,71.53,78.32,72.94,79.82,72.86,79.46,74.32,77.95,75.45,77.79,74.25,77.44,72.61,77.20,76.31,75.88,76.91,74.34,76.55,77.97,71.27
.xp 72 >>AoE研磨密封件至72
step
#completewith next
.zone Undercity >>前往: |cFFDB2EEF幽暗城|r << Horde
.zone Stormwind City >>前往: |cFFDB2EEF暴风城|r << Alliance
.xp <72,1
step
.goto Undercity,85.1,10.0 << Horde
.goto Stormwind City,49.2,87.7 << Alliance
.train 42930 >>训练你的职业技能
.xp <72,1
step
#completewith next
.hs >>火炉到复仇登陆 << Horde
.hs >>从赫斯到瓦尔加德 << Alliance
step << Horde
.goto HowlingFjord,49.6,11.6
.fp Camp Winterhoof >>获取夏令营飞行路线
step << Horde
.goto HowlingFjord,26.0,25.1
.fp Apothecary Camp >>获取药剂师营地飞行路线
step << Horde
.goto GrizzlyHills,22.0,64.5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kragh
.fp Conquest Hold >>获取征服保持飞行路径
step << Alliance
.goto HowlingFjord,31.26,43.98
.fp Westguard Keep >>叫西卫队，保持飞行路线
step
#completewith next
.goto Dragonblight,92.39,64.02
.zone Dragonblight >>前往: |cFFDB2EEF龙骨荒野|r
step << Horde
.goto Dragonblight,76.48,62.20
.fp Venomspite >>获取Venomwhile飞行路径
step << Horde
#completewith Onslaught
.goto Dragonblight,76.87,63.13
.home >>将你的心设为毒液怨恨
step << Alliance
.goto Dragonblight,77.08,49.86
.fp Wintergarde Keep >>获取Wintergarde Keep飞行路线
step << Alliance
.goto Dragonblight,77.18,50.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tGo back up toward the Flight Master. Talk to Urik
.accept 12237 >>接任务: |cFFFCDC00拯救暮冬城平民|r
step << Alliance
#requires WinterHS1
#completewith next
.cast 48388 >>使用鹰头狮哨声来骑上一只温特加德鹰头狮。你可以用它在温特加德和腐肉场飞行
.use 37287
step << Alliance
.waypoint Dragonblight,86.38,50.91,0,rescue,VEHICLE_PASSENGERS_CHANGED,VEHICLE_UPDATE
>>使用“救援村民”(1)来接无助村民(您一次只能接一个)。使用“下车村民”(2)将他们交给文件管理员。冷却时使用“飞翔”(3)加快移动速度。
.complete 12237,1 
.goto Dragonblight,77.13,49.78
.use 37287
step << Alliance
.goto Dragonblight,77.16,50.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tDismount the Gryphon, Talk to Urik
.turnin 12237 >>交任务: |cFF00FF25拯救暮冬城平民|r
.accept 12251 >>接任务: |cFFFCDC00向高级指挥官复命|r
step << Alliance
#completewith Onslaught
.goto Dragonblight,77.46,51.43
.home >>将您的炉石设置为Wintergarde Keep
step << Alliance
.goto Dragonblight,78.47,48.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Halford
.turnin 12251 >>交任务: |cFF00FF25向高级指挥官复命|r
step
#label Onslaught
.loop 50,Dragonblight,87.90,41.21,87.00,42.19,86.45,40.12,85.51,41.24,83.78,41.98,84.14,40.72,84.49,37.06,87.64,35.43,87.90,41.21
.xp 74 >>AoE将猩红爆发暴民研磨至74
step
.goto Undercity,85.1,10.0 << Horde
.goto Stormwind City,49.2,87.7 << Alliance
.train 42939 >>训练你的职业技能
.xp <74,1
step
#completewith next
.hs >>从心脏到毒液 << Horde
.hs >>温特加尔德要塞的壁炉 << Alliance
step
.loop 50,Dragonblight,87.90,41.21,87.00,42.19,86.45,40.12,85.51,41.24,83.78,41.98,84.14,40.72,84.49,37.06,87.64,35.43,87.90,41.21
.xp 76 >>AoE将猩红磨成76
step
#completewith next
.hs >>从心脏到毒液 << Horde
.hs >>温特加尔德要塞的壁炉 << Alliance
step
.goto Dragonblight,60.32,51.55
>>前往Wyrmrest Temple
.fp Wyrmrest Temple >>获得Wyrmrest Temple飞行路线
step << Horde
.goto Dragonblight,37.51,45.77
>>前往阿格玛锤子
.fp Agmar's Hammer >>获取Agmar的Hammer飞行路线
step << Horde
.goto Dragonblight,38.05,46.22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aethas
.accept 12791 >>接任务: |cFFFCDC00魔法王国达拉然|r
.zoneskip SholazarBasin
.zoneskip Dalaran
step << Horde
.goto Dragonblight,38.05,46.22
.zone Dalaran >>前往: |cFFDB2EEF达拉然|r
.zoneskip SholazarBasin
.skipgossip
step << Alliance
.goto Dragonblight,29.15,55.32
>>向东进入龙骨荒野
.fp Stars' Rest >>获取星星的休息飞行路径
step << Alliance
.goto Dragonblight,29.0,55.5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Modera
.accept 12794 >>接任务: |cFFFCDC00魔法王国达拉然|r
.zoneskip SholazarBasin
.zoneskip Dalaran
step << Alliance
.goto Dragonblight,29.0,55.5
.zone Dalaran >>前往: |cFFDB2EEF达拉然|r
.zoneskip SholazarBasin
.skipgossip
step
.abandon 12791 >>放弃达拉然魔法王国。不要把这个交进去 << Horde
.abandon 12794 >>放弃达拉然魔法王国。不要把这个交进去 << Alliance
step
.goto Dalaran,56.3,46.7
.train 53140 >>进入大楼。火车转运站：达拉兰
step
.goto Dalaran,54.94,46.19
.train 42920 >>训练你的职业技能
.xp <76,1
step
.goto Dalaran,72.18,45.77
.fp Dalaran >>获取达拉然飞行路线
step
#requires DalaranFP
#completewith next
.goto Dalaran,68.54,42.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tGo to Krasus's Landing. Talk to Pentarus
.accept 12521 >>接任务: |cFFFCDC00赫米特·奈辛瓦里哪去了？|r
step
#requires DalaranFP
.goto Dalaran,68.54,42.07
.zone SholazarBasin >>Ask Pentarus to take you to Sholazar Basin. This takes 50 seconds
.skipgossip
step
.goto SholazarBasin,39.70,58.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Monte hanging from the tree
.turnin 12521 >>交任务: |cFF00FF25赫米特·奈辛瓦里哪去了？|r
.accept 12489 >>接任务: |cFFFCDC00欢迎来到索拉查盆地|r
step
#completewith end
#label Nesingwary
.goto SholazarBasin,26.8,59.3,0,0
.home >>将您的炉石设置为Nesingwarve大本营
>>如果需要，购买食物
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTravel to Nesingwary Base Camp. Talk to Hemet, Debaar, and Chad
.turnin 12489 >>交任务: |cFF00FF25欢迎来到索拉查盆地|r
.goto SholazarBasin,27.09,58.64
.accept 12524 >>接任务: |cFFFCDC00风险投资公司的风险|r
.goto SholazarBasin,27.25,59.90
.accept 12624 >>接任务: |cFFFCDC00不知所踪！|r
.goto SholazarBasin,26.86,58.94
step
#requires Nesingwary
.goto SholazarBasin,25.35,58.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Weslex
.accept 12522 >>接任务: |cFFFCDC00需要引擎|r
step
#completewith VentureCo2
>>杀死Sholazar的所有暴徒以获得黄金订婚戒指。根本不要关注这个任务
.complete 12624,1 
step
.goto SholazarBasin,38.69,56.72
>>在飞行机器旁边的水面上掠夺“引擎”
.complete 12522,1 
step
#completewith Helice
.goto SholazarBasin,36.8,47.3,0
>>AoE Swindlegrin’s Dig的创业公司
.complete 12524,1 
step
.goto SholazarBasin,35.55,47.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Engineer Helice to start her escort
.accept 12688 >>接任务: |cFFFCDC00工程师的逃亡|r
step
#label Helice
.goto SholazarBasin,37.27,50.59
>>护送Helice
.complete 12688,1 
step
#completewith next
>>AoE Swindlegrin’s Dig的创业公司
.complete 12524,1 
step
.goto SholazarBasin,37.35,45.78,50,0
.goto SholazarBasin,33.31,45.31,50,0
.goto SholazarBasin,33.13,47.90
>>AoE Swindlegrin’s Dig的创业公司
.complete 12524,1 
step
#completewith Debaar1
.hs >>Nesingwarve大本营之炉
.cooldown item,6948,>0
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to Nesingwary's Base Camp. Talk to Hemet and Debaar
.turnin 12688 >>交任务: |cFF00FF25工程师的逃亡|r
.goto SholazarBasin,27.09,58.64
.turnin 12524 >>交任务: |cFF00FF25风险投资公司的风险|r
.accept 12525 >>接任务: |cFFFCDC00工头斯温迪格林|r
.goto SholazarBasin,27.25,59.90
.isQuestComplete 12688
step
#requires EscortEnd
#label Debaar1
.goto SholazarBasin,27.25,59.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Debaar
.turnin 12524 >>交任务: |cFF00FF25风险投资公司的风险|r
.accept 12525 >>接任务: |cFFFCDC00工头斯温迪格林|r
step
.goto SholazarBasin,26.86,58.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chad
.turnin 12624 >>交任务: |cFF00FF25不知所踪！|r
.isQuestComplete 12624
step
.goto SholazarBasin,25.35,58.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Weslex
.turnin 12522 >>交任务: |cFF00FF25需要引擎|r
.accept 12523 >>接任务: |cFFFCDC00借零件|r
step
#completewith VentureCo2
.goto SholazarBasin,33.2,45.7,0
>>掠夺在斯温德莱格林的地窖附近发现的各种备件
.complete 12523,1 
step
.goto SholazarBasin,35.49,50.00
>>杀死木平台上的Foreman Swindlegrin和Meatpie
.complete 12525,1 
.complete 12525,2 
step
.goto SholazarBasin,33.2,45.7,50,0
.goto SholazarBasin,37.03,46.72
>>掠夺在斯温德莱格林的地窖附近发现的各种备件
.complete 12523,1 
step
>>杀死Sholazar的所有暴徒以获得黄金订婚戒指。根本不要关注这个任务
.complete 12624,1 
step
#completewith Debaar1
.hs >>Nesingwarve大本营之炉
.cooldown item,6948,>0
step
#completewith end
#label NesFP
.goto SholazarBasin,25.35,58.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Weslex, then Talk to the Flying Machine and Calvert
.turnin 12523 >>交任务: |cFF00FF25借零件|r
.fp Nesingwary Base Camp >>获得Nesingwarve大本营飞行路线
.goto SholazarBasin,25.27,58.45


step
#requires NesFP
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Debaar, then Drostan
.turnin 12525 >>交任务: |cFF00FF25工头斯温迪格林|r
.goto SholazarBasin,27.25,59.90
.accept 12589 >>接任务: |cFFFCDC00后坐力？什么后坐力？|r
.goto SholazarBasin,27.08,59.91
step
.goto SholazarBasin,27.08,59.91
.use 38573 >>用你包里的RJR步枪射击Lucky Wilhelm。这样做直到目标完成，然后重新装备你的魔杖
.complete 12589,1 
.turnin 12589 >>交任务: |cFF00FF25后坐力？什么后坐力？|r

step
.goto SholazarBasin,26.86,58.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chad
.turnin 12624 >>交任务: |cFF00FF25不知所踪！|r
step
.loop 75,SholazarBasin,36.21,51.02,37.13,45.50,32.88,45.11,31.67,48.72
.xp 77 >>AoE创业公司至77
step
#completewith next
.zone Dalaran >>前往: |cFFDB2EEF达拉然|r
step
.goto Dalaran,54.94,46.19
.train 42985 >>训练你的职业技能
step
.goto Dalaran,69.81,45.45
.train 54197 >>从Hira训练寒冷天气飞行
step
#completewith next
>>如果你有295或更多的法术命中(和精准天赋)，跳过这一步
.hs >>Nesingwarve大本营之炉
step
.loop 75,SholazarBasin,36.21,51.02,37.13,45.50,32.88,45.11,31.67,48.72
>>如果你有295或更多的法术命中(和精准天赋)，跳过这一步
.xp 78 >>AoE创业公司至78
step
.zone Dalaran >>前往: |cFFDB2EEF达拉然|r
step
.goto Dalaran,54.94,46.19
.train 42859 >>训练你的职业技能
.xp <78,1
step
#completewith next
.goto IcecrownGlacier,59.0,73.8
.zone Icecrown >>前往: |cFFDB2EEF冰冠冰川|r
step
.goto IcecrownGlacier,59.0,73.8
.xp 79 >>AoE亡灵到79
step
#completewith next
.zone Dalaran >>前往: |cFFDB2EEF达拉然|r
.xp <79,1
step
.goto Dalaran,54.94,46.19
.train 43008 >>训练你的职业技能
.xp <79,1
step
#completewith next
.goto IcecrownGlacier,59.0,73.8
.zone Icecrown >>前往: |cFFDB2EEF冰冠冰川|r
step
.goto IcecrownGlacier,59.0,73.8
.xp 80 >>AoE亡灵到80
]])
RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 30-32 希尔斯布莱德丘陵/Arathi JJ
#version 18
#group RestedXP部落1-30
#next 32-32千针II JJ
#xprate 1.48-1.68
step
#completewith next
.goto Orgrimmar,52.26,88.65,30,0
.goto Orgrimmar,49.42,90.90,30,0
.goto Orgrimmar,49.74,94.78,30,0
.goto Durotar,50.59,13.28
.zone Durotar >>前往: |cFFDB2EEF杜隆塔尔|r
.zoneskip Undercity
.zoneskip Tirisfal Glades
step
#completewith Gromgol
.goto Durotar,50.59,13.28,12,0
.goto Durotar,50.80,13.10,6,0
.goto Durotar,50.84,13.26,6,0
.goto Durotar,50.80,13.10,6,0
.goto Durotar,50.84,13.26,6,0
.goto Durotar,50.80,13.10,6,0
.goto Durotar,50.84,13.26,6,0
.goto Durotar,50.47,12.40,-1
.goto Durotar,58.16,8.52,-1
>>上齐柏林塔
.zone Stranglethorn Vale >>前往: |cFFDB2EEF荆棘谷|r
.zoneskip Undercity
.zoneskip Tirisfal Glades
step
#completewith next
.goto Tirisfal Glades,61.06,58.86,12,0
.goto Tirisfal Glades,61.51,59.01,10,0
.goto Tirisfal Glades,61.27,59.22,8,0
.goto Tirisfal Glades,61.13,58.84,8,0
.goto Tirisfal Glades,61.38,58.71,8,0
.goto Tirisfal Glades,61.34,59.17,8,0
.goto Tirisfal Glades,61.17,58.90,8,0
.goto Tirisfal Glades,62.07,59.14,-1
.goto Tirisfal Glades,77.82,66.72,-1
>>上齐柏林塔
.zone Stranglethorn Vale >>前往: |cFFDB2EEF荆棘谷|r
.zoneskip Tirisfal Glades,1
step
#label Gromgol
.goto Stranglethorn Vale,32.54,29.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Thysta|r
.fp Grom'gol >>获取Grom'gol大本营飞行路线
.target Thysta
step << Mage
.cast 3563 >>演员阵容|T135766:0|t[电传：Undercity]
.itemcount 17031,1
.zoneskip Undercity
.zoneskip Tirisfal Glades
step
.goto Stranglethorn Vale,31.34,29.57,10,0
.goto Stranglethorn Vale,31.56,29.59,6,0
.goto Stranglethorn Vale,31.52,29.71,6,0
.goto Stranglethorn Vale,31.56,29.59,6,0
.goto Stranglethorn Vale,31.52,29.71,6,0
.goto Stranglethorn Vale,31.56,29.59,6,0
.goto Stranglethorn Vale,31.52,29.71,6,0
.goto Stranglethorn Vale,40.98,4.73,-1
>>上齐柏林塔
.zone Tirisfal Glades >>Take the Zeppelin to Undercity
.zoneskip Undercity
step
.goto Undercity,63.85,49.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Genavie|r
.accept 1164 >>接任务: |cFFFCDC00科娜塔一家|r
.target Genavie Callow
step
.goto Undercity,62.15,44.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eunice|r. This opens up a quest later
.train 2550 >>火车|T133971:0|t[烹饪]
.target Eunice Burch
step << Warlock
.goto Undercity,75.90,37.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jorah|r
.turnin 1801 >>交任务: |cFF00FF25阴谋之书|r
.accept 1803 >>接任务: |cFFFCDC00阴谋之书|r
.target Jorah Annison
step << Hunter tbc
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Geoffrey|r and |cFF00FF25Benijah|r
>>|cFF0E8312从|cFF00FF25Geoffrey|r|r购买
>>|cFF0E8312从|cFF00FF25Benijah|r|r购买|r|T134402:00|t[重度Quiver]|cFF0E6312
.collect 2523,1,1164,1 
.goto Undercity,58.68,33.08,-1
.collect 7371,1,1164,1 
.goto Undercity,58.82,32.81,-1
.target Geoffrey Hartwell
.target Benijah Fenner
.isOnQuest 1164
step << Hunter wotlk
.goto Undercity,58.82,32.81,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Benijah|r
>>|cFF0E8312从他那里购买|r |T134402:0|t[重度Quiver]|cFF0E6312 |r
.collect 7371,1,1164,1 
step << Rogue
.goto Undercity,58.68,33.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Geoffrey|r
>>|cFF0E8312从他那里购买|r |T135275:0|t[大刀]|cFF0E6312 |r
.collect 2520,1,1164,1 
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
step
#completewith next
.goto Undercity,63.25,48.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Michael|r
.fly Tarren Mill >>飞往塔伦磨坊 << !Shaman
.fly The Sepulcher >>飞到坟墓 << Shaman
.target Michael Garrett
step << Shaman
#completewith next
.goto Silverpine Forest,42.1,40.5,10 >>跳到树这边来

step << Shaman
.goto Silverpine Forest,41.6,41.8,15,0
.goto Silverpine Forest,40.3,42.1,15,0
.goto Silverpine Forest,38.9,43.3,20 >>跑下山
.isOnQuest 63
step << Shaman
.use 972 >>喝下水皂甙，然后杀死水元素。抢走它的护腕
.goto Silverpine Forest,38.8,44.3
.complete 63,1 
.use 6637
step << Shaman
.goto Silverpine Forest,38.3,44.6
.turnin 63 >>交任务: |cFF00FF25水之召唤|r
.accept 100 >>接任务: |cFFFCDC00水之召唤|r
step << Shaman
.goto Silverpine Forest,38.8,44.6
.turnin 100 >>交任务: |cFF00FF25水之召唤|r
.accept 96 >>接任务: |cFFFCDC00水之召唤|r
step << Shaman
#completewith next
.goto Silverpine Forest,45.62,42.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Karos|r
.fly Tarren Mill >>飞往塔伦磨坊
.target Karos Razok
step
.goto Hillsbrad Foothills,61.55,20.63,8,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Bel'varil|r, |cFF00FF25Wordeen|r, |cFF00FF25Krusk|r, |cFF00FF25Humbert|r, and |cFF00FF25Thaivand|r
.accept 556 >>接任务: |cFFFCDC00石雕|r
.goto Hillsbrad Foothills,61.50,20.93
.accept 544 >>接任务: |cFFFCDC00入室偷窃|r
.goto Hillsbrad Foothills,61.60,20.85
.accept 533 >>接任务: |cFFFCDC00秘密潜入|r
.goto Hillsbrad Foothills,62.95,20.59,8,0
.goto Hillsbrad Foothills,63.24,20.66
.accept 547 >>接任务: |cFFFCDC00亨伯特的长剑|r
.goto Hillsbrad Foothills,62.76,20.21
.accept 552 >>接任务: |cFFFCDC00赫尔库拉的复仇|r
.goto Hillsbrad Foothills,63.88,19.66
.target Keeper Bel'varil
.target Magus Wordeen Voidglare
.target Krusk
.target Deathguard Humbert
.target Novice Thaivand
step
.goto Hillsbrad Foothills,47.28,31.12,40,0
.goto Hillsbrad Foothills,46.16,33.32,40,0
.goto Hillsbrad Foothills,45.93,31.64,20,0
.goto Hillsbrad Foothills,45.31,29.18,20,0
.goto Hillsbrad Foothills,44.52,27.87,20,0
.goto Hillsbrad Foothills,43.96,27.59,30,0
.goto Hillsbrad Foothills,43.59,29.76,25,0
.goto Hillsbrad Foothills,45.00,27.80,20,0
.goto Hillsbrad Foothills,43.74,27.10,40,0
.goto Hillsbrad Foothills,43.62,25.60,40,0
.goto Hillsbrad Foothills,44.76,25.09,40,0
.goto Hillsbrad Foothills,45.00,27.80,20,0
.goto Hillsbrad Foothills,43.22,30.86,30,0
.goto Hillsbrad Foothills,42.79,33.51,30,0
.goto Hillsbrad Foothills,41.80,32.71,30,0
.goto Hillsbrad Foothills,42.47,30.27,30,0
.goto Hillsbrad Foothills,47.28,31.12,40,0
.goto Hillsbrad Foothills,46.16,33.32,40,0
.goto Hillsbrad Foothills,45.93,31.64,20,0
.goto Hillsbrad Foothills,45.31,29.18,20,0
.goto Hillsbrad Foothills,44.52,27.87,20,0
.goto Hillsbrad Foothills,43.96,27.59,30,0
.goto Hillsbrad Foothills,43.59,29.76,25,0
.goto Hillsbrad Foothills,45.00,27.80,20,0
.goto Hillsbrad Foothills,43.74,27.10,40,0
.goto Hillsbrad Foothills,43.62,25.60,40,0
.goto Hillsbrad Foothills,44.76,25.09
>>在洞穴中和周围杀死|cFFFF5722Cave Yetis |r和|cFFFF5 722凶猛的Yetis | r。为|cFF00BCD4Elculal的杆|r
.complete 552,1 
.mob Cave Yeti
.mob Ferocious Yeti
step
.line Hillsbrad Foothills,36.54,39.44,35.36,38.73,33.98,38.78,32.56,40.03,32.58,38.17,32.66,36.08,32.92,35.25,32.66,36.08,32.58,38.17,32.56,40.03,32.65,41.12,32.45,42.58,31.27,42.06,30.53,40.56,31.27,42.06,32.45,42.58,32.41,43.85,32.46,44.59,32.29,45.13
.goto Hillsbrad Foothills,36.54,39.44,40,0
.goto Hillsbrad Foothills,35.36,38.73,40,0
.goto Hillsbrad Foothills,33.98,38.78,40,0
.goto Hillsbrad Foothills,32.56,40.03,40,0
.goto Hillsbrad Foothills,32.58,38.17,40,0
.goto Hillsbrad Foothills,32.66,36.08,40,0
.goto Hillsbrad Foothills,32.92,35.25,40,0
.goto Hillsbrad Foothills,32.56,40.03,40,0
.goto Hillsbrad Foothills,32.65,41.12,40,0
.goto Hillsbrad Foothills,32.45,42.58,40,0
.goto Hillsbrad Foothills,31.27,42.06,40,0
.goto Hillsbrad Foothills,30.53,40.56,40,0
.goto Hillsbrad Foothills,31.27,42.06,40,0
.goto Hillsbrad Foothills,32.45,42.58,40,0
.goto Hillsbrad Foothills,32.41,43.85,40,0
.goto Hillsbrad Foothills,32.46,44.59,40,0
.goto Hillsbrad Foothills,32.29,45.13,40,0
.goto Hillsbrad Foothills,32.45,42.58,40,0
.goto Hillsbrad Foothills,32.56,40.03,40,0
.goto Hillsbrad Foothills,36.54,39.44
>>杀死|cFFFF5722Wilkes|r
>>|cFFFCDC00他在镇上的道路上巡逻
.complete 567,2 
.unitscan Citizen Wilkes
step
#completewith Burnside
>>杀死|cFFFF5722Hillsbrad议员|r
.complete 532,2 
.mob Hillsbrad Councilman
step
#completewith next
.goto Hillsbrad Foothills,31.48,41.89,30,0
.goto Hillsbrad Foothills,30.41,42.21,10 >>进入市政厅
step
#label Burnside
.goto Hillsbrad Foothills,30.09,42.42,8,0
.goto Hillsbrad Foothills,29.92,42.83,8,0
>>杀死|cFFFF5722Horrace|r和|cFFFF5 722Burnside|r
>>将|cFF00BCD4注册表|r放在地上
>>单击扶手上的|cFFDB2EEFDeclaration|r
.complete 567,1 
.goto Hillsbrad Foothills,29.51,42.41
.complete 532,1 
.goto Hillsbrad Foothills,31.48,41.89
.complete 532,4 
.goto Hillsbrad Foothills,29.51,41.53
.complete 532,3 
.goto Hillsbrad Foothills,29.73,41.76
.mob Clerk Horrace Whitesteed
.mob Magistrate Burnside
step
.loop 40,Hillsbrad Foothills,30.14,42.90,30.18,42.23,30.32,41.42,29.30,40.78,29.70,39.73,31.91,42.34,32.62,46.50,31.91,42.34,30.21,43.55,30.32,41.42
>>杀死|cFFFF5722Hillsbrad议员|r
.complete 532,2 
.mob Hillsbrad Councilman
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Darthalia|r and |cFF00FF25Thaivand|r
.turnin 532 >>交任务: |cFF00FF25希尔斯布莱德之战|r
.accept 539 >>接任务: |cFFFCDC00希尔斯布莱德之战|r
.goto Hillsbrad Foothills,62.39,20.28
.turnin 552 >>交任务: |cFF00FF25赫尔库拉的复仇|r
.accept 553 >>接任务: |cFFFCDC00赫尔库拉的复仇|r
.goto Hillsbrad Foothills,63.88,19.66
.target High Executor Darthalia
.target Novice Thaivand
step
.goto Hillsbrad Foothills,62.53,19.58,8,0
.goto Hillsbrad Foothills,62.78,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shay|r
>>|cFF0E8312从他那里购买|r|T132799:0|t[Sweet Nectar]|cFF0E6312|r << Priest/Mage/Warlock/Druid
>>|cFF0E8312从他那里购买|r |T133969:0|t[Wild Hog Shanks]|cFF0E6312|r << !Priest !Mage !Warlock !Druid !Paladin
>>|cFF0E8312从他那里购买|r|T132799:0|t[甜蜜汁]|cFF0E6312和|r|T133969:0|t[Wild Hog Shanks]|cff0E8312|r << Paladin
.collect 1708,20,553,1 << Priest/Mage/Warlock/Druid/Paladin 
.collect 3771,20,553,1 << !Priest !Mage !Warlock !Druid !Paladin 
.collect 3771,10,553,1 << Paladin 
.target Innkeeper Shay
.money <0.4000 << !Paladin
.money <0.6000 << Paladin/Shaman
.xp <24,1
.xp >35,1
step << Hunter
.goto Hillsbrad Foothills,62.56,19.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kayren|r
>>|cFF0E8312购买|r |T132382:0|t[剃刀箭头]|cFF0E6312
.collect 3030,2000,553,1 
.target Kayren Soothallow
.money <0.2850 << BloodElf
.money <0.3000 << Troll/Orc
.xp <25,1
step << Hunter
.goto Hillsbrad Foothills,62.56,19.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kayren|r
>>|cFF0E8312购买|r |T132382:0|t[剃刀箭头]|cFF0E6312
.collect 3030,1000,553,1 
.target Kayren Soothallow
.money <0.1425 << BloodElf
.money <0.1500 << Troll/Orc
.xp <25,1
step << Warlock
.goto Hillsbrad Foothills,27.78,72.80
>>将|cFF00BCD4Moldy Tome|r放在地上
.complete 1803,1 
step
#completewith next
.goto Hillsbrad Foothills,27.42,59.17,30 >>进入矿井内部
step
#completewith Bonds
.goto Hillsbrad Foothills,27.43,58.28,20,0
.goto Hillsbrad Foothills,28.14,55.20,20,0
.goto Hillsbrad Foothills,28.37,52.97,20,0
.goto Hillsbrad Foothills,29.70,54.25,20,0
>>杀死|cFFFF5722Hillsbrad矿工|r
.complete 539,2 
.mob Hillsbrad Miner
step
#completewith next
>>杀死|cFFFF5722Hackett|r
>>|cFFFCDC00他在矿井内有多个产卵点|r
.goto Hillsbrad Foothills,29.71,56.07,20,0
.goto Hillsbrad Foothills,31.08,56.64,20,0
.complete 567,3 
.unitscan Miner Hackett
step
#label Bonds
.goto Hillsbrad Foothills,31.21,56.02
>>在矿井中央房间杀死|cFFFF5722Bonds|r
>>|cFFFCDC00小心|cFFFF5722Bonds |r投掷|r|T135963:0|t[正义之锤]|cFFFCDC0，让你眩晕4秒|r
>>|cFFFCDC00在30%或更低的生命值时，|cFFFF5722Bonds |r立即召唤两名|cFFFF5 722 Dun Garok士兵|r（30级）来保护他|r
.complete 539,1 
.mob Foreman Bonds
step
>>杀死|cFFFF5722Hackett|r
>>|cFFFCDC00他在矿井内有多个产卵点|r
.loop 30,Hillsbrad Foothills,31.14,58.62,31.90,52.66,29.71,56.07,31.08,56.64
.complete 567,3 
.unitscan Miner Hackett
step
.loop 30,Hillsbrad Foothills,31.14,58.62,31.90,52.66,29.71,56.07,31.08,56.64
>>杀死|cFFFF5722Hillsbrad矿工|r
.complete 539,2 
.mob Hillsbrad Miner
step << wotlk
#completewith next
.goto Hillsbrad Foothills,29.89,52.37,-1
.goto Hillsbrad Foothills,29.44,56.22,-1
.goto Hillsbrad Foothills,32.40,55.38,-1
.goto Hillsbrad Foothills,31.16,56.88,-1
.goto Hillsbrad Foothills,29.62,45.82,30 >>|cFFFCDC00在矿井中的任何锯片上运行。通过注销并重新登录|r来执行注销跳过
.link https://www.youtube.com/watch?v=sT-LB2dKezY >>|cFFFCDC00单击此处|r
step
#completewith StoneTokens
>>杀死|cFFFF5722达拉然护盾|r和|cFFFF5 722达拉兰护盾师|r。抢夺他们的|cFF00BCD4Worn Stone代币|r
>>|cFFFCDC00小心|cFFFF5722达拉然护盾|r，因为当他们受到伤害时，有10%的几率触发|r|T136173:0|t[暴力护盾效果]|cFFFCDC0，（每次近战攻击造成85点伤害，并将其固定）|r << Warrior/Rogue/Paladin
>>不要太担心|cFFFF5722Dalaran Theurgists|r的|T136075:0|t[召唤旧灵]，因为他们在一次命中中死亡
.complete 556,1 
.mob Dalaran Shield Guard
.mob Dalaran Theurgist
step
#sticky
#label Dermot
.goto Alterac Mountains,19.91,85.91,-1
>>杀死内部|cFFFF5722Dermot|r。抢了他|cFF00BCD4红石楔子|r
.complete 544,1 
.mob Dermot
step
.goto Alterac Mountains,20.40,86.33,-1
>>杀死里面的|cFFFF5722Alina|r。抢她的|cFF00BCD4血石碎片|r
.complete 544,3 
.mob Alina
step
#requires Dermot
>>杀死|cFFFF5722Ricter |r。抢夺他|cFF00BCD4红石大理石|r
.goto Alterac Mountains,20.15,84.31
.complete 544,2 
.mob Ricter
step
#completewith next
.goto Alterac Mountains,18.69,84.43,10,0
.goto Alterac Mountains,18.20,82.90,10,0
.goto Alterac Mountains,17.89,83.86,10,0
.goto Alterac Mountains,17.83,84.11,6 >>进入大楼，然后到二楼
step
#label StoneTokens
.goto Alterac Mountains,17.79,83.14
>>在二楼杀死|cFFFF5722Kegan|r。把他抢到|cFF00BCD4血石椭圆形|r。抢掠后逃跑
>>|cFFFCDC00您不需要杀死|cFFFF5722Belamoore |r|r
>>|cFFFCDC00避免|cFFFF5722 Belamoore |r的火球在你战斗时|cFFFF5 722 Kegan |r被LoSing她的火球围绕着建筑|r
.complete 544,4 
.mob Kegan Darkmar
.mob Warden Belamoore
step
.loop 30,Alterac Mountains,17.24,84.38,18.69,85.17,19.47,82.92,21.14,84.06,20.69,86.48,20.85,87.76,17.24,84.38
>>杀死|cFFFF5722达拉然护盾|r和|cFFFF5 722达拉兰护盾师|r。抢夺他们的|cFF00BCD4Worn Stone代币|r
>>|cFFFCDC00小心|cFFFF5722达拉然护盾|r，因为当他们受到伤害时，有10%的几率触发|r|T136173:0|t[暴力护盾效果]|cFFFCDC0，（每次近战攻击造成85点伤害，并将其固定）|r << Warrior/Rogue/Paladin
>>不要太担心|cFFFF5722Dalaran Theurgists|r的|T136075:0|t[召唤旧灵]，因为他们在一次命中中死亡
.complete 556,1 
.mob Dalaran Shield Guard
.mob Dalaran Theurgist
step
.goto Alterac Mountains,37.44,68.08,30,0
.goto Alterac Mountains,37.54,66.22
>>在洞穴内单击Uzel|r的|cFFDB2EEFFlame|r
>>|cFFFCDC00射程为20码
.complete 553,3 
step
.loop 40,Hillsbrad Foothills,46.49,81.84,47.77,83.27,48.70,82.63,48.71,81.28,47.69,79.75,46.49,81.84
>>杀死|cFFFF5722辛迪加脚垫|r和|cFFFF5 722辛迪加盗贼|r。为|cFF00BCD4Syncdicate导弹|r抢夺它们
.complete 533,1 
.mob Syndicate Footpad
.mob Syndicate Thief
step
#completewith next
.goto Hillsbrad Foothills,45.93,31.64,20 >>进入Yeti洞穴
step
.goto Hillsbrad Foothills,45.62,31.13,20,0
.goto Hillsbrad Foothills,45.06,29.04,20,0
.goto Hillsbrad Foothills,44.26,28.10,20,0
.goto Hillsbrad Foothills,43.89,28.06
>>单击顶层Azel|r的|cFFDB2EEFFlame
>>|cFFFCDC00射程为20码
>>|cFFFCDC00待在顶楼。还不下去|r
.complete 553,1 
step
.goto Hillsbrad Foothills,44.77,28.71,20,0
.goto Hillsbrad Foothills,44.88,27.44,20,0
.goto Hillsbrad Foothills,44.04,26.55
>>|cFFFCDC00放下地板|r
>>单击底层的Veraz|r的|cFFDB2EEFFlame
.complete 553,2 
step
#completewith next
.goto Hillsbrad Foothills,46.26,31.71,20 >>离开Yeti洞穴
step
.goto Hillsbrad Foothills,61.55,20.63,8,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Bel'varil|r, |cFF00FF25Wordeen|r, |cFF00FF25Darthalia|r, and |cFF00FF25Krusk|r
.turnin 556 >>交任务: |cFF00FF25石雕|r
.goto Hillsbrad Foothills,61.50,20.93
.turnin 544 >>交任务: |cFF00FF25入室偷窃|r
.goto Hillsbrad Foothills,61.60,20.85
.turnin 539 >>交任务: |cFF00FF25希尔斯布莱德之战|r
.accept 541 >>接任务: |cFFFCDC00希尔斯布莱德之战|r
.turnin 567 >>交任务: |cFF00FF25危险！|r
.goto Hillsbrad Foothills,62.39,20.28
.turnin 533 >>交任务: |cFF00FF25秘密潜入|r
.goto Hillsbrad Foothills,62.95,20.59,8,0
.goto Hillsbrad Foothills,63.24,20.66
.target Keeper Bel'varil
.target Magus Wordeen Voidglare
.target High Executor Darthalia
.target Krusk
step
.goto Hillsbrad Foothills,68.01,18.99,40,0
.goto Hillsbrad Foothills,68.07,23.02,40,0
.goto Hillsbrad Foothills,68.32,25.88,40,0
.goto Hillsbrad Foothills,67.95,28.95,40,0
.goto Hillsbrad Foothills,67.79,32.76,40,0
.goto Hillsbrad Foothills,67.54,35.33,40,0
.goto Hillsbrad Foothills,66.11,38.29,40,0
.goto Hillsbrad Foothills,63.67,40.37,40,0
.goto Hillsbrad Foothills,61.91,42.95,40,0
.goto Hillsbrad Foothills,59.42,45.08,40,0
.goto Hillsbrad Foothills,57.47,47.67,40,0
.goto Hillsbrad Foothills,56.36,50.18,40,0
.goto Hillsbrad Foothills,55.45,53.46,40,0
.goto Hillsbrad Foothills,55.61,56.96
>>杀死|cFFFF5722Snapjaws |r。抢夺他们的|cFF00BCD4肉肉|r
.collect 3712,10,7321,1 
.train 2550,3 
.mob Snapjaw
step
#completewith next
.goto Hillsbrad Foothills,54.66,53.82,90 >>从河流靠近|cFFDB2EEFHelculal’s Grave|r以避开|cFFFF5722南岸警卫|r
step
.goto Hillsbrad Foothills,52.75,53.37
>>单击|cFFDB2EEFHelculal's Grave|r
.turnin 553 >>交任务: |cFF00FF25赫尔库拉的复仇|r
step
#completewith Ironhill
.goto Hillsbrad Foothills,70.98,78.54,40 >>输入Dun Garok
step
#completewith next
>>杀死|cFFFF5722Dun Garok登山者|r、|cFFFF5 722Dun Garok步枪兵|r和|cFFFF9722 Dun Garock牧师|r。为|cFF00BCD4Numbert的剑|r
.complete 541,1 
.complete 541,2 
.complete 541,3 
.complete 547,1 
step
#label Ironhill
.goto Hillsbrad Foothills,70.84,79.42,10,0
.goto Hillsbrad Foothills,71.35,80.32,10,0
.goto Hillsbrad Foothills,72.37,81.43,10,0
.goto Hillsbrad Foothills,72.60,82.22,10,0
.goto Hillsbrad Foothills,72.28,82.67,10,0
.goto Hillsbrad Foothills,72.00,81.89,10,0
.goto Hillsbrad Foothills,71.12,80.28,10,0 
.goto Hillsbrad Foothills,73.12,81.34,10,0
.goto Hillsbrad Foothills,73.00,80.59,10,0
.goto Hillsbrad Foothills,72.05,79.32,10,0 
.goto Hillsbrad Foothills,71.35,80.32,10,0
.goto Hillsbrad Foothills,71.50,81.49,10,0
.goto Hillsbrad Foothills,71.73,80.89,10,0
.goto Hillsbrad Foothills,71.50,79.49 
>>杀死|cFFFF5722 Ironhill队长|r
>>|cFFFCDC00他有多个产卵点。他可以在楼上或楼下的地下室里找到
.complete 541,4 
.unitscan Captain Ironhill
step
.loop 20,Hillsbrad Foothills,71.55,81.12,72.05,80.53,72.60,79.84,71.81,78.27,70.57,77.89,71.05,75.01,68.91,77.91,70.57,77.89,70.66,79.68,71.55,81.12
>>杀死|cFFFF5722Dun Garok登山者|r、|cFFFF5 722Dun Garok步枪兵|r和|cFFFF9722 Dun Garock牧师|r。为|cFF00BCD4Numbert的剑|r
.complete 541,1 
.complete 541,2 
.complete 541,3 
.complete 547,1 
step
#completewith next
.goto Hillsbrad Foothills,80.06,60.19,15,0
.goto Hillsbrad Foothills,80.56,60.70,12,0
.goto Hillsbrad Foothills,80.14,62.52,12,0
.goto Arathi Highlands,34.74,44.14
.zone Arathi Highlands >>前往: |cFFDB2EEF阿拉希高地|r
step
#completewith Kenata
.goto Arathi Highlands,54.76,38.34,30,0
>>杀死|cFFFF5722Fardel |r。抢走他|cFF00BCD4Fardel的头|r
>>|cFFFCDC00小心|cFFFF5722Fardel|r施放|r|T136067:0|t[致命毒药]|cFFFCDC0（每5秒造成57点伤害，可中断）和|r|T132152:0|t[Thrash]|cFFCDC00（每15秒额外攻击2次）|r
.complete 1164,3 
.mob Fardel Dabyrie
step
.goto Arathi Highlands,54.21,38.08
>>杀死|cFFFF5722Marcel |r。抢了他|cFF00BCD4Marcel的头|r
>>|cFFFCDC00小心|cFFFF5722Marcel |r施放|r|T132362:0|t[盾墙]|cFFFCDC0（在10秒内减少75%的伤害）和|r|T132357:0|t[盾击]|cFFCDC00（法术中断）|r << !Rogue !Warrior
>>|cFFFCDC00小心|cFFFF5722Marcel |r施放|r|T132362:0|t[盾墙]|cFFFCDC0（在10秒内减少75%的伤害）|r << Rogue/Warrior
.complete 1164,2 
.mob Marcel Dabyrie
step
#label Kenata
.goto Arathi Highlands,56.37,36.08
>>杀死内部|cFFFF5722Kenata|r。抢她的头|cFF00BCD4Kenata的头|r
>>|cFFFCDC00小心|cFFFF5722Kenata|r施放|r|T132343:0|t[解除防护]|cFFFCDC0（解除防护10秒）|r << Rogue/Warrior/Paladin/Shaman
.complete 1164,1 
.mob Kenata Dabyrie
step
.goto Arathi Highlands,56.63,38.80,30,0
.goto Arathi Highlands,56.78,40.47,30,0
.goto Arathi Highlands,54.76,38.34,30,0
.goto Arathi Highlands,56.63,38.80,30,0
.goto Arathi Highlands,56.78,40.47,30,0
.goto Arathi Highlands,54.76,38.34,30,0
.goto Arathi Highlands,56.63,38.80,30,0
.goto Arathi Highlands,56.78,40.47,30,0
.goto Arathi Highlands,54.76,38.34,30,0
.goto Arathi Highlands,56.63,38.80,30,0
.goto Arathi Highlands,56.78,40.47,30,0
.goto Arathi Highlands,54.76,38.34
>>杀死|cFFFF5722Fardel |r。抢走他|cFF00BCD4Fardel的头|r
>>|cFFFCDC00小心|cFFFF5722Fardel|r施放|r|T136067:0|t[致命毒药]|cFFFCDC0（每5秒造成57点伤害，可中断）和|r|T132152:0|t[Thrash]|cFFCDC00（每15秒额外攻击2次）|r
.complete 1164,3 
.mob Fardel Dabyrie
step
.goto Arathi Highlands,62.50,33.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cFF00FF25Shards of Myzrael|r
.accept 642 >>接任务: |cFFFCDC00被困的公主|r
step
.goto Arathi Highlands,73.79,33.03,10,0
.goto Arathi Highlands,73.84,32.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Adegwa|r
>>|cFF0E8312从他那里购买|r|T132799:0|t[Sweet Nectar]|cFF0E6312|r << Priest/Mage/Warlock/Druid
>>|cFF0E8312从他那里购买|r |T133994:0|t[暴风布里]|cFF0E6312 |r << !Priest !Mage !Warlock !Druid !Paladin
>>|cFF0E8312从他那里购买|r|T132799:0|t[甜蜜汁]|cFF0e8132和|r|T133994:0|t[暴风糖]|cff0e8132|r << Paladin
.collect 1708,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin 
.collect 1707,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin 
.collect 1707,10,1145,1 << Paladin 
.target Innkeeper Adegwa
.money <0.4000 << !Paladin
.money <0.6000 << Paladin/Shaman
.xp <24,1
.xp >35,1
step << Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Adegwa|r
.home >>将炉石设置为Hammerfall
.target Innkeeper Adegwa
.itemcount 17031,1
step << Hunter
.goto Arathi Highlands,72.52,33.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Mu'uta|r
.vendor 9551 >>|cFF0E8312购买|r |T135495:0|t[密集短弓]|cFF0e8132如果它已启动，|r|t132382:0|t[剃刀箭头]|cff0e8132|r
.collect 3030,2000,4767,1 
.target Mu'uta
.itemcount 3030,<2000
.money <2.8814
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<18.95

step << Hunter
.goto Arathi Highlands,72.52,33.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Mu'uta|r
.vendor 9551 >>|cFF0E8312向他购买|r |T135495:0|t[密集短弓]|cFF0E6312
.target Mu'uta
.money <2.5814
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<18.95
step << Hunter
.goto Arathi Highlands,72.52,33.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Mu'uta|r
>>|cFF0E8312从他那里购买|r |T132382:0|t[剃刀箭头]|cFF0E6312|r
.collect 3030,2000,4767,1 
.target Mu'uta
.itemcount 3030,<2000
.money <0.3000
step << Hunter
#completewith next
+装备|T135495:0|t[密集短弓]
.use 11305
.itemcount 11305,1
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<18.95
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gor'mul|r and |cFF00FF25Tor'gan|r
.accept 655 >>接任务: |cFFFCDC00落锤镇|r
.goto Arathi Highlands,72.64,33.92
.turnin 655 >>交任务: |cFF00FF25落锤镇|r
.accept 671 >>接任务: |cFFFCDC00邪恶的魔法|r
.accept 672 >>接任务: |cFFFCDC00振奋精神|r
.goto Arathi Highlands,74.72,36.29
.target Gor'mul
.target Tor'gan
step << Mage
.loop 45,Arathi Highlands,70.40,32.28,70.77,34.72,69.16,39.78,68.55,37.67,68.73,36.09,67.05,33.98,65.78,36.03,65.85,37.77,65.60,38.88,65.21,39.48,65.80,41.65,67.02,42.51,66.17,44.35,64.87,45.11,64.42,46.39,62.56,46.52,63.25,44.87,63.85,43.06,64.65,40.33,61.89,43.36,60.87,37.77,59.38,38.32,58.71,40.97,60.34,42.86,60.73,44.50,61.14,45.68,60.42,46.13,58.89,43.01
>>杀死|cFFFF5722高地步行者|r。抢夺它们的|cFF00BCD4高地猛禽眼睛|r
.complete 672,1,6 
.mob Highland Strider
.itemcount 17031,1
step << Mage
.loop 45,Arathi Highlands,55.57,45.96,56.98,46.90,55.84,48.06,54.88,46.98,53.01,46.56,51.11,46.43,52.29,45.57,54.05,44.86,53.27,43.74,51.36,41.17,50.98,40.50,49.90,41.49
>>杀死|cFFFF5722高地步行者|r。抢夺它们的|cFF00BCD4高地猛禽眼睛|r
.complete 672,1 
.mob Highland Strider
.itemcount 17031,1
step
#completewith next
>>杀死|cFFFF5722高地战士|r和|cFFFF5 722高地色雷斯|r。抢夺它们的|cFF00BCD4高地猛禽眼睛|r
>>|cFFFCDC00小心|cFFFF5722高地色雷斯|r施法|r|T132152:0|t[色雷斯]|cFFFCDC0（每15秒2次额外攻击）|r
.complete 672,1 
.mob Highland Strider
.mob Highland Thrasher
step
.loop 45,Arathi Highlands,34.76,29.97,34.66,31.24,34.17,32.81,32.86,32.74,31.65,32.76,30.07,30.04,30.34,28.81,30.31,28.00,30.63,25.77,32.28,25.16,32.91,24.39,33.62,25.43,33.91,26.55,34.20,26.96,34.77,27.14,34.76,29.97
>>杀死|cFFFF5722辛迪加探路者|r、|cFFFF5 722辛迪加雇佣军|r和|cFFF F5722辛迪加公路兵|r。抢夺他们的|cFF00BCD4血石护身符|r
>>|cFFFCDC00|cFFFF5722辛迪加高速公路人|r被偷走|r
.complete 671,1 
.mob Syndicate Pathstalker
.mob Syndicate Mercenary
.mob Syndicate Highwayman
step
.loop 45,Arathi Highlands,55.57,45.96,56.98,46.90,55.84,48.06,54.88,46.98,53.01,46.56,51.11,46.43,52.29,45.57,54.05,44.86,53.27,43.74,51.36,41.17,50.98,40.50,49.90,41.49
>>杀死|cFFFF5722高地步行者|r。抢夺它们的|cFF00BCD4高地猛禽眼睛|r
.complete 672,1,6 
.mob Highland Strider
step
.loop 45,Arathi Highlands,70.40,32.28,70.77,34.72,69.16,39.78,68.55,37.67,68.73,36.09,67.05,33.98,65.78,36.03,65.85,37.77,65.60,38.88,65.21,39.48,65.80,41.65,67.02,42.51,66.17,44.35,64.87,45.11,64.42,46.39,62.56,46.52,63.25,44.87,63.85,43.06,64.65,40.33,61.89,43.36,60.87,37.77,59.38,38.32,58.71,40.97,60.34,42.86,60.73,44.50,61.14,45.68,60.42,46.13,58.89,43.01
>>杀死|cFFFF5722高地步行者|r。抢夺它们的|cFF00BCD4高地猛禽眼睛|r
.complete 672,1 
.mob Highland Strider
step << Mage
#completewith next
.hs >>向Hammerfall致敬
.itemcount 17031,1
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Tor'gan|r and |cFF00FF25Gor'mul|r
.turnin 671 >>交任务: |cFF00FF25邪恶的魔法|r
.turnin 672 >>交任务: |cFF00FF25振奋精神|r
.accept 674 >>接任务: |cFFFCDC00振奋精神|r
.goto Arathi Highlands,74.72,36.29
.turnin 674 >>交任务: |cFF00FF25振奋精神|r
.accept 675 >>接任务: |cFFFCDC00振奋精神|r
.goto Arathi Highlands,72.64,33.92
.target Tor'gan
.target Gor'mul
step
.goto Arathi Highlands,74.72,36.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Tor'gan|r
.turnin 675 >>交任务: |cFF00FF25振奋精神|r
.target Tor'gan
step
#completewith TarrenMillF
.goto Arathi Highlands,73.07,32.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FFUrda|r
.fly Tarren Mill >>飞往塔伦磨坊
.target Urda
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Darthalia|r, |cFF00FF25Humbert|r, and |cFF00FF25Christoph|r
>>|cFF0E8312购买|r|T134059:0|t[舒缓香料]|cFF0E1312来自|cFF00FF25Christoph|r|r << tbc
.turnin 541 >>交任务: |cFF00FF25希尔斯布莱德之战|r
.accept 550 >>接任务: |cFFFCDC00希尔斯布莱德之战|r
.goto Hillsbrad Foothills,62.39,20.28
.turnin 547 >>交任务: |cFF00FF25亨伯特的长剑|r
.goto Hillsbrad Foothills,62.76,20.21
.collect 3713,1,7321,1 << tbc 
.accept 7321 >>接任务: |cFFFCDC00海龟汤|r
.turnin 7321 >>交任务: |cFF00FF25海龟汤|r
.goto Hillsbrad Foothills,62.52,19.61,12,0
.goto Hillsbrad Foothills,62.28,19.05
.target High Executor Darthalia
.target Deathguard Humbert
.target Christoph Jeffcoat
.itemcount 3712,10 
.train 2550,3 
step
#label TarrenMillF
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Darthalia|r and |cFF00FF25Humbert|r
.turnin 541 >>交任务: |cFF00FF25希尔斯布莱德之战|r
.accept 550 >>接任务: |cFFFCDC00希尔斯布莱德之战|r
.goto Hillsbrad Foothills,62.39,20.28
.turnin 547 >>交任务: |cFF00FF25亨伯特的长剑|r
.goto Hillsbrad Foothills,62.76,20.21
.target High Executor Darthalia
.target Deathguard Humbert
step << skip
>>乘车前往奥特兰克山脉
.goto Alterac Mountains,80.5,66.9
.turnin 1791 >>交任务: |cFF00FF25捕风者|r
.accept 1712 >>接任务: |cFFFCDC00塞克隆尼亚|r

step
#completewith next
.goto Hillsbrad Foothills,60.14,18.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zarise|r
.fly Undercity >>飞到地下城
.target Zarise
.zoneskip Hillsbrad Foothills,1
.itemcount 17031,<1 << Mage

step
.goto Undercity,63.85,49.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Genavie|r
.turnin 1164 >>交任务: |cFF00FF25科娜塔一家|r
.itemcount 17031,<1 << Mage
.target Genavie Callow
step << Mage
#completewith Thieves
.cast 3563 >>演员阵容|T135766:0|t[电传：Undercity]
.zoneskip Undercity
.itemcount 17031,1
step << Mage
.goto Undercity,82.77,15.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Anastasia|r
.train 8422 >>训练你的职业技能
.target Anastasia Hartwell
.xp <32,1
.xp >34,1
step << Mage
.goto Undercity,82.77,15.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Anastasia|r
.train 8492 >>训练你的职业技能
.target Anastasia Hartwell
.xp <34,1
step << Mage
.goto Undercity,82.77,15.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Hannah|r
>>|cFF0E8312购买|r |T134419:0|t[传送符文]|cFF0E6312来自她|r
.collect 17031,5,496,1 
.target Hannah Akeley
step << Mage
#label Thieves
.goto Undercity,63.85,49.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Genavie|r
.turnin 1164 >>交任务: |cFF00FF25科娜塔一家|r
.target Genavie Callow
step << Warrior
#completewith WarriorTrain1
.goto Undercity,63.79,47.28,15,0
.goto Undercity,57.82,44.73,25,0
.goto Undercity,52.46,42.08,25,0
.goto Undercity,48.49,31.60,25,0
.goto Undercity,45.92,23.41,25,0
.goto Undercity,46.23,18.07,25,0
.goto Undercity,47.42,17.27 >>前往|cFF00FF25Baltus|r
step << Warrior
.goto Undercity,47.42,17.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Baltus|r
.train 11549 >>训练你的职业技能
.target Baltus Fowler
.xp <32,1
.xp >34,1
step << Warrior
#label WarriorTrain1
.goto Undercity,47.42,17.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Baltus|r
.train 7379 >>训练你的职业技能
.target Baltus Fowler
.xp <34,1
step << Rogue
#completewith RogueTrain1
.goto Undercity,63.79,47.28,15,0
.goto Undercity,65.27,56.15,25,0
.goto Undercity,67.15,64.32,25,0
.goto Undercity,83.88,72.06,20 >>前往|cFF00FF25Carolyn |r
step << Rogue
.goto Undercity,83.88,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Carolyn|r
.train 8623 >>训练你的职业技能
.target Carolyn Ward
.xp <32,1
.xp >34,1
step << Rogue
#label RogueTrain1
.goto Undercity,83.88,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Carolyn|r
.train 8696 >>训练你的职业技能
.target Carolyn Ward
.xp <34,1
step << Shaman/Warrior
#completewith next
.goto Undercity,63.77,47.25,15,0 << Shaman
.goto Undercity,65.43,56.36,30,0 << Shaman
.goto Undercity,64.78,64.48,30,0 << Shaman
.goto Undercity,52.68,77.65,15,0
.goto Undercity,51.15,80.09,12,0
.goto Undercity,49.06,78.17,12,0
.goto Undercity,47.80,75.46,15,0
.goto Undercity,48.81,69.28,20 >>向|cFF00FF25Faranell|r行驶
step << Shaman/Warrior
.goto Undercity,48.81,69.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Faranell|r
.turnin 513 >>交任务: |cFF00FF25苦楚药剂|r
step
#completewith next
.goto Undercity,47.80,75.46,15,0 << Shaman/Warrior
.goto Undercity,49.06,78.17,12,0 << Shaman/Warrior
.goto Undercity,51.15,80.09,12,0 << Shaman/Warrior
.goto Undercity,52.68,77.65,15,0 << Shaman/Warrior
.goto Undercity,54.70,67.53,25,0 << Shaman/Warrior
.goto Undercity,51.88,64.84,20,0
.goto Undercity,46.28,73.10,15,0
.goto Undercity,45.31,78.24,15,0
.goto Undercity,46.18,83.63,15,0
.goto Undercity,48.80,87.63,15,0
.goto Undercity,52.45,89.49,15,0
.goto Undercity,56.18,94.85,15,0
.goto Undercity,56.23,92.21,15 >>前往皇家区内|cFF00FF25Bragor|r << wotlk
.goto Undercity,56.23,92.21,15 >>前往皇家区内的|cFF00FF25Varimathras|r << tbc
step
.goto Undercity,56.23,92.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Bragor|r << wotlk
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Varimathras|r << tbc
.turnin 550 >>交任务: |cFF00FF25希尔斯布莱德之战|r
.target Bragor Bloodfist << wotlk
.target Varimathras << tbc
step << Paladin
.goto Undercity,58.00,90.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Cyssa|r
.train 19836 >>训练你的职业技能
.target Champion Cyssa Dawnrose
.xp <32,1
.xp >34,1
step << Paladin
.goto Undercity,58.00,90.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Cyssa|r
.train 642 >>训练你的职业技能
.target Champion Cyssa Dawnrose
.xp <34,1
step << Undead !Warlock
#completewith next
.goto Undercity,55.20,90.91
.goto Undercity,67.88,14.97,30 >>|cFFFCDC00前往皇家区的主平台边缘。执行注销跳过，方法是定位角色，直到它们看起来像是浮动的，然后注销并重新登录|r
.link https://www.youtube.com/watch?v=jj85AXyF1XE >>|cFFFCDC00单击此处|r
.skill riding,75,1
step << Undead !Warlock
.goto Undercity,66.21,4.90,15,0
.goto Tirisfal Glades,61.73,64.87
.zone Tirisfal Glades >>Exit Undercity
.skill riding,75,1
step << Undead !Warlock
.goto Tirisfal Glades,60.08,52.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Velma|r
.skill riding,75 >>火车|T136103:0|t（学徒骑马）
.target Velma Warnam
.money <4.5 << wotlk
.money <42.25 << tbc
.skill riding,75,1
step << Undead !Warlock
.goto Tirisfal Glades,59.87,52.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zachariah|r
+|cFF0E8312从他那里买任何你喜欢的|r |T132264:0|t[骷髅马]|cFF0e8132|r
.target Zachariah Post
.itemcount 13331,<1 
.itemcount 13332,<1 
.itemcount 13333,<1 
.itemcount 46308,<1 
.money <0.9 << wotlk
.money <9.0000 << tbc
.skill riding,<75,1
step << Undead !Warlock
.cast 55884 >>使用|T132264:0|t[红色骷髅马]学习
.use 13331
.itemcount 13331,1
.skill riding,75,1
step << Undead !Warlock
.cast 55884 >>使用|T132264:0|t[蓝色骷髅马]学习
.use 13332
.itemcount 13332,1
.skill riding,75,1
step << Undead !Warlock
.cast 55884 >>使用|T132264:0|t[棕色骷髅马]学习它
.use 13333
.itemcount 13333,1
.skill riding,75,1
step << Undead !Warlock
.cast 55884 >>使用|T132264:0|t[黑色骷髅马]学习
.use 46308
.itemcount 46308,1
.skill riding,75,1
step << Undead !Warlock
>>|cFFFCDC00按“Shift+P”打开安装选项卡|r
>>|cFFFCDC00将|r |T132264:0|t[红色骷髅马]|cFFFCDC0拖到动作栏上|r
.cast 17462 >>骑上您的|T132264:0|t[红色骷髅马]
.train 17462,3
.zoneskip Undercity
.zoneskip Durotar
.zoneskip Orgrimmar
step << Undead !Warlock
>>|cFFFCDC00按“Shift+P”打开安装选项卡|r
>>|cFFFCDC00将|r |T132264:0|t[蓝色骷髅马]|cFFFCDC0拖到动作栏|r
.cast 17463 >>骑上您的|T132264:0|t[蓝色骷髅马]
.train 17463,3
.zoneskip Undercity
.zoneskip Durotar
.zoneskip Orgrimmar
step << Undead !Warlock
>>|cFFFCDC00按“Shift+P”打开安装选项卡|r
>>|cFFFCDC00将|r |T132264:0|t[棕色骨骼马]|cFFFCDC0拖到动作栏|r
.cast 17464 >>骑上您的|T132264:0|t[棕色骷髅马]
.train 17464,3
.zoneskip Undercity
.zoneskip Durotar
.zoneskip Orgrimmar
step << Undead !Warlock wotlk
>>|cFFFCDC00按“Shift+P”打开安装选项卡|r
>>|cFFFCDC00将|r |T132264:0|t[黑色骷髅马]|cFFFCDC0拖到动作栏|r
.cast 64977 >>骑上您的|T132264:0|t[黑色骷髅马]
.train 64977,3
.zoneskip Undercity
.zoneskip Durotar
.zoneskip Orgrimmar
step << Druid
#completewith next
.cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
.zoneskip Moonglade
.xp <32,1
step << Druid
.goto Moonglade,52.53,40.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Loganaar|r
.train 6778 >>训练你的职业技能
.target Loganaar
.xp <32,1
]])
RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 32-32千针II JJ
#version 18
#group RestedXP部落1-30
#next 32-34闪亮平板JJ
#xprate >1.4999
step << !Mage
#xprate <1.7
.hs >>前往: 奥格瑞玛
.zoneskip Orgrimmar
.zoneskip The Barrens
step << Hunter/Shaman/Priest
#completewith OrgTrain32
.goto Orgrimmar,50.68,61.69,35,0 << Hunter
.goto Orgrimmar,52.96,58.10,35,0 << Hunter
.goto Orgrimmar,56.02,56.88,35,0 << Hunter
.goto Orgrimmar,63.02,39.23,20,0 << Hunter
.goto Orgrimmar,64.32,38.11,20,0 << Hunter
.goto Orgrimmar,66.11,40.01,20,0 << Hunter
.goto Orgrimmar,72.23,23.56,30,0 << Hunter
.goto Orgrimmar,72.15,21.09,30,0 << Hunter
.goto Orgrimmar,67.53,14.87,20,0 << Hunter
.goto Orgrimmar,47.41,65.07,10,0 << Priest/Shaman
.goto Orgrimmar,46.59,64.54,6,0 << Priest/Shaman
.goto Orgrimmar,46.75,63.84,6,0 << Priest/Shaman
.goto Orgrimmar,46.59,64.54,6,0 << Priest/Shaman
.goto Orgrimmar,46.75,63.84,6,0 << Priest/Shaman
.goto Orgrimmar,46.59,64.54,6,0 << Priest/Shaman
.goto Orgrimmar,46.75,63.84,6,0 << Priest/Shaman
.goto Orgrimmar,41.89,64.39,20,0 << Priest/Shaman
.goto Orgrimmar,38.65,56.58,25,0 << Shaman
.goto Orgrimmar,38.78,54.87,25,0 << Shaman
.goto Orgrimmar,40.94,45.20,25,0 << Shaman
.goto Orgrimmar,42.30,37.44,30,0 << Shaman
.goto Orgrimmar,39.58,75.87,20,0 << Priest
.goto Orgrimmar,66.05,18.52,15 >>前往|cFF00FF25Ormak|r << Hunter
.goto Orgrimmar,38.81,36.38,15 >>前往|cFF00FF25Kardris|r << Shaman
.goto Orgrimmar,35.59,87.80,15 >>前往|cFF00FF25Ur'kyo|r << Priest
step << skip
#xprate <1.7
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ormak|r
.train 14263 >>训练你的职业技能
.target Ormak Grimshot
.xp <32,1
.xp >34,1

step << Hunter
#label OrgTrain32
#xprate <1.7
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ormak|r
.train 13813 >>训练你的职业技能
.target Ormak Grimshot
.xp <34,1
step << Shaman
#xprate <1.7
#label OrgTrain32 << tbc
.goto Orgrimmar,38.81,36.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kardris|r
.train 8499 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <32,1
.xp >34,1 << wotlk
step << Shaman wotlk
#label OrgTrain32
#xprate <1.7
.goto Orgrimmar,38.81,36.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kardris|r
.train 52131 >>训练你的职业技能 << wotlk
.target Kardris Dreamseeker
.xp <34,1
step << Priest
#xprate <1.7
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ur'kyo|r
.train 9473 >>训练你的职业技能
.target Ur'kyo
.xp <32,1
.xp >34,1
step << Priest
#xprate <1.7
#label OrgTrain32
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ur'kyo|r
.train 8105 >>训练你的职业技能
.target Ur'kyo
.xp <34,1
step << Troll
#completewith CampTStone2
.goto The Barrens,63.08,37.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Bragok|r
.fly Camp Taurajo >>飞往陶拉霍营地
.target Bragok
.zoneskip Orgrimmar
step << Undead/!Mage
#xprate >1.6999
#completewith CampTStone2
.hs >>前往: 奥格瑞玛
.cooldown item,6948,>0
.zoneskip Orgrimmar
step << Mage
#completewith CampTStone2
.cast 3563 >>演员阵容|T135765:0|t[电视剧：雷霆崖]
.zoneskip Thunder Bluff
.zoneskip The Barrens
.zoneskip Thousand Needles
step << Mage
.goto Thunder Bluff,22.77,14.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shymm|r
.train 8422 >>训练你的职业技能
.target Archmage Shymm
.xp <32,1
.xp >34,1
step << Mage
.goto Thunder Bluff,22.77,14.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shymm|r
.train 8492 >>训练你的职业技能
.target Archmage Shymm
.xp <34,1
step << Mage
.goto Thunder Bluff,46.22,49.14,6,0
.goto Thunder Bluff,46.01,49.90,6,0
.goto Thunder Bluff,47.00,49.83
>>爬上塔楼
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Tal|r
.fly Camp Taurajo >>飞往陶拉霍营地
.target Tal
step << Undead
#xprate >1.6999
.goto Tirisfal Glades,61.06,58.86,12,0
.goto Tirisfal Glades,61.51,59.01,10,0
.goto Tirisfal Glades,61.27,59.22,8,0
.goto Tirisfal Glades,61.13,58.84,8,0
.goto Tirisfal Glades,61.38,58.71,8,0
.goto Tirisfal Glades,61.34,59.17,8,0
.goto Tirisfal Glades,60.51,58.69,-1
.goto Tirisfal Glades,60.94,46.35,-1
>>上齐柏林塔
.zone Durotar >>前往: |cFFDB2EEF杜隆塔尔|r
.cooldown item,6948,<0
.zoneskip Orgrimmar
.zoneskip Thunder Bluff
.zoneskip Thousand Needles
step
#completewith Doras1
.goto Orgrimmar,47.41,65.07,10,0
.goto Orgrimmar,46.59,64.54,6,0
.goto Orgrimmar,46.75,63.84,6,0
.goto Orgrimmar,46.59,64.54,6,0
.goto Orgrimmar,46.75,63.84,6,0
.goto Orgrimmar,46.59,64.54,6,0
.goto Orgrimmar,46.75,63.84,6,0
.goto Orgrimmar,45.12,63.88,10 >>沿着塔向|cFF00FF25Doras|r行进
step << Warlock
#xprate <1.7
#completewith CampTStone2
.goto Orgrimmar,45.12,63.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Doras|r
.fly Ratchet >>飞到棘轮
.target Doras
.zoneskip Orgrimmar,1
.xp <34,1
step << Warlock
#xprate <1.7
.goto The Barrens,62.44,35.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Babagaya|r
.train 7648 >>训练你的职业技能
.target Babagaya Shadowcleft
.xp <34,1
step << Warlock
#xprate <1.7
#completewith CampTStone2
.goto The Barrens,63.08,37.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Bragok|r
.fly Camp Taurajo >>飞往陶拉霍营地
.target Bragok
.zoneskip Orgrimmar
.xp <34,1
step
#label Doras1
#completewith CampTStone2
.goto Orgrimmar,45.12,63.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Doras|r
.fly Camp Taurajo >>飞往陶拉霍营地
.target Doras
.zoneskip Orgrimmar,1

step
#xprate >1.6999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jorn|r and |cFF00FF25Tatternack|r
.turnin 884 >>交任务: |cFF00FF25奥瓦坦卡|r
.turnin 885 >>交任务: |cFF00FF25瓦希塔帕恩|r
.turnin 897 >>交任务: |cFF00FF25收割者|r
.goto The Barrens,44.86,59.13
.turnin 893 >>交任务: |cFF00FF25野猪人的武器|r
.accept 1153 >>接任务: |cFFFCDC00新的矿石样本|r
.goto The Barrens,45.10,57.68
.target Jorn Skyseer
.target Tatternack Steelforge
.isOnQuest 884
.isOnQuest 885
.isOnQuest 897
step
#xprate >1.6999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jorn|r and |cFF00FF25Tatternack|r
.turnin 885 >>交任务: |cFF00FF25瓦希塔帕恩|r
.turnin 897 >>交任务: |cFF00FF25收割者|r
.goto The Barrens,44.86,59.13
.turnin 893 >>交任务: |cFF00FF25野猪人的武器|r
.accept 1153 >>接任务: |cFFFCDC00新的矿石样本|r
.goto The Barrens,45.10,57.68
.target Jorn Skyseer
.target Tatternack Steelforge
.isOnQuest 885
.isOnQuest 897
step
#xprate >1.6999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jorn|r and |cFF00FF25Tatternack|r
.turnin 884 >>交任务: |cFF00FF25奥瓦坦卡|r
.turnin 897 >>交任务: |cFF00FF25收割者|r
.goto The Barrens,44.86,59.13
.turnin 893 >>交任务: |cFF00FF25野猪人的武器|r
.accept 1153 >>接任务: |cFFFCDC00新的矿石样本|r
.goto The Barrens,45.10,57.68
.target Jorn Skyseer
.target Tatternack Steelforge
.isOnQuest 884
.isOnQuest 897
step
#xprate >1.6999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jorn|r and |cFF00FF25Tatternack|r
.turnin 884 >>交任务: |cFF00FF25奥瓦坦卡|r
.turnin 885 >>交任务: |cFF00FF25瓦希塔帕恩|r
.goto The Barrens,44.86,59.13
.turnin 893 >>交任务: |cFF00FF25野猪人的武器|r
.accept 1153 >>接任务: |cFFFCDC00新的矿石样本|r
.goto The Barrens,45.10,57.68
.target Jorn Skyseer
.target Tatternack Steelforge
.isOnQuest 884
.isOnQuest 885
step
#xprate >1.6999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jorn|r and |cFF00FF25Tatternack|r
.turnin 884 >>交任务: |cFF00FF25奥瓦坦卡|r
.goto The Barrens,44.86,59.13
.turnin 893 >>交任务: |cFF00FF25野猪人的武器|r
.accept 1153 >>接任务: |cFFFCDC00新的矿石样本|r
.goto The Barrens,45.10,57.68
.target Jorn Skyseer
.target Tatternack Steelforge
.isOnQuest 884
step
#xprate >1.6999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jorn|r and |cFF00FF25Tatternack|r
.turnin 885 >>交任务: |cFF00FF25瓦希塔帕恩|r
.goto The Barrens,44.86,59.13
.turnin 893 >>交任务: |cFF00FF25野猪人的武器|r
.accept 1153 >>接任务: |cFFFCDC00新的矿石样本|r
.goto The Barrens,45.10,57.68
.target Jorn Skyseer
.target Tatternack Steelforge
.isOnQuest 885
step
#xprate >1.6999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jorn|r and |cFF00FF25Tatternack|r
.turnin 897 >>交任务: |cFF00FF25收割者|r
.goto The Barrens,44.86,59.13
.turnin 893 >>交任务: |cFF00FF25野猪人的武器|r
.accept 1153 >>接任务: |cFFFCDC00新的矿石样本|r
.goto The Barrens,45.10,57.68
.target Jorn Skyseer
.target Tatternack Steelforge
.isOnQuest 897
step
#xprate >1.6999
#label CampTStone2
.goto The Barrens,45.10,57.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Tatternack|r
.turnin 893 >>交任务: |cFF00FF25野猪人的武器|r
.accept 1153 >>接任务: |cFFFCDC00新的矿石样本|r
.target Tatternack Steelforge
step
#xprate <1.7
#label CampTStone2
.goto The Barrens,45.10,57.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Tatternack|r
.turnin 1153 >>交任务: |cFF00FF25新的矿石样本|r
.target Tatternack Steelforge
step
#completewith next
.goto The Barrens,44.44,59.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Omusa|r
.fly Freewind Post >>飞到Freewind Post
.target Omusa Thunderhorn
step
.goto Thousand Needles,45.05,48.90,8,0
.goto Thousand Needles,44.83,48.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Elu|r
.turnin 4767 >>交任务: |cFF00FF25驭风者|r
.target Elu
step << Hunter
.goto Thousand Needles,44.89,50.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Starn|r
.vendor 9551 >>|cFF0E8312购买|r |T135495:0|t[密集短弓]|cFF0e8132如果它已启动，|r|t132382:0|t[剃刀箭头]|cff0e8132|r
.collect 3030,2000,4767,1 
.target Starn
.itemcount 3030,<2000
.money <2.8814
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<18.95

step << Hunter
.goto Thousand Needles,44.89,50.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Starn|r
.vendor 9551 >>|cFF0E8312向他购买|r |T135495:0|t[密集短弓]|cFF0E6312
.target Starn
.money <2.5814
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<18.95
step << Hunter
.goto Thousand Needles,44.89,50.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Starn|r
>>|cFF0E8312从他那里购买|r |T132382:0|t[剃刀箭头]|cFF0E6312|r
.collect 3030,2000,4767,1 
.target Starn
.itemcount 3030,<2000
.money <0.3000
step << Hunter
#completewith next
+装备|T135495:0|t[密集短弓]
.use 11305
.itemcount 11305,1
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<18.95
step
#completewith TestofE
.goto Thousand Needles,46.07,51.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Abeqwa|r
.home >>将您的炉石设置为Freewind Post
.target Innkeeper Abeqwa
step
.goto Thousand Needles,46.07,51.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Abeqwa|r
>>|cFF0E8312从他那里购买|r|T132799:0|t[Sweet Nectar]|cFF0E6312|r << Priest/Mage/Warlock/Druid
>>|cFF0E8312从他那里购买|r |T133994:0|t[暴风布里]|cFF0E6312 |r << !Priest !Mage !Warlock !Druid !Paladin
>>|cFF0E8312从他那里购买|r|T132799:0|t[甜蜜汁]|cFF0e8132和|r|T133994:0|t[暴风糖]|cff0e8132|r << Paladin
.collect 1708,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin 
.collect 1707,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin 
.collect 1707,10,1145,1 << Paladin 
.target Innkeeper Abeqwa
.money <0.4000 << !Paladin
.money <0.6000 << Paladin/Shaman
.xp <24,1
.xp >35,1
step
.goto Thousand Needles,46.21,50.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Elosai|r
.turnin 9434 >>交任务: |cFF00FF25测试药剂|r
.target Magistrix Elosai
step
#completewith next
.goto Thousand Needles,54.57,44.36,12,0
.goto Thousand Needles,53.71,42.59,10,0 << !Shaman
.goto Thousand Needles,53.95,41.49,10 >>前往|cFF00FF25Dorn|r << !Shaman
.goto Thousand Needles,53.54,42.65,10 >>向|cFF00FF25Prate|r行进 << Shaman
step
#label TestofE
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Prate|r and |cFF00FF25Dorn|r << Shaman
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Dorn|r << !Shaman
.turnin 1531 >>交任务: |cFF00FF25空气的召唤|r << Shaman
.goto Thousand Needles,53.54,42.65 << Shaman
.turnin 1150 >>交任务: |cFF00FF25耐力的试炼|r
.accept 1151 >>接任务: |cFFFCDC00力量的试炼|r
.goto Thousand Needles,53.95,41.49
.target Prate Cloudseer << Shaman
.target Dorn Plainstalker
step
#completewith next
.goto Thousand Needles,31.30,36.87,20,0
.goto Thousand Needles,33.12,35.30,15,0
.goto Thousand Needles,32.92,32.51,15,0
.goto Thousand Needles,31.97,31.34,15,0
.goto Thousand Needles,32.28,28.59,15,0
.goto Thousand Needles,32.51,27.28,15,0
.goto Thousand Needles,33.30,28.62,15,0
.goto Thousand Needles,33.30,28.62,15,0
.goto Thousand Needles,34.87,31.85,15,0
.goto Thousand Needles,34.12,35.79,15,0
.goto Thousand Needles,33.26,36.25,15,0
.goto Thousand Needles,32.35,33.46,15,0
.goto Thousand Needles,31.78,32.58,10 >>前往|cFFDB2EEFDocument Chest#1 |r
step
.goto Thousand Needles,31.78,32.58
>>打开|cFFDB2EEFDocument Chest#1 |r。为|cFF00BCD4机密注释#1 |r
.complete 5064,1 
step
#completewith next
.goto Thousand Needles,32.35,33.46,15,0
.goto Thousand Needles,33.23,36.41,15,0
.goto Thousand Needles,34.07,39.57,10,0
.goto Thousand Needles,33.77,39.98,10 >>前往|cFFDB2EEFDocument Chest#2 |r
step
.goto Thousand Needles,33.77,39.98
>>打开|cFFDB2EEFDocument Chest#2 |r。为|cFF00BCD4机密注释#2 |r
.complete 5064,2 
step
#completewith next
.goto Thousand Needles,35.81,39.48,15,0
.goto Thousand Needles,38.38,40.53,15,0
.goto Thousand Needles,39.00,41.19,10,0
.goto Thousand Needles,39.35,41.52,10 >>前往|cFFDB2EEFDocument Chest#3 |r
step
.goto Thousand Needles,39.35,41.52
>>打开|cFFDB2EEFDocument Chest#3 |r。为|cFF00BCD4机密注释#3 |r
.complete 5064,3 
step
#completewith next
.goto Thousand Needles,38.38,40.53,15,0
.goto Thousand Needles,35.67,39.24,15,0
.goto Thousand Needles,34.32,35.71,15,0
.goto Thousand Needles,35.02,31.78,15,0
.goto Thousand Needles,35.68,31.02,15,0
.goto Thousand Needles,36.92,31.84,15,0
.goto Thousand Needles,37.17,33.10,15,0
.goto Thousand Needles,37.77,34.99,15,0
.goto Thousand Needles,38.06,35.35,12 >>前往|cFFDB2EEF生命之火|r
step
.goto Thousand Needles,38.06,35.35
.cast 16996 >>单击|cFFDB2EEF生命之火|r召唤|cFFFF5722Arikara|r
.timer 5,Arikara RP
.isOnQuest 5088
step
.goto Thousand Needles,38.22,35.48
>>|cFFFCDC00等待RP|r
>>杀死|cFFFF5722Arikara|r。为她抢来|cFF00BCD4Serpent Skin|r
.complete 5088,1 
.complete 5088,2 
.mob Arikara

step
#completewith next
.goto Thousand Needles,37.77,34.99,15,0
.goto Thousand Needles,37.16,33.15,15,0
.goto Thousand Needles,37.72,31.46,15,0
.goto Thousand Needles,38.98,29.43,15,0
.goto Thousand Needles,38.07,26.74,30 >>前往|cFFFF5722Arnak|r
step
.goto Thousand Needles,38.28,26.80,10,0
.goto Thousand Needles,38.07,26.74
>>杀死|cFFFF5722Arnak|r。抢他的|cFF00BCD4oof|r
.complete 5147,1 
.mob Arnak Grimtotem
step << skip
.goto Thousand Needles,37.98,26.59,8,0
.goto Thousand Needles,37.95,26.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Lakota|r
.accept 4904 >>接任务: |cFFFCDC00终获解救|r
.target Lakota Windsong

step << skip
>>跟随拉科塔，在整个护送过程中保护她。暴徒将定期在平台上滋生。
.goto Thousand Needles,30.7,37.1
.complete 4904,1 
step << Mage/Paladin
#completewith Gizmo
.cast 1953 >>|cFFFCDC00跳下。在撞击底部之前|r|T135736:0|t[闪烁]|cFFFCDC00，以避免坠落伤害|r << Mage
.cast 5599 >>|cFFFCDC00跳下。在触底前施放|r|T135964:0|t[保护祝福]|cFFFCDC00，以避免坠落伤害|r << Paladin

step << !Mage !Paladin
#completewith next
.goto Thousand Needles,38.98,29.43,15,0
.goto Thousand Needles,37.56,31.46,15,0
.goto Thousand Needles,36.88,32.79,15,0
.goto Thousand Needles,35.96,34.38,20 >>跳进下面的水里。如果你死了，跑回你的尸体
>>|cFFFCDC00避免|cFFFF5722烫伤元素|r和|r|cFFFF5 722沸腾元素|r

step
#completewith next
.goto Thousand Needles,22.75,24.63
.cast 17176 >>单击|cFFDB2EEFPanther笼子|r将|cFFFF5722愤怒的黑豹|r变成敌对状态
step
#label Gizmo
.goto Thousand Needles,22.75,24.63
>>杀死|cFFFF5722愤怒的黑豹|r。抢来|cFF00BCD4超级电容器Gizmo |r
>>|cFFFCDC00确保您有可用的冷却|r
>>|cFFFCDC00如果需要，为他找组|r
.complete 5151,1 
.mob Enraged Panther
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kanati|r, |cFF00FF25Motega|r, and |cFF00FF25Wizlo|r
>>|cFFFCDC00快速转入，因为转入“暗杀阴谋”将召唤三名|cFFFF5722Galak刺客|r，您必须保护|cFF00FF25Kanati|r免受|r
.turnin 4881 >>交任务: |cFF00FF25暗杀计划|r
.accept 4966 >>接任务: |cFFFCDC00保护卡纳提·灰云|r
.goto Thousand Needles,21.25,32.05
.turnin 5088 >>交任务: |cFF00FF25阿利卡拉|r
.goto Thousand Needles,21.43,32.35,5,0
.goto Thousand Needles,21.54,32.35
.turnin 5151 >>交任务: |cFF00FF25超适应齿轮|r
.goto Thousand Needles,21.43,32.55
.target Kanati Greycloud
.target Motega Firemane
.target Wizlo Bearingshiner
.isOnQuest 4881
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kanati|r, |cFF00FF25Motega|r, and |cFF00FF25Wizlo|r
>>|cFFFCDC00快速转入，因为转入“暗杀阴谋”将召唤三名|cFFFF5722Galak刺客|r，您必须保护|cFF00FF25Kanati|r免受|r
.accept 4966 >>接任务: |cFFFCDC00保护卡纳提·灰云|r
.goto Thousand Needles,21.25,32.05
.turnin 5088 >>交任务: |cFF00FF25阿利卡拉|r
.goto Thousand Needles,21.43,32.35,5,0
.goto Thousand Needles,21.54,32.35
.turnin 5151 >>交任务: |cFF00FF25超适应齿轮|r
.goto Thousand Needles,21.43,32.55
.target Kanati Greycloud
.target Motega Firemane
.target Wizlo Bearingshiner
.isQuestTurnedIn 4881
.isQuestAvailable 4966
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Motega|r and |cFF00FF25Wizlo|r
.turnin 5088 >>交任务: |cFF00FF25阿利卡拉|r
.goto Thousand Needles,21.43,32.35,5,0
.goto Thousand Needles,21.54,32.35
.turnin 5151 >>交任务: |cFF00FF25超适应齿轮|r
.goto Thousand Needles,21.43,32.55
.target Kanati Greycloud
.target Motega Firemane
.target Wizlo Bearingshiner
step
.goto Thousand Needles,21.25,32.05
>>杀死|cFFFF5722Galak刺客|r以保护|cFF00FF25Kanati|r
.complete 4966,1 
.mob Galak Assassin
.isOnQuest 4966
step
.goto Thousand Needles,21.25,32.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kanati|r
.turnin 4966 >>交任务: |cFF00FF25保护卡纳提·灰云|r
.isQuestComplete 4966
step
.goto Thousand Needles,10.92,22.28,40,0
.goto Thousand Needles,10.60,22.80,40,0
.goto Thousand Needles,12.96,26.67,40,0
.goto Thousand Needles,17.18,37.08,40,0
.goto Thousand Needles,16.90,37.80,40,0
.goto Thousand Needles,21.22,39.04,40,0
.goto Thousand Needles,21.92,38.62,40,0
.goto Thousand Needles,25.43,41.71,40,0
.goto Thousand Needles,25.77,41.44,40,0
.goto Thousand Needles,10.92,22.28,40,0
.goto Thousand Needles,10.60,22.80,40,0
.goto Thousand Needles,12.96,26.67,40,0
.goto Thousand Needles,17.18,37.08,40,0
.goto Thousand Needles,16.90,37.80,40,0
.goto Thousand Needles,21.22,39.04,40,0
.goto Thousand Needles,21.92,38.62,40,0
.goto Thousand Needles,25.43,41.71,40,0
.goto Thousand Needles,25.77,41.44
>>杀死|cFFFF5722Rok'Alim|r。抢了他|cFF00BCD4Rok'Alim|r的碎片
>>|cFFFF5722Rok'Alim|r对自然伤害免疫 << Shaman/Druid
.unitscan Rok'Alim the Pounder
.complete 1151,1 
step
#completewith FreewindEnd
.hs >>炉灶 to Freewind Post公司
.cooldown item,6948,>0
step
#completewith FreewindEnd
.goto Thousand Needles,46.73,48.27,30 >>前往Freewind Post的电梯
.cooldown item,6948,<0
step
#completewith FreewindEnd
.goto Thousand Needles,45.91,49.91,25 >>乘电梯到Freewind
.cooldown item,6948,<0
step
.goto Thousand Needles,46.07,51.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Abeqwa|r
>>|cFF0E8312从他那里购买|r|T132799:0|t[Sweet Nectar]|cFF0E6312|r << Priest/Mage/Warlock/Druid
>>|cFF0E8312从他那里购买|r |T133994:0|t[暴风布里]|cFF0E6312 |r << !Priest !Mage !Warlock !Druid !Paladin
>>|cFF0E8312从他那里购买|r|T132799:0|t[甜蜜汁]|cFF0e8132和|r|T133994:0|t[暴风糖]|cff0e8132|r << Paladin
.collect 1708,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin 
.collect 1707,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin 
.collect 1707,10,1145,1 << Paladin 
.target Innkeeper Abeqwa
.money <0.4000 << !Paladin
.money <0.6000 << Paladin/Shaman
.xp <24,1
.xp >35,1
step
#label FreewindEnd
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Longhorn|r
.goto Thousand Needles,45.70,50.63,8,0
.goto Thousand Needles,45.65,50.80
.turnin 5064 >>交任务: |cFF00FF25恐怖图腾的密信|r
.turnin 5147 >>交任务: |cFF00FF25通缉：阿纳克·恐怖图腾|r
.target Cliffwatcher Longhorn
step << skip
.goto Thousand Needles,46.0,51.5
.turnin 4904 >>交任务: |cFF00FF25终获解救|r
step << Warlock
#xprate <1.7
#completewith Manuscript
.goto Thousand Needles,44.12,37.22,20 >>进入洞穴
step << Warlock
#xprate <1.7
#completewith Manuscript
.goto Thousand Needles,44.41,36.40,20,0
.goto Thousand Needles,44.20,35.00,20,0
.goto Thousand Needles,44.31,32.87,20,0
.goto Thousand Needles,43.44,32.69,15 >>朝着|cFFDB2EEFD损坏的胸部|r行进
step << Warlock
#xprate <1.7
.goto Thousand Needles,43.44,32.69
>>在地面上打开|cFFDB2EEFD损坏的箱子|r。为|cFF00BCD4图案手稿|r
.complete 1803,2 
step << Warlock
#xprate <1.7
#completewith next
.goto Thousand Needles,44.12,37.22,20 >>离开洞穴
step
#completewith next
.goto Thousand Needles,54.57,44.36,12,0
.goto Thousand Needles,53.71,42.59,10,0
.goto Thousand Needles,53.95,41.49,10 >>前往|cFF00FF25Dorn|r
step
.goto Thousand Needles,53.95,41.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Dorn|r
.turnin 1151 >>交任务: |cFF00FF25力量的试炼|r
.target Dorn Plainstalker
step
#xprate >1.6999
.line Thousand Needles,51.89,43.02,53.41,46.19,54.05,44.96
.line Thousand Needles,53.47,46.65,52.61,48.28,53.64,48.50,52.61,48.28,51.48,48.06
.line Thousand Needles,62.21,47.76,63.05,48.92,62.63,48.38,62.96,47.64,64.01,47.52,63.92,46.63,63.10,45.53
.line Thousand Needles,65.83,51.44,65.87,51.01,65.44,50.11,64.91,50.30,65.44,50.11,66.11,49.91,66.32,49.13
.line Thousand Needles,59.79,58.16,59.53,58.57,58.87,58.69,57.66,57.70,58.87,58.69,58.93,57.68,58.94,56.55,58.97,54.98,59.32,53.69,59.79,58.16
.goto Thousand Needles,51.89,43.02,40,0
.goto Thousand Needles,53.41,46.19,40,0
.goto Thousand Needles,54.05,44.96,40,0
.goto Thousand Needles,53.47,46.65,40,0
.goto Thousand Needles,52.61,48.28,40,0
.goto Thousand Needles,53.64,48.50,40,0
.goto Thousand Needles,51.48,48.06,40,0
.goto Thousand Needles,59.69,47.76,40,0
.goto Thousand Needles,62.21,47.76,40,0
.goto Thousand Needles,62.63,48.38,40,0
.goto Thousand Needles,64.01,47.52,40,0
.goto Thousand Needles,63.92,46.63,40,0
.goto Thousand Needles,63.10,45.53,40,0
.goto Thousand Needles,65.83,51.44,40,0
.goto Thousand Needles,65.44,50.11,40,0
.goto Thousand Needles,64.91,50.30,40,0
.goto Thousand Needles,66.11,49.91,40,0
.goto Thousand Needles,66.32,49.13,40,0
.goto Thousand Needles,59.79,58.16,40,0
.goto Thousand Needles,58.87,58.69,40,0
.goto Thousand Needles,57.66,57.70,40,0
.goto Thousand Needles,58.93,57.68,40,0
.goto Thousand Needles,58.94,56.55,40,0
.goto Thousand Needles,58.97,54.98,40,0
.goto Thousand Needles,59.32,53.69,40,0
.goto Thousand Needles,51.89,43.02
>>杀死|cFFFF5722Gravelsnout勘测员|r、|cFFFF5722Gravelsnout挖掘者|r和|cFFFF9722Gibblesnik |r（如果他已经起床）。将其作为|cFF00BCD4矿石样品|r
.complete 1153,1 
.unitscan Gravelsnout Digger,Gravelsnout Surveyor,Gibblesnik
step
.goto Thousand Needles,67.59,63.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Moktar|r
.turnin 1146 >>交任务: |cFF00FF25疯狂的虫群|r
.accept 1147 >>接任务: |cFFFCDC00疯狂的虫群|r
.target Moktar Krin
]])
RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 32-34闪亮平板JJ
#version 18
#group RestedXP 部落 30-45
#next 34-38 荆棘谷 / 尘泥沼泽
#xprate >1.4999
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kravel|r, |cFF00FF25Fizzle|r, |cFF00FF25Wizzle|r, |cFF00FF25Pozzik|r, and |cFF00FF25Zherin|r
.accept 1110 >>接任务: |cFFFCDC00火箭车零件|r
.accept 1111 >>接任务: |cFFFCDC00码头管理员迪兹维格|r
.accept 5762 >>接任务: |cFFFCDC00赫米特·奈辛瓦里|r
.goto Thousand Needles,77.78,77.27
.accept 1104 >>接任务: |cFFFCDC00含盐的蝎毒|r
.goto Thousand Needles,78.06,77.12
.accept 1105 >>接任务: |cFFFCDC00硬化龟壳|r
.goto Thousand Needles,78.14,77.12
.accept 1176 >>接任务: |cFFFCDC00减轻负重|r
.goto Thousand Needles,80.18,75.88
.accept 1175 >>接任务: |cFFFCDC00安全隐患|r
.goto Thousand Needles,81.63,77.95
.target Kravel Koalbeard
.target Fizzle Brassbolts
.target Wizzle Brassbolts
.target Pozzik
.target Trackmaster Zherin
step
>>地面上的赃物|cFF00BCD4Locket Car Parts|r
>>杀死|cFFFF5722 Scorpid Reavers|r和|cFFFF5 722 Scoropid恐怖|r。抢夺他们的|cFF00BCD4Venom|r
>>杀死|cFFFF5722火花壳龟|r和|cFFFF5 722火花螺|r。为它们的|cFF00BCD4硬壳龟壳|r
>>|cFFFCDC00尽量避免击杀|cFFFF5722火花弹射击者|r，因为他们非常坦克|r
>>杀死|cFFFF5722萨尔斯通Basilisks |r
>>杀死|cFFFF5722盐滩清道夫|r。将其|cFF00BCD4Bones|r
>>|cFFFCDC00小心|cFFFF5722盐平面清道夫|r当你的生命值低于或等于20%时|r施放|r|T135358:0|t[执行]|cFFFCDC0 |r << Rogue/Warrior
>>杀死|cFFFF5722盐石晶皮|r和|cFFFF5 722盐石凝视者|r
>>|cFFFCDC00小心|cFFFF5722盐石晶皮|r铸造|r |T136170:0|t[Mana Burn] << !Rogue !Warrior
>>|cFFFCDC00小心|cFFFF5722盐石凝视者|r施法|r|T132154:0|t[水晶凝视]|cFFFCDC0（近战结束）|r
.complete 1110,1 
.goto Thousand Needles,84.06,82.00,60,0
.goto Thousand Needles,88.56,76.96,60,0
.goto Thousand Needles,86.90,72.23,60,0
.goto Thousand Needles,88.12,67.69,60,0
.goto Thousand Needles,87.82,65.82,60,0
.goto Thousand Needles,78.84,62.51,80,0
.goto Thousand Needles,85.99,59.45,60,0
.goto Thousand Needles,83.31,54.46,60,0
.goto Thousand Needles,80.82,55.68,60,0
.goto Thousand Needles,79.48,52.60,60,0
.goto Thousand Needles,76.29,52.98,60,0
.goto Thousand Needles,71.64,55.30,60,0
.goto Thousand Needles,69.26,61.49,60,0
.goto Thousand Needles,69.51,65.98,60,0
.goto Thousand Needles,71.64,73.36,60,0
.goto Thousand Needles,73.23,80.90,60,0
.loop 50,Thousand Needles,84.06,82.00,88.56,76.96,86.90,72.23,88.12,67.69,87.82,65.82,85.99,59.45,83.31,54.46,80.82,55.68,79.48,52.60,76.29,52.98,71.64,55.30,69.26,61.49,69.51,65.98,71.64,73.36,73.23,80.90,84.06,82.00
.complete 1104,1 
.goto Thousand Needles,71.59,74.22,50,0
.loop 50,Thousand Needles,71.59,74.22,71.05,72.56,70.97,68.79,69.47,64.42,71.99,65.92,74.95,64.90,73.44,61.91,72.42,59.43,71.77,58.10,74.55,58.53,74.34,54.34,75.87,54.27,75.88,51.16,77.71,51.40,78.57,52.74,78.86,54.73,82.85,59.98,83.95,62.60,82.78,66.31,83.71,71.62,82.64,73.35,76.97,73.71,72.38,73.30,71.59,74.22
.complete 1105,1 
.loop 50,Thousand Needles,69.47,67.05,70.11,65.82,70.76,63.39,69.37,59.98,73.20,58.42,74.54,62.91,75.42,64.24,74.98,61.38,76.74,59.03,74.12,55.34,74.98,52.08,77.22,54.11,81.26,52.82,82.02,54.40,82.86,54.82,83.99,54.20,83.26,57.79,83.64,60.36,80.21,66.44,77.20,68.33,76.43,70.35,77.57,72.28,76.46,72.50,69.47,67.05
.complete 1175,1 
.loop 50,Thousand Needles,69.70,68.11,71.13,65.70,71.33,64.91,68.79,61.48,69.82,60.22,73.89,59.61,73.38,56.68,74.26,53.25,76.44,52.17,76.64,54.47,76.17,56.48,76.80,57.41,75.46,57.28,75.83,62.30,77.22,60.80,77.83,59.58,78.58,59.12,78.46,61.48,80.85,60.42,80.47,64.47,79.14,63.59,79.37,65.60,77.59,65.11,78.13,63.27,71.70,67.52,69.70,68.11
.complete 1176,1 
.goto Thousand Needles,87.95,66.84,50,0
.loop 50,Thousand Needles,87.43,64.71,81.56,53.92,78.02,59.83,75.62,60.40,72.38,73.00,70.81,76.29,77.19,84.12,78.63,84.96,81.46,85.87,84.06,82.05,84.51,81.85,83.47,76.62,87.95,66.84,87.43,64.71
.complete 1175,2 
.loop 50,Thousand Needles,77.53,83.48,76.55,84.70,76.21,86.62,77.62,86.46,77.66,87.96,77.74,90.18,78.54,89.69,79.08,88.67,79.42,89.56,80.25,88.76,79.35,87.11,78.73,86.84,79.10,85.83,77.53,83.48
.complete 1175,3 
.loop 50,Thousand Needles,77.53,83.48,76.55,84.70,76.21,86.62,77.62,86.46,77.66,87.96,77.74,90.18,78.54,89.69,79.08,88.67,79.42,89.56,80.25,88.76,79.35,87.11,78.73,86.84,79.10,85.83,77.53,83.48
.mob Scorpid Reaver
.mob Scorpid Terror
.mob Salt Flats Scavenger
.mob Sparkleshell Tortoise
.mob Sparkleshell Borer
.mob Sparkleshell Snapper
.mob Saltstone Basilisk
.mob Saltstone Crystalhide
.mob Saltstone Gazer
step
.loop 45,Thousand Needles,70.58,82.39,71.81,83.64,71.09,86.04,71.00,86.90,70.07,86.97,70.20,88.51,69.20,89.23,68.53,88.14,67.99,87.07,67.96,85.92,65.65,86.30,65.15,85.17,63.87,85.92,65.15,85.17,65.65,86.30,67.96,85.92,67.38,83.63,67.07,82.42,68.09,81.75,69.63,81.21,70.58,82.39
>>杀死|cFFFF5722Silithid搜索者|r、|cFFFF5 722SilithidHiveDrones|r、| cFFFF5721Silithid入侵者|r和|cFFFF9722SilithiRavager|r（如果已启动）。为|T135034:0|t[|cFF00BCD4开裂的硅质Carace|r]
>>|cFFFCDC00使用|T135034:0|t[|cFF00BCD4开裂的硅质Carace|r]开始任务|r
.collect 5877,1,1148,1 
.accept 1148 >>接任务: |cFFFCDC00虫群的样本|r
.use 5877
.mob Silithid Searcher
.mob Silithid Hive Drone
.mob Silithid Invader
.unitscan Silithid Ravager
step
#completewith next
.loop 45,Thousand Needles,70.58,82.39,71.81,83.64,71.09,86.04,71.00,86.90,70.07,86.97,70.20,88.51,69.20,89.23,68.53,88.14,67.99,87.07,67.96,85.92,65.65,86.30,65.15,85.17,63.87,85.92,65.15,85.17,65.65,86.30,67.96,85.92,67.38,83.63,67.07,82.42,68.09,81.75,69.63,81.21,70.58,82.39
>>杀死|cFFFF5722Silithid Hive Drones|r、|cFFFF5 722Silithide Searchers |r、| cFFFF5721Silithid入侵者|r和|cFFFF9722SilithidRavager|r（如果已启动）。抢夺他们的|cFF00BCD4Silithid Hearts|r、|cFF0BCD4Silothid Talons |r和|cFF00 BCD4Contact Silithid Caraces|r
.complete 1147,1 
.complete 1147,2 
.complete 1148,1 
.complete 1148,2 
.complete 1148,3 
.mob Silithid Hive Drone
.mob Silithid Searcher
.unitscan Silithid Ravager
step
.goto Thousand Needles,66.90,86.18,40,0
.goto Thousand Needles,65.77,86.21,20,0
.goto Thousand Needles,65.12,85.16,20,0
.goto Thousand Needles,63.52,85.80,40,0
.goto Thousand Needles,66.90,86.18,50,0
>>在洞穴内杀死|cFFFF5722硅化入侵者|r。他们与洞穴内的|cFFFF5722Silithid Hive Drones|r共享产卵
>>|cFFFCDC00您可能需要再次返回洞穴|r
.complete 1147,3 
.mob Silithid Invader
step
#completewith next
>>杀死|cFFFF5722Silithid Hive Drones|r、|cFFFF5 722Silithide Searchers |r、| cFFFF5721Silithid入侵者|r和|cFFFF9722SilithidRavager|r（如果已启动）。抢夺他们的|cFF00BCD4Silithid Hearts|r、|cFF0BCD4Silothid Talons |r和|cFF00 BCD4Contact Silithid Caraces|r
.complete 1147,2 
.complete 1148,1 
.complete 1148,2 
.complete 1148,3 
.mob Silithid Hive Drone
.mob Silithid Invader
.unitscan Silithid Ravager
step
.loop 45,Thousand Needles,70.58,82.39,71.81,83.64,71.09,86.04,71.00,86.90,70.07,86.97,70.20,88.51,69.20,89.23,68.53,88.14,67.99,87.07,67.96,85.92,67.96,85.92,67.38,83.63,67.07,82.42,68.09,81.75,69.63,81.21,70.58,82.39
>>在洞穴外杀死|cFFFF5722Silithid搜索者|r
.complete 1147,1 
.mob Silithid Searcher
step
.loop 45,Thousand Needles,70.58,82.39,71.81,83.64,71.09,86.04,71.00,86.90,70.07,86.97,70.20,88.51,69.20,89.23,68.53,88.14,67.99,87.07,67.96,85.92,65.65,86.30,65.15,85.17,63.87,85.92,65.15,85.17,65.65,86.30,67.96,85.92,67.38,83.63,67.07,82.42,68.09,81.75,69.63,81.21,70.58,82.39
>>杀死洞穴外的|cFFFF5722Silithid Hive Drones|r、|cFFFF5 722Silithide Searchers |r、洞穴内的|c FFFF5722 Silithid入侵者|r，以及|c FFFF5 722 Silichid Ravager |r（如果已启动）。抢夺他们的|cFF00BCD4Silithid Hearts|r、|cFF0BCD4Silothid Talons |r和|cFF00 BCD4Contact Silithid Caraces|r
.complete 1147,2 
.complete 1148,1 
.complete 1148,2 
.complete 1148,3 
.mob Silithid Hive Drone
.mob Silithid Searcher
.mob Silithid Invader
.unitscan Silithid Ravager
step
.goto Thousand Needles,67.59,63.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Moktar|r
.turnin 1147 >>交任务: |cFF00FF25疯狂的虫群|r
.target Moktar Krin
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kravel|r, |cFF00FF25Fizzle|r, |cFF00FF25Wizzle|r, |cFF00FF25Pozzik|r, and |cFF00FF25Zherin|r
.turnin 1110 >>交任务: |cFF00FF25火箭车零件|r
.goto Thousand Needles,77.78,77.27
.turnin 1104 >>交任务: |cFF00FF25含盐的蝎毒|r
.goto Thousand Needles,78.06,77.12
.turnin 1105 >>交任务: |cFF00FF25硬化龟壳|r
.accept 1107 >>接任务: |cFFFCDC00坚硬的尾鳍|r << Druid/Warlock
.goto Thousand Needles,78.14,77.12
.accept 1106 >>接任务: |cFFFCDC00流放者马特克|r
.goto Thousand Needles,78.06,77.12
.turnin 1176 >>交任务: |cFF00FF25减轻负重|r
.accept 1178 >>接任务: |cFFFCDC00地精赞助商|r
.goto Thousand Needles,80.18,75.88
.turnin 1175 >>交任务: |cFF00FF25安全隐患|r
.goto Thousand Needles,81.63,77.95
.target Kravel Koalbeard
.target Fizzle Brassbolts
.target Wizzle Brassbolts
.target Pozzik
.target Trackmaster Zherin
step
#completewith Bulkrek
.abandon 1152 >>放弃知识测试
step
.loop 50,Thousand Needles,77.53,83.48,76.55,84.70,76.21,86.62,77.62,86.46,77.66,87.96,77.74,90.18,78.54,89.69,79.08,88.67,79.42,89.56,80.25,88.76,79.35,87.11,78.73,86.84,79.10,85.83,77.53,83.48
.xp 32 >>研磨至32
step
#completewith next
.goto Thousand Needles,74.36,93.86,30,0
.goto Thousand Needles,74.43,95.46,25,0
.goto Tanaris,51.14,20.85,30,0
.goto Tanaris,51.02,23.76,40,0
.goto Tanaris,51.60,25.44,30 >>前往|cFF00FF25Bulkrek|r
step
#label Bulkrek
.goto Tanaris,51.60,25.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Bulkrek|r
.fp Gadgetzan >>获取Gadgetzan飞行路线
.target Bulkrek Ragefist
step << Druid
#completewith Moonglade1
.cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
.zoneskip Moonglade
.xp <32,1
step << Druid
.goto Moonglade,52.53,40.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Loganaar|r
.train 6778 >>训练你的职业技能
.target Loganaar
.xp <32,1
.xp >34,1
step << Druid
#label Moonglade1
.goto Moonglade,52.53,40.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Loganaar|r
.train 3627 >>训练你的职业技能
.target Loganaar
.xp <34,1
step
#completewith SwarmPT
.hs >>炉灶 to Freewind Post公司
step << Tauren
#completewith next
.goto Thousand Needles,45.14,49.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Nyse|r
.fly Thunder Bluff >>飞向雷霆崖
.target Nyse
.zoneskip Thunder Bluff
.skill riding,75,1
step << Tauren
.goto Mulgore,47.65,58.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kar|r
.skill riding,75 >>火车|T136103:0|t（学徒骑马）
.target Kar Stormsinger
.money <4.5 << wotlk
.money <42.25 << tbc
step << Tauren
.goto Mulgore,47.49,58.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Harb|r
+|cFF0E8312从他那里买任何你喜欢的东西
.target Harb Clawhoof
.itemcount 15277,<1 
.itemcount 15290,<1 
.itemcount 46100,<1 << wotlk 
.money <0.9 << wotlk
.money <9.0000 << tbc
.skill riding,<75,1
step << Tauren
.cast 55884 >>使用|T132243:0|t[Gray Kodo]学习
.use 15277
.itemcount 15277,1
.skill riding,75,1
step << Tauren
.cast 55884 >>使用|T132245:0|t[Brown Kodo]学习
.use 15290
.itemcount 15290,1
.skill riding,75,1
step << Tauren wotlk
.cast 55884 >>使用|T132243:0|t[White Kodo]学习
.use 46100
.itemcount 46100,1
.skill riding,75,1

step << Tauren
>>|cFFFCDC00按“Shift+P”打开安装选项卡|r
>>|cFFFCDC00将|r|T132243:0|t[Gray Kodo]|cFFFCDC0拖到动作栏上|r
.cast 18989 >>安装您的|T132243:0|t[灰色Kodo]
.train 18989,3
.zoneskip Mulgore,1
step << Tauren
>>|cFFFCDC00按“Shift+P”打开安装选项卡|r
>>|cFFFCDC00将|r|T132245:0|t[Brown Kodo]|cFFFCDC0拖到动作栏上|r
.cast 18990 >>安装您的|T132245:0|t[棕色Kodo]
.train 18990,3
.zoneskip Mulgore,1
step << Tauren wotlk
>>|cFFFCDC00按“Shift+P”打开安装选项卡|r
>>|cFFFCDC00将|r|T132243:0|t[White Kodo]|cFFFCDC0拖到动作栏上|r
.cast 64657 >>安装您的|T132243:0|t[白色Kodo]
.train 64657,3
.zoneskip Mulgore,1

step << Tauren
#label BarrensTr
#completewith next
.goto The Barrens,41.40,58.55
.zone The Barrens >>前往: |cFFDB2EEF贫瘠之地|r
.zoneskip Mulgore,1
step
#xprate >1.6999
#requires BarrensTr << Tauren
#completewith next
.goto Thousand Needles,45.14,49.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Nyse|r
.fly Camp Taurajo >>飞往陶拉霍营地
.zoneskip The Barrens
.target Nyse
step
#xprate >1.6999
.goto The Barrens,45.10,57.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Tatternack|r
.turnin 1153 >>交任务: |cFF00FF25新的矿石样本|r
.target Tatternack Steelforge
step
#xprate <1.7
#requires BarrensTr
#label BarrensFly
#completewith next
.goto Thousand Needles,45.14,49.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Nyse|r
.fly Crossroads >>飞向十字路口
.target Nyse
.zoneskip The Barrens
step
#requires BarrensFly
.goto The Barrens,44.44,59.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Omusa|r
.fly Crossroads >>飞向十字路口
.target Omusa Thunderhorn
step
#label SwarmPT
.goto The Barrens,51.07,29.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Korran|r
.turnin 1148 >>交任务: |cFF00FF25虫群的消息|r
.accept 1184 >>接任务: |cFFFCDC00虫群的样本|r
.target Korran
step << Mage
#label TeleportOrg
#completewith PartsOTS
.cast 3567 >>演员阵容|T135759:0|t[电传：Orgrimar]
.itemcount 17031,1
.zoneskip Orgrimmar
step
#requires TeleportOrg << Mage
#completewith PartsOTS
.goto The Barrens,51.50,30.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Devrak|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Devrak
.zoneskip The Barrens,1
step << Mage
#xprate >1.6999
.goto Orgrimmar,38.45,86.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Deino|r downstairs
.train 8422 >>训练你的职业技能
.target Deino
.xp <32,1
.xp >34,1
step << Mage
#xprate >1.6999
.goto Orgrimmar,38.45,86.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Deino|r downstairs
.train 8422 >>训练你的职业技能
.target Deino
.xp <34,1
step << Mage
#xprate <1.7
.goto Orgrimmar,38.45,86.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Deino|r downstairs
.train 8422 >>训练你的职业技能
.target Deino
.xp <32,1
.xp >34,1
step << Mage
#xprate <1.7
.goto Orgrimmar,38.45,86.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Deino|r downstairs
.train 8422 >>训练你的职业技能
.target Deino
.xp <34,1
step << Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ur'kyo|r
.train 9473 >>训练你的职业技能
.target Ur'kyo
.xp <32,1
.xp >34,1
step << Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ur'kyo|r
.train 8105 >>训练你的职业技能
.target Ur'kyo
.xp <34,1
step << Shaman
.goto Orgrimmar,38.81,36.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kardris|r
.train 8499 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <32,1
.xp >34,1 << wotlk
step << Shaman wotlk
.goto Orgrimmar,38.81,36.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kardris|r
.train 52131 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <34,1
step << Paladin
.goto Orgrimmar,32.29,35.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Pyreanor|r
.train 19836 >>训练你的职业技能
.target Master Pyreanor
.xp <32,1
.xp >34,1
step << Paladin
.goto Orgrimmar,32.29,35.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Pyreanor|r
.train 642 >>训练你的职业技能
.target Master Pyreanor
.xp <34,1
step << Rogue
.goto Orgrimmar,43.90,54.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ormok|r
.train 8623 >>训练你的职业技能
.target Ormok
.xp <32,1
.xp >34,1
step << Rogue
.goto Orgrimmar,43.90,54.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ormok|r
.train 8696 >>训练你的职业技能
.target Ormok
.xp <34,1
step << skip
.goto Orgrimmar,47.99,45.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Grol'dar|r
.train 6213 >>训练你的职业技能
.target Grol'dar

step
#completewith next
.goto Orgrimmar,62.56,38.52,20,0 << Paladin/Shaman
.goto Orgrimmar,62.98,39.35,20,0 << !Paladin !Shaman
.goto Orgrimmar,64.34,38.17,20,0
.goto Orgrimmar,75.23,34.24,20 >>前往|cFF00FF25Belgrom|r
step
.goto Orgrimmar,75.23,34.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Belgrom|r
.turnin 1184 >>交任务: |cFF00FF25虫群的消息|r
.target Belgrom Rockmaul
step << Warrior
.goto Orgrimmar,80.39,32.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sorek|r
.train 11549 >>训练你的职业技能
.target Sorek
.xp <32,1
.xp >34,1
step << Warrior
.goto Orgrimmar,80.39,32.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sorek|r
.train 7379 >>训练你的职业技能
.target Sorek
.xp <34,1
step << Orc !Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kildar|r and |cFF00FF25Ogunaro|r
.skill riding,75 >>火车|T136103:0|t[学徒骑行]从|cFF00FF25Kildar|r
.goto Orgrimmar,69.41,13.11
+|cFF0E8312从|cFF00FF25Ogunaro|r|r购买任何您喜欢的|r|T132224:0|t[Wolf]|cFF0e8132
.goto Orgrimmar,69.38,12.25
.target Kildar
.target Ogunaro Wolfrunner
.itemcount 1132,<1 
.itemcount 5665,<1 
.itemcount 5668,<1 
.itemcount 46099,<1 << wotlk 
.money <4.5 << wotlk
.money <42.25 << tbc
.skill riding,75,1
step << Orc !Warlock
.cast 55884 >>使用|T132224:0|t[木狼之角]学习
.use 1132
.itemcount 1132,1
.skill riding,75,1
step << Orc !Warlock
.cast 55884 >>使用|T132266:0|t[恶狼之角]学习
.use 5665
.itemcount 5665,1
.skill riding,75,1
step << Orc !Warlock
.cast 55884 >>使用|T132224:0|t[褐狼之角]学习
.use 5668
.itemcount 5668,1
.skill riding,75,1
step << Orc !Warlock wotlk
.cast 55884 >>使用|T132224:0|t[黑狼之角]学习
.use 46099
.itemcount 46099,1
.skill riding,75,1
step << Orc !Warlock
#completewith OrgTrain
>>|cFFFCDC00按“Shift+P”打开安装选项卡|r
>>|cFFFCDC00将|r|T132224:0|t[木狼]|cFFFCDC0拖到动作栏上|r
.cast 580 >>安装您的|T132224:0|t[木狼]
.train 580,3
step << Orc !Warlock
#completewith OrgTrain
>>|cFFFCDC00按“Shift+P”打开安装选项卡|r
>>|cFFFCDC00将|r|T132266:0|t[Dire Wolf]|cFFFCDC0拖到动作栏上|r
.cast 6653 >>安装您的|T132266:0|t[Dire Wolf]
.train 6653,3
step << Orc !Warlock
#completewith OrgTrain
>>|cFFFCDC00按“Shift+P”打开安装选项卡|r
>>|cFFFCDC00将|r|T132224:0|t[Brown Wolf]|cFFFCDC0拖到动作栏上|r
.cast 6654 >>安装您的|T132224:0|t[棕色狼]
.train 6654,3
step << Orc !Warlock wotlk
#completewith OrgTrain
>>|cFFFCDC00按“Shift+P”打开安装选项卡|r
>>|cFFFCDC00将|r|T132224:0|t[黑狼]|cFFFCDC0拖到动作栏上|r
.cast 64658 >>安装您的|T132224:0|t[黑狼]
.train 64658,3
step << skip
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ormak|r
.train 1543 >>训练你的职业技能
.target Ormak Grimshot

step
.goto Orgrimmar,54.10,68.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gryshka|r
.home >>将您的炉石设置为Orgrimmar
.target Innkeeper Gryshka
step << Undead Mage
.cast 3563 >>演员阵容|T135766:0|t[电传：Undercity]
.itemcount 17031,1
.skill riding,75,1
.money <4.5 << wotlk
.money <42.25 << tbc
.train 3563,3
.zoneskip Undercity
.zoneskip Tirisfal Glades
step << Undead Mage
.goto Undercity,82.77,15.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Hannah|r
.vendor >>|cFF0E8312从她那里购买最多20|r |T134419:0|t[传送符文]|cFF0e81312|r
.target Horthus
.skill riding,75,1
.money <6.3125 << wotlk
.money <44.05 << tbc
.itemcount 17031,<20
.train 3563,3
.target Hannah Akeley
step << Undead Mage
#completewith next
.goto Undercity,82.28,15.47
.goto Undercity,67.90,15.29,30 >>|cFFFCDC00通过将角色定位在最低楼梯的最高部分，直到看起来像是在漂浮，然后注销并返回|r，执行注销跳过
.link https://www.youtube.com/watch?v=-Bi95bCN8dM >>单击此处
.skill riding,75,1
.money <4.5 << wotlk
.money <42.25 << tbc
.train 3563,3
.zoneskip Tirisfal Glades
step << Undead Mage
.goto Undercity,66.21,4.90,15,0
.goto Tirisfal Glades,61.73,64.87
.zone Tirisfal Glades >>Exit Undercity
.skill riding,75,1
.money <4.5 << wotlk
.money <42.25 << tbc
.train 3563,3
step << Undead !Warlock
#completewith next
.goto Orgrimmar,52.26,88.65,30,0
.goto Orgrimmar,49.42,90.90,30,0
.goto Orgrimmar,49.59,94.74,30,0
.goto Durotar,50.61,13.27
.zone Durotar >>前往: |cFFDB2EEF杜隆塔尔|r
.money <4.5 << wotlk
.money <42.25 << tbc
.skill riding,75,1
.zoneskip Undercity
.zoneskip Tirisfal Glades
step << Undead !Warlock
.goto Durotar,50.61,13.27,12,0
.goto Durotar,50.82,13.07,6,0
.goto Durotar,50.83,13.27,6,0
.goto Durotar,50.82,13.07,6,0
.goto Durotar,50.83,13.27,6,0
.goto Durotar,50.82,13.07,6,0
.goto Durotar,50.83,13.27,6,0
.goto Durotar,50.89,14.14,-1
.goto Durotar,56.75,15.11,-1
>>上齐柏林塔
.zone Tirisfal Glades >>Take the Zeppelin to Tirisfal
.money <4.5 << wotlk
.money <42.25 << tbc
.skill riding,75,1
.zoneskip Undercity
step << Undead !Warlock
.goto Tirisfal Glades,60.08,52.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Velma|r
.skill riding,75 >>火车|T136103:0|t（学徒骑马）
.target Velma Warnam
.money <4.5 << wotlk
.money <42.25 << tbc
.skill riding,75,1
step << Undead !Warlock
.goto Tirisfal Glades,59.87,52.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zachariah|r
+|cFF0E8312从他那里买任何你喜欢的|r |T132264:0|t[骷髅马]|cFF0e8132|r
.target Zachariah Post
.itemcount 13331,<1 
.itemcount 13332,<1 
.itemcount 13333,<1 
.itemcount 46308,<1 
.money <0.9 << wotlk
.money <9.0000 << tbc
.skill riding,<75,1
step << Undead !Warlock
.cast 55884 >>使用|T132264:0|t[红色骷髅马]学习
.use 13331
.itemcount 13331,1
.skill riding,75,1
step << Undead !Warlock
.cast 55884 >>使用|T132264:0|t[蓝色骷髅马]学习
.use 13332
.itemcount 13332,1
.skill riding,75,1
step << Undead !Warlock
.cast 55884 >>使用|T132264:0|t[棕色骷髅马]学习它
.use 13333
.itemcount 13333,1
.skill riding,75,1
step << Undead !Warlock
.cast 55884 >>使用|T132264:0|t[黑色骷髅马]学习
.use 46308
.itemcount 46308,1
.skill riding,75,1
step << Undead !Warlock
>>|cFFFCDC00按“Shift+P”打开安装选项卡|r
>>|cFFFCDC00将|r |T132264:0|t[红色骷髅马]|cFFFCDC0拖到动作栏上|r
.cast 17462 >>骑上您的|T132264:0|t[红色骷髅马]
.train 17472,3
.zoneskip Undercity
.zoneskip Durotar
.zoneskip Orgrimmar
step << Undead !Warlock
>>|cFFFCDC00按“Shift+P”打开安装选项卡|r
>>|cFFFCDC00将|r |T132264:0|t[蓝色骷髅马]|cFFFCDC0拖到动作栏|r
.cast 17463 >>骑上您的|T132264:0|t[蓝色骷髅马]
.train 17463,3
.zoneskip Undercity
.zoneskip Durotar
.zoneskip Orgrimmar
step << Undead !Warlock
>>|cFFFCDC00按“Shift+P”打开安装选项卡|r
>>|cFFFCDC00将|r |T132264:0|t[棕色骨骼马]|cFFFCDC0拖到动作栏|r
.cast 17464 >>骑上您的|T132264:0|t[棕色骷髅马]
.train 17464,3
.zoneskip Undercity
.zoneskip Durotar
.zoneskip Orgrimmar
step << Undead !Warlock wotlk
>>|cFFFCDC00按“Shift+P”打开安装选项卡|r
>>|cFFFCDC00将|r |T132264:0|t[黑色骷髅马]|cFFFCDC0拖到动作栏|r
.cast 64977 >>骑上您的|T132264:0|t[黑色骷髅马]
.train 64977,3
.zoneskip Undercity
.zoneskip Durotar
.zoneskip Orgrimmar
step << Undead
#completewith next
.hs >>前往: 奥格瑞玛
.cooldown item,6948,>0
.zoneskip Orgrimmar
step << Undead Mage
#completewith Dizzywig
.cast 3567 >>演员阵容|T135759:0|t[电传：Orgrimar]
.zoneskip Orgrimmar
step << Troll
#completewith next
.goto Orgrimmar,52.26,88.65,30,0
.goto Orgrimmar,49.42,90.90,30,0
.goto Orgrimmar,48.50,95.12
.zone Durotar >>前往: |cFFDB2EEF杜隆塔尔|r
.money <4.5 << wotlk
.money <42.25 << tbc
.zoneskip Orgrimmar,1
.skill riding,75,1
step << Troll
#completewith next
.goto Durotar,49.41,20.97,35,0
.goto Durotar,50.21,26.30,35,0
.goto Durotar,49.93,28.80,35,0
.goto Durotar,52.26,34.68,35,0
.goto Durotar,55.28,75.48,50 >>朝|cFF00FF25Xar'Ti|r方向行驶
.money <4.5 << wotlk
.money <42.25 << tbc
.skill riding,75,1
step << Troll
.goto Durotar,55.28,75.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Xar'Ti|r
.skill riding,75 >>火车|T136103:0|t（学徒骑马）
.target Xar'Ti
.money <4.5 << wotlk
.money <42.25 << tbc
.skill riding,75,1
step << Troll
.goto Durotar,55.23,75.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zjolnir|r
+|cFF0E8312从他那里买任何你喜欢的东西
.target Zjolnir
.itemcount 8588,<1 
.itemcount 8591,<1 
.itemcount 8592,<1 
.money <0.9 << wotlk
.money <9.0000 << tbc
.skill riding,<75,1
step << Troll
.cast 55884 >>使用|T132253:0|t[翡翠猛禽的哨声]学习它
.use 8588
.itemcount 8588,1
.skill riding,75,1
step << Troll
.cast 55884 >>使用|T132253:0|t[绿松石猛禽的哨声]学习它
.use 8591
.itemcount 8591,1
.skill riding,75,1
step << Troll
.cast 55884 >>使用|T132253:0|t[紫罗兰猛禽的哨声]学习它
.use 8592
.itemcount 8592,1
.skill riding,75,1
step << Troll
#completewith Bragok2
>>|cFFFCDC00按“Shift+P”打开安装选项卡|r
>>|cFFFCDC00将|r|T132253:0|t[翡翠猛禽]|cFFFCDC0拖到动作栏|r
.cast 8395 >>安装您的|T132253:0|t[翡翠猛禽]
.train 8395,3
.zoneskip Orgrimmar
step << Troll
#completewith Bragok2
>>|cFFFCDC00按“Shift+P”打开安装选项卡|r
>>|cFFFCDC00将|r|T132253:0|t[绿松石猛禽]|cFFFCDC0拖到动作栏|r
.cast 10796 >>安装您的|T132253:0|t[绿松石猛禽]
.train 10796,3
.zoneskip Orgrimmar
step << Troll
#completewith Bragok2
>>|cFFFCDC00按“Shift+P”打开安装选项卡|r
>>|cFFFCDC00将|r|T132253:0|t[Violet Raptor]|cFFFCDC0拖到动作栏|r
.cast 10799 >>安装您的|T132253:0|t[紫罗兰猛禽]
.train 10799,3
.zoneskip Orgrimmar
step << Troll
#completewith Bragok2
.goto Durotar,46.94,69.10,100,0
.goto Durotar,46.02,69.32,40,0
.goto Durotar,41.38,73.54,15,0
.goto Durotar,66.29,35.94,30,0
.goto The Barrens,63.08,37.16,30 >>前往|cFF00FF25Bragok|r
.zoneskip Durotar,1
step
#completewith next
.goto Orgrimmar,47.41,65.07,10,0
.goto Orgrimmar,46.59,64.54,6,0
.goto Orgrimmar,46.75,63.84,6,0
.goto Orgrimmar,46.59,64.54,6,0
.goto Orgrimmar,46.75,63.84,6,0
.goto Orgrimmar,46.59,64.54,6,0
.goto Orgrimmar,46.75,63.84,6,0
.goto Orgrimmar,45.12,63.88,10 >>沿着塔向|cFF00FF25Doras|r行进
step
#completewith Dizzywig
.goto Orgrimmar,45.12,63.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Doras|r
.fly Ratchet >>飞到棘轮
.target Doras
.zoneskip Orgrimmar,1
step << Warlock
#xprate >1.6999
.goto The Barrens,62.63,35.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Strahad|r
.turnin 2996 >>交任务: |cFF00FF25寻找斯坦哈德|r
.accept 1801 >>接任务: |cFFFCDC00阴谋之书|r
.target Strahad Farsan
step << Warlock
.goto The Barrens,62.44,35.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Babagaya|r
.train 6213 >>训练你的职业技能
.target Babagaya Shadowcleft
.xp <32,1
.xp >34,1
step << Warlock
.goto The Barrens,62.44,35.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Babagaya|r
.train 7648 >>训练你的职业技能
.target Babagaya Shadowcleft
.xp <34,1
step
.goto The Barrens,62.78,36.43,15,0
.goto The Barrens,62.68,36.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gazlowe|r
.turnin 1178 >>交任务: |cFF00FF25地精赞助商|r
.accept 1180 >>接任务: |cFFFCDC00地精赞助商|r
.target Gazlowe
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zikkel|r
.goto The Barrens,62.68,37.39,10 >>如果需要，将任何项目存入银行
.target Zikkel
step << Shaman
#xprate >1.6999
.goto The Barrens,65.83,43.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Islen|r
.turnin 220 >>交任务: |cFF00FF25水之召唤|r
.accept 63 >>接任务: |cFFFCDC00水之召唤|r
.target Islen Waterseer
step << Shaman
#xprate <1.7
.goto The Barrens,65.83,43.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Islen|r
.turnin 96 >>交任务: |cFF00FF25水之召唤|r
.target Islen Waterseer
step << Warrior
.goto The Barrens,65.83,43.77,50,0
.goto The Barrens,68.61,49.16,30 >>前往|cFF00FF25Klannoc|r
>>|cFFFCDC00忽略疲劳杆|r
step << Warrior
.goto The Barrens,68.61,49.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Klannoc|r
.turnin 1718 >>交任务: |cFF00FF25岛民|r
.accept 1719 >>接任务: |cFFFCDC00格斗考验|r
.target Klannoc Maclead
step << Warrior
#completewith next
.goto The Barrens,68.61,48.72
>>踏上格栅开始活动
.complete 1719,2 
.timer 8,The Affray RP
step << Warrior
.goto The Barrens,68.61,48.72
>>|cFFFCDC00等待RP|r
>>逐一杀死|cFFFF5722事件挑战者|r
>>杀死所有|cFFFF5722事件挑战者|r后杀死|cFFFF5 722大意志|r
>>|cFFFCDC00您可以在杀死所有|r|cFFFF5722事件挑战者|r后进食
.complete 1719,1 
.mob Affray Challenger
.mob Big Will
step << Warrior
.goto The Barrens,68.61,49.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Klannoc|r
.turnin 1719 >>交任务: |cFF00FF25格斗考验|r

.target Klannoc Maclead
step
#label Dizzywig
.goto The Barrens,63.01,38.16,20 << Shaman/Warrior
.goto The Barrens,63.35,38.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Dizzywig|r
.turnin 1111 >>交任务: |cFF00FF25码头管理员迪兹维格|r
.accept 1112 >>接任务: |cFFFCDC00给克拉维尔的零件|r
.target Wharfmaster Dizzywig
step
.goto The Barrens,63.83,38.66,20,0
.goto The Barrens,63.83,38.66,-1
.goto The Barrens,66.31,39.27,-1
.zone Stranglethorn Vale >>前往: |cFFDB2EEF荆棘谷|r
]])
RXPGuides.RegisterGuide([[
#version 18
#wotlk
#tbc
#group RestedXP WLK的准备
#name !如何使用本指南
#hidewindow
step
#sticky
+欢迎使用RXP 70-71准备指南！
+从“收藏物品”和“启动准备指南”章节开始，因为它们将为您在启动时提交的所有任务做好准备。完整地完成它们，把它说要交的所有任务交上来。这些是您在开放世界中留下的任务线，而不是您保存在任务日志中的任务！
+接下来，做25个任务日志指南，这些是你在任务日志中留下的任务。建议您完成大约24个任务，而不是全部25个任务，以确保在发布日有足够的空间来完成准备好的任务。在上一步之前不要执行此指南，否则您需要回溯！
+然后查看“当日转弯速度助手”以加快路线转弯速度
+最后，您可以在发布日使用《入住指南》！
+目前，《入住指南》尚未发布，以防止意外使用，请密切关注我们社区的不和谐，以跟上时代的步伐
step << skip
+完成指南后，强烈建议您将角色复制到PTR，并在PTR上对《转入指南》进行测试，以便更好地了解路线！
]])
RXPGuides.RegisterGuide([[
#version 18
#wotlk
#tbc
#group RestedXP WLK的准备
#name 可收集项目
step
#completewith questdrops
#sticky
+指南的这一章是从开始任务的怪物身上掉落的所有物品。强烈建议您遵循它完成任务，即使这意味着要为精英任务找到一个团队。
step
#sticky
.reputation 1015,friendly >>与荷兰之翼友好相处。
step
.isQuestAvailable 10804
.goto Shadowmoon Valley,59.4,58.6
>>这个任务线会让你和荷兰之翼很友好，这会给你很多潜在的经验。
* The quest giver can be off fighting Rocknails or even die to them, you may need to wait for him to respawn.
.accept 10804 >>接任务: |cFFFCDC00友善|r
step
.isOnQuest 10804
.goto Shadowmoon Valley,62.4,58.6
.use 31372 >>杀死并掠夺该地区的Rocknail Flayers以获取他们的尸体。然后把它们的尸体放在地上喂给荷兰龙。
*Make sure to travel a bit when laying the meat, as the same drakes won't eat twice in a row
.complete 10804,1 
step
.isOnQuest 10804
.goto Shadowmoon Valley,59.4,58.6
>>任务给予者可能正在与岩石钉子战斗，甚至会被他们杀死，你可能需要等待他重生。
.turnin 10804 >>交任务: |cFF00FF25友善|r
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,59.4,58.6
.accept 10811 >>接任务: |cFFFCDC00寻找奈尔萨拉库|r
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,61.8,60.0,80,0
.goto Shadowmoon Valley,66.2,60.4,80,0
.goto Shadowmoon Valley,61.8,60.0
>>她是一条幽灵般的巨龙，在荷兰飞翔，可能需要四处寻找她。
.unitscan Neltharaku
.turnin 10811 >>交任务: |cFF00FF25寻找奈尔萨拉库|r
.accept 10814 >>接任务: |cFFFCDC00奈尔萨拉库的故事|r
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,61.8,60.0
.skipgossip
>>与Neltharaku交谈
.turnin 10814 >>交任务: |cFF00FF25奈尔萨拉库的故事|r
.accept 10836 >>接任务: |cFFFCDC00攻击龙喉要塞|r
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,66.0,60.0
>>杀死该地区所有的龙嘴兽，除了人以外，其他人都会加入任务
.complete 10836,1 
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,61.8,60.0
>>找到并杀死渗透者Hameya。他在这个地区闲逛。抢走他的钥匙。
.unitscan Neltharaku
.turnin 10836 >>交任务: |cFF00FF25攻击龙喉要塞|r
.accept 10837 >>接任务: |cFFFCDC00前往灵翼浮岛！|r
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,66.0,80.0,60,0
.goto Shadowmoon Valley,66.3,82.3,30,0
.goto Shadowmoon Valley,67.3,81.7,30,0
.goto Shadowmoon Valley,68.3,79.8,30,0
.goto Shadowmoon Valley,71.7,83.1,30,0
.goto Shadowmoon Valley,76.7,83.3,60,0
.goto Shadowmoon Valley,66.0,80.0
>>掠夺该地区的荷兰水晶。“寻找矿物”可以追踪它们，尽管它们看起来像植物。
.complete 10837,1 
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,61.8,60.0
.unitscan Neltharaku
>>找到尼特哈拉库在尼日翼原野上空飞行
.turnin 10837 >>交任务: |cFF00FF25前往灵翼浮岛！|r
.accept 10854 >>接任务: |cFFFCDC00奈尔萨拉库之力|r
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,71.0,64.0 
.use 31652 >>在被奴役的龙兽身上使用水晶。不要站得太近，否则他们会攻击你而不是兽人。
*The drakes are very weak and will charge nearby orcs after freeing them, be quick to help them in combat or they will die.
.complete 10854,1 
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,61.8,60.0
.unitscan Neltharaku
>>找到尼特哈拉库在尼日翼原野上空飞行
.turnin 10854 >>交任务: |cFF00FF25奈尔萨拉库之力|r
.accept 10858 >>接任务: |cFFFCDC00卡瑞纳库|r
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,69.8,61.4
>>在要塞的二楼找到Karynaku
.unitscan Karynaku
.turnin 10858 >>交任务: |cFF00FF25卡瑞纳库|r
.accept 10872 >>接任务: |cFFFCDC00疲惫的祖鲁希德|r
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,71.0,62.2
>>这是一个精英任务，你可能需要帮助。杀死祖鲁希德，抢夺他的钥匙。
.complete 10872,2
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,69.8,61.4
.use 31664 >>用Karynaku锁链上的钥匙来释放她。
.complete 10872,1
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,69.8,61.4
.turnin 10872 >>交任务: |cFF00FF25疲惫的祖鲁希德|r
.accept 10871 >>接任务: |cFFFCDC00灵翼之盟|r
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,59.4,58.6
>>任务给予者可能正在与岩石钉子战斗，甚至会被他们杀死，你可能需要等待他重生。
.turnin 10871 >>交任务: |cFF00FF25灵翼之盟|r
.accept 11012 >>接任务: |cFFFCDC00灵翼血誓|r
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,59.4,58.6
.turnin 11012 >>交任务: |cFF00FF25灵翼血誓|r
.accept 11013 >>接任务: |cFFFCDC00为伊利达雷效力|r
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,66.2,85.6
.turnin 11013 >>交任务: |cFF00FF25为伊利达雷效力|r
.accept 11014 >>接任务: |cFFFCDC00会见工头|r
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,66.0,86.4
.turnin 11014 >>交任务: |cFF00FF25会见工头|r
step
.isQuestAvailable 11041
.goto Shadowmoon Valley,73.4,86.0
>>杀死贪婪的阿沃尔并掠夺他。他是精英，你可能需要一个团队。
* Note, sometimes only one person per kill can loot the item, you may need to kill him multiple times.
.unitscan Arvoar the Rapacious
.collect 32621,1,11041,1
step
.isQuestAvailable 11041
.goto Shadowmoon Valley,73.4,86.0
.use 32621 >>使用包中的部分消化手接受任务
.accept 11041 >>接任务: |cFFFCDC00未完的工作......|r
step
.isOnQuest 11041
.goto Shadowmoon Valley,70.4,84.6
>>杀死该地区的Overmine Flayers和Den Mother Barash
.unitscan Barash the Den Mother
.complete 11041,1
.complete 11041,2
step
.isOnQuest 11041
.goto Shadowmoon Valley,66.2,85.6
.turnin 11041 >>交任务: |cFF00FF25未完的工作......|r
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,66.0,86.4
.accept 11019 >>接任务: |cFFFCDC00你的伙伴|r
.turnin 11019 >>交任务: |cFF00FF25你的伙伴|r
step
.goto Shadowmoon Valley,66.0,86.4
.reputation 1015,friendly >>通过做日报与荷兰派保持友好关系。不要提交任何一次任务，如羽翼蛋或上升，监督！
.accept 11020 >>接任务: |cFFFCDC00缓慢的死亡|r
.accept 11015 >>接任务: |cFFFCDC00灵翼水晶|r
.accept 11035 >>接任务: |cFFFCDC00危险的天空|r
>>这三个任务需要采集职业，每天只能完成一个。
.accept 11018 >>接任务: |cFFFCDC00虚空矿石|r
.accept 11017 >>接任务: |cFFFCDC00灵尘花粉|r
.accept 11016 >>接任务: |cFFFCDC00虚空矿洞剥石者的外皮|r
step
.goto Shadowmoon Valley,63.0,87.8
>>从矿井中德雷纳的黑血中收集25个污泥覆盖物
*Note: You can copy your character onto the PTR, turn in "Rise, Overseer!" and "The Netherwing Mines" on the PTR then start opening them until you find one that has Murkblood Escape Plans. You can delete the rest, as that same one will have it on live servers.
.collect 32724,25,11081,1
step
.goto Shadowmoon Valley,53.0,62.4,60,0
.goto Shadowmoon Valley,52.7,68.6,60,0
.goto Shadowmoon Valley,51.6,63.8,60,0
.goto Shadowmoon Valley,52.3,59.1,60,0
.goto Shadowmoon Valley,53.0,62.4
.unitscan Val'zareq the Conqueror
>>去杀了征服者瓦尔扎雷。这是一个精英任务，你可能需要分组。
.collect 31345,1,10793,1 >>获取Vel'zareq杂志
step << Horde
.goto Shadowmoon Valley,67.6,36.6
>>杀死Smith Gorlunk并掠夺他
.unitscan Smith Gorlunk
.collect 31241,1,10755,1
step << Alliance
>>杀死Smith Gorlunk并掠夺他
.unitscan Smith Gorlunk
.goto Shadowmoon Valley,67.6,36.6
.collect 31239,1,10754,1
step
.requires quest,11370
.goto Shattrath City,75.0,36.4
.daily 11369,11384,11382,11363,11362,11375,11354,11386,11373,11378,11374,11372,11368,11388,11370 >>Accept the heroic dungeon daily
step
.requires quest,11387
.goto Shattrath City,75.4,37.6
.daily 11389,11371,11376,11383,11364,11385,11387 >>Accept the dungeon daily
step
.goto Terokkar Forest,69.6,78.6
>>杀死并掠夺塔龙牧师伊沙尔。如果你还没有完成暗影世界的任务，你需要找到一个已经完成任务的人，和他们一起组队，如果没有任务中的长生不老药，他是看不见的。
>>他们可以为你杀死塔龙牧师，你可以为《华尔街日报》掠夺他。不要完成阴影世界来完成这个任务，阴影世界在发布日更有经验。
>>如果找不到人，请跳过此步骤。
.unitscan Talonpriest Ishaal
.collect 32523,1,11021,1
step
.goto Terokkar Forest,41.2,56.8
>>杀死并掠夺该地区的阴谋集团敌人，直到你获得任务物品
.collect 31707,1,10880,1
step
.goto Hellfire Peninsula,25.6,76.6
.unitscan Avruu
>>杀死并掠夺Avruu
.collect 23580,1,9418,1
step << Horde
.goto Hellfire Peninsula,65.6,30.0
>>杀死并掠夺剃须刀
.collect 29590,1,10393,1
step << Alliance
.goto Hellfire Peninsula,53.1,26.7
>>杀戮和掠夺战争使者阿里克斯·阿马尔
.collect 29588,1,10395,1
step
.goto Hellfire Peninsula,48.6,39.6
>>杀死并掠夺掠夺地壳爆破器，直到你获得任务物品
* You will need to run over the "Earthquakes" on the ground to spawn the enemies
.collect 23338,1,9373,1
step
.goto Hellfire Peninsula,17.8,40.6
>>杀死并掠夺愤怒的巨像
.collect 29476,1,10134,1
step << Alliance
.goto Zangarmarsh,80.2,41.0
>>杀死并掠夺枯萎巨人，直到你获得任务物品。
* Save the Bog Lord Tendrils if you need Sporeggar rep
.collect 24483,1,9827,1
step << Horde
.goto Zangarmarsh,80.2,41.0
>>杀死并掠夺枯萎巨人，直到你获得任务物品。
* Save the Bog Lord Tendrils if you need Sporeggar rep
.collect 24484,1,9828,1
step << skip
.goto Zangarmarsh,62.2,40.6
>>杀死并掠夺该地区的蒸汽泵监督人员和其他管理人员，直到你得到排水示意图
.collect 24330,1,9731,1
step
.goto Nagrand,73.6,59.2,40,0
.goto Nagrand,69.8,52.8,40,0
.goto Nagrand,72.8,44.6,40,0
.goto Nagrand,65.8,38.2,0
>>杀死并掠夺该地区的闪电元素，尘啸者拥有最好的下降率。
.collect 24504,1,9861,1
step << Alliance
.goto Nagrand,48.6,34.4,40,0
.goto Nagrand,43.0,31.6,40,0
.goto Nagrand,41.0,27.0,40,0
.goto Nagrand,35.8,26.0,40,0
.goto Nagrand,34.0,20.4,0
>>杀死并掠夺黑血侵略者，他们四处巡逻，所以你可能需要多圈。
.collect 24559,1,9871,1
.unitscan Murkblood Invader
step << Horde
.goto Nagrand,48.6,34.4,40,0
.goto Nagrand,43.0,31.6,40,0
.goto Nagrand,41.0,27.0,40,0
.goto Nagrand,35.8,26.0,40,0
.goto Nagrand,34.0,20.4,0
>>杀死并掠夺黑血侵略者，他们四处巡逻，所以你可能需要多圈。
.collect 24558,1,9872,1
.unitscan Murkblood Invader
step
.goto Zangarmarsh,32.9,59.6
>>杀死并掠夺“安古拉伯爵”
.collect 25459,1,9911,1
.unitscan "Count" Ungula
step
.goto Blade's Edge Mountains,75.8,23.6,40,0
.goto Blade's Edge Mountains,71.6,33.6,40,0
.goto Blade's Edge Mountains,70.6,44.8,0
>>杀死并掠夺一名邪恶的腐败者
.collect 31384,1,10810,1
.unitscan Fel Corrupter
step
.goto Blade's Edge Mountains,41.6,21.4
>>杀死并掠夺该地区的Grishna暴徒
.collect 31489,1,10825,1
step
.goto Netherstorm,59.8,86.8
>>杀死并掠夺科利安·弗罗斯特韦弗
.collect 29236,1,10307,1
.unitscan Cohlien Frostweaver
step
.goto Netherstorm,60.0,85.2
>>杀死并掠夺魔法师Luminrath
.collect 29235,1,10306,1
.unitscan Conjurer Luminrath
step
.goto Netherstorm,60.6,87.6
>>杀戮和掠夺战斗法师Dathric
.collect 29233,1,10182,1
.unitscan Battle-Mage Dathric
step
.goto Netherstorm,59.0,88.2
>>杀死并掠夺Abjurit Belmara
.collect 29234,1,10305,1
.unitscan Abjurist Belmara
step
.goto Netherstorm,55.0,43.4
>>杀死凝固的虚空恐怖并掠夺他。这是精英，你可能需要分组。这个暴徒有30分钟的重生时间。
.collect 29738,1,10413,1
.unitscan Congealed Void Horror
step << Horde
>>杀死地狱火堡垒的最后一个老板。
.collect 23892,1,9588,1
step << Alliance
>>杀死地狱火堡垒的最后一个老板。
.collect 23890,1,9587,1
step
>>杀死蒸汽堡的暴徒，直到瓦什女士的命令下达为止
.collect 24367,1,9764,1 >>从Vashj女士那里获得订单
step
#sticky
#label questdrops
#completewith BOEitems
+这些任务是从奇袭中获得的，如果可以的话，请将其获取，否则请跳过本章
step << Alliance
>>从马瑟里登的巢穴里找到马瑟里顿头
.collect 32385,1,11002,1
step << Horde
>>从马瑟里登的巢穴里找到马瑟里顿头
.collect 32386,1,11003,1
step
>>从风暴要塞获得凯尔萨斯和苍翠球体。
.collect 32405,1,11007,1
step
>>从祖勒曼那里获得军阀之血。这个任务需要一个召唤到幽灵之地的召唤是一个有效的回合，如果你在发射日无法进入，请跳过。
.collect 33102,1,11178,1
step
#sticky
#completewith BOPitemslist
#label BOEitems
+本章是所有可以在拍卖行购买的物品，将是免费送货任务。购买时请核对。
step << Horde
.collect 31670,3,10860,1
.collect 31671,3,10860,1
step
.collect 24368,1,9765,1 
step

.collect 23445,4,10763,1
.collect 22445,2,10763,1
.collect 22574,4,10763,1
step
.collect 24449,6,9806,1 
step
.collect 24246,5,9715,1 
step
.reputation 970,friendly,0,1
.collect 24245,10,9808,1 
step
#aldor
.collect 25744,8,10024,1 
step
#aldor
.collect 29740,1,10420,1 
step
#aldor
.collect 30809,10,10653,1 
step << Alliance
.goto Blasted Lands,63.5,17.0
>>前往尼德加德禁猎区(Blasted lands)。到马厩里去买一杯Nethergard Bitter
.collect 23848,1,9563,1 
step
#aldor
.collect 29425,10,10325,1 
step
#scryer
.collect 30810,10,10656,1 
step
#scryer
.collect 29426,10,10412,1 
step
#scryer
.collect 29739,1,10416,1 
step
.collect 25719,30,10917,1 
step
.collect 32388,6,11004,1 
step
>>这项任务要求您与联盟保持中立，我们将在稍后的指南中将我们的代表减少为中立。如果您不想这样做，请跳过此步骤。
.collect 25463,27,9914,1 
step
>>这项任务要求您与联盟保持中立，我们将在稍后的指南中将我们的代表减少为中立。如果您不想这样做，请跳过此步骤。
.collect 25416,10,9882,1 
step
.collect 32601,1,11061,1 
step
.collect 32598,1,11030,1 
step
.collect 32464,40
.skill mining,<350,1 >>如果你有两种采集职业，那么你每天只能提交一次荷兰之翼采集，请跳过下一步购买
step
.collect 32468,40
.skill herbalism,<350,1 >>如果你有两种采集职业，那么你每天只能提交一次荷兰之翼采集，请跳过下一步购买
step
.collect 32470,35
.skill skinning,<350,1
step
#completewith BOEitems
.collect 24401,10,9802,1 
step
#sticky
#label BOPitemslist
#completewith BOPitems
+这些道具是BOP道具，需要在你的角色身上种植，以获得自由周转。
step

>>为战珠杀死纳格兰的食人魔
.collect 25433,20,9893,1 
step << Alliance
.goto Nagrand,75.0,65.0
>>在纳格兰碾碎任何暴徒，获得奥舒贡水晶粉。请注意，它是唯一的，最多100个，包括您银行中的任何一个
.collect 26043,20,10076,1
step << Horde
#label BOPitems
.goto Nagrand,75.0,65.0
>>在你选择的纳格兰地区研磨任何暴徒，获得奥舒贡水晶粉。请注意，它是唯一的，最多100个，包括您银行中的任何一个。
.collect 26042,20,10074,1
step
.goto Blade's Edge Mountains,30.2,75.2

>>杀死奥格里拉周围的暴徒
.collect 32569,5 
step
.goto Netherstorm,30.6,75.2
>>在暴风雨中杀死并掠夺扎克西斯袭击者和跟踪者
.collect 29209,10,10262,1 
step
.goto Shadowmoon Valley,69.0,85.0
>>杀死该地区的暴徒，并将其掠夺为荷兰之翼水晶
.collect 32427,30,11015,1 
step
.goto Shadowmoon Valley,69.0,85.0
.reputation 1015,friendly,<0,1
>>可以通过在该地区放牧、采矿、杀死怪物或在世界上找到怪物来找到。它们看起来像巨大的发光柱，类似于虚空风暴中的天岭上的蛋。
.collect 32506,1,11049,1 
step << Alliance
.goto Blade's Edge Mountains,46.8,78.6,30,0
.goto Blade's Edge Mountains,43.2,80.4
>>从地上的酿酒师或桶中收集11瓶布鲁特班血腥酒。
.collect 29443,11,10511,1
]])
RXPGuides.RegisterGuide([[
#version 18
#wotlk
#tbc
#group RestedXP WLK的准备
#name 25 任务日志指南
step
#sticky
+本指南将在您的任务日志中为您提供25个任务以供启动。在准备好所有其他向导后，准备最后10个任务。
+ Some quests may seem out of order, it was impossible to make a 100% effecient route with everyone having different quests. Sorry if you have to double back at all!
step
.requires quest,10667
>>去拍卖行买这些东西
.collect 23784,1,10664,1
.collect 23793,4,10664,1
step
.requires quest,9837
.goto Shattrath City,54.6,44.2
.accept 9836 >>接任务: |cFFFCDC00麦迪文的触摸|r

step
.requires quest,10297
.goto Tanaris,66.0,49.6
>>当你接受任务时，确保你站着不动，下车，以便飞下时间之穴。如果你没有成功，放弃并重新接受任务。
.skipgossip
.accept 10279 >>接任务: |cFFFCDC00主宰之巢|r
step
.requires quest,10297
.goto Tanaris,58.4,54.2
.turnin 10279 >>交任务: |cFF00FF25主宰之巢|r
.accept 10277 >>接任务: |cFFFCDC00时光之穴|r
step
.requires quest,10297
.goto Tanaris,58.4,54.2
.timer 540,Wait for the Custodian to show you around the Caverns of Time
>>只需在任务给予者处等待，您仍将获得积分。这个角色扮演需要9分钟，休息一下。
.complete 10277,1
step
.requires quest,10297
.goto Tanaris,58.4,54.2
.turnin 10277 >>交任务: |cFF00FF25时光之穴|r
step
.requires quest,10445
.goto Tanaris,59.6,54.2
.accept 10445 >>接任务: |cFFFCDC00永恒水瓶|r
step
.requires quest,10297
.goto Tanaris,58.4,54.2
.accept 10282 >>接任务: |cFFFCDC00往日的希尔斯布莱德|r
step
.requires quest,10297
>>去旧希尔斯布莱德丘陵地牢。
.turnin 10282 >>交任务: |cFF00FF25往日的希尔斯布莱德|r
.accept 10283 >>接任务: |cFFFCDC00塔蕾莎的计谋|r
step
.requires quest,10297
+纵火焚烧建筑物。
complete 10283,1
step
.requires quest,10297
>>在地下室找到萨尔。
.turnin 10283 >>交任务: |cFF00FF25塔蕾莎的计谋|r
.accept 10284 >>接任务: |cFFFCDC00逃离敦霍尔德|r
step
.requires quest,10297
>>当地牢完成后，在任务中回合。
.turnin 10284 >>交任务: |cFF00FF25逃离敦霍尔德|r
.accept 10285 >>接任务: |cFFFCDC00返回安多尔姆身边|r
step
.requires quest,10297
.goto Tanaris,58.4,54.2
.turnin 10285 >>交任务: |cFF00FF25返回安多尔姆身边|r
.accept 10296 >>接任务: |cFFFCDC00黑色沼泽|r
step
.requires quest,10297
>>进入黑沼泽并完成任务。
.turnin 10296 >>交任务: |cFF00FF25黑色沼泽|r
.accept 10297 >>接任务: |cFFFCDC00开启黑暗之门|r
step
.requires quest,10297
>>完成黑暗之门的开启，但不要完成任务。
.complete 10297,1
step
.requires quest,9837
>>前往黑沼泽并完成地牢，然后返回任务
.turnin 9836 >>交任务: |cFF00FF25麦迪文的触摸|r
.accept 9837 >>接任务: |cFFFCDC00返回卡德加身边|r
step
.requires quest,10445
>>去杀死SSC的瓦什女士。
.complete 10445,1
step
.requires quest,10445
>>去暴风雨要塞杀了凯尔萨斯阳光行者。
.complete 10445,2

step
.requires quest,9831
.zone Deadwind Pass >>前往: |cFFDB2EEF逆风小径|r
step
.requires quest,9831
.goto Deadwind Pass,47.0,75.7
>>与大法师阿尔图鲁斯交谈，他将开启调谐链。
.accept 9824 >>接任务: |cFFFCDC00奥术扰动|r
.accept 9825 >>接任务: |cFFFCDC00幽灵的活动|r
step
#completewith wellr
.requires quest,9831
.goto Deadwind Pass,48.6,78.7
+沿着地下室的入口往下走，朝鬼魂走去
step
#sticky
#completewith PondR
.requires quest,9831
>>杀死幽灵。掠夺他们的鬼魂精华
.complete 9825,1 
step
#label wellr
.requires quest,9831
.goto Deadwind Pass,54.7,81.8,30,0
.goto Deadwind Pass,53.3,90.2
.use 24474 >>在地窖尽头的井里使用库存中的紫罗兰水晶
* This quest is underground in the cellar, make sure you're below ground when following the arrow.
.complete 9824,1 
step
#completewith next
.requires quest,9831
.goto Deadwind Pass,48.6,78.1
+沿着另一个地窖的入口走
step
#label PondR
.requires quest,9831
.goto Deadwind Pass,47.0,74.2,30,0
.goto Deadwind Pass,44.5,74.0,20,0
.goto Deadwind Pass,42.8,78.1
.use 24474 >>在水中使用库存中的紫罗兰水晶
.complete 9824,2 
step
.requires quest,9831
.goto Deadwind Pass,43.4,71.2,20,0
.goto Deadwind Pass,45.6,71.6,40,0
.goto Deadwind Pass,41.3,70.0,40,0
.goto Deadwind Pass,41.5,63.0,40,0
.goto Deadwind Pass,41.7,76.8,40,0
.goto Deadwind Pass,46.8,75.1,40,0
.goto Deadwind Pass,43.4,71.2,20,0
.goto Deadwind Pass,45.6,71.6,40,0
.goto Deadwind Pass,41.3,70.0,40,0
.goto Deadwind Pass,41.5,63.0,40,0
.goto Deadwind Pass,41.7,76.8,40,0
.goto Deadwind Pass,46.8,75.1,40,0
.goto Deadwind Pass,43.4,71.2,20,0
.goto Deadwind Pass,45.6,71.6,40,0
.goto Deadwind Pass,41.3,70.0,40,0
.goto Deadwind Pass,41.5,63.0,40,0
.goto Deadwind Pass,41.7,76.8,40,0
.goto Deadwind Pass,46.8,75.1,40,0
>>完成对鬼魂的掠夺，获取精华。如果你愿意的话，把你的队伍分成几个小组，回到另一个地窖去产卵
.complete 9825,1 
step
.requires quest,9831
.goto Deadwind Pass,47.0,75.6
>>离开地窖
.turnin 9825 >>交任务: |cFF00FF25幽灵的活动|r
.turnin 9824 >>交任务: |cFF00FF25奥术扰动|r
.accept 9826 >>接任务: |cFFFCDC00联络达拉然|r
step << Alliance
#completewith next
.requires quest,9831
>>骑马返回Darkhire << !Mage
>>创建通往铁炉堡的门户 << Mage
.goto Duskwood,77.5,44.3
.fly Southshore >>飞往南岸
step << Horde
#completewith next
.requires quest,9831
>>骑马返回斯托纳德 << !Mage
>>创建通往幽暗城的门户 << Mage
.goto Swamp of Sorrows,46.0,54.7
.fly Tarren Mill >>飞往塔伦磨坊
step
.requires quest,9831
>>骑马前往达拉然郊外，与大法师塞德里克交谈。
.goto Alterac Mountains,15.6,54.6
.turnin 9826 >>交任务: |cFF00FF25联络达拉然|r
.accept 9829 >>接任务: |cFFFCDC00卡德加|r
step
.zone Shattrath City >>前往: |cFFDB2EEF沙塔斯城|r
.goto Shattrath City,54.7,44.4
step
.requires quest,9831
.goto Shattrath City,54.7,44.4
>>乘车前往市中心。
.turnin 9829 >>交任务: |cFF00FF25卡德加|r
.accept 9831 >>接任务: |cFFFCDC00卡拉赞的钥匙|r
step
#aldor
.requires quest,11492
.goto Shattrath City,30.6,34.4
.accept 11481 >>接任务: |cFFFCDC00太阳之井的危机|r
step
#scryer
.requires quest,11492
.goto Shattrath City,54.4,80.8
.accept 11482 >>接任务: |cFFFCDC00使命的召唤|r
step << skip
.requires quest,11000
.goto Shattrath City,56.4,49.0
.accept 10984 >>接任务: |cFFFCDC00援助食人魔|r
step << skip
.requires quest,11000
.goto Shattrath City,65.2,68.0
.turnin 10984 >>交任务: |cFF00FF25援助食人魔|r
.accept 10983 >>接任务: |cFFFCDC00枯瘦的莫戈多格|r
step
.requires quest,11000
.goto Shattrath City,65.2,68.0
.accept 10983 >>接任务: |cFFFCDC00枯瘦的莫戈多格|r
step
.requires quest,10095
.goto Shattrath City,50.4,45.4
.accept 10177 >>接任务: |cFFFCDC00奥金顿的麻烦|r
step
.requires quest,11514
.goto Shattrath City,49.2,42.6
.accept 11514 >>接任务: |cFFFCDC00维持传送门|r
step
.requires quest,11877
.goto Shattrath City,62.7,36.2
.accept 11877 >>接任务: |cFFFCDC00日怒攻击计划|r
step << Alliance
>>这个任务需要71才能完成，如果你没有准备足够的XP到71，请跳过这个任务。
.goto Shattrath City,67.2,34.0
.daily 11337,11336,11335,11338 >>Accept the PvP Daily
step << Horde
>>这个任务需要71才能完成，如果你没有准备足够的XP到71，请跳过这个任务。
.goto Shattrath City,67.0,56.6
.daily 11341,11340,11339,11342 >>Accept the PvP Daily
step
.requires quest,10667
>>去沙塔斯买一个恶魔守卫图腾。
.goto Shattrath City,64.6,70.6
.collect 30823,1,10664,1

step << Alliance
.requires quest,10667
.goto Shadowmoon Valley,23.6,34.4
.collect 30756,1,10621,1 >>杀死监督者Ripsaw
step << Horde
.requires quest,10667
.goto Shadowmoon Valley,23.6,34.4
.collect 30579,1,10623,1 >>杀死监督者Ripsaw
step << Alliance
.requires quest,10667
.goto Shadowmoon Valley,36.8,54.8
.use 30576
.turnin 10621 >>交任务: |cFF00FF25伊利达雷斩除碎片|r
.accept 10626 >>接任务: |cFFFCDC00夺取武器|r
step << Horde
.requires quest,10667
.use 30579
.goto Shadowmoon Valley,29.8,31.2
.turnin 10623 >>交任务: |cFF00FF25伊利达雷斩除碎片|r
.accept 10627 >>接任务: |cFFFCDC00夺取武器|r
step << Alliance
.requires quest,10667
.goto Shadowmoon Valley,24.0,33.8
>>杀死Makazradon
.unitscan Makazradon
.complete 10626,1
step << Alliance
.requires quest,10667
.goto Shadowmoon Valley,23.6,38.2
>>杀死Morgroron
.unitscan Morgroron
.complete 10626,2
step << Horde
.requires quest,10667
.goto Shadowmoon Valley,24.0,33.8
>>杀死Makazradon
.unitscan Makazradon
.complete 10627,1
step << Horde
.requires quest,10667
.goto Shadowmoon Valley,23.6,38.2
>>杀死Morgroron
.unitscan Morgroron
.complete 10627,2
step << Alliance
.requires quest,10667
.goto Shadowmoon Valley,36.8,54.8
.turnin 10626 >>交任务: |cFF00FF25夺取武器|r
.accept 10662 >>接任务: |cFFFCDC00隐居的铁匠|r
step << Horde
.requires quest,10667
.goto Shadowmoon Valley,29.8,31.2
.turnin 10627 >>交任务: |cFF00FF25夺取武器|r
.accept 10663 >>接任务: |cFFFCDC00隐居的铁匠|r
step
#aldor
.requires quest,10649
.goto Shadowmoon Valley,61.2,29.2
.accept 10587 >>接任务: |cFFFCDC00卡拉波训练场|r
step
#aldor
.requires quest,10649
.goto Shadowmoon Valley,70.4,49.0
>>杀死该地区的血精灵恶魔猎人，直到任务完成。
.complete 10587,1
step
#aldor
.requires quest,10649
.goto Shadowmoon Valley,61.2,29.2
.turnin 10587 >>交任务: |cFF00FF25卡拉波训练场|r
.accept 10637 >>接任务: |cFFFCDC00必要的混乱|r
step
#aldor
.requires quest,10649
.goto Shadowmoon Valley,69.0,51.0
.use 30811 >>将阿扎洛斯从驱逐他的术士手中解救出来。
.complete 10637,1
step
#aldor
.requires quest,10649
.goto Shadowmoon Valley,61.2,29.2
.turnin 10637 >>交任务: |cFF00FF25必要的混乱|r
.accept 10640 >>接任务: |cFFFCDC00奥图里斯|r
step
#aldor
.requires quest,10707
.goto Shadowmoon Valley,62.6,28.4
.accept 10568 >>接任务: |cFFFCDC00巴尔里石板|r
step
#aldor
.requires quest,10707
.goto Shadowmoon Valley,59.8,35.6
.complete 10568,1
step
#aldor
.requires quest,10707
.goto Shadowmoon Valley,62.6,28.4
.turnin 10568 >>交任务: |cFF00FF25巴尔里石板|r
.accept 10571 >>接任务: |cFFFCDC00长者奥洛努|r
step
#aldor
.requires quest,10707
.goto Shadowmoon Valley,57.2,32.6
.complete 10571,1
step
#aldor
.requires quest,10707
.goto Shadowmoon Valley,62.6,28.4
.turnin 10571 >>交任务: |cFF00FF25长者奥洛努|r
.accept 10574 >>接任务: |cFFFCDC00灰舌腐蚀者|r
step
#aldor
.requires quest,10707
.goto Shadowmoon Valley,49.8,23.0
.complete 10574,3
step
#aldor
.requires quest,10707
.goto Shadowmoon Valley,48.2,39.4
.complete 10574,4
step
#aldor
.requires quest,10707
.goto Shadowmoon Valley,51.0,52.4
.complete 10574,1
step
#aldor
.requires quest,10707
.goto Shadowmoon Valley,57.0,73.4
.complete 10574,2
step
#aldor
.requires quest,10707
.goto Shadowmoon Valley,62.6,28.4
.turnin 10574 >>交任务: |cFF00FF25灰舌腐蚀者|r
.accept 10575 >>接任务: |cFFFCDC00守望者的牢笼|r
step
#scryer
.requires quest,10707
.goto Shadowmoon Valley,56.2,59.6
.accept 10683 >>接任务: |cFFFCDC00巴尔里石板|r
step
#scryer
.requires quest,10707
.goto Shadowmoon Valley,59.8,35.6
.complete 10683,1
step
#scryer
.requires quest,10707
.goto Shadowmoon Valley,56.2,59.6
.turnin 10683 >>交任务: |cFF00FF25巴尔里石板|r
.accept 10684 >>接任务: |cFFFCDC00长者奥洛努|r
step
#scryer
.requires quest,10707
.goto Shadowmoon Valley,57.2,32.6
.complete 10684,1
step
#scryer
.requires quest,10707
.goto Shadowmoon Valley,56.2,59.6
.turnin 10684 >>交任务: |cFF00FF25长者奥洛努|r
.accept 10685 >>接任务: |cFFFCDC00灰舌腐蚀者|r
step
#scryer
.requires quest,10707
.goto Shadowmoon Valley,57.0,73.4
.complete 10685,2
step
#scryer
.requires quest,10707
.goto Shadowmoon Valley,51.0,52.4
.complete 10685,1
step
#scryer
.requires quest,10707
.goto Shadowmoon Valley,48.2,39.4
.complete 10685,4
step
#scryer
.requires quest,10707
.goto Shadowmoon Valley,49.8,23.0
.complete 10685,3
step
#scryer
.requires quest,10707
.goto Shadowmoon Valley,56.2,59.6
.turnin 10685 >>交任务: |cFF00FF25灰舌腐蚀者|r
.accept 10686 >>接任务: |cFFFCDC00守望者的牢笼|r
step
#aldor
.requires quest,10707
.goto Shadowmoon Valley,57.2,49.6
.turnin 10575 >>交任务: |cFF00FF25守望者的牢笼|r
step
#scryer
.requires quest,10707
.goto Shadowmoon Valley,57.2,49.6
.turnin 10686 >>交任务: |cFF00FF25守望者的牢笼|r
step
.requires quest,10707
.goto Shadowmoon Valley,57.2,49.6
.accept 10622 >>接任务: |cFFFCDC00忠诚的证明|r
step
.requires quest,10707
>>杀死赞德拉，他在守卫墙的顶端。
.goto Shadowmoon Valley,58.0,48.8
.complete 10622,1
step
.requires quest,10707
.goto Shadowmoon Valley,57.2,49.6
.turnin 10622 >>交任务: |cFF00FF25忠诚的证明|r
.accept 10628 >>接任务: |cFFFCDC00阿卡玛|r
step
.requires quest,10707
.goto Shadowmoon Valley,58.0,48.2
>>去和阿卡玛谈谈。他在楼下，潜到水下，在另一个隧道里上来。
.skipgossip
.turnin 10628 >>交任务: |cFF00FF25阿卡玛|r
.accept 10705 >>接任务: |cFFFCDC00先知乌达鲁|r
step
.requires quest,10707
>>进入Arcatraz并完成任务。
.turnin 10705 >>交任务: |cFF00FF25先知乌达鲁|r
.accept 10706 >>接任务: |cFFFCDC00神秘的征兆|r
step
.requires quest,10707
.goto Shadowmoon Valley,58.0,48.2
.turnin 10706 >>交任务: |cFF00FF25神秘的征兆|r
.accept 10707 >>接任务: |cFFFCDC00阿塔玛平台|r
step
.requires quest,10707
.goto Shadowmoon Valley,71.4,35.4
>>找一个小组，得到愤怒之心。这个任务不要交。
.complete 10707,1
step
#scryer
.requires quest,10649
.goto Shadowmoon Valley,55.8,58.2
.accept 10687 >>接任务: |cFFFCDC00卡拉波训练场|r
step
#scryer
.requires quest,10649
.goto Shadowmoon Valley,70.4,49.0
>>杀死血精灵直到任务完成。
.complete 10687,1
step
#scryer
.requires quest,10649
.goto Shadowmoon Valley,55.8,58.2
.turnin 10687 >>交任务: |cFF00FF25卡拉波训练场|r
.accept 10688 >>接任务: |cFFFCDC00必要的混乱|r
step
#scryer
.requires quest,10649
.goto Shadowmoon Valley,69.0,51.0
.use 30811 >>将阿扎洛斯从驱逐他的术士手中解救出来。
.complete 10688,1
step
#scryer
.requires quest,10649
.goto Shadowmoon Valley,55.8,58.2
.turnin 10688 >>交任务: |cFF00FF25必要的混乱|r
.accept 10689 >>接任务: |cFFFCDC00奥图里斯|r
step
#aldor
.requires quest,10649
.goto Nagrand,27.4,43.0
.turnin 10640 >>交任务: |cFF00FF25奥图里斯|r
step
#scryer
.requires quest,10649
.goto Nagrand,27.4,43.0
.turnin 10689 >>交任务: |cFF00FF25奥图里斯|r
step
.requires quest,10649
.goto Nagrand,27.4,43.0
.accept 10641 >>接任务: |cFFFCDC00对抗军团|r
.accept	10668 >>接任务: 对抗伊利丹
.accept 10669 >>接任务: |cFFFCDC00扫除余孽|r
step
.requires quest,10649
.goto Zangarmarsh,16.4,40.4
.use 30853 >>使用Imbued银矛召唤并杀死Xeleth
.complete 10669,1
step
.requires quest,10649
.goto Shadowmoon Valley,28.6,50.6
>>杀死Lothros
.complete 10668,1
step
#sticky
.requires quest,10649
#completewith next
.collect 30850,1,10641,1 >>杀死愤怒的女祭司
step
.goto Netherstorm,41.8,22.2
.requires quest,10649
.use 30850 >>使用鲜血召唤萨塔尔阿凡达并杀死她。
.complete 10641,1
step
.requires quest,10649
.goto Nagrand,27.4,43.0
.turnin 10641 >>交任务: |cFF00FF25对抗军团|r
.turnin	10668 >>交任务: 对抗伊利丹
.turnin 10669 >>交任务: |cFF00FF25扫除余孽|r
step
.requires quest,10649
.goto Nagrand,27.4,43.0
.skipgossip
.accept 10646 >>接任务: |cFFFCDC00伊利丹的学生|r
step
.requires quest,10649
.goto Nagrand,27.4,43.0
.skipgossip
>>听利特鲁斯的故事
.turnin 10646 >>交任务: |cFF00FF25伊利丹的学生|r
step
.requires quest,10649
.goto Nagrand,27.4,43.0
.accept 10649 >>接任务: |cFFFCDC00恶魔名册|r

step
.requires quest,10091
.goto Terokkar Forest,39.8,72.2
.accept 10178 >>接任务: |cFFFCDC00寻找间谍托古恩|r
step << Horde
.requires quest,11506
.goto Terokkar Forest,49.8,46.6
.accept 11506 >>接任务: |cFFFCDC00奥金顿的幽魂|r
step << Horde
.requires quest,11506
.goto Terokkar Forest,32.4,57.8,40,0
.goto Terokkar Forest,42.5,53.9,40,0
.goto Terokkar Forest,48.9,60.5,40,0
.goto Terokkar Forest,47.3,72.3,40,0
.goto Terokkar Forest,40.5,78.1,40,0
.complete 11506,1
step << Alliance
.requires quest,11505
.goto Terokkar Forest,55.8,53.8
.accept 11505 >>接任务: |cFFFCDC00奥金顿的幽魂|r
step << Alliance
.requires quest,11505
.goto Terokkar Forest,32.4,57.8,40,0
.goto Terokkar Forest,42.5,53.9,40,0
.goto Terokkar Forest,48.9,60.5,40,0
.goto Terokkar Forest,47.3,72.3,40,0
.goto Terokkar Forest,40.5,78.1,40,0
.complete 11505,1
step
.requires quest,10164
.goto Terokkar Forest,35.0,65.2
.accept 10164 >>接任务: |cFFFCDC00一切都会变好的|r
step
.requires quest,10667
.goto Terokkar Forest,77.6,38.6
.turnin 10663 >>交任务: |cFF00FF25隐居的铁匠|r << Horde
.turnin 10662 >>交任务: |cFF00FF25隐居的铁匠|r << Alliance
step
.requires quest,10667
.goto Terokkar Forest,77.6,38.6
.accept 10664 >>接任务: |cFFFCDC00其它的材料|r
step
.requires quest,10667
.goto Terokkar Forest,77.6,38.6
.turnin 10664 >>交任务: |cFF00FF25其它的材料|r
.accept 10665 >>接任务: |cFFFCDC00能源舰的热源|r
.accept 10666 >>接任务: |cFFFCDC00魔语辞典|r
step
.requires quest,10091
.goto Terokkar Forest,39.8,72.2
>>进入阴影迷宫，找到间谍托根。他在走廊尽头的第二个房间里。
.turnin 10178 >>交任务: |cFF00FF25寻找间谍托古恩|r
.accept 10091 >>接任务: |cFFFCDC00灵魂装置|r
step
>>去暗影迷宫干掉第三个老板，大师沃皮尔。然后掠夺他以完成任务。
.complete 10666,1
step
>>去做Mechanar并掠夺守门人铁手附近的粉色盒子来完成任务。
.complete 10665,1
step
.requires quest,10667
.goto Terokkar Forest,77.6,38.6
.turnin 10665 >>交任务: |cFF00FF25能源舰的热源|r
.turnin 10666 >>交任务: |cFF00FF25魔语辞典|r
.accept 10670 >>接任务: |cFFFCDC00大地之母的眼泪|r
.accept 10667 >>接任务: |cFFFCDC00地下的土壤|r
step
.requires quest,10095
.goto Terokkar Forest,40.0,72.2
>>前往环南侧的奥欣登门户室，它在锁着的门后面。
* You get the key from the last boss in Sethekk Halls if nobody else can open it for you.
.turnin 10177 >>交任务: |cFF00FF25奥金顿的麻烦|r
.accept 10094 >>接任务: |cFFFCDC00鲜血法典|r
step
.requires quest,10095
.goto Terokkar Forest,39.4,72.7
>>去做影子迷宫并完成任务。
.turnin 10094 >>交任务: |cFF00FF25鲜血法典|r
.accept 10095 >>接任务: |cFFFCDC00深入迷宫|r
step
.requires quest,9831
.goto Terokkar Forest,39.4,72.7
>>去暗影迷宫获得第一个关键片段。不要交任务。
.complete 9831,1
step
.requires quest,10091
.goto Terokkar Forest,39.4,72.7
>>完成暗影迷宫内的任务。不要交任务。
.complete 10091,1
step
.requires quest,10649
.goto Terokkar Forest,39.4,72.7
>>完成暗影迷宫并掠夺恶魔之书。不要交付任务。
.complete 10649,1
step
.requires quest,10667
>>去做阴影迷宫，从漩涡大师那里抢夺恶魔词典
.complete 10665,1
step
.requires quest,10095
>>杀死暗影迷宫内的穆尔。不要交任务。
.complete 10095,1
step
.requires quest,10098
.goto Terokkar Forest,44.0,65.0
.accept 10098 >>接任务: |cFFFCDC00泰罗克的传说|r
.accept 10097 >>接任务: |cFFFCDC00兄弟反目|r
step
.requires quest,10098
>>完成Sethekk Halls。不要发送任务。
.complete 10098,1
.complete 10098,2
.complete 10098,3
.complete 10097,1
.complete 10097,2
step
.requires quest,10165
.goto Terokkar Forest,39.4,58.6
.accept 10165 >>接任务: |cFFFCDC00扫除竞争者|r
step
.requires quest,10218
.goto Terokkar Forest,39.4,58.6
>>去地牢外接受任务。
.accept 10216 >>接任务: |cFFFCDC00安全第一|r
step
.requires quest,10218
>>进入法力墓穴完成任务
.complete 10216,1
.complete 10216,2
.complete 10216,3
.complete 10216,4
step
.requires quest,10218
>>在地牢内传送任务。
.turnin 10216 >>交任务: |cFF00FF25安全第一|r
step
.requires quest,10218
>>接受冷冻工程师Sha'heen的任务
.accept 10218 >>接任务: |cFFFCDC00别人的烂摊子|r
step
.requires quest,10218
>>完成地牢内的护送。不要交付任务。
.complete 10218,1
step
.requires quest,10165
>>在法力墓穴完成任务。不要交付任务。
.complete 10165,1
step
.requires quest,10164
>>去奥切奈地穴。不要交付任务。
.complete 10164,1

step << Alliance
.requires quest,9492
.goto Hellfire Peninsula,56.6,66.6
.accept 9492 >>接任务: |cFFFCDC00扭转战局|r
step << Horde
.requires quest,9495
.goto Hellfire Peninsula,55.0,36.0
.accept 9495 >>接任务: |cFFFCDC00酋长的意志|r
step << Alliance
.requires quest,9494
.goto Hellfire Peninsula,53.8,65.6
.accept 9494,1 >>Accept Fel Embers
step << Alliance
.requires quest,9493
.goto Hellfire Peninsula,56.8,62.6
.accept 9493 >>接任务: |cFFFCDC00邪部落的荣耀|r
step << Horde
.requires quest,9496
.goto Hellfire Peninsula,55.0,36.2
.accept 9496 >>接任务: |cFFFCDC00邪部落的荣耀|r
step
.requires quest,9494
.use 23735 >>去破碎的大厅杀死大术士尼瑟库斯。然后使用大术士在王座附近掉落的护身符。不要交付任务。
.complete 9494,1
step
.requires quest,10667
>>去《破碎的大厅》，杀死战使奥姆洛格。不要交任务。
.complete 10670,1
step << Alliance
.requires quest,9492
>>在破碎的大厅中杀死Warcheif Kargath的拳头。不要交任务。
.complete 9492,1
step << Horde
.requires quest,9495
>>在破碎的大厅中杀死Warcheif Kargath的拳头。不要交任务。
.complete 9495,1
step << Alliance
.requires quest,9493
>>进入破碎大厅并完成任务。不要交付任务。
.complete 9493,1
.complete 9493,2
.complete 9493,3
step << Horde
.requires quest,9496
>>进入破碎大厅并完成任务。不要交付任务。
.complete 9496,1
.complete 9496,2
.complete 9496,3

step
.requires quest,10257
.goto Netherstorm,31.4,66.2
.accept 10173 >>接任务: |cFFFCDC00大法师的法杖|r
step
.requires quest,10257
.goto Netherstorm,40.8,72.6
.use 29207
>>站在火盆旁边，用魔法粉召唤Ekkorash并杀死她。
.complete 10173,1
step
.requires quest,10257
.goto Netherstorm,31.4,66.2
.turnin 10173 >>交任务: |cFF00FF25大法师的法杖|r
.accept 10300 >>接任务: |cFFFCDC00修复法杖|r
step
.requires quest,10257
.goto Netherstorm,33.6,54.6
>>杀死并掠夺水晶的无身保护者和维护者。
.complete 10300,1
step
.requires quest,10257
.goto Netherstorm,31.4,66.2
.turnin 10300 >>交任务: |cFF00FF25修复法杖|r
.accept 10174 >>接任务: |cFFFCDC00紫罗兰之塔的诅咒|r
.use 28455 >>使用职员召唤任务上缴
.turnin 10174 >>交任务: |cFF00FF25紫罗兰之塔的诅咒|r
step
.requires quest,10257
.goto Netherstorm,51.8,80.4
.use 28455 >>使用大法师瓦尔哥特的杖接受任务
.accept 10188 >>接任务: |cFFFCDC00克拉苏斯的魔符|r
step
.requires quest,10257
.goto Netherstorm,51.8,80.4
>>找到并杀死法术绑定者玛丽亚娜，然后掠夺她以换取克拉苏斯魔咒
.unitscan Spellbinder Maryana
.complete 10188,1
step
.requires quest,10257
.goto Netherstorm,51.8,80.4
.use 28455 >>使用大法师瓦戈特的杖
.turnin 10188 >>交任务: |cFF00FF25克拉苏斯的魔符|r
.accept 10192 >>接任务: |cFFFCDC00克拉苏斯的魔法纲要|r
step
.requires quest,10257
.goto Netherstorm,58.6,89.2,-1
.goto Netherstorm,57.6,89.6,-1
.goto Netherstorm,58.8,88.0,-1
>>从一个房间的房子里收集简编章节。
.collect 28472,1,10192,1
.collect 28473,1,10192,1
.collect 28474,1,10192,1
step
.requires quest,10257
.goto Netherstorm,57.4,86.2
.use 28455 >>使用大法师瓦戈特的杖
.turnin 10192 >>交任务: |cFF00FF25克拉苏斯的魔法纲要|r
.accept 10301 >>接任务: |cFFFCDC00魔法纲要的防护|r
step
.requires quest,10257
.goto Netherstorm,56.4,79.0
>>找到并杀死魔法师玛拉泰尔，然后为奥库卢斯掠夺她
.unitscan Spellreaver Marathelle
.complete 10301,1
step
.requires quest,10257
.goto Netherstorm,57.0,63.4
.use 28455 >>使用大法师瓦戈特的杖
.turnin 10301 >>交任务: |cFF00FF25魔法纲要的防护|r
.accept 10209 >>接任务: |cFFFCDC00召唤者坎西恩的战利品|r
step
.requires quest,10257
.goto Netherstorm,57.0,63.4
>>找到并杀死召唤师坎丁，然后掠夺他以换取格拉希克斯之石
.unitscan Summoner Kanthin
.complete 10209,1
step
.requires quest,10257
.goto Netherstorm,58.2,86.4
.use 28455 >>使用大法师瓦戈特的杖
.turnin 10209 >>交任务: |cFF00FF25召唤者坎西恩的战利品|r
.accept 10176 >>接任务: |cFFFCDC00守护者阿尔凯洛斯|r
step
.requires quest,10257
.goto Netherstorm,58.0,86.0
>>进入Kirin'Var村中心的紫罗兰塔，击败Ar'kelos
.complete 10176,1
step
.requires quest,10257
.goto Netherstorm,58.2,86.4
.turnin 10176 >>交任务: |cFF00FF25守护者阿尔凯洛斯|r
.accept 10256 >>接任务: |cFFFCDC00钥匙的主人|r
step
.requires quest,10257
.goto Netherstorm,53.0,67.0
.unitscan Apex
>>找到并杀死Apex，然后掠夺他以获得焦点
.collect 28786,1,10256,1
step
.requires quest,10257
.goto Netherstorm,58.2,86.4
.use 28786 >>使用水晶焦点找到钥匙主人的身份
.complete 10256,1
step
.requires quest,10257
.goto Netherstorm,58.2,86.4
.turnin 10256 >>交任务: |cFF00FF25钥匙的主人|r
.accept 10257 >>接任务: |cFFFCDC00夺回钥石|r
step
.requires quest,10257
+进入Botanica，从指挥官Sarannis手中抢走Keystone。不要一次性完成任务。
.complete 10257,1
step
.requires quest,11877
.goto Netherstorm,23.4,72.4
>>为计划杀死任何太阳怒派别的敌人
.complete 11877,1
step
.requires quest,10257
.goto Netherstorm,58.3,86.4
.turnin 10256 >>交任务: |cFF00FF25钥匙的主人|r
.accept 10257 >>接任务: |cFFFCDC00夺回钥石|r
step
.requires quest,10257
>>去做植物学并完成任务。这个任务不要交。
.complete 10257,1
step
.requires quest,10667
>>去做麦加那，在麦加诺领主卡佩蒂斯面前掠夺紫色盒子
.complete 10665,1
step
.requires quest,10439
.goto Netherstorm,60.0,31.8
.accept 10437 >>接任务: |cFFFCDC00毁灭的材料|r
step
.requires quest,10439
.goto Netherstorm,61.2,43.6
>>杀死并掠夺该地区的虚空军团和虚空战士
.complete 10437,1
step
.requires quest,10439
.goto Netherstorm,60.0,31.8
.turnin 10437 >>交任务: |cFF00FF25毁灭的材料|r
.accept 10438 >>接任务: |cFFFCDC00虚空幼龙之翼|r
step
.requires quest,10439
.goto Netherstorm,62.6,41.0
>>在任务列表处跳上坐骑。
.use 29778
.complete 10438,1
step
.requires quest,10439
.goto Netherstorm,60.0,31.8
.turnin 10438 >>交任务: |cFF00FF25虚空幼龙之翼|r
.accept 10439 >>接任务: |cFFFCDC00诸界吞噬者迪门修斯|r
step
.requires quest,10439
.goto Netherstorm,62.4,40.8
>>找到一个小组并完成任务。不要交出这个任务
.complete 10439,1
.complete 10439,2
step
.requires quest,10408
.goto Netherstorm,59.4,32.4
.accept 10339 >>接任务: |cFFFCDC00复仇军|r
step
.requires quest,10408
.goto Netherstorm,57.0,37.4
.complete 10339,1
.complete 10339,2
.complete 10339,3
.complete 10339,4
step
.requires quest,10408
.goto Netherstorm,56.8,38.6
.turnin 10339 >>交任务: |cFF00FF25复仇军|r
.accept 10384 >>接任务: |cFFFCDC00复仇军的数据|r
step
.requires quest,10408
.goto Netherstorm,55.8,39.9
.complete 10384,1
step
.requires quest,10408
.goto Netherstorm,56.8,38.6
.turnin 10384 >>交任务: |cFF00FF25复仇军的数据|r
.accept 10385 >>接任务: |cFFFCDC00脑部损伤几率：高|r
step
.requires quest,10408
.goto Netherstorm,56.2,41.4
.complete 10385,1
step
.requires quest,10408
.goto Netherstorm,56.8,38.6
.turnin 10385 >>交任务: |cFF00FF25脑部损伤几率：高|r
.accept 10405 >>接任务: |cFFFCDC00破坏行动|r
step
.requires quest,10408
.goto Netherstorm,56.2,41.4
>>杀死以太坊执政官和霸王。
.complete 10405,1
step
.requires quest,10408
.goto Netherstorm,56.8,38.6
.turnin 10405 >>交任务: |cFF00FF25破坏行动|r
.accept 10406 >>接任务: |cFFFCDC00传达信息|r
step
.requires quest,10408
.goto Netherstorm,56.8,38.6
>>确保你站在召唤任务给予者的平台上，否则任务可能会出错。
.complete 10406,1
step
.requires quest,10408
.goto Netherstorm,56.8,38.6
.turnin 10406 >>交任务: |cFF00FF25传达信息|r
.accept 10408 >>接任务: |cFFFCDC00节点之王萨哈达尔|r
step
.requires quest,10408
.goto Netherstorm,53.4,42.0
.use 29618 >>分组完成任务。使用Protectorate Disruptor释放他。这个任务不要交。
.complete 10408,1

step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,52.6,59.0
.accept 10718 >>接任务: |cFFFCDC00灵魂的声音|r
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,51.8,58.4
.turnin 10718 >>交任务: |cFF00FF25灵魂的声音|r
.accept 10614 >>接任务: |cFFFCDC00风之细语|r
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,75.2,60.8
.turnin 10614 >>交任务: |cFF00FF25风之细语|r
.accept 10709 >>接任务: |cFFFCDC00团圆|r
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,51.8,58.4
.turnin 10709 >>交任务: |cFF00FF25团圆|r
.accept 10714 >>接任务: |cFFFCDC00斯比雷之翼|r
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,58.0,30.0
.use 31128 >>使用哨子同时监视血腥监工和占卜师
.complete 10714,1
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,51.8,58.4
.turnin 10714 >>交任务: |cFF00FF25斯比雷之翼|r
.accept 10783 >>接任务: |cFFFCDC00萨博迈恩男爵|r
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,53.2,42.1
.turnin 10783 >>交任务: |cFF00FF25萨博迈恩男爵|r
.accept 10715 >>接任务: |cFFFCDC00进入沸土峡谷|r
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,47.0,44.8
>>杀戮并掠夺外壳斗牛士的腺体
.complete 10715,1
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,53.2,41.2
.turnin 10715 >>交任务: |cFF00FF25进入沸土峡谷|r
.accept 10749 >>接任务: |cFFFCDC00萨博迈恩男爵的毒药|r
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,51.8,58.4
.turnin 10749 >>交任务: |cFF00FF25萨博迈恩男爵的毒药|r
.accept 10720 >>接任务: |cFFFCDC00最小的生物|r
step << Horde
#sticky
#completewith poisonkeybe
.requires quest,10742
.goto Blade's Edge Mountains,56.5,29.3
+使用Kodohide滚筒控制土拨鼠。使用隐形能力，跑到酒桶里毒死他们。
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,55.4,28.1
.complete 10720,2 
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,55.3,26.0
.complete 10720,1 
step << Horde
#label poisonkeybe
.requires quest,10742
.goto Blade's Edge Mountains,56.0,23.2
.complete 10720,3 
step
.requires quest,11514
.goto Blade's Edge Mountains,53.0,18.8
>>从巴什尔登陆收集法力细胞
.complete 11514,1
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,51.8,58.4
.turnin 10720 >>交任务: |cFF00FF25最小的生物|r
.accept 10721 >>接任务: |cFFFCDC00格鲁洛克和野猪|r
step << Horde
#completewith next
.requires quest,10742
.goto Blade's Edge Mountains,60.1,47.7
+使用Huffer的哨声，等待Huffer攻击Grulloc。当他逃跑时，抢走了格鲁洛克的口袋。
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,60.9,47.8
.complete 10721,1 
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,53.2,41.2
.turnin 10721 >>交任务: |cFF00FF25格鲁洛克和野猪|r
.accept 10785 >>接任务: |cFFFCDC00这是个陷阱！|r
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,51.8,58.3
.turnin 10785 >>交任务: |cFF00FF25这是个陷阱！|r
.accept 10723 >>接任务: |cFFFCDC00食龙者高格鲁姆|r
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,30.6,22.2
>>点击Gorgrom祭坛召唤Misha。等待短RP，当Gorgrom死亡时，放置你的3个恐怖图腾。
.complete 10723,1 
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,51.8,58.3
.turnin 10723 >>交任务: |cFF00FF25食龙者高格鲁姆|r
.accept 10724 >>接任务: |cFFFCDC00刀塔的囚犯|r
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,64.2,23.4
>>找到一个小组并完成任务
.use 31144
.complete 10724,1
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,51.8,58.3
.turnin 10724 >>交任务: |cFF00FF25刀塔的囚犯|r
.accept 10742 >>接任务: |cFFFCDC00摊牌|r
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,64.0,18.4
>>找一个小组来帮助你。不要交付任务。
.use 31146
.complete 10742,1
step << Alliance
.requires quest,10806
.goto Blade's Edge Mountains,55.1,24.0
>>上楼，杀死并掠夺多尔戈克，然后点击你包里的物品
.complete 10795,1 
.collect 31363,1,10797,1 
.accept 10797 >>接任务: |cFFFCDC00戈隆的信物|r
step << Alliance
.requires quest,10806
.goto Blade's Edge Mountains,62.0,38.0
>>点击包中的物品
.turnin 10797 >>交任务: |cFF00FF25戈隆的信物|r
.accept 10798 >>接任务: |cFFFCDC00拜访男爵|r
step << Alliance
.requires quest,10806
.goto Blade's Edge Mountains,53.3,41.2
.turnin 10798 >>交任务: |cFF00FF25拜访男爵|r
.accept 10799 >>接任务: |cFFFCDC00进入沸土峡谷|r
step << Alliance
.requires quest,10806
.goto Blade's Edge Mountains,48.4,43.7
.complete 10799,1 
step << Alliance
.requires quest,10806
.goto Blade's Edge Mountains,53.2,41.2
.turnin 10799 >>交任务: |cFF00FF25进入沸土峡谷|r
.accept 10800 >>接任务: |cFFFCDC00晚安，戈隆|r
step << Alliance
.requires quest,10806
.goto Blade's Edge Mountains,60.9,47.7
>>在格鲁洛克身上使用萨布曼男爵的安眠粉。小心，因为它可以抵抗(只需再次使用)
.complete 10800,1 
step << Alliance
.requires quest,10806
.goto Blade's Edge Mountains,53.2,41.2
.turnin 10800 >>交任务: |cFF00FF25晚安，戈隆|r
.accept 10801 >>接任务: |cFFFCDC00这是个陷阱！|r
step << Alliance
.goto Blade's Edge Mountains,44.0,51.8
.accept 10516 >>接任务: |cFFFCDC00守备官的困境|r
step << Alliance
.goto Blade's Edge Mountains,42.6,59.4,40,0
.goto Blade's Edge Mountains,39.0,52.6
>>杀死德罗加姆和莫格道格，并掠夺他们的任务物品
.complete 10516,2 
.complete 10516,1 
step << Alliance
.goto Blade's Edge Mountains,44.0,51.8
.turnin 10516 >>交任务: |cFF00FF25守备官的困境|r
.accept 10517 >>接任务: |cFFFCDC00高尔迪姆，你完蛋了......|r
step << Alliance
.goto Blade's Edge Mountains,39.4,49.2
>>杀死Gorr'dim
.complete 10517,1 
step << Alliance
.goto Blade's Edge Mountains,44.0,51.8
.turnin 10517 >>交任务: |cFF00FF25高尔迪姆，你完蛋了......|r
.accept 10518 >>接任务: |cFFFCDC00插旗子|r
step << Alliance
.goto Blade's Edge Mountains,39.2,58.6,40,0
.goto Blade's Edge Mountains,46.4,74.6
>>杀死一个剑锋战士并将其掠夺为旗帜
.unitscan Bladespire Champion
.collect 30416,1,10518,1
.use 30416 >>使用塔顶的横幅引诱格伦·格鲁布诺什。为了他的头盔杀了他。
.collect 30417,1,10518,1
step << Alliance
.goto Blade's Edge Mountains,36.2,66.2
.turnin 10518 >>交任务: |cFF00FF25插旗子|r
step << Alliance
.requires quest,10806
.goto Blade's Edge Mountains,62.0,38.1
.turnin 10801 >>交任务: |cFF00FF25这是个陷阱！|r
.accept 10802 >>接任务: |cFFFCDC00食龙者高格鲁姆|r
step << Alliance
.requires quest,10806
.goto Blade's Edge Mountains,30.5,22.2
>>点击中间的祭坛，将图腾放在巨人的尸体上
.complete 10802,1 
step << Alliance
.requires quest,10806
.goto Blade's Edge Mountains,62.0,38.0
.turnin 10802 >>交任务: |cFF00FF25食龙者高格鲁姆|r
.accept 10818 >>接任务: |cFFFCDC00萨博迈恩男爵的邀请|r
step << Alliance
.requires quest,10806
.goto Blade's Edge Mountains,53.2,41.2
.turnin 10818 >>交任务: |cFF00FF25萨博迈恩男爵的邀请|r
.accept 10805 >>接任务: |cFFFCDC00扫荡格鲁尔的巢穴|r
step << Alliance
.requires quest,10806
.goto Blade's Edge Mountains,63.0,20.2
.complete 10805,1
.complete 10805,2
.complete 10805,3
.complete 10805,4
step << Alliance
.requires quest,10806
.goto Blade's Edge Mountains,51.8,58.3
.turnin 10805 >>交任务: |cFF00FF25扫荡格鲁尔的巢穴|r
.accept 10806 >>接任务: |cFFFCDC00摊牌|r
step << Alliance
.requires quest,10806
.goto Blade's Edge Mountains,64.0,18.4
>>找一个小组来帮助你。不要交付任务。
.use 31808
.complete 10806,1
step
.requires quest,11000
.goto Blade's Edge Mountains,55.4,44.8
.accept 10995 >>接任务: |cFFFCDC00格鲁洛克的巨龙颅骨|r
.accept 10996 >>接任务: |cFFFCDC00玛古克的宝箱|r
.accept 10997 >>接任务: |cFFFCDC00戈隆的军旗|r
step
.requires quest,11000
.goto Blade's Edge Mountains,60.6,47.6
>>杀死格鲁洛克
.complete 10995,1
step
.requires quest,11000
.goto Blade's Edge Mountains,66.0,55.5
>>找到麦戈克，杀死他，洗劫他的箱子。
.complete 10996,1
step
.requires quest,11000
.goto Terokkar Forest,20.5,17.7
>>杀戮杀手
.complete 10997,1
step
.requires quest,11000
.goto Blade's Edge Mountains,55.4,44.8
.turnin 10995 >>交任务: |cFF00FF25格鲁洛克的巨龙颅骨|r
.turnin 10996 >>交任务: |cFF00FF25玛古克的宝箱|r
.turnin 10997 >>交任务: |cFF00FF25戈隆的军旗|r
.accept 10998 >>接任务: |cFFFCDC00维姆高尔的魔典|r
step
.requires quest,11000
.goto Blade's Edge Mountains,77.4,31.2
>>找到一个小组，完成5人小组任务。
.complete 10998,1
step
.requires quest,11000
.goto Blade's Edge Mountains,55.4,44.8
>>在探索中把它转过来，接下来是笨重的一个。
.turnin 10998 >>交任务: |cFF00FF25维姆高尔的魔典|r
step
.requires quest,11000
.goto Blade's Edge Mountains,55.4,44.8
.accept 11000 >>接任务: |cFFFCDC00磨魂者|r
step
.requires quest,11000
.goto Blade's Edge Mountains,60.6,25.6
>>再次找到一个团队，完成5人团队任务。这个任务不要交。
.complete 11000,1

step
.requires quest,9738
.goto Zangarmarsh,52.2,36.0
>>进入湖中央的水下水库
.accept 9738 >>接任务: |cFFFCDC00失踪的同伴|r
step
.requires quest,9763
.goto Zangarmarsh,52.2,36.0
>>进入湖中央的水下水库
.accept 9763 >>接任务: |cFFFCDC00督军的末日|r
step
.requires quest,9738
>>在“从笔”中完成这两个步骤
.complete 9738,3
.complete 9738,2
step
.requires quest,9738
>>在Underbog完成这两个步骤。不要交付任务。
.complete 9738,1
.complete 9738,4
step
.requires quest,9763
>>杀死Steamvaults的最后一个老板。不要交付任务。
.complete 9763,3
step
.requires quest,10667
>>去执行Steamfaults，杀死Hydromacer Thespia。不要交任务。
.complete 10667,1

step
.requires quest,11108
.goto Shadowmoon Valley,66.0,85.4
.reputation 1015,exalted,<0,1
>>这个问题需要提升。
.accept 11107 >>接任务: |cFFFCDC00莫格霍尔大王|r
step
.requires quest,11108
.goto Shadowmoon Valley,66.0,85.4
.turnin 11107 >>交任务: |cFF00FF25莫格霍尔大王|r
.accept 11108 >>接任务: |cFFFCDC00伊利丹·怒风大人|r
step
.requires quest,11108
>>等待超长RP。不要在这个任务中交出。 
.complete 11108,1
step << Horde
.requires quest,9937
.goto Nagrand,55.7,37.9
.accept 9935 >>接任务: |cFFFCDC00通缉：巫婆吉塞尔达|r
.accept 9939 >>接任务: |cFFFCDC00通缉：顾问佐尔布|r
step << Alliance
.requires quest,9938
.goto Nagrand,54.7,70.8
.accept 9936 >>接任务: |cFFFCDC00通缉：巫婆吉塞尔达|r
.accept 9940 >>接任务: |cFFFCDC00通缉：顾问佐尔布|r
step << Horde
.requires quest,9937
.goto Nagrand,71.2,82.2
>>杀死该地区的克伦族吉塞尔达和15名基尔索洛特工
.complete 9935,1
.complete 9935,2
step << Alliance
.requires quest,9938
.goto Nagrand,71.2,82.2
>>杀死该地区的克伦族吉塞尔达和15名基尔索洛特工
.complete 9936,1
.complete 9936,2
step << Horde
.requires quest,9937
.goto Nagrand,46.0,19.0
>>杀死该地区的顾问佐尔布和战争食人魔
.complete 9939,1
.complete 9939,2
.complete 9939,3
step << Alliance
.requires quest,9938
.goto Nagrand,46.0,19.0
>>杀死该地区的顾问佐尔布和战争食人魔
.complete 9940,1
.complete 9940,2
.complete 9940,3
step << Alliance
.requires quest,9938
.goto Nagrand,54.7,70.8
.turnin 9936 >>交任务: |cFF00FF25通缉：巫婆吉塞尔达|r
.turnin 9940 >>交任务: |cFF00FF25通缉：顾问佐尔布|r
step << Horde
.requires quest,9937
.goto Nagrand,55.8,37.8
.turnin 9935 >>交任务: |cFF00FF25通缉：巫婆吉塞尔达|r
.turnin 9939 >>交任务: |cFF00FF25通缉：顾问佐尔布|r
step << Horde
.requires quest,9937
.goto Nagrand,55.8,37.8
.accept 9937 >>接任务: |cFFFCDC00通缉：饥饿者杜恩|r
step << Alliance
.requires quest,9938
.goto Nagrand,55.8,37.8
.accept 9938 >>接任务: |cFFFCDC00通缉：饥饿者杜恩|r
step << Horde
.requires quest,9937
.goto Nagrand,38.2,77.2,60,0
.goto Nagrand,47.0,70.0,60,0
.goto Nagrand,37.0,58.2,60,0
.goto Nagrand,31.0,69.2,60,0
>>找到并杀死饥饿者杜伦，他在巨大的水晶周围巡逻。完成此任务后不要交上来。
.unitscan Durn the Hungerer
.complete 9937,1
step << Alliance
.requires quest,9938
.goto Nagrand,38.2,77.2,60,0
.goto Nagrand,47.0,70.0,60,0
.goto Nagrand,37.0,58.2,60,0
.goto Nagrand,31.0,69.2,60,0
>>找到并杀死饥饿者杜伦，他在巨大的水晶周围巡逻。完成此任务后不要交上来。
.unitscan Durn the Hungerer
.complete 9938,1
step
.requires quest,9853
.goto Nagrand,61.2,22.2
>>这个任务链的末端是精英，你可能需要帮助。
.accept 9818 >>接任务: |cFFFCDC00地下的滋扰|r
step
.requires quest,9853
.goto Nagrand,61.0,22.0
>>与地球元素对话
.skipgossip
.complete 9818,1
step
.requires quest,9853
.goto Nagrand,61.2,22.2
.turnin 9819 >>交任务: |cFF00FF25地下的滋扰|r
.accept 9819 >>接任务: |cFFFCDC00被折磨的地灵|r
step
.requires quest,9853
.goto Nagrand,67.0,32.0
>>杀死该地区被扭曲的大地精灵
.complete 9819,1 
step
.requires quest,9853
.goto Nagrand,61.2,22.2
.turnin 9819 >>交任务: |cFF00FF25被折磨的地灵|r
.accept 9821 >>接任务: |cFFFCDC00吞食诅咒|r
step
.requires quest,9853
.goto Nagrand,56.0,52.0
>>杀死并掠夺愤怒的破碎者
.collect 24473,15,9821,1
step
.requires quest,9853
.goto Nagrand,61.2,22.2
.turnin 9821 >>交任务: |cFF00FF25吞食诅咒|r
.accept 9849 >>接任务: |cFFFCDC00打碎外壳|r
step
.requires quest,9853
.goto Nagrand,29.0,67.4,40,0
.goto Nagrand,32.0,80.6,40,0
.goto Nagrand,41.0,82.6,40,0
.use 24501 >>在破碎的隆隆声上使用戈尔多格的巨石，然后杀死产卵的小黄人
.complete 9849,1
step
.requires quest,9853
.goto Nagrand,61.2,22.2
.turnin 9849 >>交任务: |cFF00FF25打碎外壳|r
.accept 9853 >>接任务: |cFFFCDC00侵占者古罗克|r
step
.requires quest,9853
.goto Nagrand,29.0,24.8
>>杀死并掠夺侵略者古洛克。完成此任务后不要交上来。
.collect 24503,1,9853,1
step
.requires quest,9977
.goto Nagrand,42.8,20.8
>>这个任务链是精英，你可能需要帮助。
.accept 9962 >>Accept The Ring of Blood: Brokentoe
step
.requires quest,9977
.goto Nagrand,42.8,20.8
>>进入竞技场击败老板
.complete 9962,1
step
.requires quest,9977
.goto Nagrand,42.8,20.8
.turnin 9962 >>交任务: |cFF00FF25鲜血竞技场：断蹄|r
.accept 9967 >>Accept The Ring of Blood: The Blue Brothers
step
.requires quest,9977
.goto Nagrand,42.8,20.8
>>进入竞技场击败老板
.complete 9967,1
step
.requires quest,9977
.goto Nagrand,42.8,20.8
.turnin 9967 >>交任务: |cFF00FF25鲜血竞技场：蓝色兄弟|r
.accept 9970 >>Accept The Ring of Blood: Rokdar the Sundered Lord
step
.requires quest,9977
.goto Nagrand,42.8,20.8
>>进入竞技场击败老板
.complete 9970,1
step
.requires quest,9977
.goto Nagrand,42.8,20.8
.turnin 9970 >>交任务: |cFF00FF25鲜血竞技场：裂石之王洛卡达尔|r
.accept 9972 >>Accept The Ring of Blood: Skra'gath
step
.requires quest,9977
.goto Nagrand,42.8,20.8
>>进入竞技场击败老板
.complete 9972,1
step
.requires quest,9977
.goto Nagrand,42.8,20.8
.turnin 9972 >>交任务: |cFF00FF25鲜血竞技场：瑟克拉加斯|r
.accept 9973 >>Accept The Ring of Blood: The Warmaul Champion
step
.requires quest,9977
.goto Nagrand,42.8,20.8
>>进入竞技场击败老板
.complete 9973,1
step
.requires quest,9977
.goto Nagrand,42.8,20.8
.turnin 9973 >>交任务: |cFF00FF25鲜血竞技场：战槌勇士|r
.accept 9977 >>Accept The Ring of Blood: The Final Challenge
step
.requires quest,9977
.goto Nagrand,42.8,20.8
>>进入竞技场，击败老板。完成任务后不要交任务！
.complete 9977,1
step
#sticky
+以下任务是每日任务。因为你在角色身上完成了很多普通任务。

step
.requires quest,11369
.isOnQuest 11369
>>进入《植物学》的英雄难度，击败《黑追踪者》。完成任务后不要提交。
.complete 11369,1
step
.requires quest,11384
.isOnQuest 11384
>>进入Underbog的英雄难度并击败曲分裂。完成任务后不要提交。
.complete 11384,1
step
.requires quest,11382
.isOnQuest 11382
>>进入英雄难度的黑色沼泽，击败埃昂纳斯。完成任务后不要提交。
.complete 11382,1
step
.requires quest,11363
.isOnQuest 11363
>>进入英雄难度的破碎大厅，击败酋长卡加特·刀锋拳。完成任务后不要提交。
.complete 11363,1
step
.requires quest,11362
.isOnQuest 11362
>>以英雄难度进入血炉，击败破坏者科利丹。完成任务后不要提交。
.complete 11362,1
step
.requires quest,11375
.isOnQuest 11375
>>在英雄难度上进入暗影迷宫并击败穆尔。完成任务后不要提交。
.complete 11375,1
step
.requires quest,11354
.isOnQuest 11354
>>进入地狱火堡垒，挑战英雄难度，击败纳桑。完成任务后不要提交。
.complete 11354,1
step
.requires quest,11386
.isOnQuest 11386
>>进入英雄难度的Mechanar，击败计算器上的Pathaleon。完成任务后不要提交。
.complete 11386,1
step
.requires quest,11373
.isOnQuest 11373
>>以英雄难度进入玛纳墓穴，击败纳克西斯王子沙法尔。完成任务后不要提交。
.complete 11373,1
step
.requires quest,11378
.isOnQuest 11378
>>以英雄难度进入旧希尔斯布莱德丘陵，击败时代猎人。完成任务后不要提交。
.complete 11378,1
step
.requires quest,11374
.isOnQuest 11374
>>进入奥切奈地穴，挑战英勇难度，击败马拉达尔酋长。完成任务后不要提交。
.complete 11374,1
step
.requires quest,11372
.isOnQuest 11372
>>进入塞塞克大厅(Sethekk Halls)，挑战英雄难度，击败塔龙国王艾吉斯(Talon King Ikiss)。完成任务后不要提交。
.complete 11372,1
step
.requires quest,11368
.isOnQuest 11368
>>进入《奴隶笔》的英雄难度，击败夸美兰。完成任务后不要提交。
.complete 11368,1
step
.requires quest,11388
.isOnQuest 11388
>>进入《魔兽世界》中的英雄难度，击败先驱者Skyriss。完成任务后不要提交。
.complete 11388,1
step
.requires quest,11370
.isOnQuest 11370
>>进入《蒸汽断层》，挑战英雄难度，击败军阀卡利思雷什。完成任务后不要提交。
.complete 11370,1

step
.requires quest,11377
.goto Shattrath City,61.6,15.8
.daily 11380,11377,11381,11379 >>Accept the cooking daily
step
.requires quest,11377
.isOnQuest 11380
.goto Netherstorm,46.0,11.0
>>在虚空风暴的生态穹顶收集法力浆果。完成任务后不要提交。
.complete 11380,1
step
.requires quest,11377
.isOnQuest 11377
>>从围绕斯凯蒂斯飞行的怪物卡里里那里收集一只巨大的卡里里翅膀
.goto Terokkar Forest,61.2,74.2,20,0
.goto Terokkar Forest,69.8,75.0,20,0
.goto Terokkar Forest,74.6,88.4,20,0
.collect 33838,1,11377,1
step << Alliance
.requires quest,11377
.isOnQuest 11377
.goto Stormwind City,53.6,59.6
>>烹饪3个曲汉堡，或从拍卖行购买。
.collect 27659,3,11377,1
step << Horde
.requires quest,11377
.isOnQuest 11377
.goto Orgrimmar,55.6,62.8
>>烹饪3个曲汉堡，或从拍卖行购买。
.collect 27659,3,11377,1
step
.requires quest,11377
.isOnQuest 11377
.use 33837 >>使用您的烹饪锅，并在您的库存中添加配料。完成任务后不要提交。
.complete 11377,1
step << Alliance
.requires quest,11377
.isOnQuest 11381
.goto Stormwind City,53.6,59.6
>>烹饪4个烤羊蹄，或从拍卖行购买。
.collect 27658,4,11381,1
step << Horde
.requires quest,11377
.isOnQuest 11381
.goto Orgrimmar,55.6,62.8
>>烹饪4个烤羊蹄，或从拍卖行购买。
.collect 27658,4,11381,1
step
.requires quest,11377
.isOnQuest 11381
.goto Nagrand,26.0,59.5
.use 33851 >>站在祖先的场地内，用你的烹饪锅和你库存中的配料。完成任务后不要提交。
.complete 11381,1
step << Alliance
.requires quest,11377
.isOnQuest 11377
.goto Stormwind City,53.6,59.6
>>煮2条莫克纳撒尔排骨和一条松脆的蛇，或者从拍卖行买下来。
.collect 31672,2,11377,1
.collect 31673,1,11377,1
step << Horde
.requires quest,11377
.isOnQuest 11377
.goto Orgrimmar,55.6,62.8
>>煮2条莫克纳撒尔排骨和一条松脆的蛇，或者从拍卖行买下来。
.collect 31672,2,11377,1
.collect 31673,1,11377,1
step
.requires quest,11377
.isOnQuest 11377
.goto Blade's Edge Mountains,29.6,83.4
.use 33837 >>站在一个死了的深渊火焰枪上，用你的烹饪锅和你的库存中的配料。完成任务后不要提交。
.complete 11377,1

step
.requires quest,11387
.isOnQuest 11389
>>进入奥克拉兹，击败5名奥克拉兹哨兵。完成任务后不要提交。
.complete 11389,1
step
.requires quest,11387
.isOnQuest 11371
>>进入Steamvault，击败14名Coilfang Myrmidons。完成任务后不要提交。
.complete 11371,1
step
.requires quest,11387
.isOnQuest 11376
>>进入暗影迷宫，击败3名恶意教练。完成任务后不要提交。
.complete 11376,1
step
.requires quest,11387
.isOnQuest 11383
>>进入黑沼泽，击败4个裂谷领主。完成任务后不要提交。
.complete 11383,1
step
.requires quest,11387
.isOnQuest 11364
>>进入破碎大厅，击败4名破碎手百夫长。完成任务后不要提交。
.complete 11364,1
step
.requires quest,11387
.isOnQuest 11385
>>进入《植物学》，击败6名阳光卫士频道。完成任务后不要提交。
.complete 11385,1
step
.requires quest,11387
.isOnQuest 11387
>>进入Mechanar并击败5个风暴锻造毁灭者。完成任务后不要提交。
.complete 11387,1

step
.requires quest,11523
.goto Isle of Quel'Danas,47.4,30.6
.accept 11523 >>接任务: |cFFFCDC00激活结界！|r
step
.requires quest,11525
.goto Isle of Quel'Danas,47.2,30.6
.accept 11525 >>接任务: |cFFFCDC00转化更多奥术守卫|r
step
.requires quest,11521
.goto Isle of Quel'Danas,51.5,32.5
.accept 11521 >>接任务: |cFFFCDC00继续寻根|r
step
.requires quest,11546
.goto Isle of Quel'Danas,51.5,32.5
.accept 11546 >>接任务: |cFFFCDC00开始营业|r
step
.requires quest,11541
.goto Isle of Quel'Danas,53.8,34.2
.accept 11541 >>接任务: |cFFFCDC00解救绿鳃奴隶|r
step
.requires quest,11533
.goto Isle of Quel'Danas,47.6,35.2
.accept 11533 >>接任务: |cFFFCDC00继续空袭|r
step
.requires quest,11547
.goto Isle of Quel'Danas,47.6,35.4
.accept 11547 >>接任务: |cFFFCDC00魔网能量线的读数|r
step
.requires quest,11536
.goto Isle of Quel'Danas,50.4,40.6
.accept 11536 >>接任务: |cFFFCDC00不要停下......|r
step
.requires quest,11544
.goto Isle of Quel'Danas,50.6,40.8
.accept 11544 >>接任务: |cFFFCDC00阿塔玛军备|r
step
.requires quest,11542
.goto Isle of Quel'Danas,50.6,39.0
.accept 11542 >>接任务: |cFFFCDC00拦截援军|r
step
.requires quest,11539
.goto Isle of Quel'Danas,49.4,40.2
.accept 11539 >>接任务: |cFFFCDC00占领港口|r
step
.requires quest,11536
.goto Isle of Quel'Danas,65.0,48.0
>>深松矿石的敞口箱子
.collect 34479,3
step
.requires quest,11541
.goto Isle of Quel'Danas,60.9,51.6
.use 34483 >>为穆洛克控制之球杀死黑松树警报器，并将其用于格林吉尔奴隶。完成任务后不要提交。
.complete 11541,1
step
.requires quest,11547
.goto Isle of Quel'Danas,61.2,62.5
.use 34533 >>使用神龛附近的星际漫游者水晶。完成任务后不要提交。
.complete 11547,2
step
.requires quest,11547
.goto Isle of Quel'Danas,48.4,45.5
.use 34533 >>使用入口附近的星际漫游者水晶。
.complete 11547,1
step
.requires quest,11523
.goto Isle of Quel'Danas,47.4,30.6
.use 34338 >>使用法力残留物为基地周围的任何守卫提供能量
.complete 11523,1
step
.requires quest,11539
.goto Isle of Quel'Danas,45.6,41.4
>>杀死该区域周围的Dawnblade敌人。完成任务后不要提交。
.complete 11539,1
.complete 11539,2
.complete 11539,3
step
.requires quest,11547
.goto Isle of Quel'Danas,42.0,35.2
.use 34533 >>使用血晶附近的星际魔术师水晶。
.complete 11547,3
step
.requires quest,11533
.goto Isle of Quel'Danas,48.4,25.2
.use 34475 >>与Ayren Cloudbreaker交谈，飞越亲爱的疤痕，使用奥术冲锋杀死敌人
.complete 11533,1
.complete 11533,2
.complete 11533,3
step
.requires quest,11542
.skipgossip
>>与Ayren Cloudbreaker交谈，进行飞越船只的飞行。
.goto Isle of Quel'Danas,48.4,25.2
step
.requires quest,11542
.goto Isle of Quel'Danas,48.4,25.2
.use 34489 >>在每艘船的船帆上洒上燃烧的油
.complete 11542,1
.complete 11542,2
.complete 11542,3
step
.requires quest,11542
.goto Isle of Quel'Danas,48.4,25.2
>>着陆时杀死道恩布拉德预备队。完成任务后不要提交。
.complete 11542,4
step
.requires quest,11546
.goto Isle of Quel'Danas,38.0,29.7
>>掠夺该地区的血莓。
.complete 11546,1
step
.requires quest,11523
.goto Isle of Quel'Danas,44.8,26.4,40,0
.goto Isle of Quel'Danas,40.6,30.4,40,0
.goto Isle of Quel'Danas,35.6,35.0
>>为法力残留物杀死穷凶极恶的敌人
.collect 34338,4,11523,1
step
.requires quest,11525
.goto Isle of Quel'Danas,43.8,26.6,40,0
.goto Isle of Quel'Danas,37.4,32.4,40,0
.goto Isle of Quel'Danas,34.6,38.8
.use 34368 >>击败反复无常的哨兵并替换其核心
.complete 11525,1
step
#aldor
.requires quest,11492
.goto Isle of Quel'Danas,47.4,30.6
.turnin 11481 >>交任务: |cFF00FF25太阳之井的危机|r
.accept 11488 >>接任务: |cFFFCDC00魔导师平台|r
step
#scryer
.requires quest,11492
.goto Isle of Quel'Danas,47.4,30.6
.turnin 11482 >>交任务: |cFF00FF25使命的召唤|r
.accept 11488 >>接任务: |cFFFCDC00魔导师平台|r
step
.requires quest,11492
>>进入魔术师露台
.turnin 11488 >>交任务: |cFF00FF25魔导师平台|r
.accept 11490 >>接任务: |cFFFCDC00占星球|r
step
.requires quest,11492
>>在圣珠上的魔法师露台完成任务。
.complete 11490,1
step
.requires quest,11492
>>将任务交给实例内部。
.turnin 11490 >>交任务: |cFF00FF25占星球|r
.accept 11492 >>接任务: |cFFFCDC00大难不死|r
step
.requires quest,11492
>>在实例内杀死Kael'thas。不要交任务。
.complete 11492,1
step
.requires quest,11544
.goto Shadowmoon Valley,69.5,39.6
>>在阿塔玛露台周围杀死兽人，获得5件阿塔玛武器。
.collect 34500,5,11544,1
step
.requires quest,11544
.goto Isle of Quel'Danas,50.1,40.5
.use 34500 >>站在Hauthaa铁砧旁边时，使用Ata'mal武器。完成任务后不要提交。
.complete 11544,1
step
.requires quest,11521
.goto Terokkar Forest,58.1,13.2
>>杀死Razorthorn Flayers获取腺体
.collect 34255,1,11521,1
step
.requires quest,11521
.use 34255 >>使用剃须刀掠夺者的腺体来控制它，并露出根部供你挖掘。完成任务后不要提交。
.complete 11521,1

step
.requires quest,11020
.goto Shadowmoon Valley,66.0,86.4
.accept 11020 >>接任务: |cFFFCDC00缓慢的死亡|r
step
.requires quest,11020
.goto Shadowmoon Valley,45.8,61.5,20
>>杀死附近的Felfire Diemetradon获取Fel腺体。
.collect 32502,12,11020,1
step
.requires quest,11020
.goto Shadowmoon Valley,66.0,82.1,30,0
.goto Shadowmoon Valley,76.3,85.4,30,0
.use 32503>>用龙嘴狮附近的亚齐尔羊肉毒死它们。完成任务后不要提交。
.complete 11020,1

step
.requires quest,11035
.goto Shadowmoon Valley,66.0,86.4
.accept 11035 >>接任务: |cFFFCDC00危险的天空|r
step
.requires quest,11035
.goto Shadowmoon Valley,72.3,64.3
>>为了荷兰之翼遗迹杀死龙嘴运输车。完成任务后不要提交。
.complete 11035,1

step
.requires quest,11515
.goto Hellfire Peninsula,58.2,17.6
.accept 11515 >>接任务: |cFFFCDC00血债血偿|r
step
.requires quest,11516
.goto Hellfire Peninsula,58.2,17.6
.accept 11516 >>接任务: |cFFFCDC00轰炸传送门|r
step
.requires quest,11516
.goto Hellfire Peninsula,58.2,17.6
.use 34253 >>召唤带着嘶嘶灰烬的活火炬，将其靠近火元素，为其供电。当它完成时，把它带到恶魔之门。
.complete 11516,1
step
.requires quest,11515
.use 34257 >>为恶魔之血杀死愤怒先驱，然后对恶魔之血提升者使用恶魔虹吸。完成任务后不要提交。
.complete 11515,1
step << Alliance
.requires quest,11502
.goto Nagrand,55.8,73.6
.accept 11502 >>接任务: |cFFFCDC00保卫哈兰|r
step << Alliance
.requires quest,11502
.goto Nagrand,55.8,73.6,20,0
>>杀死哈拉周围的敌人派系守卫或玩家。完成任务后不要提交。
.complete 11502,1

step << Horde
.requires quest,11503
.goto Nagrand,52.8,36.0
.accept 11503 >>接任务: |cFFFCDC00新仇旧怨|r
step << Horde
.requires quest,11503
.goto Nagrand,55.8,73.6,20,0
>>杀死哈拉周围的敌人派系守卫或玩家。完成任务后不要提交。
.complete 11503,1
step
.requires quest,11008
.goto Terokkar Forest,64.6,66.6
.accept 11008 >>接任务: |cFFFCDC00轰炸斯克提斯|r
step
.requires quest,11008
.goto Terokkar Forest,70.4,80.1,10,0
.goto Terokkar Forest,74.7,88.3,10,0
.goto Terokkar Forest,67.6,86.0,10,0
.goto Terokkar Forest,62.6,80.8,10,0
.use 32406 >>在您上山时，在您的库存中使用爆破费用来摧毁该区域结构顶部的鸡蛋。完成任务后不要提交。
.complete 11008,1
]])
RXPGuides.RegisterGuide([[
#version 18
#wotlk
#tbc
#group RestedXP WLK的准备
#name RestedXP 准备的 经验 总数
#hidewindow
step
>>到目前为止，您准备的经验是：
.showtotalxp
>>在角色可能的总数中：
.showtotalxp 1
>>对于任务日志任务，请将物品放入包中，以便所有任务都标记为“(完成)”。
>>-
.show25quests >>单击此处查看角色的25个最佳任务列表
]])
RXPGuides.RegisterGuide([[
#version 18
#wotlk
#tbc
#group RestedXP WLK的准备
#name 发布准备指南
step
#sticky
+这本指南是关于做任务链，可以很容易地拿起，并在启动时交给，而不需要将它们保存在您的任务日志中。如果指南的这一章说要交东西，那就交吧！没关系，你不会在实验中失败。只是不要交任何它没有告诉你的任务，这些是我们正在保存的任务。他们将按照“交车指南”交车。
step
.reputation 989,revered >>与时间守护者一起获得尊敬。
>>垃圾洞时间地牢直到被尊敬。这是一个必须做的步骤，除非你有一个术士可以在发射时召唤你去洞穴。
step << Horde
.reputation 729,exalted >>与霜狼氏族一起升华
.goto Alterac Mountains,62.2,58.9
>>这一步需要在发射日召唤奥特兰克山脉。如果没有，请跳过。我们正在提交AV小饰物升级任务。如果你已经提交了令人尊敬的升级任务，那么至少要达到令人尊敬或赞叹的程度。尊敬和崇高给予同样的经验。这一经验是由奥特兰克山谷的普华永道获得的。
* Be sure to do Proving Grounds and unlock the base level of your trinket. This quest is picked up in Alterac Mountains
.accept 7161 >>接任务: |cFFFCDC00试炼场|r
.turnin 7161 >>交任务: |cFF00FF25试炼场|r
step << Alliance
.reputation 730,exalted >>与风暴守卫一起升华
.goto Alterac Mountains,39.6,81.2
>>这一步需要在发射日召唤奥特兰克山脉。如果没有，请跳过。我们正在提交AV小饰物升级任务。如果你已经提交了令人尊敬的升级任务，那么至少要达到令人尊敬或赞叹的程度。尊敬和崇高给予同样的经验。这一经验是由奥特兰克山谷的普华永道获得的。
* Be sure to do Proving Grounds and unlock the base level of your trinket. This quest is picked up in Alterac Mountains
.accept 7162 >>接任务: |cFFFCDC00试炼场|r
.turnin 7162 >>交任务: |cFF00FF25试炼场|r
step
.reputation 967,exalted >>《紫罗兰之眼》让你神采飞扬。
>>我们正在进行卡拉环升级任务。至少获得荣誉，所有过去获得荣誉的营业额都是相同的经验。如果你已经提交了戒指升级任务，那么就提升一个代表级别。你可以累积多次重复奖励以获得更多经验！通过运行Karazhan获得此重复次数。
step
.reputation 990,exalted >>用沙子的尺度来提升自己。
>>我们正在进行Hyjal环升级任务。至少获得荣誉，所有过去获得荣誉的营业额都是相同的经验。如果你已经提交了戒指升级任务，那么就提升一个代表级别。通过运行Mount Hyjal获得此重复次数。
step << Horde
.goto Hellfire Peninsula,87.4,48.2
.accept 10289 >>接任务: |cFFFCDC00萨尔玛之旅|r
step << Horde
#completewith next
.goto Hellfire Peninsula,55.8,36.8
.fly Thrallmar >>再次与NPC对话，飞往萨尔玛
step << Horde
.goto Hellfire Peninsula,55.8,36.8
.turnin 10289 >>交任务: |cFF00FF25萨尔玛之旅|r
.accept 10291 >>接任务: |cFFFCDC00向纳兹格雷尔报到|r
step << Horde
.goto Hellfire Peninsula,55.0,36.0
.turnin 10291 >>交任务: |cFF00FF25向纳兹格雷尔报到|r
.accept 10121 >>接任务: |cFFFCDC00消灭燃烧军团|r
step << Horde
>>跑出城镇
.goto Hellfire Peninsula,58.0,41.2
.turnin 10121 >>交任务: |cFF00FF25消灭燃烧军团|r
.accept 10123 >>接任务: |cFFFCDC00魔火峡谷|r
step << Horde
.goto Hellfire Peninsula,63.0,38.0
>>杀死该地区的火焰行者小鬼、地狱战警和恐怖召唤者
.complete 10123,1
.complete 10123,2
.complete 10123,3
step << Horde
.goto Hellfire Peninsula,58.0,41.2
.turnin 10123 >>交任务: |cFF00FF25魔火峡谷|r
.accept 10124 >>接任务: |cFFFCDC00机甲残骸|r
step << Horde
.goto Hellfire Peninsula,65.8,43.6
.turnin 10124 >>交任务: |cFF00FF25机甲残骸|r
.accept 10208 >>接任务: |cFFFCDC00阻断援军|r
step << Horde
#sticky
#label disrupttransp
.goto Hellfire Peninsula,70.8,45.1
>>一旦你得到4块符石，使用托阿奇的初级技能来禁用军团运输者。
.complete 10208,1 
step << Horde
#label disrupttransp
.goto Hellfire Peninsula,74.1,38.9
>>一旦你再收集4块符石，使用To'arch's Primers来禁用军团运输者。
.complete 10208,2 
step << Horde
#requires disrupttransp
.goto Hellfire Peninsula,65.9,43.6
.turnin 10208 >>交任务: |cFF00FF25阻断援军|r
.accept 10129 >>接任务: |cFFFCDC00任务：穆尔凯斯和沙德拉兹之门|r
step << Horde
.goto Hellfire Peninsula,78.0,51.2
.complete 10129,2 
step << Horde
.goto Hellfire Peninsula,78.2,47.7
.complete 10129,1 
step << Horde
.goto Hellfire Peninsula,65.9,43.6
.turnin 10129 >>交任务: |cFF00FF25任务：穆尔凯斯和沙德拉兹之门|r
.accept 10162 >>接任务: |cFFFCDC00任务：地狱岩床|r
.accept 10388 >>接任务: |cFFFCDC00返回萨尔玛|r
step << Horde
>>当你飞越深渊大陆架时，使用52区特殊炸弹来完成这个任务。
.complete 10162,3 
.complete 10162,1 
.complete 10162,2 
step << Horde
.goto Hellfire Peninsula,65.9,43.6
.turnin 10162 >>交任务: |cFF00FF25任务：地狱岩床|r
step << Horde
.goto Hellfire Peninsula,55.0,36.0
.turnin 10388 >>交任务: |cFF00FF25返回萨尔玛|r
.accept 9400 >>接任务: |cFFFCDC00刺客|r
step << Horde
.goto Hellfire Peninsula,33.6,43.6
>>飞向兽人尸体
.complete 9400,1
step << Horde
.goto Hellfire Peninsula,33.6,43.6
.turnin 9400 >>交任务: |cFF00FF25刺客|r
step << Alliance
.goto Hellfire Peninsula,87.4,50.7
.accept 10288 >>接任务: |cFFFCDC00抵达外域|r
step << Alliance
.goto Hellfire Peninsula,87.4,52.4
.turnin 10288 >>交任务: |cFF00FF25抵达外域|r
.accept 10140 >>接任务: |cFFFCDC00荣耀堡之旅|r
step << Alliance
.goto Hellfire Peninsula,54.7,62.8
>>要么再和飞行管理员谈谈，要么自己飞到荣誉舱
.skipgossip
.turnin 10140 >>交任务: |cFF00FF25荣耀堡之旅|r
.accept 10254 >>接任务: |cFFFCDC00指挥官达纳斯|r
step << Alliance
.goto Hellfire Peninsula,56.6,66.6
.turnin 10254 >>接任务: |cFFFCDC00指挥官达纳斯|r
.accept 10141 >>接任务: |cFFFCDC00重生的军团|r
step << Alliance
.goto Hellfire Peninsula,61.7,60.7
.turnin 10141 >>交任务: |cFF00FF25重生的军团|r
.accept 10142 >>接任务: |cFFFCDC00苦痛之路|r
step << Alliance
.goto Hellfire Peninsula,67.0,58.6
>>消灭该地区的恶魔
.complete 10142,1 
.complete 10142,2 
.complete 10142,3 
step << Alliance
.goto Hellfire Peninsula,61.7,60.7
.turnin 10142 >>交任务: |cFF00FF25苦痛之路|r
.accept 10143 >>接任务: |cFFFCDC00远征军岗哨|r
step << Alliance
.goto Hellfire Peninsula,56.6,66.5
.accept 10047 >>接任务: |cFFFCDC00荣耀之路|r
step << Alliance
.goto Hellfire Peninsula,64.5,49.6,10,0
.goto Hellfire Peninsula,54.6,50.4,10,0
.use 25889
>>在荣耀之路发现的被践踏的骷髅上使用德莱尼圣水。
.complete 10047,1
step << Alliance
.goto Hellfire Peninsula,56.6,66.6
.turnin 10047 >>交任务: |cFF00FF25荣耀之路|r
step << Alliance
.goto Hellfire Peninsula,23.0,40.4
>>前往Hellfire半岛西部
.accept 9390 >>接任务: |cFFFCDC00寻找瑟丹|r
step << Alliance
.goto Hellfire Peninsula,26.8,37.6
.turnin 9390 >>交任务: |cFF00FF25寻找瑟丹|r
step << Alliance
.reputation 946,friendly >>与荣誉保持友好，这样您就可以在发布时提交获得米伦的信任。通过垃圾地牢做到这一点，以减少任务损失。
step << Horde
.goto Zangarmarsh,85.2,54.6
.accept 9774 >>接任务: |cFFFCDC00厚重多头蛇鳞片|r
step << Horde
.goto Zangarmarsh,84.1,39.0,80,0
.goto Zangarmarsh,85.2,54.6,80,0
.goto Zangarmarsh,80.1,34.3,80,0
.goto Zangarmarsh,81.0,41.3
>>杀死该地区的九头蛇并掠夺其鳞片。
*They do NOT share spawns with the Giants.
.complete 9774,1
step << Horde
.goto Zangarmarsh,85.2,54.6
.turnin 9774 >>交任务: |cFF00FF25厚重多头蛇鳞片|r
step
.goto Zangarmarsh,78.4,62.0
.accept 9716 >>接任务: |cFFFCDC00暗泽湖的异常|r
step
.goto Zangarmarsh,70.8,81.3
.complete 9716,1
step
.goto Zangarmarsh,78.4,62.0
.turnin 9716 >>交任务: |cFF00FF25暗泽湖的异常|r
.accept 9718 >>接任务: |cFFFCDC00乌鸦的飞翔|r
step
.goto Zangarmarsh,78.4,62.0
.use 25465 >>使用风暴护身符，等待任务完成。需要2分30秒，稍作伸展休息：)
.complete 9718,1
step
.goto Zangarmarsh,78.4,62.0
.turnin 9718 >>交任务: |cFF00FF25乌鸦的飞翔|r
.accept 9720 >>接任务: |cFFFCDC00恢复平衡|r
step << skip
#label schemmy
.itemcount 24330,1
.use 24330 >>使用包中的排水示意图接受任务
.accept 9731 >>接任务: |cFFFCDC00抽水泵结构图|r
step
.goto Zangarmarsh,70.6,80.3
.use 24355 >>使用铁藤种子禁用Umbrafen Lake的控制台。
.complete 9720,1
step
.goto Zangarmarsh,25.2,43.6
.use 24355 >>使用铁藤种子禁用马歇尔莱克的控制台。
.complete 9720,2
step << skip
#requires schemmy
.itemcount 24330,1
.goto Zangarmarsh,50.4,40.9
>>探索足够深的排水沟以完成任务。
.complete 9731,1
step
.goto Zangarmarsh,62.0,40.8
.use 24355 >>使用铁藤种子在蛇湖禁用。
.complete 9720,3
step
.goto Zangarmarsh,63.1,64.1
.use 24355 >>使用铁藤种子在泻湖禁用。
.complete 9720,4
step
.goto Zangarmarsh,78.4,62.0
.turnin 9720 >>交任务: |cFF00FF25恢复平衡|r
step << skip
#requires schemmy
.itemcount 24330,1
.goto Zangarmarsh,78.4,62.0
.turnin 9731 >>交任务: |cFF00FF25抽水泵结构图|r
step
#label thickysticky
.goto Terokkar Forest,44.4,26.2 
.accept 9968 >>接任务: |cFFFCDC00奇怪的能量|r
.accept 9971 >>接任务: |cFFFCDC00树林中的线索|r
step
#sticky
#requires thickysticky
.goto Terokkar Forest,45.1,21.8,40,0
.goto Terokkar Forest,44.4,30.8,40,0
.goto Terokkar Forest,45.1,21.8
>>杀死Terromoth和Vicious Terromotth以获取样本。
*Terromoths spawn on the south side, Vicious Terrormoths spawn north in the village.
.complete 9968,2
.complete 9968,1
step
.goto Terokkar Forest,45.1,21.8
>>与客栈地板上的奇怪物体互动。
.complete 9971,1
step
#requires thickysticky
.goto Terokkar Forest,44.4,26.2 
.turnin 9968 >>交任务: |cFF00FF25奇怪的能量|r
.turnin 9971 >>交任务: |cFF00FF25树林中的线索|r

step
.goto Terokkar Forest,44.4,26.2 
.accept 9978 >>接任务: |cFFFCDC00不择手段|r
step
.goto Terokkar Forest,38.3,26.6,80,0
.goto Terokkar Forest,50.3,29.0,80,0
.goto Terokkar Forest,38.3,26.6
.line Terokkar Forest,38.3,26.6,40.6,25.5,47.2,27.0,50.3,29.0
.skipgossip
>>在路上找到Empoor，和他战斗，说服他告诉你他知道什么。
.unitscan Empoor
.turnin 9978 >>交任务: |cFF00FF25不择手段|r
.accept 9979 >>接任务: |cFFFCDC00星界商人拉斯莱|r
step << Horde
.goto Terokkar Forest,48.8,45.6
.accept 10000 >>接任务: |cFFFCDC00不受欢迎者|r
step << Horde
.goto Terokkar Forest,67.4,51.8
>>杀死该地区的翘皮狮子
.complete 10000,1 
step << Horde
.goto Terokkar Forest,63.4,42.6
.turnin 10000 >>交任务: |cFF00FF25不受欢迎者|r
step << Alliance
.goto Terokkar Forest,58.2,54.8
.accept 9998 >>接任务: |cFFFCDC00野蛮的邻居|r
step << Alliance
.goto Terokkar Forest,67.4,51.8
>>杀死该地区的翘皮狮子
.complete 9998,1 
step << Alliance
.goto Terokkar Forest,69.6,44.2
.turnin 9998 >>交任务: |cFF00FF25野蛮的邻居|r
step
.goto Shattrath City,72.4,31.6
.turnin 9979 >>交任务: |cFF00FF25星界商人拉斯莱|r
.accept 10112 >>接任务: |cFFFCDC00私人事务|r
step
.goto Terokkar Forest,31.6,42.6
>>杀死并掠夺斯基提亚暴徒的赃物。
.complete 10112,1
step
.goto Shattrath City,72.2,30.9
.turnin 10112 >>交任务: |cFF00FF25私人事务|r
step
.goto Shattrath City,72.2,30.9
.accept 9990 >>接任务: |cFFFCDC00调查图雷姆|r
step
>>在废墟中收集密封的盒子。
.goto Terokkar Forest,54.0,30.0
.complete 9990,1
step << Horde
.goto Terokkar Forest,44.4,26.2 
.turnin 9990 >>交任务: |cFF00FF25调查图雷姆|r
.accept 9995 >>接任务: |cFFFCDC00这些东西是什么？|r
step << Alliance
.goto Terokkar Forest,44.4,26.2 
.turnin 9990 >>交任务: |cFF00FF25调查图雷姆|r
.accept 9994 >>接任务: |cFFFCDC00这些东西是什么？|r
step << Horde
.goto Terokkar Forest,50.0,45.8
.turnin 9995 >>交任务: |cFF00FF25这些东西是什么？|r
.accept 10448 >>接任务: |cFFFCDC00向裂石营地报到|r
step << Horde
.goto Terokkar Forest,50.0,44.8
.accept 9993 >>接任务: |cFFFCDC00奥雷巴油|r
step << Horde
#sticky
#completewith endofseedoil
#label seedoil
>>在特罗卡森林的树木周围收集木兰籽。
* They look like little blue crystals.
.complete 9993,1
step << Horde
.goto Terokkar Forest,63.2,42.4
.turnin 10448 >>交任务: |cFF00FF25向裂石营地报到|r
.accept 9997 >>接任务: |cFFFCDC00攻击火翼岗哨|r
step << Alliance
.goto Terokkar Forest,57.0,53.6
.turnin 9994 >>交任务: |cFF00FF25这些东西是什么？|r
.accept 10444 >>接任务: |cFFFCDC00奥蕾莉亚岗哨|r
step << Alliance
.goto Terokkar Forest,69.6,44.0
.turnin 10444 >>交任务: |cFF00FF25奥蕾莉亚岗哨|r
.accept 9996 >>接任务: |cFFFCDC00攻击火翼岗哨|r
step << Alliance
.goto Terokkar Forest,71.6,37.8
>>杀死火翼防御者、血矮人和术士。
.complete 9996,1
.complete 9996,2
.complete 9996,3
step << Horde
.goto Terokkar Forest,71.6,37.8
>>杀死火翼防御者、血矮人和术士。
.complete 9997,1
.complete 9997,2
.complete 9997,3
step << Alliance
.goto Terokkar Forest,69.6,44.0
.turnin 9996 >>交任务: |cFF00FF25攻击火翼岗哨|r
.accept 10446 >>接任务: |cFFFCDC00终极密码|r
step << Horde
.goto Terokkar Forest,63.2,42.4
.turnin 9997 >>交任务: |cFF00FF25攻击火翼岗哨|r
.accept 10447 >>接任务: |cFFFCDC00终极密码|r
step
#sticky
#completewith endofseedoil
.goto Terokkar Forest,73.6,36.0
>>飞到塔顶
step << Alliance
.goto Terokkar Forest,73.8,35.8
>>杀掉莎斯·沃尔登以获得最终密码。
.collect 29912,1,10446,1
step << Horde
.goto Terokkar Forest,73.8,35.8
>>杀掉莎斯·沃尔登以获得最终密码。
.collect 29912,1,10447,1
step << Horde
.goto Terokkar Forest,71.3,37.4
.use 29912 >>点击Firewing Point中心的柱子
.complete 10447,1
step << Alliance
.goto Terokkar Forest,71.3,37.4
.use 29912 >>点击Firewing Point中心的柱子
.complete 10446,1
step << Horde
.goto Terokkar Forest,50.0,45.8
.turnin 10447 >>交任务: |cFF00FF25终极密码|r
step << Alliance
.goto Terokkar Forest,57.0,53.5
.turnin 10446 >>交任务: |cFF00FF25终极密码|r
step << Horde
#requires seedoil
.goto Terokkar Forest,50.1,44.9
.turnin 9993 >>交任务: |cFF00FF25奥雷巴油|r
step
#label endofseedoil
.goto Terokkar Forest,49.8,76.2
.accept 10920 >>接任务: |cFFFCDC00复仇之战|r
step
.goto Terokkar Forest,51.8,78.8,30,0
.goto Terokkar Forest,55.6,61.2
>>沿着骨废料的边缘杀死恐惧方寡妇。
.complete 10920,1
step
.goto Terokkar Forest,49.8,76.2
.turnin 10920 >>交任务: |cFF00FF25复仇之战|r
.accept 10921 >>接任务: |cFFFCDC00泰罗卡狼蛛|r
step
.goto Terokkar Forest,54.0,81.6
>>杀死特洛克卡兰图拉。这是一个精英任务，你可能需要帮助。
.complete 10921,1
step
.goto Terokkar Forest,49.8,76.2
.turnin 10921 >>交任务: |cFF00FF25泰罗卡狼蛛|r
step
.goto Terokkar Forest,35.0,65.2
>>在奥切奈地穴入口附近找到哈雷。
.accept 10227 >>接任务: |cFFFCDC00我看到了死德莱尼人|r
step
.goto Terokkar Forest,35.1,66.0
.turnin 10227 >>交任务: |cFF00FF25我看到了死德莱尼人|r
.accept 10228 >>接任务: |cFFFCDC00伊瑟基尔|r
step << Horde
.goto Nagrand,55.6,37.6
>>前往: |cFFDB2EEF纳格兰|r
.accept 9888 >>接任务: |cFFFCDC00落魄的领袖|r
step << Horde
.goto Terokkar Forest,19.8,60.8
.turnin 9888 >>交任务: |cFF00FF25落魄的领袖|r
.accept 9889 >>接任务: |cFFFCDC00别杀那个胖家伙！|r
step << Horde
.goto Terokkar Forest,19.8,62.6
>>杀死10名巨石拳入侵者。不要和无情的乌克尔战斗。
.complete 9889,1
step << Horde
.goto Terokkar Forest,20.0,63.4
>>殴打Unkor直到他提交。
.complete 9889,2
.turnin 9889 >>交任务: |cFF00FF25别杀那个胖家伙！|r
.accept 9890 >>接任务: |cFFFCDC00成功了！|r
step << Horde
.goto Terokkar Forest,19.6,60.8
.turnin 9890 >>交任务: |cFF00FF25成功了！|r
.accept 9891 >>接任务: |cFFFCDC00吉尔拉斯这个懦夫！|r
step << Horde
.goto Nagrand,55.6,37.6
.turnin 9891 >>交任务: |cFF00FF25吉尔拉斯这个懦夫！|r
.accept 9906 >>接任务: |cFFFCDC00粗暴的信号|r
step << Horde
.goto Nagrand,76.4,61.6,20,0
.goto Nagrand,74.6,69.6
>>杀死巨石拳食人魔。
.complete 9906,1
.complete 9906,2
step << Horde
.goto Nagrand,55.6,37.6
.turnin 9906 >>交任务: |cFF00FF25粗暴的信号|r
.accept 9907 >>接任务: |cFFFCDC00大胆的攻势|r
step << Horde
.goto Nagrand,49.6,56.4
.goto Nagrand,40.8,31.6
>>杀死巨石拳食人魔。
.complete 9907,1
.complete 9907,2
step << Horde
.goto Nagrand,55.6,37.6
.turnin 9907 >>交任务: |cFF00FF25大胆的攻势|r
.accept 10107 >>接任务: |cFFFCDC00外交手段|r
step << Horde
.goto Nagrand,73.8,62.6
>>与Lantressor对话
.skipgossip
.turnin 10107 >>交任务: |cFF00FF25外交手段|r
.accept 9928 >>接任务: |cFFFCDC00欺诈所需的军备|r
.accept 9927 >>接任务: |cFFFCDC00无情的计谋|r
step << Horde
.goto Nagrand,69.4,81.4
>>从堡垒周围的箱子里捡起基尔索洛武器。
.complete 9928,1
>>杀死基尔的敌人，在他们的尸体上贴上横幅。你不必瞄准尸体。
.use 25552
.complete 9927,1
step << Horde
.goto Nagrand,73.8,62.6
.turnin 9928 >>交任务: |cFF00FF25欺诈所需的军备|r
.turnin 9927 >>交任务: |cFF00FF25无情的计谋|r
.accept 9931 >>接任务: |cFFFCDC00以牙还牙|r
.accept 9932 >>接任务: |cFFFCDC00尸证|r
step << Horde
.goto Nagrand,54.8,39.8
.accept 9864 >>接任务: |cFFFCDC00失踪的战斗小队|r
step << Horde
#sticky
.goto Nagrand,46.7,24.3
>>站在柴堆旁边时，使用湿羊毛毯。
* Boulderfist Saboteurs will spawn, protect them if any ogres aggro to them.
.use 25658
.complete 9932,1
step << Horde
.goto Nagrand,46.0,20.2
>>杀死Warmaul食人魔，在他们的尸体上贴上横幅。你不必瞄准尸体。
.use 25555
.complete 9931,1
step << Horde
.goto Nagrand,32.4,36.0
.turnin 9864 >>交任务: |cFF00FF25失踪的战斗小队|r
.accept 9865 >>接任务: |cFFFCDC00我们曾是战士|r
step << Horde
.goto Nagrand,73.8,62.6
.turnin 9931 >>交任务: |cFF00FF25以牙还牙|r
.turnin 9932 >>	Turn in Body of Evidence.
step << Horde
.goto Nagrand,32.6,42.6
>>杀死黑血清道夫和掠夺者。
.complete 9865,1
.complete 9865,2
step << Horde
.goto Nagrand,32.4,36.0
.turnin 9865 >>交任务: |cFF00FF25我们曾是战士|r
step << Alliance
.goto Nagrand,55.0,70.6
.accept 9917 >>接任务: |cFFFCDC00是我眼花了？|r
step << Alliance
.goto Nagrand,62.8,72.4
>>为计划杀死巨石拳猎人。
.complete 9917,1
step << Alliance
.goto Nagrand,55.0,70.6
.turnin 9917 >>交任务: |cFF00FF25是我眼花了？|r
.accept 9918 >>接任务: |cFFFCDC00这是我的地盘！|r
step << Alliance
.goto Nagrand,62.6,71.6
>>殴打Lump直到他投降，然后和他说话。
.skipgossip
.complete 9918,1
step << Alliance
.goto Nagrand,55.0,70.6
.turnin 9918 >>交任务: |cFF00FF25这是我的地盘！|r
.accept 9920 >>接任务: |cFFFCDC00击碎者姆摩尔|r
step << Alliance
.goto Nagrand,54.6,72.2
.turnin 9920 >>交任务: |cFF00FF25击碎者姆摩尔|r
.accept 9921 >>接任务: |cFFFCDC00火刃废墟|r
step << Alliance
.goto Nagrand,74.6,68.6,40,0
>>杀死营地周围的巨石拳食人魔
.complete 9921,1
.complete 9921,2
step << Alliance
.goto Nagrand,54.6,72.2
.turnin 9921 >>交任务: |cFF00FF25火刃废墟|r
.accept 9922 >>接任务: |cFFFCDC00纳格兰的峡谷|r
step << Alliance
.goto Nagrand,50.2,56.8,40,0
.goto Nagrand,40.8,31.6,40,0
>>杀死营地周围的巨石拳食人魔
.complete 9922,1
.complete 9922,2
step << Alliance
.goto Nagrand,54.6,72.2
.turnin 9922 >>交任务: |cFF00FF25纳格兰的峡谷|r
.accept 10108 >>接任务: |cFFFCDC00外交手段|r
step << Alliance
.goto Nagrand,55.4,68.8
.accept 11044 >>接任务: |cFFFCDC00灾难的幻象|r
step << Alliance
.goto Nagrand,73.8,62.6
>>与Lantresor交谈。
.skipgossip
.complete 10108,1
.turnin 10108 >>交任务: |cFF00FF25外交手段|r
.accept 9928 >>接任务: |cFFFCDC00欺诈所需的军备|r
.accept 9927 >>接任务: |cFFFCDC00无情的计谋|r
step << Alliance
.goto Nagrand,69.4,81.4
>>从堡垒周围的箱子里捡起基尔索洛武器。
.complete 9928,1
>>杀死基尔索洛的敌人并种植横幅。
.use 25552
.complete 9927,1
step << Alliance
.goto Nagrand,73.8,62.6
.turnin 9928 >>交任务: |cFF00FF25欺诈所需的军备|r
.turnin 9927 >>交任务: |cFF00FF25无情的计谋|r
.accept 9931 >>接任务: |cFFFCDC00以牙还牙|r
.accept 9932 >>接任务: |cFFFCDC00尸证|r
step << Alliance
#sticky
.goto Nagrand,46.7,24.3
>>站在柴堆旁边时，使用湿羊毛毯。一旦破坏者产卵，保护他们。
.use 25658
.complete 9932,1
step << Alliance
.goto Nagrand,46.0,20.2
>>杀死Warmaul食人魔并种植横幅。
.use 25555
.complete 9931,1
step << Alliance
.goto Nagrand,73.8,62.6
.turnin 9931 >>交任务: |cFF00FF25以牙还牙|r
.turnin 9932 >>	Turn in Body of Evidence.
step
.goto Nagrand,27.4,43.0
>>确保您已下马。
.accept 9991 >>接任务: |cFFFCDC00侦查大地|r
step
>>飞行时侦察锻造营地。这大约需要2分钟，可以自由起身伸展：D
.complete 9991,1
.turnin 9991 >>交任务: |cFF00FF25侦查大地|r
.accept 9999 >>接任务: |cFFFCDC00争取时间|r
step
.goto Nagrand,24.4,37.4,30,0
.goto Nagrand,19.6,51.4
>>杀死锻造营地周围的恶魔。这是一个精英任务，你可能需要帮助。
.complete 9999,1
.complete 9999,2
.complete 9999,3
step
.goto Nagrand,27.4,43.0
.turnin 9999 >>交任务: |cFF00FF25争取时间|r
.accept 10001 >>接任务: |cFFFCDC00主规划师|r
step
.goto Nagrand,23.6,34.8
>>杀死莫阿尔格总规划师以获得蓝图。
.complete 10001,1
step
.goto Nagrand,27.4,43.0
.turnin 10001 >>交任务: |cFF00FF25主规划师|r
.accept 10004 >>接任务: |cFFFCDC00耐心与理解|r
step
.goto Shattrath City,77.2,34.8
.skipgossip
>>前往沙塔斯。与萨尔萨拉宾谈谈，与他战斗。 << !Mage
>>前往: |cFFDB2EEF沙塔斯城|r. Speak with Sal'salabim to fight him. << Mage
.turnin 10004 >>交任务: |cFF00FF25耐心与理解|r
.accept 10009 >>接任务: |cFFFCDC00大打出手|r
step
.goto Shattrath City,75.0,31.8
.skipgossip
>>向醉汉雷利克讨债。
.complete 10009,1
step
.goto Shattrath City,61.2,49.6
>>找到以西结，逆时针绕着建筑走。
.unitscan Ezekiel
.turnin 10228 >>交任务: |cFF00FF25伊瑟基尔|r
.accept 10231 >>接任务: |cFFFCDC00什么书？我没见过什么书|r
step
.goto Shattrath City,43.6,29.4
.skipgossip
>>去打败肮脏的拉里。如果他死了，你可能需要等待他重生。
* He is an elite, you may need help.
.complete 10231,1
step
.goto Shattrath City,43.6,29.4
.turnin 10231 >>交任务: |cFF00FF25什么书？我没见过什么书|r
step
.goto Zangarmarsh,81.0,91.6
.skipgossip
>>从库什库什那里得到债务。
.complete 10009,2
step << Alliance
.goto Shadowmoon Valley,39.4,53.6
.turnin 11044 >>交任务: |cFF00FF25灾难的幻象|r
.accept 10562 >>接任务: |cFFFCDC00兵临城下！|r
step << Alliance
.goto Shadowmoon Valley,36.4,56.8
.accept 10680 >>接任务: |cFFFCDC00古尔丹之手|r
step << Alliance
.goto Shadowmoon Valley,38.8,54.2
.accept 10569 >>接任务: |cFFFCDC00斯克瑟隆废墟|r
step << Alliance
.goto Shadowmoon Valley,39.0,50.0
>>向北去杀了地狱，守卫周围的人并不总是值得称赞
.complete 10562,1 
step << Alliance
.goto Shadowmoon Valley,39.4,53.6
.turnin 10562 >>交任务: |cFF00FF25兵临城下！|r
.accept 10563 >>接任务: |cFFFCDC00前往军团要塞|r
step << Alliance
.goto Shadowmoon Valley,23.4,36.8
.use 30638 >>使用“诡计盒”在通信设备旁伪装自己。这个角色扮演大约需要一分钟。
.complete 10563,1 
step << Alliance
.goto Shadowmoon Valley,39.4,53.6
.turnin 10563 >>交任务: |cFF00FF25前往军团要塞|r
.accept 10572 >>接任务: |cFFFCDC00制造炸弹|r
step << Alliance
.goto Shadowmoon Valley,26.2,41.1,40,-1
.goto Shadowmoon Valley,22.2,35.4,40,-1
>>从地面上掠夺恶魔收割者能量核心和装甲板。电源核心在水下。
.complete 10572,1 
.complete 10572,2 
step << Alliance
.goto Shadowmoon Valley,39.4,53.6
.turnin 10572 >>交任务: |cFF00FF25制造炸弹|r
.accept 10564 >>接任务: |cFFFCDC00炸毁地狱火！|r
step << Alliance
.goto Shadowmoon Valley,22.6,39.9
.use 30614 >>使用绿色圆圈中的炸弹。如果你没有马上看到它，它每5秒就会脉冲一次。
.complete 10564,1 
step << Alliance
.goto Shadowmoon Valley,39.4,53.6
.turnin 10564 >>交任务: |cFF00FF25炸毁地狱火！|r
.accept 10573 >>接任务: |cFFFCDC00死亡熔炉|r
step << Alliance
.goto Shadowmoon Valley,40.4,41.4
.turnin 10573 >>交任务: |cFF00FF25死亡熔炉|r
.accept 10582 >>接任务: |cFFFCDC00暗影议会的爪牙|r
step << Alliance
.goto Shadowmoon Valley,40.0,39.0
>>冲进洞穴，杀死该地区的死亡堡敌人
.complete 10582,1 
.complete 10582,2 
step << Alliance
.goto Shadowmoon Valley,40.4,41.4
>>返回塔楼
.turnin 10582 >>交任务: |cFF00FF25暗影议会的爪牙|r
.accept 10583 >>接任务: |cFFFCDC00弗兰尼斯的命运|r
.accept 10585 >>接任务: |cFFFCDC00召唤之厅|r
step << Alliance
#sticky
#label elementald2
.goto Shadowmoon Valley,40.0,39.0
>>杀死死亡堡史密斯和修补匠。掠夺他们作为元素置换器
.collect 30672,1,10585,1
step << Alliance
.goto Shadowmoon Valley,40.0,38.0,60,0
.goto Shadowmoon Valley,34.0,39.0
>>返回下面的洞穴。继续穿过大桥，然后向右穿过地狱。与Flanis的尸体交谈
.unitscan Flanis
.skipgossip
.collect 30658,1,10583,1
step << Alliance
#requires elementald2
.goto Shadowmoon Valley,37.0,38.0
.use 30672 >>前往低层，然后使用元素置换器扰乱召唤师斯卡塔克斯所在的仪式
.unitscan Summnoner Skartax
.complete 10585,1 
step << Alliance
.goto Shadowmoon Valley,40.4,41.4
>>返回塔楼
.turnin 10583 >>交任务: |cFF00FF25弗兰尼斯的命运|r
.turnin 10585 >>交任务: |cFF00FF25召唤之厅|r
.accept 10586 >>接任务: |cFFFCDC00击败战争使者！|r
step << Alliance
.goto Shadowmoon Valley,39.0,46.0,20,0
.goto Shadowmoon Valley,37.4,42.6
.use 30688 >>返回上层洞穴，穿过大桥，然后用钥匙打开左侧的门廊。杀死房间后面的战使拉祖恩，并为他的命令洗劫他。
.unitscan Warbringer Razuun
.complete 10586,1 
.collect 30689,1,10586,1
step << Alliance
.goto Shadowmoon Valley,39.4,53.6
.turnin 10586 >>交任务: |cFF00FF25击败战争使者！|r
.accept 10589 >>接任务: |cFFFCDC00控制权|r
step << Alliance
.goto Shadowmoon Valley,42.2,45.0
.turnin 10680 >>交任务: |cFF00FF25古尔丹之手|r
.accept 10458 >>接任务: |cFFFCDC00愤怒的火灵和地灵|r
step << Alliance
.goto Shadowmoon Valley,46.7,46.1
.use 30094 >>使用精灵图腾，杀死图腾旁边的火/土元素。
*The range is around 25 yards for the totem to work.
.complete 10458,1 
.complete 10458,2 
step << Alliance
.goto Shadowmoon Valley,42.1,45.1
.turnin 10458 >>交任务: |cFF00FF25愤怒的火灵和地灵|r
.accept 10480 >>接任务: |cFFFCDC00愤怒的水灵|r
step << Alliance
.goto Shadowmoon Valley,51.4,27.5
.use 30094 >>使用你袋子里的精灵图腾，杀死图腾旁边的水元素
*The range is around 25 yards for the totem to work.
.complete 10480,1 
step << Alliance
.goto Shadowmoon Valley,42.2,45.1
.turnin 10480 >>交任务: |cFF00FF25愤怒的水灵|r
.accept 10481 >>接任务: |cFFFCDC00愤怒的气灵|r
step << Alliance
.goto Shadowmoon Valley,60.8,66.6
.use 30094 >>使用你袋子里的精灵图腾，杀死图腾旁边的空气元素。一些元素也可以在北方的尼日翼原野产卵。
*The range is around 25 yards for the totem to work.
.complete 10481,1 
step << Alliance
.goto Shadowmoon Valley,42.3,45.0
.turnin 10481 >>交任务: |cFF00FF25愤怒的气灵|r
.accept 10513 >>接任务: |cFFFCDC00欧鲁诺克-裂心|r
step << Alliance
.goto Shadowmoon Valley,22.4,33.4
>>杀死莫阿尔格兵器匠，并将其掠夺以控制军团的电信员
.collect 30695,1,10589,1
step << Alliance
.goto Shadowmoon Valley,37.4,30.4
>>杀死该地区的黑暗秘会暴徒并掠夺他们的日记页
.complete 10569,1 
.complete 10569,2 
.complete 10569,3 
step << Alliance
.goto Shadowmoon Valley,39.4,53.6
.turnin 10589 >>交任务: |cFF00FF25控制权|r
.accept 10766 >>接任务: |cFFFCDC00登陆场：灾难|r
step << Alliance
.goto Shadowmoon Valley,38.8,54.2
.turnin 10569 >>交任务: |cFF00FF25斯克瑟隆废墟|r
.accept 10759 >>接任务: |cFFFCDC00寻找逃亡者|r
step << Alliance
.goto Shadowmoon Valley,35.4,41.8
.turnin 10759 >>交任务: |cFF00FF25寻找逃亡者|r
.accept 10777 >>接任务: |cFFFCDC00阿斯迦的图腾|r
step << Alliance
.goto Shadowmoon Valley,40.0,30.8
>>找到Asghar，杀掉并掠夺他的图腾
.unitscan Asghar
.complete 10777,1 
step << Alliance
.goto Shadowmoon Valley,40.8,22.2
.turnin 10766 >>交任务: |cFF00FF25登陆场：灾难|r
.accept 10606 >>接任务: |cFFFCDC00魔能机甲维修窍门大全|r
step << Alliance
.goto Shadowmoon Valley,39.6,19.6
>>杀死古特里克医生，抢走他的钥匙。
.unitscan Doctor Gutrick
.collect 30712,1,10606,1
step << Alliance
.goto Shadowmoon Valley,39.6,19.6
.use 30712 >>使用钥匙打开医生保险箱，检索《收割者维护艺术》
.collect 30713,1,10606,1
step << Alliance
.goto Shadowmoon Valley,40.8,22.2
.turnin 10606 >>交任务: |cFF00FF25魔能机甲维修窍门大全|r
.accept 10612 >>接任务: |cFFFCDC00狂暴的魔能机甲|r
step << Alliance
.goto Shadowmoon Valley,40.8,22.2
>>使用地狱收割者控制台摧毁60个死亡锻造地狱
.complete 10612,1 
step << Alliance
.goto Shadowmoon Valley,40.8,22.2
.turnin 10612 >>交任务: |cFF00FF25狂暴的魔能机甲|r
step << Horde
.goto Shadowmoon Valley,30.4,32.4
.accept 10595 >>接任务: |cFFFCDC00兵临城下！|r
step << Horde
.goto Shadowmoon Valley,29.8,27.8
.accept 10624 >>接任务: |cFFFCDC00阴森的历史|r
step << Horde
.goto Shadowmoon Valley,31,29.8
.accept 10760 >>接任务: |cFFFCDC00斯克瑟隆废墟|r
step << Horde
#sticky
#completewith next
>>在杀死无间道袭击者的同时掠夺燃烧着的灰烬堆
.complete 10624,1 
step << Horde
.goto Shadowmoon Valley,32.0,32.0,80,0
.goto Shadowmoon Valley,30.7,36.2,60,0
.goto Shadowmoon Valley,32.0,32.0
>>杀死无间道攻击者
.complete 10595,1 
step << Horde
.goto Shadowmoon Valley,32.2,38.1,60,0
>>完成对不断燃烧的灰堆的掠夺
.complete 10624,1 
step << Horde
.goto Shadowmoon Valley,37.4,30.4
>>杀死该地区的黑暗秘会暴徒并掠夺他们的日记页
.complete 10760,1 
.complete 10760,2 
.complete 10760,3 
step << Horde
.goto Shadowmoon Valley,29.8,27.8
.turnin 10624 >>交任务: |cFF00FF25阴森的历史|r
.accept 10625 >>接任务: |cFFFCDC00幽灵眼镜|r
step << Horde
.goto Shadowmoon Valley,29.8,27.8
.use 30719 >>戴上护目镜，杀死镇上的幽灵
.complete 10625,1 
step << Horde
.goto Shadowmoon Valley,29.8,27.8
>>确保重新装备您的普通头盔
.turnin 10625 >>交任务: |cFF00FF25幽灵眼镜|r
step << Horde
.goto Shadowmoon Valley,31.0,29.8
.turnin 10760 >>交任务: |cFF00FF25斯克瑟隆废墟|r
.accept 10761 >>接任务: |cFFFCDC00寻找逃亡者|r
step << Horde
.goto Shadowmoon Valley,30.4,32.4
.turnin 10595 >>交任务: |cFF00FF25兵临城下！|r
.accept 10596 >>接任务: |cFFFCDC00前往军团要塞|r
step << Horde
.goto Shadowmoon Valley,23.4,36.8
.use 30638 >>使用“诡计盒”在通信设备旁伪装自己。这个角色扮演大约需要一分钟。
.complete 10596,1 
step << Horde
.goto Shadowmoon Valley,30.4,32.4
.turnin 10596 >>交任务: |cFF00FF25前往军团要塞|r
.accept 10597 >>接任务: |cFFFCDC00制造炸弹|r
step << Horde
.goto Shadowmoon Valley,26.2,41.1,20,-1
.goto Shadowmoon Valley,22.2,35.4,20,-1
>>掠夺恶魔收割者能量核心和装甲板。电源核心在水下。
.complete 10597,1 
.complete 10597,2 
step << Horde
.goto Shadowmoon Valley,30.4,32.4
.turnin 10597 >>交任务: |cFF00FF25制造炸弹|r
.accept 10598 >>接任务: |cFFFCDC00炸毁地狱火！|r
step << Horde
.goto Shadowmoon Valley,22.6,39.9
.use 30614 >>使用绿色圆圈中的fel炸弹。如果你没有马上看到它，它每5秒就会脉冲一次。
.complete 10598,1 
step << Horde
.goto Shadowmoon Valley,30.4,32.4
.turnin 10598 >>交任务: |cFF00FF25炸毁地狱火！|r
.accept 10599 >>接任务: |cFFFCDC00死亡熔炉|r
step << Horde
.goto Shadowmoon Valley,38.6,38.2
>>向屋顶走去
.turnin 10599 >>交任务: |cFF00FF25死亡熔炉|r
.accept 10600 >>接任务: |cFFFCDC00暗影议会的爪牙|r
step << Horde
.goto Shadowmoon Valley,40.0,39.0
>>冲进洞穴，杀死该地区的死亡堡敌人
.complete 10600,1 
.complete 10600,2 
step << Horde
.goto Shadowmoon Valley,38.6,38.2
.turnin 10600 >>交任务: |cFF00FF25暗影议会的爪牙|r
.accept 10601 >>接任务: |cFFFCDC00卡格罗什的命运|r
.accept 10602 >>接任务: |cFFFCDC00召唤之厅|r
step << Horde
#sticky
#label elementald
.goto Shadowmoon Valley,40.0,39.0
>>杀死死亡堡史密斯和修补匠。掠夺他们作为元素置换器
.collect 30672,1,10602,1
step << Horde
.goto Shadowmoon Valley,40.0,39.0,40,0
.goto Shadowmoon Valley,35.2,40.1
.unitscan Kagrosh
.skipgossip
>>返回下面的洞穴。继续穿过大桥，然后向右穿过地狱。与兽人的尸体对话并带走他的背包
.collect 30659,1,10601,1
step << Horde
#requires elementald
.goto Shadowmoon Valley,37.0,38.0
.use 30672 >>前往低层，然后使用元素置换器扰乱召唤师斯卡塔克斯所在的仪式
.unitscan Summnoner Skartax
.complete 10602,1 
step << Horde
.goto Shadowmoon Valley,38.6,38.2
>>返回塔顶外侧
.turnin 10601 >>交任务: |cFF00FF25卡格罗什的命运|r
.turnin 10602 >>交任务: |cFF00FF25召唤之厅|r
.accept 10603 >>接任务: |cFFFCDC00击败战争使者！|r
step << Horde
.goto Shadowmoon Valley,40.0,39.0,40,0
.goto Shadowmoon Valley,38.9,46.7
.use 30688 >>回到你杀死史密斯和修补匠的洞穴。用钥匙打开房间左侧的门廊，然后杀死战使拉祖并为他的命令洗劫他。
.unitscan Warbringer Razuun
.complete 10603,1 
.collect 30689,1,10603,1
step << Horde
>>返回塔楼
.goto Shadowmoon Valley,30.4,32.4
.turnin 10603 >>交任务: |cFF00FF25击败战争使者！|r
.accept 10604 >>接任务: |cFFFCDC00控制权|r
step << Horde
.goto Shadowmoon Valley,35.4,41.8
.turnin 10761 >>交任务: |cFF00FF25寻找逃亡者|r
.unitscan Parshah
.accept 10777 >>接任务: |cFFFCDC00阿斯迦的图腾|r
step << Horde
.goto Shadowmoon Valley,40.0,30.8
>>找到Asghar，杀掉并掠夺他的图腾
.unitscan Asghar
.complete 10777,1 
step << Horde
.goto Shadowmoon Valley,28.4,26.6
.accept 10681 >>接任务: |cFFFCDC00古尔丹之手|r
step << Horde
.goto Shadowmoon Valley,42.2,45.0
.turnin 10681 >>交任务: |cFF00FF25古尔丹之手|r
.accept 10458 >>接任务: |cFFFCDC00愤怒的火灵和地灵|r
step << Horde
.goto Shadowmoon Valley,46.7,46.1
.use 30094 >>使用精灵图腾，杀死图腾旁边的火/土元素。
*The range is around 25 yards for the totem to work.
.complete 10458,1 
.complete 10458,2 
step << Horde
.goto Shadowmoon Valley,42.1,45.1
.turnin 10458 >>交任务: |cFF00FF25愤怒的火灵和地灵|r
.accept 10480 >>接任务: |cFFFCDC00愤怒的水灵|r
step << Horde
.goto Shadowmoon Valley,51.4,27.5
.use 30094 >>使用你袋子里的精灵图腾，杀死图腾旁边的水元素
*The range is around 25 yards for the totem to work.
.complete 10480,1 
step << Horde
.goto Shadowmoon Valley,42.2,45.1
.turnin 10480 >>交任务: |cFF00FF25愤怒的水灵|r
.accept 10481 >>接任务: |cFFFCDC00愤怒的气灵|r
step << Horde
.goto Shadowmoon Valley,60.8,66.6
.use 30094 >>使用你袋子里的精灵图腾，杀死图腾旁边的空气元素。一些元素也可以在北方的尼日翼原野产卵。
*The range is around 25 yards for the totem to work.
.complete 10481,1 
step << Horde
.goto Shadowmoon Valley,42.3,45.0
.turnin 10481 >>交任务: |cFF00FF25愤怒的气灵|r
.accept 10513 >>接任务: |cFFFCDC00欧鲁诺克-裂心|r
step << Horde
.goto Shadowmoon Valley,22.4,33.4
>>杀死莫阿尔格兵器匠，并将其掠夺以控制军团的电信员
.collect 30695,1,10604,1
step << Horde
.goto Shadowmoon Valley,30.4,32.4
.turnin 10604 >>交任务: |cFF00FF25控制权|r
.accept 10767 >>接任务: |cFFFCDC00登陆场：灾难|r
step << Horde
.goto Shadowmoon Valley,27.4,21.2
.turnin 10767 >>交任务: |cFF00FF25登陆场：灾难|r
.accept 10611 >>接任务: |cFFFCDC00魔能机甲维修窍门大全|r
step << Horde
.goto Shadowmoon Valley,28.9,20.6
>>杀死Maleficus医生，并掠夺他以获取医生的钥匙。
.unitscan Doctor Maleficus
.collect 30712,1,10611,1
step << Horde
.goto Shadowmoon Valley,38.9,20.5
.use 30712 >>使用钥匙打开医生保险箱，检索《收割者维护艺术》
.collect 30713,1,10611,1
step << Horde
.goto Shadowmoon Valley,27.4,21.2
.turnin 10611 >>交任务: |cFF00FF25魔能机甲维修窍门大全|r
.accept 10613 >>接任务: |cFFFCDC00狂暴的魔能机甲|r
step << Horde
.goto Shadowmoon Valley,27.8,19.8
>>使用地狱收割者控制台摧毁60个死亡锻造地狱
* Using the first Fel Reaver ability destroys the Infernals, the rest of the buttons are rather irrelevant.
.complete 10613,1 
step << Horde
.goto Shadowmoon Valley,27.4,21.2
.turnin 10613 >>交任务: |cFF00FF25狂暴的魔能机甲|r
step
.goto Shadowmoon Valley,54.0,23.6
.turnin 10513 >>交任务: |cFF00FF25欧鲁诺克-裂心|r
.accept 10514 >>接任务: |cFFFCDC00历经沧桑......|r
step
.goto Shadowmoon Valley,54.0,16.0
.use 30462 >>站在地上的小植物上，用公猪的口哨让附近的公猪挖出块茎。然后单击它。
* You may need to kill Flayers in the area, so they stop killing the boars near tubers.
.complete 10514,1 
step
.goto Shadowmoon Valley,53.9,23.5
.turnin 10514 >>交任务: |cFF00FF25历经沧桑......|r
.accept 10515 >>接任务: |cFFFCDC00严厉的教训|r
step
.goto Shadowmoon Valley,56.6,17.0
>>摧毁该区域周围的蛋，小心巡逻该区域的大型精英暴徒
.complete 10515,1 
step
.goto Shadowmoon Valley,53.9,23.4
.turnin 10515 >>交任务: |cFF00FF25严厉的教训|r
.accept 10519 >>接任务: |cFFFCDC00诅咒密码 - 真相和历史|r
>>与Oronok交谈
.skipgossip
.complete 10519,1 
step
.goto Shadowmoon Valley,53.9,23.4
.turnin 10519 >>交任务: |cFF00FF25诅咒密码 - 真相和历史|r
.accept 10521 >>接任务: |cFFFCDC00格洛姆托，欧鲁诺克之子|r
.accept 10527 >>接任务: |cFFFCDC00阿托尔，欧鲁诺克之子|r
.accept 10546 >>接任务: |cFFFCDC00伯拉克，欧鲁诺克之子|r
step
.goto Shadowmoon Valley,44.6,23.7
.turnin 10521 >>交任务: |cFF00FF25格洛姆托，欧鲁诺克之子|r
.accept 10522 >>接任务: |cFFFCDC00诅咒密码 - 格洛姆托的命令|r
step
.goto Shadowmoon Valley,46.0,28.2
>>杀死Nagas以获得箱子钥匙，打开箱子直到你洗劫碎片
.complete 10522,1 
step
.goto Shadowmoon Valley,44.6,23.7
.turnin 10522 >>交任务: |cFF00FF25诅咒密码 - 格洛姆托的命令|r
step
.goto Shadowmoon Valley,35.4,41.8
.turnin 10777 >>交任务: |cFF00FF25阿斯迦的图腾|r
.accept 10778 >>接任务: |cFFFCDC00莉安丝魔棒|r
step
.goto Shadowmoon Valley,47.5,57.3
.turnin 10546 >>交任务: |cFF00FF25伯拉克，欧鲁诺克之子|r
.accept 10547 >>接任务: |cFFFCDC00血蓟交易......|r
step
.goto Shadowmoon Valley,45.1,57.4
>>在地上寻找腐烂的鸡蛋，要小心，因为它们会在掠夺时对你造成伤害
.complete 10547,1 
step
.goto Shattrath City,64.1,69.8
>>前往沙塔斯。如果一切就绪，请起火，并设置为沙塔斯。
.turnin 10547 >>交任务: |cFF00FF25血蓟交易......|r
.accept 10550 >>接任务: |cFFFCDC00一捆血蓟|r
step
.isOnQuest 10009
.goto Terokkar Forest,27.2,57.8
.skipgossip
>>从Floon那里获得债务。
.complete 10009,3
step
>>返回影月谷
.goto Shadowmoon Valley,29.6,50.3
.turnin 10527 >>交任务: |cFF00FF25阿托尔，欧鲁诺克之子|r
.accept 10528 >>接任务: |cFFFCDC00恶魔的水晶牢笼|r
step
.goto Shadowmoon Valley,28.0,47.7
>>杀害痛苦女主人加布里萨
.complete 10528,1 
step
.goto Shadowmoon Valley,29.6,50.5
.turnin 10528 >>交任务: |cFF00FF25恶魔的水晶牢笼|r
>>等阿托死了再和他的灵魂谈谈
.accept 10537 >>接任务: |cFFFCDC00洛恩戈鲁，裂心之弓|r
step
.goto Shadowmoon Valley,30.5,50.0
>>杀死并掠夺任务给予者周围的伊利达里暴徒。
* The drop rate is very low, just keep killing
.complete 10537,1 
step
.goto Shadowmoon Valley,29.5,50.5
.turnin 10537 >>交任务: |cFF00FF25洛恩戈鲁，裂心之弓|r
.accept 10540 >>接任务: |cFFFCDC00诅咒密码 - 阿托尔的命令|r
step
.goto Shadowmoon Valley,29.5,57.5
>>当阿托尔的灵魂跟随你时，向东南方向走，在这一带走动，直到阿托尔召唤维尼拉图斯
.complete 10540,1 
>>准备好长期战斗，维尼拉斯的生命值是普通暴徒的3倍
step
.goto Shadowmoon Valley,29.5,50.6
.turnin 10540 >>交任务: |cFF00FF25诅咒密码 - 阿托尔的命令|r
step
.goto Shadowmoon Valley,47.5,57.2
.turnin 10550 >>交任务: |cFF00FF25一捆血蓟|r
.accept 10570 >>接任务: |cFFFCDC00血蓟瘾君子|r
step
.goto Shadowmoon Valley,48.9,57.4
>>在桥的尽头种上一束血丝。回到另一边，等博拉克对你低语后再去攻击。
.complete 10570,1 
step
.goto Shadowmoon Valley,47.6,57.2
.turnin 10570 >>交任务: |cFF00FF25血蓟瘾君子|r
.accept 10576 >>接任务: |cFFFCDC00影月谷的乔装者|r
step
#sticky
#label liantherod
.goto Shadowmoon Valley,47.2,67.0
>>杀死该地区的食蚀暴徒，直到他们丢下Lianthe的钥匙
.complete 10778,1 
step
.goto Shadowmoon Valley,49.6,62.2
>>杀死并掠夺该地区的日食暴徒
.complete 10576,1 
step
#requires liantherod
.goto Shadowmoon Valley,47.5,71.7
>>使用利安特堡垒上的钥匙，掠夺利安特的棍子
.complete 10778,2 
step
.goto Shadowmoon Valley,35.4,41.8
>>转弯处可以从这里沿着公路巡逻
.turnin 10778 >>交任务: |cFF00FF25莉安丝魔棒|r
.accept 10780 >>接任务: |cFFFCDC00斯克瑟隆羽毛|r
step
.goto Shadowmoon Valley,43.7,57.5
>>在地上掠夺羽毛
.complete 10780,1 
step
.goto Shadowmoon Valley,47.6,57.2
.turnin 10576 >>交任务: |cFF00FF25影月谷的乔装者|r
.accept 10577 >>接任务: |cFFFCDC00伊利丹的信使......|r
step
.goto Shadowmoon Valley,46.5,71.9
.skipgossip
>>使用提供的伪装，与2个兽人守护的血精灵交谈
.complete 10577,1 
step
.goto Shadowmoon Valley,47.5,57.2
.turnin 10577 >>交任务: |cFF00FF25伊利丹的信使......|r
.accept 10578 >>接任务: |cFFFCDC00诅咒密码 - 伯拉克的命令|r
step
.goto Shadowmoon Valley,62.6,57.2
>>杀死并掠夺黑暗者鲁尔
* You will need to group for this quest, he is very difficult.
.unitscan Ruul the Darkener
.complete 10578,1 
step
.goto Shadowmoon Valley,47.5,57.2
.turnin 10578 >>交任务: |cFF00FF25诅咒密码 - 伯拉克的命令|r
step
.goto Shadowmoon Valley,35.4,41.8
.turnin 10780 >>交任务: |cFF00FF25斯克瑟隆羽毛|r
step
>>返回沙塔斯。 << !Mage
>>传送回沙塔斯 << Mage
.goto Shattrath City,77.2,34.8
.turnin 10009 >>交任务: |cFF00FF25大打出手|r

step
.goto Shattrath City,59.7,41.5
.accept 10210 >>接任务: |cFFFCDC00阿达尔|r
step
.goto Shattrath City,54.5,44.9
.turnin 10210 >>交任务: |cFF00FF25阿达尔|r
step
.goto Shattrath City,54.5,44.9
>>与卡德加交谈
.accept 10211 >>接任务: |cFFFCDC00圣光之城|r
step
.goto Shattrath City,48.1,42.0
>>前往G'eras附近的二楼隧道等待。如果其他仆人在此期间到达，你可以瞄准它，它将为你完成任务。否则，您的仆人需要8分30秒才能到达。放松一下！
.complete 10211,1 
step
.goto Shattrath City,54.5,44.9
.turnin 10211 >>交任务: |cFF00FF25圣光之城|r
step
#label choice
#completewith aldorOrScryer
.goto Shattrath City,54.5,44.1
+ Choose an Allegiance to the Aldor or Scryer. They both give the same amount of prep exp for Wrath, so choose whichever you prefer. Manually skip this step once you have chosen.
* If you do not see aldor or scryer specific quest steps after this, type "/reload" into your ingame chat box
step
#scryer
#label aldorOrScryer
.goto Shattrath City,54.5,44.1
.turnin 10552 >>交任务: |cFF00FF25为占星者效力|r
step
#aldor
#label aldorOrScryer
.goto Shattrath City,54.5,44.1
.turnin 10551 >>交任务: |cFF00FF25为奥尔多效力|r
step
#sticky
#requires choice
#completewith notofftoarea52
>>前往: |cFFDB2EEF虚空风暴|r
* 5 other quests count as the same pre-requisite as Off to Area 52, if it's not here for you, it means you did a different pre-requisite, you can skip this step.
.goto Netherstorm,20.6,55.7
.accept 10183 >>接任务: |cFFFCDC00前往52区|r
step
#label notofftoarea52
.goto Netherstorm,32.7,64.9
.turnin 10183 >>交任务: |cFF00FF25前往52区|r
step
.goto Netherstorm,32.7,64.9
.accept 10186 >>接任务: |cFFFCDC00你被雇了！|r
step
.goto Netherstorm,32.4,64.2
.accept 10265 >>接任务: |cFFFCDC00星界财团的水晶|r
step
.goto Netherstorm,31.4,66.2
.accept 10173 >>接任务: |cFFFCDC00大法师的法杖|r
step
#aldor
.goto Netherstorm,32.1,64.3
.accept 10241 >>接任务: |cFFFCDC00削弱法力熔炉：布纳尔|r
step
#scryer
.goto Netherstorm,32.0,64.0
.accept 10189 >>接任务: |cFFFCDC00法力熔炉：布纳尔|r
step
#aldor
.goto Netherstorm,26.6,68.4
>>杀死该地区的Sunfrew敌人
.complete 10241,1 
.complete 10241,2 
step
#scryer
.goto Netherstorm,28.0,65.6
>>杀死阿拉森上尉并为任务物品掠夺他。
.complete 10189,1
step
#scryer
.goto Netherstorm,32.0,64.0
.turnin 10189 >>交任务: |cFF00FF25法力熔炉：布纳尔|r
.accept 10193 >>接任务: |cFFFCDC00有价值的目标|r
step
#scryer
.goto Netherstorm,25.4,71.8,100,0
.goto Netherstorm,22.0,72.7,40,0
.goto Netherstorm,25.4,71.8
>>杀死该区域的Sunfrew敌人。
.complete 10193,1
.complete 10193,2
.complete 10193,3
step
#scryer
.goto Netherstorm,32.0,64.0
.turnin 10193 >>交任务: |cFF00FF25有价值的目标|r
.accept 10329 >>接任务: |cFFFCDC00关闭法力熔炉：布纳尔|r
step
#aldor
.goto Netherstorm,32.1,64.3
.turnin 10241 >>交任务: |cFF00FF25削弱法力熔炉：布纳尔|r
.accept 10313 >>接任务: |cFFFCDC00测量迁跃能量|r
.accept 10243 >>接任务: |cFFFCDC00纳鲁科技|r
step
#scryer
.goto Netherstorm,23.8,70.6
>>杀死并掠夺法力锻炉内的监督特蕾迪斯以获得B'naar Access水晶
.collect 29366,1,10329,1
step
#scryer
.goto Netherstorm,23.2,68.1
>>单击控制台并保护它免受技术人员的攻击。这需要2分钟。
.skipgossip
.complete 10329,1
step
#scryer
.goto Netherstorm,32.0,64.0
.turnin 10329 >>交任务: |cFF00FF25关闭法力熔炉：布纳尔|r
.accept 10194 >>接任务: |cFFFCDC00隐秘飞行|r
step
#scryer
.goto Netherstorm,33.8,64.2
.turnin 10194 >>交任务: |cFF00FF25隐秘飞行|r
.accept 10652 >>接任务: |cFFFCDC00深入敌后|r
step
#aldor
.goto Netherstorm,25.4,60.3
>>当靠近管道时，使用包中的“扭曲调整球”
.complete 10313,1 
step
#aldor
.goto Netherstorm,20.7,67.5
>>站在脚手架顶部并使用球
.complete 10313,4 
step
#aldor
.goto Netherstorm,20.3,70.9
>>站在这根管子旁边时使用这个球体
.complete 10313,3 
step
#aldor
.goto Netherstorm,23.2,68.1
>>进入大楼，然后点击柱子
.turnin 10243 >>交任务: |cFF00FF25纳鲁科技|r
.accept 10245 >>接任务: |cFFFCDC00布纳尔控制台拓文|r
step
#aldor
.goto Netherstorm,29.1,72.8
>>当靠近管道时，使用包中的“扭曲调整球”
.complete 10313,2 
step
#aldor
.goto Netherstorm,32.1,64.2
.turnin 10245 >>交任务: |cFF00FF25布纳尔控制台拓文|r
.accept 10299 >>接任务: |cFFFCDC00关闭法力熔炉：布纳尔|r
.turnin 10313 >>交任务: |cFF00FF25测量迁跃能量|r
step
#aldor
.goto Netherstorm,23.7,70.1
>>回到大楼里。杀死并掠夺监工
.complete 10299,2 
step
#aldor
.goto Netherstorm,23.2,68.1
.skipgossip
>>点击挂架启动关机定时器，杀死所有试图阻止它的暴徒。这需要2分钟。
.complete 10299,1 
step
#aldor
.goto Netherstorm,32.1,64.2
.turnin 10299 >>交任务: |cFF00FF25关闭法力熔炉：布纳尔|r
.accept 10321 >>接任务: |cFFFCDC00关闭法力熔炉：库鲁恩|r
.accept 10246 >>接任务: |cFFFCDC00攻击法力熔炉：库鲁恩|r
step
.goto Netherstorm,42.6,72.6
>>为了水晶杀死并掠夺五角龙。
.complete 10265,1
step
.goto Netherstorm,40.8,72.6
.use 29207
>>站在火盆旁边，用魔法粉召唤Ekkorash并杀死她。
.complete 10173,1
step
.goto Netherstorm,32.4,64.2
.turnin 10265 >>交任务: |cFF00FF25星界财团的水晶|r
.accept 10262 >>接任务: |cFFFCDC00叛徒的徽记|r
step
.goto Netherstorm,29.3,78.1
>>杀死该地区的扎克西斯暴徒并掠夺他们的徽章
.collect 29209,10,10262,1
step
.goto Netherstorm,32.4,64.2
.turnin 10262 >>交任务: |cFF00FF25叛徒的徽记|r
.accept 10205 >>接任务: |cFFFCDC00星界强盗奈萨德|r
step
.goto Netherstorm,31.4,66.2
.turnin 10173 >>交任务: |cFF00FF25大法师的法杖|r
.accept 10300 >>接任务: |cFFFCDC00修复法杖|r
step
.goto Netherstorm,28.3,79.9
>>杀死扭曲袭击者尼萨德
.unitscan Warp-Raider Nesaad
.complete 10205,1
step
.goto Netherstorm,32.4,64.2
.turnin 10205 >>交任务: |cFF00FF25星界强盗奈萨德|r
.accept 10266 >>接任务: |cFFFCDC00寻求帮助|r
step
#sticky
#label crystalmatrixs
.goto Netherstorm,33.1,54.4
>>掠夺该地区地面上的红色水晶
* You can use your racial Find Treasure to track them on the minimap << Dwarf
.complete 10186,1 
step
.goto Netherstorm,33.6,54.6
>>杀死并掠夺水晶的无身保护者和维护者。
.complete 10300,1
step
#requires crystalmatrixs
.goto Netherstorm,32.7,64.9
.turnin 10186 >>交任务: |cFF00FF25你被雇了！|r
step
.goto Netherstorm,31.4,66.2
.turnin 10300 >>交任务: |cFF00FF25修复法杖|r
step
#scryer
.goto Netherstorm,48.2,86.6
.turnin 10652 >>交任务: |cFF00FF25深入敌后|r
.accept 10197 >>接任务: |cFFFCDC00以假乱真|r
step
#scryer
.goto Netherstorm,49.0,81.6
>>杀害和掠夺该地区的暴徒。收集部件以进行伪装。
* Researchers are inside, Guardsmen are found on the eastern side. Arcanists are on the west side.
.complete 10197,1
.complete 10197,2
.complete 10197,3
step
#scryer
.goto Netherstorm,48.2,86.6
.turnin 10197 >>交任务: |cFF00FF25以假乱真|r
.accept 10198 >>接任务: |cFFFCDC00收集情报|r
step
#scryer
>>乔装打扮，前往马纳福格·科鲁，找到指挥官道恩福格，站在他旁边，为这次任务获得荣誉。
* You may need to wait for the Arcane Annihilator to patrol away from the door
.use 28607
.goto Netherstorm,48.2,84.0
.complete 10198,1
step
#scryer
.goto Netherstorm,48.2,86.6
.turnin 10198 >>交任务: |cFF00FF25收集情报|r
.accept 10330 >>接任务: |cFFFCDC00关闭法力熔炉：库鲁恩|r
step
#scryer
.goto Netherstorm,49.0,81.6
>>点击你的伪装，然后为她的Access Crystal杀死Overseer Seylanna，并在控制台上使用它。
.complete 10330,1
step
#scryer
.goto Netherstorm,48.2,86.6
.turnin 10330 >>交任务: |cFF00FF25关闭法力熔炉：库鲁恩|r
step
#aldor
#sticky
#label researcherkills
.goto Netherstorm,48.7,82.2
>>杀死房间周围的研究人员
.complete 10246,1 
step
#aldor
.goto Netherstorm,49.0,81.5
>>杀死控制台旁边的监督员
.complete 10321,2 
step
#aldor
.goto Netherstorm,49.0,81.5
.skipgossip
>>点击挂架启动关机定时器，杀死所有试图阻止它的暴徒。在暴徒之间研磨百夫长。
* Kill Researchers in the area while waiting.
.complete 10321,1 
step
#aldor
#requires researcherkills
.goto Netherstorm,49.6,80.6
>>走出去，杀死奥术家
.complete 10246,2 
step
.goto Netherstorm,57.4,86.2
.accept 10184 >>接任务: |cFFFCDC00狂暴的幽灵|r
step
.goto Netherstorm,59.4,87.4
>>杀死麒麟湾周围的幽灵。
.complete 10184,1
step
.goto Netherstorm,57.4,86.2
.turnin 10184 >>交任务: |cFF00FF25狂暴的幽灵|r
.accept 10312 >>接任务: |cFFFCDC00肯瑞瓦名册|r
step
.goto Netherstorm,60.6,87.6
>>杀死战斗法师达思里克并收集这本书。不要转动他的刀片。我们将在70-71转弯路线中使用它。
.complete 10312,1
step
.goto Netherstorm,57.4,86.2
.turnin 10312 >>交任务: |cFF00FF25肯瑞瓦名册|r
step
#aldor
.goto Netherstorm,32.1,64.3
.turnin 10321 >>交任务: |cFF00FF25关闭法力熔炉：库鲁恩|r
.turnin 10246 >>交任务: |cFF00FF25攻击法力熔炉：库鲁恩|r
.accept 10322 >>接任务: |cFFFCDC00关闭法力熔炉：杜隆|r
.accept 10328 >>接任务: |cFFFCDC00日怒简报|r
step
#scryer
.goto Netherstorm,32.0,64.0
.accept 10341 >>接任务: |cFFFCDC00乘胜追击|r
step
#scryer
.goto Netherstorm,59.0,66.8
>>杀死太阳怒的敌人。百夫长通常出现在法力锻造厂的入口处。
.complete 10341,1
.complete 10341,2
.complete 10341,3
step
#scryer
.goto Netherstorm,32.0,64.0
.turnin 10341 >>交任务: |cFF00FF25乘胜追击|r
.accept 10202 >>接任务: |cFFFCDC00叛徒|r
step
#scryer
.goto Netherstorm,26.2,41.6
.turnin 10202 >>交任务: |cFF00FF25叛徒|r
.accept 10432 >>接任务: |cFFFCDC00可怕的证据|r
step
#scryer
.goto Netherstorm,26.4,44.0
>>前往法力锻炉下方的洞穴。为命令杀戮和掠夺恶魔。
.collect 29797,8,10432,1
step
#aldor
#sticky
#label militarymanaforge
.goto Netherstorm,58.5,63.6
>>杀死并掠夺Manaforge Duro内的Sunfrage百夫长
.complete 10328,1 
step
#aldor
.goto Netherstorm,60.0,68.5
>>杀死并掠夺法力锻造厂南翼内的监督员阿萨内尔
.complete 10322,2 
step
#aldor
.goto Netherstorm,59.1,66.6
.skipgossip
>>与铁塔对话，开始关闭。杀死任何试图阻止你的暴徒。
.complete 10322,1 
step
#aldor
#requires militarymanaforge
.goto Netherstorm,57.2,64.2
>>杀死并掠夺法力锻炉周围的太阳怒魔法师
.complete 10328,2 
step
#aldor
.goto Netherstorm,32.0,64.2
.turnin 10328 >>交任务: |cFF00FF25日怒简报|r
.accept 10431 >>接任务: |cFFFCDC00外界的帮助|r
.turnin 10322 >>交任务: |cFF00FF25关闭法力熔炉：杜隆|r
.accept 10323 >>接任务: |cFFFCDC00关闭法力熔炉：艾拉|r
step
#aldor
.goto Netherstorm,34.8,38.2
.turnin 10431 >>交任务: |cFF00FF25外界的帮助|r
.accept 10380 >>接任务: |cFFFCDC00黑暗的契约|r
step
#aldor
.goto Netherstorm,26.4,43.5
>>杀死洞穴中的甘阿尔格和莫阿尔格恶魔
.complete 10380,1 
.complete 10380,3 
step
#aldor
.goto Netherstorm,26.4,43.5,40,0
.goto Netherstorm,28.5,39.9
>>离开洞穴，绕着马纳福格·阿拉飞翔，寻找命运之女
* The demons don't social aggro with the blood elves if you ranged pull them.
.unitscan Daughter of Destiny
.complete 10380,2 
step
#aldor
.goto Netherstorm,34.8,38.3
.turnin 10380 >>交任务: |cFF00FF25黑暗的契约|r
.accept 10381 >>接任务: |cFFFCDC00退出奥尔多|r
step
#aldor
.goto Netherstorm,26.0,38.7
>>杀死监督员Azarad。抢他去拿通道水晶。然后与塔架对话，像以前那样保护它。
*This quest can be very overwhelming compared to the previous ones, be ready and you may need help. Clear a safe space in the room beforehand.
.skipgossip
.complete 10323,2 
.complete 10323,1 
step
#aldor
.goto Netherstorm,32.0,64.2
.turnin 10381 >>交任务: |cFF00FF25退出奥尔多|r
.accept 10407 >>接任务: |cFFFCDC00索克雷萨之影|r
.turnin 10323 >>交任务: |cFF00FF25关闭法力熔炉：艾拉|r
step
#aldor
.goto Netherstorm,36.2,26.4
>>杀死并掠夺锻造大师摩格。他是精英，你可能需要帮助。
.unitscan Forgemaster Morug
.complete 10407,1 
step
#aldor
.goto Netherstorm,40.8,19.5
>>杀死并掠夺西罗，他是精英，你可能需要帮助。
.unitscan Silroth
.complete 10407,2 
step
#scryer
.goto Netherstorm,32.0,64.0
.turnin 10432 >>交任务: |cFF00FF25可怕的证据|r
.accept 10508 >>接任务: |cFFFCDC00给沃雷塔尔的礼物|r
step
#scryer
>>从莫鲁和西罗那里获得索克塔尔石的一半。
.goto Netherstorm,36.8,27.6,10,0
.goto Netherstorm,40.8,19.4
.complete 10508,1
.complete 10508,2
step
#aldor
.goto Netherstorm,32.1,64.3
.turnin 10407 >>交任务: |cFF00FF25索克雷萨之影|r
step
#scryer
.goto Netherstorm,32.0,64.0
.turnin 10508 >>交任务: |cFF00FF25给沃雷塔尔的礼物|r
step << skip
#aldor
.goto Netherstorm,32.0,64.2
.accept 10263 >>接任务: |cFFFCDC00协助星界财团|r
step << skip
#scryer
.goto Netherstorm,32.0,64.2
.accept 10264 >>接任务: |cFFFCDC00协助星界财团|r
step << skip
#aldor
.goto Netherstorm,32.4,64.2
.turnin 10263 >>交任务: |cFF00FF25协助星界财团|r
step << skip
#scryer
.goto Netherstorm,32.4,64.2
.turnin 10264 >>交任务: |cFF00FF25协助星界财团|r
step
.goto Netherstorm,33.0,64.6
.accept 10206 >>接任务: |cFFFCDC00偷来偷去|r
step
.goto Netherstorm,28.9,77.6
>>该地区的掠夺以太技术，它在小盒子里
.complete 10206,1 
step
.goto Netherstorm,33.0,64.6
.turnin 10206 >>交任务: |cFF00FF25偷来偷去|r
.accept 10333 >>接任务: |cFFFCDC00帮助维勒老妈|r
step
.goto Netherstorm,46.4,56.4
.accept 10417 >>接任务: |cFFFCDC00诊断报告|r
.accept 10433 >>接任务: |cFFFCDC00保持伪装|r
step
.goto Netherstorm,48.2,55.0
>>单击支柱收集诊断结果
.complete 10417,1
step
.goto Netherstorm,46.4,56.4
.turnin 10417 >>交任务: |cFF00FF25诊断报告|r
.accept 10418 >>接任务: |cFFFCDC00解决破坏者|r
step
.goto Netherstorm,46.6,57.0
.turnin 10266 >>交任务: |cFF00FF25寻求帮助|r
.accept 10267 >>接任务: |cFFFCDC00贸易终结|r
step
.goto Netherstorm,56.9,63.8
>>收集马纳福吉周围的研究设备。它们看起来像灰色的小板条箱。
.complete 10267,1
step
.goto Netherstorm,46.6,57.0
.turnin 10267 >>交任务: |cFF00FF25贸易终结|r
.accept 10268 >>接任务: |cFFFCDC00与节点亲王会面|r
step
#sticky
#label croctimes
.goto Netherstorm,47.0,52.6
>>杀死附近的鳄鱼。
.complete 10418,1
step
.goto Netherstorm,44.0,49.4,20,0
.goto Netherstorm,44.8,57.2,20,0
.goto Netherstorm,44.0,49.4
>>在生态穹顶下杀死里普芳山猫，获取它们的毛皮。
.complete 10433,1
step
#requires croctimes
.goto Netherstorm,46.4,56.4
.turnin 10418 >>交任务: |cFF00FF25解决破坏者|r
.turnin 10433 >>交任务: |cFF00FF25保持伪装|r
step
.goto Netherstorm,46.6,56.6
.turnin 10333 >>交任务: |cFF00FF25帮助维勒老妈|r
.accept 10234 >>接任务: |cFFFCDC00恶魔的垃圾......|r
step
.goto Netherstorm,50.4,58.9
>>收集该区域周围的Fel reaver部件。
.complete 10234,1
step
.goto Netherstorm,46.6,56.6
.turnin 10234 >>交任务: |cFF00FF25恶魔的垃圾......|r
.accept 10235 >>接任务: |cFFFCDC00厄运之爪|r
step
.goto Netherstorm,50.8,57.6
>>杀死毁灭法则并收集任务物品。
.complete 10235,1
step
.goto Netherstorm,46.6,56.6
.turnin 10235 >>交任务: |cFF00FF25厄运之爪|r
.accept 10237 >>接任务: |cFFFCDC00通知52区！|r
step
.goto Netherstorm,45.9,36.0
.turnin 10268 >>交任务: |cFF00FF25与节点亲王会面|r
.accept 10269 >>接任务: |cFFFCDC00一号三角点|r
step
.goto Netherstorm,66.7,33.8
.use 28962 >>在该区域使用三角测量设备
.complete 10269,1
step
.goto Netherstorm,58.4,31.3
.turnin 10269 >>交任务: |cFF00FF25一号三角点|r
.accept 10275 >>接任务: |cFFFCDC00二号三角点|r
step
.goto Netherstorm,28.9,41.3
.use 29018 >>在该区域使用三角测量设备
.complete 10275,1
step
.goto Netherstorm,34.6,37.9
.turnin 10275 >>交任务: |cFF00FF25二号三角点|r
.accept 10276 >>接任务: |cFFFCDC00三角测量|r
step
.goto Netherstorm,53.5,21.4
>>杀死并掠夺Culuthas以获取水晶。如果你有困难，你可能需要帮助。
.complete 10276,1
step
.goto Netherstorm,45.8,36.0
.turnin 10276 >>交任务: |cFF00FF25三角测量|r
step
.goto Netherstorm,32.6,64.8
.turnin 10237 >>交任务: |cFF00FF25通知52区！|r
.accept 10247 >>接任务: |cFFFCDC00工程学博士沃米萨|r
step
.goto Netherstorm,37.2,63.8
.turnin 10247 >>交任务: |cFF00FF25工程学博士沃米萨|r
.accept 10248 >>接任务: |cFFFCDC00你，机器人|r
step
.goto Netherstorm,37.2,63.8
>>使用您在废料回收器上的控制器并击败Negatron。确保在冷却时使用机器人的能力。
* Save the stun for when Negatron uses earthquake. Only use Smash if you start getting threat, otherwise heal Scrap Reaver and stun Negatron during earthquake.
* Scrap Reaver is buffable as well << Paladin/Priest/Druid
.use 28634
.complete 10248,1
step
.goto Netherstorm,37.2,63.8
.turnin 10248 >>交任务: |cFF00FF25你，机器人|r
step
.goto Blade's Edge Mountains,55.4,44.9
.accept 10995 >>接任务: |cFFFCDC00格鲁洛克的巨龙颅骨|r
.accept 10996 >>接任务: |cFFFCDC00玛古克的宝箱|r
.accept 10997 >>接任务: |cFFFCDC00戈隆的军旗|r
step
#sticky
#completewith gronnsdone
.goto Blade's Edge Mountains,60.3,47.5
>>杀死格鲁洛克，在他死后在地上掠夺物品。
.complete 10995,1
step
#sticky
#completewith gronssdone
.goto Blade's Edge Mountains,58.5,60.8,40,0
.goto Blade's Edge Mountains,64.5,54.8,40,0
.goto Blade's Edge Mountains,68.3,74.8
>>找到麦戈克，他在缩放架周围巡逻。杀了他，抢走他扔在地上的东西
.unitscan Maggoc
.complete 10996,1
step
#sticky
#completewith gronssdone
.goto Terokkar Forest,20.3,15.9
>>杀死斯拉格，并将他扔在地上的物品洗劫一空
.complete 10997,1
step
#completewith next
#label gronnprep
+接下来的3个任务都是精英任务，需要一个团队，然而，它们的独特之处在于，老板会丢弃一个可以右击地面的项目，以获得任务奖励，即使你不在被杀的团队中。你可以按任何顺序来做，两个在刀刃边缘，一个在沙塔斯上面。
step
#label gronnsdone
#requires gronnprep
.goto Blade's Edge Mountains,55.4,44.9
.turnin 10995 >>交任务: |cFF00FF25格鲁洛克的巨龙颅骨|r
.turnin 10997 >>交任务: |cFF00FF25戈隆的军旗|r
.turnin 10996 >>交任务: |cFF00FF25玛古克的宝箱|r
.accept 10998 >>接任务: |cFFFCDC00维姆高尔的魔典|r
step
.goto Blade's Edge Mountains,77.4,31.2
>>为他的书杀死Vim'gol the Vile，再次在地上掠夺物品。你不需要加入杀害他的组织就可以掠夺。
.complete 10998,1
step
.goto Blade's Edge Mountains,55.4,44.9
.turnin 10998 >>交任务: |cFF00FF25维姆高尔的魔典|r
.accept 11000 >>接任务: |cFFFCDC00磨魂者|r
step
.goto Blade's Edge Mountains,60.0,24.1
.use 32467 >>踏上祭坛，用香灰开始战斗。在海浪中幸存下来，然后杀死老板，并洗劫他掉在地上的灵魂。
.complete 11000,1


step
.goto Deadwind Pass,47.0,75.6
.reputation 967,honored 
>>迎风传球
.accept 9630 >>接任务: |cFFFCDC00麦迪文的日记|r
step

>>进入Karazhan，在馆长老板之后，在房间里与Wravien交谈。
.turnin 9630 >>交任务: |cFF00FF25麦迪文的日记|r
.accept 9638 >>接任务: |cFFFCDC00书呆子|r
step
>>Gradav距离Wravien稍远一点。
.turnin 9638 >>交任务: |cFF00FF25书呆子|r
.accept 9639 >>接任务: |cFFFCDC00卡姆希丝|r
step
>>像以前一样，卡姆西斯比格拉达夫领先一点。
.turnin 9639 >>交任务: |cFF00FF25卡姆希丝|r
.accept 9640 >>接任务: |cFFFCDC00埃兰之影|r
step
>>击败《阿兰阴影》获得《华尔街日报》。
.complete 9640,1
step
.turnin 9640 >>交任务: |cFF00FF25埃兰之影|r
.accept 9645 >>接任务: |cFFFCDC00主宰的露台|r
step
>>去卡拉詹的主人露台读日记。
.use 23934
.complete 9645,1
step
.goto Deadwind Pass,47.0,75.6
.turnin 9645 >>交任务: |cFF00FF25主宰的露台|r
.accept 9680 >>接任务: |cFFFCDC00挖掘历史|r
step
.goto Deadwind Pass,45.0,78.8
>>从地上收集烧焦的骨头碎片。
.complete 9680,1
step
.goto Deadwind Pass,47.0,75.6
.turnin 9680 >>交任务: |cFF00FF25挖掘历史|r
step
#sticky
.goto Netherstorm,43.5,35.0
+由于复杂性，本指南中不包括职业任务，但由于经验缩放，它们在70时可能会有大量经验。如果你有任何低级任务可用，比如治疗德鲁伊毒药、圣骑士复活等，请准备好在启动时提交。有些10级任务由于缩放而放弃30公里经验。
step
.goto Netherstorm,43.5,35.0
+前往风暴精灵，攻击敌方玩家，攻击守卫。杀死守卫，直到你在联盟中处于0/3000中立。你每杀一次就损失125次。有一个敌对派别的朋友会加快这一进程。
>>在以下任务中需要中立的声誉：从小偷那里偷窃和满头象牙
*Skip this step if those 2 quests are already complete
step
.goto Shadowmoon Valley,66.0,84.6
.reputation 1015,exalted
+通过制作以下日报，达到与荷兰之翼的共鸣。不要提交任何一次任务！
.accept 11020 >>接任务: |cFFFCDC00缓慢的死亡|r
.accept 11015 >>接任务: |cFFFCDC00灵翼水晶|r
.accept 11035 >>接任务: |cFFFCDC00危险的天空|r
step
.goto Shadowmoon Valley,66.0,84.6
.accept 11018 >>接任务: |cFFFCDC00虚空矿石|r
.skill mining,<350,1
step
.goto Shadowmoon Valley,66.0,84.6
.skill herbalism,<350,1
.accept 11017 >>接任务: |cFFFCDC00灵尘花粉|r
step
.goto Shadowmoon Valley,66.0,84.6
.skill skinning,<350,1
.accept 11016 >>接任务: |cFFFCDC00虚空矿洞剥石者的外皮|r
]])
RXPGuides.RegisterGuide([[
#version 18
#wotlk
#tbc
#group RestedXP WLK的准备
#name 交车日速度助理
step << !Mage
#sticky
#completewith next
+如果你的任务日志中没有“了解你的莱伊线”作为你的任务之一，那么在发射前几个小时去做“知道你的莱尔线”，它会给你一个卷轴来传送到沙塔斯。当日报再次可用时，此项目将被删除。如果你是一个愿意转移/召唤你的术士或法师的朋友，也可以跳过这一步。
step << !Mage
.goto Isle of Quel'Danas,47.6,35.4
.accept 11547 >>接任务: |cFFFCDC00魔网能量线的读数|r
step << !Mage
.isOnQuest 11547
.goto Isle of Quel'Danas,42.0,34.9,-1
.goto Isle of Quel'Danas,48.4,44.4,-1
.goto Isle of Quel'Danas,61.0,62.1,-1
.use 34533 >>使用星际巫师的水晶读取传送门、神殿和血水晶。
.complete 11547,1
.complete 11547,2
.complete 11547,3
step << !Mage
.isOnQuest 11547
.goto Isle of Quel'Danas,47.6,35.4
.turnin 11547 >>交任务: |cFF00FF25魔网能量线的读数|r
step
>>可以提高你的转身速度的物品。
.collect 6372,1
.collect 7052,1
.collect 2459,5
.collect 25653,1
step
>>您还可以选择获得赞萨的迅捷。这将为您节省大量时间，因为在WOTLK的坐骑工程中(需要赞达拉部落的尊敬)
.reputation 270,revered
.collect 20081,1
step
>>火箭靴结合noggenfogger也可以为你节省很多时间。
*There is a cloth and leather version of the boots, pick whichever is best for your spec. << Druid/Shaman/Paladin
.skill engineering,<330,1
.collect 8529,40
.collect 35581,1 << Warlock/Mage/Priest/Shaman/Druid/Paladin
.collect 23824,1 << Warrior/Paladin/Rogue/Hunter/Shaman/Druid
.collect 30542,1
]])
RXPGuides.RegisterGuide([[
#version 18
#wotlk
#tbc
#group RestedXP WLK的准备
#name 启动移交指南
#next RestedXP联盟70-80\70.5-71.5 北风苔原开始 << Alliance
#next RestedXP部落70-80\70.5-71.5 北风苔原开始 << Horde
step
#sticky
#completewith start1
+ This is the guide you use when WOTLK is out and you are turning in quests for exp. Please DO NOT turn in quests in this guide until launch day.
step
#sticky
#completewith start1
+ Add quest accept items from your inventory onto your hotbar and keybind them to accept them faster. This will save a lot of time looking for them later.
step
#sticky
#completewith start1
+由于卡拉赞的位置，如果你无法获得召唤，你需要启动卡拉赞，这意味着你只能有24个qlog任务，而不是25个。如果你可以获得卡拉赞召唤，那么从沙特开始，然后马上转移到卡拉赞。
step
.isQuestTurnedIn 9680
>>前往逆风山口
.goto Deadwind Pass,47.0,75.6
.accept 9631 >>接任务: |cFFFCDC00同事的帮助|r
step
.goto Deadwind Pass,47.1,75.2
.reputation 967,friendly,<0,1
>>选择一条环形路径，选择一条后跳过此步骤。
.dailyturnin 10730,10732,10729,10731 >>在紫色空白的道路上转弯
step
.goto Deadwind Pass,47.1,75.2
.reputation 967,honored,<0,1
.daily 10735,10736,10733,10734 >>Accept the Honored Ring Quest. Skip this step if you're above honored
.dailyturnin 10735,10736,10733,10734 >>提交荣誉戒指任务。如果您超越荣誉，请跳过此步骤
step
.goto Deadwind Pass,47.1,75.2
.reputation 967,revered,<0,1
.daily 10739,10740,10741,10738 >>Accept the Revered Ring Quest. Skip this step if you're above revered
.dailyturnin 10739,10740,10741,10738 >>交出尊敬的戒指任务。如果你不受尊敬，跳过这一步
step
.goto Deadwind Pass,47.1,75.2
.reputation 967,exalted,<0,1
.daily 10725,10728,10727,10726 >>Accept the Exalted Ring Quest
.dailyturnin 10725,10728,10727,10726 >>提交至尊戒指任务
step
.zone Shattrath City >>前往: |cFFDB2EEF沙塔斯城|r
step
#scryer
.itemcount 30810,10
.goto Shattrath City,45.5,81.4
.accept 10656 >>接任务: |cFFFCDC00日怒徽记|r
.turnin 10656 >>交任务: |cFF00FF25日怒徽记|r
step
#scryer
.itemcount 29426,10
.goto Shattrath City,45.4,81.4
.accept 10412 >>接任务: |cFFFCDC00火翼徽记|r
.turnin 10412 >>交任务: |cFF00FF25火翼徽记|r
step
#scryer
.itemcount 29739,1
.goto Shattrath City,42.6,91.4
.accept 10416 >>接任务: |cFFFCDC00能量的聚合|r
.turnin 10416 >>交任务: |cFF00FF25能量的聚合|r
step
#aldor
.itemcount 30809,10
.goto Shattrath City,30.8,34.6
.accept 10653 >>接任务: |cFFFCDC00萨格拉斯印记|r
.turnin 10653 >>交任务: |cFF00FF25萨格拉斯印记|r
step
#aldor
.itemcount 29425,10
.goto Shattrath City,30.8,34.6
.accept 10325 >>接任务: |cFFFCDC00基尔加丹印记|r
.turnin 10325 >>交任务: |cFF00FF25基尔加丹印记|r
step
#aldor
.itemcount 29740,1
.goto Shattrath City,24.2,29.8
.accept 10420 >>接任务: |cFFFCDC00净化之光|r
.turnin 10420 >>交任务: |cFF00FF25净化之光|r
step
.itemcount 32405,1
.goto Shattrath City,54.0,44.6
.use 32405
.accept 11007 >>接任务: |cFFFCDC00凯尔萨斯和翠绿的魔珠|r
.turnin 11007 >>交任务: |cFF00FF25凯尔萨斯和翠绿的魔珠|r
step
.isOnQuest 9837
.goto Shattrath City,54.6,44.2
.turnin 9837 >>交任务: |cFF00FF25返回卡德加身边|r
step
.isOnQuest 9831
.goto Shattrath City,54.6,44.2
.turnin 9831 >>交任务: |cFF00FF25卡拉赞的钥匙|r
step
.isQuestAvailable 11550
.goto Shattrath City,53.4,43.6
.accept 11550 >>接任务: |cFFFCDC00欺诈者降临|r
step
.itemcount 27480,5
.goto Shattrath City,50.4,45.4
.turnin 10091 >>交任务: |cFF00FF25灵魂装置|r
step
.isOnQuest 10095
.goto Shattrath City,50.4,45.4
.turnin 10095 >>交任务: |cFF00FF25深入迷宫|r
step
.itemcount 34246,10
.goto Shattrath City,49.2,42.4
.turnin 11514 >>交任务: |cFF00FF25维持传送门|r
step
.isOnQuest 11108
.goto Shattrath City,66.6,16.8
.turnin 11108 >>交任务: |cFF00FF25伊利丹·怒风大人|r
step
.itemcount 35231,1
.goto Shattrath City,62.6,36.0
.turnin 11877 >>交任务: |cFF00FF25日怒攻击计划|r
step << Alliance
>>你需要71岁才能完成这个任务，如果你不是71岁就跳过它。
.goto Shattrath City,67.2,34.0
.dailyturnin 11337,11336,11335,11338 >>交PvP Daily
step << Horde
>>你需要71岁才能完成这个任务，如果你不是71岁就跳过它。
.goto Shattrath City,67.0,56.6
.dailyturnin 11341,11340,11339,11342 >>交PvP Daily
step
.itemcount 25719,30
.goto Shattrath City,49.0,18.4
>>Vekax在该地区四处走动
.unitscan Vekax
.accept 10917 >>接任务: |cFFFCDC00流亡者的交易|r
.turnin 10917 >>交任务: |cFF00FF25流亡者的交易|r
step
#aldor
.itemcount 25744,8
.goto Shattrath City,54.8,22.6
.accept 10024 >>接任务: |cFFFCDC00沃雷塔尔的预言|r
.turnin 10024 >>交任务: |cFF00FF25沃雷塔尔的预言|r
step
.itemcount 33849,15
.goto Shattrath City,61.6,15.8
.turnin 11380 >>交任务: |cFF00FF25魔法美味|r
step
.itemcount 33839,1
.goto Shattrath City,61.6,15.8
.turnin 11377 >>交任务: |cFF00FF25甜美的复仇|r
step
.itemcount 33850,1
.goto Shattrath City,61.6,15.8
.turnin 11381 >>交任务: |cFF00FF25灵魂之汤|r
step
.itemcount 33848,1
.goto Shattrath City,61.6,15.8
.turnin 11379 >>交任务: |cFF00FF25超级美味烧烤|r
step
#scryer
.itemcount 25802,8
.goto Shattrath City,64.4,15.6
.accept 10017 >>接任务: |cFFFCDC00物资紧张|r
.turnin 10017 >>交任务: |cFF00FF25物资紧张|r
step
.itemcount 33826,1
.goto Shattrath City,75.0,36.4
.turnin 11369 >>交任务: |cFF00FF25悬赏：黑色阔步者的卵|r
step
.itemcount 33859,1
.goto Shattrath City,75.0,36.4
.turnin 11384 >>交任务: |cFF00FF25悬赏：扭木碎片|r
step
.itemcount 33858,1
.goto Shattrath City,75.0,36.4
.turnin 11382 >>交任务: |cFF00FF25悬赏：埃欧努斯的沙漏|r
step
.itemcount 11363,1
.goto Shattrath City,75.0,36.4
.turnin 11363 >>交任务: |cFF00FF25悬赏：刃拳的印记|r
step
.itemcount 33840,1
.goto Shattrath City,75.0,36.4
.turnin 11375 >>交任务: |cFF00FF25悬赏：摩摩尔的低语|r
step
.itemcount 33833,1
.goto Shattrath City,75.0,36.4
.turnin 11354 >>交任务: |cFF00FF25悬赏：纳杉的骑鞭|r
step
.itemcount 33860,1
.goto Shattrath City,75.0,36.4
.turnin 11386 >>交任务: |cFF00FF25悬赏：帕萨雷恩的投影仪|r
step
.itemcount 33835,1
.goto Shattrath City,75.0,36.4
.turnin 11373 >>交任务: |cFF00FF25悬赏：沙法尔的精致饰物|r
step
.itemcount 33847,1
.goto Shattrath City,75.0,36.4
.turnin 11378 >>交任务: |cFF00FF25悬赏：时空猎手的徽记|r
step
.itemcount 33836,1
.goto Shattrath City,75.0,36.4
.turnin 11374 >>交任务: |cFF00FF25悬赏：主教的灵魂宝钻|r
step
.itemcount 33834,1
.goto Shattrath City,75.0,36.4
.turnin 11372 >>交任务: |cFF00FF25悬赏：艾吉斯的冠羽|r
step
.itemcount 33821,1
.goto Shattrath City,75.0,36.4
.turnin 11368 >>交任务: |cFF00FF25悬赏：夸格米拉之心|r
step
.itemcount 33861,1
.goto Shattrath City,75.0,36.4
.turnin 11388 >>交任务: |cFF00FF25悬赏：斯克瑞斯的卷轴|r
step
.itemcount 33827,1
.goto Shattrath City,75.0,36.4
.turnin 11370 >>交任务: |cFF00FF25悬赏：督军的论文|r
step << Horde
.isQuestTurnedIn 9993
.goto Terokkar Forest,50.0,44.8
.accept 10201 >>接任务: |cFFFCDC00真相大白|r
step << Horde
.isOnQuest 10201
.goto Terokkar Forest,49.8,45.2
>>与Grek交谈
.skipgossip
.complete 10201,1
step << Horde
.isOnQuest 10201
.goto Terokkar Forest,50.0,44.8
.turnin 10201 >>交任务: |cFF00FF25真相大白|r
step << Horde
.isQuestTurnedIn 10447
.goto Terokkar Forest,50.0,45.8
.accept 10006 >>接任务: |cFFFCDC00告知缚地者塔弗格伦|r
step << Horde
.isOnQuest 10006
.goto Terokkar Forest,44.4,26.2 
.turnin 10006 >>交任务: |cFF00FF25告知缚地者塔弗格伦|r
step << Horde
.isOnQuest 11506
.goto Terokkar Forest,49.8,45.6
.turnin 11506 >>交任务: |cFF00FF25奥金顿的幽魂|r

step << Horde
.isQuestAvailable 10013
.goto Terokkar Forest,67.9,53.5
>>点击建筑物内的卷轴
.accept 10013 >>接任务: |cFFFCDC00幕后黑手|r
step << Alliance
.isQuestTurnedIn 10446
.goto Terokkar Forest,57.0,53.6
.accept 10005 >>接任务: |cFFFCDC00告知缚地者塔弗格伦|r
step << Alliance
.isOnQuest 11505
.goto Terokkar Forest,55.8,53.8
.turnin 11505 >>交任务: |cFF00FF25奥金顿的幽魂|r
step << Alliance
.isQuestAvailable 10038
.goto Terokkar Forest,57.6,55.6
.accept 10038 >>接任务: |cFFFCDC00援助列兵维克斯|r
step << Alliance
.isQuestAvailable 10012
.goto Terokkar Forest,67.9,53.5
>>点击建筑物内的卷轴
.accept 10012 >>接任务: |cFFFCDC00邪兽人的计划|r
step
#label start1
.itemcount 30829,1
.goto Terokkar Forest,77.4,38.6
.turnin 10670 >>交任务: |cFF00FF25大地之母的眼泪|r
step
.itemcount 30828,1
.goto Terokkar Forest,77.4,38.6
.turnin 10667 >>交任务: |cFF00FF25地下的土壤|r
step
.goto Terokkar Forest,77.4,38.6
>>接受并交出任务，然后等待他制作剑。如果需要，请跳过此步骤。
.accept 10676 >>接任务: |cFFFCDC00伊利达雷的斩除者|r
step
>>需要30秒才能分娩。它有一个相当免费的后续任务。
.isOnQuest 10676
.goto Terokkar Forest,77.4,38.6
.turnin 10676 >>交任务: |cFF00FF25伊利达雷的斩除者|r
step
.isQuestTurnedIn 10676
.goto Terokkar Forest,77.4,38.6
>>在他锻造完刀刃后，接受新的任务
.accept 10679 >>接任务: |cFFFCDC00淬火|r
step << Alliance
.isOnQuest 10005
.goto Terokkar Forest,44.4,26.2 
.turnin 10005 >>交任务: |cFF00FF25告知缚地者塔弗格伦|r
step << Horde
.isOnQuest 10013
.goto Terokkar Forest,49.0,44.7
.turnin 10013 >>交任务: |cFF00FF25幕后黑手|r
step << Horde
.isQuestAvailable 10847
.goto Terokkar Forest,49.0,44.7
.accept 10862 >>接任务: |cFFFCDC00向部落投降|r
step << Horde
.isQuestAvailable 10039
>>与血精灵对话
.goto Terokkar Forest,48.8,44.6
.accept 10039 >>接任务: |cFFFCDC00援助斥候奈弗蒂丝|r
step << Horde
.isOnQuest 10039
.goto Terokkar Forest,39.0,43.8
.turnin 10039 >>交任务: |cFF00FF25援助斥候奈弗蒂丝|r
step << Alliance
.isOnQuest 10038
.goto Terokkar Forest,40.4,36.0
.turnin 10038 >>交任务: |cFF00FF25援助列兵维克斯|r
step
.itemcount 31707,1
.goto Terokkar Forest,37.4,51.2
.use 31707,1 >>使用包中的阴谋命令接受任务
.accept 10880 >>接任务: |cFFFCDC00秘教的命令|r
.turnin 10880 >>交任务: |cFF00FF25秘教的命令|r
step
.isOnQuest 10218
.goto Terokkar Forest,39.4,58.4
.turnin 10218 >>交任务: |cFF00FF25别人的烂摊子|r
step
.isOnQuest 10165
.goto Terokkar Forest,39.4,58.4
.turnin 10165 >>交任务: |cFF00FF25扫除竞争者|r
step
.isOnQuest 10097
.goto Terokkar Forest,44.0,65.0
.turnin 10097 >>交任务: |cFF00FF25兄弟反目|r
step
.isOnQuest 10098
.goto Terokkar Forest,44.0,65.0
.turnin 10098 >>交任务: |cFF00FF25泰罗克的传说|r
step
.isQuestTurnedIn 10921
.goto Terokkar Forest,49.8,76.2
.accept 10926 >>接任务: |cFFFCDC00返回沙塔尔营地|r
step
.isOnQuest 10926
.goto Terokkar Forest,31.4,75.6
.turnin 10926 >>交任务: |cFF00FF25返回沙塔尔营地|r
step
.isOnQuest 10164
.goto Terokkar Forest,35.0,65.2
.turnin 10164 >>交任务: |cFF00FF25一切都会变好的|r
step << Alliance
.isOnQuest 10012
.goto Terokkar Forest,58.2,54.8
.turnin 10012 >>交任务: |cFF00FF25邪兽人的计划|r
step << Alliance
.isQuestAvailable 10847
.goto Terokkar Forest,57.6,56.0
.accept 10863 >>接任务: |cFFFCDC00鸦人的秘密|r
step
.itemcount 32523,1
.goto Terokkar Forest,64.0,66.8
.use 32523 >>使用包中的Ishaal年鉴接受任务
.accept 11021 >>接任务: |cFFFCDC00伊沙尔的历书|r
.turnin 11021 >>交任务: |cFF00FF25伊沙尔的历书|r
step
.isQuestTurnedIn 11021
.goto Terokkar Forest,64.0,66.8
.accept 11024 >>接任务: |cFFFCDC00贫民窟的盟友|r
step
.itemcount 32388,6
.goto Terokkar Forest,64.0,66.8
.accept 11004 >>接任务: |cFFFCDC00阴影世界|r
.turnin 11004 >>交任务: |cFF00FF25阴影世界|r
step
.isOnQuest 11008
.goto Terokkar Forest,64.6,66.6
.turnin 11008 >>交任务: |cFF00FF25轰炸斯克提斯|r
step << Alliance
.isQuestTurnedIn 10612
.goto Shadowmoon Valley,40.8,22.2
.accept 10744 >>接任务: |cFFFCDC00胜利的消息|r
step << Alliance
.isQuestTurnedIn 10522
.goto Shadowmoon Valley,44.6,23.7
.accept 10523 >>接任务: |cFFFCDC00诅咒密码 - 第一块碎片|r
step << Horde
.isQuestTurnedIn 10613
.goto Shadowmoon Valley,27.4,21.2
.accept 10745 >>接任务: |cFFFCDC00胜利的消息|r
step << Horde
.isOnQuest 10745
.goto Shadowmoon Valley,28.4,26.4
.turnin 10745 >>交任务: |cFF00FF25胜利的消息|r
step << Horde
.isQuestAvailable 10750
.goto Shadowmoon Valley,28.4,26.4
.accept 10750 >>接任务: |cFFFCDC00征服之路|r
step << Horde
.isQuestTurnedIn 10625
.goto Shadowmoon Valley,29.8,27.8
.accept 10633 >>接任务: |cFFFCDC00塔隆-血魔的传说|r
step
.isQuestTurnedIn 10780
.goto Shadowmoon Valley,35.4,41.8
>>任务给予者帕沙在路上巡逻
.unitscan Parshah
.accept 10782 >>接任务: |cFFFCDC00为杖头充能|r
step
.isOnQuest 10782
.goto Shadowmoon Valley,43.1,44.9
.use 31360 >>立即装备饰品，因为它有CD，然后在祭坛附近使用
.complete 10782,1 
step
.isOnQuest 10782
.goto Shadowmoon Valley,35.4,41.8
>>重新装备你的普通饰品！
.turnin 10782 >>交任务: |cFF00FF25为杖头充能|r
step
.isQuestTurnedIn 10540
.goto Shadowmoon Valley,29.5,50.6
.accept 10541 >>接任务: |cFFFCDC00诅咒密码 - 第二块碎片|r
step << Alliance
.isOnQuest 10744
.goto Shadowmoon Valley,35.8,57.6
>>走下大楼的楼梯。
.turnin 10744 >>交任务: |cFF00FF25胜利的消息|r
step << Alliance
.isQuestAvailable 10772
.goto Shadowmoon Valley,36.2,57.0
.accept 10772 >>接任务: |cFFFCDC00征服之路|r
step
.isQuestTurnedIn 10578
.goto Shadowmoon Valley,47.5,57.2
.accept 10579 >>接任务: |cFFFCDC00诅咒密码 - 第三块碎片|r
step << Alliance
.isOnQuest 10772
.goto Shadowmoon Valley,51.8,61.0
.use 31310 >>一旦你发现路径，就用火炬召唤鹰头狮骑士。你必须在安全的地方接触地面。
.turnin 10772 >>交任务: |cFF00FF25征服之路|r
step << Horde
.isOnQuest 10750
.goto Shadowmoon Valley,51.4,60.4
.use 31108 >>一旦你发现路径，就用火炬召唤飞龙骑士。你必须在安全的地方接触地面。
.turnin 10750 >>交任务: |cFF00FF25征服之路|r
step
.itemcount 31345,1
.goto Shadowmoon Valley,51.4,72.7
.use 31345 >>使用包中的《瓦尔扎雷克日记》接受任务
.accept 10793 >>接任务: |cFFFCDC00瓦萨雷克的日记：战争的前奏|r
.turnin 10793 >>交任务: |cFF00FF25瓦萨雷克的日记：战争的前奏|r
step << Horde
.isOnQuest 10633
.goto Shadowmoon Valley,58.2,70.8
.turnin 10633 >>交任务: |cFF00FF25塔隆-血魔的传说|r
step
.itemcount 32427,30
.goto Shadowmoon Valley,66.0,86.4
.accept 11015 >>接任务: |cFFFCDC00灵翼水晶|r
.turnin 11015 >>交任务: |cFF00FF25灵翼水晶|r
step
.isOnQuest 11020
.goto Shadowmoon Valley,66.0,86.4
.turnin 11020 >>交任务: |cFF00FF25缓慢的死亡|r
step
.itemcount 32506,1
.goto Shadowmoon Valley,66.0,86.4
.accept 11049 >>接任务: |cFFFCDC00寻找灵翼龙卵|r
.turnin 11049 >>交任务: |cFF00FF25寻找灵翼龙卵|r
step
.itemcount 32464,40
.reputation 1015,neutral,<0,1
.goto Shadowmoon Valley,66.0,86.4
.skill mining,<350,1
>>你每天只能提交一次采集，如果你有两个采集职业，请跳过下一个。
.accept 11018 >>接任务: |cFFFCDC00虚空矿石|r
.turnin 11018 >>交任务: |cFF00FF25虚空矿石|r
step
.itemcount 32468,40
.reputation 1015,neutral,<0,1
.goto Shadowmoon Valley,66.0,86.4
.skill herbalism,<350,1
>>你每天只能提交一次采集，如果你有两个采集职业，请跳过下一个。
.accept 11017 >>接任务: |cFFFCDC00灵尘花粉|r
.turnin 11017 >>交任务: |cFF00FF25灵尘花粉|r
step
.itemcount 32470,435
.reputation 1015,neutral,<0,1
.goto Shadowmoon Valley,66.0,86.4
.skill skinning,<350,1
>>你每天只能提交一次采集，如果你有两个采集职业，请跳过下一个。
.accept 11016 >>接任务: |cFFFCDC00虚空矿洞剥石者的外皮|r
.turnin 11016 >>交任务: |cFF00FF25虚空矿洞剥石者的外皮|r
step
.goto Shadowmoon Valley,66.0,86.4
.reputation 1015,friendly,<0,1
.accept 11053 >>接任务: |cFFFCDC00起立，督工！|r
step
.isOnQuest 11053
.goto Shadowmoon Valley,66.2,85.6
.reputation 1015,friendly,<0,1
.turnin 11053 >>交任务: |cFF00FF25起立，督工！|r
step
.goto Shadowmoon Valley,66.2,86.4
.reputation 1015,friendly<0,1
.accept 11075 >>接任务: |cFFFCDC00灵翼矿洞|r
step
.isQuestAvailable 11084
.goto Shadowmoon Valley,66.0,86.4
.reputation 1015,honored,<0,1
.accept 11084 >>接任务: |cFFFCDC00立正，队长！|r
step
.isOnQuest 11084
.goto Shadowmoon Valley,66.2,85.6
.reputation 1015,honored,<0,1
.turnin 11084 >>交任务: |cFF00FF25立正，队长！|r
step
.isQuestAvailable 11092
.goto Shadowmoon Valley,66.0,86.4
.reputation 1015,revered,<0,1
.accept 11092 >>接任务: |cFFFCDC00你好，指挥官！|r
step
.isOnQuest 11092
.goto Shadowmoon Valley,66.2,85.6
.reputation 1015,revered,<0,1
.turnin 11092 >>交任务: |cFF00FF25你好，指挥官！|r
step
#aldor
.isQuestAvailable 11099
.goto Shadowmoon Valley,66.2,85.6
.reputation 1015,revered,<0,1
.accept 11099 >>接任务: |cFFFCDC00把他们都干掉！|r
step
#scryer
.isQuestAvailable 11094
.goto Shadowmoon Valley,66.2,85.6
.reputation 1015,revered,<0,1
.accept 11094 >>接任务: |cFFFCDC00把他们都干掉！|r
step
.goto Shadowmoon Valley,66.0,86.4
.itemcount 32509,10
.turnin 11035 >>交任务: |cFF00FF25危险的天空|r
step
.isOnQuest 11075
.goto Shadowmoon Valley,63.0,87.8
.turnin 11075 >>交任务: |cFF00FF25灵翼矿洞|r
step
.itemcount 32724,1
>>打开你的污泥覆盖物，直到你得到一个黑血逃生计划
.collect 32726,1,11081,1
step
.itemcount 32726,1
.goto Shadowmoon Valley,63.0,87.8
.use 32726 >>使用包中的黑血逃生计划接受任务
.accept 11081 >>接任务: |cFFFCDC00暗血大逃亡|r
.turnin 11081 >>交任务: |cFF00FF25暗血大逃亡|r
step
#scryer
.isOnQuest 11094
.goto Shadowmoon Valley,56.2,59.6
.reputation 1015,revered,<0,1
.turnin 11094 >>交任务: |cFF00FF25把他们都干掉！|r
step
.isOnQuest 10707
.goto Shadowmoon Valley,58.0,48.2
.turnin 10707 >>交任务: |cFF00FF25阿塔玛平台|r
step
.isOnQuest 10679
.goto Shadowmoon Valley,51.9,40.2
.use 30875 >>在熔岩池中使用锻造伊利达里诅咒之刃
.complete 10679,1
step << Horde
.isQuestTurnedIn 10522
.goto Shadowmoon Valley,44.6,23.7
.accept 10523 >>接任务: |cFFFCDC00诅咒密码 - 第一块碎片|r
step
#aldor
.isOnQuest 11099
.goto Shadowmoon Valley,62.6,28.4
.reputation 1015,revered
.turnin 11099 >>交任务: |cFF00FF25把他们都干掉！|r
step
.isOnQuest 10523
.goto Shadowmoon Valley,53.9,23.4
.turnin 10523 >>交任务: |cFF00FF25诅咒密码 - 第一块碎片|r
step
.isOnQuest 10541
.goto Shadowmoon Valley,53.9,23.4
.turnin 10541 >>交任务: |cFF00FF25诅咒密码 - 第二块碎片|r
step
.isOnQuest 10579
.goto Shadowmoon Valley,53.9,23.4
.turnin 10579 >>交任务: |cFF00FF25诅咒密码 - 第三块碎片|r
step
.isOnQuest 10679
.goto Terokkar Forest,77.4,38.6
.turnin 10679 >>交任务: |cFF00FF25淬火|r
step
.itemcount 23580,1
.goto Hellfire Peninsula,28.8,81.4
.use 23580 >>使用包中的Avruu's Orb接受任务
.accept 9418 >>接任务: |cFFFCDC00亚维鲁的宝珠|r
.turnin 9418 >>交任务: |cFF00FF25亚维鲁的宝珠|r
step << Alliance
.itemcount 23848,1
.goto Hellfire Peninsula,24.0,72.2
.reputation 946,friendly,<0,1 >>这一步你至少需要友好地站着，保持荣誉。
.accept 9563 >>接任务: |cFFFCDC00米伦的信任|r
.turnin 9563 >>交任务: |cFF00FF25米伦的信任|r
step << Horde
.isQuestTurnedIn 9400
.goto Hellfire Peninsula,33.6,43.6
.accept 9401 >>接任务: |cFFFCDC00奇怪的武器|r
step << Horde
.isOnQuest 9401
.goto Hellfire Peninsula,55.0,36.0
.turnin 9401 >>交任务: |cFF00FF25奇怪的武器|r
step << Horde
.isQuestTurnedIn 9401
.goto Hellfire Peninsula,55.0,36.0
.accept 9405 >>接任务: |cFFFCDC00酋长的命令|r
step << Horde
.itemcount 29590,1
.goto Hellfire Peninsula,55.0,36.0
.use 29590 >>使用背包中的燃烧军团任务来接受任务
.accept 10393 >>接任务: |cFFFCDC00邪恶的计划|r
step << Horde
.goto Hellfire Peninsula,55.0,36.0
.turnin 10393 >>交任务: |cFF00FF25邪恶的计划|r
step << Horde
.itemcount 23892,1
.goto Hellfire Peninsula,55.0,36.0
.use 23892 >>接受库存中不祥之信的任务
.accept 9588 >>接任务: |cFFFCDC00黑暗之潮|r
step
.isOnQuest 9588
.goto Hellfire Peninsula,55.0,36.0
.turnin 9588 >>交任务: |cFF00FF25黑暗之潮|r
step << Horde
.itemcount 31241,1
.goto Hellfire Peninsula,55.0,36.0
.use 31241 >>接任务: 邪恶的无毛怪
.accept 10755 >>接任务: |cFFFCDC00堡垒的钥匙|r
step << Horde
.isOnQuest 10755
.goto Hellfire Peninsula,55.0,36.0
.turnin 10755 >>交任务: |cFF00FF25堡垒的钥匙|r
step << Horde
.isQuestTurnedIn 10755
.goto Hellfire Peninsula,55.0,36.0
.accept 10756 >>接任务: |cFFFCDC00罗霍克大师|r
step << Horde
.itemcount 32386,1
.goto Hellfire Peninsula,55.0,36.0
.use 32386 >>使用Matheridon的头接受任务
.accept 11003 >>接任务: |cFFFCDC00玛瑟里顿之死|r
.turnin 11003 >>交任务: |cFF00FF25玛瑟里顿之死|r
step << Horde
.itemcount 23723,1
.goto Hellfire Peninsula,55.0,36.0
.turnin 9495 >>交任务: |cFF00FF25酋长的意志|r
step << Horde
.isOnQuest 9405
.goto Hellfire Peninsula,54.2,37.8
.turnin 9405 >>交任务: |cFF00FF25酋长的命令|r
step << Horde
.isOnQuest 10756
.goto Hellfire Peninsula,53.2,38.2
.turnin 10756 >>交任务: |cFF00FF25罗霍克大师|r
step << Horde
.isQuestTurnedIn 10756
.goto Hellfire Peninsula,53.2,38.2
.accept 10757 >>接任务: |cFFFCDC00罗霍克的要求|r
.turnin 10757 >>交任务: |cFF00FF25罗霍克的要求|r
step << Alliance
.isOnQuest 9493
.goto Hellfire Peninsula,56.8,62.6
.turnin 9493 >>交任务: |cFF00FF25邪部落的荣耀|r
step << Alliance
.isQuestTurnedIn 10047
.goto Hellfire Peninsula,56.6,66.6
.accept 10093 >>接任务: |cFFFCDC00塔哈玛特神殿|r
step << Alliance
.itemcount 29590,1
.goto Hellfire Peninsula,56.6,66.4
.use 29590 >>使用背包中的燃烧军团任务来接受任务
.accept 10395 >>接任务: |cFFFCDC00邪恶的信件|r
step << Alliance
.isOnQuest 10395
.goto Hellfire Peninsula,56.6,66.4
.turnin 10395 >>交任务: |cFF00FF25邪恶的信件|r
step << Alliance
.itemcount 23890,1
.goto Hellfire Peninsula,56.6,66.4
.use 23890 >>使用包中的不祥信接受任务
.accept 9587 >>接任务: |cFFFCDC00黑暗之潮|r
step << Alliance
.isOnQuest 9587
.goto Hellfire Peninsula,56.6,66.4
.turnin 9587 >>交任务: |cFF00FF25黑暗之潮|r
step << Alliance
.itemcount 32385,1
.goto Hellfire Peninsula,56.6,66.4
.use 32385 >>使用Matheridon的头接受任务
.accept 11002 >>接任务: |cFFFCDC00玛瑟里顿之死|r
.turnin 11002 >>交任务: |cFF00FF25玛瑟里顿之死|r
step << Alliance
.itemcount 31239,1
.goto Hellfire Peninsula,56.6,66.6
.use 31239 >>接任务: 你叫什么名字名字？
.accept 10754 >>接任务: |cFFFCDC00堡垒的钥匙|r
step << Alliance
.isOnQuest 10754
.goto Hellfire Peninsula,56.6,66.6
.turnin 10754 >>交任务: |cFF00FF25堡垒的钥匙|r
step << Alliance
.isQuestAvailable 10762
.goto Hellfire Peninsula,56.6,66.6
.accept 10762 >>接任务: |cFFFCDC00达姆菲大师|r
step << Alliance
.isOnQuest 9492
.goto Hellfire Peninsula,56.6,66.4
.turnin 9492 >>交任务: |cFF00FF25扭转战局|r
step << Alliance
.isOnQuest 9494
.goto Hellfire Peninsula,53.8,65.6
.turnin 9494 >>交任务: |cFF00FF25邪能灰烬|r
step << Alliance
.isOnQuest 10762
.goto Hellfire Peninsula,51.2,60.2
.turnin 10762 >>交任务: |cFF00FF25达姆菲大师|r
step << Alliance
.isQuestTurnedIn 10762
.goto Hellfire Peninsula,51.2,60.2
.accept 10763 >>接任务: |cFFFCDC00达姆菲的要求|r
.turnin 10763 >>交任务: |cFF00FF25达姆菲的要求|r
step
.isOnQuest 11515
.goto Hellfire Peninsula,58.2,17.6
.turnin 11515 >>交任务: |cFF00FF25血债血偿|r
step
.isOnQuest 11516
.goto Hellfire Peninsula,58.2,17.6
.turnin 11516 >>交任务: |cFF00FF25轰炸传送门|r
step << Alliance
.isQuestTurnedIn 9390
.goto Hellfire Peninsula,26.8,37.6
>>与尸体对话
.accept 9423 >>接任务: |cFFFCDC00返回欧巴迪身边|r
step << Alliance
.isOnQuest 10093
.goto Hellfire Peninsula,23.4,36.6
.turnin 10093 >>交任务: |cFF00FF25塔哈玛特神殿|r
step << Alliance
.isQuestAvailable 9423
.goto Hellfire Peninsula,23.0,40.4
.turnin 9423 >>交任务: |cFF00FF25返回欧巴迪身边|r
step
.itemcount 23338,1
.goto Hellfire Peninsula,15.6,52.2
.use 23338 >>使用包中的腐蚀皮套接受任务
.accept 9373 >>接任务: |cFFFCDC00遗失的信件|r
.turnin 9373 >>交任务: |cFF00FF25遗失的信件|r
step
.itemcount 29476,1
.goto Hellfire Peninsula,15.6,52.2
.use 29476 >>使用包中的深红水晶碎片接受任务
.accept 10134 >>接任务: |cFFFCDC00火红水晶中的线索|r
.turnin 10134 >>交任务: |cFF00FF25火红水晶中的线索|r
step << Horde
.isQuestTurnedIn 9774
.goto Zangarmarsh,85.2,54.6
.accept 9771 >>接任务: |cFFFCDC00寻找斥候尤尔巴|r
step << Horde
.isQuestAvailable 9775
.goto Zangarmarsh,85.2,54.6
.accept 9775 >>接任务: |cFFFCDC00向暗影猎手德恩加报到|r
step << Horde
.itemcount 24484,1
.goto Zangarmarsh,85.0,54.0
.use 24484 >>使用你的库存中的枯萎的Basidium来接受任务
.accept 9828 >>接任务: |cFFFCDC00枯萎的孢芽|r
.turnin 9828 >>Turn in Withered Basidium
step << Horde
.isOnQuest 9771
.goto Zangarmarsh,80.8,36.2
.turnin 9771 >>交任务: |cFF00FF25寻找斥候尤尔巴|r
step
.isQuestTurnedIn 9731
.goto Zangarmarsh,78.4,62.0
.accept 9724 >>接任务: |cFFFCDC00通知塞纳里奥议会|r
step
.itemcount 24367,1
.goto Zangarmarsh,78.4,62.0
.use 24367 >>用你包里的瓦什女士的命令接受任务
.accept 9764 >>接任务: |cFFFCDC00瓦丝琪的命令|r
.turnin 9764 >>交任务: |cFF00FF25瓦丝琪的命令|r
step
.isQuestTurnedIn 9764
.goto Zangarmarsh,78.4,62.0
.accept 9765 >>接任务: |cFFFCDC00战争准备|r
.turnin 9765 >>交任务: |cFF00FF25战争准备|r
step
.isQuestAvailable 9697
.goto Zangarmarsh,78.6,63.2
.reputation 942,friendly,<0,1 >>如果你对塞纳里奥探险队不够友好，请跳过这一步。
.accept 9697 >>接任务: |cFFFCDC00观察者莉萨奥|r
step
.itemcount 24401,10
.goto Zangarmarsh,80.2,64.2
.accept 9802 >>接任务: |cFFFCDC00赞加沼泽的植物|r
.turnin 9802 >>交任务: |cFF00FF25赞加沼泽的植物|r
step
.isQuestAvailable 9785
.goto Zangarmarsh,80.4,64.6
.accept 9785 >>接任务: |cFFFCDC00古树的祝福|r
step
.isOnQuest 9785
.goto Zangarmarsh,81.0,64.0,20,0
.goto Zangarmarsh,79.8,64.4
.skipgossip
>>与古阿申和凯利斯交谈以获得他们的标记。
.unitscan Ashyen
.unitscan Keleth
.complete 9785,1
.complete 9785,2
step
.isOnQuest 9785
.goto Zangarmarsh,80.4,64.6
.turnin 9785 >>交任务: |cFF00FF25古树的祝福|r
step << skip
.isQuestAvailable 9957
.goto Zangarmarsh,78.6,63.0
.accept 9957 >>接任务: |cFFFCDC00塞纳里奥树林出事了？|r
step
.isQuestTurnedIn 9731
.goto Hellfire Peninsula,16.0,52.2
.turnin 9724 >>交任务: |cFF00FF25通知塞纳里奥议会|r
step
.isQuestTurnedIn 9731
.goto Hellfire Peninsula,16.0,52.2
.accept 9732 >>接任务: |cFFFCDC00返回沼泽|r
step
.isQuestTurnedIn 9731
.goto Zangarmarsh,78.4,62.0
.turnin 9732 >>交任务: |cFF00FF25返回沼泽|r
step << Alliance
.itemcount 24483,1
.goto Zangarmarsh,68.6,48.8
.use 24483 >>使用你的库存中的枯萎的Basidium来接受任务
.accept 9827 >>接任务: |cFFFCDC00枯萎的孢芽|r
.turnin 9827 >>Turn in Withered Basidium
step
.isQuestTurnedIn 10231
.goto Shattrath City,43.6,29.6
>>如果“肮脏的”拉里死了，跳过这一步。
.accept 10251 >>接任务: |cFFFCDC00主人的伟大设计？|r
step << Alliance
.isOnQuest 10863
.goto Shattrath City,52.6,20.8
.turnin 10863 >>交任务: |cFF00FF25鸦人的秘密|r
step << Horde
.isOnQuest 10862
.goto Shattrath City,52.6,20.8
.turnin 10862 >>交任务: |cFF00FF25向部落投降|r
step
.isQuestTurnedIn 10009
.goto Shattrath City,77.2,34.8
.accept 10010 >>接任务: |cFFFCDC00就这么简单？|r
step
#completewith isleofquel
.goto Shattrath City,48.7,42.2
.zone 122 >>Take the portal in Shattrath to the Isle of Quel'Danas
step
.isOnQuest 11521
.goto Isle of Quel'Danas,53.8,34.2
.turnin 11521 >>交任务: |cFF00FF25继续寻根|r
step
.isOnQuest 11546
.goto Isle of Quel'Danas,53.8,34.2
.turnin 11546 >>交任务: |cFF00FF25开始营业|r
step
.isOnQuest 11541
.goto Isle of Quel'Danas,51.4,32.6
.turnin 11541 >>交任务: |cFF00FF25解救绿鳃奴隶|r
step
.isOnQuest 11550
.goto Isle of Quel'Danas,50.2,28.2
.turnin 11550 >>交任务: |cFF00FF25欺诈者降临|r
step
.isOnQuest 11523
.goto Isle of Quel'Danas,47.4,30.6
.turnin 11523 >>交任务: |cFF00FF25激活结界！|r
step
.isOnQuest 11525
.goto Isle of Quel'Danas,47.2,30.6
.turnin 11525 >>交任务: |cFF00FF25转化更多奥术守卫|r
step
.isOnQuest 11533
.goto Isle of Quel'Danas,47.6,35.2
.turnin 11533 >>交任务: |cFF00FF25继续空袭|r
step
.isOnQuest 11547
.goto Isle of Quel'Danas,47.6,35.4
>>如果你不打算提交祖拉曼或奥特兰山谷任务，使用它给你的卷轴奖励返回沙塔斯。
.turnin 11547 >>交任务: |cFF00FF25魔网能量线的读数|r
step
.isOnQuest 11536
.goto Isle of Quel'Danas,50.4,40.6
.turnin 11536 >>交任务: |cFF00FF25不要停下......|r
step
.itemcount 34501,5
.goto Isle of Quel'Danas,50.4,40.6
.turnin 11544 >>交任务: |cFF00FF25阿塔玛军备|r
step
.isOnQuest 11542
.goto Isle of Quel'Danas,50.4,39.0
.turnin 11542 >>交任务: |cFF00FF25拦截援军|r
step
.isOnQuest 11543
.goto Isle of Quel'Danas,50.4,39.0
.turnin 11543 >>交任务: |cFF00FF25拒敌港外|r
step
.isOnQuest 11539
.goto Isle of Quel'Danas,49.4,40.0
.turnin 11539 >>交任务: |cFF00FF25占领港口|r
step
#label isleofquel
.isOnQuest 11540
.goto Isle of Quel'Danas,49.4,40.0
.turnin 11540 >>交任务: |cFF00FF25击溃晨锋部队|r
step
.itemcount 33102,1
>>这一步需要召唤一个幽灵之地和一个回到沙塔斯的法师入口才能有效，如果你没有这些入口，请跳过。
.goto Ghostlands,70.4,67.8
.use 33102 >>用祖金之血接受任务
.accept 11178 >>接任务: |cFFFCDC00督军之血|r
.turnin 11178 >>交任务: |cFF00FF25督军之血|r
.accept 11163 >>接任务: |cFFFCDC00对不起，我是卧底|r
step
.isQuestTurnedIn 11178
.goto Ghostlands,70.6,68.2
.turnin 11163 >>交任务: |cFF00FF25对不起，我是卧底|r
step << Alliance
.isOnQuest 7141
.goto Alterac Mountains,40.6,79.8
>>这一步需要召唤奥特兰克山脉和一个回到沙塔斯的法师入口才能有效，如果你没有这些入口，请跳过。
.turnin 7141 >>交任务: |cFF00FF25奥特兰克的战斗|r
step << Alliance
.isQuestAvailable 8271
.goto Alterac Mountains,40.6,79.8
>>这一步需要召唤奥特兰克山脉和一个回到沙塔斯的法师入口才能有效，如果你没有这些入口，请跳过。
.turnin 8271 >>交任务: |cFF00FF25雷矛英雄|r
step << Alliance
.isQuestAvailable 7169
.goto Alterac Mountains,39.6,81.2
>>这一步需要召唤奥特兰克山脉和一个回到沙塔斯的法师入口才能有效，如果你没有这些入口，请跳过。
.turnin 7169 >>交任务: |cFF00FF25卫兵的尊敬|r
step << Alliance
.isQuestAvailable 7170
.goto Alterac Mountains,39.6,81.2
>>这一步需要召唤奥特兰克山脉和一个回到沙塔斯的法师入口才能有效，如果你没有这些入口，请跳过。
.turnin 7170 >>交任务: |cFF00FF25赢得尊敬|r
step << Alliance
.isQuestAvailable 7171
.goto Alterac Mountains,39.6,81.2
>>这一步需要召唤奥特兰克山脉和一个回到沙塔斯的法师入口才能有效，如果你没有这些入口，请跳过。
.turnin 7171 >>交任务: |cFF00FF25传说的英雄|r
step << Alliance
.isQuestAvailable 7172
.goto Alterac Mountains,39.6,81.2
>>这一步需要召唤奥特兰克山脉和一个回到沙塔斯的法师入口才能有效，如果你没有这些入口，请跳过。
.turnin 7172 >>交任务: |cFF00FF25命令之眼|r
step << Horde
.isOnQuest 7142
.goto Alterac Mountains,63.0,60.0
>>这一步需要召唤奥特兰克山脉和一个回到沙塔斯的法师入口才能有效，如果你没有这些入口，请跳过。
.turnin 7142 >>交任务: |cFF00FF25为奥特兰克而战|r
step << Horde
.isQuestAvailable 8272
.goto Alterac Mountains,63.0,60.0
>>这一步需要召唤奥特兰克山脉和一个回到沙塔斯的法师入口才能有效，如果你没有这些入口，请跳过。
.turnin 8272 >>交任务: |cFF00FF25霜狼英雄|r
step << Horde
.isQuestAvailable 7164
.goto Alterac Mountains,62.2,58.9
>>这一步需要召唤奥特兰克山脉和一个回到沙塔斯的法师入口才能有效，如果你没有这些入口，请跳过。
.turnin 7164 >>交任务: |cFF00FF25卫兵的尊敬|r
step << Horde
.isQuestAvailable 7165
.goto Alterac Mountains,62.2,58.9
>>这一步需要召唤奥特兰克山脉和一个回到沙塔斯的法师入口才能有效，如果你没有这些入口，请跳过。
.turnin 7165 >>交任务: |cFF00FF25赢得尊敬|r
step << Horde
.isQuestAvailable 7166
.goto Alterac Mountains,62.2,58.9
>>这一步需要召唤奥特兰克山脉和一个回到沙塔斯的法师入口才能有效，如果你没有这些入口，请跳过。
.turnin 7166 >>交任务: |cFF00FF25传说的英雄|r
step << Horde
.isQuestAvailable 7167
.goto Alterac Mountains,62.2,58.9
>>这一步需要召唤奥特兰克山脉和一个回到沙塔斯的法师入口才能有效，如果你没有这些入口，请跳过。
.turnin 7167 >>交任务: |cFF00FF25命令之眼|r
step
#completewith postav
.zoneskip Ghostlands,1
.zone Shattrath City >>前往: |cFFDB2EEF沙塔斯城|r
>>港口至沙塔斯。请勿使用炉缸 << !Shaman
>>沙塔斯港口或港口 << Shaman
step
#completewith postav
.zoneskip Alterac Mountains,1
.zone Shattrath City >>前往: |cFFDB2EEF沙塔斯城|r
>>港口至沙塔斯。请勿使用炉缸 << !Shaman
>>沙塔斯港口或港口 << Shaman
step
#completewith postav
.zoneskip Isle of Quel'Danas,1
.zone Shattrath City >>前往: |cFFDB2EEF沙塔斯城|r
>>港口至沙塔斯。请勿使用炉缸 << !Shaman
>>沙塔斯港口或港口 << Shaman
step
#sticky
#label postav
.zone Shattrath City >>前往: |cFFDB2EEF沙塔斯城|r
step << Horde
.isQuestTurnedIn 9928
.goto Nagrand,73.8,62.6
.accept 9934 >>接任务: |cFFFCDC00回到加拉达尔|r
step << Alliance
.isQuestTurnedIn 9932
.goto Nagrand,73.8,62.6
.accept 9933 >>接任务: |cFFFCDC00回到塔拉|r
step
.isOnQuest 10251
.goto Nagrand,51.8,56.8
.turnin 10251 >>交任务: |cFF00FF25主人的伟大设计？|r
step << Horde
.isOnQuest 9934
.goto Nagrand,55.4,37.6
.turnin 9934 >>交任务: |cFF00FF25回到加拉达尔|r
step << Horde
.isOnQuest 9937
.goto Nagrand,55.8,37.8
.turnin 9937 >>交任务: |cFF00FF25通缉：饥饿者杜恩|r
step << Alliance
.isOnQuest 11502
.goto Nagrand,55.8,73.6
.turnin 11502 >>交任务: |cFF00FF25保卫哈兰|r
step << Alliance
.isOnQuest 9933
.goto Nagrand,55.4,68.8
.turnin 9933 >>交任务: |cFF00FF25回到塔拉|r
step << Alliance
.isOnQuest 9938
.goto Nagrand,55.8,37.8
.turnin 9938 >>交任务: |cFF00FF25通缉：饥饿者杜恩|r
step << Alliance
.itemcount 24559,1
.goto Nagrand,55.4,68.8
.use 24559 >>使用库存中的黑血入侵计划接受任务
.accept 9871 >>接任务: |cFFFCDC00暗血入侵者|r
.turnin 9871 >>交任务: |cFF00FF25暗血入侵者|r
step << Alliance
.itemcount 25433,10
.goto Nagrand,54.8,70.8
.accept 10476 >>接任务: |cFFFCDC00强悍的敌人|r
.turnin 10476 >>交任务: |cFF00FF25强悍的敌人|r
step << Horde
.goto Nagrand,57.0,34.8
>>在小屋周围找到Drakia夫人
.unitscan Matron Drakia
.accept 9944 >>接任务: |cFFFCDC00失踪的玛格汉车队|r
step
.goto Nagrand,31.4,57.6
.reputation 933,neutral,<0,1
.itemcount 25416,10
.accept 9882 >>接任务: |cFFFCDC00偷盗贼的东西......能算偷么？|r
.turnin 9882 >>交任务: |cFF00FF25偷盗贼的东西......能算偷么？|r
step
.goto Nagrand,31.6,56.8
.reputation 933,neutral,<0,1
.itemcount 25463,3
>>交任务: |cFF00FF25象牙生意|r until you are friendly. Should be 9 turnins total.
.accept 9914 >>接任务: |cFFFCDC00象牙生意|r
.turnin 9914 >>交任务: |cFF00FF25象牙生意|r
step
.goto Nagrand,31.4,57.6
.reputation 933,friendly,<0,1
.itemcount 25433,10
.accept 9893 >>接任务: |cFFFCDC00黑曜石作战念珠|r
.turnin 9893 >>交任务: |cFF00FF25黑曜石作战念珠|r
step << Horde
>>如果由联盟控制，请跳过此步骤。
.itemcount 26042,10
.goto Nagrand,41.2,44.3
.accept 10074 >>接任务: |cFFFCDC00沃舒古水晶尘|r
.turnin 10074 >>交任务: |cFF00FF25沃舒古水晶尘|r
step << Horde
.isOnQuest 10010
.goto Nagrand,27.4,43.0
.turnin 10010 >>交任务: |cFF00FF25就这么简单？|r
step << Horde
.isOnQuest 10649
.goto Nagrand,27.4,43.0
.turnin 10649 >>交任务: |cFF00FF25恶魔名册|r
step << Horde
.isOnQuest 9944
.goto Nagrand,32.2,36.2
.turnin 9944 >>交任务: |cFF00FF25失踪的玛格汉车队|r
step << Horde
.isQuestTurnedIn 9865
.goto Nagrand,32.4,36.0
.accept 9866 >>接任务: |cFFFCDC00他要游历世界......|r
step << Horde
.isOnQuest 11503
.goto Nagrand,52.8,36.0
.turnin 11503 >>交任务: |cFF00FF25新仇旧怨|r
step << Horde
.isOnQuest 9866
.goto Nagrand,54.8,39.8
.turnin 9866 >>交任务: |cFF00FF25他要游历世界......|r
step << Horde
.itemcount 24558,1
.goto Nagrand,55.4,37.6
.use 24558 >>使用库存中的黑血入侵计划接受任务
.accept 9872 >>接任务: |cFFFCDC00暗血入侵者|r
.turnin 9872 >>交任务: |cFF00FF25暗血入侵者|r
step << Horde
.isQuestAvailable 9870
.goto Nagrand,55.6,37.8
>>在镇上找到元素师Yal'hah
.unitscan Elementalist Yal'hah
.accept 9870 >>接任务: |cFFFCDC00元素王座|r
step << Horde
.itemcount 25433,10
.goto Nagrand,55.8,37.8
.accept 10479 >>接任务: |cFFFCDC00证明你的力量|r
.turnin 10479 >>交任务: |cFF00FF25证明你的力量|r
step << Horde
.isOnQuest 9870
.goto Nagrand,60.6,22.2
.turnin 9870 >>交任务: |cFF00FF25元素王座|r
step << Horde
.isOnQuest 9853
.goto Nagrand,61.2,22.2
.turnin 9853 >>交任务: |cFF00FF25侵占者古罗克|r
step << Horde
.itemcount 24504,1
.goto Nagrand,60.6,22.2
.use 24504 >>使用库存中的啸风接受任务
.accept 9861 >>接任务: |cFFFCDC00呼嚎之风|r
.turnin 9861 >>交任务: |cFF00FF25呼嚎之风|r
step << Alliance
.isOnQuest 10010
.goto Nagrand,27.4,43.0
.turnin 10010 >>交任务: |cFF00FF25就这么简单？|r
step << Alliance
.isOnQuest 10649
.goto Nagrand,24.7,43.0
.turnin 10649 >>交任务: |cFF00FF25恶魔名册|r
step << Alliance
>>如果它被部落控制，跳过这一步。
.itemcount 26043,10
.goto Nagrand,41.2,44.2
.accept 10076 >>接任务: |cFFFCDC00沃舒古水晶尘|r
.turnin 10076 >>交任务: |cFF00FF25沃舒古水晶尘|r
step << Alliance
.itemcount 24504,1
.goto Nagrand,60.6,22.2
.use 24504 >>使用库存中的啸风接受任务
.accept 9861 >>接任务: |cFFFCDC00呼嚎之风|r
.turnin 9861 >>交任务: |cFF00FF25呼嚎之风|r
step << Alliance
.isOnQuest 9853
.goto Nagrand,61.2,22.2
.turnin 9853 >>交任务: |cFF00FF25侵占者古罗克|r
step
.isOnQuest 9977
.goto Nagrand,42.8,20.6
.turnin 9977 >>交任务: |cFF00FF25鲜血竞技场：终极挑战|r
step
.isOnQuest 9697
.goto Zangarmarsh,23.2,66.2
>>如果她不在这里，可能有人最近提交了一个任务，导致她消失。如果这个地方人满为患，不要等她，跳过这一步。
.turnin 9697 >>交任务: |cFF00FF25观察者莉萨奥|r
step
.isQuestAvailable 9697
.goto Zangarmarsh,23.2,66.2
.accept 9701 >>接任务: |cFFFCDC00观察孢子人|r
step
.itemcount 24291,6
.goto Zangarmarsh,19.0,62.6
.accept 9743 >>接任务: |cFFFCDC00天敌|r
.turnin 9743 >>交任务: |cFF00FF25天敌|r
step
.itemcount 24290,10
.goto Zangarmarsh,19.0,62.6
.accept 9739 >>接任务: |cFFFCDC00孢子人的困境|r
.turnin 9739 >>交任务: |cFF00FF25孢子人的困境|r
step
.isQuestAvailable 9919
.goto Zangarmarsh,19.0,63.6
.reputation 970,neutral,<0,1 >>你必须对斯波雷加保持中立才能接受这个任务
.accept 9919 >>接任务: |cFFFCDC00孢子村|r
step
.isOnQuest 9701
.goto Zangarmarsh,15.3,61.9
>>探索该地区。
.complete 9701,1
.complete 9701,2
step
.isOnQuest 9919
.goto Zangarmarsh,19.6,52.0
.turnin 9919 >>交任务: |cFF00FF25孢子村|r
step
#completewith next
.goto Zangarmarsh,19.0,62.6
.reputation 970,friendly >>完成转向沼泽主卷须或成熟孢子囊，直到你友好。
step
.goto Zangarmarsh,19.2,49.4
.reputation 970,friendly,<0,1
.itemcount 24245,10
.accept 9808 >>接任务: |cFFFCDC00亮顶蘑菇|r
.turnin 9808 >>交任务: |cFF00FF25亮顶蘑菇|r
step
.itemcount 24246,5
.goto Zangarmarsh,19.5,50.1
.reputation 970,friendly,<0,1
.accept 9715 >>接任务: |cFFFCDC00我要红色木槿！|r
.turnin 9715 >>交任务: |cFF00FF25我要红色木槿！|r
step
.itemcount 24449,6
.goto Zangarmarsh,19.2,49.4
.reputation 970,friendly,<0,1
.accept 9806 >>接任务: |cFFFCDC00成熟的孢子|r
.turnin 9806 >>交任务: |cFF00FF25成熟的孢子|r
step
#label sporenomore
.itemcount 25459,1
.goto Zangarmarsh,23.2,66.2
.use 25459 >>使用库存中的“数”Ungula的下颌骨来接受任务
.accept 9911 >>接任务: |cFFFCDC00沼泽中的伯爵|r
.turnin 9911 >>交任务: |cFF00FF25沼泽中的伯爵|r
step
.isOnQuest 9701
.goto Zangarmarsh,23.2,66.2
.turnin 9701 >>交任务: |cFF00FF25观察孢子人|r
step << Horde
.isOnQuest 9775
.goto Zangarmarsh,30.6,50.8
>>他在小屋的二楼
.turnin 9775 >>交任务: |cFF00FF25向暗影猎手德恩加报到|r
step << Horde
.isQuestAvailable 9795
.goto Zangarmarsh,30.6,50.8
.accept 9795 >>接任务: |cFFFCDC00食人魔的威胁|r
step << skip 
.isQuestTurnedIn 9968
.goto Terokkar Forest,44.4,26.2
.turnin 9957 >>交任务: |cFF00FF25塞纳里奥树林出事了？|r
step << Alliance
.isQuestAvailable 9794
.goto Zangarmarsh,41.2,28.6
.accept 9794 >>接任务: |cFFFCDC00禁止拆阅|r
step
.isOnQuest 9738
.goto Zangarmarsh,52.2,36.0
>>进入湖中央的水下水库
.turnin 9738 >>交任务: |cFF00FF25失踪的同伴|r
step
.isOnQuest 9763
.goto Zangarmarsh,52.2,36.0
.turnin 9763 >>交任务: |cFF00FF25督军的末日|r
step << Alliance
.isOnQuest 9794
.goto Blade's Edge Mountains,36.0,67.8
.turnin 9794 >>交任务: |cFF00FF25禁止拆阅|r
step << Alliance
.itemcount 29443,11
.goto Blade's Edge Mountains,37.4,64.6
.accept 10511 >>接任务: |cFFFCDC00奇怪的美酒|r
.turnin 10511 >>交任务: |cFF00FF25奇怪的美酒|r
step << Alliance
.isQuestAvailable 10581
.goto Blade's Edge Mountains,36.6,66.4
.accept 10580 >>接任务: |cFFFCDC00侏儒都去哪里了？|r
step
.isOnQuest 11000
.goto Blade's Edge Mountains,55.4,44.9
.turnin 11000 >>交任务: |cFF00FF25磨魂者|r
step
.isQuestTurnedIn 11000
.goto Blade's Edge Mountains,55.4,44.9
.accept 11009 >>接任务: |cFFFCDC00食人魔的天堂|r
step << Horde
.isOnQuest 10742
.goto Blade's Edge Mountains,51.8,58.4
.turnin 10742 >>交任务: |cFF00FF25摊牌|r
step << Alliance
.isOnQuest 10806
.goto Blade's Edge Mountains,53.2,41.2
.turnin 10806 >>交任务: |cFF00FF25摊牌|r
step << Horde
.isOnQuest 9795
.goto Blade's Edge Mountains,51.8,57.8
.turnin 9795 >>交任务: |cFF00FF25食人魔的威胁|r
step
.isOnQuest 11009
.goto Blade's Edge Mountains,28.7,57.4
.turnin 11009 >>交任务: |cFF00FF25食人魔的天堂|r
step
.itemcount 32569,5
.goto Blade's Edge Mountains,28.8,57.4
.accept 11025 >>接任务: |cFFFCDC00埃匹希斯水晶|r
.turnin 11025 >>交任务: |cFF00FF25埃匹希斯水晶|r
step
.itemcount 32598,1
.goto Blade's Edge Mountains,28.4,57.6
.accept 11030 >>接任务: |cFFFCDC00未来的天空卫队游侠|r
.turnin 11030 >>交任务: |cFF00FF25未来的天空卫队游侠|r
step
.itemcount 32601,1
.goto Blade's Edge Mountains,28.4,57.6
.accept 11061 >>接任务: |cFFFCDC00父亲的职责|r
.turnin 11061 >>交任务: |cFF00FF25父亲的职责|r
step << Alliance
.isOnQuest 10580
.goto Blade's Edge Mountains,55.0,72.8
.turnin 10580 >>交任务: |cFF00FF25侏儒都去哪里了？|r
step << Alliance
.isQuestTurnedIn 10580
.goto Blade's Edge Mountains,55.0,72.8
.accept 10581 >>接任务: |cFFFCDC00废话连篇|r
step << Alliance
.isOnQuest 10581
.goto Blade's Edge Mountains,60.4,69.0
.turnin 10581 >>交任务: |cFF00FF25废话连篇|r
step
.itemcount 31384,1
.goto Blade's Edge Mountains,62.6,40.2
.use 31384
.accept 10810 >>接任务: |cFFFCDC00损坏的面具|r
.turnin 10810 >>交任务: |cFF00FF25损坏的面具|r
.accept 10812 >>接任务: |cFFFCDC00神秘的面具|r
step
.itemcount 31489,1
.goto Blade's Edge Mountains,62.0,39.4
.use 31489 >>使用你库存中的狮鹫之珠接受任务
.accept 10825 >>接任务: |cFFFCDC00神秘的宝珠|r
.turnin 10825 >>交任务: |cFF00FF25神秘的宝珠|r
step
.isQuestAvailable 10682
.goto Blade's Edge Mountains,62.0,39.4
.accept 10682 >>接任务: |cFFFCDC00该谈判了......|r
step
.isOnQuest 10682
.goto Blade's Edge Mountains,62.7,44.0,80,0
.goto Blade's Edge Mountains,58.5,39.4,80,0
.goto Blade's Edge Mountains,62.0,32.1
.line Blade's Edge Mountains,63.0,45.8,58.4,38.6,63.0,27.2
.unitscan Overseer Nuaar
>>上上下下找监督努尔，然后和他说话
.skipgossip
.complete 10682,1
step
.isOnQuest 10682
.goto Blade's Edge Mountains,62.0,39.4
.turnin 10682 >>交任务: |cFF00FF25该谈判了......|r
step
.isOnQuest 10812
.goto Blade's Edge Mountains,61.6,38.4
>>任务给予者在城市里绕着我走了一圈。
.turnin 10812 >>交任务: |cFF00FF25神秘的面具|r
step
.isQuestTurnedIn 10819
.goto Blade's Edge Mountains,61.6,38.4
.accept 10819 >>接任务: |cFFFCDC00魔誓防毒面具|r
step
.isOnQuest 10819
.goto Blade's Edge Mountains,73.3,40.1
.use 31366 >>戴上恶棍防毒面具。
.turnin 10819 >>交任务: |cFF00FF25魔誓防毒面具|r
step << Horde
.itemcount 31670,3
.goto Blade's Edge Mountains,76.0,60.2
.accept 10860 >>接任务: |cFFFCDC00莫克纳萨的美味|r
.turnin 10860 >>交任务: |cFF00FF25莫克纳萨的美味|r

step
.isQuestAvailable 10317
.goto Netherstorm,34.6,37.8
.accept 10317 >>接任务: |cFFFCDC00对付工头|r
step
.isOnQuest 10317
.goto Netherstorm,26.4,42.2
.turnin 10317 >>交任务: |cFF00FF25对付工头|r
step
.isOnQuest 9631
.goto Netherstorm,32.2,63.6
.turnin 9631 >>交任务: |cFF00FF25同事的帮助|r
step
.isQuestTurnedIn 10186
.goto Netherstorm,32.7,64.9
.accept 10225 >>接任务: |cFFFCDC00向主工程师汇报|r
step
.isOnQuest 10225
.goto Netherstorm,32.4,66.6
.turnin 10225 >>交任务: |cFF00FF25向主工程师汇报|r
step
#aldor
.isQuestTurnedIn 10407
.goto Netherstorm,32.0,64.2
.accept 10410 >>接任务: |cFFFCDC00伊沙娜的帮助|r
step
#scryer
.isQuestTurnedIn 10508
.goto Netherstorm,32.0,64.0
.accept 10509 >>接任务: |cFFFCDC00无上的荣耀|r
step
.isQuestTurnedIn 10248
.goto Netherstorm,37.2,63.8
.accept 10249 >>接任务: |cFFFCDC00去找火箭主管！|r
step
.isOnQuest 10249
.goto Netherstorm,32.6,64.8
.turnin 10249 >>交任务: |cFF00FF25去找火箭主管！|r
step
.isQuestTurnedIn 10312
.goto Netherstorm,57.4,86.2
.accept 10316 >>接任务: |cFFFCDC00寻找证据|r
step
>>进入塔内，到达塔顶。
.itemcount 28769,1
.goto Netherstorm,58.2,86.4
.turnin 10257 >>交任务: |cFF00FF25夺回钥石|r
step
.isQuestAvailable 10334
.goto Netherstorm,57.6,85.0
.accept 10334 >>接任务: |cFFFCDC00贝希的铃铛|r
step
.itemcount 29233,1
.goto Netherstorm,56.9,86.8
.use 29233 >>使用Dathric之刃接受任务
.accept 10182 >>接任务: |cFFFCDC00战斗法师达斯利克|r
step
.itemcount 29235,1
.goto Netherstorm,56.4,87.8
.use 29235 >>使用Luminrath的斗篷接受任务
.accept 10306 >>接任务: |cFFFCDC00咒术师鲁米拉斯|r
step
.itemcount 29236,1
.goto Netherstorm,55.5,87.0
.use 29236 >>使用科林的帽子接受任务
.accept 10307 >>接任务: |cFFFCDC00考利恩·霜纹|r
step
.itemcount 29234,1
.goto Netherstorm,55.5,86.5
.use 29234 >>使用Belmara的Tome接受任务
.accept 10305 >>接任务: |cFFFCDC00防御法师贝尔玛拉|r
step
.isOnQuest 10182
.goto Netherstorm,56.9,86.8
.use 28351 >>使用任务物品将拿督之刃放置在市政厅内的武器架上
.complete 10182,1
step
.isOnQuest 10307
.goto Netherstorm,55.5,87.0
.use 28353 >>使用任务物品将科琳的帽子放在房间的搁脚柜内
.complete 10307,1
step
.isOnQuest 10305
.goto Netherstorm,55.5,86.5
.use 28336 >>使用任务物品将Belmara的Tome放在她家的书架上
.complete 10305,1
step
.isOnQuest 10306
.goto Netherstorm,56.4,87.8
.use 28352 >>使用任务物品将Luminrath的披风放置在他家的梳妆台上
.complete 10306,1
step
.isOnQuest 10307
.goto Netherstorm,57.4,86.2
.turnin 10307 >>交任务: |cFF00FF25考利恩·霜纹|r
step
.isOnQuest 10182
.goto Netherstorm,57.4,86.2
.turnin 10182 >>交任务: |cFF00FF25战斗法师达斯利克|r
step
.isOnQuest 10305
.goto Netherstorm,57.4,86.2
.turnin 10305 >>交任务: |cFF00FF25防御法师贝尔玛拉|r
step
.isOnQuest 10306
.goto Netherstorm,57.4,86.2
.turnin 10306 >>交任务: |cFF00FF25咒术师鲁米拉斯|r
step
.isOnQuest 10334
.goto Netherstorm,59.2,78.8
.turnin 10334 >>交任务: |cFF00FF25贝希的铃铛|r
step
.isOnQuest 10316
.goto Netherstorm,60.3,78.0
.turnin 10316 >>交任务: |cFF00FF25寻找证据|r
step
.isQuestTurnedIn 10418
.goto Netherstorm,46.4,56.4
.accept 10423 >>接任务: |cFFFCDC00前往风暴尖塔|r
step
.isQuestTurnedIn 10433
.goto Netherstorm,46.4,56.4
.accept 10434 >>接任务: |cFFFCDC00两个同伴|r
step
>>点击收发器吊舱
.isOnQuest 10408
.goto Netherstorm,56.8,38.6
.turnin 10408 >>交任务: |cFF00FF25节点之王萨哈达尔|r
step
.itemcount 29738,1
.goto Netherstorm,59.2,32.4
.use 29738 >>使用库存中的虚空恐怖软泥小瓶接受任务
.accept 10413 >>接任务: |cFFFCDC00虚空的软泥|r
.turnin 10413 >>交任务: |cFF00FF25虚空的软泥|r
step
.isOnQuest 10439
.goto Netherstorm,60.0,31.8
.turnin 10439 >>交任务: |cFF00FF25诸界吞噬者迪门修斯|r
step
.isOnQuest 10423
.goto Netherstorm,43.6,35.0
.turnin 10423 >>交任务: |cFF00FF25前往风暴尖塔|r
step
.isOnQuest 10434
.goto Netherstorm,44.8,36.6
.turnin 10434 >>交任务: |cFF00FF25两个同伴|r
step
.isQuestTurnedIn 10276
.goto Netherstorm,45.8,36.0
>>接受任务后，穿过左边的紫色圆圈传送带传送到沙塔斯
.accept 10280 >>接任务: |cFFFCDC00送往沙塔斯的特殊货物|r
step
#completewith shat
.zone Shattrath City >>前往: |cFFDB2EEF沙塔斯城|r
step
.isOnQuest 10280
.goto Shattrath City,54.0,44.6
.turnin 102080 >>交任务: |cFF00FF25送往沙塔斯的特殊货物|r
step
#aldor
.isOnQuest 10410
.goto Shattrath City,24.2,29.8
.turnin 10410 >>交任务: |cFF00FF25伊沙娜的帮助|r
step
#scryer
.isOnQuest 10509
.goto Shattrath City,42.6,91.6
.turnin 10509 >>交任务: |cFF00FF25无上的荣耀|r
step
#label shat
.isOnQuest 11024
.goto Shattrath City,52.6,20.8
.turnin 11024 >>交任务: |cFF00FF25贫民窟的盟友|r
step
.goto Shattrath City,74.7,31.5
.reputation 989,revered,<0,1 >>前往: |cFFDB2EEF塔纳利斯|r
.zone Tanaris >>前往: |cFFDB2EEF塔纳利斯|r
step
.zoneskip Tanaris
.goto Tanaris,66.1,49.7
+ Get a summon to Caverns of Time. The guide is finished if you don't have one, it's not worth the time if you need to run there. Off to Northrend!
step
.isOnQuest 10445
.goto Tanaris,58.3,54.8
>>阿拉兹莫杜和索里多米逆时针在房间里巡逻，四处跑，直到你找到他们。
.unitscan Soridomi
.turnin 10445 >>交任务: |cFF00FF25永恒水瓶|r
step
.goto Tanaris,58.3,54.8
.reputation 989,friendly,<0,1
>>阿拉兹莫杜和索里多米逆时针在房间里巡逻，四处跑，直到你找到他们。接受你选择的戒指任务。这不是自动进行的，以防止拾取错误的戒指。如果没有友情戒指任务可用，请跳过此步骤。
.unitscan Soridomi
.dailyturnin 10462,10461,10460,10463 >>递交戒指誓言
step
.goto Tanaris,58.3,54.8
.reputation 989,honored,<0,1
>>阿拉兹莫杜和索里多米逆时针在房间里巡逻，四处跑，直到你找到他们。
.unitscan Soridomi
.daily 10464,10465,10466,10467 >>Accept a Vow Ring Quest
.dailyturnin 10464,10465,10466,10467 >>交出一个誓言戒指任务
step
.goto Tanaris,58.3,54.8
.reputation 989,revered,<0,1
>>阿拉兹莫杜和索里多米逆时针在房间里巡逻，四处跑，直到你找到他们。
.unitscan Soridomi
.daily 10468,10469,10470,10471 >>Accept an Oath Ring Quest
.dailyturnin 10468,10469,10470,10471 >>交出誓言戒指任务
step
.goto Tanaris,58.3,54.8
.reputation 989,exalted,<0,1
>>阿拉兹莫杜和索里多米逆时针在房间里巡逻，四处跑，直到你找到他们。
.unitscan Soridomi
.daily 10472,10473,10474,10475 >>Accept an Covenant Ring Quest
.dailyturnin 10472,10473,10474,10475 >>交出盟约戒指任务
step
.isOnQuest 10297
.goto Tanaris,57.6,62.7
>>进入黑沼泽并完成任务
.turnin 10297 >>交任务: |cFF00FF25开启黑暗之门|r
]])