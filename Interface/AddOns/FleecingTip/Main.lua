------------------------------------------------------
-- Main.lua
------------------------------------------------------
local addon, _ = ...
local version = GetAddOnMetadata(addon, "Version");

-- make sure classic version...
local classicOnly = select(4, GetBuildInfo()) < 20000
if (not classicOnly) then
	print("|cffa330c9"..addon.." "..version..": Classic Version Only!|r");
end;

local CALENDAR_FILTER_DARKMOON = _G.CALENDAR_FILTER_DARKMOON;
local ITEM_BIND_ON_PICKUP = _G.ITEM_BIND_ON_PICKUP;
local ITEM_BIND_TO_BNETACCOUNT = _G.ITEM_BIND_TO_BNETACCOUNT;
local ITEM_BIND_TO_ACCOUNT = _G.ITEM_BIND_TO_ACCOUNT;
local MERCHANT_ITEMS_PER_PAGE = _G.MERCHANT_ITEMS_PER_PAGE;
local UNKNOWN = _G.UNKNOWN;

local defaultsDB = {
	CoinFormat = FT.ICON, --< Icon, Short, Long
	NoDisplay = false,
	NoSound = false,
	Displacement = -1,
};

function initiateDB(a,b)
	if type(a) ~= "table" then return {}; end;
	if type(b) ~= "table" then b = {}; end;
	for k, v in pairs(a) do
		if type(v) == "table" then
			b[k] = initiateDB(v, b[k]);
		elseif type(b[k]) ~= type(v) then
			b[k] = v;
		end;
	end;
	return b;
end;

function cleanNewInfo()
	if (FT_NewItemInfo) then
		FT_NewItemInfo = wipe(FT_NewItemInfo);
	else
		FT_NewItemInfo = {};
	end;
end;

local FT_VersionFrame = CreateFrame("FRAME");
FT_VersionFrame:RegisterEvent("ADDON_LOADED");
function FT_VersionFrame:OnEvent(event, arg1)
	if event == "ADDON_LOADED" and arg1 == addon then
		FleecingTipDB = initiateDB(defaultsDB, FleecingTipDB)
		if FleecingTipDB.Version == nil then
			cleanNewInfo();
			FleecingTipDB.Version = version;
		elseif FleecingTipDB.Version ~= version then
			cleanNewInfo();
			FleecingTipDB.Version = version;
		end;
		FT_VersionFrame:UnregisterEvent("ADDON_LOADED");
		if ( classicOnly ) then
			FTUtils.PrintOnce(addon.." "..FTUtils.LightYellow(version)..": addon Loaded.", 60);
		end;
	end;
end;
FT_VersionFrame:SetScript("OnEvent", FT_VersionFrame.OnEvent);

function FT_HookTooltip(frame)
	if (frame:GetScript("OnTooltipSetItem")) then
		frame:HookScript("OnTooltipSetItem", FT_OnTooltipSetItem);
	else
		frame:SetScript("OnTooltipSetItem", FT_OnTooltipSetItem);
	end;
end;

--[[ check active event at present time...
function CheckEventActive(worldEvent)
	if (not worldEvent) then return ""; end;
	
	-- Darkmoon Faire Only
	if (worldEvent == FT.DARKMOON_FAIRE) then
		local e;
		local date = C_Calendar.GetDate();
		local today = date.monthDay;
		local numDayEvents = C_Calendar.GetNumDayEvents(0,today);
		for e = 1,numDayEvents do
			local event = C_Calendar.GetDayEvent(0, today, e);
			if event.title == CALENDAR_FILTER_DARKMOON then
				return "|cff00ff00"..FT.ACTIVE.."|r";
			end;
		end;
		return "|cffff0000"..FT.NO_ACTIVE.."|r";
	end;
	
	
	local WEList = {
	-- Children's Week
--	[FT.HOLIDAY_EVENT_CW] = { 235444, 235445, 235446 },
	-- Brewfest
	[FT.HOLIDAY_EVENT_Brew] = { 0, 0, 0 },
	-- Hallow's End
	[FT.HOLIDAY_EVENT_HE] = { 235460, 235461, 235462 },
	-- Love is in the Air
	[FT.HOLIDAY_EVENT_LiitA] = { 0, 0, 0 },
	-- Lunar Festival
	[FT.HOLIDAY_EVENT_LF] = { 235469, 235470, 235471 },
	-- Harvest Festival
	[FT.HOLIDAY_EVENT_HF] = { 235472, 235473, 235474 },
	-- Noblegarden
	[FT.HOLIDAY_EVENT_Noble] = { 235475, 235476, 235477 },
	-- Midsummer Fire Festival
	[FT.HOLIDAY_EVENT_MFF] = { 0, 0, 0 },
	};
	
	local calendar = C_Calendar.GetDate();
	local month, day, year = calendar.month, calendar.monthDay, calendar.year;
	local monthInfo = C_Calendar.GetMonthInfo();
	local curMonth, curYear = monthInfo.month, monthInfo.year;
	local monthOffset = -12 * (curYear - year) + month - curMonth;
	local numEvents = C_Calendar.GetNumDayEvents(monthOffset, day);
--	print("numEvents = "..tostring(numEvents));
--	local event = C_Calendar.GetDayEvent(monthOffset, day, 1);
--	print("event.iconTexture = "..tostring(event.iconTexture));
--	print("event.sequenceType = "..tostring(event.sequenceType));
--	print("event.title = "..tostring(event.title));
--	local event2 = C_Calendar.GetHolidayInfo(monthOffset, day, 1);
--	print("event2.name = "..tostring(event2.name));
--	print("event2.texture = "..tostring(event2.texture));
	
	for i=1, numEvents do
		local event = C_Calendar.GetDayEvent(monthOffset, day, i);
		
--		print("event.iconTexture = "..tostring(event.iconTexture));
--		event.sequenceType = "ONGOING";
--		print("event.sequenceType = "..tostring(event.sequenceType));
		
		local listEvent = WEList[worldEvent];
--		listEvent = WEList[FT.HOLIDAY_EVENT_Noble];
		if (listEvent) then
--			print("YES!!!");
			local okay = nil;
			for w=1, table.getn(listEvent) do
--				print("listEvent[w] = "..tostring(listEvent[w]));
				local eventFound = event.iconTexture;
				if (listEvent[w] == eventFound) then okay = true; end;
			end;
			if (okay) then
--				print("OKAY!!!");
				if (event.sequenceType == "ONGOING") then
					return "|cff00ff00"..FT.ACTIVE.."|r";
				else
					local hour = GetGameTime();
					if event.sequenceType == "END" and hour <= event.endTime.hour or
						event.sequenceType == "START" and hour >= event.startTime.hour then
						return "|cff00ff00"..FT.ACTIVE.."|r";
					end;
				end;
			else
				return "|cffff0000"..FT.NO_ACTIVE.."|r";
			end;
		else	
			return "|cffff0000"..UNKNOWN.."|r";
		end;

	end;
	return "---";
end;
]]--
-- return the real zone name for BC or WoD...
function FT_RealMapName(mapID)
	if (not mapID) then return nil; end;
	-- some reason no mapID for instances!
	local ClassicDungeons = {
		[33] = "Shadowfang Keep",
		[34] = "The Stockade",
		[36] = "The Deadmines",
		[43] = "Wailing Caverns",
		[47] = "Razorfen Kraul",
		[48] = "Blackfathom Deeps",
		[70] = "Uldaman",
		[90] = "Gnomeregan",
		[109] = "The Temple of Atal'Hakkar",
		[129] = "Razorfen Downs",
		[209] = "Zul'Farrak",
		[229] = "Blackrock Spire",
		[230] = "Blackrock Depths",
		[249] = "Onyxia's Lair",
		[289] = "Scholomance",
		[309] = "Zul'Gurub",
		[329] = "Stratholme",
		[349] = "Maraudon",
		[389] = "Ragefire Chasm",
		[407] = "Darkmoon Faire",
		[409] = "Molten Core",
		[429] = "Dire Maul",
		[469] = "Blackwing Lair",
		[509] = "Ruins of Ahn'Qiraj",
		[531] = "Temple of Ahn'Qiraj",
		[533] = "Naxxramas",
		[1001] = "Scarlet Halls",
		[1004] = "Scarlet Monastery",
		[1007] = "Scholomance",
	};
	
	local mapName = ClassicDungeons[mapID];
	if (not mapName) then
		local mapDetails = C_Map.GetMapInfo(mapID);
		mapName = mapDetails.name;
	end;
	return mapName;
