local addonName, addonTable = ...;
local find = _G.string.find
local Create=addonTable.Create
local PIGFrame=Create.PIGFrame
local PIGButton=Create.PIGButton
local PIGDownMenu=Create.PIGDownMenu
local PIGFontString=Create.PIGFontString
local CharacterFrame=Create.CharacterFrame
local BagBankFrame=Create.BagBankFrame
-- --==========================================
local BagBankfun=addonTable.BagBankfun
local yinhangmorengezishu={28,7}
----==============
local InvSlot=addonTable.Data.InvSlot
local bagID = {0,1,2,3,4,5}
bagID.meihang=10
bagID.suofang=1
bagID.lixianNum=164
local bankID = {-1,6,7,8,9,10,11,12}
bankID.meihang=18
bankID.suofang=1
bankID.lixianNum=yinhangmorengezishu[1]+yinhangmorengezishu[2]*36
local zhengliIcon="interface/containerframe/bags.blp"	
local BagdangeW=ContainerFrame1Item1:GetWidth()+5
local PIG_renwuming
---------------------
local qishihang=math.ceil(yinhangmorengezishu[1]/bankID.meihang)--行数
local qishikongyu=qishihang*bankID.meihang-yinhangmorengezishu[1]--空余
local function shuaxinBANKweizhi(frame, size, id)
	frame.TitleContainer:Hide();
	frame.PortraitContainer:Hide();
	frame.Bg:Hide();
	frame.CloseButton:Hide();
	frame.PortraitButton:Hide();
	frame:SetHeight(0);
	frame:SetToplevel(false)
	frame:SetParent(BankSlotsFrame);
	local name = frame:GetName();
	local function jisuanzongshu(id)
		if id==bankID[2] then
			return yinhangmorengezishu[1]
		else
			yinhangmorengezishu.zongshu=yinhangmorengezishu[1]
			local qianzhibag = id-bankID[2]
			for i=1,qianzhibag do
				local shangnum = C_Container.GetContainerNumSlots(i+bankID[2]-1)
				yinhangmorengezishu.zongshu=yinhangmorengezishu.zongshu+shangnum
			end
			return yinhangmorengezishu.zongshu
		end
	end
	local function jisuankonmgyu(id,zongshu)
		if id==bankID[2] then
			return qishihang,qishikongyu
		else
			local hangShu=math.ceil(zongshu/bankID.meihang)
			local kongyu=hangShu*bankID.meihang-zongshu
			return hangShu,kongyu
		end
	end

	local shang_allshu=jisuanzongshu(id)
	local shang_hang,shang_yushu=jisuankonmgyu(id,shang_allshu)
	local NEWsize=size-shang_yushu
	local hangShu=math.ceil(NEWsize/bankID.meihang)
	local new_kongyu,new_hangshu=hangShu*bankID.meihang-NEWsize,hangShu+shang_hang
	for slot=1,size do
		local itemF = _G[name.."Item"..slot]
		itemF:ClearAllPoints();
		if slot==1 then
			itemF:SetPoint("TOPRIGHT", BankSlotsFrame, "TOPRIGHT", -new_kongyu*BagdangeW-54.6, -new_hangshu*BagdangeW-18);
			frame.PortraitButton:ClearAllPoints();
			frame.PortraitButton:SetPoint("TOPRIGHT", BankSlotsFrame, "TOPRIGHT", -8, -(42*(id-bankID[2]+1))-8);
			frame.FilterIcon:ClearAllPoints();
			frame.FilterIcon:SetPoint("BOTTOMRIGHT", frame.PortraitButton, "BOTTOMRIGHT", 8, -4);
			if not frame.PortraitButton:IsShown() then frame.FilterIcon:Hide() end
		else
			local yushu=math.fmod((slot+new_kongyu-1),bankID.meihang)
			local itemFshang = _G[name.."Item"..(slot-1)]
			if yushu==0 then
				itemF:SetPoint("BOTTOMLEFT", itemFshang, "TOPLEFT", (bankID.meihang-1)*BagdangeW, 5);
			else
				itemF:SetPoint("RIGHT", itemFshang, "LEFT", -5, 0);
			end
		end
	end
	local ZONGGEZI=C_Container.GetContainerNumSlots(5)+C_Container.GetContainerNumSlots(6)+C_Container.GetContainerNumSlots(7)+C_Container.GetContainerNumSlots(8)+C_Container.GetContainerNumSlots(9)+C_Container.GetContainerNumSlots(10)+C_Container.GetContainerNumSlots(11)+yinhangmorengezishu[1]
	local hangShuALL=math.ceil(ZONGGEZI/bankID.meihang)
	if hangShuALL>7 then
		BankFrame:SetHeight(hangShuALL*BagdangeW+94);
	end
end
-------------------
local function zhegnheBANK_Open()
	BankItemSearchBox:SetPoint("TOPRIGHT",BankFrame,"TOPRIGHT",-100,-33);
	BankFramePurchaseButton:SetWidth(90)
	BankFramePurchaseButton:ClearAllPoints();
	BankFramePurchaseButton:SetPoint("TOPLEFT", BankFrame, "TOPLEFT", 280, -28);
	BankFramePurchaseButtonText:SetPoint("RIGHT", BankFramePurchaseButton, "RIGHT", -8, 0);
	BankFrameDetailMoneyFrame:ClearAllPoints();
	BankFrameDetailMoneyFrame:SetPoint("RIGHT", BankFramePurchaseButtonText, "LEFT", 6, -1);
	local BKregions1 = {BankFramePurchaseInfo:GetRegions()}
	for i=1,#BKregions1 do
		BKregions1[i]:Hide()
	end
	local BankSlotsFrameReg = {BankSlotsFrame:GetRegions()}
	for i=1,#BankSlotsFrameReg do
		BankSlotsFrameReg[i]:SetAlpha(0)
	end
	for i=1,yinhangmorengezishu[2] do
		BankSlotsFrame["Bag"..i]:SetScale(0.76);
		if i==1 then
			BankSlotsFrame["Bag"..i]:SetPoint("TOPLEFT", BankFrameItem1, "BOTTOMLEFT", 70, 92);
		else
			BankSlotsFrame["Bag"..i]:SetPoint("TOPLEFT", BankSlotsFrame["Bag"..(i-1)], "TOPRIGHT", 0, 0);
		end
	end
	for i = 1, yinhangmorengezishu[1] do
		_G["BankFrameItem"..i]:ClearAllPoints();
		if i==1 then
			_G["BankFrameItem"..i]:SetPoint("TOPLEFT", BankSlotsFrame, "TOPLEFT", 16, -60);
		else
			local yushu=math.fmod(i-1,bankID.meihang)
			if yushu==0 then
				_G["BankFrameItem"..i]:SetPoint("TOPLEFT", _G["BankFrameItem"..(i-bankID.meihang)], "BOTTOMLEFT", 0, -5);
			else
				_G["BankFrameItem"..i]:SetPoint("LEFT", _G["BankFrameItem"..(i-1)], "RIGHT", 5, 0);
			end
		end
	end
	BankFrame:SetWidth(BagdangeW*bankID.meihang+66)
