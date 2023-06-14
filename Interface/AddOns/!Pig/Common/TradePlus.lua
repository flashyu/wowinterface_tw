local _, addonTable = ...;
local _, _, _, tocversion = GetBuildInfo()
--
local Create=addonTable.Create
local PIGCheckbutton=Create.PIGCheckbutton
local PIGCheckbutton_R=Create.PIGCheckbutton_R
local PIGFontString=Create.PIGFontString
local CommonFun=addonTable.CommonFun
-------
TradeFrame.PIGinfo={
	["duixiang"]="",
	["TargetItem"]={nil,nil,nil,nil,nil,nil},
	["TargetMoney"]=0,
	["PlayerItem"]={nil,nil,nil,nil,nil,nil},
	["PlayerMoney"]=0,
}
-- TradeFrame:RegisterEvent("UI_INFO_MESSAGE");--交易信息
-- TradeFrame:RegisterEvent("TRADE_MONEY_CHANGED");--交易窗口的货币值更改时触发。
-- TradeFrame:RegisterEvent("TRADE_PLAYER_ITEM_CHANGED");
-- TradeFrame:RegisterEvent("TRADE_TARGET_ITEM_CHANGED");
-- TradeFrame:RegisterEvent("TRADE_SHOW");
-- TradeFrame:RegisterEvent("TRADE_CLOSED");
-- TradeFrame:RegisterEvent("TRADE_REQUEST_CANCEL");--取消交易尝试时触发。
-- TradeFrame:RegisterEvent("PLAYER_TRADE_MONEY");--当玩家进行交易时被触发
-- TradeFrame:RegisterEvent("TRADE_ACCEPT_UPDATE");--当玩家和目标接受按钮的状态更改时触发。
TradeFrame:HookScript("OnEvent",function (self,event,arg1,arg2,arg3,arg4,arg5)
	if event=="TRADE_SHOW" or event=="TRADE_PLAYER_ITEM_CHANGED" or event=="TRADE_TARGET_ITEM_CHANGED" or event=="TRADE_MONEY_CHANGED" then
		self.PIGinfo.duixiang=TradeFrameRecipientNameText:GetText();
		self.PIGinfo.TargetMoney=GetTargetTradeMoney();
		self.PIGinfo.PlayerMoney=GetPlayerTradeMoney();
		for i=1, MAX_TRADE_ITEMS, 1 do
			local TargetItemlink=GetTradeTargetItemLink(i)
			if TargetItemlink then
				local name, texture, numItems, quality, enchantment, canLoseTransmog, isBound = GetTradeTargetItemInfo(i);
				self.PIGinfo.TargetItem[i]={TargetItemlink,numItems}
			else
				self.PIGinfo.TargetItem[i]=nil
			end
			local PlayerItemLink=GetTradePlayerItemLink(i)
			if PlayerItemLink then
				local name, texture, numItems, quality, enchantment, canLoseTransmog, isBound = GetTradePlayerItemInfo(i);
				self.PIGinfo.PlayerItem[i]={PlayerItemLink,numItems}
			else
				self.PIGinfo.PlayerItem[i]=nil
			end 
		end
	end
end)
local CommonF=CommonFun.CommonF
CommonF.TradePlus = PIGCheckbutton_R(CommonF,{"交易界面提示","在交易界面显示对方职业和等级"})
CommonF.TradePlus:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["TradePlus"]["Open"]=true;
		CommonFun.jiaoyi()
	else
		PIGA["TradePlus"]["Open"]=false;
		Pig_Options_RLtishi_UI:Show()
	end
end);
---------------
CommonF:HookScript("OnShow", function(self)
	self.TradePlus:SetChecked(PIGA["TradePlus"]["Open"])
end)
function CommonFun.jiaoyi()
	if not PIGA["TradePlus"]["Open"] then return end
	if TradeFrame.zhiye then return end
	local www,hhh=28,28
	TradeFrame.zhiye = CreateFrame("Button", nil, TradeFrame);
	TradeFrame.zhiye:SetSize(www,hhh);
	TradeFrame.zhiye:SetPoint("TOP", TradeFrame, "TOP", 6, 18);
	TradeFrame.zhiye.Border = TradeFrame.zhiye:CreateTexture(nil, "BORDER");
	if tocversion>90000 then TradeFrame.zhiye:SetFrameLevel(555) end
	TradeFrame.zhiye.Border:SetTexture("Interface/Minimap/MiniMap-TrackingBorder");
	TradeFrame.zhiye.Border:SetSize(www+24,hhh+24);
	TradeFrame.zhiye.Border:ClearAllPoints();
	TradeFrame.zhiye.Border:SetPoint("CENTER", 10, -12);
	TradeFrame.zhiye.Icon = TradeFrame.zhiye:CreateTexture(nil, "ARTWORK");
	TradeFrame.zhiye.Icon:SetSize(www-9,hhh-9);
	TradeFrame.zhiye.Icon:ClearAllPoints();
	TradeFrame.zhiye.Icon:SetPoint("CENTER");
	TradeFrame.zhiye.Icon:SetTexture("Interface/TargetingFrame/UI-Classes-Circles");
	TradeFrame.dengji = CreateFrame("Button", nil, TradeFrame);
	TradeFrame.dengji:SetSize(www+2,hhh);
	TradeFrame.dengji:SetPoint("TOP", TradeFrame, "TOP", 48, -34);
	if tocversion>90000 then TradeFrame.dengji:SetFrameLevel(555) end
	TradeFrame.dengji.Border = TradeFrame.dengji:CreateTexture(nil, "ARTWORK");
	TradeFrame.dengji.Border:SetTexture("Interface/Minimap/MiniMap-TrackingBorder");
	TradeFrame.dengji.Border:SetSize(www+28,hhh+24);
	TradeFrame.dengji.Border:ClearAllPoints();
	if tocversion<90000 then
		TradeFrame.dengji.Border:SetPoint("CENTER", 11, -12);
	else
		TradeFrame.dengji.Border:SetPoint("CENTER", 10, -12);
	end
	TradeFrame.dengji.Text = PIGFontString(TradeFrame.dengji,{"CENTER", TradeFrame.dengji, "CENTER", 0, 0})
	hooksecurefunc("TradeFrame_OnShow", function(self)
		if(UnitExists("NPC"))then
			local IconCoord = CLASS_ICON_TCOORDS[select(2,UnitClass("NPC"))];
			TradeFrame.zhiye.Icon:SetTexCoord(unpack(IconCoord));--切出子区域
			local jibie = UnitLevel("NPC")
			TradeFrame.dengji.Text:SetText(jibie)
			if jibie<10 then
				TradeFrame.dengji.Text:SetTextColor(1, 0, 0);
			else
				TradeFrame.dengji.Text:SetTextColor(1, 0.82, 0);
			end
		end 
	end);
end