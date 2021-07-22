------------------------------------------------------
-- Jewelry_Info.lua
------------------------------------------------------

local JewelryInfo = {

	[18679] = { drop=true },	-- Frigid Ring
	[18678] = { drop=true },	-- Tempestria's Frozen Necklace
	[5754] = { drop=true },		-- Wolfpack Medallion
	[5180] = { drop=true },		-- Necklace of Harmony
	[5029] = { drop=true },		-- Talisman of the Naga Lord
	
};

-- merge into FT_ItemInfo table
for k in pairs(JewelryInfo) do
	FT_ItemInfo[k] = JewelryInfo[k];
end;