end
----保存离线数据-----
local function SAVE_ItemInfo(bagID, slot,wupinshujuinfo)
	local ItemInfo= C_Container.GetContainerItemInfo(bagID, slot)
	if ItemInfo then
		local itemStackCount,itemEquipLoc,itemTexture,sellPrice,classID = select(8,GetItemInfo(ItemInfo.hyperlink))
		local wupinxinxi={ItemInfo.itemID,ItemInfo.hyperlink,ItemInfo.stackCount,itemStackCount,false}
		if classID==2 or classID==4 then
			wupinxinxi[5]=true
		end
		table.insert(wupinshujuinfo, wupinxinxi);
	end
end
local function SAVE_C()
	if InCombatLockdown() then return end
	local wupinshujuinfo = {}
	for inv = 1, 19 do
		local wupinxinxi={nil,nil,1}--1物品ID/2itemLink/3数量
		local itemID=GetInventoryItemID("player", inv)
		if itemID then
			wupinxinxi[1]=itemID
			local itemLink = GetInventoryItemLink("player", inv)
			wupinxinxi[2] = itemLink
		end	
		table.insert(wupinshujuinfo, wupinxinxi);
	end
	PIGA["BagBank"]["lixian"][PIG_renwuming]["C"] = wupinshujuinfo
end
local function SAVE_BAG()
	if InCombatLockdown() then return end
	local wupinshujuinfo = {}
	for f=1,#bagID do
		for ff=1,C_Container.GetContainerNumSlots(bagID[f]) do
			SAVE_ItemInfo(bagID[f], ff,wupinshujuinfo)
		end
	end
	PIGA["BagBank"]["lixian"][PIG_renwuming]["BAG"] = wupinshujuinfo
	PIGA["BagBank"]["lixian"][PIG_renwuming]["G"] = GetMoney();
end
local function SAVE_BANK()
	if InCombatLockdown() then return end
	local wupinshujuinfo = {}
	for f=1,#bankID do
		if f==1 then
			for ff=1,yinhangmorengezishu[1] do
				SAVE_ItemInfo(bankID[f], ff,wupinshujuinfo)
			end
		else
			for ff=1,C_Container.GetContainerNumSlots(bankID[f]) do
				SAVE_ItemInfo(bankID[f], ff,wupinshujuinfo)
			end
		end
	end
	PIGA["BagBank"]["lixian"][PIG_renwuming]["BANK"] = wupinshujuinfo
end
--离线显示
local function Show_lixian_data(frameF,renwu,shuju,meihang,lixianNum)
	local framename=frameF:GetName()
	if shuju=="BANK" then
		_G[framename.."TitleText"]:SetText(renwu.." 的银行");
		if not ElvUI and not NDui then SetPortraitToTexture(frameF.portrait, 130899) end
	elseif shuju=="BAG" then
		_G[framename.."TitleText"]:SetText(renwu.." 的背包");
	elseif shuju=="C" then
		_G[framename.."TitleText"]:SetText(renwu);
		local zhiye,zhongzu,Lv = strsplit("~", meihang);
		local zhiye,zhongzu,Lv = tonumber(zhiye),tonumber(zhongzu),tonumber(Lv)
		if zhiye>0 and zhongzu>0 and Lv>0 then
			local classInfo = C_CreatureInfo.GetClassInfo(zhiye)
			local raceInfo = C_CreatureInfo.GetRaceInfo(zhongzu)
			frameF.biaoti:SetText("等级"..Lv.." "..raceInfo["raceName"].." "..classInfo["className"]);
		else
			frameF.biaoti:SetText("等级/种族/职业未更新");
		end
	end
	local zongshu=#PIGA["BagBank"]["lixian"][renwu][shuju]
	if shuju=="C" then
		for i=1,zongshu do
			local frameX = _G[framename.."_item_"..i]
			if frameX then
				frameX.LV:SetText("")
				local invSlotId,SlotTexture = GetInventorySlotInfo(InvSlot["Name"][i][1])
				frameX.icon:SetTexture(SlotTexture)
				local zbBuwei=_G[framename.."_zbBuwei_"..i]
				if zbBuwei then
					zbBuwei.itembuwei:SetTextColor(0.5, 0.5, 0.5,0.8);
					zbBuwei.itembuweiF:SetBackdropBorderColor(0.5, 0.5, 0.5,0.5)
				end
			end
		end
		for i=1,zongshu do
			local frameX = _G[framename.."_item_"..i]
			if frameX then
				frameX.LV:SetText("")
				local invSlotId,SlotTexture = GetInventorySlotInfo(InvSlot["Name"][i][1])
				frameX.icon:SetTexture(SlotTexture)
				local zbBuwei=_G[framename.."_zbBuwei_"..i]
				if zbBuwei then
					zbBuwei.itembuwei:SetTextColor(0.5, 0.5, 0.5,0.8);
					zbBuwei.itembuweiF:SetBackdropBorderColor(0.5, 0.5, 0.5,0.5)
				end
				local itemLink = PIGA["BagBank"]["lixian"][renwu][shuju][i][2]
				if itemLink then
					SetItemButtonTexture(frameX, GetItemIcon(itemLink))
					if PIGA["FramePlus"]["Character_ItemLevel"] then
						local effectiveILvl = GetDetailedItemLevelInfo(itemLink)
						if effectiveILvl and effectiveILvl>0 then
							frameX.LV:SetText(effectiveILvl)
							local quality = C_Item.GetItemQualityByID(itemLink)
							local r, g, b, hex = GetItemQualityColor(quality)
							frameX.LV:SetTextColor(r, g, b, 1);
						end
					end
					if zbBuwei then
						zbBuwei.itemlink:SetText(itemLink)
						zbBuwei.itembuwei:SetTextColor(0, 1, 1, 0.8);
						zbBuwei.itembuweiF:SetBackdropBorderColor(0, 1, 1, 0.5)
					end
				end
				frameX:SetScript("OnEnter", function (self)
					GameTooltip:ClearLines();
					GameTooltip:SetOwner(self, "ANCHOR_CURSOR");
					if itemLink then
						GameTooltip:SetHyperlink(itemLink)
					else
						GameTooltip:SetHyperlink("")
					end
					GameTooltip:Show();
				end);
				frameX:SetScript("OnLeave", function ()
					GameTooltip:ClearLines();
					GameTooltip:Hide() 
				end);
			end
		end
	else
		local BagdangeW=BagdangeW-6
		local www = (meihang-1)*(BagdangeW+4)+BagdangeW
		frameF:SetWidth(www+13)
		--排序格式化
		for i=1,lixianNum do
			local frameX = _G[framename.."_item_"..i]
			if i>1 then
				local yushu=math.fmod((i-1),meihang)	
				frameX:ClearAllPoints();
				if yushu==0 then
					frameX:SetPoint("TOPLEFT", _G[framename.."_item_"..(i-meihang)], "BOTTOMLEFT", 0, -4);
				else
					frameX:SetPoint("LEFT", _G[framename.."_item_"..(i-1)], "RIGHT", 4, 0);
				end
			end
			frameX:Hide();
			frameX.LV:SetText("")
		end
		local hhh = (math.ceil(zongshu/meihang)-1)*(BagdangeW+4)+BagdangeW
		frameF:SetHeight(hhh+66)
		for i=1,zongshu do
			local frameX=_G[framename.."_item_"..i]
			frameX:Show();
			local itemLink = PIGA["BagBank"]["lixian"][renwu][shuju][i][2]
			if itemLink then
				local icon = GetItemIcon(itemLink)
				frameX.icon:SetTexture(icon)
				frameX:SetScript("OnEnter", function (self)
					GameTooltip:ClearLines();
					GameTooltip:SetOwner(self, "ANCHOR_CURSOR");
					GameTooltip:SetHyperlink(itemLink)
					GameTooltip:Show();
				end);
				frameX:SetScript("OnLeave", function ()
					GameTooltip:ClearLines();
					GameTooltip:Hide() 
				end);
				frameX:SetScript("OnMouseUp", function ()
					if IsShiftKeyDown() then
						local editBox = ChatEdit_ChooseBoxForSend();
						local hasText = editBox:GetText()..itemLink
						if editBox:HasFocus() then
							editBox:SetText(hasText);
						else
							ChatEdit_ActivateChat(editBox)
							editBox:SetText(hasText);
						end
					end
				end)
				local MaxCount = PIGA["BagBank"]["lixian"][renwu][shuju][i][4]
				if MaxCount>1 then
					frameX.shuliang:SetText(PIGA["BagBank"]["lixian"][renwu][shuju][i][3])
				end
				if PIGA["BagBank"]["wupinLV"] then
					local ShowLV = PIGA["BagBank"]["lixian"][renwu][shuju][i][5]
					if ShowLV then
						local effectiveILvl = GetDetailedItemLevelInfo(itemLink)	
						if effectiveILvl and effectiveILvl>0 then
							frameX.LV:SetText(effectiveILvl)
							local quality = C_Item.GetItemQualityByID(itemLink)
							local r, g, b, hex = GetItemQualityColor(quality)
							frameX.LV:SetTextColor(r, g, b, 1);
						end
					end
				end
			end
		end
	end
	frameF:Show()
