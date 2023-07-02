local _, addonTable = ...;
local _, _, _, tocversion = GetBuildInfo()
-------------
local Create = addonTable.Create
local PIGFrame=Create.PIGFrame
local PIGButton = Create.PIGButton
local PIGLine=Create.PIGLine
local PIGCloseBut=Create.PIGCloseBut
local PIGModbutton=Create.PIGModbutton
local PIGCheckbutton=Create.PIGCheckbutton
local PIGModCheckbutton=Create.PIGModCheckbutton
local PIGOptionsList_RF=Create.PIGOptionsList_RF
local PIGOptionsList_R=Create.PIGOptionsList_R
local PIGQuickBut=Create.PIGQuickBut
local Show_TabBut_R=Create.Show_TabBut_R
--
local CommonFun=addonTable.CommonFun
local GetContainerNumSlots = C_Container and C_Container.GetContainerNumSlots or GetContainerNumSlots
local GetContainerItemID = C_Container and C_Container.GetContainerItemID or GetContainerItemID
local GetContainerItemLink = C_Container and C_Container.GetContainerItemLink or GetContainerItemLink
local PickupContainerItem =C_Container and C_Container.PickupContainerItem or PickupContainerItem
-------
function QuickButUI:AutoSellBuy() end
function CommonFun.FastDiuqi()
	local fujiF,fujiTabBut=PIGOptionsList_R(AutoSellBuy_UI.F,"丢",60,"Left")
	fujiF:Show()
	fujiTabBut:Selected()
	CommonFun.ADDScroll(fujiF,"丢弃","Diuqi",17,PIGA["AutoSellBuy"]["Diuqi_List"],{false,"AutoSellBuy","Diuqi_List"})
	function QuickButUI:AutoSellBuy()	
		if PIGA["QuickBut"]["Open"] and PIGA["AutoSellBuy"]["Open"] and PIGA["AutoSellBuy"]["AddBut"] then
			local QkButUI = "QkBut_AutoSellBuy"
			if _G[QkButUI] then return end
			local QuickTooltip = "左击-|cff00FFFF丢弃指定物品|r\n右击-|cff00FFFF打开"..CommonFun.GnName.."|r"
			local QkBut=PIGQuickBut(QkButUI,QuickTooltip,134409,nil,CommonFun.FrameLevel)
			QkBut:SetScript("OnClick", function(self,button)
				if button=="LeftButton" then
					Pig_DelItem()
				else
					if AutoSellBuy_UI:IsShown() then
						AutoSellBuy_UI:Hide();
					else
						AutoSellBuy_UI:Show()
						Show_TabBut_R(AutoSellBuy_UI.F,fujiF,fujiTabBut)
					end
				end
			end);
			QuickButUI.FastOpen()
			QuickButUI.FastFen()
		end
	end
	local zidongkaishidiuqiFFF = CreateFrame("Frame");
	zidongkaishidiuqiFFF:RegisterEvent("BAG_UPDATE");
	zidongkaishidiuqiFFF:SetScript("OnEvent", function(self,event,arg1)
		if PIGA["AutoSellBuy"]["Diuqi_Tishi"] and QkBut_AutoSellBuy then
			local bnum=GetContainerNumSlots(arg1)
			for l=1,bnum do
				for kk=1,#PIGA["AutoSellBuy"]["Diuqi_List"] do
					local itemLink=PIG_ItemLink(GetContainerItemLink(arg1,l))
					local itemLink2=PIG_ItemLink(PIGA["AutoSellBuy"]["Diuqi_List"][kk][2])
					if itemLink==itemLink2 then
						QkBut_AutoSellBuy.Height:Show()
						break
					end
				end
			end
		end
	end);
	----
	fujiF.tishidiuqi = PIGCheckbutton(fujiF,{"TOPLEFT",fujiF,"TOPLEFT",20,-10},{"提示丢弃", "有可丢弃物品将会在功能动作条按钮提示"})
	fujiF.tishidiuqi:SetScript("OnClick", function (self)
		if self:GetChecked() then
			PIGA["AutoSellBuy"]["Diuqi_Tishi"]=true;
		else
			PIGA["AutoSellBuy"]["Diuqi_Tishi"]=false;
		end
	end);
	---
	StaticPopupDialogs["FUZHIXIAOHUIZHILING"] = {
		text = "因暴雪API改动，无法自动丢弃。\n新建一个宏并复制指令到宏内，拖动到技能条使用。\n或者复制到已有的宏尾部。这样在使用宏时将执行一次动作",
		button1 = "知道了",
		OnAccept = function()
			editBoxXX = ChatEdit_ChooseBoxForSend()
			ChatEdit_ActivateChat(editBoxXX)
			editBoxXX:Insert("/run Pig_DelItem()")
			editBoxXX:HighlightText()
		end,
		timeout = 0,
		whileDead = true,
		hideOnEscape = true,
	}
	fujiF.fuzhiCDM = PIGButton(fujiF,{"TOPLEFT",fujiF,"TOPLEFT",160,-10},{110,22},"复制丢弃指令");
	fujiF.fuzhiCDM:SetScript("OnClick", function(event, button)
		StaticPopup_Show ("FUZHIXIAOHUIZHILING");
	end)
	fujiF.yijianxiaohui = PIGButton(fujiF,{"TOPLEFT",fujiF,"TOPLEFT",100,-46},{100,22},"手动丢弃");
	fujiF.yijianxiaohui:SetScript("OnClick", function(event, button)
		Pig_DelItem()
	end)
	-----
	if PIGA["AutoSellBuy"]["Diuqi_Tishi"] then
		fujiF.tishidiuqi:SetChecked(true);
	end
end
----------
function Pig_DelItem()
	if QkBut_AutoSellBuy then
		QkBut_AutoSellBuy.Height:Hide();
	end
	if #PIGA["AutoSellBuy"]["Diuqi_List"]>0 then
		for i=0,4 do
			local xx=GetContainerNumSlots(i) 
			for j=1,xx do
				for k=1,#PIGA["AutoSellBuy"]["Diuqi_List"] do
					local itemLink=PIG_ItemLink(GetContainerItemLink(i,j))
					local itemLink2=PIG_ItemLink(PIGA["AutoSellBuy"]["Diuqi_List"][k][2])
					if itemLink==itemLink2 then
						PickupContainerItem(i,j);
						DeleteCursorItem(i,j);
					end
				end
			end 
		end
	else
		PIG_print("丢弃目录为空,右键设置");
	end
end