end;

function FT_GetVendorLocation(faction,npc)
	if (not faction) or (not npc) then return nil; end;
	local locationText = "";
	local vendorCoords = FT_VendorLocations[faction][npc];
	if ( vendorCoords ~= nil) then
		local uiD = vendorCoords[1];
		if (not uiD) then return locationText; end;
		if (uiD > 0) then
			locationText = FT_RealMapName(uiD);
		end;
	end;
	return locationText;
end;

function FT_GetVendorCoordinates(faction,npc)
	if (not faction) or (not npc) then return nil; end;
	local tex = nil;
	local vendorCoords = FT_VendorLocations[faction][npc];
--	print("faction, npc, vendorCoords = "..tostring(faction)..", "..tostring(npc)..", "..tostring(vendorCoords[1]));
	if ( vendorCoords ~= nil) then
		local Ct = "";
		local Rt = FT_VendorLocations[faction][npc][2] or "";
		if (string.len(Rt) == 4) then Rt = string.format("%.1f|r",tonumber(Rt)); end;
		local Lt = FT_VendorLocations[faction][npc][3] or "";
		if (string.len(Lt) == 4) then Lt = string.format("%.1f|r",tonumber(Lt)); end;
		if (FT_VendorLocations[faction][npc][3]) then Ct = ", "; end;
		if (FT_VendorLocations[faction][npc][2]) then
			tex = " ["..Rt..Ct..Lt.."]";
		else
			tex = "";
		end;
	end;
	return tex;
end;

function ERROR_ItemInfo(id,npc)
	local iN, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _ = GetItemInfo(id) or "";
	FTUtils.PrintOnce(FTUtils.Red(addon.." "..version.." error: ").."Can't find any information on item ["..tostring(id).."] / '"..iN.."' :: Vendor:'"..npc.."' ? ".."Please report this on the website.", 60);
end;

function ERROR_VendorInformation(npc)
	FTUtils.PrintOnce(FTUtils.Red(addon.." "..version.." error: ").."Can't find any information on '"..npc.."' ? ".."Please report this on the website.", 60);
end;

function ERROR_VendorLocation(npc)
	FTUtils.PrintOnce(FTUtils.Red(addon.." "..version.." error: ").."Can't find location for '"..npc.."' ? ".."Please report this on the website.", 60);
end;

--function ERROR_VendorCoordinates(npc)
--	FTUtils.PrintOnce(FTUtils.Red(addon.." "..version.." error: ").."'"..npc.."' coordinates coming soon!", 60);
--end

function FT_FindVendorLocation(faction, npc)
	local vendorFound = FT_VendorLocations[faction][npc];
	if (vendorFound == nil) then
		vendorFound = FT_VendorLocations["Neutral"][npc];
		if (vendorFound) then
			faction = "Neutral";
		else
			return faction, nil;
		end;
	end;
	return faction, vendorFound;
end;

function FT_OnTooltipSetItem(self)
	if ( not classicOnly ) then return; end;
	if (MerchantFrame:IsVisible()) then
		for buttonIndex = 1, MERCHANT_ITEMS_PER_PAGE do
			local button = _G["MerchantItem"..buttonIndex.."ItemButton"];
			if (self:IsOwned(button)) then return; end;
		end;
	end;

	local name, link = self:GetItem();
	if (not link) then return; end;
	-- workaround for OnTooltipSetItem being called twice for recipes
	local _, _, _, _, _, itemType, _, _, _, _, _, _, _, _, _, _, _ = GetItemInfo(link);
	if (itemType == FT.RECIPE and self.lastLink ~= link) then
		for i = 1, self:NumLines() do
			local line = _G[self:GetName().."TextLeft"..i];
			local text = line:GetText();
			if (text and string.sub(text, 1, 1) == "\n") then 
				self.lastLink = link;
				return; 
			end;
		end;
	end;
	self.lastLink = nil;
	
	if (link) then
		self:AddLine(" ");
		local _, _, itemID  = string.find(link, "item:(%d+)");
		itemID = tonumber(itemID);
--		itemID = 3736 --#TESTING#--
		
		local newItem = false;
		if (FT_NewItemInfo[itemID]) and (not FT_ItemInfo[itemID])then
			newItem = true;
		end;
		if (newItem) then
			local faction = UnitFactionGroup("player");
			local newInspect = FT_NewItemInfo[itemID][faction];
			local name = newInspect.vendor;
			local location = newInspect.location;
			local cost = FTUtils.GSC(newInspect.cost);
			local colour = FTUtils.FONT_COLOR;
			self:AddLine(string.format(FT.NEW_ITEM, name, location, cost), colour.r, colour.g, colour.b);
			return false;
		end;
		
		if (not FleecingTipDB.NoDisplay) and (not FT_ItemBlacklist(itemID)) and (FT_ItemInfo[itemID]) and (not newItem)then
			
			local myFaction = UnitFactionGroup("player");
			local itemInfo = FT_VendorInfo[myFaction][itemID];
			if (not itemInfo) then
				itemInfo = FT_VendorInfo["Neutral"][itemID];
				if (not itemInfo) then
					return false;
				end;
			end;
			
			
			local numVendors = 0;
			local soldBy = itemInfo;
			if ( itemInfo.vendors ) then
				soldBy = itemInfo.vendors;
				numVendors = table.getn(soldBy)
			else
				numVendors = table.getn(soldBy)
			end;
			if ( FT_VendorInfo[myFaction][itemID] ) and ( FT_VendorInfo["Neutral"][itemID] ) then
				soldBy = FTTable.Merge(FT_VendorInfo[myFaction][itemID], FT_VendorInfo["Neutral"][itemID]);
				if ( FT_VendorInfo[myFaction][itemID].vendors ) and ( FT_VendorInfo["Neutral"][itemID].vendors ) then
					soldBy = FTTable.Merge(FT_VendorInfo[myFaction][itemID].vendors, FT_VendorInfo["Neutral"][itemID].vendors);
					numVendors = table.getn(soldBy)
				end;
			end;
			
			local numCost = 0;
			local costBy = false;
			if ( itemInfo.cost ) then
				costBy = itemInfo.cost;
				numCost = table.getn(costBy);
			end;
			if ( FT_VendorInfo[myFaction][itemID] ) and ( FT_VendorInfo["Neutral"][itemID] ) then
				if ( FT_VendorInfo[myFaction][itemID].cost ) and ( FT_VendorInfo["Neutral"][itemID].cost ) then
					costBy = FTTable.Merge(FT_VendorInfo[myFaction][itemID].cost, FT_VendorInfo["Neutral"][itemID].cost);
					numCost = table.getn(costBy);
				end;
			end;
			
--			print("myFaction = "..tostring(myFaction));
--			print("itemID = "..tostring(itemID));
--			print("numVendors = "..tostring(numVendors));
--			print("numCost = "..tostring(numCost));
			
			local itemInspect = FT_ItemInfo[itemID];
			
			local intro = FT.SOLD_BY
			local color = FTUtils.FONT_COLOR;
			local note = itemInspect.note or "";
			
			if (itemInspect.note ~= nil) then
				color = FT.SPECIAL_VENDOR_COLOR;
			end;
			
			if (itemInspect.drop ~= nil) then
				color = FT.DROP_COLOR;
				intro = FT.DROPPED_BY;
			end;
			
			if (itemInspect.quest) or (itemInspect.fished) then
				color = FT.QUEST_COLOR;
				intro = FT.OPTAINABLE_BY;
			end;
			
			if (itemInspect.craft ~= nil) then
				color = FT.PATTERN_COLOR;
				intro = FT.MADE_BY;
			end;
			
			if (itemInspect.mobs ~= nil) then
				intro = FT.DROPPED_BY;
			end;
			
			if (itemInspect.useless ~= nil) then
				color = FT.USELESS_COLOR;
			end;
			
			if (itemInspect.ap ~= nil) then
				note = string.format(FT.AVERAGE_PRICE, FTUtils.GSC(itemInspect.ap));
			end;
			