end
--刷新背包LV----------------
local function Bag_Item_lv_Update(framef, id, slot)
	framef.ZLV:SetText();
	local itemLink = C_Container.GetContainerItemLink(id, slot)
	if itemLink then
		local _,_,itemQuality,_,_,_,_,_,_,_,_,classID = GetItemInfo(itemLink);
		if itemQuality then
			if classID==2 or classID==4 then
				local effectiveILvl = GetDetailedItemLevelInfo(itemLink)
				framef.ZLV:SetText(effectiveILvl);
				local r, g, b, hex = GetItemQualityColor(itemQuality)
				framef.ZLV:SetTextColor(r, g, b, 1);
			end
		end
	end
end
local function Bag_Item_lv_Frame(id)
	if IsBagOpen(id) then
		if id==0 and not IsAccountSecured() then
			local baogeshu=C_Container.GetContainerNumSlots(id)+4
			for slot=1,baogeshu do
				local framef = _G["ContainerFrame"..(id+1).."Item"..baogeshu+1-slot]
				Bag_Item_lv_Update(framef, id, slot)
			end
		else
			local baogeshu=C_Container.GetContainerNumSlots(id)
			for slot=1,baogeshu do
				local framef = _G["ContainerFrame"..(id+1).."Item"..baogeshu+1-slot]
				Bag_Item_lv_Update(framef, id, slot)
			end
		end
	end
end
local function Bag_Item_lv(frame, size, id)
	if frame then
		for f=1,#bagID do
			Bag_Item_lv_Frame(bagID[f])
		end
	else
		Bag_Item_lv_Frame(id)
	end
end
--银行默认格子LV
local function shuaxinyinhangMOREN(arg1)
	if arg1>yinhangmorengezishu[1] then return end
	local framef=_G["BankFrameItem"..arg1];
	Bag_Item_lv_Update(framef, -1, arg1)
end
--银行默认格子染色
local function Bag_Item_Ranse_Update(framef,id,slot)
	framef.ranse:Hide()
	local itemLink = C_Container.GetContainerItemLink(id, slot)
	if itemLink then
		local _,_,itemQuality,_,_,_,_,_,_,_,_,classID = GetItemInfo(itemLink);
		if itemQuality and itemQuality>1 then
			if classID==2 or classID==4 then
           		local r, g, b = GetItemQualityColor(itemQuality);
	            framef.ranse:SetVertexColor(r, g, b);
				framef.ranse:Show()
			end
		end
	end
end
local function shuaxinyinhangMOREN_ranse(arg1)
	if arg1>yinhangmorengezishu[1] then return end
	local framef=_G["BankFrameItem"..arg1];
	Bag_Item_Ranse_Update(framef,-1,arg1)
end
--刷新背包银行染色
local function Bag_Item_Ranse_Frame(id)
	if IsBagOpen(id) then
		if id==0 and not IsAccountSecured() then
			local baogeshu=C_Container.GetContainerNumSlots(id)+4
			for slot=1,baogeshu do
				local framef = _G["ContainerFrame"..(id+1).."Item"..baogeshu+1-slot]
				Bag_Item_Ranse_Update(framef, id, slot)
			end
		else
			local baogeshu=C_Container.GetContainerNumSlots(id)
			for slot=1,baogeshu do
				local framef = _G["ContainerFrame"..(id+1).."Item"..baogeshu+1-slot]
				Bag_Item_Ranse_Update(framef, id, slot)
			end
		end
	end
end
local function Bag_Item_Ranse(frame, size, id)
	if frame then
		for f=1,#bagID do
			Bag_Item_Ranse_Frame(bagID[f])
		end
	else
		Bag_Item_Ranse_Frame(id)
	end
