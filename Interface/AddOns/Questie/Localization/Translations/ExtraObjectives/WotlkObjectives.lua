---@type l10n
local l10n = QuestieLoader:ImportModule("l10n")

local wotlkObjectiveLocales = {
    ["Wait for Harrowmeiser's zeppelin to dock"] = { -- 11153
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Warte auf Eggenmeisters Zeppelin",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "等待哈隆梅瑟尔的地精飞艇停靠",
    },
    ["Throw the firecrackers up to 20 yards away underneath a darkclaw bat to scare it"] = { -- 11154
        ["ptBR"] = "Lança as Bombinhas a uma distância de até 20 metros abaixo de um Morcego Garrumbra para assustá-lo",
        ["ruRU"] = "Бросить хлопушки на расстояние до 20 м под темнолапую летучую мышь, чтобы напугать ее",
        ["deDE"] = "Werft die Knallfrösche bis zu 20 Meter weit unter eine Dunkelklauenfledermaus, um sie zu erschrecken",
        ["koKR"] = "최대 20미터 내에 불꽃탄을 던져 박쥐를 놀라게 합니다",
        ["esMX"] = "Lanza los petardos a 20 m bajo un Garranegra para asustarlo",
        ["enUS"] = true,
        ["frFR"] = "Lance les pétards à une distance maximale de 20 mètres sous une chauve-souris sombregriffe pour l'effrayer",
        ["esES"] = "Lanza los petardos a 20 m bajo un Garranegra para asustarlo",
        ["zhTW"] = "將爆竹扔在最遠20碼以外的暗爪蝙蝠下方以驚嚇它。",
        ["zhCN"] = "将爆竹扔在最远20码以外的暗爪蝙蝠下方以惊吓它。",
    },
    ["Use Feathered Charm on Steelfeather"] = { -- 11418
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Benutze Gefiederter Glücksbringer auf Stahlfeder",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "对钢羽使用饰羽符咒",
    },
    ["Entrance to Utgarde Catacombs"] = { -- 11420
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Eingang zu den Katakomben von Utgarde",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "进入乌特加德墓穴",
    },
    ["Talk to Olga"] = { -- 11466
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Sprich mit Olga",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "和奥尔佳交谈",
    },
    ["Fight Jonah"] = { -- 11471
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Kämpfe gegen Jonah",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "和约纳战斗",
    },
    ["Present the Vrykul Scroll of Ascension"] = { -- 11249
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Präsentiere die Vrykulrolle des Aufstiegs",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "展开维库升华卷轴",
    },
    ["Use Destructive Ward"] = { -- 12261
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Use Destructive Ward",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Speak to Gorebag and take the tour of Zul'Drak"] = { -- 12664
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Use Quetz'lun's Hexxing Stick and slay him/her"] = { -- 12674
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Benutze Quetz'luns Verhexungsstecken und töte ihn/sie",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "使用奎丝鲁恩的妖术棒杀死他/她",
    },
    ["Use Quetz'lun's Ritual"] = { -- 12674
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Benutze Quetz'luns Ritual",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
       ["zhCN"] = "使用奎丝鲁恩的妖术棒",
    },
    ["Capture Chicken Escapee"] = { -- 12532
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Fange Entflohenes Huhn",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "捕捉逃走的小鸡",
    },
    ["Use Gossamer Potion"] = { -- 12327
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Benutze Samtiger Trank",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "使用幻境药水",
    },
    ["Get in Brann Bronzebeard Flying Machine"] = { -- 12973
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Spring in Brann Bronzebarts Flugmaschine",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "进入布莱恩·铜须的飞行器",
    },
    ["Use Eye of Acherus Control Mechanism"] = { -- 12641
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Benutze Kontrollmechanismus des Auges von Acherus",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "用阿彻鲁斯之眼的控制台",
    },
    ["Deliver Stolen Horse"] = { -- 12680
        ["ptBR"] = "Entregar Cavalo Roubado",
        ["ruRU"] = "Передача украденной лошади",
        ["deDE"] = "Gestohlenes Pferd abgeben",
        ["koKR"] = "도둑맞은 말 배달",
        ["esMX"] = "Entregar caballo robado",
        ["enUS"] = true,
        ["frFR"] = "Livraison du cheval volé",
        ["esES"] = "Entregar caballo robado",
        ["zhTW"] = false,
        ["zhCN"] = "上缴取来的马",
    },
    ["Defeat Dark Rider of Acherus and take his horse"] = { -- 12687
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Besiege einen Dunkler Reiter von Acherus und nimm sein Pferd",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "击败阿彻鲁斯黑暗骑士，并夺走他的战马",
    },
    ["Return Scarlet Ghouls"] = { -- 12698
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Bring die Scharlachroter Ghule zurück",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "对血色矿工使用收割者的礼物",
    },
    ["Climb inside the Inconspicuous Mine Car"] = { -- 12701
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Kletter in die Unverdächtige Lore",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "找到在厕所附近的矿车。爬进矿车中",
    },
    ["Use the Scarlet Cannon"] = { -- 12701
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Benutze die Scharlachrote Kanone",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "用火炮攻击他们",
    },
    ["Equip Keleseth's Persuaders and persuade Scarlet Crusaders"] = { -- 12720
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Rüste Keleseths Überzeuger aus und überzeuge Scharlachrote Soldaten",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "装备凯雷塞斯的说服者，使用它们来“说服”血色十字军",
    },
    ["Use the Makeshift Cover"] = { -- 12754
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Benutze die Behelfsmäßige Deckung",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "使用伪装工具把自己藏起来",
    },
    ["Use the Horn of the Frostbrood"] = { -- 12779
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Benutze das Horn der Frostbrut",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "使用冰霜巨龙号角",
    },
    ["Talk to Highlord Darion Mograine"] = { -- 12801
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Sprich mit Hochlord Darion Mograine",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "与大领主达里安·莫格莱尼交谈",
    },
    ["The Light of Dawn Uncovered"] = { -- 12801
        ["ptBR"] = "A Luz da Aurora descoberta",
        ["ruRU"] = "Сияние рассвета найдено",
        ["deDE"] = "Das Licht der Morgendämmerung gefunden",
        ["koKR"] = "새벽의 빛 드러내기",
        ["esMX"] = "La luz del alba descubierta",
        ["enUS"] = true,
        ["frFR"] = "Lumière de l'Aube découverte",
        ["esES"] = "La luz del alba descubierta",
        ["zhTW"] = false,
        ["zhCN"] = "揭开黎明之光的秘密",
    },
    ["Use Fresh Barbfish Bait"] = { -- 11410
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Benutze Frischer Barbenköder",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "使用新鲜的鲶鱼饵",
    },
    ["Use Rune Sample"] = { -- 11358 & 11366
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Benutze Probestück einer Rune",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "使用符文样本",
    },
    ["Use Scepter of Command"] = { -- 12690
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Benutze Szepter des Befehls",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "使用命令节杖",
    },
    ["Use Ley Line Focus Control Talisman"] = { -- 12107
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Benutze Steuerungstalisman des Leylinienfokus",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "使用魔网能量焦点控制饰品",
    },
    ["Azure Dragonshrine observed"] = { -- 12107
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "调查碧蓝巨龙圣地",
    },
    ["Use Tu'u'gwar's Bait"] = { -- 12017
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Benutze Tu'u'gwars Köder",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "使用图格瓦尔的诱饵",
    },
    ["Throw Wolf Bait"] = { -- 11728
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Wirf Wolfsköder",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "扔狼饵",
    },
    ["Ride Dusk"] = { -- 11956
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Reite auf Abenddämmerung",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "骑上战马黄昏",
    },
    ["Teleport to the top of Naxxanar"] = { -- 12019
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Teleportiere nach Naxxanar",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "使用传送宝珠进入浮空城的顶部",
    },
    ["Talk to Thassarian"] = { -- 12019
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Sprich mit Thassarian",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "和萨萨里安交谈",
    },
    ["Talk to Captive Crocolisk"] = { -- 12536
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Sprich mit Gefangener Krokilisk",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "骑上被俘虏的鳄鱼",
    },
    ["Use Raelorasz' Spark"] = { -- 11969
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Benutze Raelorasz' Funken",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "使用莱洛拉斯的火花",
    },
    ["Talk to Keristrasza"] = { -- 11957
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Sprich mit Keristrasza",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "与克莉斯塔萨交谈",
    },
    ["Use Arcane Power Focus"] = { -- 11957
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Benutze Arkaner Kraftfokus",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "使用奥术能量源",
    },
    ["Use Valve"] = { -- 11788
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Benutze Ventil",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "使用哨站的阀门",
    },
    ["Use the Gearmaster's Manual"] = { -- 11798
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Benutze das Handbuch des Ritzelmeisters",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "使用机甲专家的手册",
    },
    ["Melee attack Venomhide Ravasaur"] = { -- 13850
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Greife Gifthautravasaurus im Nahkampf an",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = "攻击毒皮魔暴龙",
    },
    ["Slay Vrykul across the Forsaken blockade until they appear"] = { -- 11282
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Talk to Bat Handler Camille"] = { -- 11170
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Sprich mit Fledermausführerin Kamilla",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Talk to Wyrmbait and slay Icestorm"] = { -- 12467
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Fish for Severed Arm"] = { -- 13836
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Angel nach Abgetrennter Arm",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Fish for Corroded Jewelry"] = { -- 13832
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Angel nach Korrodierter Schmuck",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Slay any beast, jump in any water location and fish in the Pool of Blood"] = { -- 13833
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Töte irgendeine Bestie, spring ins Wasser und angel im Blut im Wasser",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Fill the Empty Apothecary's Flask at the Cauldron of Vrykul Blood"] = { -- 11306
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Mix the Flask of Vrykul Blood with Harris's Plague Samples"] = { -- 11306
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Break Riven Widow Cocoons to free captives"] = { -- 11296
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Use Grick's Bonesaw on corpses of Deranged Explorers"] = { -- 11301
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Ask Alanya for transportation"] = { -- 11567
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Lure Reef Bull with Tasty Reef Fish"] = { -- 11472
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Place Tillinghast's Plagued Meat on the ground"] = { -- 11280
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Plagued Vrykul Sprayed"] = { -- 11307
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Feed it with Zul'Drak Rat"] = { -- 12527
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Füttere es mit Zul'Drak Ratten",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Plagued Vrykul exterminated"] = { -- 11310
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Place fake fur near Caribou Traps"] = { -- 11865
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Use Beryl Shield Detonator"] = { -- 11671
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Kill Inquisitor Salrand"] = { -- 11671
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Place Icemaw Bear Flank"] = { -- 13011
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = "Füttere es mit Zul'Drak Ratten",
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Use Imperean's Primal on Snarlfang's Totem"] = { -- 11631
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Use Jenny's Whistle near a crashed flying machine"] = { -- 11881
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Slay Frostgore"] = { -- 11281
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Test Rune of Command on normal Stone Giants"] = { -- 11348, 11352
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Use Windsoul Totem to collect energy from killing Steam Ragers"] = { -- 11893
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Robots weakened and destroyed"] = { -- 11896
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Nerubian tunnels collapsed"] = { -- 11706
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Use The Horn of Elemental Fury near the southern sinkhole"] = { -- 11706
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Ride Flamebringer"] = { -- 12259
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Enlist Budd's help"] = { -- 11984
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Escort Budd to the Drak' Zin Ruins"] = { -- 11984
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Use Budd's Tag Troll spell to stun Drakkari trolls"] = { -- 11984
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Capture stunned Drakkari trolls with Bounty Hunter's Cage"] = { -- 11984
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Place Scourged Troll Mummy in the fire"] = { -- 12484
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Use Tranquilizer Dart on Tatjana"] = { -- 12330
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Talk to Tur Ragepaw to summon Ursoc"] = { -- 12236, 12249
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Spray Proto-Drake Egg"] = { -- 11279
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Use Skytalon Molts"] = { -- 12456
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
    ["Use Ethereal Worg's Fang"] = { -- 12994
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["frFR"] = false,
        ["esES"] = false,
        ["zhTW"] = false,
        ["zhCN"] = false,
    },
}

for k, v in pairs(wotlkObjectiveLocales) do
    l10n.translations[k] = v
end
