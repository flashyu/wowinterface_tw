local addonName, addonTable = ...;
local _, _, _, tocversion = GetBuildInfo()
---
local Create=addonTable.Create
local PIGFrame=Create.PIGFrame
local PIGLine=Create.PIGLine
local PIGDownMenu=Create.PIGDownMenu
local PIGCheckbutton_R=Create.PIGCheckbutton_R
local PIGOptionsList=Create.PIGOptionsList
local PIGFontString=Create.PIGFontString
----
local L=addonTable.locale
local Rurutiafun={}
addonTable.Rurutiafun = Rurutiafun
----
local fuFrame = PIGOptionsList(L["RURUTIA_NAME"],"EXT")
------
local TOPHIGHT = 30
fuFrame.top=PIGFontString(fuFrame,{"TOP",fuFrame,"TOP",0,-8},"以下为露露缇娅提供功能，反馈请找露露缇娅！")
fuFrame.top:SetTextColor(0, 1, 0, 1);
local linetop = PIGLine(fuFrame,"TOP",-30)
fuFrame.F = CreateFrame("Frame", nil, fuFrame);
fuFrame.F:SetPoint("TOPLEFT",linetop,"TOPLEFT",0,0);
fuFrame.F:SetPoint("BOTTOMRIGHT",fuFrame,"BOTTOMRIGHT",0,0);
local RurutiafunF=fuFrame.F
--
RurutiafunF.FastFocus = PIGCheckbutton_R(RurutiafunF,{"快速设置焦点","按后方设置的快捷键后点击头像快速设置焦点"})
RurutiafunF.FastFocus:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIG["Rurutia"]["FastFocus"]=true;
		Rurutiafun.FastFocus_Open()
	else
		PIG["Rurutia"]["FastFocus"]=false;
		Pig_Options_RLtishi_UI:Show()
	end
end);
RurutiafunF.FastFocus.xiala=PIGDownMenu(RurutiafunF.FastFocus,{"LEFT",RurutiafunF.FastFocus.Text, "RIGHT", 4,0},{120,24})
function RurutiafunF.FastFocus.xiala:PIGDownMenu_Update_But(self)
	local info = {}
	info.func = self.PIGDownMenu_SetValue
	local SetKeyList = Rurutiafun.SetKeyList
	for i=1,#SetKeyList,1 do
	    info.text, info.arg1, info.arg2 = SetKeyList[i][1], SetKeyList[i][2]
	    info.checked = SetKeyList[i][2]==PIG["Rurutia"]["FastFocusKEY"]
		RurutiafunF.FastFocus.xiala:PIGDownMenu_AddButton(info)
	end 
end
function RurutiafunF.FastFocus.xiala:PIGDownMenu_SetValue(value,arg1)
	if InCombatLockdown() then PIG_print("战斗中无法更改按键") return end
	RurutiafunF.FastFocus.xiala:PIGDownMenu_SetText(value)
	PIG["Rurutia"]["FastFocusKEY"]=arg1
	Rurutiafun.FastFocus_Open()
	PIGCloseDropDownMenus()
end
RurutiafunF.FastClearFocus =PIGCheckbutton_R(RurutiafunF,{"快速清除焦点","在焦点头像点击已设置焦点快捷键可快速清除焦点"})
RurutiafunF.FastClearFocus:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIG["Rurutia"]["FastClearFocus"]=true;
		Rurutiafun.FastClearFocus_Open()
	else
		PIG["Rurutia"]["FastClearFocus"]=false;
		Pig_Options_RLtishi_UI:Show()
	end
end);

---任务提示音
RurutiafunF.QuestsEnd =PIGCheckbutton_R(RurutiafunF,{"任务完成提示音","任务完成提示音"})
RurutiafunF.QuestsEnd:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIG["Rurutia"]["QuestsEnd"]=true;	
	else
		PIG["Rurutia"]["QuestsEnd"]=false;
	end
	Rurutiafun.QuestsEnd_Open("Check")
