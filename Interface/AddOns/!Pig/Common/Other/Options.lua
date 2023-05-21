local addonName, addonTable = ...;
local L=addonTable.locale
local _, _, _, tocversion = GetBuildInfo()
---
local Create=addonTable.Create
local PIGFrame=Create.PIGFrame
local PIGLine=Create.PIGLine
local PIGCheckbutton=Create.PIGCheckbutton
local PIGCheckbutton_R=Create.PIGCheckbutton_R
local PIGOptionsList_R=Create.PIGOptionsList_R
---
local CommonFun=addonTable.CommonFun
CommonFun.Other={}
------
local otherF =PIGOptionsList_R(CommonFun.RTabFrame,L["COMMON_TABNAME4"],70)
function CommonFun.Other.ErrorsHide()
	if PIG["Other"]["ErrorsHide"] then
		UIErrorsFrame:Hide()
	else
		UIErrorsFrame:Show()
	end
end
otherF.ErrorsHide = PIGCheckbutton_R(otherF,{"隐藏错误提示","隐藏屏幕中间错误提示"},true)
otherF.ErrorsHide:SetScript("OnClick", function (self)
    if self:GetChecked() then
        PIG["Other"]["ErrorsHide"]=true;
    else
        PIG["Other"]["ErrorsHide"]=false;
    end
    CommonFun.Other.ErrorsHide()
end)
otherF.PigLoad = PIGCheckbutton_R(otherF,{"隐藏载入提示","隐藏插件载入提示"},true)
otherF.PigLoad:SetScript("OnClick", function (self)
    if self:GetChecked() then
        PIG["Other"]["PigLoad"]=true;
    else
        PIG["Other"]["PigLoad"]=false;
    end
end)
local PIGModCheckbutton=Create.PIGModCheckbutton
otherF.AFK = PIGModCheckbutton(otherF,{"离开屏保","启用离开屏保后,离开自动进入屏保功能"},{"TOPLEFT",otherF,"TOPLEFT",20,-100})
otherF.AFK:SetScript("OnClick", function (self)
    if self:GetChecked() then
        PIG["Other"]["AFK"]["Open"]=true;
        CommonFun.Other.Pig_AFK()
        QuickButUI.Pig_AFK()
    else
        PIG["Other"]["AFK"]["Open"]=false
        Pig_Options_RLtishi_UI:Show()
    end
end)
otherF.AFK.QKBut:SetScript("OnClick", function (self)
    if self:GetChecked() then
        PIG["Other"]["AFK"]["QuickBut"]=true
        QuickButUI.Pig_AFK()
    else
        PIG["Other"]["AFK"]["QuickBut"]=false
        Pig_Options_RLtishi_UI:Show()
    end
end)
--
otherF:HookScript("OnShow", function(self)
	self.ErrorsHide:SetChecked(PIG["Other"]["ErrorsHide"]);
	self.PigLoad:SetChecked(PIG["Other"]["PigLoad"]);
	self.AFK:SetChecked(PIG["Other"]["AFK"]["Open"]);
	self.AFK.QKBut:SetChecked(PIG["Other"]["AFK"]["QuickBut"]);
end)