--			print("myFaction, intro, color, note, worldevent, profession = "..tostring(myFaction)..", "..tostring(intro)..", "..tostring(color)..", "..tostring(note)..", "..tostring(worldevent)..", "..tostring(profession) );
			local dropfound = FT_ItemInfo[itemID].drop or nil;
			if (dropfound) then myFaction = "Drops"; end;
			
			local mobDrops = FT_ItemInfo[itemID].mobs or nil;
			
			if (numVendors > 1) then
				local num = 1;
				self:AddLine(intro..":", color.r, color.g, color.b);
				for i, aVendor in pairs(soldBy) do
					local locFaction, locVendor = FT_FindVendorLocation(myFaction,aVendor)
					
					if (locVendor ~= nil) or (profession and itemInfo.vendors) or (dropfound) then
						local vendorName = FT[aVendor] or aVendor;
						local vendorLocation = FT_GetVendorLocation(locFaction,aVendor);
						local vendorCoordinates = FT_GetVendorCoordinates(locFaction,aVendor);
						local vendorCost = "";
						if ( numCost > 1 ) and ( not FT_ItemInfo[itemID].ap ) then
							vendorCost = costBy[num];
							vendorCost = FT.COST_SPACE..FTUtils.GSC(vendorCost);
							num = num + 1;
						end;
						if (dropfound) then
							vendorLocation = FT_GetVendorLocation("Drops",vendorName) or "";
							vendorCoordinates = FT_GetVendorCoordinates("Drops",vendorName) or "";
							if (FT_VendorLocations["Drops"][vendorName][4] ~= nil) then
								local spec = FT_VendorLocations["Drops"][vendorName][4];
								vendorName = vendorName.." ("..spec..")";
							end;
						end;
						if (vendorLocation) ~= nil then
							self:AddDoubleLine(string.format(FT.VENDOR_LOCATION_FORMAT, vendorName, vendorLocation, vendorCoordinates, vendorCost), " ", color.r, color.g, color.b, nil, nil, nil);
						else
							self:AddLine(vendorName..vendorCost, color.r, color.g, color.b);
--							if (not profession) then
--								ERROR_VendorCoordinates(aVendor);
--							end;
						end;
					else
						ERROR_VendorInformation(aVendor);
						if (aVendor == numVendors) then
							return false;
						end;
					end;
					
				end;
				
			elseif (numVendors == 1 and not itemInfo.boe) then
				
				local locFaction, locVendor = FT_FindVendorLocation(myFaction,soldBy[1]);
				if (locVendor ~= nil) or (profession and itemInfo.vendors) or (dropfound) then
					
					local vendorName = FT[soldBy[1]] or soldBy[1];
					local vendorLocation = FT_GetVendorLocation(locFaction,aVendor);
					local vendorCoordinates = FT_GetVendorCoordinates(locFaction,aVendor);
					local vendorCost = "";
					if ( numCost == 1 ) and ( not FT_ItemInfo[itemID].ap ) then
						vendorCost = costBy[1];
						vendorCost = FT.COST_SPACE..FTUtils.GSC(vendorCost);
					end;
					
					if (dropfound) then
						vendorLocation = FT_GetVendorLocation("Drops",vendorName) or "";
						vendorCoordinates = FT_GetVendorCoordinates("Drops",vendorName) or "";
						if (FT_VendorLocations["Drops"][vendorName][4] ~= nil) then
							local spec = FT_VendorLocations["Drops"][vendorName][4];
							vendorName = vendorName.." ("..spec..")";
						end;
					end;
					
					if (itemInspect.craft) then
						vendorLocation = FT_ItemInfo[itemID].craft.prof or "";
						vendorLocation = vendorLocation.." "..string.format(FT.SKILL_LEVEL_REQUIRED, FT_ItemInfo[itemID].craft.sk);
					end;
					
					if (mobDrops) then
						vendorLocation = string.format(FT.LEVEL_DROP, FT_ItemInfo[itemID].mobs or "");
					end;
					
					if (itemInspect.quest) then
						local questFaction = locFaction;
						if (FT_VendorInfo["Neutral"][itemID]) then
							questFaction = "Neutral";
						end;
						vendorLocation = FT_FactionQuest[questFaction][itemID];
						local questName = itemInspect.npc;
						local questLocation = FT_GetVendorLocation(questFaction,questName);
						local questCoordinates = FT_GetVendorCoordinates(questFaction,questName);
						note = questName..", "..questLocation..questCoordinates;
					end;
					
					if (vendorLocation ~= nil) and (vendorName ~= "Useless") then
						if (not vendorCoordinates) then
							self:AddDoubleLine(intro.." "..vendorName..": "..vendorLocation..vendorCost, " ", color.r, color.g, color.b, nil, nil, nil);
						else
							self:AddLine(intro..",", color.r, color.g, color.b);
							self:AddDoubleLine(string.format(FT.VENDOR_LOCATION_FORMAT, vendorName, vendorLocation, vendorCoordinates, vendorCost), " ", color.r, color.g, color.b, nil, nil, nil);
						end;
					else
						if (vendorName == "Useless") then
							self:AddLine(FT.ITEM_WARNING, color.r, color.g, color.b);
						else
							self:AddLine(intro.." "..vendorName..vendorCost, color.r, color.g, color.b);
						end;
					end;
					
				else
					ERROR_VendorInformation(vendors[1]);
					return false;
				end;
				
			else
				
				local found = false;
				for _, faction in pairs({"Alliance", "Horde", "Neutral"}) do
					if (FT_VendorInfo[faction][itemID]) then
						found = true;
						break; -- get out quick! :)
					end;
				end;
				if (not found) then
					local link, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _ = GetItemInfo(itemID) or "";
					FTUtils.PrintOnce(FTUtils.Red(addon.." "..version.." error: ").."'"..link.."'["..itemID.."] is listed but has no vendors.", 60);
					FTUtils.PrintOnce("Please report this on the mod website.", 60);
					return false;
				end;
				
			end;
			
			if (note ~= nil) then
--				self:AddLine(note, 1.0, 0.5, 0.25);
				self:AddLine(note, color.r, color.g, color.b);
			end;
			
			FTUtils.PlaySound(itemID, 30);
			return true;
		end;
		
		-- FactionFriend also shows tooltips for this stuff; if it's present, let it take over
--		if (FFF_Config and not FFF_Config.NoTooltip) then return; end;
	
	end;
	
end;

function FT_OnEvent(self, event, arg1)
	FT_ScanMerchant();
end;

function FT_OnLoad(self)

	-- Register Slash Commands
	SLASH_FLEECINGTIP1 = "/fleecingtip";
	SLASH_FLEECINGTIP2 = "/ft";
	SlashCmdList["FLEECINGTIP"] = function(msg)
		FT_ChatCommandHandler(msg);
--		FT_DisabledChatCommandHandler(msg);
	end;

	-- Register for Events
	self:RegisterEvent("MERCHANT_SHOW");
	self:RegisterEvent("MERCHANT_UPDATE");
	
	FT_HookTooltip(GameTooltip);
	FT_HookTooltip(ItemRefTooltip);
		
end;

