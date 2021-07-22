------------------------------------------------------
-- Bags_Info.lua
------------------------------------------------------

local BagsInfo = { -- Bags Items
	
	[22252] = { craft={prof=FT.PROFESSION_TAILORING, sk=300} },	-- Cenarion Herb Bag (24 Slot Herb Bag)
	[22251] = { craft={prof=FT.PROFESSION_TAILORING, sk=275} },	-- Cenarion Herb Bag (20 Slot Herb Bag)
	[22250] = {},	-- Herb Pouch (12 Slot Herb Bag)
	[22249] = { craft={prof=FT.PROFESSION_TAILORING, sk=300} }, -- Big Bag of Enchantment (24 Slot Enchanting Bag)
	[22248] = { craft={prof=FT.PROFESSION_TAILORING, sk=275} }, -- Enchanted Runecloth Bag (20 Slot Enchanting Bag)
	[22246] = { craft={prof=FT.PROFESSION_TAILORING, sk=225} }, -- Enchanted Mageweave Pouch (16 Slot Enchanting Bag)
	[21342] = { craft={prof=FT.PROFESSION_TAILORING, sk=300} }, -- Core Felcloth Bag (28 Slot Soul Bag)
	[21341] = { craft={prof=FT.PROFESSION_TAILORING, sk=300} }, -- Felcloth Bag (24 Slot Soul Bag)
	[21340] = { craft={prof=FT.PROFESSION_TAILORING, sk=260} }, -- Soul Pouch (20 Slot Soul Bag)
	[19291] = { i="50 Tickets", we=FT.DARKMOON_FAIRE }, -- Darkmoon Storage Box (14 Slot)
	[14156] = { craft={prof=FT.PROFESSION_TAILORING, sk=300} }, -- Bottomless Bag (18 Slot)
	[14155] = { craft={prof=FT.PROFESSION_TAILORING, sk=300} }, -- Mooncloth Bag (16 Slot)
	[14046] = { craft={prof=FT.PROFESSION_TAILORING, sk=260} },	-- Runecloth Bag (14 Slot)
	[10051] = { craft={prof=FT.PROFESSION_TAILORING, sk=235} },	-- Red Mageweave Bag (12 Slot)
	[10050] = { craft={prof=FT.PROFESSION_TAILORING, sk=225} },	-- Mageweave Bag (12 Slot)
	[7372] = { craft={prof=FT.PROFESSION_LEATHERWORKING, sk=170} }, -- Heavy Leather Ammo Pouch
	[6446] = { drop=true },	-- Snakeskin Bag (10 Slot)
	[5765] = { ap=20000, craft={prof=FT.PROFESSION_TAILORING, sk=185} },	-- Black Silk Pack (10 Slot)
	[5764] = { ap=20000, craft={prof=FT.PROFESSION_TAILORING, sk=175} },	-- Green Silk Pack (10 Slot)
	[5763] = { ap=2500, craft={prof=FT.PROFESSION_TAILORING, sk=115} },	-- Red Woolen Bag (8 Slot)
	[5762] = { ap=500, craft={prof=FT.PROFESSION_TAILORING, sk=70} },	-- Red Linen Bag (6 Slot)
	[5576] = { ap=20000, mobs="20-31" },	-- Large Brown Sack (10 Slot)
	[5575] = { ap=20000, mobs="20-31" },	-- Large Green Sack (10 Slot)
	[5574] = { ap=2500, mobs="10-21" },	-- White Leather Bag (8 Slot)
	[5573] = { ap=2500, mobs="10-21" },	-- Green Leather Bag (8 Slot)
	[5572] = { ap=500, mobs="1-13" },	-- Small Green Pouch (6 Slot)
	[5571] = { ap=500, mobs="1-11" },	-- Small Black Pouch (6 Slot)
	[5081] = { craft={prof=FT.PROFESSION_LEATHERWORKING, sk=40} },	-- Kodo Hide Bag (6 Slot)
	[4499] = {},	-- Huge Brown Sack (12 Slot)
	[4498] = { ap=2500 },	-- Brown Leather Satchel (8 Slot)
	[4497] = { ap=20000 },	-- Heavy Brown Bag (10 Slot)
	[4496] = { ap=500 },	-- Small Brown Pouch (6 Slot)
	[4245] = { ap=20000, craft={prof=FT.PROFESSION_TAILORING, sk=150} },	-- Small Silk Pack (10 Slot)
	[4241] = { ap=2500, craft={prof=FT.PROFESSION_TAILORING, sk=95} },	-- Green Woolen Bag (8 Slot)
	[4240] = { ap=2500, craft={prof=FT.PROFESSION_TAILORING, sk=80} },	-- Woolen Bag (8 Slot)
	[4238] = { ap=500, craft={prof=FT.PROFESSION_TAILORING, sk=45} },	-- Linen Bag (6 Slot)
	[3914] = { drop=true },	-- Journeyman's Backpack (14 Slot)
	[3233] = { drop=true }, -- Gnoll Hide Sack (8 Slot)
	[2657] = { ap=2500, mobs="10-21" },	-- Red Leather Bag (8 Slot)
	[1725] = { ap=100000, mobs="30-41" },	-- Large Knapsack (12 Slot)
	[1685] = { mobs="> 30" },	-- Troll-Hide Bag (14 slot)
	[1652] = { drop=true }, -- Sturdy Lunchbox (12 Slot)
--	[1623] = {}, -- Raptor Skin Pouch (12 Slot)
	[1470] = { drop=true }, -- Murloc Skin Bag (10 Slot)
	[933] = { drop=true }, 	-- Large Rucksack (10 Slot)
	[932] = { drop=true }, 	-- Fel Steed Saddlebags (10 Slot)
	[857] = { ap=20000, mobs="20-31" },	-- Large Red Sack (10 Slot)
	[856] = { ap=2500, mobs="10-21" },	-- Blue Leather Bag (8 Slot)
	[828] = { ap=500, mobs="1-11" },	-- Small Blue Pouch (6 Slot)
	[805] = { ap=500, mobs="1-13" },	-- Small Red Pouch (6 Slot)
	[804] = { ap=20000, mobs="20-31" },	-- Large Blue Sack (10 Slot)
};

-- merge into FT_ItemInfo table
for k in pairs(BagsInfo) do
	FT_ItemInfo[k] = BagsInfo[k];
end;
