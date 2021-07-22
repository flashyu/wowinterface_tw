------------------------------------------------
-- FTUtils.lua
-- Useful utilities
-- Some original work from GFWUtils many thanks!
------------------------------------------------

local HIGHLIGHT_FONT_COLOR_CODE = _G.HIGHLIGHT_FONT_COLOR_CODE or "|cffffffff";
local RED_FONT_COLOR_CODE = _G.RED_FONT_COLOR_CODE or "|cffff0000";
local GRAY_FONT_COLOR_CODE = _G.GRAY_FONT_COLOR_CODE or "|cff999999";
local LIGHTYELLOW_FONT_COLOR_CODE = _G.LIGHTYELLOW_FONT_COLOR_CODE or "|cffffff00";
local FONT_COLOR_CODE_CLOSE = _G.FONT_COLOR_CODE_CLOSE or "|r";

local UIERRORS_HOLD_TIME = _G.UIERRORS_HOLD_TIME;

local GOLD_AMOUNT_TEXTURE_STRING = _G.GOLD_AMOUNT_TEXTURE_STRING;
local SILVER_AMOUNT_TEXTURE = _G.SILVER_AMOUNT_TEXTURE;
local COPPER_AMOUNT_TEXTURE = _G.COPPER_AMOUNT_TEXTURE;

local GOLD_AMOUNT = _G.GOLD_AMOUNT;
local SILVER_AMOUNT = _G.SILVER_AMOUNT;
local COPPER_AMOUNT = _G.COPPER_AMOUNT;

local GOLD_AMOUNT_SYMBOL = _G.GOLD_AMOUNT_SYMBOL;
local SILVER_AMOUNT_SYMBOL = _G.SILVER_AMOUNT_SYMBOL;
local COPPER_AMOUNT_SYMBOL = _G.COPPER_AMOUNT_SYMBOL;

------------------------------------------------

FTUtils = {};

FTUtils.FONT_COLOR = {r=0.25, g=1.0, b=1.0};

-- Shortcuts for common text color codes
FTUtils.Hilite = function(text)
	if (text == nil) then return ""; end;
	return HIGHLIGHT_FONT_COLOR_CODE..text..FONT_COLOR_CODE_CLOSE;
end;
FTUtils.Red = function(text)
	if (text == nil) then return nil; end;
	return RED_FONT_COLOR_CODE..text..FONT_COLOR_CODE_CLOSE;
end;
FTUtils.Gray = function(text)
	if (text == nil) then return nil; end;
	return GRAY_FONT_COLOR_CODE..text..FONT_COLOR_CODE_CLOSE;
end;
FTUtils.LightYellow = function(text)
	if (text == nil) then return nil; end;
	return LIGHTYELLOW_FONT_COLOR_CODE..text..FONT_COLOR_CODE_CLOSE;
end;

-- Plays sound only on a new item
FTUtils.PlaySound = function(itemNum, interval)
	local noSound = false;
	local FT_soundBlacklist = {
	 -- itemID's that don't need sound...
		[10940] = true,	-- Strange Dust
		[10938] = true,	-- Lesser Magic Essence
		[5576] = true,	-- Large Brown Sack (10 Slot)
		[5575] = true,	-- Large Green Sack (10 Slot)
		[5574] = true,	-- White Leather Bag (8 Slot)
		[5573] = true,	-- Green Leather Bag (8 Slot)
		[5572] = true,	-- Small Green Pouch (6 Slot)
		[5571] = true,	-- Small Black Pouch (6 Slot)
		[4497] = true,	-- Heavy Brown Bag (10 Slot)
		[4496] = true,	-- Small Brown Pouch (6 Slot)
		[2657] = true,	-- Red Leather Bag (8 Slot)
		[1725] = true,	-- Large Knapsack (12 Slot)
		[857] = true,	-- Large Red Sack (10 Slot)
		[856] = true,	-- Blue Leather Bag (8 Slot)
		[828] = true, 	-- Small Blue Pouch (6 Slot)
		[805] = true, 	-- Small Red Pouch (6 Slot)
		[804] = true,	-- Large Blue Sack (10 Slot)
	};
	if (FT_soundBlacklist[itemNum]) then
		noSound = true;
	end;
	
	-- no sound if bag already equiped
	local itemName, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _ = GetItemInfo(itemNum);
	for i=0,4 do
		local bagName = GetBagName(i)
		if (bagName) then
			if (itemName == bagName) then
				noSound = true;
			end;
		end;
	end;
	
	if (FleecingTipDB.NoSound) or (noSound) then return; end;
	
	local Act = nil;
	if (FTUtils.PlaySoundCache == nil) then
		FTUtils.PlaySoundCache = itemNum;
		Act = true;
	end;
	if (FTUtils.PlaySoundCache ~= itemNum) then
		FTUtils.PlaySoundCache = itemNum;
		Act = true;
	end;
	if (Act) then
		PlaySound(3580); -- sheep death
	end;