function FT_ChatCommandHandler(msg)
	
	-- Print Help
	if ( msg == "help" ) or ( msg == "" ) then
		FTUtils.Print(addon.." "..version..":");
		FTUtils.Print("/fleecingtip (or /ft)");
		FTUtils.Print("- "..FTUtils.Hilite("help").." - Display this help list.");
		FTUtils.Print("- "..FTUtils.Hilite("[item link]").." - Show info for an item in the chat window.");
		FTUtils.Print("- "..FTUtils.Hilite("status").." - Check current settings.");
		FTUtils.Print("- "..FTUtils.Hilite("money icon").." | "..FTUtils.Hilite("short").." | "..FTUtils.Hilite("long").." - Money format display.");
		FTUtils.Print("- "..FTUtils.Hilite("sound on").." | "..FTUtils.Hilite("off").." - Found an item sound.");
		FTUtils.Print("- "..FTUtils.Hilite("show on").." | "..FTUtils.Hilite("off").." - Display 'Fleecing Tip' information in tooltip.");
		FTUtils.Print("- "..FTUtils.Hilite("config").." - Open options.");
		return;
	end
	
	if (msg == "version") then
		FTUtils.Print(addon.." "..version);
		return;
	end
	
	if ( msg == "sound on" ) or ( msg == "sound off" ) then
		FleecingTipDB.NoSound = not FleecingTipDB.NoSound;
		if (FleecingTipDB.NoSound) then
			FTUtils.Print(addon.." sound is now set to "..FTUtils.Hilite("off")..".");
		else
			FTUtils.Print(addon.." sound is now set to "..FTUtils.Hilite("on")..".");
		end
		return;
	end
	
	if ( msg == "money icon" ) then
		FleecingTipDB.CoinFormat = FT.ICON;
		FTUtils.Print(addon.." money format is set to "..FTUtils.Hilite("icon")..".");
		return;
	end
	
	if ( msg == "money short" ) then
		FleecingTipDB.CoinFormat = FT.SHORT;
		FTUtils.Print(addon.." money format is set to "..FTUtils.Hilite("short")..".");
		return;
	end
	
	if ( msg == "money long" ) then
		FleecingTipDB.CoinFormat = FT.LONG;
		FTUtils.Print(addon.." money format is set to "..FTUtils.Hilite("long")..".");
		return;
	end
	
	if ( msg == "show on" ) then
		FleecingTipDB.NoDisplay = false
		FTUtils.Print(addon.." is "..FTUtils.Hilite("on")..", and showing tooltip information.");
		return;
	end
	
	if ( msg == "show off" ) then
		FleecingTipDB.NoDisplay = true
		FTUtils.Print(addon.." showing tooltip information is "..FTUtils.Hilite("off")..".");
		return;
	end
	
	if ( msg == "status" ) then
		FTUtils.Print(addon.." status:");
		FTUtils.Print("Money format is "..FTUtils.Hilite(FleecingTipDB.CoinFormat)..".");
		if (FleecingTipDB.NoSound) then
			FTUtils.Print("Sound is "..FTUtils.Hilite("off")..".");
		else
			FTUtils.Print("Sound is "..FTUtils.Hilite("on")..".");
		end;
		local gotSomething;
		if (not FleecingTipDB.NoDisplay) then
			FTUtils.Print("Show "..FTUtils.Hilite("on").." Displaying tooltip information for "..addon..".");
			gotSomething = true;
		end;
		if (not gotSomething) then
			FTUtils.Print("Show "..FTUtils.Hilite("off ")..addon.." is not adding any information to tooltip.");
		end;
		return;
	end;
	
	if ( msg == "config" ) then
		InterfaceOptionsFrame_OpenToCategory(addon); -- get over options bug...
		InterfaceOptionsFrame_OpenToCategory(addon); -- workaround to get to FT options call twice!
		return;
	end;
	
	if (msg == "test") then
		FTUtils.Print(addon..", Data Stats:");
		local itemInfoCount = 0;
		for getID in pairs(FT_ItemInfo) do
			local found = false;
			for _, faction in pairs({"Alliance", "Horde", "Neutral"}) do
				if (FT_VendorInfo[faction][getID]) and (FT_ItemInfo[getID]) then
					found = true;
				end;
			end;
			if (found == false) then
				FTUtils.Print("Item ID "..getID.." not found in FT_VendorInfo.");
			end;
			itemInfoCount = itemInfoCount + 1;
		end;
		FTUtils.Print("  - "..itemInfoCount.." entries in FT_ItemInfo.");
		for _, faction in pairs({"Alliance", "Horde", "Neutral"}) do
			local vendorInfoCount = 0;
			for getID in pairs(FT_VendorInfo[faction]) do
				if (FT_VendorInfo[faction][getID]) and (not FT_ItemInfo[getID]) then
					print("FT_VendorInfo["..faction.."] found, not in FT_ItemInfo");
					FTUtils.Print("Item ID "..getID.." not found in FT_ItemInfo.");
				end;
				vendorInfoCount = vendorInfoCount + 1;
			end;
			FTUtils.Print("  - "..vendorInfoCount.." entries in FT_VendorInfo["..faction.."].");
		end;
		local dropCount = 0;
		for itemID in pairs(FT_ItemInfo) do
			if (FT_ItemInfo[itemID].drop == true) then
				local dropfound = false;
				local dropName = tostring(_G.UNKNOWN);
				local loc = dropName;
				for _, faction in pairs({"Alliance", "Horde", "Neutral"}) do
					if (FT_VendorInfo[faction][itemID]) then
						dropName = FT_VendorInfo[faction][itemID][1];
						loc = faction;
--						print("Name: "..tostring(dropName)); -- *Debug*
						if ( FT_VendorLocations["Drops"][dropName]) then
							dropfound = true;
						end;
					end;
				end;
				if not (dropfound) then
					FTUtils.Print("Drop '"..dropName.."' not found for ["..loc.."] "..itemID.." itemID.");
				end;
				dropCount = dropCount + 1;
			end;
		end;
		FTUtils.Print("  - "..dropCount.." Drop entries.");
		return;
	end;
	
	local _, _, cmd, args = string.find(msg, "^([%l%d']+) *(.*)");
	if (cmd) then cmd = string.lower(cmd); end
		
	if (args == nil or args == "") then
		args = msg;
	end
	local postedText;
	for itemLink in string.gmatch(args, "|c%x+|Hitem:[-%d:]+|h%[.-%]|h|r") do
		postedText = nil;
		local _, _, itemID  = string.find(itemLink, "item:(%d+)");
		if (itemID == nil or itemID == "") then
			FTUtils.Print("Usage: "..FTUtils.Hilite("/ft info <item link>"));
			return;
		end
		itemID = tonumber(itemID);
		FTUtils.Print(addon..": found...");
		local itemInfo = FT_ItemInfo[itemID];
		if (itemInfo) then
			local myFaction = UnitFactionGroup("player");
			local vendors = FTTable.Merge(FT_VendorInfo[myFaction][itemID], FT_VendorInfo["Neutral"][itemID]);
			
			local note = itemInfo.note;
			local intro = itemLink..": "..string.format(FT.SOLD_BY, FTUtils.GSC(itemInfo.b));

			if (vendors == nil or vendors == {}) then
				FTUtils.Print(FTUtils.Red(addon.." "..version.." error: ")..itemLink.."("..itemID..") is listed but has no vendors. Please report this at the website you downloaded from.");
				return;
			end
			FTUtils.Print(intro);
			for i, aVendor in pairs(vendors) do
				local vendorName = FT[aVendor] or aVendor;
				local vendorNPC = FT_GetVendorCoordinates(myFaction,aVendor)
				FTUtils.Print(string.format(FT.VENDOR_LOCATION_FORMAT, vendorName, vendorNPC));
			end
			if (note and note ~= "") then
				FTUtils.Print(FTUtils.Hilite(note));
			end
			postedText = 1;
		end
		
		if (not postedText) then
			FTUtils.Print("Nothing known about "..itemLink..".");
		end
		return;
	end
	if (postedText) then
		return;
	end
	-- if we made it down here, there were args we didn't understand... time to remind the user what to do.
	FT_ChatCommandHandler("help");

end;

function FT_DisabledChatCommandHandler(msg)
	if ( msg ) then
		FTUtils.Print(FTUtils.Gray(addon.." "..version.." Commands are disabled. (Sorry!)"));
	end;
end;

function FT_CheckMerchant(itemID)
	for merchantIndex = 1, GetMerchantNumItems() do
		local link = GetMerchantItemLink(merchantIndex);
		local _, _, merchantItemID  = string.find(link, "item:(%d+)");
		if (tonumber(merchantItemID) == itemID) then
			return true;
		end
	end
	return false;
end

