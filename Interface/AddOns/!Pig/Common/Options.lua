local addonName, addonTable = ...;
local L=addonTable.locale
local _, _, _, tocversion = GetBuildInfo()
---
local Create=addonTable.Create
local PIGFrame=Create.PIGFrame
local PIGButton=Create.PIGButton
local PIGLine=Create.PIGLine
local PIGOptionsList=Create.PIGOptionsList
local PIGOptionsList_RF=Create.PIGOptionsList_RF
local PIGOptionsList_R=Create.PIGOptionsList_R
---
local CommonFun={}
---
local fujiF,fujiTabBut = PIGOptionsList(L["COMMON_TABNAME"],"TOP")
fujiF:Show()
fujiTabBut:Selected()
local DownY=30
local RTabFrame =Create.PIGOptionsList_RF(fujiF,DownY)
CommonFun.RTabFrame=RTabFrame
--
local CommonF,CommonTabbut =PIGOptionsList_R(RTabFrame,L["COMMON_TABNAME1"],70)
CommonFun.CommonF=CommonF
CommonF:Show()
CommonTabbut:Selected()
--==================================
addonTable.CommonFun=CommonFun
addonTable.Common = function()
	CommonFun.jiaoyi()
	CommonFun.AHPlus()
	CommonFun.SkillFBCD()
	CommonFun.AutoSellBuy()
	CommonFun.Interaction.RightPlus()
	CommonFun.Interaction.zidongduihua()
	CommonFun.Interaction.AutoDown()
	CommonFun.Interaction.YaoqingFuhuo()
	CommonFun.Interaction.FastLoot()
	CommonFun.Other.ErrorsHide()
	CommonFun.Other.Pig_AFK()
end