end);
RurutiafunF.QuestsEnd.xiala=PIGDownMenu(RurutiafunF.QuestsEnd,{"LEFT",RurutiafunF.QuestsEnd.Text, "RIGHT", 4,0},{120,24})
function RurutiafunF.QuestsEnd.xiala:PIGDownMenu_Update_But(self)
	local info = {}
	info.func = self.PIGDownMenu_SetValue
	for i=1,#Rurutiafun.AudioList,1 do
	    info.text, info.arg1 = Rurutiafun.AudioList[i][1], i
	    info.checked = i==PIG["Rurutia"]["QuestsEndAudio"]
		RurutiafunF.QuestsEnd.xiala:PIGDownMenu_AddButton(info)
	end 
end
function RurutiafunF.QuestsEnd.xiala:PIGDownMenu_SetValue(value,arg1)
	RurutiafunF.QuestsEnd.xiala:PIGDownMenu_SetText(value)
	PIG["Rurutia"]["QuestsEndAudio"]=arg1
	PIGCloseDropDownMenus()
end

RurutiafunF.QuestsEnd.PlayBut = CreateFrame("Button",nil,RurutiafunF.QuestsEnd);
RurutiafunF.QuestsEnd.PlayBut:SetNormalTexture("interface/buttons/ui-spellbookicon-nextpage-up.blp")
RurutiafunF.QuestsEnd.PlayBut:SetPushedTexture("interface/buttons/ui-spellbookicon-nextpage-down.blp")
RurutiafunF.QuestsEnd.PlayBut:SetDisabledTexture("interface/buttons/ui-spellbookicon-nextpage-disabled.blp")
RurutiafunF.QuestsEnd.PlayBut:SetHighlightTexture("interface/buttons/ui-common-mousehilight.blp");--高亮纹理
RurutiafunF.QuestsEnd.PlayBut:SetSize(28,28);
RurutiafunF.QuestsEnd.PlayBut:SetPoint("LEFT",RurutiafunF.QuestsEnd.xiala,"RIGHT",8,0);
RurutiafunF.QuestsEnd.PlayBut:SetScript("OnClick", function()
	PlaySoundFile(Rurutiafun.AudioList[PIG["Rurutia"]["QuestsEndAudio"]][2], "Master")
end)
RurutiafunF.weijiancedao=PIGFontString(RurutiafunF,{"LEFT", RurutiafunF.QuestsEnd.PlayBut, "RIGHT", 6, 0},"没有检测到露露扩展包")
RurutiafunF.weijiancedao:SetTextColor(1, 1, 0, 1);

--打开选项页面时========
RurutiafunF:HookScript("OnShow", function (self)
	RurutiafunF.FastFocus.xiala:PIGDownMenu_SetText(Rurutiafun.SetKeyListName[PIG["Rurutia"]["FastFocusKEY"]])
	RurutiafunF.FastFocus:SetChecked(PIG["Rurutia"]["FastFocus"]);
	RurutiafunF.FastClearFocus:SetChecked(PIG["Rurutia"]["FastClearFocus"]);
	local rrName = addonName.."_Rurutia"
	if IsAddOnLoaded(rrName) then
		local name, title, notes, loadable = GetAddOnInfo(rrName)
		if loadable then
			RurutiafunF.weijiancedao:Hide()	
	   		local fuji = Pig_OptionsUI.R.top.Ver
	   		local ziframe = {fuji:GetRegions()}
	   		local Ver=GetAddOnMetadata(rrName, "Version")
	   		local VerTXT = "|cff00FFFF + |r|cffFFD700露露扩展包版本:|r |cff00FF00"..Ver.."|r"
	   		fuji.LuluVer = PIGFontString(fuji,{"LEFT", ziframe[#ziframe], "RIGHT", 0, 0},VerTXT)
		end
    end
	if PIG["Rurutia"]["QuestsEnd"] then
		RurutiafunF.QuestsEnd :SetChecked(true);
	end
	RurutiafunF.QuestsEnd.xiala:PIGDownMenu_SetText(Rurutiafun.AudioList[PIG["Rurutia"]["QuestsEndAudio"]][1])
end);

--进入游戏时加载
addonTable.Rurutia = function()
	if PIG["Rurutia"]["FastFocus"] then
		Rurutiafun.FastFocus_Open()
	end
	if PIG["Rurutia"]["FastClearFocus"] then
		Rurutiafun.FastClearFocus_Open()
	end
	if PIG["Rurutia"]["QuestsEnd"] then
		Rurutiafun.QuestsEnd_Open()
	end
end