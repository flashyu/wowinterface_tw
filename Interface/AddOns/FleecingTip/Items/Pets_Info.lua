------------------------------------------------------
-- Pets_Info.lua
------------------------------------------------------

local PetsInfo = { -- Vanity Pets Items
	
--	[21309] = {},	-- Snowman Kit
--	[21308] = { drop=true }, -- Jingling Bell
--	[21305] = {},	-- Red Helper Box
--	[21301] = {},	-- Green Helper Box
--	[21168] = {},	-- Baby Shark
--	[20769] = {},	-- Disgusting Oozeling
--	[18967] = {},	-- Turtle Egg (Olive)
--	[18966] = {},	-- Turtle Egg (Leatherback)
--	[18965] = {},	-- Turtle Egg (Hawksbill)
--	[18963] = {},	-- Turtle Egg (Loggerhead)
--	[18963] = {},	-- Turtle Egg (Albino)
	[15996] = { craft={prof=FT.PROFESSION_ENGINEERING, sk=265} },	-- Lifelike Mechanical Toad
	[12565] = { quest=true, npc="Winna Hazzard" },
--	[11903] = {},	-- Cat Carrier (Corrupted Kitten)
--	[11027] = {},	-- { b=10000, we=FT.DARKMOON_FAIRE },	-- Wood Frog Box
--	[11026] = {},	-- { b=10000, we=FT.DARKMOON_FAIRE },	-- Tree Frog Box
	[11023] = {},	-- Ancona Chicken
	[10822] = { drop=true }, -- Dark Whelpling
	[10398] = { quest=true, npc="Oglethorpe Obnoticus" },	-- Mechanical Chicken
	[10394] = {},	-- Prairie Dog Whistle
	[10393] = {},	-- Undercity Cockroach
	[10392] = {},	-- Crimson Snake
	[10361] = {},	-- Brown Snake
	[10360] = {},	-- Black Kingsnake
	[8501] = {},	-- Hawk Owl
	[8500] = {},	-- Great Horned Owl
	[8499] = { drop=true },	-- Tiny Crimson Whelpling
	[8498] = { drop=true },	-- Tiny Emerald Whelpling
	[8497] = {},	-- Rabbit Crate (Snowshoe)
	[8496] = {},	-- Parrot Cage (Cockatiel)
	[8495] = {},	-- Parrot Cage (Senegal)
	[8494] = { drop=true, note="Random drop" }, -- Parrot Cage (Hyacinth Macaw)
	[8492] = { drop=true, note="Random drop" }, -- Parrot Cage (Green Wing Macaw)
	[8491] = { drop=true, note="Random drop" }, -- Cat Carrier (Black Tabby)
	[8490] = { drop=true },	-- Cat Carrier (Siamese)
	[8489] = {},	-- Cat Carrier (White Kitten)
	[8488] = {},	-- Cat Carrier (Silver Tabby)
	[8487] = {},	-- Cat Carrier (Orange Tabby)
	[8486] = {},	-- Cat Carrier (Cornish Rex)
	[8485] = {},	-- Cat Carrier (Bombay)
};

-- merge into FT_ItemInfo table
for k in pairs(PetsInfo) do
	FT_ItemInfo[k] = PetsInfo[k];
end;
