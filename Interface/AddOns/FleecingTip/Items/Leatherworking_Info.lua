------------------------------------------------------
-- Leatherworking_Info.lua
------------------------------------------------------

local LeatherworkingInfo = { -- Leatherworking Items
	
	[21548] = { drop=true },	-- Pattern: Stormshroud Gloves
	[20576] = {},	-- Pattern: Black Whelp Tunic
	[20254] = {},	-- Pattern: Warbear Woolies
	[18949] = {},	-- Pattern: Barbaric Bracers
	[18731] = {},	-- Pattern: Heavy Leather Ball
	[18239] = {},	-- Pattern: Shadowskin Gloves
	[15762] = {},	-- Pattern: Heavy Scorpid Helm
	[15759] = {},	-- Pattern: Black Dragonscale Breastplate
	[15758] = {},	-- Pattern: Devilsaur Gauntlets
	[15756] = {},	-- Pattern: Runic Leather Headband
	[15741] = {},	-- Pattern: Stormshroud Pants
	[15740] = {},	-- Pattern: Frostsaber Boots
	[15735] = {},	-- Pattern: Ironfeather Shoulders
	[15734] = {},	-- Pattern: Living Shoulders
	[15726] = {},	-- Pattern: Green Dragonscale Breastplate
	[15725] = {},	-- Pattern: Wicked Leather Gauntlets
	[15724] = {},	-- Pattern: Heavy Scorpid Bracers
	[14635] = {},	-- Pattern: Gem-studded Leather Belt
	[13288] = {},	-- Pattern: Raptor Hide Belt
	[13287] = {},	-- Pattern: Raptor Hide Harness
	[8409] = {},	-- Pattern: Nightscape Shoulders
	[8385] = {},	-- Pattern: Turtle Scale Gloves
	[7613] = {},	-- Pattern: Green Leather Armor
	[7451] = {},	-- Pattern: Green Whelp Bracers
	[7362] = {},	-- Pattern: Earthen Leather Shoulders
	[7361] = {},	-- Pattern: Herbalist's Gloves
	[7290] = {},	-- Pattern: Red Whelp Gloves
	[7289] = {},	-- Pattern: Black Whelp Cloak
	[6710] = { quest=true, npc="Lotherias"}, -- Pattern: Moonglow Vest
	[6475] = {},	-- Pattern: Deviate Scale Gloves
	[6474] = {},	-- Pattern: Deviate Scale Cloak
	[5973] = {},	-- Pattern: Barbaric Leggings
	[5789] = {},	-- Pattern: Murloc Scale Bracers
	[5788] = {},	-- Pattern: Thick Murloc Armor
	[5787] = {},	-- Pattern: Murloc Scale Breastplate
	[5786] = {},	-- Pattern: Murloc Scale Belt
	[5083] = { quest=true, npc="Veren Tallstrider"}, -- Pattern: Kodo Hide Bag
};

-- merge into FT_ItemInfo table
for k in pairs(LeatherworkingInfo) do
	FT_ItemInfo[k] = LeatherworkingInfo[k];
end;

