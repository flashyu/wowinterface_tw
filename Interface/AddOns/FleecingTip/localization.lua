------------------------------------------------------
-- localization.lua
------------------------------------------------------

FT = {
	
	SPECIAL_VENDOR_COLOR = {r=1.0, g=0.5, b=0.25},
	PATTERN_COLOR = {r=0.25, g=1.0, b=0.5},
	DROP_COLOR = {r=1.0, g=0.50, b=0.75},
	QUEST_COLOR = {r=0.2, g=0.80, b=0.2},
	USELESS_COLOR = {r=1.0, g=0.25, b=0.25},
	INDENT = "  ",
	COST_SPACE = ": ",
	DASH = "'",
	
	NEW_ITEM = "[New] Sold by %s, %s: %s",
	SOLD_BY = "Sold by",
	PRICE = "Price: %s",
	AVERAGE_PRICE = "Average purchase price: %s",
	VENDOR_LOCATION_FORMAT = "%s, %s%s%s",
	FACTION_REWARDS = "%s Rewards:",
	FACTION_REWARDS_COUNT = "%d %s Rewards",
	TURNIN = "Faction turnin for",
	WITH = "also requires",
	BUY = "Buy ",
	MADE_BY = "Crafted by",
	DROPPED_BY = "Dropped by",
	OPTAINABLE_BY = "Optainable by",
	PATTERN_FROM = "|cffffff00'%s'|r for |cffffffff%s|r from, ",
	EVERYWHERE = "Everywhere",
	PATROLLING_ROUTE = "Patrolling route",
	PATROLLING_ON_ROAD = "Patrolling on the road",
	UNKNOWN_LOCATION = "|cffff44aa".._G.UNKNOWN.."|r",
	HOLIDAY_EVENT = "Holiday event",
	HOLIDAY_EVENT_Brew = "Brewfest",
	HOLIDAY_EVENT_DotD = "Day of the Dead",
	HOLIDAY_EVENT_FoWV = "Feast of Winter Veil",
	HOLIDAY_EVENT_HE = "Hallow's End",
	HOLIDAY_EVENT_HF = "Harvest Festival",
	HOLIDAY_EVENT_LiitA = "Love is in the Air",
	HOLIDAY_EVENT_LF = "Lunar Festival",
	HOLIDAY_EVENT_Noble = "Noblegarden",
	HOLIDAY_EVENT_MFF = "Midsummer Fire Festival",
	HOLIDAY_EVENT_PB = "Pilgrim's Bounty",
	PURCHASE_ONLINE = "Purchase Online",
	CLASS_PROFESSION = "Profession: ",
	PROFESSION_BLACKSMITHING = "Blacksmithing.",
	PROFESSION_ENGINEERING = "Engineering.",
	PROFESSION_LEATHERWORKING = "Leatherworking.",
	PROFESSION_TAILORING = "Tailoring.",
	SKILL_LEVEL_REQUIRED = "Skill level %s required.",
	LEVEL_DROP = "level %s.",
	MOB_BOSS = "Boss",
	MOB_RARE = "Rare",
	MOB_ELITE = "Elite",
	MOB_RARE_ELITE = "Rare Elite",
	QUEST_REWARD = "Reward",
	HORDE_CITIES = "Horde Capital Cities",
	ALLIANCE_CITIES = "Alliance Capital Cities",
	PET_VENDOR = "(Exotic Pets and Accessories)",
	REWARD_FROM = "Reward from",
	VARIOUS = "Various",
	NEED_FOR = "Need %s for",
	LEARN_AT = "Learn |cffffff00'%s'|r at your profession trainer",
	WORLD_EVENT = "World Event",
	ITEM_WARNING = "WARNING! No longer used in game. Could be a trash item.",
	
	ACTIVE = _G.ACTIVE_PETS,
	NO_ACTIVE = _G.UNAVAILABLE,
	
	SEASONAL_VENDOR = "Seasonal vendor",
	DARKMOON_FAIRE = _G.CALENDAR_FILTER_DARKMOON,
	
	REQ_STANDING = "Required Reputation: ",
	REQ_FACTION_FRIENDLY = "|cff00ff00Friendly|r", 		-- Friendly
	REQ_FACTION_HONORED = "|cff00ffffHonored|r", 		-- Honored
	REQ_FACTION_REVERED = "|cff0000ffRevered|r", 		-- Revered
	REQ_FACTION_EXALTED = "|cffff00ffExalted|r", 		-- Exalted
	REQ_FACTION_FRIEND = "|cff00ff00Good Friend|r",		-- Good Friend
	
	RECIPE = "Recipe",
	BAG = _G.BAGSLOT,
	BOOK = "Book",
	MISCELLANEOUS = _G.MISCELLANEOUS,
	MOUNT = _G.MOUNT,
	PET = _G.PET,
	QUIVER = _G.INVTYPE_QUIVER,
	CONTAINER = _G.ITEM_CONTAINER,
	
	--options
	ICON = "Icon",
	SHORT = "Short",
	LONG = "Long",
	
};

-- localization for map regions
FT["Azuremyst Isle"] = "Azuremyst Isle";
FT["Broken Shore"] = "Broken Shore";
FT["Dalaran"] = "Dalaran";
FT["Dun Morogh"] = "Dun Morogh";
FT["Durotar"] = "Durotar";
FT["Elwynn Forest"] = "Elwynn Forest";
FT["Eversong Woods"] = "Eversong Woods";
FT["Frostwall"] = "Frostwall";
FT["Lunarfall"] = "Lunarfall";
FT["Mulgore"] = "Mulgore";
FT["Teldrassil"] = "Teldrassil";
FT["Tirisfal Glades"] = "Tirisfal Glades";
FT["Trueshot Lodge"] = "Trueshot Lodge";


