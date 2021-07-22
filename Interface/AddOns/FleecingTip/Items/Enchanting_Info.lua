------------------------------------------------------
-- Enchanting_Info.lua
------------------------------------------------------

local EnchantingInfo = { -- Enchanting Items

	[18260] = { drop=true },	-- Formula: Enchant Weapon - Healing Power
	[16243] = {},	-- Formula: Runed Arcanite Rod
	[16224] = {},	-- Formula: Enchant Cloak - Superior Defense
	[16221] = {},	-- Formula: Enchant Chest - Major Health
	[11223] = {},	-- Formula: Enchant Bracer - Deflection
	[11207] = { drop=true },	-- Formula: Enchant Weapon - Fiery Weapon
	[11163] = {},	-- Formula: Enchant Bracer - Lesser Deflection
	[11101] = {},	-- Formula: Enchant Bracer - Lesser Strength
	[11039] = {},	-- Formula: Enchant Cloak - Minor Agility
	[10940] = {},	-- Strange Dust
	[10938] = {},	-- Lesser Magic Essence
	[6377] = {},	-- Formula: Enchant Boots - Minor Agility
	[6349] = {},	-- Formula: Enchant 2H Weapon - Lesser Intellect
	[6346] = {},	-- Formula: Enchant Chest - Lesser Mana
	[6342] = {},	-- Formula: Enchant Chest - Minor Mana

};

-- merge into FT_ItemInfo table
for k in pairs(EnchantingInfo) do
	FT_ItemInfo[k] = EnchantingInfo[k];
end;

