------------------------------------------------------
-- FirstAid_Info.lua
------------------------------------------------------

local FirstAidInfo = { -- Fishing Items
	
	[16113] = {},	-- Manual: Mageweave Bandage
	[16112] = {},	-- Manual: Heavy Silk Bandage
	[16084] = {},	-- Expert First Aid - Under Wraps
	
};

-- merge into FT_ItemInfo table
for k in pairs(FirstAidInfo) do
	FT_ItemInfo[k] = FirstAidInfo[k];
end;
