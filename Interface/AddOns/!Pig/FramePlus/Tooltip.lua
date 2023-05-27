local _, addonTable = ...;
local _, _, _, tocversion = GetBuildInfo()
---------
local banbendata = {
	[0]=EXPANSION_NAME0,[1]=EXPANSION_NAME1,[2]=EXPANSION_NAME2,[3]=EXPANSION_NAME3,[4]=EXPANSION_NAME4,
	[5]=EXPANSION_NAME5,[6]=EXPANSION_NAME6,[7]=EXPANSION_NAME7,[8]=EXPANSION_NAME8,[8]=EXPANSION_NAME8,
	[9]=EXPANSION_NAME9,[10]=EXPANSION_NAME10,[11]=EXPANSION_NAME11,
}
if tocversion<100000 then
	GameTooltip:HookScript("OnTooltipSetItem", function(self)
		if not PIG["Tooltip"]["ItemLevel"] then return end
		local _, link = self:GetItem()
		if link then
			local itemID = GetItemInfoInstant(link)
			if itemID then
				if tocversion>39999 then
			    	local expacID = select(15, GetItemInfo(link))
			    	if expacID then
			    		self:AddDoubleLine("物品ID:"..itemID,banbendata[expacID])
			    	end
				else
					local effectiveILvl = GetDetailedItemLevelInfo(link)
					if effectiveILvl then
						self:AddDoubleLine("物品ID:"..itemID,"物品LV:"..effectiveILvl)
					end
				end	
				self:Show()
			end
		end
	end)
	--处理聊天框技能
	GameTooltip:HookScript("OnTooltipSetSpell", function(self)
		if not PIG["Tooltip"]["SpellID"] then return end
		local _,spellId = self:GetSpell()
		if spellId then
			self:AddDoubleLine("SpellID:",spellId)
			self:Show()
		end
	end)
else------
	TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Item, function(tooltip, data)
		if not PIG["Tooltip"]["ItemLevel"] then return end
		if tooltip == GameTooltip then
			local ItemID = data["id"]
			if ItemID then	
		    	local expacID = select(15, GetItemInfo(ItemID))
		    	if expacID then
		    		tooltip:AddDoubleLine("物品ID:"..ItemID,banbendata[expacID])
		    	end
			end
		end
	end)
	--处理聊天框技能
	TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Spell, function(self)
		if not PIG["Tooltip"]["SpellID"] then return end
		local _,spellId = self:GetSpell()
		if spellId then
			self:AddDoubleLine("SpellID:",spellId)
			self:Show()
		end
	end)
end
hooksecurefunc(GameTooltip, "SetBagItem", function(self, bag, slot)
	if tocversion<20000 then
		if not PIG["Tooltip"]["ItemSell"] then return end
		if not MerchantFrame:IsVisible() then
			local _, link = self:GetItem()
			if link then
				local itemSellG = select(11, GetItemInfo(link))
				if itemSellG and itemSellG > 0 then
					local _, count = GetContainerItemInfo(bag, slot)
					local count=count or 1
					self:AddDoubleLine("卖店价:"..GetMoneyString(itemSellG*count),"")
					self:Show()
				end
			end
		end
	end
end)
hooksecurefunc(GameTooltip, "SetQuestItem", function(self, questType, index)
	if not PIG["Tooltip"]["ItemSell"] then return end
	local _, link = self:GetItem()
	if link then
		local itemSellG = select(11, GetItemInfo(link))
		if itemSellG and itemSellG > 0 then
			local _, _, count = GetQuestItemInfo(questType, index)
			local count = count or 1
			self:AddDoubleLine("卖店价:"..GetMoneyString(itemSellG*count),"")
			self:Show()
		end
	end
end)
hooksecurefunc(GameTooltip, "SetQuestLogItem", function(self,  questType, index)
	if not PIG["Tooltip"]["ItemSell"] then return end
	local _, link = self:GetItem()
	if link then
		local itemSellG = select(11, GetItemInfo(link))
		if itemSellG and itemSellG > 0 then
			local _, _, count = GetQuestLogRewardInfo(index)
			local count = count or 1
			self:AddDoubleLine("卖店价:"..GetMoneyString(itemSellG*count),"")
			self:Show()
		end
	end
end)
-- hooksecurefunc(GameTooltip, "SetUnitBuff", function(self, unit, index, filter)
-- 	if not PIG["Tooltip"]["SpellID"] then return end
-- 	local _, icon, count, debuffType, duration, expires, caster,_,_,spellId = UnitBuff(unit, index, filter) 
--     if spellId then
--     	if caster then
-- 	        local _, class = UnitClass(caster) 
-- 	        local rPerc, gPerc, bPerc, argbHex = GetClassColor(class);
-- 	        local name = GetUnitName(caster, true)
-- 	        self:AddDoubleLine("来自:[\124c"..argbHex..name.."\124r]","SpellID:\124c"..argbHex..spellId.."\124r")
-- 	        self:Show() 
-- 		else
-- 			self:AddDoubleLine("来自:[\124cff48cba0未知\124r]","SpellID:\124cff48cba0"..spellId.."\124r")
-- 	        self:Show() 
-- 		end
--     end
-- end)
-- hooksecurefunc(GameTooltip, "SetUnitDebuff", function(self, unit, index, filter)
-- 	if not PIG["Tooltip"]["SpellID"] then return end
-- 	local _, icon, count, debuffType, duration, expires, caster,_,_,spellId = UnitDebuff(unit, index, filter) 
--     if spellId then
--     	if caster then
-- 	        local _, class = UnitClass(caster) 
-- 	        local rPerc, gPerc, bPerc, argbHex = GetClassColor(class);
-- 	        local name = GetUnitName(caster, true)
-- 	        self:AddDoubleLine("来自:[\124c"..argbHex..name.."\124r]","SpellID:\124c"..argbHex..spellId.."\124r")
-- 	        self:Show() 
-- 		else
-- 			self:AddDoubleLine("来自:[\124cff48cba0未知\124r]","SpellID:\124cff48cba0"..spellId.."\124r")
-- 	        self:Show() 
-- 		end
--     end
-- end)
hooksecurefunc(GameTooltip, "SetUnitAura", function(self, unit, index, filter)
	if not PIG["Tooltip"]["SpellID"] then return end
	local _, icon, count, debuffType, duration, expires, caster,_,_,spellId = UnitAura(unit, index, filter) 
    if spellId then
    	if caster then
	        local _, class = UnitClass(caster) 
	        local rPerc, gPerc, bPerc, argbHex = GetClassColor(class);
	        local name = GetUnitName(caster, true)
	        self:AddDoubleLine("来自:[\124c"..argbHex..name.."\124r]","SpellID:\124c"..argbHex..spellId.."\124r")
	        self:Show() 
		else
			self:AddDoubleLine("来自:[\124cff48cba0未知\124r]","SpellID:\124cff48cba0"..spellId.."\124r")
	        self:Show() 
		end
    end 
end)
--处理聊天框物品
hooksecurefunc("SetItemRef", function(link, text, button, chatFrame)
	if not PIG["Tooltip"]["SpellID"] then return end
	if link:find("^spell:") then
		local id = link:gsub(":0","")
		local id = id:gsub("spell:","")
		ItemRefTooltip:AddDoubleLine("SpellID:",id)
		ItemRefTooltip:Show()
	end
end)