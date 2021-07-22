------------------------------------------------------
-- Quivers_Info.lua
------------------------------------------------------

local QuiversInfo = { -- Bags Items
	
	[11362] = { ap=1000 },	-- Medium Quiver
	[8218] = { craft={prof=FT.PROFESSION_LEATHERWORKING, sk=245} }, -- Thick Leather Ammo Pouch
	[7371] = {},	-- Heavy Quiver
	[7279] = { craft={prof=FT.PROFESSION_LEATHERWORKING, sk=60} }, -- Small Leather Ammo Pouch
	[5441] = { ap=1000 },	-- Small Shot Pouch
	[5439] = { ap=100 },	-- Small Quiver
	[2101] = {},	-- Light Quiver
	
};

-- merge into FT_ItemInfo table
for k in pairs(QuiversInfo) do
	FT_ItemInfo[k] = QuiversInfo[k];
end;
