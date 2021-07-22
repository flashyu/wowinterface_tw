------------------------------------------------------
-- Weapons_Info.lua
------------------------------------------------------

local WeaponsInfo = { -- Weapons Items
	
	[20672] = { drop=true },	-- Sparkling Crystal Wand
	[20660] = { drop=true },	-- Stonecutting Glaive
	[18671] = { drop=true },	-- Baron Charr's Sceptre
	[12252] = {},	-- Staff of Protection
	[12251] = {},	-- Big Stick
	[12250] = {},	-- Midnight Axe
	[12249] = {}, 	-- Merciless Axe
	[12248] = {}, 	-- Daring Dirk
	[12247] = {}, 	-- Broad Bladed Knife
	[11308] = {},	-- Sylvan Shortbow
	[11307] = {},	-- Massive Longbow
	[11306] = {},	-- Sturdy Recurve
	[11305] = {}, 	-- Dense Shortbow
	[11304] = {}, 	-- Fine Longbow
	[11303] = {}, 	-- Fine Shortbow
	[6628] = { drop=true }, 	-- Raven's Claws
	[6365] = { ap=900 },	-- Strong Fishing Pole
	[6327] = { drop=true }, 	-- The Pacifier
	[5752] = { drop=true }, 	-- Wyvern Tailspike
	[5749] = { drop=true }, 	-- Scythe Axe
	[5423] = { drop=true }, 	-- Boahn's Fang
	[5112] = { drop=true }, 	-- Ritual Blade
	[4838] = {}, 	-- Orb of Power
	[4837] = {}, 	-- Strength of Will
	[4836] = {}, 	-- Fireproof Orb
	[4826] = {}, 	-- Marauder Axe
	[4825] = {}, 	-- Callous Axe
	[4824] = {}, 	-- Blurred Axe
	[4818] = {},	-- Executioner's Sword
	[4817] = {}, 	-- Blessed Claymore
	[4778] = {}, 	-- Heavy Spiked Mace
	[4777] = {}, 	-- Ironwood Maul
	[4766] = {}, 	-- Feral Blade
	[4765] = {}, 	-- Enamelled Broadsword
	[4454] = { drop=true }, 	-- Talon of Vultros
	[4449] = { drop=true }, 	-- Naraxis' Fang
	[4446] = { drop=true }, 	-- Blackvenom Blade
	[3571] = { drop=true }, 	-- Trogg Beater
	[3227] = { drop=true }, 	-- Nightbane Staff
	[3188] = { drop=true }, 	-- Coral Claymore
	[3041] = { quest=true, npc="Falfindel Waywarder" }, -- "Mage-Eye" Blunderbuss
	[2235] = { drop=true }, 	-- Brackclaw
	[2058] = { drop=true }, 	-- Kazon's Maul
	[1938] = { drop=true }, 	-- Block Mallet
	[1604] = { drop=true }, 	-- Chromatic Sword
};

-- merge into FT_ItemInfo table
for k in pairs(WeaponsInfo) do
	FT_ItemInfo[k] = WeaponsInfo[k];
end;
