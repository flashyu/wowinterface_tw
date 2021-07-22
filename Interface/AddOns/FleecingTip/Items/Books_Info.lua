------------------------------------------------------
-- Books_Info.lua
------------------------------------------------------

local BooksInfo = {

	[22739] = { drop=true },	-- Tome of Polymorph: Turtle
--	[18334] = { i="Useless" }, -- Libram of Protection
--	[18333] = { i="Useless" }, -- Libram of Focus
--	[18332] = { i="Useless" }, -- Libram of Rapidity
--	[11737] = { i="Useless" }, -- Libram of Voracity
--	[11736] = { i="Useless" }, -- Libram of Resilience
--	[11734] = { i="Useless" }, -- Libram of Tenacity
--	[11733] = { i="Useless" }, -- Libram of Constitution
--	[11732] = { i="Useless" }, -- Libram of Rumination
	
};

-- merge into FT_ItemInfo table
for k in pairs(BooksInfo) do
	FT_ItemInfo[k] = BooksInfo[k];
end;
