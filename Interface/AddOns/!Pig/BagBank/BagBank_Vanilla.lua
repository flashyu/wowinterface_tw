local addonName, addonTable = ...;
local gsub = _G.string.gsub 
local find = _G.string.find
local _, _, _, tocversion = GetBuildInfo()
local GetContainerNumSlots=C_Container and C_Container.GetContainerNumSlots or GetContainerNumSlots
local GetContainerItemLink=C_Container and C_Container.GetContainerItemLink or GetContainerItemLink
--
local Create=addonTable.Create
local PIGFrame=Create.PIGFrame
local PIGButton=Create.PIGButton
local PIGDownMenu=Create.PIGDownMenu
local PIGFontString=Create.PIGFontString
local CharacterFrame=Create.CharacterFrame
local BagBankFrame=Create.BagBankFrame
--==========================================
local InvSlot=addonTable.Data.InvSlot
local BagBankfun=addonTable.BagBankfun
local yinhangmorengezishu={}
if tocversion<20000 then
	yinhangmorengezishu={24,6}
else
	yinhangmorengezishu={28,7}
end
yinhangmorengezishu.banknum=yinhangmorengezishu[1]+yinhangmorengezishu[2]*36
local BaglixianNum=164
local BanklixianNum=yinhangmorengezishu[1]+yinhangmorengezishu[2]*36
----==============
local bagID = {0,1,2,3,4}
local bankID = {-1,5,6,7,8,9,10,11}
local zhengliIcon="interface/containerframe/bags.blp"	
local BagdangeW=ContainerFrame1Item1:GetWidth()+5
local PIG_renwuming
----
local function shuaxinKEYweizhi(frame)
	local name = frame:GetName();
	frame.PortraitButton:Hide();
	frame.Portrait:Show();
	_G[name.."CloseButton"]:Show();
	frame:SetParent(UIParent);
	frame:SetPoint("BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -560, 300);
end
local function Update_BAGFrame_WidthHeight(new_hangshu)
	BAGheji_UI:SetScale(BAGheji_UI.suofang);
	BAGheji_UI:SetWidth(BagdangeW*BAGheji_UI.meihang+28)
	if new_hangshu then
		BAGheji_UI:SetHeight(BagdangeW*new_hangshu+102);
	end
end
local function shuaxinBAGweizhi(frame, size, id)
	frame:SetHeight(0);
	frame:SetToplevel(false)
	frame:SetParent(BAGheji_UI)
	frame.PortraitButton:Hide();
	frame.Portrait:Hide();
	local name = frame:GetName();
	_G[name.."BackgroundTop"]:Hide();
	_G[name.."BackgroundMiddle1"]:Hide();
	_G[name.."BackgroundMiddle2"]:Hide();
	_G[name.."BackgroundBottom"]:Hide();
	_G[name.."Background1Slot"]:Hide();
	_G[name.."Name"]:Hide();
	_G[name.."CloseButton"]:Hide();
	if id==0 then
		paishuID,kongbuID=0,0
		_G[name.."MoneyFrame"]:Show()
		_G[name.."MoneyFrame"]:ClearAllPoints();
		_G[name.."MoneyFrame"]:SetPoint("RIGHT", BAGheji_UI.moneyframe, "RIGHT", 4, -1);
		_G[name.."MoneyFrame"]:SetParent(BAGheji_UI);
		if PIG["BagBank"]["qitajinbi"] then
			local function ADDshowEV(fameFF)
					fameFF:SetScript("OnEnter", function (self)
						GameTooltip:ClearLines();
						GameTooltip:SetOwner(self, "ANCHOR_CURSOR",0,0);
						local lixianheji = PIG["BagBank"]["lixian"]
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
			ADDshowEV(_G[name.."MoneyFrame"])
			local monheji = {_G[name.."MoneyFrame"]:GetChildren()}
			for i=1,#monheji do
				if monheji[i]~=ContainerFrame1MoneyFrameTrialErrorButton then
					ADDshowEV(monheji[i])
				end
			end
		end
	else
		_G[name.."MoneyFrame"]:Hide()
	end
	local function jisuanzongshu(id)
		BAGheji_UI.zongshu=0
		if id>0 then	
			local qianzhibag = id
			for i=1,qianzhibag do
				local shangnum = GetContainerNumSlots(i-1)
				BAGheji_UI.zongshu=BAGheji_UI.zongshu+shangnum
			end
		end
		return BAGheji_UI.zongshu
	end
	local function jisuankonmgyu(id,zongshu)
		BAGheji_UI.hangShu,BAGheji_UI.kongyu=0,0
		if id>0 then
			BAGheji_UI.hangShu=math.ceil(zongshu/BAGheji_UI.meihang)
			BAGheji_UI.kongyu=BAGheji_UI.hangShu*BAGheji_UI.meihang-zongshu
		end
		return BAGheji_UI.hangShu,BAGheji_UI.kongyu
	end

	local shang_allshu=jisuanzongshu(id)
	local shang_hang,shang_yushu=jisuankonmgyu(id,shang_allshu)
	local NEWsize=size-shang_yushu
	local hangShu=math.ceil(NEWsize/BAGheji_UI.meihang)
	local new_kongyu,new_hangshu=hangShu*BAGheji_UI.meihang-NEWsize,hangShu+shang_hang
	for slot=1,size do
		local itemF = _G[name.."Item"..slot]
		itemF:ClearAllPoints();
		if slot==1 then
			itemF:SetPoint("TOPRIGHT", BAGheji_UI.wupin, "TOPRIGHT", -(new_kongyu*BagdangeW)-5, -(new_hangshu*BagdangeW)+36);
			_G[name.."PortraitButton"]:ClearAllPoints();
			_G[name.."PortraitButton"]:SetPoint("TOPLEFT", BAGheji_UI, "TOPRIGHT", 0, -(42*id)-60);
		else
			local yushu=math.fmod((slot+new_kongyu-1),BAGheji_UI.meihang)
			local itemFshang = _G[name.."Item"..(slot-1)]
			if yushu==0 then
				itemF:SetPoint("BOTTOMLEFT", itemFshang, "TOPLEFT", (BAGheji_UI.meihang-1)*BagdangeW, 5);
			else
				itemF:SetPoint("RIGHT", itemFshang, "LEFT", -5, 0);
			end
		end
	end
	Update_BAGFrame_WidthHeight(new_hangshu)
end
---------------------
local function Update_BankFrame_Height(hangallgao)
	BankFrame:SetWidth(BagdangeW*BankFrame.meihang+36)
	BankFrame:SetHeight(hangallgao+106);
end
local function shuaxinBANKweizhi(frame, size, id)
	frame.PortraitButton:Hide();
	frame.Portrait:Hide();
	local name = frame:GetName();
	_G[name.."MoneyFrame"]:Hide()
	_G[name.."BackgroundTop"]:Hide();
	_G[name.."BackgroundMiddle1"]:Hide();
	_G[name.."BackgroundMiddle2"]:Hide();
	_G[name.."BackgroundBottom"]:Hide();
	_G[name.."Background1Slot"]:Hide();
	_G[name.."Name"]:Hide();
	_G[name.."CloseButton"]:Hide();
	frame:SetHeight(0);
	frame:SetToplevel(false)
	frame:SetParent(BankSlotsFrame);
	local function jisuanzongshu(id)
		if id==5 then
			return yinhangmorengezishu[1]
		else
			yinhangmorengezishu.zongshu=yinhangmorengezishu[1]
			local qianzhibag = id-5
			for i=1,qianzhibag do
				local shangnum = GetContainerNumSlots(i+4)
				yinhangmorengezishu.zongshu=yinhangmorengezishu.zongshu+shangnum
			end
			return yinhangmorengezishu.zongshu
		end
	end
	local function jisuankonmgyu(id,zongshu)
		if id==5 then
			return qishihang,qishikongyu
		else
			local hangShu=math.ceil(zongshu/BankFrame.meihang)
			local kongyu=hangShu*BankFrame.meihang-zongshu
			return hangShu,kongyu
		end
	end

	local shang_allshu=jisuanzongshu(id)
	local shang_hang,shang_yushu=jisuankonmgyu(id,shang_allshu)
	local NEWsize=size-shang_yushu
	local hangShu=math.ceil(NEWsize/BankFrame.meihang)
	local new_kongyu,new_hangshu=hangShu*BankFrame.meihang-NEWsize,hangShu+shang_hang
	for slot=1,size do
		local itemF = _G[name.."Item"..slot]
		itemF:ClearAllPoints();
		if slot==1 then
			itemF:SetPoint("TOPRIGHT", BankSlotsFrame, "TOPRIGHT", -new_kongyu*BagdangeW-14, -new_hangshu*BagdangeW-34);
			_G[name.."PortraitButton"]:ClearAllPoints();
			_G[name.."PortraitButton"]:SetPoint("TOPLEFT", BankSlotsFrame, "TOPRIGHT", 0, -(42*(id-4))-18);
		else
			local yushu=math.fmod((slot+new_kongyu-1),BankFrame.meihang)
			local itemFshang = _G[name.."Item"..(slot-1)]
			if yushu==0 then
				itemF:SetPoint("BOTTOMLEFT", itemFshang, "TOPLEFT", (BankFrame.meihang-1)*BagdangeW, 4);
			else
				itemF:SetPoint("RIGHT", itemFshang, "LEFT", -5, 0);
			end
		end
	end
	local ZONGGEZI=GetContainerNumSlots(5)+GetContainerNumSlots(6)+GetContainerNumSlots(7)+GetContainerNumSlots(8)+GetContainerNumSlots(9)+GetContainerNumSlots(10)+GetContainerNumSlots(11)+yinhangmorengezishu[1]
	local hangShuALL=math.ceil(ZONGGEZI/BankFrame.meihang)
	local gaoduvvv=hangShuALL*BagdangeW
	Update_BankFrame_Height(gaoduvvv)
end
-------------------
local function zhegnheBANK_Open()
	local BKregions = {BankFrame:GetRegions()}
	for i=1,#BKregions do
		if not BKregions[i]:GetName() then
			BKregions[i]:Hide()
		end
	end
	local BKregions0 = {BankSlotsFrame:GetRegions()}
	for i=1,#BKregions0 do
		BKregions0[i]:SetAlpha(0)
	end
	local BKregions1 = {BankFramePurchaseInfo:GetRegions()}
	for i=1,#BKregions1 do
		BKregions1[i]:Hide()
	end
	for i=1,yinhangmorengezishu[2] do
		BankSlotsFrame["Bag"..i]:SetScale(0.76);
		BankSlotsFrame["Bag"..i]:ClearAllPoints();
		if i==1 then
			BankSlotsFrame["Bag"..i]:SetPoint("TOPLEFT", BankFrameItem1, "BOTTOMLEFT", 80, 100);
		else
			BankSlotsFrame["Bag"..i]:SetPoint("LEFT", BankSlotsFrame["Bag"..(i-1)], "RIGHT", 0, 0);
		end
	end
	for i = 1, yinhangmorengezishu[1] do
		_G["BankFrameItem"..i]:ClearAllPoints();
		if i==1 then
			_G["BankFrameItem"..i]:SetPoint("TOPLEFT", BankSlotsFrame, "TOPLEFT", 26, -76);
		else
			local yushu=math.fmod(i-1,BankFrame.meihang)
			if yushu==0 then
				_G["BankFrameItem"..i]:SetPoint("TOPLEFT", _G["BankFrameItem"..(i-BankFrame.meihang)], "BOTTOMLEFT", 0, -4);
			else
				_G["BankFrameItem"..i]:SetPoint("LEFT", _G["BankFrameItem"..(i-1)], "RIGHT", 5, 0);
			end
		end
	end
	BankFrameTitleText:ClearAllPoints();
	BankFrameTitleText:SetPoint("TOP", BankFrame, "TOP", 0, -15);
	BankFramePurchaseButton:SetWidth(90)
	BankFramePurchaseButton:ClearAllPoints();
	BankFramePurchaseButton:SetPoint("TOPLEFT", BankSlotsFrame, "TOPLEFT", 300, -42);
	BankFramePurchaseButtonText:SetPoint("RIGHT", BankFramePurchaseButton, "RIGHT", -8, 0);
	BankFrameDetailMoneyFrame:ClearAllPoints();
	BankFrameDetailMoneyFrame:SetPoint("RIGHT", BankFramePurchaseButtonText, "LEFT", 6, -1);
	BankCloseButton:SetPoint("CENTER", BankFrame, "TOPRIGHT", -11, -22);
	BankFrameMoneyFrame:SetPoint("BOTTOMRIGHT", BankFrame, "BOTTOMRIGHT", -10, 11);
	local hangShuALL=math.ceil(yinhangmorengezishu[1]/BankFrame.meihang)
	local gaoduvvv=hangShuALL*BagdangeW
	Update_BankFrame_Height(gaoduvvv)
end
----保存离线数据-----
local function SAVE_lixian_data(bagID, slot,wupinshujuinfo)
	if tocversion<30000 then
		local icon, itemCount, locked, quality, readable, lootable, itemLink, isFiltered, noValue, itemID = GetContainerItemInfo(bagID, slot)
		if itemID then
			local wupinxinxi={itemID,itemLink,itemCount,0,false}
			local itemName,itemLink,itemQuality,itemLevel,itemMinLevel,itemType,itemSubType,itemStackCount,itemEquipLoc,itemTexture,sellPrice,classID = GetItemInfo(itemID);
			wupinxinxi[4]=itemStackCount
			if classID==2 or classID==4 then
				wupinxinxi[5]=true
			end
			table.insert(wupinshujuinfo, wupinxinxi);
		end
	else
		local ItemInfo= C_Container.GetContainerItemInfo(bagID, slot);
		if ItemInfo then
			local wupinxinxi={ItemInfo.itemID,ItemInfo.hyperlink,ItemInfo.stackCount,0,false}
			local itemName,itemLink,itemQuality,itemLevel,itemMinLevel,itemType,itemSubType,itemStackCount,itemEquipLoc,itemTexture,sellPrice,classID = GetItemInfo(ItemInfo.itemID);
			wupinxinxi[4]=itemStackCount
			if classID==2 or classID==4 then
				wupinxinxi[5]=true
			end
			table.insert(wupinshujuinfo, wupinxinxi);
		end
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
	PIG["BagBank"]["lixian"][PIG_renwuming]["C"] = wupinshujuinfo
end
local function SAVE_BAG()
	if InCombatLockdown() then return end
	local wupinshujuinfo = {}
	for f=1,#bagID do
		for ff=1,GetContainerNumSlots(bagID[f]) do
			SAVE_lixian_data(bagID[f], ff,wupinshujuinfo)
		end
	end
	PIG["BagBank"]["lixian"][PIG_renwuming]["BAG"] = wupinshujuinfo
	PIG["BagBank"]["lixian"][PIG_renwuming]["G"] = GetMoney();
end
local function SAVE_BANK()
	if InCombatLockdown() then return end
	if BankFrame:IsShown() then
		local wupinshujuinfo = {}
		for f=1,#bankID do
			if f==1 then
				wupinshujuinfo.allnum=yinhangmorengezishu[1]
			else
				wupinshujuinfo.allnum=GetContainerNumSlots(bankID[f])
			end
			for ff=1,wupinshujuinfo.allnum do
				SAVE_lixian_data(bankID[f], ff,wupinshujuinfo)
			end
		end
		PIG["BagBank"]["lixian"][PIG_renwuming]["BANK"] = wupinshujuinfo
	end
end
--离线显示
local function Show_lixian_data(frameF,renwu,shuju,meihang,zongshu)
	if shuju=="BANK" then
		frameF.biaoti:SetText(renwu.." 的银行");
	elseif shuju=="BAG" then
		frameF.biaoti:SetText(renwu.." 的背包");
	elseif shuju=="C" then
		local framename=frameF:GetName()
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
	local framename=frameF:GetName()
	local zongshu=#PIG["BagBank"]["lixian"][renwu][shuju]
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
				local itemLink = PIG["BagBank"]["lixian"][renwu][shuju][i][2]
				if itemLink then
					SetItemButtonTexture(frameX, GetItemIcon(itemLink))
					if PIG["FramePlus"]["Character_ItemLevel"] then
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
		frameF:SetWidth(meihang*BagdangeW+23)
		--排序格式化
		for i=1,BaglixianNum do
			local frameX = _G[framename.."_item_"..i]
			if i>1 then
				local yushu=math.fmod((i-1),meihang)	
				frameX:ClearAllPoints();
				if yushu==0 then
					frameX:SetPoint("TOPLEFT", _G[framename.."_item_"..(i-meihang)], "BOTTOMLEFT", 0, 0);
				else
					frameX:SetPoint("LEFT", _G[framename.."_item_"..(i-1)], "RIGHT", 0, 0);
				end
			end
			frameX:Hide();
			frameX.LV:SetText("")
		end
		frameF:SetHeight(math.ceil(zongshu/meihang)*(BagdangeW)+96)
		for i=1,zongshu do
			local frameX=_G[framename.."_item_"..i]
			frameX:Show();
			local itemLink = PIG["BagBank"]["lixian"][renwu][shuju][i][2]
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
				local MaxCount = PIG["BagBank"]["lixian"][renwu][shuju][i][4]
				if MaxCount>1 then
					frameX.shuliang:SetText(PIG["BagBank"]["lixian"][renwu][shuju][i][3])
				end
				if PIG["BagBank"]["wupinLV"] then
					local ShowLV = PIG["BagBank"]["lixian"][renwu][shuju][i][5]
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

--刷新背包LV
local function shuaxin_LV(framef, id, slot)
	framef.ZLV:SetText();
	local itemLink = GetContainerItemLink(id, slot)
	if itemLink then
		local _,_,itemQuality,_,_,_,_,_,_,_,_,classID = GetItemInfo(itemLink);
		if itemQuality then
			if classID==2 or classID==4 then
				local effectiveILvl = GetDetailedItemLevelInfo(itemLink)
				framef.ZLV:SetText(effectiveILvl);
				local r, g, b = GetItemQualityColor(itemQuality);
				framef.ZLV:SetTextColor(r, g, b, 1);
			end
		end
	end
end
local function Bag_Item_lv(frame, size, id)
	if id==-2 then return end
	if frame and size then
		local fujiFF=frame:GetName()
		for slot =1, size do
			local framef = _G[fujiFF.."Item"..size+1-slot]
			shuaxin_LV(framef, id, slot)
		end
	else
		local Fid=IsBagOpen(id)
		if Fid then
			local baogeshu=GetContainerNumSlots(id)
			for slot =1, baogeshu do
				local framef = _G["ContainerFrame"..Fid.."Item"..baogeshu+1-slot]
				shuaxin_LV(framef, id, slot)
			end
		end
	end
end
--银行默认格子LV
local function shuaxinyinhangMOREN(arg1)
	if arg1>yinhangmorengezishu[1] then return end
	local framef=_G["BankFrameItem"..arg1];
	shuaxin_LV(framef, -1, arg1)
end
--银行默认格子染色
local function shuaxin_ranse(framef,id,slot)
	framef.ranse:Hide()
	local itemLink = GetContainerItemLink(id, slot)
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
	shuaxin_ranse(framef, -1, arg1)
end
--刷新背包染色
local function Bag_Item_Ranse(frame, size, id)
	if id==-2 then return end
	if frame and size then
		local fujiFF=frame:GetName()
		for slot =1, size do
			local framef=_G[fujiFF.."Item"..size+1-slot]
			shuaxin_ranse(framef,id,slot)
		end
	else
		local Fid=IsBagOpen(id)
		if Fid then
			local baogeshu=GetContainerNumSlots(id)
			for slot =1, baogeshu do
				local framef=_G["ContainerFrame"..Fid.."Item"..baogeshu+1-slot];
				shuaxin_ranse(framef,id,slot)
			end
		end
	end
end
--其他角色数量
GameTooltip:HookScript("OnTooltipSetItem", function(self)
	if not PIG["BagBank"]["qitashulaing"] then return end
	local _, link = self:GetItem()
	if link then
		local itemID = GetItemInfoInstant(link)
		if itemID==6948 then return end
		local renwuWupinshu={}
		local renwuWupinINFO=PIG["BagBank"]["lixian"]
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
				local zhiyeIDhao = renwuWupinINFO[k]["ClassN"] or 0
				if tonumber(zhiyeIDhao)>0 then
					local classInfo = C_CreatureInfo.GetClassInfo(zhiyeIDhao)
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
				self:AddDoubleLine(renwuWupinshu[i][1],renwuWupinshu[i][2])
				renwuWupinshu.hejishu=renwuWupinshu.hejishu+renwuWupinshu[i][3]
			end
			if yiyouwupinjuese>1 then
				self:AddDoubleLine("|cff00FF00所有角色|r","|cff00FF00合计:|r|cffFFFFFF"..renwuWupinshu.hejishu)
			end
			self:Show()
		end
	end
end)

--===========================================
local XWidth, XHeight =CharacterHeadSlot:GetWidth(),CharacterHeadSlot:GetHeight()
local ADD_BagBankBGtex=addonTable.ADD_BagBankBGtex
--------
function BagBankfun.Zhenghe(Rneirong,tabbut)
	if not PIG["BagBank"]["Zhenghe"] or BAGheji_UI then return end
	BagBankfun.qiyongzidongzhengli()
	local wanjia, realm = UnitFullName("player")
	local realm=realm or GetRealmName()
	PIG_renwuming = wanjia.."-"..realm
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
	    famrr.ranse = famrr:CreateTexture(nil, "OVERLAY");
	    famrr.ranse:SetTexture("Interface\\Buttons\\UI-ActionButton-Border");
	    famrr.ranse:SetBlendMode("ADD");
	    famrr.ranse:SetSize(XWidth*1.8, XHeight*1.8);
	    famrr.ranse:SetPoint("CENTER", famrr, "CENTER", 0, 0);
	    famrr.ranse:Hide()
	end
	hooksecurefunc("ContainerFrame_Update", function(frame)
		if not PIG["BagBank"]["JunkShow"] then return end
		local id = frame:GetID();
		local name = frame:GetName();
		for i=1, frame.size, 1 do
			local itemButton = _G[name.."Item"..i];
			if tocversion<30000 then
				local _,_,_, quality = GetContainerItemInfo(id,itemButton:GetID())
				if quality and quality==0 then
					itemButton.JunkIcon:Show();
				end
			else
				local ItemInfo= C_Container.GetContainerItemInfo(id,itemButton:GetID());
				if ItemInfo and ItemInfo.quality==0 then
					itemButton.JunkIcon:Show();
				end
			end
		end
	end)
	------
	local fujiBagFrame
	local function ADD_lixianSet()
		if NDui and NDuiDB["Bags"]["Enable"] then
			fujiBagFrame = NDui_BackpackBag
			fujiBagFrame.lixianBut = PIGFrame(fujiBagFrame)
			fujiBagFrame.lixianBut:PIGSetBackdrop()
			fujiBagFrame.lixianBut:SetSize(22,22);	
			fujiBagFrame.lixianBut:SetPoint("TOPLEFT",fujiBagFrame,"TOPLEFT",170,-5)
			fujiBagFrame.shezhi = PIGButton(fujiBagFrame,{"TOPLEFT",fujiBagFrame,"TOPLEFT",210,-5},{22,22})
		elseif ElvUI then
			fujiBagFrame = ElvUI_ContainerFrame
			fujiBagFrame.lixianBut = PIGFrame(fujiBagFrame)
			fujiBagFrame.lixianBut:PIGSetBackdrop()
			fujiBagFrame.lixianBut:SetSize(22,22);	
			fujiBagFrame.lixianBut:SetPoint("TOPLEFT",fujiBagFrame,"TOPLEFT",170,-5)
			fujiBagFrame.shezhi = PIGButton(fujiBagFrame,{"TOPLEFT",fujiBagFrame,"TOPLEFT",210,-5},{22,22})
		else
			local data = {
				["BagdangeW"]=BagdangeW,
				["meihang"]=PIG["BagBank"]["BAGmeihangshu"],
				["suofang"]=PIG["BagBank"]["BAGsuofangBili"],
				["lixianNum"]="zhengheBAG",
			}
			local BAGheji=BagBankFrame(UIParent,{"CENTER",UIParent,"CENTER",420,-10},"BAGheji_UI",data)
			fujiBagFrame = BAGheji
			fujiBagFrame:SetToplevel(true)
			fujiBagFrame:HookScript("OnHide",function(self)
				CloseBag(0);CloseBag(1);CloseBag(2);CloseBag(3);CloseBag(4);
			end)
			fujiBagFrame.biaoti = PIGFontString(fujiBagFrame,{"TOP", fujiBagFrame, "TOP",10, -14},PIG_renwuming)
			fujiBagFrame.Close:HookScript("OnClick",  function (self)
				CloseAllBags()
			end);
			if fujiBagFrame.portrait then
				SetPortraitTexture(fujiBagFrame.portrait, "player")
			end
			local wwc,hhc = 28,28
			fujiBagFrame.lixianBut = CreateFrame("Frame",nil,fujiBagFrame);
			fujiBagFrame.lixianBut:SetSize(wwc,hhc);	
			fujiBagFrame.lixianBut:SetPoint("TOPLEFT",fujiBagFrame,"TOPLEFT",256,-36)
			fujiBagFrame.lixianBut.Border = fujiBagFrame.lixianBut:CreateTexture(nil, "OVERLAY");
			fujiBagFrame.lixianBut.Border:SetTexture("Interface/Minimap/MiniMap-TrackingBorder");
			fujiBagFrame.lixianBut.Border:SetSize(wwc*1.7,hhc*1.7);
			fujiBagFrame.lixianBut.Border:SetPoint("TOPLEFT", 0, 0)
			fujiBagFrame.shezhi = CreateFrame("Button",nil,fujiBagFrame);
			fujiBagFrame.shezhi:SetHighlightTexture("Interface/Minimap/UI-Minimap-ZoomButton-Highlight");
			fujiBagFrame.shezhi:SetSize(wwc,hhc);
			fujiBagFrame.shezhi:SetPoint("TOPLEFT",fujiBagFrame,"TOPLEFT",296,-36);
			fujiBagFrame.shezhi:RegisterForClicks("LeftButtonUp","RightButtonUp")

			fujiBagFrame.shezhi.Border = fujiBagFrame.shezhi:CreateTexture(nil, "OVERLAY");
			fujiBagFrame.shezhi.Border:SetTexture("Interface/Minimap/MiniMap-TrackingBorder");
			fujiBagFrame.shezhi.Border:SetSize(wwc*1.7,hhc*1.7);
			fujiBagFrame.shezhi.Border:SetPoint("TOPLEFT", 0, 0);
			fujiBagFrame.Search = CreateFrame("EditBox", nil, fujiBagFrame, "BagSearchBoxTemplate");
			fujiBagFrame.Search:SetSize(120,24);
			fujiBagFrame.Search:SetPoint("TOPLEFT",fujiBagFrame,"TOPLEFT",78,-37);

			fujiBagFrame.AutoSort = CreateFrame("Button",nil,fujiBagFrame, "TruncatedButtonTemplate");
			fujiBagFrame.AutoSort:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square");
			fujiBagFrame.AutoSort:SetSize(24,24);
			fujiBagFrame.AutoSort:SetPoint("TOPLEFT",fujiBagFrame,"TOPLEFT",214,-38);
			fujiBagFrame.AutoSort.Tex = fujiBagFrame.AutoSort:CreateTexture(nil, "BORDER");
			fujiBagFrame.AutoSort.Tex:SetTexture(zhengliIcon);
			fujiBagFrame.AutoSort.Tex:SetTexCoord(0.168,0.27,0.837,0.934);
			fujiBagFrame.AutoSort.Tex:SetAllPoints(fujiBagFrame.AutoSort)

			fujiBagFrame.AutoSort.Tex1 = fujiBagFrame.AutoSort:CreateTexture(nil, "BORDER");
			fujiBagFrame.AutoSort.Tex1:SetTexture(zhengliIcon);
			fujiBagFrame.AutoSort.Tex1:SetTexCoord(0.008,0.11,0.86,0.958);
			fujiBagFrame.AutoSort.Tex1:SetAllPoints(fujiBagFrame.AutoSort)
			fujiBagFrame.AutoSort.Tex1:Hide();
			fujiBagFrame.AutoSort:SetScript("OnMouseDown", function (self)
				self.Tex:Hide();
				self.Tex1:Show();
			end);
			fujiBagFrame.AutoSort:SetScript("OnMouseUp", function (self)
				self.Tex:Show();
				self.Tex1:Hide();
			end);
			fujiBagFrame.AutoSort:SetScript("OnClick",  function (self)
				PlaySoundFile(567463, "Master")
				BagBankfun.SortBags()
			end);
			--分类设置
			for vb=1,13 do
				local fameXX = _G["ContainerFrame"..vb.."PortraitButton"]
				fameXX.ICONpig = fameXX:CreateTexture(nil, "BORDER");
				fameXX.ICONpig:SetTexture();
				fameXX.ICONpig:SetSize(25,25);
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
			local function xuanzhuangsanjiao(self,open)
				if open then
					if tocversion<30000 then
						self:SetRotation(-3.1415926, 0.4, 0.5)
					else
						self:SetRotation(-3.1415926, {x=0.4, y=0.5})
					end
				else
					if tocversion<30000 then
						self:SetRotation(0, 0.4, 0.5)
					else
						self:SetRotation(0, {x=0.4, y=0.5})
					end
					
				end
			end
			fujiBagFrame.fenlei = CreateFrame("Button",nil,fujiBagFrame, "TruncatedButtonTemplate");
			fujiBagFrame.fenlei:SetHighlightTexture("interface/buttons/ui-common-mousehilight.blp");
			fujiBagFrame.fenlei:SetSize(18,18);
			fujiBagFrame.fenlei:SetPoint("TOPRIGHT",fujiBagFrame,"TOPRIGHT",-6,-42);
			fujiBagFrame.fenlei.Tex = fujiBagFrame.fenlei:CreateTexture(nil, "BORDER");
			fujiBagFrame.fenlei.Tex:SetTexture("interface/chatframe/chatframeexpandarrow.blp");
			fujiBagFrame.fenlei.Tex:SetSize(18,18);
			fujiBagFrame.fenlei.Tex:SetPoint("CENTER",fujiBagFrame.fenlei,"CENTER",2,0);
			fujiBagFrame.fenlei:SetScript("OnMouseDown", function (self)
				self.Tex:SetPoint("CENTER",fujiBagFrame.fenlei,"CENTER",3,-1);
			end);
			fujiBagFrame.fenlei:SetScript("OnMouseUp", function (self)
				self.Tex:SetPoint("CENTER",fujiBagFrame.fenlei,"CENTER",2,0);
			end);
			fujiBagFrame.fenlei.show=false
			fujiBagFrame.fenlei:SetScript("OnClick",  function (self)
				if fujiBagFrame.fenlei.show then
					fujiBagFrame.fenlei.show=false
					xuanzhuangsanjiao(self.Tex,false)
					for vb=1,#bagID do
						local Fid=IsBagOpen(bagID[vb])
						if Fid then
							_G["ContainerFrame"..Fid.."PortraitButton"]:Hide()
						end
					end
				else
					fujiBagFrame.fenlei.show=true
					xuanzhuangsanjiao(self.Tex,true)
					local bagicon={
						133633,
						CharacterBag0SlotIconTexture:GetTexture(),
						CharacterBag1SlotIconTexture:GetTexture(),
						CharacterBag2SlotIconTexture:GetTexture(),
						CharacterBag3SlotIconTexture:GetTexture(),
					}
					for vb=1,#bagID do
						local Fid=IsBagOpen(bagID[vb])
						if Fid then
							local fameXX = _G["ContainerFrame"..Fid.."PortraitButton"]
							fameXX.ICONpig:SetTexture(bagicon[bagID[vb]+1]);
							fameXX:Show()
						end
					end
				end
			end);
			---=====================
			if tocversion>30000 then
				hooksecurefunc("ManageBackpackTokenFrame", function(backpack)
					BackpackTokenFrame:ClearAllPoints();
					BackpackTokenFrame:SetPoint("TOPRIGHT", BAGheji_UI.moneyframe, "TOPLEFT", -4, 5);
					BackpackTokenFrame:SetParent(BAGheji_UI);
					local regions = { BackpackTokenFrame:GetRegions() }
					for gg=1,#regions do
						regions[gg]:Hide()
						--regions[gg]:SetTexCoord(0.05,0.8,0,0.74);
					end	
					if (not backpack) then
						backpack = GetBackpackFrame();
					end
					if backpack then
						backpack:SetHeight(0);
					end
				end)
			end
			MainMenuBarBackpackButton:SetScript("OnClick", function(self, button)
				if ( IsBagOpen(0) ) then
					CloseAllBags()
				else
					OpenAllBags()
				end
			end)
			CharacterBag0Slot:SetScript("OnClick", function(self, button)
				if ( IsBagOpen(0) ) then
					CloseAllBags()
				else
					OpenAllBags()
				end
			end)
			CharacterBag1Slot:SetScript("OnClick", function(self, button)
				if ( IsBagOpen(0) ) then
					CloseAllBags()
				else
					OpenAllBags()
				end
			end)
			CharacterBag2Slot:SetScript("OnClick", function(self, button)
				if ( IsBagOpen(0) ) then
					CloseAllBags()
				else
					OpenAllBags()
				end
			end)
			CharacterBag3Slot:SetScript("OnClick", function(self, button)
				if ( IsBagOpen(0) ) then
					CloseAllBags()
				else
					OpenAllBags()
				end
			end)
			local Old_ContainerFrame_GenerateFrame=ContainerFrame_GenerateFrame
			ContainerFrame_GenerateFrame= function(frame, size, id)
				local name = frame:GetName();
				for i=1,size do
					_G[name.."Item"..i]:ClearAllPoints();
				end
				return Old_ContainerFrame_GenerateFrame(frame, size, id);
			end
			hooksecurefunc("ContainerFrame_GenerateFrame", function(frame, size, id)
				--print(id)
				if id==-2 then
					shuaxinKEYweizhi(frame)
				end
				if id>=0 and id<5 then
					shuaxinBAGweizhi(frame, size, id)
				end
				if id>4 and id<12 then
					shuaxinBANKweizhi(frame, size, id)
				end
				if PIG["BagBank"]["wupinLV"] then Bag_Item_lv(frame, size, id) end
				if PIG["BagBank"]["wupinRanse"] then Bag_Item_Ranse(frame, size, id) end
			end)
			local Old_ToggleBackpack=ToggleBackpack
			ToggleBackpack= function() --背包按键打开
				if ( IsOptionFrameOpen() ) then
					return;
				end	
				if ( IsBagOpen(0) ) then
					for i=1,#bagID do
						local Fid = IsBagOpen(bagID[i]);
						if Fid then
							local frame = _G["ContainerFrame"..Fid];
							if ( frame:IsShown() ) then
								frame:Hide();
								EventRegistry:TriggerEvent("ContainerFrame.CloseBackpack");
							end
							if ( BackpackTokenFrame ) then
								BackpackTokenFrame:Hide();
							end
						end
					end
					CloseBag(-2);
					BAGheji:Hide()
				else
					local Fid=IsBagOpen(-2)
					if Fid then 	
						local frameff = _G["ContainerFrame"..Fid]
						frameff:Hide();
					end
					ToggleBag(0);ToggleBag(1);ToggleBag(2);ToggleBag(3);ToggleBag(4);
					if ( ManageBackpackTokenFrame ) then
						BackpackTokenFrame_Update();
						ManageBackpackTokenFrame();
					end
					BAGheji:Show()
				end	
			end
			---系统关闭背包事件追加关闭背景
			hooksecurefunc("CloseBackpack", function()
				BAGheji:Hide()
				BAGheji.fenlei.show=false
				xuanzhuangsanjiao(BAGheji.fenlei.Tex,false)
			end);
			UIParent:HookScript("OnHide", function(self)
				BAGheji_UI:Hide()
				lixianBag_UI:Hide()
				lixianC_UI:Hide()
				lixianBank_UI:Hide()
			end)
		end
		fujiBagFrame.meihang=PIG["BagBank"]["BAGmeihangshu"]
		fujiBagFrame.suofang=PIG["BagBank"]["BAGsuofangBili"]
		fujiBagFrame.lixianBut.Tex = fujiBagFrame.lixianBut:CreateTexture()
		fujiBagFrame.lixianBut.Tex:SetTexture(132050);
		fujiBagFrame.lixianBut.Tex:SetSize(18,18);
		fujiBagFrame.lixianBut.Tex:SetPoint("CENTER",-1,1);
		fujiBagFrame.shezhi.Tex = fujiBagFrame.shezhi:CreateTexture(nil,"OVERLAY");
		fujiBagFrame.shezhi.Tex:SetTexture("interface/gossipframe/healergossipicon.blp");
		fujiBagFrame.shezhi.Tex:SetPoint("CENTER", 0, 0);
		fujiBagFrame.shezhi.Tex:SetSize(18,18);	
		-------
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
					Show_lixian_data(lixianBank_UI,PIG_renwuming,"BANK",BankFrame.meihang,BanklixianNum)
				end
			end
		end)
		function fujiBagFrame.lixianBut.xiala:PIGDownMenu_Update_But(self, level, menuList)
			local danxuanerjiList = {}
			local KucunName={["C"]="已装备物品",["BAG"]="背包物品",["BANK"]="银行物品"}
			for k,v in pairs(PIG["BagBank"]["lixian"]) do	
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
								Show_lixian_data(lixianBank_UI,menuList[x][3],"BANK",BankFrame.meihang,BanklixianNum)
								PIGCloseDropDownMenus()
							end
						elseif menuList[x][2]=="C" then
							info.func = function()
								Show_lixian_data(lixianC_UI,menuList[x][3],"C",menuList[x][4],19)
								PIGCloseDropDownMenus()
							end
						elseif menuList[x][2]=="BAG" then
							info.func = function()
								Show_lixian_data(lixianBag_UI,menuList[x][3],"BAG",fujiBagFrame.meihang,BaglixianNum)
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
		---
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
				
				local lixianheji = PIG["BagBank"]["lixian"]
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
		-----
		if NDui_BackpackBag then
			ADDshowEV(fujiBagFrame.shezhi)
		elseif ElvUI_ContainerFrame then
			ADDshowEV(fujiBagFrame.shezhi)
		else
			ADDshowEV(fujiBagFrame.moneyframe)
			local monheji = {fujiBagFrame.moneyframe:GetChildren()}
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
	C_Timer.After(1,BAGjiazaifou)
	--交易打开
	hooksecurefunc("TradeFrame_OnShow", function(self)
		if PIG["BagBank"]["jiaoyiOpen"] then
			if(UnitExists("NPC"))then
				OpenAllBags()
			end
		end
	end);
	---系统银行处理
	BankFrame.meihang=PIG["BagBank"]["BANKmeihangshu"]
	BankFrame.suofang=PIG["BagBank"]["BANKsuofangBili"]
	BankFrame.AutoSort = CreateFrame("Button",nil,BankFrame, "TruncatedButtonTemplate");
	BankFrame.AutoSort:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square");
	BankFrame.AutoSort:SetSize(24,24);
	BankFrame.AutoSort:SetPoint("TOPRIGHT",BankFrame,"TOPRIGHT",-80,-41);
	BankFrame.AutoSort.Tex = BankFrame.AutoSort:CreateTexture(nil, "BORDER");
	BankFrame.AutoSort.Tex:SetTexture(zhengliIcon);
	BankFrame.AutoSort.Tex:SetTexCoord(0.168,0.27,0.837,0.934);
	BankFrame.AutoSort.Tex:SetAllPoints(BankFrame.AutoSort)
	BankFrame.AutoSort.Tex1 = BankFrame.AutoSort:CreateTexture(nil, "BORDER");
	BankFrame.AutoSort.Tex1:SetTexture(zhengliIcon);
	BankFrame.AutoSort.Tex1:SetTexCoord(0.008,0.11,0.86,0.958);
	BankFrame.AutoSort.Tex1:SetAllPoints(BankFrame.AutoSort)
	BankFrame.AutoSort.Tex1:Hide();
	BankFrame.AutoSort:SetScript("OnMouseDown", function (self)
		self.Tex:Hide();
		self.Tex1:Show();
	end);
	BankFrame.AutoSort:SetScript("OnMouseUp", function (self)
		self.Tex:Show();
		self.Tex1:Hide();
	end);
	BankFrame.AutoSort:SetScript("OnClick",  function (self)
		PlaySoundFile(567463, "Master")
		BagBankfun.SortBankBags()
	end);
	--分类设置
	BankSlotsFrame.fenlei = CreateFrame("Button",nil,BankSlotsFrame, "TruncatedButtonTemplate");
	BankSlotsFrame.fenlei:SetHighlightTexture("interface/buttons/ui-common-mousehilight.blp");
	BankSlotsFrame.fenlei:SetSize(18,18);
	BankSlotsFrame.fenlei:SetPoint("TOPRIGHT",BankSlotsFrame,"TOPRIGHT",-12,-44);
	BankSlotsFrame.fenlei.Tex = BankSlotsFrame.fenlei:CreateTexture(nil, "BORDER");
	BankSlotsFrame.fenlei.Tex:SetTexture("interface/chatframe/chatframeexpandarrow.blp");
	BankSlotsFrame.fenlei.Tex:SetSize(18,18);
	BankSlotsFrame.fenlei.Tex:SetPoint("CENTER",BankSlotsFrame.fenlei,"CENTER",2,0);
	BankSlotsFrame.fenlei:SetScript("OnMouseDown", function (self)
		self.Tex:SetPoint("CENTER",BankSlotsFrame.fenlei,"CENTER",3,-1);
	end);
	BankSlotsFrame.fenlei:SetScript("OnMouseUp", function (self)
		self.Tex:SetPoint("CENTER",BankSlotsFrame.fenlei,"CENTER",2,0);
	end);
	BankSlotsFrame.fenlei.show=false
	local bagicon={BankSlotsFrame.Bag1.icon,BankSlotsFrame.Bag2.icon,BankSlotsFrame.Bag3.icon,BankSlotsFrame.Bag4.icon,BankSlotsFrame.Bag5.icon,BankSlotsFrame.Bag6.icon,}
	if tocversion>19999 then
		table.insert(bagicon, BankSlotsFrame.Bag7.icon);
	end
	BankSlotsFrame.fenlei:SetScript("OnClick",  function (self)
		if BankSlotsFrame.fenlei.show then
			BankSlotsFrame.fenlei.show=false
			xuanzhuangsanjiao(self.Tex,false)
			for vb=2,#bankID do
				local Fid=IsBagOpen(bankID[vb])
				if Fid then
					_G["ContainerFrame"..Fid.."PortraitButton"]:Hide()
				end
			end
		else
			BankSlotsFrame.fenlei.show=true
			xuanzhuangsanjiao(self.Tex,true)
			for vb=2,#bankID do
				local Fid=IsBagOpen(bankID[vb])
				if Fid then
					local fameXX = _G["ContainerFrame"..Fid.."PortraitButton"]
					fameXX.ICONpig:SetTexture(bagicon[bankID[vb]-4]:GetTexture());
					fameXX:Show()
				end
			end
		end
	end);
	BankSlotsFrame:HookScript("OnHide", function(self)
		self.fenlei.show=false
		xuanzhuangsanjiao(self.fenlei.Tex,false)
	end);
	Create.BagBankBG(BankFrame,"pig_BankFrame_")
	--物品显示区域
	BankSlotsFrame.wupin = CreateFrame("Frame", nil, BankSlotsFrame,"BackdropTemplate")
	BankSlotsFrame.wupin:SetPoint("TOPLEFT", BankSlotsFrame, "TOPLEFT",21, -70);
	BankSlotsFrame.wupin:SetPoint("BOTTOMRIGHT", BankSlotsFrame, "BOTTOMRIGHT", -10, 30);
	BankSlotsFrame.wupin:EnableMouse(true)
	BankSlotsFrame.wupin:SetBackdrop( { bgFile = "interface/framegeneral/ui-background-marble.blp" });
	--离线背包---------
	local data = {
		["BagdangeW"]=BagdangeW-6,
		["meihang"]=PIG["BagBank"]["BAGmeihangshu"],
		["suofang"]=PIG["BagBank"]["BAGsuofangBili"],
		["lixianNum"]=BaglixianNum
	}
	local lixianBag=BagBankFrame(UIParent,{"CENTER",UIParent,"CENTER",-200,200},"lixianBag_UI",data,110)
	lixianBag.biaoti = PIGFontString(lixianBag,{"TOP", lixianBag, "TOP",10, -14})
	--离线银行------------
	local data = {
		["BagdangeW"]=BagdangeW-6,
		["meihang"]=BankFrame.meihang,
		["suofang"]=BankFrame.suofang,
		["lixianNum"]=BanklixianNum
	}
	local lixianBank=BagBankFrame(UIParent,{"CENTER",UIParent,"CENTER",-300, 200},"lixianBank_UI",data,120)
	lixianBank.biaoti = PIGFontString(lixianBank,{"TOP", lixianBank, "TOP",10, -14})
	BankFrame:HookScript("OnShow", function ()
		lixianBank:Hide()
	end)
	---离线已装备物品------------
	local lixianC=Create.CharacterFrame(UIParent,{"CENTER",UIParent,"CENTER",-100, 173},"lixianC_UI",130)
	-----------
	local BankshijianFrame = CreateFrame("Frame")
	BankshijianFrame:RegisterEvent("BAG_UPDATE_DELAYED")
	BankshijianFrame:RegisterEvent("BANKFRAME_OPENED")
	BankshijianFrame:RegisterEvent("PLAYERBANKSLOTS_CHANGED")
	BankshijianFrame:HookScript("OnEvent", function (self,event,arg1)
		if event=="PLAYERBANKSLOTS_CHANGED" then
			if PIG["BagBank"]["wupinLV"] then
				shuaxinyinhangMOREN(arg1)
			end
			if PIG["BagBank"]["wupinRanse"] then shuaxinyinhangMOREN_ranse(arg1) end
			C_Timer.After(0.4,SAVE_BANK)
		end
		if event=="BAG_UPDATE_DELAYED" then
			if lixianBank_UI:IsShown() then
				OpenBag(5);OpenBag(6);OpenBag(7);OpenBag(8);OpenBag(9);OpenBag(10);OpenBag(11);	
			end
		end
		if event=="BANKFRAME_OPENED" then
			if BAGheji.Portrait_TEX then
				SetPortraitTexture(BAGheji.Portrait_TEX, "player")
			end
			zhegnheBANK_Open()
			OpenBag(5);OpenBag(6);OpenBag(7);OpenBag(8);OpenBag(9);OpenBag(10);OpenBag(11);	
			if PIG["BagBank"]["wupinLV"] then
				for i=1,yinhangmorengezishu[1] do
					shuaxinyinhangMOREN(i)
				end
			end
			if PIG["BagBank"]["wupinRanse"] then
				for i=1,yinhangmorengezishu[1] do
					shuaxinyinhangMOREN_ranse(i) 
				end
			end
			C_Timer.After(0.4,SAVE_BANK)
		end
	end)
	---------------------
	local BAGhejishijianFrame = CreateFrame("Frame")
	BAGhejishijianFrame:RegisterEvent("PLAYER_ENTERING_WORLD");
	BAGhejishijianFrame:RegisterEvent("BAG_UPDATE_DELAYED")
	BAGhejishijianFrame:RegisterEvent("AUCTION_HOUSE_SHOW")
	BAGhejishijianFrame:RegisterUnitEvent("UNIT_MODEL_CHANGED","player")
	BAGhejishijianFrame:RegisterUnitEvent("UNIT_PORTRAIT_UPDATE","player")
	BAGhejishijianFrame:HookScript("OnEvent", function(self,event,arg1)
		if event=="PLAYER_ENTERING_WORLD" then
			local dangqianjusexinxi={["ClassN"]=0,["Race"]=0,["Lv"]=0,["G"]=0,["C"]={},["BAG"]={},["BANK"]={}}
			for k,v in pairs(PIG["BagBank"]["lixian"]) do
				for kk,vv in pairs(dangqianjusexinxi) do
					if PIG["BagBank"]["lixian"][k][kk]==nil then
						PIG["BagBank"]["lixian"][k][kk]=vv
					end
				end
			end
			local _, englishClass,classId= UnitClass("player");
			local raceName, raceFile, raceID = UnitRace("player")
			local level = UnitLevel("player")
			if PIG_renwuming then
				if PIG["BagBank"]["lixian"][PIG_renwuming]==nil then
					PIG["BagBank"]["lixian"][PIG_renwuming]=dangqianjusexinxi
				end
				PIG["BagBank"]["lixian"][PIG_renwuming]["ClassN"]=classId
				PIG["BagBank"]["lixian"][PIG_renwuming]["Race"]=raceID
				PIG["BagBank"]["lixian"][PIG_renwuming]["Lv"]=level
			end
		end
		if event=="AUCTION_HOUSE_SHOW" then
			if PIG["BagBank"]["AHOpen"] then
				if(UnitExists("NPC"))then
					OpenAllBags()
				end
			end
		end		
		if event=="BAG_UPDATE_DELAYED" then
			if self:IsShown() then
				CloseBag(1);CloseBag(2);CloseBag(3);CloseBag(4);
				OpenBag(1);OpenBag(2);OpenBag(3);OpenBag(4);
			end
		end
		if event=="UNIT_MODEL_CHANGED" then
			SAVE_C()
		end	
		if event=="UNIT_PORTRAIT_UPDATE" then
			if BAGheji_UI and BAGheji_UI.portrait then
				SetPortraitTexture(BAGheji_UI.portrait, "player")
			end
		end
		if event=="BAG_UPDATE" then
			if arg1>=0 and arg1<5 then
				if ContainerFrame1Item1:IsVisible() then
					if PIG["BagBank"]["wupinLV"] then Bag_Item_lv(nil, nil, arg1) end
					if PIG["BagBank"]["wupinRanse"] then Bag_Item_Ranse(nil, nil, arg1) end
				end
				C_Timer.After(0.4,SAVE_BAG)
			end
			if BankFrame:IsShown() then
				if arg1>4 then
					if PIG["BagBank"]["wupinLV"] then Bag_Item_lv(nil, nil, arg1) end
					if PIG["BagBank"]["wupinRanse"] then Bag_Item_Ranse(nil, nil, arg1) end
					C_Timer.After(0.4,SAVE_BANK)
				end
			end
		end
	end)
	local function zhixingbaocunCMD()
		SAVE_BAG()
		BAGhejishijianFrame:RegisterEvent("BAG_UPDATE")
	end
	C_Timer.After(8,zhixingbaocunCMD)
end