------------------------------------------------------
-- Armor_Info.lua
------------------------------------------------------

local ArmorInfo = { -- Armor/Shirt Items
	
	[23092] = { drop=true },	-- Wristguards of Undead Slaying
	[23091] = { drop=true },	-- Bracers of Undead Cleansing
	[23090] = { drop=true },	-- Bracers of Undead Slaying
	[20673] = { drop=true },	-- Abyssal Plate Girdle
	[20671] = { drop=true },	-- Abyssal Plate Legplates
	[20670] = { drop=true },	-- Abyssal Mail Clutch
	[20668] = { drop=true },	-- Abyssal Mail Legguards
	[20667] = { drop=true },	-- Abyssal Leather Belt
	[20665] = { drop=true },	-- Abyssal Leather Leggings
	[20662] = { drop=true },	-- Abyssal Plate Greaves
	[20661] = { drop=true },	-- Abyssal Leather Gloves
	[20659] = { drop=true },	-- Abyssal Mail Handguards
	[20658] = { drop=true },	-- Abyssal Leather Boots
	[20653] = { drop=true },	-- Abyssal Plate Gauntlets
	[18677] = { drop=true },	-- Zephyr Cloak
	[18676] = { drop=true },	-- Sash of the Windreaver
	[18231] = { drop=true },	-- Sleeveless T-Shirt
	[17922] = { drop=true },	-- Lionfur Armor
	[17723] = { craft={prof=FT.PROFESSION_TAILORING, sk=190} },	-- Green Holiday Shirt
	[16060] = {}, 	-- Common White Shirt
	[16059] = {}, 	-- Common Brown Shirt
	[15686] = { drop=true },	-- Triumphant Shoulder Pads
	[15680] = { drop=true },	-- Triumphant Chestpiece
	[15438] = { drop=true },	-- Supreme Gloves
	[15436] = { drop=true },	-- Supreme Bracers
	[14979] = { drop=true },	-- Exalted Helmet
	[14976] = { drop=true },	-- Exalted Gauntlets
	[14862] = { drop=true },	-- Warleader's Breastplate
	[14335] = { drop=true },	-- Eternal Spaulders
--	[12258] = { b=26690 },		-- Serpent Clasp Belt
	[12257] = {},	-- Heavy Notched Belt
	[12256] = {},	-- Cindercloth Leggings
	[12255] = {},	-- Pale Leggings
	[12254] = {},	-- Well Oiled Cloak
	[12253] = {},	-- Brilliant Red Cloak
	[10056] = { craft={prof=FT.PROFESSION_TAILORING, sk=215} },	-- Orange Mageweave Shirt
	[10055] = { craft={prof=FT.PROFESSION_TAILORING, sk=235} },	-- Pink Mageweave Shirt
	[10054] = { craft={prof=FT.PROFESSION_TAILORING, sk=230} },	-- Lavender Mageweave Shirt
	[10052] = { craft={prof=FT.PROFESSION_TAILORING, sk=220} },	-- Orange Martial Shirt
	[10034] = { craft={prof=FT.PROFESSION_TAILORING, sk=240} },	-- Tuxedo Shirt
	[6796] = { craft={prof=FT.PROFESSION_TAILORING, sk=175} },	-- Red Swashbuckler's Shirt
	[6795] = { craft={prof=FT.PROFESSION_TAILORING, sk=160} },	-- White Swashbuckler's Shirt
	[6385] = { craft={prof=FT.PROFESSION_TAILORING, sk=120} },	-- Stylish Green Shirt
	[6384] = { craft={prof=FT.PROFESSION_TAILORING, sk=120} },	-- Stylish Blue Shirt
	[6204] = { drop=true },		-- Tribal Worg Helm
	[6200] = { drop=true },		-- Garneg's War Belt
	[6197] = { drop=true },		-- Loch Croc Hide Vest
	[6195] = { drop=true },		-- Wax-polished Armor
	[6180] = { drop=true },		-- Slarkskin
	[6179] = { drop=true },		-- Privateer's Cape
	[5971] = { drop=true }, 	-- Feathered Cape
	[5969] = { drop=true },		-- Regent's Cloak
	[5753] = { drop=true }, 	-- Ruffled Chaplet
	[5751] = { drop=true }, 	-- Webwing Cloak
	[5750] = { drop=true }, 	-- Warchief's Girdle
	[5425] = { drop=true },		-- Runescale Girdle
	[5422] = { drop=true },		-- Brambleweed Leggings
	[5257] = { drop=true },		-- Dark Hooded Cape
	[5181] = { drop=true },		-- Vibrant Silk Cape
	[5111] = { drop=true },		-- Rathorian's Cape
	[5107] = { drop=true },		-- Deckhand's Shirt
	[4861] = { drop=true },		-- Sleek Feathered Tunic
	[4835] = {},	-- Elite Shoulders
	[4833] = {}, 	-- Glorious Shoulders
	[4832] = {},	-- Mystic Sarong
	[4831] = {},	-- Stalking Pants
	[4830] = {},	-- Saber Leggings
	[4829] = {},	-- Dreamer's Belt
	[4828] = {},	-- Nightwind Belt
	[4827] = {},	-- Wizard's Belt
	[4822] = {}, 	-- Owl's Disk (Shield)
	[4821] = {}, 	-- Bear Buckler (Shield)
	[4820] = {}, 	-- Guardian Buckler (Shield)
	[4816] = {}, 	-- Legionnaire's Leggings
	[4810] = { drop=true },		-- Boulder Pads
	[4800] = {}, 	-- Mighty Chain Pants
	[4799] = {}, 	-- Antiquated Cloak
	[4798] = {}, 	-- Heavy Runed Cloak
	[4797] = {}, 	-- Fiery Cloak
	[4796] = {}, 	-- Owl Bracers
	[4795] = {}, 	-- Bear Bracers
	[4794] = {}, 	-- Wolf Bracers
	[4793] = {}, 	-- Sylvan Cloak
	[4792] = {}, 	-- Spirit Cloak
	[4790] = {}, 	-- Inferno Cloak
	[4789] = {}, 	-- Stable Boots
	[4788] = {}, 	-- Agile Boots
	[4786] = {}, 	-- Wise Man's Belt
	[4782] = {}, 	-- Solstice Robe
	[4781] = {}, 	-- Whispering Vest
	[4771] = { drop=true },		-- Harvest Cloak
	[4768] = { drop=true },		-- Adept's Gloves
	[4478] = { drop=true },		-- Iridescent Scale Leggings
	[4462] = { drop=true },		-- Cloak of Rot
	[4448] = { drop=true },		-- Husk of Naraxis
	[4447] = { drop=true },		-- Cloak of Night
	[4344] = { craft={prof=FT.PROFESSION_TAILORING, sk=1} },	-- Brown Linen Shirt
	[4336] = { craft={prof=FT.PROFESSION_TAILORING, sk=200} },	-- Black Swashbuckler's Shirt
	[4335] = { craft={prof=FT.PROFESSION_TAILORING, sk=185} },	-- Rich Purple Silk Shirt
	[4334] = { craft={prof=FT.PROFESSION_TAILORING, sk=170} },	-- Formal White Shirt
	[4333] = { craft={prof=FT.PROFESSION_TAILORING, sk=155} },	-- Dark Silk Shirt
	[4332] = { craft={prof=FT.PROFESSION_TAILORING, sk=135} },	-- Bright Yellow Shirt
	[4330] = { craft={prof=FT.PROFESSION_TAILORING, sk=110} },	-- Stylish Red Shirt
	[3563] = { drop=true },		-- Seafarer's Pantaloons
	[3428] = {}, 	-- Common Gray Shirt
	[3427] = {}, 	-- Stylish Black Shirt
	[3426] = {}, 	-- Bold Yellow Shirt
	[3392] = { drop=true },		-- Ringed Helm
	[3231] = { drop=true },		-- Cutthroat Pauldrons
	[3018] = { drop=true },		-- Hide of Lupos
	[2899] = { drop=true }, 	-- Wendigo Collar
	[2622] = { drop=true }, 	-- Nimar's Tribal Headdress
	[2587] = { craft={prof=FT.PROFESSION_TAILORING, sk=100} },	-- Gray Woolen Shirt
	[2579] = { craft={prof=FT.PROFESSION_TAILORING, sk=70} },	-- Green Linen Shirt
	[2577] = { craft={prof=FT.PROFESSION_TAILORING, sk=40} },	-- Blue Linen Shirt
	[2576] = { craft={prof=FT.PROFESSION_TAILORING, sk=40} },	-- White Linen Shirt
	[2575] = { craft={prof=FT.PROFESSION_TAILORING, sk=40} },	-- Red Linen Shirt
	[2284] = { drop=true },		-- Rat Cloth Cloak
	[2241] = { drop=true },		-- Desperado Cape
	[2167] = { drop=true },		-- Foreman's Gloves
	[2166] = { drop=true },		-- Foreman's Leggings
	[1678] = { drop=true },		-- Black Ogre Kickers
	[1677] = { drop=true },		-- Drake-scale Vest
	[1355] = { drop=true },		-- Buckskin Cape
	[1314] = { drop=true },		-- Ghoul Fingers
	[1215] = { drop=true },		-- Support Girdle
	
};

-- merge into FT_ItemInfo table
for k in pairs(ArmorInfo) do
	FT_ItemInfo[k] = ArmorInfo[k];
end;