FT["Blackfathom Deeps"] = "Blackfathom Deeps";
FT["Blackrock Depths"] = "Blackrock Depths";
FT["Blackrock Spire"] = "Blackrock Spire";
FT["Dire Maul"] = "Dire Maul";
FT["Gnomeregan"] = "Gnomeregan";
FT["Maraudon"] = "Maraudon";
FT["Ragefire Chasm"] = "Ragefire Chasm";
FT["Razorfen Downs"] = "Razorfen Downs";
FT["Razorfen Kraul"] = "Razorfen Kraul";
FT["Scarlet Halls"] = "Scarlet Halls";
FT["Scarlet Monastery"] = "Scarlet Monastery";
FT["Scholomance"] = "Scholomance";
FT["Shadowfang Keep"] = "Shadowfang Keep";
FT["Stratholme"] = "Stratholme";
FT["The Barrens"] = "The Barrens";
FT["The Deadmines"] = "The Deadmines";
FT["The Stockade"] = "The Stockade";
FT["The Temple of Atal'Hakkar"] = "The Temple of Atal'Hakkar";
FT["Uldaman"] = "Uldaman";
FT["Wailing Caverns"] = "Wailing Caverns";
FT["Zul'Farrak"] = "Zul'Farrak";


--[[ German localization
if ( GetLocale() == "deDE" ) then

	-- new de-localizations override 
	-- new de-localizations adds
	-- by zara @ united-netplayers.de

	SOLD_FOR_PRICE_BY = "Wird für %s verkauft von";					-- prefix to vendor info when price is shown
	SOLD_BY = "Wird verkauft von";									-- prefix to vendor info when no price is shown
	RETURN_TO = "Zurückkehren zu";								-- prefix to info for librams
	ARCANUM_FORMAT = "Belohnung: %s Verzauberung";				-- bonus info for librams
	VENDOR_LOCATION_FORMAT = "%s, %s";						-- format for showing vendor name and location
	FT_FACTION_REWARDS = "%s Belohnung:";
	FT_FACTION_REWARDS_COUNT = "%d %s Belohnung";
	FT_TURNIN = "Rufabgabe für";
	FT_WITH = "wird auch benötigt";
	
-- notes for other items
	DARKMOON = "Zum Dunkelmond-Jahrmarkt bringen und Belohnungen abholen!";
	
-- notes for vendors with special availability
	SEASONAL_VENDOR = "(Saisonaler Verkäufer)";
	SCHOLO_QUEST = "Benötigt Spektrale Essenz";
	
	BRD_BARKEEP = "Schwarzfelstiefen - Gastwirt";
	DM_LIBRARY = "Düsterbruch - Bibliothek";
	
	REQ_FACTION = "Ruf ";
	
-- notes for items only available once you have a certain reputation standing
	THORIUM_FRIENDLY = "Benötigt Thorium-Bruderschaft - "..FACTION_STANDING_LABEL5;
	THORIUM_HONORED = "Benötigt Thorium-Bruderschaft - "..FACTION_STANDING_LABEL6;
	THORIUM_REVERED = "Benötigt Thorium-Bruderschaft - "..FACTION_STANDING_LABEL7;
	THORIUM_EXALTED = "Benötigt Thorium-Bruderschaft - "..FACTION_STANDING_LABEL8;

	TIMBERMAW_FRIENDLY = "Benötigt Die Holzschlundfeste - "..FACTION_STANDING_LABEL5;

	-- Faction names
	AD_FACTION = "Argentumdämmerung";
	ZG_FACTION = "Stamm der Zandalar";
	AQ20_FACTION = "Zirkel des Cenarius";
	AQ40_FACTION = "Brut Nozdormus";
	
	-- localized class names
	PALADIN = "Paladin";
	SHAMAN = "Schamane";
	MAGE = "Magier";
	PRIEST = "Priester";
	WARLOCK = "Hexenmeister";
	WARRIOR = "Krieger";
	HUNTER = "Jäger";
	ROGUE = "Schurke";
	DRUID = "Druide";
	
	-- localized weapon types
	STAFF = "Stab";
	MACE = "Streitkolben";
	AXE = "Axt";
	GUN = "Schusswaffe";
	DAGGER = "Dolch";
	SHIELD = "Schild";
	SWORD = "Schwert";
	
	-- added
    BOW = "Bogen";
    CROSSBOW = "Armbrust";
    POLEARM = "Stangenwaffe";
    THROWN = "Wurfwaffe";
    WAND = "Zauberstab";
	
	FT_RECIPE = "Rezept";	-- the 6th return of GetItemInfo() for tradeskill recipes
	FT_BOOK = "Buch";	-- the 7th return of GetItemInfo() for "recipes" that aren't for tradeskills 
		
	-- FT_OPTIONS = "SwindlerPreventer Options";
	-- FT_OPTIONS_GENERAL = "Add info to tooltips for items:";
	-- FT_OPTION_RECIPES = "Recipes available from NPC vendors";
	-- FT_OPTION_RECIPE_COST = "Show vendor price for recipes";
	-- FT_OPTION_LIBRAM = "Librams (turnin NPC and reward info)";
	-- FT_OPTION_DARKMOON = "Grey items with Darkmoon Faire rewards";
	-- FT_OPTION_AD = "Items turned in for Seals of the Dawn/Crusade";

	-- FT_OPTIONS_RAID = "And for special raid loot:";
	-- FT_OPTION_ZG = "Zul'Gurub";
	-- FT_OPTION_ZG_FACTION = "(Zandalar Tribe rewards)";
	-- FT_OPTION_AQ20 = "Ruins of Ahn'Qiraj";
	-- FT_OPTION_AQ20_FACTION = "(AQ20 Cenarion Circle rewards)";
	-- FT_OPTION_AQ40 = "Ahn'Qiraj";
	-- FT_OPTION_AQ40_FACTION = "(AQ40 Brood of Nozdormu rewards)";
	-- FT_OPTION_POST_RAID = "Post to raid chat when getting info via '/swp [link]'";
	
	
-- localized zone names (only those that differ from the enUS version should be present)
	FT["Alterac Mountains"] = "Das Alteracgebirge";
	FT["Arathi Highlands"] = "Das Arathihochland";
	FT["Badlands"] = "Das Ödland";
	FT["Blackrock Depths"] = "Schwarzfelstiefen"; -- zara
	FT["Blasted Lands"] = "Die verwüsteten Lande";
	FT["Burning Steppes"] = "Die brennende Steppe";
	FT["Dustwallow Marsh"] = "Die Marschen von Dustwallow";
	FT["Eastern Plaguelands"] = "Die östlichen Pestländer";
	FT["Elwynn Forest"] = "Der Wald von Elwynn";
	FT["Hillsbrad Foothills"] = "Die Vorgebirge von Hillsbrad";
	FT["Redridge Mountains"] = "Das Redridgegebirge";
	FT["Silverpine Forest"] = "Der Silberwald";
	FT["Stonetalon Mountains"] = "Das Steinkrallengebirge";
	FT["Stormwind City"] = "Stormwind";
	FT["Stranglethorn Vale"] = "Stranglethorn";
	FT["Swamp of Sorrows"] = "Die Sümpfe des Elends";
	FT["The Barrens"] = "Das Brachland";
	FT["The Hinterlands"] = "Das Hinterland";
	FT["Tirisfal Glades"] = "Tirisfal";
	FT["Un'Goro Crater"] = "Der Un'Goro Krater";
	FT["Wailing Caverns"] = "Die Höhlen des Wehklagens";
	FT["Western Plaguelands"] = "Die westlichen Pestländer";
	FT["Wetlands"] = "Das Sumpfland";

	FT["Darkshore"] = "Dunkelküste";
	FT["Dire Maul"] = "Düsterbruch";
	FT["Alterac Valley"] = "Alteractal";
	FT["Arathi Basin"] = "Arathibecken";
	FT["Ashenvale"] = "Eschental";
	FT["Blackfathom Deeps"] = "Tiefschwarze Grotte";		
	FT["Blackrock Mountain"] = "Der Schwarzfels";		
	FT["Blackrock Spire"] = "Schwarzfelsspitze";
	FT["Blackwing Lair"] = "Pechschwingenhort";		
	FT["Booty Bay"] = "Beutebucht";		
	FT["The Deadmines"] = "Die Todesminen";
	FT["Deadwind Pass"] = "Gebirgspass der Totenwinde";
	FT["Deeprun Tram"] = "Die Tiefenbahn";
	FT["Dire Maul (North)"] = "Düsterbruch (Nord)";
	FT["Dire Maul (East)"] = "Düsterbruch (Ost)";
	FT["Dire Maul (West)"] = "Düsterbruch (West)";		
	FT["Duskwood"] = "Dämmerwald";		
	FT["Everlook"] = "Ewige Warte";
	FT["Felwood"] = "Teufelswald";
	FT["Ironforge"] = "Eisenschmiede";
	FT["Lower Blackrock Spire"] = "Untere Schwarzfelsspitze";
	FT["Menethil Harbor"] = "Hafen von Menethil";
	FT["Molten Core"] = "Geschmolzener Kern";
	FT["Moonglade"] = "Mondlichtung";		
	FT["Onyxia's Lair"] = "Onyxias Hort";
	FT["Ratchet"] = "Ratschet";
	FT["Ragefire Chasm"] = "Der Flammenschlund";
	FT["Razorfen Downs"] = "Hügel der Klingenhauer";
	FT["Razorfen Kraul"] = "Kral der Klingenhauer";
	FT["Ruins of Ahn'Qiraj"] = "Ruinen von Ahn'Qiraj";
	FT["Scarlet Monastery"] = "Das Scharlachrote Kloster";
	FT["Searing Gorge"] = "Sengende Schlucht";
	FT["Shadowfang Keep"] = "Burg Schattenfang";
	FT["The Stockade"] = "Das Verlies";
	FT["Stonetalon Mountains"] = "Steinkrallengebirge";
	FT["Stormwind City"] = "Sturmwind";
	FT["Stranglethorn Vale"] = "Schlingendorntal";
	FT["Swamp of Sorrows"] = "Sümpfe des Elends";		
	FT["Temple of Ahn'Qiraj"] = "Tempel von Ahn'Qiraj";
	FT["The Temple of Atal'Hakkar"] = "Der Tempel von Atal'Hakkar";
	FT["Theramore Isle"] = "Insel Theramore";
	FT["Thousand Needles"] = "Tausend Nadeln";
	FT["Thunder Bluff"] = "Donnerfels";
	FT["Undercity"] = "Unterstadt";
	FT["Upper Blackrock Spire"] = "Obere Schwarzfelsspitze";
	FT["Warsong Gulch"] = "Kriegshymnenschlucht";
	FT["Winterspring"] = "Winterquell";

	-- zara Burning Crusade
	FT["Plaguewood"] = "Seuchenwald";
	FT["Hellfire Citadel"] = "Höllenfeuerzitadelle";
	FT["The Bone Wastes"] = "Die Knochenwüste";
	FT["Ring of Observance"] = "Ring der Beobachtung";
	FT["Coilfang Reservoir"] = "Der Echsenkessel";
	FT["Azuremyst Isle"] = "Azurmythosinsel";
	FT["Bloodmyst Isle"] = "Blutmythosinsel";
	FT["Eversong Woods"] = "Immersangwald";
	FT["Ghostlands"] = "Geisterlande";
	FT["The Exodar"] = "Die Exodar";
	FT["Silvermoon City"] = "Silbermond";
	FT["Shadowmoon Valley"] = "Schattenmondtal";
	FT["Black Temple"] = "Der Schwarze Tempel";
	FT["Terokkar Forest"] = "Wälder von Terokkar";
	FT["Auchenai Crypts"] = "Auchenaikrypta";
	FT["Mana-Tombs"] = "Managruft";
	FT["Shadow Labyrinth"] = "Schattenlabyrinth";
	FT["Sethekk Halls"] = "Sethekkhallen";
	FT["Hellfire Peninsula"] = "Höllenfeuerhalbinsel";
	FT["The Dark Portal"] = "Das Dunkle Portal";
	FT["Hellfire Ramparts"] = "Höllenfeuerbollwerk";
	FT["The Blood Furnace"] = "Der Blutkessel";
	FT["The Shattered Halls"] = "Die zerschmetterten Hallen";
	FT["Magtheridon's Lair"] = "Magtheridons Kammer";
	FT["Zangarmarsh"] = "Zangarmarschen";
	FT["The Slave Pens"] = "Die Sklavenunterkünfte";
	FT["The Underbog"] = "Der Tiefensumpf";
	FT["The Steamvault"] = "Die Dampfkammer";
	FT["Serpentshrine Cavern"] = "Höhle des Schlangenschreins";
	FT["Blade's Edge Mountains"] = "Schergrat";
	FT["Gruul's Lair"] = "Gruuls Unterschlupf";
	FT["Netherstorm"] = "Nethersturm";
	FT["Tempest Keep"] = "Festung der Stürme";
	FT["The Mechanar"] = "Die Mechanar";
	FT["The Botanica"] = "Die Botanika";
	FT["The Arcatraz"] = "Die Arkatraz";
	FT["The Eye"] = "Das Auge";
	FT["Eye of the Storm"] = "Auge des Sturms";
	FT["Shattrath City"] = "Shattrath";
	FT["Caverns of Time"] = "Die Höhlen der Zeit";
	FT["Old Hillsbrad Foothills"] = "Vorgebirge des Alten Hügellands";
	FT["The Black Morass"] = "Der schwarze Morast";
	FT["Night Elf Village"] = "Nachtelfen Dorf";
	FT["Horde Encampment"] = "Horde Lager";
	FT["Alliance Base"] = "Allianz Basis";
	
-- localized NPC names (only those that differ from the enUS version should be present)
	FT["Alchemist Pestlezugg"] = "Alchimist Pestlezugg";
	FT["Argent Quartermaster Hasana"] = "Argentum-Rüstmeister Hasana";
	FT["Argent Quartermaster Lightspark"] = "Argentum-Rüstmeister Lightspark";
	FT["Defias Profiteer"] = "Defias-Schieber";
	FT["Lorekeeper Lydros"] = "Wissenswächter Lydros";
	FT["Outfitter Eric"] = "Ausstatter Eric";
	FT["Quartermaster Miranda Breechlock"] = "Rüstmeisterin Miranda Breechlock";
	FT["Rin'wosho the Trader"] = "Rin'wosho der Händler";


end


if ( GetLocale() == "koKR" ) then

	SOLD_FOR_PRICE_BY = "상점가격 %s 판매:";					-- prefix to vendor info when price is shown
	SOLD_BY = "[판매]";									-- prefix to vendor info when no price is shown
	RETURN_TO = "보상 NPC: ";								-- prefix to info for librams
	ARCANUM_FORMAT = "최종보상: %s - 마법부여 가능";				-- bonus info for librams
	VENDOR_LOCATION_FORMAT = "%s (%s)";						-- format for showing vendor name and location
	
-- notes for other items
	DARKMOON = "다크문상품권 교환용";
	
-- notes for vendors with special availability
	SEASONAL_VENDOR = "(계절 임시상인)";
	SCHOLO_QUEST = "카엘다로우 영원정수 착용 필요";
	
-- notes for items only available once you have a certain reputation standing
	THORIUM_FRIENDLY = "토륨대장조합 평판필요 - "..FACTION_STANDING_LABEL5;
	THORIUM_HONORED = "토륨대장조합 평판필요 - "..FACTION_STANDING_LABEL6;
	THORIUM_REVERED = "토륨대장조합 평판필요 - "..FACTION_STANDING_LABEL7;
	THORIUM_EXALTED = "토륨대장조합 평판필요 - "..FACTION_STANDING_LABEL8;

	TIMBERMAW_FRIENDLY = "나무구렁펄볼그 평판필요 - "..FACTION_STANDING_LABEL5;

-- localized zone names (only those that differ from the enUS version should be present)
	FT["Alterac Mountains"] = "알터랙 산맥";
	FT["Arathi Highlands"] = "아라시 고원";
	FT["Ashenvale"] = "잿빛 골짜기";
	FT["Azshara"] = "아즈샤라";
	FT["Badlands"] = "황야의 땅";
	FT["Blackrock Depths"] = "검은바위 나락";
	FT["Blasted Lands"] = "저주받은 땅";
	FT["Burning Steppes"] = "이글거리는 협곡";
	FT["Darkshore"] = "어둠의 해안";
	FT["Darnassus"] = "다르나서스";
	FT["Desolace"] = "잊혀진 땅";
	FT["Dire Maul"] = "혈투의 전장";
	FT["Dun Morogh"] = "던 모로";
	FT["Durotar"] = "듀로타";
	FT["Duskwood"] = "그늘숲";
	FT["Eastern Plaguelands"] = "동부 역병지대";
	FT["Elwynn Forest"] = "엘윈숲";
	FT["Felwood"] = "악령의 숲";
	FT["Feralas"] = "페랄라스";
	FT["Gnomeregan"] = "놈리건";
	FT["Hillsbrad Foothills"] = "힐스브래드 구릉지";
	FT["Ironforge"] = "아이언포지";
	FT["Loch Modan"] = "모단 호수";
	FT["Moonglade"] = "달의 숲";
	FT["Mulgore"] = "멀고어";
	FT["Orgrimmar"] = "오그리마";
	FT["Redridge Mountains"] = "붉은마루 산맥";
	FT["Silithus"] = "실리더스";
	FT["Silverpine Forest"] = "은빛 소나무숲";
	FT["Stonetalon Mountains"] = "돌발톱 산맥";
	FT["Stormwind City"] = "스톰윈드";
	FT["Stranglethorn Vale"] = "가시덤불 골짜기";
	FT["Swamp of Sorrows"] = "슬픔의 늪";
	FT["Tanaris"] = "타나리스";
	FT["Teldrassil"] = "텔드랏실";
	FT["The Barrens"] = "불모의 땅";
	FT["The Hinterlands"] = "동부 내륙지";
	FT["Thousand Needles"] = "버섯구름 봉우리";
	FT["Thunder Bluff"] = "썬더 블러프";
	FT["Tirisfal Glades"] = "티리스팔 숲";
	FT["Un'Goro Crater"] = "운고로 분화구";
	FT["Undercity"] = "언더시티";
	FT["Wailing Caverns"] = "통곡의 동굴";
	FT["Western Plaguelands"] = "서부 역병지대";
	FT["Westfall"] = "서부 몰락지대";
	FT["Wetlands"] = "저습지";

-- localized NPC names (only those that differ from the enUS version should be present)
	FT["Abigail Shiel"] = "애비게일 시엘";
	FT["Alchemist Pestlezugg"] = "연금술사 페슬저그";
	FT["Alexandra Bolero"] = "알렉산드라 볼레로";
	FT["Algernon"] = "알게르논";
	FT["Amy Davenport"] = "트에이미 데이븐포";
	FT["Andrew Hilbert"] = "앤드류 힐버트";
	FT["Androd Fadran"] = "안드로드 패드랜";
	FT["Argent Quartermaster Hasana"] = "은빛병참장교 하사나";
	FT["Argent Quartermaster Lightspark"] = "은빛병참장교 라이트스파크";
	FT["Balai Lok'Wein"] = "발라이 로크웨인";
	FT["Bale"] = "베일";
	FT["Banalash"] = "바나래쉬";
	FT["Blimo Gadgetspring"] = "블리모 가젯스프링";
	FT["Blixrez Goodstitch"] = "블릭스레즈 굿스티치";
	FT["Bliztik"] = "블리즈틱";
	FT["Bombus Finespindle"] = "봄부스 파인스핀들";
	FT["Borya"] = "보르야";
	FT["Brienna Starglow"] = "브리에나 스타글로";
	FT["Bro'kin"] = "브로킨";
	FT["Bronk"] = "브론크";
	FT["Catherine Leland"] = "캐서린 릴랜드";
	FT["Christoph Jeffcoat"] = "크리스토프 제프코트";
	FT["Clyde Ranthal"] = "클라이드 랜덜";
	FT["Constance Brisboise"] = "콘스턴스 브리스부아즈";
	FT["Corporal Bluth"] = "하사관 블루스";
	FT["Cowardly Crosby"] = "겁쟁이 크로스비";
	FT["Crazk Sparks"] = "크라즈크 스팍스";
	FT["Dalria"] = "달리아";
	FT["Daniel Bartlett"] = "다니엘 바틀렛";
	FT["Danielle Zipstitch"] = "다니엘 집스티치";
	FT["Darian Singh"] = "다리안 싱그";
	FT["Darnall"] = "다르날";
	FT["Defias Profiteer"] = "데피아즈단 악덕업자";
	FT["Deneb Walker"] = "데네브 워커";
	FT["Derak Nightfall"] = "데락 나이트폴";
	FT["Dirge Quikcleave"] = "더지 퀵클레이브";
	FT["Drac Roughcut"] = "드락 러프컷";
	FT["Drake Lindgren"] = "드레이크 린드그렌";
	FT["Drovnar Strongbrew"] = "드로브나르 스트롱브루";
	FT["Dustwallow Marsh"] = "먼지진흙 습지대";
	FT["Elynna"] = "엘리나";
	FT["Evie Whirlbrew"] = "에비 휠브루";
	FT["Fradd Swiftgear"] = "프래드 스위프트기어";
	FT["Gagsprocket"] = "객스프로켓";
	FT["Gearcutter Cogspinner"] = "기어커터 코그스피너";
	FT["George Candarte"] = "민간인 조지 칸다테";
	FT["Gharash"] = "가라쉬";
	FT["Ghok'kah"] = "그호카";
	FT["Gigget Zipcoil"] = "기젯 집코일";
	FT["Gikkix"] = "긱킥스";
	FT["Gina MacGregor"] = "지나 맥그레거";
	FT["Glyx Brewright"] = "글릭스 브루라이트";
	FT["Gnaz Blunderflame"] = "그나즈 블런더플레임";
	FT["Gretta Ganter"] = "그레타 간터";
	FT["Grimtak"] = "그림탁";
	FT["Hagrus"] = "하그루스";
	FT["Hammon Karwn"] = "하몬 카른";
	FT["Harggan"] = "하르간";
	FT["Harklan Moongrove"] = "하클란 문그로브";
	FT["Harlown Darkweave"] = "하론 다크위브";
	FT["Harn Longcast"] = "한 롱캐스트 ";
	FT["Heldan Galesong"] = "헬단 게일송";
	FT["Helenia Olden"] = "헬레니아 올든";
	FT["Himmik"] = "힘믹";
	FT["Hula'mahi"] = "훌라마히";
	FT["Jabbey"] = "재비";
	FT["Jandia"] = "잔디아";
	FT["Janet Hommers"] = "자넷 호머스";
	FT["Jangdor Swiftstrider"] = "장도르 스위프트스트라이더";
	FT["Jannos Ironwill"] = "야노스 아이언윌";
	FT["Jaquilina Dramet"] = "자킬리나 드라메트";
	FT["Jase Farlane"] = "제이스 파레인";
	FT["Jazzrik"] = "자즈릭";
	FT["Jeeda"] = "지다";
	FT["Jennabink Powerseam"] = "제나빙크 파워심";
	FT["Jessara Cordell"] = "예사라 코르델";
	FT["Jinky Twizzlefixxit"] = "진키 트위즐픽시트";
	FT["Joseph Moore"] = "조셉 무어";
	FT["Jubie Gadgetspring"] = "주비 가젯스프링";
	FT["Jun'ha"] = "준하";
	FT["Jutak"] = "주타크";
	FT["Kaita Deepforge"] = "카이타 딥포지";
	FT["Kalldan Felmoon"] = "칼단 펠문";
	FT["Keena"] = "키나";
	FT["Kelsey Yance"] = "켈시 얀스";
	FT["Kendor Kabonka"] = "켄로드 카본카";
	FT["Khara Deepwater"] = "카라 딥워터";
	FT["Kiknikle"] = "킥니클";
	FT["Killian Sanatha"] = "킬리안 사나타";
	FT["Kilxx"] = "킬륵스";
	FT["Kireena"] = "키리나";
	FT["Kithas"] = "키타스";
	FT["Knaz Blunderflame"] = "크나즈 블런더플레임";
	FT["Kor'geld"] = "코르겔드";
	FT["Kriggon Talsone"] = "크리곤 달손";
	FT["Krinkle Goodsteel"] = "크린클 굿스틸";
	FT["Kulwia"] = "쿨위아";
	FT["Kzixx"] = "크직스";
	FT["Laird"] = "레어드";
	FT["Lardan"] = "라르단";
	FT["Leo Sarn"] = "레오 사른";
	FT["Leonard Porter"] = "레오나드 포터";
	FT["Lilly"] = "릴리";
	FT["Lindea Rabonne"] = "린디아 라본느";
	FT["Lizbeth Cromwell"] = "리즈베스 크롬웰";
	FT["Logannas"] = "로간나스";
	FT["Lokhtos Darkbargainer"] = "로크토스 아크바게이너";
	FT["Lorekeeper Lydros"] = "현자 리드로스";
	FT["Lorelae Wintersong"] = "로렐라이 윈터송";
	FT["Magnus Frostwake"] = "마그누스 프로스트웨이크";
	FT["Mahu"] = "마후";
	FT["Mallen Swain"] = "말렌스웨인";
	FT["Malygen"] = "말리젠";
	FT["Maria Lumere"] = "마리아 루메르";
	FT["Martine Tramblay"] = "마틴 트램블레이";
	FT["Masat T'andr"] = "마사트 탄드르";
	FT["Mathredis Firestar"] = "마스레디스 파이어스타";
	FT["Mavralyn"] = "마브라린";
	FT["Mazk Snipeshot"] = "마즈크 스나이프샷";
	FT["Meilosh"] = "메일로쉬";
	FT["Micha Yance"] = "미카 얀스";
	FT["Millie Gregorian"] = "밀리 그레고리안";
	FT["Montarr"] = "몬타르";
	FT["Muuran"] = "무란";
	FT["Mythrin'dir"] = "미스린디르";
	FT["Naal Mistrunner"] = "나알 미스트러너";
	FT["Namdo Bizzfizzle"] = "남도 비즈피즐";
	FT["Nandar Branson"] = "난다르 브랜슨";
	FT["Narj Deepslice"] = "나르 딥슬라이스";
	FT["Narkk"] = "나르크";
	FT["Nata Dawnstrider"] = "나타 던스트라이더";
	FT["Nergal"] = "네르갈";
	FT["Nerrist"] = "네리스트";
	FT["Nessa Shadowsong"] = "네사 섀도송";
	FT["Nina Lightbrew"] = "니나 라이트브루";
	FT["Nioma"] = "니오마";
	FT["Nyoma"] = "니오마";
	FT["Ogg'marr"] = "오그마르";
	FT["Old Man Heming"] = "노인 헤밍";
	FT["Outfitter Eric"] = "제단사 에릭";
	FT["Plugger Spazzring"] = "플러거 스파즈링";
	FT["Pratt McGrubben"] = "프랫 맥그루벤";
	FT["Qia"] = "퀴아";
	FT["Quartermaster Miranda Breechlock"] = "병참장교 미란다 브리치락";
	FT["Ranik"] = "래니크";
	FT["Rann Flamespinner"] = "랜 플레임스피너";
	FT["Rartar"] = "라르타르";
	FT["Rikqiz"] = "릭키즈";
	FT["Rin'wosho the Trader"] = "상인 린워쇼";
	FT["Rizz Loosebolt"] = "리즈 루즈볼트";
	FT["Ronald Burch"] = "로널드 버치";
	FT["Ruppo Zipcoil"] = "루포 집코일";
	FT["Saenorion"] = "새노리온";
	FT["Sewa Mistrunner"] = "세와 미스트러너";
	FT["Shandrina"] = "샨드리나";
	FT["Shankys"] = "샨키스";
	FT["Sheendra Tallgrass"] = "신드라 톨그래스";
	FT["Shen'dralar Provisioner"] = "셴드랄라 고대인";
	FT["Sheri Zipstitch"] = "셰리 집스티치";
	FT["Soolie Berryfizz"] = "술리 배리피즈";
	FT["Sovik"] = "소빅";
	FT["Stuart Fleming"] = "스튜어트 플레밍";
	FT["Sumi"] = "수미";
	FT["Super-Seller 680"] = "슈퍼 판매기 680";
	FT["Tamar"] = "타마르";
	FT["Tansy Puddlefizz"] = "탄지 퍼들피즈";
	FT["Tari'qa"] = "타리카";
	FT["Thaddeus Webb"] = "타데우스 웨브";
	FT["Tharynn Bouden"] = "타린 바우던";
	FT["Tilli Thistlefuzz"] = "틸리 시슬퍼즈";
	FT["Truk Wildbeard"] = "트루크 와일드바이드";
	FT["Tunkk"] = "텅크";
	FT["Ulthaan"] = "울샨";
	FT["Ulthir"] = "울시르";
	FT["Uthok"] = "우톡";
	FT["Vaean"] = "바이안";
	FT["Valdaron"] = "발다론";
	FT["Veenix"] = "비닉스";
	FT["Vendor-Tron 1000"] = "자동 판매기 1000";
	FT["Vharr"] = "바르";
	FT["Vivianna"] = "비비안나";
	FT["Vizzklick"] = "비즈클릭";
	FT["Wenna Silkbeard"] = "웨나 실크비어드";
	FT["Werg Thickblade"] = "웨르그 틱블레이드";
	FT["Wik'Tar"] = "위크타르";
	FT["Winterspring"] = "여명의 설원";
	FT["Worb Strongstitch"] = "워브 스트롱스티치";
	FT["Wrahk"] = "레이크";
	FT["Wulan"] = "울란";
	FT["Wunna Darkmane"] = "우나 다크메인";
	FT["Xandar Goodbeard"] = "샨다르 굿비어드";
	FT["Xizk Goodstitch"] = "시즈크 굿스티치";
	FT["Xizzer Fizzbolt"] = "시저 피즈볼트";
	FT["Yonada"] = "요나다";
	FT["Yuka Screwspigot"] = "유카 스크류스피곳";
	FT["Zan Shivsproket"] = "잰 쉬브스프로켓";
	FT["Zannok Hidepiercer"] = "잔노크 하이드피이서";
	FT["Zansoa"] = "잔소아";
	FT["Zarena Cromwind"] = "자레나 크롬윈드";
	FT["Zargh"] = "자르그";
	FT["Zixil"] = "직실";

-- localized libram descriptions
	FT["+8 any single stat"] = "+8 원하는 스탯 한가지";
	FT["+100 Health"] = "+100 생명력";
	FT["+150 Mana"] = "+150 마나";
	FT["+20 Fire Resistance"] = "+20 화염저항";
	FT["+125 Armor"] = "+125 방어도";
	FT["+1% Haste"] = "+1% 공격속도";
	FT["+1% Dodge"] = "+1% 회피율";
	FT["+8 Spell damage/healing"] = "+8 치유 효과와 주문의 피해";

-- localized special raid loot tokens
	FT["Zulian Coin"]		=	"줄리안부족 주화";
	FT["Razzashi Coin"]		=	"래즈자쉬부족 주화";
	FT["Hakkari Coin"]		=	"학카리부족 주화";
	FT["Gurubashi Coin"]		=	"구루바시부족 주화";
	FT["Vilebranch Coin"]	=	"썩은가지부족 주화";
	FT["Witherbark Coin"]	=	"마른나무껍질부족 주화";
	FT["Sandfury Coin"]		=	"성난모래부족 주화";
	FT["Skullsplitter Coin"]	=	"백골가루부족 주화";
	FT["Bloodscalp Coin"]	=	"붉은머리부족 주화";
            
	FT["Red Hakkari Bijou"]		=	"붉은색 학카리 장신구";
	FT["Blue Hakkari Bijou"]		=	"파란색 학카리 장신구";
	FT["Yellow Hakkari Bijou"]	=	"노란색 학카리 장신구";
	FT["Orange Hakkari Bijou"]	=	"주황색 학카리 장신구";
	FT["Green Hakkari Bijou"]	=	"녹색 학카리 장신구";
	FT["Purple Hakkari Bijou"]	=	"보라색 학카리 장신구";
	FT["Bronze Hakkari Bijou"]	=	"청동색 학카리 장신구";
	FT["Silver Hakkari Bijou"]	=	"은색 학카리 장신구";
	FT["Gold Hakkari Bijou"]		=	"황금색 학카리 장신구";
            
	FT["Primal Hakkari Bindings"]	=	"고대 학카리 팔보호구";
	FT["Primal Hakkari Armsplint"]	=	"고대 학카리 어깨갑옷";
	FT["Primal Hakkari Stanchion"]	=	"고대 학카리 손목갑옷";
	FT["Primal Hakkari Girdle"]		=	"고대 학카리 벨트";
	FT["Primal Hakkari Sash"]		=	"고대 학카리 장식띠";
	FT["Primal Hakkari Shawl"]		=	"고대 학카리 어깨걸이";
	FT["Primal Hakkari Tabard"]		=	"고대 학카리 휘장";
	FT["Primal Hakkari Kossack"]		=	"고대 학카리 조끼";
	FT["Primal Hakkari Aegis"]		=	"고대 학카리 아이기스";
            
	FT["Qiraji Magisterial Ring"]	=	"권위의 퀴라지 반지";
	FT["Qiraji Ceremonial Ring"]		=	"의식의 퀴라지 반지";
	FT["Qiraji Martial Drape"]		=	"전쟁의 퀴라지 망토";
--	FT["Qiraji Regal Drape"]			=	"xxxxx";
	FT["Qiraji Spiked Hilt"]			=	"못박힌 퀴라지 자루";
	FT["Qiraji Ornate Hilt"]			=	"화려한 퀴라지 자루";
            
	FT["Imperial Qiraji Armaments"]	=	"제국의 퀴라지 무기";
--	FT["Imperial Qiraji Regalia"]	=	"xxxxx";
            
	FT["Qiraji Bindings of Command"]		=	"지휘의 퀴라지 팔보호구";
--	FT["Qiraji Bindings of Dominance"]	=	"xxxxx";
	FT["Ouro's Intact Hide"]				=	"온전한 아우로의 가죽";
--	FT["Skin of the Great Sandworm"]		=	"xxxxx";
--	FT["Vek'lor's Diadem"]				=	"xxxxx";
	FT["Vek'nilash's Circlet"]			=	"베크닐라쉬의 관";
--	FT["Carapace of the Old God"]		=	"xxxxx";
--	FT["Husk of the Old God"]			=	"xxxxx";
            
	FT["Stone Scarab"]	=	"돌 스카라베";
	FT["Gold Scarab"]	=	"황금 스카라베";
	FT["Silver Scarab"]	=	"은 스카라베";
	FT["Bronze Scarab"]	=	"청동 스카라베";
	FT["Crystal Scarab"]	=	"수정 스카라베";
	FT["Clay Scarab"]	=	"찰흙 스카라베";
	FT["Bone Scarab"]	=	"뼈 스카라베";
	FT["Ivory Scarab"]	=	"상아 스카라베";
            
	FT["Azure Idol"]			=	"청금석 우상";
	FT["Onyx Idol"]			=	"마노 우상";
	FT["Lambent Idol"]		=	"미명석 우상";
	FT["Amber Idol"]			=	"호박석 우상";
	FT["Jasper Idol"]		=	"벽옥 우상";
	FT["Obsidian Idol"]		=	"흑요석 우상";
	FT["Vermillion Idol"]	=	"단사 우상";
	FT["Alabaster Idol"]		=	"설화석 우상";
            
	FT["Idol of the Sun"]	=	"태양의 우상";
	FT["Idol of Night"]		=	"밤의 우상";
	FT["Idol of Death"]		=	"죽음의 우상";
	FT["Idol of the Sage"]	=	"현자의 우상";
	FT["Idol of Rebirth"]	=	"환생의 우상";
--	FT["Idol of Life"]		=	"xxxxx";
--	FT["Idol of Strife"]		=	"xxxxx";
	FT["Idol of War"]		=	"전쟁의 우상";

end

if ( GetLocale() == "frFR" ) then

-- localized special raid loot tokens
	FT["Zulian Coin"]		=	"Pièce zulienne";
	FT["Razzashi Coin"]		=	"Pièce Razzashi";
	FT["Hakkari Coin"]		=	"Pièce hakkari";
	FT["Gurubashi Coin"]		=	"Pièce Gurubashi";
	FT["Vilebranch Coin"]	=	"Pièce Vilebranch";
	FT["Witherbark Coin"]	=	"Pièce Witherbark";
	FT["Sandfury Coin"]		=	"Pièce Sandfury";
	FT["Skullsplitter Coin"]	=	"Pièce Skullsplitter";
	FT["Bloodscalp Coin"]	=	"Pièce Bloodscalp";
            
	FT["Red Hakkari Bijou"]		=	"Bijou hakkari rouge";
	FT["Blue Hakkari Bijou"]		=	"Bijou hakkari bleu";
	FT["Yellow Hakkari Bijou"]	=	"Bijou hakkari jaune";
	FT["Orange Hakkari Bijou"]	=	"Bijou hakkari orange";
	FT["Green Hakkari Bijou"]	=	"Bijou hakkari vert";
	FT["Purple Hakkari Bijou"]	=	"Bijou hakkari violet";
	FT["Bronze Hakkari Bijou"]	=	"Bijou hakkari bronze";
	FT["Silver Hakkari Bijou"]	=	"Bijou hakkari argenté";
	FT["Gold Hakkari Bijou"]		=	"Bijou hakkari doré";
            
	FT["Primal Hakkari Bindings"]	=	"Manchettes primordiales hakkari";
	FT["Primal Hakkari Armsplint"]	=	"Brassards primordiaux hakkari";
	FT["Primal Hakkari Stanchion"]	=	"Etançon primordial hakkari";
	FT["Primal Hakkari Girdle"]		=	"Ceinturon primordial hakkari";
	FT["Primal Hakkari Sash"]		=	"Echarpe primordiale hakkari";
	FT["Primal Hakkari Shawl"]		=	"Châle primordial hakkari";
	FT["Primal Hakkari Tabard"]		=	"Tabard primordial hakkari";
	FT["Primal Hakkari Kossack"]		=	"Casaque primordiale hakkari";
	FT["Primal Hakkari Aegis"]		=	"Egide primordiale hakkari";
            
	FT["Qiraji Magisterial Ring"]	=	"Anneau de magistrat qiraji";
	FT["Qiraji Ceremonial Ring"]		=	"Anneau de cérémonie qiraji";
	FT["Qiraji Martial Drape"]		=	"Drapé martial qiraji";
	FT["Qiraji Regal Drape"]			=	"Drapé royal qiraji";
	FT["Qiraji Spiked Hilt"]			=	"Drapé royal qiraji";
	FT["Qiraji Ornate Hilt"]			=	"Manche orné";
            
	FT["Imperial Qiraji Armaments"]	=	"Armes impériales qiraji";
	FT["Imperial Qiraji Regalia"]	=	"Tenue de parade impériale qiraji";
            
	FT["Qiraji Bindings of Command"]		=	"Manchettes de commandement qiraji";
	FT["Qiraji Bindings of Dominance"]	=	"Manchettes de domination qiraji";
	FT["Ouro's Intact Hide"]				=	"Peau intacte d'Ouro";
	FT["Skin of the Great Sandworm"]		=	"Peau du Grand ver des sables";
	FT["Vek'lor's Diadem"]				=	"Diadème de Vek'lor";
	FT["Vek'nilash's Circlet"]			=	"Diadème de Vek'nilash";
	FT["Carapace of the Old God"]		=	"Carapace du Dieu très ancien";
	FT["Husk of the Old God"]			=	"Carcasse du Dieu très ancien";
            
	FT["Stone Scarab"]	=	"Scarabée de pierre";
	FT["Gold Scarab"]	=	"Scarabée d'or";
	FT["Silver Scarab"]	=	"Scarabée d'argent";
	FT["Bronze Scarab"]	=	"Scarabée de bronze";
	FT["Crystal Scarab"]	=	"Scarabée de cristal";
	FT["Clay Scarab"]	=	"Scarabée d'argile";
	FT["Bone Scarab"]	=	"Scarabée d'os";
	FT["Ivory Scarab"]	=	"Scarabée d'ivoire";
            
	FT["Azure Idol"]			=	"Idole azur";
	FT["Onyx Idol"]			=	"Idole d'onyx";
	FT["Lambent Idol"]		=	"Idole brillante";
	FT["Amber Idol"]			=	"Idole d'ambre";
	FT["Jasper Idol"]		=	"Idole de jaspe";
	FT["Obsidian Idol"]		=	"Idole d'obsidienne";
	FT["Vermillion Idol"]	=	"Idole vermillon";
	FT["Alabaster Idol"]		=	"Idole d'albâtre";
            
	FT["Idol of the Sun"]	=	"Idole du soleil";
	FT["Idol of Night"]		=	"Idole de la nuit";
	FT["Idol of Death"]		=	"Idole de la mort";
	FT["Idol of the Sage"]	=	"Idole du sage";
	FT["Idol of Rebirth"]	=	"Idole de la renaissance";
	FT["Idol of Life"]		=	"Idole de la vie";
	FT["Idol of Strife"]		=	"Idole de la lutte";
	FT["Idol of War"]		=	"Idole de la guerre";

end
]]--
