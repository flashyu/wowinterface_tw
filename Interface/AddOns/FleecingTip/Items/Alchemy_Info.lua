------------------------------------------------------
-- Alchemy_Info.lua
------------------------------------------------------

local AlchemyInfo = { -- Alchemy Items
	
	[18257] = { drop=true }, -- Recipe: Major Rejuvenation Potion
	[14634] = {},	-- Recipe: Frost Oil
	[13522] = { drop=true }, -- Recipe: Flask of Chromatic Resistance
	[13521] = { drop=true }, -- Recipe: Flask of Supreme Power
	[13520] = { drop=true }, -- Recipe: Flask of Distilled Wisdom
	[13519] = { drop=true }, -- Recipe: Flask of the Titans
	[13497] = { drop=true },
	[13495] = { drop=true }, -- Recipe: Greater Frost Protection Potion
	[13493] = { drop=true, note="Duskwood, Feralas, The Hinterlands, or Ashenvale." },	-- Recipe: Greater Arcane Elixir
	[13483] = { note="Barkeeper, The Grim Guzzler Tavern" }, -- Recipe: Transmute Fire to Earth
	[13480] = {},	-- Recipe: Major Healing Potion
	[13479] = { drop=true , note="The Cathedral, at Tyr's Hand" },	-- Recipe: Elixir of the Sages
	[13478] = {},	-- Recipe: Elixir of Superior Defense
	[13477] = {},	-- Recipe: Superior Mana Potion
	[12958] = {},	-- Recipe: Transmute Arcanite
	[9305] = {},	-- Recipe: Transmute Mithril to Truesilver
	[9304] = {},	-- Recipe: Transmute Iron to Gold
	[9303] = {},	-- Recipe: Philosopher's Stone
	[9302] = {},	-- Recipe: Ghost Dye
	[9301] = {},	-- Recipe: Elixir of Shadow Power
	[9300] = {},	-- Recipe: Elixir of Demonslaying
	[6068] = {},	-- Recipe: Shadow Oil
	[6057] = {},	-- Recipe: Nature Protection Potion
	[6056] = {},	-- Recipe: Frost Protection Potion
	[6055] = {},	-- Recipe: Fire Protection Potion
	[6054] = {},	-- Recipe: Shadow Protection Potion
	[6053] = {},	-- Recipe: Holy Protection Potion
	[5643] = {},	-- Recipe: Great Rage Potion
	[5642] = {},	-- Recipe: Free Action Potion
	[5640] = {},	-- Recipe: Rage Potion

};

-- merge into FT_ItemInfo table
for k in pairs(AlchemyInfo) do
	FT_ItemInfo[k] = AlchemyInfo[k];
end;
