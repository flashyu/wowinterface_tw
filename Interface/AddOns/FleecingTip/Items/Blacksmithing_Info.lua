------------------------------------------------------
-- Blacksmithing_Info.lua
------------------------------------------------------

local BlacksmithingInfo = { -- Blacksmithing Items
	
	[22222] = { drop=true },	-- Plans: Thick Obsidian Breastplate
	[22220] = { drop=true },	-- Plans: Black Grasp of the Destroyer
	[20555] = { drop=true },	-- Plans: Darkrune Helm
	[18592] = { quest=true, npc="Lokhtos Darkbargainer" },	-- Plans: Sulfuron Hammer
	[18264] = { drop=true },	-- Plans: Elemental Sharpening Stone
	[12839] = { drop=true },	-- Plans: Heartseeker
	[12838] = { drop=true },	-- Plans: Arcanite Reaper
	[12837] = { drop=true },	-- Plans: Masterwork Stormhammer
	[12836] = { drop=true },	-- Plans: Frostguard
	[12835] = { drop=true },	-- Plans: Annihilator
	[12834] = { drop=true },	-- Plans: Arcanite Champion
	[12833] = { drop=true },	-- Plans: Hammer of the Titans
	[12828] = { drop=true, note="Random spawn, east side of map" }, -- Plans: Volcanic Hammer
	[12728] = { drop=true },	-- Plans: Invulnerable Mail
	[12717] = { drop=true, note="Random spawn in Ashenvale, Duskwood, Hinterlands and Feralas" }, 	-- Plans: Lionheart Helm
	[12716] = { drop=true }, 	-- Plans: Helm of the Great Chief
	[12703] = {},	-- Plans: Storm Gauntlets
	[12697] = { drop=true },	-- Plans: Radiant Boots
	[12694] = { drop=true },	-- Plans: Thorium Helm
	[12693] = { drop=true },	-- Plans: Thorium Boots
	[12692] = { drop=true, note="Random spawn in Ashenvale, Duskwood, Hinterlands and Feralas" },		-- Plans: Thorium Shield Spike
	[12164] = {},	-- Plans: Massive Iron Axe
	[12163] = {},	-- Plans: Moonsteel Broadsword
	[12162] = {},	-- Plans: Hardened Iron Shortsword
	[11612] = { drop=true },	-- Plans: Dark Iron Plate
	[11611] = { drop=true },	-- Plans: Dark Iron Sunderer
	[11610] = { drop=true, note="Random boss spawn" }, -- Plans: Dark Iron Pulverizer
	[10858] = {},	-- Plans: Solid Iron Maul
	[9367] = { quest=true, npc="Hank the Hammer" },	-- Plans: Golden Scale Gauntlets
	[7995] = {},	-- Plans: Mithril Scale Bracers
	[7991] = { drop=true, note="Random spawn in Ashenvale, Duskwood, Hinterlands and Feralas" }, 	-- Plans: Mithril Scale Shoulders
	[7989] = { drop=true },		-- Plans: Mithril Spurs
	[7982] = { quest=true, npc="Orokk Omosh" },	-- Plans: Barbaric Iron Gloves
	[7981] = { quest=true, npc="Orokk Omosh" },	-- Plans: Barbaric Iron Boots
	[7980] = { quest=true, npc="Orokk Omosh" },	-- Plans: Barbaric Iron Helm
	[7979] = { quest=true, npc="Orokk Omosh" },	-- Plans: Barbaric Iron Breastplate
	[7978] = { quest=true, npc="Orokk Omosh" },	-- Plans: Barbaric Iron Shoulders
	[6735] = { quest=true, npc="Tormus Deepforge" }, -- Plans: Ironforge Breastplate
	[6047] = {},	-- Plans: Golden Scale Coif
	[3875] = { drop=true },		-- Plans: Golden Scale Boots
	[3610] = { mobs="5-21" },	-- Plans: Gemmed Copper Gauntlets
	[3609] = { quest=true, npc="Tormus Deepforge", note="Also random drop from mobs 9-17" }, -- Plans: Copper Chain Vest
};

-- merge into FT_ItemInfo table
for k in pairs(BlacksmithingInfo) do
	FT_ItemInfo[k] = BlacksmithingInfo[k];
end;
