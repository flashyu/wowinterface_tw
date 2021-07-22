------------------------------------------------------
-- Mounts_Info.lua
------------------------------------------------------

local MountsInfo = { -- Mounts Items

	[18902] = {},	-- Reins of the Swift Stormsaber
	[18798] = {}, 	-- Horn of the Swift Gray Wolf
	[18797] = {}, 	-- Horn of the Swift Timber Wolf
	[18796] = {}, 	-- Horn of the Swift Brown Wolf
	[18795] = {},	-- Great Gray Kodo
	[18794] = {},	-- Great Brown Kodo
	[18793] = {},	-- Great White Kodo
	[18791] = {},	-- Purple Skeletal Warhorse
	[18790] = {},	-- Swift Orange Raptor
	[18789] = {},	-- Swift Olive Raptor
	[18788] = {},	-- Swift Blue Raptor
	[18787] = {},	-- Swift Gray Ram
	[18786] = {},	-- Swift Brown Ram
	[18785] = {},	-- Swift White Ram
	[18778] = {},	-- Swift White Steed
	[18777] = {},	-- Swift Brown Steed
	[18776] = {},	-- Swift Palomino
	[18774] = {},	-- Swift Yellow Mechanostrider
	[18773] = {},	-- Swift White Mechanostrider
	[18772] = {},	-- Swift Green Mechanostrider
	[18767] = {}, 	-- Reins of the Swift Mistsaber
	[18766] = {}, 	-- Reins of the Swift Frostsaber
	[15290] = {},	-- Brown Kodo
	[15277] = {},	-- Gray Kodo
	[13334] = {},	-- Green Skeletal Warhorse
	[13333] = {},	-- Brown Skeletal Horse
	[13332] = {},	-- Blue Skeletal Horse
	[13331] = {},	-- Red Skeletal Horse
	[13322] = {},	-- Unpainted Mechanostrider
	[13321] = {},	-- Green Mechanostrider
	[8632] = {},	-- Reins of the Spotted Frostsaber
	[8631] = {},	-- Reins of the Striped Frostsaber
	[8629] = {},	-- Reins of the Striped Nightsaber
	[8595] = {},	-- Blue Mechanostrider
	[8592] = {},	-- Whistle of the Violet Raptor
	[8591] = {},	-- Whistle of the Turquoise Raptor
	[8588] = {},	-- Whistle of the Emerald Raptor
	[8563] = {},	-- Red Mechanostrider
	[5873] = {},	-- White Ram
	[5872] = {},	-- Brown Ram
	[5864] = {},	-- Gray Ram
	[5668] = {},	-- Horn of the Brown Wolf
	[5665] = {},	-- Horn of the Dire Wolf
	[5656] = {},	-- Brown Horse Bridle
	[5655] = {},	-- Chestnut Mare Bridle
	[2414] = {},	-- Pinto Bridle
	[2411] = {},	-- Black Stallion Bridle
	[1132] = {},	-- Horn of the Timber Wolf
	
};

-- merge into FT_ItemInfo table
for k in pairs(MountsInfo) do
	FT_ItemInfo[k] = MountsInfo[k];
end;