function FT_ScanMerchant()
	for index = 1, GetMerchantNumItems() do
		local link = GetMerchantItemLink(index);
		if ( link ) then
			local itemName, _, _, _, _, itemType, subType, _, _, _, _, _, _, _, _, _, _ = GetItemInfo(link);
			if (not FT_ItemIsBoP(index)) and (not FT_ItemBlacklist(link)) and ((itemType == FT.RECIPE) or (itemType == FT.MISCELLANEOUS and ((subType == FT.PET) or (subType == FT.MOUNT))) or (itemType == FT.CONTAINER and subType == FT.BAG)) then
				local itemID = FTUtils.DecomposeItemLink(link);
--				print("itemID="..tostring(itemID));
--				if (FT_ItemInfo[itemID]) then
--					print(FTUtils.Red("** GET OWD'A HERE! **"));
--					return;
--				end;
				local added;
				local _, _, price, _, _, _, _, extendedCost = GetMerchantItemInfo(index);
				local priceSummmary;
				if (price and price > 0) then
				 	priceSummmary = FTUtils.GSC(price);
				else
					priceSummmary = "";
				end;
				local itemSummary = "";
				if (price == 0 and extendedCost) then
					itemCount = GetMerchantItemCostInfo(index);
					if (itemCount and itemCount > 0) then
						for costIndex = 1, itemCount, 1 do
							local itemTexture, itemValue, itemLink, itemName = GetMerchantItemCostItem(index, costIndex);
							if (not itemName) then
								itemName, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _ = GetItemInfo(itemLink);
								if (not itemName) then
									itemName = "Unknown Item";
								end;
							end;
							itemSummary = itemSummary .. string.format(" + %d %s", itemValue, itemName);
						end;
					end;
					priceSummmary = priceSummmary .. itemSummary;
					itemSummary = string.gsub(itemSummary, "^ %+ ", "");
					priceSummmary = string.gsub(priceSummmary, "^ %+ ", "");
					priceSummmary = string.gsub(priceSummmary, " %+ $", "");
					if (itemSummary == "") then
						itemSummary = nil;
					end;
				end;
				
				local vendorName = UnitName("npc");
				local vendorFaction = UnitFactionGroup("npc");
				if (vendorFaction ~= UnitFactionGroup("player")) then
					vendorFaction = "Neutral";
				end
				local vendorZone = GetRealZoneText() or _G.UNKNOWN;
				
				if (not FT_ItemInfo[itemID]) and (not FT_NewItemInfo[itemID]) then
					FT_NewItemInfo[itemID] = FT_NewItemInfo[itemID] or {};
					FT_NewItemInfo[itemID][vendorFaction] = FT_NewItemInfo[itemID][vendorFaction] or {};
					FT_NewItemInfo[itemID][vendorFaction] = { vendor=vendorName, cost=price, item=itemName, location=vendorZone, note=itemSummary };
					added = true;
				end;
				
				if (added) then
					FTUtils.PrintOnce(string.format(addon.." %s has detected new data!  Please report the following message:  %s [%s] sold for %s by %s (%s) in %s.", version, link, FTUtils.LightYellow(itemID), FTUtils.Hilite(priceSummmary), FTUtils.Hilite(vendorName), vendorFaction, FTUtils.Hilite(vendorZone)));
				end;
				
			end;
		end;
	end;
end;

-- Attempt #2 at a BoP check, seems to work better =P
-- Version 4.2b adds a BoA check as well.
function FT_ItemIsBoP(index)
	FT_BoPCheckingTooltip:ClearLines();
	FT_BoPCheckingTooltip:SetMerchantItem(index);
	for lineNum=1, FT_BoPCheckingTooltip:NumLines() do
		if lineNum > 4 then
			return false;
		end;
		local leftText = _G["FT_BoPCheckingTooltipTextLeft"..lineNum]:GetText();
		if string.find(leftText, ITEM_BIND_ON_PICKUP) then
			return true;
--		elseif string.find(leftText, ITEM_BIND_TO_BNETACCOUNT) then
--			return true;
--		elseif string.find(leftText, ITEM_BIND_TO_ACCOUNT) then
--			return true;
		end;
	end;
end;

