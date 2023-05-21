local _, addonTable = ...;
local _, _, _, tocversion = GetBuildInfo()
--
local Create = addonTable.Create
local PIGButton=Create.PIGButton
local PIGLine=Create.PIGLine
local PIGCheckbutton=Create.PIGCheckbutton

local CommonFun=addonTable.CommonFun
function CommonFun.huoquhuizhangjiageG()
	local marketPrice = C_WowTokenPublic.GetCurrentMarketPrice();
	if marketPrice and marketPrice>0 then
		local hzlishiGG = PIG.AHPlus.Tokens
		local hzlishiGGNum = #hzlishiGG
		if hzlishiGGNum>0 then
			if hzlishiGGNum>50 then
				local kaishiwb = hzlishiGGNum-50
				for i=kaishiwb,1,-1 do
					table.remove(PIG.AHPlus.Tokens,i)
				end
			end
			local OldmarketPrice = PIG.AHPlus.Tokens[#PIG.AHPlus.Tokens][2] or 0
			if OldmarketPrice~=marketPrice then
				table.insert(PIG.AHPlus.Tokens,{GetServerTime(),marketPrice})
			end
		else
			table.insert(PIG.AHPlus.Tokens,{GetServerTime(),marketPrice})
		end
	end
end
----------------------------------
local AuctionFramejiazai = CreateFrame("FRAME")
AuctionFramejiazai:SetScript("OnEvent", function(self, event, arg1)
	if PIG["AHPlus"]["Open"] then
		if arg1 == "Blizzard_AuctionHouseUI" or arg1 == "Blizzard_AuctionUI" then
			if tocversion<80000 then
				CommonFun.AHPlus_Vanilla()
			else
				CommonFun.AHPlus_Mainline()
			end
			AuctionFramejiazai:UnregisterEvent("ADDON_LOADED")
		end
	else
		AuctionFramejiazai:UnregisterEvent("ADDON_LOADED")
	end
end)
------------
function CommonFun.AHPlus()
	if PIG["AHPlus"]["Open"] then
		CommonFun.huoquhuizhangjiageG()
		if IsAddOnLoaded("Blizzard_AuctionHouseUI") or IsAddOnLoaded("Blizzard_AuctionUI") then
			if tocversion<80000 then
				CommonFun.AHPlus_Vanilla()
			else
				CommonFun.AHPlus_Mainline()
			end
		else
			AuctionFramejiazai:RegisterEvent("ADDON_LOADED")
		end
	end
end
----
local CommonF=CommonFun.CommonF
local AHPlusline = PIGLine(CommonF,"TOP",-300)
local tooltipAHOpen="在拍卖行界面增加一个缓存单价按钮，时光徽章界面显示历史价格";
if tocversion<80000 then
	tooltipAHOpen="在拍卖行浏览列表显示一口价，和涨跌百分比。界面增加一个缓存单价按钮，时光徽章界面显示历史价格";
end
CommonF.AHOpen =PIGCheckbutton(CommonF,{"TOPLEFT",AHPlusline,"TOPLEFT",20,-20},{"拍卖增强",tooltipAHOpen})
CommonF.AHOpen:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIG["AHPlus"]["Open"]=true;
		CommonF.AHtooltip:Enable()
		CommonFun.AHPlus()
	else
		PIG["AHPlus"]["Open"]=false;
		Pig_Options_RLtishi_UI:Show()
		CommonF.AHtooltip:Disable()
	end
end);
CommonF.AHtooltip =PIGCheckbutton(CommonF,{"LEFT",CommonF.AHOpen,"RIGHT",180,0},{"鼠标提示拍卖价钱","鼠标提示拍卖价钱"})
CommonF.AHtooltip:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIG["AHPlus"]["AHtooltip"]=true;
	else
		PIG["AHPlus"]["AHtooltip"]=false;
	end
end);
---
CommonF.CZAHinfo = PIGButton(CommonF,{"LEFT",CommonF.AHtooltip,"RIGHT",200,0},{80,24},"重置缓存");  
CommonF.CZAHinfo:SetScript("OnClick", function ()
	StaticPopup_Show ("CZAHZENGQIANGINFO");
end);
StaticPopupDialogs["CZAHZENGQIANGINFO"] = {
	text = "此操作将\124cffff0000重置\124r拍卖增强数据，需重载界面。\n确定重置?",
	button1 = "确定",
	button2 = "取消",
	OnAccept = function()
		PIG["AHPlus"]=addonTable.Default.AHPlus
		PIG["AHPlus"]["Open"]=true
		ReloadUI()
	end,
	timeout = 0,
	whileDead = true,
	hideOnEscape = true,
}
CommonF:HookScript("OnShow", function(self)
	self.AHOpen:SetChecked(PIG["AHPlus"]["Open"])
	if not PIG["AHPlus"]["Open"] then CommonF.AHtooltip:Disable() end
	self.AHtooltip:SetChecked(PIG["AHPlus"]["AHtooltip"])
end)