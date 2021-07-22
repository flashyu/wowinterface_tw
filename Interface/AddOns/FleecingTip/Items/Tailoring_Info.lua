------------------------------------------------------
-- Tailoring_Info.lua
------------------------------------------------------

local TailoringInfo = { -- Tailoring Items
	
	[22307] = {},	-- Pattern: Enchanted Mageweave Pouch
	[21358] = {},	-- Pattern: Soul Pouch
	[18487] = { craft={prof=FT.PROFESSION_TAILORING, sk=300} },		-- Pattern: Mooncloth Robe
	[14630] = {},	-- Pattern: Enchanter's Cowl
	[14627] = {},	-- Pattern: Bright Yellow Shirt
	[14526] = {},	-- Pattern: Mooncloth
	[14497] = { drop=true },	-- Pattern: Mooncloth Leggings
	[14488] = {},	-- Pattern: Runecloth Boots
	[14483] = {},	-- Pattern: Felcloth Pants
	[14481] = {},	-- Pattern: Runecloth Gloves
	[14469] = {},	-- Pattern: Runecloth Robe
	[14468] = {},	-- Pattern: Runecloth Bag
	[10728] = {},	-- Pattern: Black Swashbucker's Shirt
	[10463] = { quest=true, npc="Nilith Lokrav" }, -- Pattern: Shadoweave Mask
	[10326] = {},	-- Pattern: Tuxedo Jacket
	[10325] = {},	-- Pattern: White Wedding Dress
	[10323] = {},	-- Pattern: Tuxedo Pants
	[10321] = {},	-- Pattern: Tuxedo Shirt
	[10318] = {},	-- Pattern: Admiral's Hat
	[10317] = {},	-- Pattern: Pink Mageweave Shirt
	[10314] = {},	-- Pattern: Lavender Mageweave Shirt
	[10311] = {},	-- Pattern: Orange Martial Shirt
	[10302] = { drop=true },	-- Pattern: Red Mageweave Pants
	[7114] = {},	-- Pattern: Azure Silk Gloves
	[7089] = {},	-- Pattern: Azure Silk Cloak
	[7088] = {},	-- Pattern: Crimson Silk Robe
	[7087] = {},	-- Pattern: Crimson Silk Cloak
	[6401] = {},	-- Pattern: Dark Silk Shirt
	[6275] = {},	-- Pattern: Greater Adept's Robe
	[6274] = {},	-- Pattern: Blue Overalls
	[6272] = {},	-- Pattern: Blue Linen Robe
	[6270] = {},	-- Pattern: Blue Linen Vest
	[5772] = {},	-- Pattern: Red Woolen Bag
	[5771] = {},	-- Pattern: Red Linen Bag
	[4355] = {},	-- Pattern: Icy Cloak

};

-- merge into FT_ItemInfo table
for k in pairs(TailoringInfo) do
	FT_ItemInfo[k] = TailoringInfo[k];
end;