------------------------------------------------------
-- Fishing_Info.lua
------------------------------------------------------

local FishingInfo = { -- Fishing Items
	
	[16083] = {},	-- Expert Fishing - The Bass and You
	[6365] = { ap=875 },	-- Strong Fishing Pole
};

-- merge into FT_ItemInfo table
for k in pairs(FishingInfo) do
	FT_ItemInfo[k] = FishingInfo[k];
end;
