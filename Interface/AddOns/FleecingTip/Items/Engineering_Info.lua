------------------------------------------------------
-- Engineering_Info.lua
------------------------------------------------------

local EngineeringInfo = { -- Engineering Items

	[18657] = { drop=true }, 	-- Schematic: Hyper-Radiant Flame Reflector
	[18656] = {},	-- Schematic: Powerful Seaforium Charge
	[18653] = { drop=true }, 	-- Schematic: Goblin Jumper Cables XL
	[18652] = {},	-- Schematic: Gyrofreeze Ice Reflector
	[18651] = {},	-- Schematic: Truesilver Transformer
	[18650] = {},	-- Schematic: EZ-Thro Dynamite II
	[18649] = {},	-- Schematic: Blue Firework
	[18648] = {},	-- Schematic: Green Firework
	[18647] = {},	-- Schematic: Red Firework
	[16054] = { drop=true },	-- Schematic: Arcanite Dragonling
	[16050] = {},	-- Schematic: Delicate Arcanite Converter
	[16047] = {},	-- Schematic: Thorium Tube
	[16046] = {},	-- Schematic: Masterwork Target Dummy
	[16042] = {},	-- Schematic: Thorium Widget
	[16041] = {},	-- 
	[14639] = {},	-- Schematic: Minor Recombobulator
	[13311] = {},	-- Schematic: Mechanical Dragonling
	[13310] = {},	-- Schematic: Accurate Scope
	[13309] = {},	-- Schematic: Lovingly Crafted Boomstick
	[13308] = {},	-- Schematic: Ice Deflector
	[10609] = {},	-- Schematic: Mithril Mechanical Dragonling
	[10607] = {},	-- Schematic: Deepdive Helmet
	[10602] = {},	-- Schematic: Deadly Scope
	[7742] = {},	-- Schematic: Gnomish Cloaking Device
	[7561] = {},	-- Schematic: Goblin Jumper Cables
	[7560] = {},	-- Schematic: Gnomish Universal Remote
	[7192] = { drop=true }, 	-- Schematic: Goblin Rocket Boots
	[6672] = { quest=true, npc="Rigglefuzz" },	-- Schematic: Flash Bomb
	[4413] = { drop=true }, 	-- Schematic: Discombobulator Ray
	[4411] = { drop=true }, 	-- Schematic: Flame Deflector
	
};

-- merge into FT_ItemInfo table
for k in pairs(EngineeringInfo) do
	FT_ItemInfo[k] = EngineeringInfo[k];
end;