-- A list of items that we don't want to detect.
function FT_ItemBlacklist(link)
	local result = false;
	local FT_Blacklist = {
--	[4496] = true,		-- Small Brown Pouch, sold everywhere.
--	[4497] = true,		-- Heavy Brown Bag, sold everywhere.
--	[4498] = true,		-- Brown Leather Satchel, sold everywhere.
--	[4499] = true,		-- Huge Brown Sack, sold everywhere.
--	[17200] = true,		-- Recipe: Gingerbread Cookie.  Blacklisted because otherwise it would list neutral vendors available in enemy faction cities which serves no purpose (even if you CAN buy them there.)
--	[17201] = true,		-- Recipe: Egg Nog.  Blacklisted because otherwise it would list neutral vendors available in enemy faction cities which serves no purpose (even if you CAN buy them there.)
	[22200] = true,		-- Silver Shafted Arrow.  Blacklisted because it is not a pet but is detected as one.
	[20758] = true,		-- Formula: Minor Wizard Oil
	[20753] = true,		-- Formula: Lesser Wizard Oil
	[20752] = true,		-- Formula: Minor Mana Oil
	[7091] = true,		-- Pattern: Truefaith Gloves. To many mob drops.
	
	-- Created Cloth Armor -->
	[22758] = true,		-- Sylvan Shoulders
	[22757] = true,		-- Sylvan Crown
	[22756] = true,		-- Sylvan Vest
	[22655] = true,		-- Glacial Wrists
	[22654] = true,		-- Glacial Gloves
	[22652] = true,		-- Glacial Vest
	[20539] = true,		-- Runed Stygian Belt
	[20538] = true,		-- Runed Stygian Leggings
	[20537] = true,		-- Runed Stygian Boots
	[19999] = true,		-- Bloodvine Goggles
	[19684] = true,		-- Bloodvine Boots
	[19683] = true,		-- Bloodvine Leggings
	[19682] = true,		-- Bloodvine Vest
	[19165] = true,		-- Flarecore Leggings
	[19156] = true,		-- Flarecore Robe
	[19059] = true,		-- Argent Shoulders
	[19056] = true,		-- Argent Boots
	[19050] = true,		-- Mantle of the Timbermaw
	[19047] = true,		-- Wisdom of the Timbermaw
	[18486] = true,		-- Mooncloth Robe
	[18409] = true,		-- Mooncloth Gloves
	[18408] = true,		-- Inferno Gloves
	[18407] = true,		-- Felcloth Gloves
	[18405] = true,		-- Belt of the Archmage
	[18263] = true,		-- Flarecore Wraps
	[16980] = true,		-- Flarecore Mantle
	[16979] = true,		-- Flarecore Gloves
	[16008] = true,		-- Master Engineer's Goggles
	[15999] = true,		-- Spellpower Goggles Xtreme Plus
	[15802] = true,		-- Mooncloth Boots
	[14146] = true,		-- Gloves of Spell Mastery
	[14144] = true,		-- Ghostweave Pants
	[14143] = true,		-- Ghostweave Belt
	[14142] = true,		-- Ghostweave Gloves
	[14141] = true,		-- Ghostweave Vest
	[14140] = true,		-- Mooncloth Circlet
	[14139] = true,		-- Mooncloth Shoulders
	[14138] = true,		-- Mooncloth Vest
	[14137] = true,		-- Mooncloth Leggings
	[14136] = true,		-- Robe of Winter Night
	[14132] = true,		-- Wizardweave Leggings
	[14130] = true,		-- Wizardweave Turban
	[14128] = true,		-- Wizardweave Robe
	[14112] = true,		-- Felcloth Shoulders
	[14111] = true,		-- Felcloth Hood
	[14108] = true,		-- Felcloth Boots
	[14107] = true,		-- Felcloth Pants
	[14106] = true,		-- Felcloth Robe
	[14104] = true,		-- Brightcloth Pants
	[14101] = true,		-- Brightcloth Gloves
	[14100] = true,		-- Brightcloth Robe
	[14045] = true,		-- Cindercloth Pants
	[14043] = true,		-- Cindercloth Gloves
	[14042] = true,		-- Cindercloth Vest
	[13871] = true,		-- Frostweave Pants
	[13870] = true,		-- Frostweave Gloves
	[13869] = true,		-- Frostweave Tunic
	[13868] = true,		-- Frostweave Robe
	[13867] = true,		-- Runecloth Shoulders
	[13866] = true,		-- Runecloth Headband
	[13865] = true,		-- Runecloth Pants
	[13864] = true,		-- Runecloth Boots
	[13863] = true,		-- Runecloth Gloves
	[13858] = true,		-- Runecloth Robe
	[13857] = true,		-- Runecloth Tunic
	[13856] = true,		-- Runecloth Belt
	[10726] = true,		-- Gnomish Mind Control Cap
	[10724] = true,		-- Gnomish Rocket Boots
	[10588] = true,		-- Goblin Rocket Helmet
	[10506] = true,		-- Deepdive Helmet
	[10504] = true,		-- Green Lens
	[10503] = true,		-- Rose Colored Goggles
	[10502] = true,		-- Spellpower Goggles Xtreme
	[10501] = true,		-- Catseye Ultra Goggles
	[10500] = true,		-- Fire Goggles
	[10499] = true,		-- Bright-Eye Goggles
	[10048] = true,		-- Colorful Kilt
	[10044] = true,		-- Cindercloth Boots
	[10042] = true,		-- Cindercloth Robe
	[10041] = true,		-- Dreamweave Circlet
	[10031] = true,		-- Shadoweave Boots
	[10030] = true,		-- Admiral's Hat
	[10029] = true,		-- Red Mageweave Shoulders
	[10028] = true,		-- Shadoweave Shoulders
	[10027] = true,		-- Black Mageweave Shoulders
	[10026] = true,		-- Black Mageweave Boots
	[10025] = true,		-- Shadoweave Mask
	[10024] = true,		-- Black Mageweave Headband
	[10023] = true,		-- Shadoweave Gloves
	[10021] = true,		-- Dreamweave Vest
	[10019] = true,		-- Dreamweave Gloves
	[10018] = true,		-- Red Mageweave Gloves
	[10009] = true,		-- Red Mageweave Pants
	[10008] = true,		-- White Bandit Mask
	[10007] = true,		-- Red Mageweave Vest
	[10004] = true,		-- Shadoweave Robe
	[10003] = true,		-- Black Mageweave Gloves
	[10002] = true,		-- Shadoweave Pants
	[10001] = true,		-- Black Mageweave Robe
	[9999] = true,		-- Black Mageweave Leggings
	[9998] = true,		-- Black Mageweave Vest
	[7189] = true,		-- Goblin Rocket Boots
	[7065] = true,		-- Green Silk Armor
	[7064] = true,		-- Crimson Silk Gloves
	[7063] = true,		-- Crimson Silk Robe
	[7061] = true,		-- Earthen Silk Belt
	[7060] = true,		-- Azure Shoulders
	[7059] = true,		-- Crimson Silk Shoulders
	[7057] = true,		-- Green Silken Shoulders
	[7055] = true,		-- Crimson Silk Belt
	[7052] = true,		-- Azure Silk Belt
	[7051] = true,		-- Earthen Vest
	[7049] = true,		-- Truefaith Gloves
	[7047] = true,		-- Hands of Darkness
	[7046] = true,		-- Azure Silk Pants
	[6264] = true,		-- Greater Adept's Robe
	[6263] = true,		-- Blue Overalls
	[6242] = true,		-- Blue Linen Robe
	[6241] = true,		-- White Linen Robe
	[6240] = true,		-- Blue Linen Vest
	[6239] = true,		-- Red Linen Vest
	[6238] = true,		-- Brown Linen Robe
	[5770] = true,		-- Robes of Arcana
	[5766] = true,		-- Lesser Wizard's Robe
	[4393] = true,		-- Craftsman's Monocle
	[4385] = true,		-- Green Tinted Goggles
	[4373] = true,		-- Shadow Goggles
	[4368] = true,		-- Flying Tiger Goggles
	[4331] = true,		-- Phoenix Gloves
	[4329] = true,		-- Star Belt
	[4328] = true,		-- Spider Belt
	[4325] = true,		-- Boots of the Enchanter
	[4324] = true,		-- Azure Silk Vest
	[4323] = true,		-- Shadow Hood
	[4322] = true,		-- Enchanter's Cowl
	[4321] = true,		-- Spider Silk Slippers
	[4320] = true,		-- Spidersilk Boots
	[4319] = true,		-- Azure Silk Gloves
	[4318] = true,		-- Gloves of Meditation
	[4317] = true,		-- Phoenix Pants
	[4316] = true,		-- Heavy Woolen Pants
	[4313] = true,		-- Red Woolen Boots
	[4312] = true,		-- Soft-soled Linen Boots
	[4310] = true,		-- Heavy Woolen Gloves
	[4309] = true,		-- Handstitched Linen Britches
	[2585] = true,		-- Gray Woolen Robe
	[2583] = true,		-- Woolen Boots
	[2578] = true,		-- Barbaric Linen Vest
	[2572] = true,		-- Red Linen Robe
	
	-- Created Leather Armor -->
	[22761] = true,		-- Bramblewood Belt (300)
	[22760] = true,		-- Bramblewood Boots (300)
	[22759] = true,		-- Bramblewood Helm (300)
	[22666] = true,		-- Icy Scale Gauntlets (300)
	[22665] = true,		-- Icy Scale Bracers (300)
	[22664] = true,		-- Icy Scale Breastplate (300)
	[22663] = true,		-- Polar Bracers (300)
	[22662] = true,		-- Polar Gloves (300)
	[22661] = true,		-- Polar Tunic (300)
	[21278] = true,		-- Stormshroud Gloves (300)
	[20575] = true,		-- Black Whelp Tunic (100)
	[20481] = true,		-- Spitfire Bracers (300)
	[20480] = true,		-- Spitfire Gauntlets (300)
	[20479] = true,		-- Spitfire Breastplate (300)
	[20478] = true,		-- Sandstalker Breastplate (300)
	[20477] = true,		-- Sandstalker Gauntlets (300)
	[20476] = true,		-- Sandstalker Bracers (300)
	[20380] = true,		-- Dreamscale Breastplate (300)
	[20296] = true,		-- Green Dragonscale Gauntlets (280)
	[20295] = true,		-- Blue Dragonscale Leggings (300)
	[19689] = true,		-- Blood Tiger Shoulders (300)
	[19688] = true,		-- Blood Tiger Breastplate (300)
	[19687] = true,		-- Primal Batskin Bracers (300)
	[19686] = true,		-- Primal Batskin Gloves (300)
	[19685] = true,		-- Primal Batskin Jerkin (300)
	[19163] = true,		-- Molten Belt (300)
	[19162] = true,		-- Corehound Belt (300)
	[19157] = true,		-- Chromatic Gauntlets (300)
	[19149] = true,		-- Lava Belt (300)
	[19058] = true,		-- Golden Mantle of the Dawn (300)
	[19052] = true,		-- Dawn Treaders (290)
	[19049] = true,		-- Timbermaw Brawlers (300)
	[19044] = true,		-- Might of the Timbermaw (290)
	[18948] = true,		-- Barbaric Bracers (155)
	[18508] = true,		-- Swift Flight Bracers (300)
	[18506] = true,		-- Mongoose Boots (300)
	[18504] = true,		-- Girdle of Insight (300)
	[18238] = true,		-- Shadowskin Gloves (200)
	[17721] = true,		-- Gloves of the Greatfather (190)
	[16984] = true,		-- Black Dragonscale Boots (300)
	[16983] = true,		-- Molten Helm (300)
	[16982] = true,		-- Corehound Boots (295)
	[15096] = true,		-- Runic Leather Shoulders (300)
	[15095] = true,		-- Runic Leather Pants (300)
	[15094] = true,		-- Runic Leather Headband (290)
	[15093] = true,		-- Runic Leather Belt (280)
	[15092] = true,		-- Runic Leather Bracers (275)
	[15091] = true,		-- Runic Leather Gauntlets (270)
	[15090] = true,		-- Runic Leather Armor (290)
	[15088] = true,		-- Wicked Leather Belt (300)
	[15087] = true,		-- Wicked Leather Pants (290)
	[15086] = true,		-- Wicked Leather Headband (280)
	[15085] = true,		-- Wicked Leather Armor (300)
	[15084] = true,		-- Wicked Leather Bracers (265)
	[15083] = true,		-- Wicked Leather Gauntlets (260)
	[15082] = true,		-- Heavy Scorpid Belt (280)
	[15081] = true,		-- Heavy Scorpid Shoulders (300)
	[15080] = true,		-- Heavy Scorpid Helm (295)
	[15079] = true,		-- Heavy Scorpid Leggings (285)
	[15078] = true,		-- Heavy Scorpid Gauntlets (275)
	[15077] = true,		-- Heavy Scorpid Bracers (255)
	[15076] = true,		-- Heavy Scorpid Vest (265)
	[15075] = true,		-- Chimeric Vest (290)
	[15074] = true,		-- Chimeric Gloves (265)
	[15073] = true,		-- Chimeric Boots (275)
	[15072] = true,		-- Chimeric Leggings (280)
	[15071] = true,		-- Frostsaber Boots (275)
	[15070] = true,		-- Frostsaber Gloves (295)
	[15069] = true,		-- Frostsaber Leggings (285)
	[15068] = true,		-- Frostsaber Tunic (300)
	[15067] = true,		-- Ironfeather Shoulders (270)
	[15066] = true,		-- Ironfeather Breastplate (290)
	[15065] = true,		-- Warbear Woolies (285)
	[15064] = true,		-- Warbear Harness (275)
	[15063] = true,		-- Devilsaur Gauntlets (290)
	[15062] = true,		-- Devilsaur Leggings (300)
	[15061] = true,		-- Living Shoulders (270)
	[15060] = true,		-- Living Leggings (285)
	[15059] = true,		-- Living Breastplate (300)
	[15058] = true,		-- Stormshroud Shoulders (295)
	[15057] = true,		-- Stormshroud Pants (275)
	[15056] = true,		-- Stormshroud Armor (285)
	[15055] = true,		-- Volcanic Shoulders (300)
	[15054] = true,		-- Volcanic Leggings (270)
	[15053] = true,		-- Volcanic Breastplate (285)
	[15052] = true,		-- Black Dragonscale Leggings (300)
	[15051] = true,		-- Black Dragonscale Shoulders (300)
	[15050] = true,		-- Black Dragonscale Breastplate (290)
	[15049] = true,		-- Blue Dragonscale Shoulders (295)
	[15048] = true,		-- Blue Dragonscale Breastplate (285)
	[15047] = true,		-- Red Dragonscale Breastplate (300)
	[15046] = true,		-- Green Dragonscale Leggings (270)
	[15045] = true,		-- Green Dragonscale Breastplate (260)
	[8367] = true,		-- Dragonscale Breastplate (255)
	[8349] = true,		-- Feathered Breastplate (250)
	[8348] = true,		-- Helm of Fire (250)
	[8347] = true,		-- Dragonscale Gauntlets (225)
	[8346] = true,		-- Gauntlets of the Sea (230)
	[8345] = true,		-- Wolfshead Helm (225)
	[8214] = true,		-- Wild Leather Helmet (225)
	[8213] = true,		-- Wild Leather Boots (245)
	[8212] = true,		-- Wild Leather Leggings (250)
	[8211] = true,		-- Wild Leather Vest (225)
	[8210] = true,		-- Wild Leather Shoulders (220)
	[8209] = true,		-- Tough Scorpid Boots (235)
	[8208] = true,		-- Tough Scorpid Helm (250)
	[8207] = true,		-- Tough Scorpid Shoulders (240)
	[8206] = true,		-- Tough Scorpid Leggings (245)
	[8205] = true,		-- Tough Scorpid Bracers (220)
	[8204] = true,		-- Tough Scorpid Gloves (225)
	[8203] = true,		-- Tough Scorpid Breastplate (220)
	[8202] = true,		-- Big Voodoo Pants (240)
	[8201] = true,		-- Big Voodoo Mask (220)
	[8200] = true,		-- Big Voodoo Robe (215)
	[8198] = true,		-- Turtle Scale Bracers (210)
	[8197] = true,		-- Nightscape Boots (235)
	[8193] = true,		-- Nightscape Pants (230)
	[8192] = true,		-- Nightscape Shoulders (210)
	[8191] = true,		-- Turtle Scale Helm (230)
	[8189] = true,		-- Turtle Scale Breastplate (210)
	[8187] = true,		-- Turtle Scale Gloves (205)
	[8185] = true,		-- Turtle Scale Leggings (235)
	[8176] = true,		-- Nightscape Headband (205)
	[8175] = true,		-- Nightscape Tunic (205)
	[8174] = true,		-- Comfortable Leather Hat (200)
	[7391] = true,		-- Swift Boots (200)
	[7390] = true,		-- Dusky Boots (200)
	[7387] = true,		-- Dusky Belt (195)
	[7386] = true,		-- Green Whelp Bracers (190)
	[7378] = true,		-- Dusky Bracers (185)
	[7375] = true,		-- Green Whelp Armor (175)
	[7374] = true,		-- Dusky Leather Armor (175)
	[7373] = true,		-- Dusky Leather Leggings (165)
	[7359] = true,		-- Heavy Earthen Gloves (145)
	[7358] = true,		-- Pilferer's Gloves (140)
	[7352] = true,		-- Earthen Leather Shoulders (135)
	[7349] = true,		-- Herbalist's Gloves (135)
	[7348] = true,		-- Fletcher's Gloves (125)
	[7285] = true,		-- Nimble Leather Gloves (120)
	[7284] = true,		-- Red Whelp Gloves (120)
	[7282] = true,		-- Light Leather Pants (95)
	[7280] = true,		-- Rugged Leather Pants (35)
	[6709] = true,		-- Moonglow Vest (90)
	[6468] = true,		-- Deviate Scale Belt (115)
	[6467] = true,		-- Deviate Scale Gloves (105)
	[5964] = true,		-- Barbaric Shoulders (175)
	[5963] = true,		-- Barbaric Leggings (170)
	[5962] = true,		-- Guardian Pants (160)
	[5961] = true,		-- Dark Leather Pants (115)
	[5958] = true,		-- Fine Leather Pants (105)
	[5783] = true,		-- Murloc Scale Bracers (190)
	[5782] = true,		-- Thick Murloc Armor (170)
	[5781] = true,		-- Murloc Scale Breastplate (95)
	[5780] = true,		-- Murloc Scale Belt (90)
	[4456] = true,		-- Raptor Hide Belt (165)
	[4455] = true,		-- Raptor Hide Harness (165)
	[4345] = true,		-- Wolfshead Helm (225)
	[4262] = true,		-- Gem-studded Leather Belt (185)
	[4260] = true,		-- Guardian Leather Bracers (195)
	[4259] = true,		-- Green Leather Bracers (180)
	[4257] = true,		-- Green Leather Belt (160)
	[4258] = true,		-- Guardian Belt (170)
	[4256] = true,		-- Guardian Armor (175)
	[4255] = true,		-- Green Leather Armor (155)
	[4254] = true,		-- Barbaric Gloves (150)
	[4253] = true,		-- Toughened Leather Gloves (135)
	[4252] = true,		-- Dark Leather Shoulders (140)
	[4251] = true,		-- Hillman's Shoulders (130)
	[4250] = true,		-- Hillman's Belt (120)
	[4249] = true,		-- Dark Leather Belt (125)
	[4248] = true,		-- Dark Leather Gloves (120)
	[4247] = true,		-- Hillman's Leather Gloves (145)
	[4244] = true,		-- Hillman's Leather Vest (100)
	[4243] = true,		-- Fine Leather Tunic (85)
	[4242] = true,		-- Embossed Leather Pants (75)
	[2317] = true,		-- Dark Leather Tunic (100)
	[2312] = true,		-- Fine Leather Gloves (75)
	[2309] = true,		-- Embossed Leather Boots (55)
	[2300] = true,		-- Embossed Leather Vest (40)
	
	-- Created Engineering Armor -->
	[19998] = true,		-- Bloodvine Lens (300)
	[10721] = true,		-- Gnomish Harm Prevention Belt (Gnomish Engineer 215)
	
	-- Created Blacksmithing Armor -->
	[22764] = true,		-- Ironvine Belt (320)
	[22763] = true,		-- Ironvine Gloves (320)
	[22762] = true,		-- Ironvine Breastplate (320)
	[22671] = true,		-- Icebane Bracers (320)
	[22670] = true,		-- Icebane Gauntlets (320)
	[22669] = true,		-- Icebane Breastplate (320)
	[22385] = true,		-- Titanic Leggings (320)
	[22197] = true,		-- Heavy Obsidian Belt (320)
	[22196] = true,		-- Thick Obsidian Breastplate (320)
	[22195] = true,		-- Light Obsidian Belt (320)
	[22194] = true,		-- Black Grasp of the Destroyer (320)
	[22191] = true,		-- Obsidian Mail Tunic (320)
	[20551] = true,		-- Darkrune Helm (320)
	[20550] = true,		-- Darkrune Breastplate (320)
	[20549] = true,		-- Darkrune Gauntlets (320)
	[20039] = true,		-- Dark Iron Boots (320)
	[19695] = true,		-- Darksoul Shoulders (320)
	[19694] = true,		-- Darksoul Leggings (320)
	[19693] = true,		-- Darksoul Breastplate (320)
	[19692] = true,		-- Bloodsoul Gauntlets (320)
	[19691] = true,		-- Bloodsoul Shoulders (320)
	[19690] = true,		-- Bloodsoul Breastplate (320)
	[19164] = true,		-- Dark Iron Gauntlets (320)
	[19148] = true,		-- Dark Iron Helm (320)
	[19057] = true,		-- Gloves of the Dawn (320)
	[19051] = true,		-- Girdle of the Dawn (310)
	[19048] = true,		-- Heavy Timbermaw Boots (320)
	[19043] = true,		-- Heavy Timbermaw Belt (310)
	[17014] = true,		-- Dark Iron Bracers (315)
	[17013] = true,		-- Dark Iron Leggings (320)
	[16989] = true,		-- Fiery Chain Girdle (315)
	[16988] = true,		-- Fiery Chain Shoulders (320)
	[12641] = true,		-- Invulnerable Mail (320)
	[12640] = true,		-- Lionheart Helm (320)
	[12639] = true,		-- Stronghold Gauntlets (320)
	[12636] = true,		-- Helm of the Great Chief (320)
	[12633] = true,		-- Whitesoul Helm (320)
	[12632] = true,		-- Storm Gauntlets (315)
	[12631] = true,		-- Fiery Plate Gauntlets (310)
	[12628] = true,		-- Demon Forged Breastplate (305)
	[12625] = true,		-- Dawnbringer Shoulders (310)
	[12624] = true,		-- Wildthorn Mail (290)
	[12620] = true,		-- Enchanted Thorium Helm (320)
	[12619] = true,		-- Enchanted Thorium Leggings (320)
	[12618] = true,		-- Enchanted Thorium Breastplate (320)
	[12614] = true,		-- Runic Plate Leggings (320)
	[12613] = true,		-- Runic Plate Breastplate (320)
	[12612] = true,		-- Runic Plate Helm (320)
	[12611] = true,		-- Runic Plate Boots (320)
	[12610] = true,		-- Runic Plate Shoulders (320)
	[12429] = true,		-- Imperial Plate Leggings (320)
	[12428] = true,		-- Imperial Plate Shoulders (285)
	[12427] = true,		-- Imperial Plate Helm (315)
	[12426] = true,		-- Imperial Plate Boots (315)
	[12425] = true,		-- Imperial Plate Bracers (290)
	[12424] = true,		-- Imperial Plate Belt (285)
	[12422] = true,		-- Imperial Plate Chest (320)
	[12420] = true,		-- Radiant Leggings (320)
	[12419] = true,		-- Radiant Boots (310)
	[12418] = true,		-- Radiant Gloves (305)
	[12417] = true,		-- Radiant Circlet (315)
	[12416] = true,		-- Radiant Belt (280)
	[12415] = true,		-- Radiant Breastplate (290)
	[12414] = true,		-- Thorium Leggings (320)
	[12410] = true,		-- Thorium Helm (300)
	[12409] = true,		-- Thorium Boots (300)
	[12408] = true,		-- Thorium Bracers (275)
	[12406] = true,		-- Thorium Belt (270)
	[12405] = true,		-- Thorium Armor (270)
	[11606] = true,		-- Dark Iron Mail (290)
	[11605] = true,		-- Dark Iron Shoulders (300)
	[10423] = true,		-- Silvered Bronze Leggings (180)
	[9366] = true,		-- Golden Scale Gauntlets (225)
	[7963] = true,		-- Steel Breastplate (200)
	[7939] = true,		-- Truesilver Breastplate (265)
	[7938] = true,		-- Truesilver Gauntlets (245)
	[7937] = true,		-- Ornate Mithril Helm (265)
	[7936] = true,		-- Ornate Mithril Boots (265)
	[7935] = true,		-- Ornate Mithril Breastplate (260)
	[7934] = true,		-- Heavy Mithril Helm (255)
	[7933] = true,		-- Mithril Scale Boots (235)
	[7932] = true,		-- Mithril Scale Shoulders (255)
	[7931] = true,		-- Mithril Coif (230)
	[7930] = true,		-- Heavy Mithril Breastplate (230)
	[7929] = true,		-- Orcish War Leggings (250)
	[7928] = true,		-- Ornate Mithril Shoulder (245)
	[7927] = true,		-- Ornate Mithril Gloves (240)
	[7926] = true,		-- Ornate Mithril Pants (220)
	[7924] = true,		-- Mithril Scale Bracers (235)
	[7921] = true,		-- Heavy Mithril Pants (230)
	[7920] = true,		-- Mithril Scale Pants (210)
	[7919] = true,		-- Heavy Mithril Gauntlets (205)
	[7918] = true,		-- Heavy Mithril Shoulder (205)
	[7917] = true,		-- Barbaric Iron Gloves (210)
	[7916] = true,		-- Barbaric Iron Boots (205)
	[7915] = true,		-- Barbaric Iron Helm (200)
	[7913] = true,		-- Barbaric Iron Shoulders (185)
	[6731] = true,		-- Ironforge Breastplate (140)
	[3847] = true,		-- Golden Scale Boots (225)
	[3846] = true,		-- Polished Steel Boots (210)
	[3845] = true,		-- Golden Scale Cuirass (220)
	[3844] = true,		-- Green Iron Hauberk (180)
	[3842] = true,		-- Green Iron Leggings (155)
	[3840] = true,		-- Green Iron Shoulders (185)
	[3837] = true,		-- Golden Scale Coif (215)
	[3836] = true,		-- Green Iron Helm (170)
	[3843] = true,		-- Golden Scale Leggings (195)
	[3485] = true,		-- Green Iron Gauntlets (180)
	[3484] = true,		-- Green Iron Boots (175)
	[3483] = true,		-- Silvered Bronze Gauntlets (135)
	[3482] = true,		-- Silvered Bronze Boots (130)
	[3481] = true,		-- Silvered Bronze Shoulders (155)
	[3474] = true,		-- Gemmed Copper Gauntlets (60)
	[3473] = true,		-- Runed Copper Pants (45)
	[3471] = true,		-- Copper Chain Vest (35)
	[2870] = true,		-- Shining Silver Breastplate (145)
	[2869] = true,		-- Silvered Bronze Breastplate (160)
	[2868] = true,		-- Patterned Bronze Bracers (120)
	[2865] = true,		-- Runed Copper Leggings (105)
	[2864] = true,		-- Runed Copper Breastplate (90)
	};
	
	local itemID = FTUtils.DecomposeItemLink(link);
	if (FT_Blacklist[itemID]) then
		result = true;
	end;
	return result;
end;