end
--其他角色数量
TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Item, function(tooltip, data)
	if not PIGA["BagBank"]["qitashulaing"] then return end
	if tooltip == GameTooltip then
		local itemID = data["id"]
		if itemID then	
			if itemID==6948 then return end
			local renwuWupinshu={}
			local renwuWupinINFO=PIGA["BagBank"]["lixian"]
			for k,v in pairs(renwuWupinINFO) do
				local Czongshu=#renwuWupinINFO[k]["C"]
				renwuWupinshu.Cshuliang=0
				for x=1,Czongshu do
					if itemID==renwuWupinINFO[k]["C"][x][1] then
						renwuWupinshu.Cshuliang=renwuWupinshu.Cshuliang+renwuWupinINFO[k]["C"][x][3]
					end
				end
				---
				local BAGzongshu=#renwuWupinINFO[k]["BAG"]
				renwuWupinshu.BAGshuliang=0
				for x=1,BAGzongshu do
					if itemID==renwuWupinINFO[k]["BAG"][x][1] then
						renwuWupinshu.BAGshuliang=renwuWupinshu.BAGshuliang+renwuWupinINFO[k]["BAG"][x][3]
					end
				end
				---
				local BANKzongshu=#renwuWupinINFO[k]["BANK"]
				renwuWupinshu.BANKshuliang=0
				for x=1,BANKzongshu do
					if itemID==renwuWupinINFO[k]["BANK"][x][1] then
						renwuWupinshu.BANKshuliang=renwuWupinshu.BANKshuliang+renwuWupinINFO[k]["BANK"][x][3]
					end
				end

				if renwuWupinshu.Cshuliang>0 or renwuWupinshu.BAGshuliang>0 or renwuWupinshu.BANKshuliang>0 then
					local tooltipxianshineirong={"","",0}
					tooltipxianshineirong.argbHex="ffffffff"
					if tonumber(renwuWupinINFO[k]["ClassN"])>0 then
						local classInfo = C_CreatureInfo.GetClassInfo(renwuWupinINFO[k]["ClassN"])
						local _, _, _, argbHex = GetClassColor(classInfo["classFile"]);
						tooltipxianshineirong.argbHex=argbHex
					end
					local argbHex=tooltipxianshineirong.argbHex
					if k==PIG_renwuming then 
						tooltipxianshineirong[1]="|c"..argbHex.."当前角色|r"
					else
						tooltipxianshineirong[1]="|c"..argbHex..k.."|r"
					end
					if renwuWupinshu.Cshuliang>0 then
						tooltipxianshineirong[2]="|c"..argbHex.."装备:|r|cffFFFFFF"..renwuWupinshu.Cshuliang.."|r"
					end
					if renwuWupinshu.BAGshuliang>0 then
						if renwuWupinshu.Cshuliang>0 then
							tooltipxianshineirong[2]="|c"..argbHex.."总|r|cffFFFFFF"..renwuWupinshu.Cshuliang+renwuWupinshu.BAGshuliang.."|r(|c"..argbHex.."装备:|r|cffFFFFFF"..renwuWupinshu.Cshuliang.."|r|c"..argbHex.." 背包:|r|cffFFFFFF"..renwuWupinshu.BAGshuliang.."|r)"
						else
							tooltipxianshineirong[2]="|c"..argbHex.."背包:|r|cffFFFFFF"..renwuWupinshu.BAGshuliang.."|r"
						end
					end
					if renwuWupinshu.BANKshuliang>0 then
						if renwuWupinshu.Cshuliang>0 and renwuWupinshu.BAGshuliang>0 then
							tooltipxianshineirong[2]="|c"..argbHex.."总|r|cffFFFFFF"..renwuWupinshu.Cshuliang+renwuWupinshu.BAGshuliang+renwuWupinshu.BANKshuliang.."|r(|c"..argbHex.."装备:|r|cffFFFFFF"..renwuWupinshu.Cshuliang.."|r|c"..argbHex.." 背包:|r|cffFFFFFF"..renwuWupinshu.BAGshuliang.."|r|c"..argbHex.." 银行:|r|cffFFFFFF"..renwuWupinshu.BANKshuliang.."|r)"
						elseif renwuWupinshu.Cshuliang>0 then
							tooltipxianshineirong[2]="|c"..argbHex.."总|r|cffFFFFFF"..renwuWupinshu.Cshuliang+renwuWupinshu.BANKshuliang.."|r(|c"..argbHex.."装备:|r|cffFFFFFF"..renwuWupinshu.Cshuliang.."|r|c"..argbHex.." 银行:|r|cffFFFFFF"..renwuWupinshu.BANKshuliang.."|r)"
						elseif renwuWupinshu.BAGshuliang>0 then
							tooltipxianshineirong[2]="|c"..argbHex.."总|r|cffFFFFFF"..renwuWupinshu.BAGshuliang+renwuWupinshu.BANKshuliang.."|r(|c"..argbHex.."背包:|r|cffFFFFFF"..renwuWupinshu.BAGshuliang.."|r|c"..argbHex.." 银行:|r|cffFFFFFF"..renwuWupinshu.BANKshuliang.."|r)"
						else
							tooltipxianshineirong[2]="|c"..argbHex.."银行:|r|cffFFFFFF"..renwuWupinshu.BANKshuliang.."|r"
						end
					end
					tooltipxianshineirong[3]=renwuWupinshu.Cshuliang+renwuWupinshu.BAGshuliang+renwuWupinshu.BANKshuliang
					if k==PIG_renwuming then 
						table.insert(renwuWupinshu,1,tooltipxianshineirong)
					else
						table.insert(renwuWupinshu,tooltipxianshineirong)
					end
				end
			end
			local yiyouwupinjuese=#renwuWupinshu
			if yiyouwupinjuese>0 then
				renwuWupinshu.hejishu=0
				for i=1,yiyouwupinjuese do
					GameTooltip:AddDoubleLine(renwuWupinshu[i][1],renwuWupinshu[i][2])
					renwuWupinshu.hejishu=renwuWupinshu.hejishu+renwuWupinshu[i][3]
				end
				if yiyouwupinjuese>1 then
					GameTooltip:AddDoubleLine("|cff00FF00所有角色|r","|cff00FF00合计:|r|cffFFFFFF"..renwuWupinshu.hejishu)
				end
				GameTooltip:Show()
			end
		end
	end
