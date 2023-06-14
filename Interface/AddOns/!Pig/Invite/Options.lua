local _, addonTable = ...;
local L=addonTable.locale
----------
local Create=addonTable.Create
local PIGButton = Create.PIGButton
local PIGOptionsList=Create.PIGOptionsList
local PIGFontString=Create.PIGFontString
---------
local fuFrame,fuFrameBut = PIGOptionsList(L["INVITE_TABNAME"],"EXT")
-- fuFrame.EOORONNULLtishi=PIGFontString(fuFrame,{"CENTER", fuFrame, "CENTER", 0, 60},string.format(L["ERROR_EXTEND_NULL"],L["INVITE_TABNAME"]),"OUTLINE",18)
-- fuFrame.EOORONNULLtishi:SetTextColor(0, 1, 0, 1);
-- fuFrame.DIYDefault = PIGButton(fuFrame,{"TOP",fuFrame.EOORONNULLtishi,"BOTTOM",0,-20},{100,24},L["ADDON_AUTHOR"])
-- fuFrame.DIYDefault:SetScript("OnClick", function (self)
-- 	Pig_OptionsUI:ShowAuthor()
-- end);
-- addonTable.RaidRecord = function()
-- end