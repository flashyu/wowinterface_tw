------------------------------------------------------
-- Cooking_Info.lua
------------------------------------------------------

local CookingInfo = { -- Cooking Items

	[21219] = {},	-- Recipe: Sagefish Delight
	[21099] = {},	-- Recipe: Smoked Sagefish
	[20075] = {},	-- Recipe: Heavy Crocolisk Stew
	[18046] = {},	-- Recipe: Tender Wolf Steak
	[17201] = { note="Smokywood Pastures (Seasonal Vendor)" },	-- Recipe: Egg Nogg
	[17200] = { note="Smokywood Pastures (Seasonal Vendor)" },	-- Recipe: Gingerbread Cookie
	[17062] = {},	-- Recipe: Mithril Head Trout
	[16767] = {},	-- Recipe: Undermine Clam Chowder
	[16111] = {},	-- Recipe: Spiced Chili Crab
	[16110] = {},	-- Recipe: Monster Omelet
	[16072] = {},	-- Expert Cookbook
	[13949] = {},	-- Recipe: Baked Salmon
	[13948] = {},	-- Recipe: Mightfish Steak
	[13947] = {},	-- Recipe: Lobster Stew
	[13946] = {},	-- Recipe: Poached Sunscale Salmon
	[13945] = {},	-- Recipe: Nightfin Soup
	[13943] = {},	-- Recipe: Hot Smoked Bass
	[13942] = {},	-- Recipe: Grilled Squid
	[13941] = {},	-- Recipe: Filet of Redgill
	[13940] = {},	-- Recipe: Cooked Glossy Mightfish
	[13939] = {},	-- Recipe: Spotted Yellowtail
	[12240] = {},	-- Recipe: Heavy Kodo Stew
	[12239] = {},	-- Recipe: Dragonbreath Chili
	[12233] = {},	-- Recipe: Mystery Stew
	[12232] = {},	-- Recipe: Carrion Surprise
	[12231] = {},	-- Recipe: Jungle Stew
	[12229] = {},	-- Recipe: Hot Wolf Ribs
	[12228] = {},	-- Recipe: Roast Raptor
	[12227] = {},	-- Recipe: Lean Wolf Steak
	[12226] = {},	-- Recipe: Crispy Bat Wing
	[12233] = {},	-- Recipe: Mystery Stew
	[6892] = {},	-- Recipe: Smoked Bear Meat
	[6369] = {},	-- Recipe: Rockscale Cod
	[6368] = {},	-- Recipe: Rainbow Fin Albacore
	[6330] = {},	-- Recipe: Bristle Whisker Catfish
	[6329] = {},	-- Recipe: Loch Frenzy Delight
	[6328] = {},	-- Recipe: Longjaw Mud Snapper
	[6326] = {},	-- Recipe: Slitherskin Mackerel
	[6325] = {},	-- Recipe: Brilliant Smallfish
	[6039] = {},	-- Recipe: Giant Clam Scorcho
	[5528] = {},	-- Recipe: Clam Chowder
	[5489] = {},	-- Recipe: Lean Venison
	[5488] = {},	-- Recipe: Crispy Lizard Tail
	[5487] = { quest=true, npc="Grub" },	-- Recipe: Dig Rat Stew
	[5486] = {},	-- Recipe: Strider Stew
	[5485] = {},	-- Recipe: Fillet of Frenzy
	[5484] = {},	-- Recipe: Roasted Kodo Meat
	[5483] = {},	-- Recipe: Scorpid Surprise
	[5482] = { quest=true, npc="Zarrin" },	-- Recipe: Kaldorei Spider Kabob
	[4609] = {},	-- Recipe: Barbecued Buzzard Wing
	[3736] = { quest=true, npc="Darren Malvew" },	-- Recipe: Tasty Lion Steak
	[3735] = {},	-- Recipe: Hot Lion Chops
	[3734] = {},	-- Recipe: Big Bear Steak
	[3683] = {},	-- Recipe: Gooey Spider Cake
	[3682] = {},	-- Recipe: Curiously Tasty Omelet
	[3681] = {},	-- Recipe: Crocolisk Gumbo
	[3680] = {},	-- Recipe: Murloc Fin Soup
	[3679] = {},	-- Recipe: Blood Sausage
	[3678] = {},	-- Recipe: Crocolisk Steak
	[2889] = {},	-- Recipe: Beer Basted Boar Ribs
	[2701] = {},	-- Recipe: Seasoned Wolf Kabob
	[2700] = {},	-- Recipe: Succulent Pork Ribs
	[2699] = {},	-- Recipe: Redridge Goulash
	[2698] = {},	-- Recipe: Cooked Crab Claw
	[2697] = {},	-- Recipe: Goretusk Liver Pie
	[728] = {},		-- Recipe: Westfall Stew
	
};

-- merge into FT_ItemInfo table
for k in pairs(CookingInfo) do
	FT_ItemInfo[k] = CookingInfo[k];
end;