end;

-- Prints a message to the chat frame
FTUtils.Print = function(message, r, g, b)
	DEFAULT_CHAT_FRAME:AddMessage(message, (r or FTUtils.FONT_COLOR.r), (g or FTUtils.FONT_COLOR.g), (b or FTUtils.FONT_COLOR.b));
end;

-- Prints a message to the chat frame once per interval (seconds) or once per session if interval is nil
FTUtils.PrintOnce = function(message, interval, r, g, b)
	if (FTUtils.PrintOnceCache == nil) then
		FTUtils.PrintOnceCache = {};
	end
	if (interval == nil and FTUtils.PrintOnceCache[message]) then
		return;
	end
	if (interval and FTUtils.PrintOnceCache[message] and GetTime() - FTUtils.PrintOnceCache[message] < interval) then
		return;
	end
	DEFAULT_CHAT_FRAME:AddMessage(message, (r or FTUtils.FONT_COLOR.r), (g or FTUtils.FONT_COLOR.g), (b or FTUtils.FONT_COLOR.b));
	FTUtils.PrintOnceCache[message] = GetTime();
end;

-- blizzard own large number brake down
-- sourced = \Interface\SharedXML\Util.lua
local function LargeNumberBreakDown(amount)
	amount = tostring(amount);
	local newDisplay = "";
	local strlen = amount:len();
	--Add each thing behind a comma
	for i=4, strlen, 3 do
		newDisplay = LARGE_NUMBER_SEPERATOR..amount:sub(-(i - 1), -(i - 3))..newDisplay;
	end
	--Add everything before the first comma
	newDisplay = amount:sub(1, (strlen % 3 == 0) and 3 or (strlen % 3))..newDisplay;
	return newDisplay;
end

function GetGoldCoin(g)
	if (not g) then return "x"; end;
	return LargeNumberBreakDown(g)..string.format("\124TInterface\\MoneyFrame\\UI-GoldIcon:0:0:%d:0\124t",FleecingTipDB.Displacement);
end;
function GetSilverCoin(s)
	if (not s) then return "x"; end;
	return s..string.format("\124TInterface\\MoneyFrame\\UI-SilverIcon:0:0:%d:0\124t",FleecingTipDB.Displacement);
end;
function GetCopperCoin(c)
	if (not c) then return "x"; end;
	return c..string.format("\124TInterface\\MoneyFrame\\UI-CopperIcon:0:0:%d:0\124t",FleecingTipDB.Displacement);
end;

