local _, addonTable = ...;
local L=addonTable.locale
----------
local Create=addonTable.Create
local PIGOptionsList=Create.PIGOptionsList
local PIGFontString=Create.PIGFontString
---------
local fuFrame,fuFrameBut = PIGOptionsList(L["RaidR_TABNAME"],"EXT")
fuFrame.EOORONNULLtishi=PIGFontString(fuFrame,{"CENTER", fuFrame, "CENTER", 0, 50},string.format(L["ERROR_EXTEND_NULL"],L["RaidR_TABNAME"]),"OUTLINE",20)
fuFrame.EOORONNULLtishi:SetTextColor(1, 1, 0, 1);
addonTable.RaidRecord = function()
end