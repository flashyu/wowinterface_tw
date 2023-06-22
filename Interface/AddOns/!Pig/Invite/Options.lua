local addonName, addonTable = ...;
local L=addonTable.locale
local _, _, _, tocversion = GetBuildInfo()
----------
local Create=addonTable.Create
local PIGFrame=Create.PIGFrame
local PIGLine=Create.PIGLine
local PIGButton = Create.PIGButton
local PIGCheckbutton=Create.PIGCheckbutton
local PIGOptionsList=Create.PIGOptionsList
local PIGFontString=Create.PIGFontString
local PIGModCheckbutton=Create.PIGModCheckbutton
local PIGQuickBut=Create.PIGQuickBut
---------
local InviteFun={}
local GnName,GnUI,GnIcon,FrameLevel = L["INVITE_TABNAME"],"Invite_UI",132327,30
InviteFun.GnName=GnName
InviteFun.GnUI=GnUI
InviteFun.GnIcon=GnIcon
InviteFun.FrameLevel=FrameLevel
local fuFrame,fuFrameBut = PIGOptionsList(GnName,"EXT")
InviteFun.fuFrame=fuFrame
InviteFun.fuFrameBut=fuFrameBut
--------
local Tooltip = "一个方便组队小工具，可查看组队/求组/车队/位面信息"
fuFrame.Open = PIGModCheckbutton(fuFrame,{GnName,Tooltip},{"TOP",fuFrame,"TOP",0,-10},true)
fuFrame.Open:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["Invite"]["Open"]=true;
		fuFrame.SetListF:Show()
		InviteFun.Invite()
	else
		PIGA["Invite"]["Open"]=false;
		fuFrame.SetListF:Hide()
		Pig_Options_RLtishi_UI:Show()
	end
	QuickButUI.Invite()
end);
fuFrame.Open.QKBut:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["Invite"]["AddBut"]=true
		QuickButUI.Invite()
	else
		PIGA["Invite"]["AddBut"]=false
		Pig_Options_RLtishi_UI:Show();
	end
end);
function QuickButUI:Invite()	
	if PIGA["QuickBut"]["Open"] and PIGA["Invite"]["Open"] and PIGA["Invite"]["AddBut"] then
		local QkButUI = "QkBut_Invite"
		if _G[QkButUI] then return end
		local QuickTooltip = "点击-|cff00FFFF打开"..GnName.."|r"
		local QkBut=PIGQuickBut(QkButUI,QuickTooltip,GnIcon,GnUI,FrameLevel)
	end
end
---重置配置
fuFrame.Default = PIGButton(fuFrame,{"TOPRIGHT",fuFrame,"TOPRIGHT",-20,-20},{60,22},"重置");  
fuFrame.Default:SetScript("OnClick", function ()
	StaticPopup_Show ("HUIFU_INVITE_INFO");
end);
StaticPopupDialogs["HUIFU_INVITE_INFO"] = {
	text = "此操作将\124cffff0000重置\124r"..GnName.."所有配置，需重载界面。\n确定重置?",
	button1 = "确定",
	button2 = "取消",
	OnAccept = function()
		PIGA["Invite"] = addonTable.Default["Invite"];
		PIGA["Invite"]["Open"] = true;
		ReloadUI()
	end,
	timeout = 0,
	whileDead = true,
	hideOnEscape = true,
}
fuFrame:HookScript("OnShow", function (self)
	self.Open:SetChecked(PIGA["Invite"]["Open"])
	self.Open.QKBut:SetChecked(PIGA["Invite"]["AddBut"])
	if PIGA["Invite"]["Open"] then
		self.SetListF:Show()
	else
		self.SetListF:Hide()
	end
end);
---------========
fuFrame.SetListline = PIGLine(fuFrame,"TOP",-66)
fuFrame.SetListF = PIGFrame(fuFrame)
fuFrame.SetListF:SetPoint("TOPLEFT",fuFrame.SetListline,"BOTTOMLEFT",0,0);
fuFrame.SetListF:SetPoint("BOTTOMRIGHT",fuFrame,"BOTTOMRIGHT",0,0);
---------
addonTable.InviteFun=InviteFun
addonTable.Invite = function()
	if PIGA["Invite"]["Open"] then
		InviteFun.Invite()

	end
end