end)
--=====================
local XWidth, XHeight =CharacterHeadSlot:GetWidth(),CharacterHeadSlot:GetHeight()
function BagBankfun.Zhenghe(Rneirong,tabbut)
	if not PIGA["BagBank"]["Zhenghe"] or ContainerFrameCombinedBags.lixianBut then return end
	if PIGA["BagBank"]["Zhenghe"] and GetCVar("combinedBags")=="0" then
		SetCVar("combinedBags",1)
	end
	if ContainerFrameCombinedBags:IsShown() then CloseAllBags() end
	local wanjia, realm = UnitFullName("player")
	local realm=realm or GetRealmName()
	PIG_renwuming = wanjia.."-"..realm
	bagID.meihang=PIGA["BagBank"]["BAGmeihangshu_retail"] or bagID.meihang
	bagID.suofang=PIGA["BagBank"]["BAGsuofangBili"] or bagID.suofang
	--背包
	for bagui = 1, 13 do
		for slot = 1, 36 do
			local famrr=_G["ContainerFrame"..bagui.."Item"..slot]
			if famrr.ZLV then return end
			famrr.ZLV = PIGFontString(famrr,{"TOPRIGHT", famrr, "TOPRIGHT", -1, -1},nil,nil,15)
			famrr.ZLV:SetDrawLayer("OVERLAY", 7)
		end
	end
	--银行默认格子
	for i = 1, yinhangmorengezishu[1] do
		local famrr=_G["BankFrameItem"..i]
		if famrr.ZLV then return end
		famrr.ZLV = PIGFontString(famrr,{"TOPRIGHT", famrr, "TOPRIGHT", -1, -1},nil,nil,15)
		famrr.ZLV:SetDrawLayer("OVERLAY", 7)
	end
	--背包
	for bagui = 1, 13 do
		for slot = 1, 36 do
			local famrr=_G["ContainerFrame"..bagui.."Item"..slot]
			if famrr.ranse then return end
		    famrr.ranse = famrr:CreateTexture(nil, "OVERLAY");
		    famrr.ranse:SetTexture("Interface\\Buttons\\UI-ActionButton-Border");
		    famrr.ranse:SetBlendMode("ADD");
		    famrr.ranse:SetSize(XWidth*1.8, XHeight*1.8);
		    famrr.ranse:SetPoint("CENTER", famrr, "CENTER", 0, 0);
		    famrr.ranse:Hide()
		end
	end
	--银行默认格子
	for i = 1, yinhangmorengezishu[1] do
		local famrr=_G["BankFrameItem"..i]
		if famrr.ranse then return end
	    famrr.ranse = famrr:CreateTexture(nil, "OVERLAY")
	    famrr.ranse:SetTexture("Interface\\Buttons\\UI-ActionButton-Border");
	    famrr.ranse:SetBlendMode("ADD");
	    famrr.ranse:SetSize(XWidth*1.8, XHeight*1.8);
	    famrr.ranse:SetPoint("CENTER", famrr, "CENTER", 0, 0);
	    famrr.ranse:Hide()
	end
	if PIGA["BagBank"]["JunkShow"] then
		for f=1,13 do
			for ff=1,36 do
				local framef = _G["ContainerFrame"..f.."Item"..ff]
				hooksecurefunc(framef, "UpdateJunkItem", function(self,quality, noValue)	
					self.JunkIcon:Hide();
					if quality and quality==0 then
						self.JunkIcon:Show();
					end
				end)
			end
		end
	end
	--------------------------
	--系统整合背包
	hooksecurefunc("ContainerFrame_GenerateFrame", function(frame, size, id)
		frame:SetScale(PIGA["BagBank"]["BAGsuofangBili"])
	end)	
	ContainerFrameCombinedBags:RegisterForDrag("LeftButton")
	ContainerFrameCombinedBags:SetMovable(true)
	ContainerFrameCombinedBags:SetClampedToScreen(true)
	ContainerFrameCombinedBags:SetScript("OnDragStart",function(self)
	    self:StartMoving();
	    self:SetUserPlaced(false)
	end)
	ContainerFrameCombinedBags:SetScript("OnDragStop",function(self)
	    self:StopMovingOrSizing()
	    self:SetUserPlaced(false)
	end)

	hooksecurefunc(ContainerFrameCombinedBags, "SetSearchBoxPoint", function()
		BagItemSearchBox:SetWidth(180);
		BagItemSearchBox:SetPoint("TOPLEFT",ContainerFrameCombinedBags,"TOPLEFT",180,-37);
	end)
	--
	local function ADD_lixianSet()
		local fujiBagFrame = ContainerFrameCombinedBags
		if ElvUI then fujiBagFrame = ElvUI_ContainerFrame end
		if NDui and NDuiDB["Bags"]["Enable"] then fujiBagFrame = NDui_BackpackBag end
		if NDui and NDuiDB["Bags"]["Enable"] then
			fujiBagFrame.lixianBut = PIGFrame(fujiBagFrame)
			fujiBagFrame.lixianBut:PIGSetBackdrop()
			fujiBagFrame.lixianBut:SetSize(22,22);	
			fujiBagFrame.lixianBut:SetPoint("TOPLEFT",fujiBagFrame,"TOPLEFT",170,-5)
		elseif ElvUI then
			fujiBagFrame.lixianBut = PIGFrame(fujiBagFrame)
			fujiBagFrame.lixianBut:PIGSetBackdrop()
			fujiBagFrame.lixianBut:SetSize(22,22);	
			fujiBagFrame.lixianBut:SetPoint("TOPLEFT",fujiBagFrame,"TOPLEFT",170,-5)
		else
			fujiBagFrame.lixianBut = CreateFrame("Frame",nil,fujiBagFrame);
			fujiBagFrame.lixianBut:SetSize(32,32);	
			fujiBagFrame.lixianBut:SetPoint("TOPLEFT",fujiBagFrame,"TOPLEFT",50,-30)
			fujiBagFrame.lixianBut.Border = fujiBagFrame.lixianBut:CreateTexture(nil, "OVERLAY");
			fujiBagFrame.lixianBut.Border:SetTexture("Interface/Minimap/MiniMap-TrackingBorder");
			fujiBagFrame.lixianBut.Border:SetSize(52,52);
			fujiBagFrame.lixianBut.Border:SetPoint("TOPLEFT", 0, 0)
		end
		fujiBagFrame.lixianBut.Tex = fujiBagFrame.lixianBut:CreateTexture()
		fujiBagFrame.lixianBut.Tex:SetTexture(132050);
		fujiBagFrame.lixianBut.Tex:SetSize(18,18);
		fujiBagFrame.lixianBut.Tex:SetPoint("CENTER",-1,1);

		fujiBagFrame.lixianBut.xiala=PIGDownMenu(fujiBagFrame.lixianBut,{"TOPLEFT",fujiBagFrame.lixianBut, "CENTER", 0,-4},{wwgg,hhgg},"DJEasyMenu")
		if NDui and NDuiDB["Bags"]["Enable"] then
			fujiBagFrame.lixianBut.xiala.Button:SetHighlightTexture("Interface/Buttons/ButtonHilight-Square")
		else
			fujiBagFrame.lixianBut.xiala.Button:SetHighlightTexture("Interface/Minimap/UI-Minimap-ZoomButton-Highlight")
		end
		fujiBagFrame.lixianBut.xiala.Button:SetScript("OnMouseDown", function (self)
			fujiBagFrame.lixianBut.Tex:SetPoint("CENTER",-2,0);
		end);
		fujiBagFrame.lixianBut.xiala.Button:SetScript("OnMouseUp", function (self)
			fujiBagFrame.lixianBut.Tex:SetPoint("CENTER",-1,1);
		end);
		fujiBagFrame.lixianBut.xiala.Button:SetScript("OnEnter", function (self)
			GameTooltip:ClearLines();
			GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT",0,0);
			GameTooltip:AddLine("左键-|cff00FFff打开离线银行|r\n右键-|cff00FFff查看其他角色离线物品|r")
			GameTooltip:Show();
		end);
		fujiBagFrame.lixianBut.xiala.Button:SetScript("OnLeave", function ()
			GameTooltip:ClearLines();
			GameTooltip:Hide() 
		end);
		fujiBagFrame.lixianBut.xiala.Button:HookScript("OnClick",  function (self,button)
			if button=="LeftButton" then
				if BankFrame:IsShown() then return end
				PlaySoundFile(567463, "Master")
				if lixianBank_UI:IsShown() then
					lixianBank_UI:Hide()
				else
					Show_lixian_data(lixianBank_UI,PIG_renwuming,"BANK",bankID.meihang,bankID.lixianNum)
				end
			end
		end)
		function fujiBagFrame.lixianBut.xiala:PIGDownMenu_Update_But(self, level, menuList)
			local danxuanerjiList = {}
			local KucunName={["C"]="已装备物品",["BAG"]="背包物品",["BANK"]="银行物品"}
			for k,v in pairs(PIGA["BagBank"]["lixian"]) do	
				local xiajicaidan={}
				for kk,vv in pairs(KucunName) do
					table.insert(xiajicaidan,{vv,kk,k,v["ClassN"].."~"..v["Race"].."~"..v["Lv"]})
				end
				if k~=PIG_renwuming then
					fujiBagFrame.lixiancunzaiwupin=true
					table.insert(danxuanerjiList,{k,xiajicaidan})
				end
		    end
		    local info = {}
		    if fujiBagFrame.lixiancunzaiwupin then
				if (level or 1) == 1 then
					for i=1,#danxuanerjiList,1 do
					    info.text= danxuanerjiList[i][1]
					    info.menuList, info.hasArrow = danxuanerjiList[i][2], true
					    fujiBagFrame.lixianBut.xiala:PIGDownMenu_AddButton(info)
					end
				else
					local listFrame = _G["PIGDownList"..level];
					for x=1,#menuList,1 do
						info.text = menuList[x][1]
						if menuList[x][2]=="BANK" then
							info.func = function()
								Show_lixian_data(lixianBank_UI,menuList[x][3],"BANK",bankID.meihang,bankID.lixianNum)
								PIGCloseDropDownMenus()
							end
						elseif menuList[x][2]=="C" then
							info.func = function()
								Show_lixian_data(lixianC_UI,menuList[x][3],"C",menuList[x][4],19)
								PIGCloseDropDownMenus()
							end
						elseif menuList[x][2]=="BAG" then
							info.func = function()
								Show_lixian_data(lixianBag_UI,menuList[x][3],"BAG",bagID.meihang,bagID.lixianNum)
								PIGCloseDropDownMenus()
							end
						end
						fujiBagFrame.lixianBut.xiala:PIGDownMenu_AddButton(info,level)
					end
				end
		    else
		    	info.text= "登录一次其他角色可离线查看" 
		    	info.func = function()
					PIGCloseDropDownMenus()
				end
				fujiBagFrame.lixianBut.xiala:PIGDownMenu_AddButton(info)	
		    end 
		end

		--设置按钮
		if NDui and NDuiDB["Bags"]["Enable"] then
			fujiBagFrame.shezhi = PIGButton(fujiBagFrame,{"TOPLEFT",fujiBagFrame,"TOPLEFT",210,-5},{22,22})
		elseif ElvUI then
			fujiBagFrame.shezhi = PIGButton(fujiBagFrame,{"TOPLEFT",fujiBagFrame,"TOPLEFT",210,-5},{22,22})
		else
			fujiBagFrame.shezhi = CreateFrame("Button",nil,fujiBagFrame);
			fujiBagFrame.shezhi:SetHighlightTexture("Interface/Minimap/UI-Minimap-ZoomButton-Highlight");
			fujiBagFrame.shezhi:SetSize(32,32);
			fujiBagFrame.shezhi:SetPoint("TOPLEFT",fujiBagFrame,"TOPLEFT",110,-30);
			fujiBagFrame.shezhi:RegisterForClicks("LeftButtonUp","RightButtonUp")

			fujiBagFrame.shezhi.Border = fujiBagFrame.shezhi:CreateTexture(nil, "OVERLAY");
			fujiBagFrame.shezhi.Border:SetTexture("Interface/Minimap/MiniMap-TrackingBorder");
			fujiBagFrame.shezhi.Border:SetSize(52,52);
			fujiBagFrame.shezhi.Border:SetPoint("TOPLEFT", 0, 0);
		end
		fujiBagFrame.shezhi.Tex = fujiBagFrame.shezhi:CreateTexture(nil,"OVERLAY");
		fujiBagFrame.shezhi.Tex:SetTexture("interface/gossipframe/healergossipicon.blp");
		fujiBagFrame.shezhi.Tex:SetPoint("CENTER", 0, 0);
		fujiBagFrame.shezhi.Tex:SetSize(18,18);
		fujiBagFrame.shezhi:SetScript("OnMouseDown", function (self)
			self.Tex:SetPoint("CENTER",-1,-1);
		end);
		fujiBagFrame.shezhi:SetScript("OnMouseUp", function (self)
			self.Tex:SetPoint("CENTER");
		end);
		fujiBagFrame.shezhi:SetScript("OnClick", function (self)
			if Pig_OptionsUI:IsShown() then
				Pig_OptionsUI:Hide()
			else
				Pig_OptionsUI:Show()
				Create.Show_TabBut(Rneirong,tabbut)
			end
		end)
		--其他角色金币	
		local function ADDshowEV(fameFF)
			fameFF:SetScript("OnEnter", function (self)
				GameTooltip:ClearLines();
				GameTooltip:SetOwner(self, "ANCHOR_CURSOR",0,0);
				
				local lixianheji = PIGA["BagBank"]["lixian"]
				local lixianhejiNAMEG = {}
				lixianhejiNAMEG.ZIJIg=GetMoney();
				for k,v in pairs(lixianheji) do
					if k~=PIG_renwuming then
						if v["G"] and v["G"]>0 then
							table.insert(lixianhejiNAMEG,{k,v["G"],v["ClassN"]})
							lixianhejiNAMEG.ZIJIg=lixianhejiNAMEG.ZIJIg+v["G"]
						end
					end
				end
				GameTooltip:AddLine("总计："..GetCoinTextureString(lixianhejiNAMEG.ZIJIg))
				for n=1,#lixianhejiNAMEG do
					local rPerc, gPerc, bPerc, argbHex = GetClassColor(lixianhejiNAMEG[n][3]);
					local argbHex=argbHex or "ffffffff"
					GameTooltip:AddLine("\124c"..argbHex..lixianhejiNAMEG[n][1].."\124r："..GetCoinTextureString(lixianhejiNAMEG[n][2]))
				end
				GameTooltip:Show();
			end);
			fameFF:SetScript("OnLeave", function ()
				GameTooltip:ClearLines();
				GameTooltip:Hide() 
			end);
		end
		if NDui and NDuiDB["Bags"]["Enable"] then
			ADDshowEV(fujiBagFrame.shezhi)
		elseif ElvUI then
			ADDshowEV(fujiBagFrame.shezhi)
		else
			ADDshowEV(fujiBagFrame.MoneyFrame)
			local monheji = {fujiBagFrame.MoneyFrame:GetChildren()}
			for i=1,#monheji do
				if monheji[i]~=ContainerFrame1MoneyFrameTrialErrorButton then
					ADDshowEV(monheji[i])
				end
			end
		end
	end
	local fujiBagFramejiazaishu= 0
	local function BAGjiazaifou()
		if NDui and NDuiDB["Bags"]["Enable"] or ElvUI then
			if NDui_BackpackBag or ElvUI_ContainerFrame then
				ADD_lixianSet()
			else
				if fujiBagFramejiazaishu<6 then
					C_Timer.After(1,BAGjiazaifou)
					fujiBagFramejiazaishu=fujiBagFramejiazaishu+1
				end
			end
		else
			ADD_lixianSet()
		end
	end
	BAGjiazaifou()
	--交易打开
	hooksecurefunc("TradeFrame_OnShow", function()
		if PIGA["BagBank"]["jiaoyiOpen"] then
			if(UnitExists("NPC"))then
				OpenAllBags()
			end
		end
	end)
	--银行打开时关闭背包不关闭银行的背包
	hooksecurefunc("ToggleAllBags", function()
		if PIGA["BagBank"]["Zhenghe"] then
			if BankFrame:IsShown() then
				for i = NUM_TOTAL_BAG_FRAMES + 1, NUM_CONTAINER_FRAMES do
					OpenBag(i)
				end
			end
		end
	end)
	---系统银行===============================
	---可移动
	BankFrame:RegisterForDrag("LeftButton")
	BankFrame:SetMovable(true)
	BankFrame:SetClampedToScreen(true)
	BankFrame:SetScript("OnDragStart",function(self)
	    self:StartMoving();
	    self:SetUserPlaced(false)
	end)
	BankFrame:SetScript("OnDragStop",function(self)
	    self:StopMovingOrSizing()
	    self:SetUserPlaced(false)
	end)
	--分类设置
	for vb=7,13 do
		local fameXX = _G["ContainerFrame"..vb.."PortraitButton"]
		fameXX.ICONpig = fameXX:CreateTexture(nil, "BORDER");
		fameXX.ICONpig:SetTexture();
		fameXX.ICONpig:SetSize(28,28);
		fameXX.ICONpig:SetPoint("TOPLEFT",fameXX,"TOPLEFT",7,-7);
		fameXX.BGpig = fameXX:CreateTexture(nil, "ARTWORK");
		fameXX.BGpig:SetTexture("Interface/Minimap/MiniMap-TrackingBorder");
		fameXX.BGpig:SetSize(70,70);
		fameXX.BGpig:SetPoint("TOPLEFT",fameXX,"TOPLEFT",0,0);
		fameXX:SetScript("OnEnter", function (self)
			local fujikj = self:GetParent()
			local hh = {fujikj:GetChildren()} 
			for _,v in pairs(hh) do
				local Vname = v:GetName()
				if Vname then
					local cunzai = Vname:find("Item")
					if cunzai then
						v.BattlepayItemTexture:Show()
					end
				end
			end
		end);
		fameXX:SetScript("OnLeave", function (self)
			local fujikj = self:GetParent()
			local hh = {fujikj:GetChildren()} 
			for _,v in pairs(hh) do
				local Vname = v:GetName()
				if Vname then
					local cunzai = Vname:find("Item")
					if cunzai then
						v.BattlepayItemTexture:Hide()
					end
				end
			end
		end);
	end
	BankSlotsFrame.fenlei = CreateFrame("Button",nil,BankSlotsFrame, "TruncatedButtonTemplate");
	BankSlotsFrame.fenlei:SetHighlightTexture("interface/buttons/ui-common-mousehilight.blp");
	BankSlotsFrame.fenlei:SetSize(18,18);
	BankSlotsFrame.fenlei:SetPoint("TOPRIGHT",BankSlotsFrame,"TOPRIGHT",-20,-28);
	BankSlotsFrame.fenlei.Tex = BankSlotsFrame.fenlei:CreateTexture(nil, "BORDER");
	BankSlotsFrame.fenlei.Tex:SetTexture("interface/chatframe/chatframeexpandarrow.blp");
	BankSlotsFrame.fenlei.Tex:SetRotation(math.rad(-90))
	BankSlotsFrame.fenlei.Tex:SetSize(18,18);
	BankSlotsFrame.fenlei.Tex:SetPoint("CENTER",BankSlotsFrame.fenlei,"CENTER",2,0);
	BankSlotsFrame.fenlei:SetScript("OnMouseDown", function (self)
		self.Tex:SetPoint("CENTER",BankSlotsFrame.fenlei,"CENTER",3,-1);
	end);
	BankSlotsFrame.fenlei:SetScript("OnMouseUp", function (self)
		self.Tex:SetPoint("CENTER",BankSlotsFrame.fenlei,"CENTER",2,0);
	end);
	BankSlotsFrame.fenlei.show=false
	BankSlotsFrame.fenlei:SetScript("OnClick",  function (self)
		if BankSlotsFrame.fenlei.show then
			BankSlotsFrame.fenlei.show=false
			self.Tex:SetRotation(math.rad(-90))
			for vb=2,#bankID do
				local containerFrame, containerShowing = ContainerFrameUtil_GetShownFrameForID(bankID[vb]);
				if containerFrame then
					containerFrame.PortraitButton:Hide()
					containerFrame.FilterIcon:Hide()
				end
			end
		else
			BankSlotsFrame.fenlei.show=true
			self.Tex:SetRotation(math.rad(90))
			local bagicon={BankSlotsFrame.Bag1.icon:GetTexture(),BankSlotsFrame.Bag2.icon:GetTexture(),BankSlotsFrame.Bag3.icon:GetTexture(),
			BankSlotsFrame.Bag4.icon:GetTexture(),BankSlotsFrame.Bag5.icon:GetTexture(),BankSlotsFrame.Bag6.icon:GetTexture(),BankSlotsFrame.Bag7.icon:GetTexture()}
			for vb=2,#bankID do
				local containerFrame, containerShowing = ContainerFrameUtil_GetShownFrameForID(bankID[vb]);
				if containerFrame then
					containerFrame.PortraitButton.ICONpig:SetTexture(bagicon[bankID[vb]-5]);
					containerFrame.PortraitButton:Show()
					for k,v in pairs(Enum.BagSlotFlags) do
						local isSet = C_Container.GetBagSlotFlag(bankID[vb], v)
						if isSet then
							containerFrame.FilterIcon:Show();
							break;
						end
					end
				end
			end
		end
	end);
	BankSlotsFrame:HookScript("OnHide", function(self)
		self.fenlei.show=false
		self.fenlei.Tex:SetRotation(math.rad(-90))
	end);
	--离线背包---------
	local data = {
		["BagdangeW"]=BagdangeW-6,
		["meihang"]=bagID.meihang,
		["suofang"]=bagID.suofang,
		["lixianNum"]=bagID.lixianNum
	}
	local lixianBag=BagBankFrame(UIParent,{"CENTER",UIParent,"CENTER",-200,200},"lixianBag_UI",data,110)

	--离线银行------------
	local data = {
		["BagdangeW"]=BagdangeW-6,
		["meihang"]=bankID.meihang,
		["suofang"]=bankID.suofang,
		["lixianNum"]=bankID.lixianNum
	}
	local lixianBank=BagBankFrame(UIParent,{"CENTER",UIParent,"CENTER",-300, 200},"lixianBank_UI",data,120)

	---离线已装备物品------------
	local lixianC=Create.CharacterFrame(UIParent,{"CENTER",UIParent,"CENTER",-100, 173},"lixianC_UI",130)
	---------------
	local BankshijianFrame = CreateFrame("Frame")
	--BankshijianFrame:RegisterEvent("BAG_UPDATE_DELAYED")
	BankshijianFrame:RegisterEvent("BANKFRAME_OPENED")
	BankshijianFrame:RegisterEvent("PLAYERBANKSLOTS_CHANGED")
	BankshijianFrame:HookScript("OnEvent", function (self,event,arg1)
		if event=="PLAYERBANKSLOTS_CHANGED" then
			C_Timer.After(0.4,SAVE_BANK)
			if PIGA["BagBank"]["wupinLV"] then
				shuaxinyinhangMOREN(arg1)
			end
			if PIGA["BagBank"]["wupinRanse"] then shuaxinyinhangMOREN_ranse(arg1) end
		end
		if event=="BAG_UPDATE_DELAYED" then
			if BankSlotsFrame:IsShown() then
				--CloseBankFrame();
				-- for i=2,#bankID do
				-- 	CloseBag(bankID[i])
				-- end
				-- for i=2,#bankID do
				-- 	OpenBag(bankID[i])
				-- end
			end
		end
		if event=="BANKFRAME_OPENED" then
			zhegnheBANK_Open()
			for i=2,#bankID do
				OpenBag(bankID[i])
			end
			C_Timer.After(0.4,SAVE_BANK)
			if PIGA["BagBank"]["wupinLV"] then
				for i=1,yinhangmorengezishu[1] do
					shuaxinyinhangMOREN(i)
				end
			end
			if PIGA["BagBank"]["wupinRanse"] then
				for i=1,yinhangmorengezishu[1] do
					shuaxinyinhangMOREN_ranse(i) 
				end
			end
		end
	end)
	BankFrameTab1:HookScript("OnClick", function ()
		zhegnheBANK_Open()
		for i=2,#bankID do
			OpenBag(bankID[i])
		end
	end)
	BankFrameTab2:HookScript("OnClick", function ()
		for i=2,#bankID do
			CloseBag(bankID[i])
		end
	end)
	-- ------
	hooksecurefunc("ContainerFrame_GenerateFrame", function(frame, size, id)
		if id>=bankID[2] then
			shuaxinBANKweizhi(frame, size, id)
		end
		if PIGA["BagBank"]["wupinLV"] then Bag_Item_lv(frame, size, id) end
		if PIGA["BagBank"]["wupinRanse"] then Bag_Item_Ranse(frame, size, id) end
	end)
	---
	local PIGCombinedBags = CreateFrame("Frame")
	PIGCombinedBags:RegisterEvent("PLAYER_ENTERING_WORLD");
	PIGCombinedBags:RegisterUnitEvent("UNIT_MODEL_CHANGED","player")
	PIGCombinedBags:RegisterEvent("AUCTION_HOUSE_SHOW")
	PIGCombinedBags:HookScript("OnEvent", function(self,event,arg1)
		if event=="PLAYER_ENTERING_WORLD" then
			local dangqianjusexinxi={["ClassN"]=0,["Race"]=0,["Lv"]=0,["G"]=0,["C"]={},["BAG"]={},["BANK"]={}}
			for k,v in pairs(PIGA["BagBank"]["lixian"]) do
				for kk,vv in pairs(dangqianjusexinxi) do
					if PIGA["BagBank"]["lixian"][k][kk]==nil then
						PIGA["BagBank"]["lixian"][k][kk]=vv
					end
				end
			end
			local _, englishClass,classId= UnitClass("player");
			local raceName, raceFile, raceID = UnitRace("player")
			local level = UnitLevel("player")
			if PIG_renwuming then
				if PIGA["BagBank"]["lixian"][PIG_renwuming]==nil then
					PIGA["BagBank"]["lixian"][PIG_renwuming]=dangqianjusexinxi
				end
				PIGA["BagBank"]["lixian"][PIG_renwuming]["ClassN"]=classId
				PIGA["BagBank"]["lixian"][PIG_renwuming]["Race"]=raceID
				PIGA["BagBank"]["lixian"][PIG_renwuming]["Lv"]=level
			end
		end
		if event=="AUCTION_HOUSE_SHOW" then
			if PIGA["BagBank"]["AHOpen"] then
				if (UnitExists("NPC")) then
					OpenAllBags()
				end
			end
		end
		if event=="UNIT_MODEL_CHANGED" then
			SAVE_C()
		end	
		if event=="BAG_UPDATE" then	
			if arg1>=bagID[1] and arg1<=bagID[#bagID] then
				C_Timer.After(0.5,SAVE_BAG)
				if ContainerFrame1Item1:IsVisible() then
					if PIGA["BagBank"]["wupinLV"] then Bag_Item_lv(nil, nil, arg1) end
					if PIGA["BagBank"]["wupinRanse"] then Bag_Item_Ranse(nil, nil, arg1) end
				end
			end
			if BankFrame:IsShown() then
				if arg1>=bankID[2] then
					C_Timer.After(0.5,SAVE_BANK)
					if PIGA["BagBank"]["wupinLV"] then Bag_Item_lv(nil, nil, arg1) end
					if PIGA["BagBank"]["wupinRanse"] then Bag_Item_Ranse(nil, nil, arg1) end
				end
			end
		end
	end)
	local function zhixingbaocunCMD()
		SAVE_BAG()
		PIGCombinedBags:RegisterEvent("BAG_UPDATE")
	end
	C_Timer.After(8,zhixingbaocunCMD)
end