FTUtils.GSC = function(money)
	if (not money) then return 0; end;
	local gold = math.floor(money/10000);
	local silver = math.abs(mod(math.floor(money/100),100));
	local copper = math.abs(mod(money,100));
	
	local gsc = "|cffffffff"..GetGoldCoin(gold).."|r";
	if silver > 0 then gsc = gsc.." |cffffffff"..GetSilverCoin(silver).."|r"; end;
	if copper > 0 then gsc = gsc.." |cffffffff"..GetCopperCoin(copper).."|r"; end;
	
	if FleecingTipDB.CoinFormat == FT.LONG then 
		gsc = "|cffffd700"..string.format(GOLD_AMOUNT, LargeNumberBreakDown(gold)).."|r,";
		if silver > 0 then gsc = gsc.." |cffc0c0c0"..string.format(SILVER_AMOUNT, silver).."|r,"; end;
		if copper > 0 then gsc = gsc.." |cffc87533"..string.format(COPPER_AMOUNT, copper).."|r,"; end;
	end;
	
	if FleecingTipDB.CoinFormat == FT.SHORT then
		gsc = string.format("|cffffffff%d|cffffd700%s|r", LargeNumberBreakDown(gold), GOLD_AMOUNT_SYMBOL)
		if silver > 0 then gsc = gsc..string.format(" |cffffffff%d|cffc0c0c0%s|r", silver, SILVER_AMOUNT_SYMBOL); end;
		if copper > 0 then gsc = gsc..string.format(" |cffffffff%d|cffc87533%s|r", copper, COPPER_AMOUNT_SYMBOL); end;
	end;
	
	if money < 1e4 then -- < 10000
		gsc = "|cffffffff"..GetSilverCoin(silver).."|r";
		if copper > 0 then gsc = gsc.." |cffffffff"..GetCopperCoin(copper).."|r"; end;
		if FleecingTipDB.CoinFormat == FT.LONG then
			gsc = "|cffc0c0c0"..string.format(SILVER_AMOUNT, silver).."|r,";
			if copper > 0 then gsc = gsc.." |cffc87533"..string.format(COPPER_AMOUNT, copper).."|r,"; end;
		end;
		if FleecingTipDB.CoinFormat == FT.SHORT then
			gsc = string.format("|cffffffff%d|cffc0c0c0%s|r", silver, SILVER_AMOUNT_SYMBOL);
			if copper > 0 then gsc = gsc..string.format(" |cffffffff%d|cffc87533%s|r", copper, COPPER_AMOUNT_SYMBOL); end;
		end;
	end;
	
    if money < 1e2 then -- < 100
		gsc = "|cffffffff"..GetCopperCoin(copper).."|r";
		if FleecingTipDB.CoinFormat == FT.LONG then gsc = "|cffc87533"..string.format(COPPER_AMOUNT, copper).."|r,"; end;
		if FleecingTipDB.CoinFormat == FT.SHORT then gsc = string.format("|cffffffff%d|cffc87533%s|r", copper, COPPER_AMOUNT_SYMBOL); end;
    end;
	
	return gsc;
end;

FTUtils.ItemLink = function(linkInfo)
--	local sName, sLink, iQuality, iLevel, _, sType, sSubType, iCount, _, _, _, _, _, _, _, _, _ = GetItemInfo(linkInfo);
	local sLink = select(2, GetItemInfo(linkInfo));
	return sLink;
end;

FTUtils.DecomposeItemLink = function(link)
	if (not link) then return; end;
--	print("Link = "..tostring(link));
	local _, _, color, itype, itemID, enchant, gem1, gem2, gem3, gem4, suffix, uniqueID, linkLvl, reforging, name = string.find(link, "|?c?f?f?(%x*)|?H?([^:]*):?(%d+):?(%d*):?(%d*):?(%d*):?(%d*):?(%d*):?(%-?%d*):?(%-?%d*):?(%d*):?(%d*)|?h?%[?([^%[%]]*)%]?|?h?|?r?")
	itemID = tonumber(itemID);
	enchant = tonumber(enchant);
	gem1 = tonumber(gem1);
	gem2 = tonumber(gem2);
	gem3 = tonumber(gem3);
	gem4 = tonumber(gem4);
	suffix = tonumber(suffix);
	uniqueID = tonumber(uniqueID);
	return itemID, enchant, gem1, gem2, gem3, gem4, suffix, uniqueID;
end;
