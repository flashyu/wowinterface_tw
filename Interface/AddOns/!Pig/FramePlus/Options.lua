local addonName, addonTable = ...;
local L=addonTable.locale
local _, _, _, tocversion = GetBuildInfo()
---
local Create=addonTable.Create
local PIGFrame=Create.PIGFrame
local PIGLine=Create.PIGLine
local PIGButton = Create.PIGButton
local PIGDownMenu=Create.PIGDownMenu
local PIGSlider = Create.PIGSlider
local PIGCheckbutton=Create.PIGCheckbutton
local PIGCheckbutton_R=Create.PIGCheckbutton_R
local PIGOptionsList=Create.PIGOptionsList
local PIGOptionsList_RF=Create.PIGOptionsList_RF
local PIGOptionsList_R=Create.PIGOptionsList_R
local PIGFontString=Create.PIGFontString
local PIGFontStringBG=Create.PIGFontStringBG
---
local fuFrame = PIGOptionsList(L["FRAMEP_TABNAME"],"TOP")
--
local DownY=30
local RTabFrame =Create.PIGOptionsList_RF(fuFrame,DownY)
--
local FramePlusfun={}
addonTable.FramePlusfun=FramePlusfun
--
local FramePlusF,FramePlustabbut =PIGOptionsList_R(RTabFrame,L["FRAMEP_TABNAME1"],90)
FramePlusF:Show()
FramePlustabbut:Selected()
----------------------
FramePlusF.BuffTime = PIGCheckbutton_R(FramePlusF,{"精确BUFF时间","精确显示自身BUFF/DEBUFF时间"})
FramePlusF.BuffTime:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["FramePlus"]["BuffTime"]=true;
		FramePlusfun.BuffTime()
	else
		PIGA["FramePlus"]["BuffTime"]=false
		Pig_Options_RLtishi_UI:Show()
	end
end);
----
FramePlusF.Skill_QKbut = PIGCheckbutton_R(FramePlusF,{"专业面板快速切换按钮","在专业界面显示便捷切换专业按钮"})
FramePlusF.Skill_QKbut:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["FramePlus"]["Skill_QKbut"]=true;
		FramePlusfun.Skill_QKbut()
	else
		PIGA["FramePlus"]["Skill_QKbut"]=false
		Pig_Options_RLtishi_UI:Show()
	end
end);
---
if tocversion<100000 then
	FramePlusF.Quest = PIGCheckbutton_R(FramePlusF,{"扩展任务界面",""})
	if tocversion<30000 then
		FramePlusF.Quest.tooltip= "扩展任务界面为两列,左边任务列表，右边任务详情,显示任务等级";
	else
		FramePlusF.Quest.tooltip= "任务列表显示任务等级";
	end
	FramePlusF.Quest:SetScript("OnClick", function (self)
		if self:GetChecked() then
			PIGA["FramePlus"]["Quest"]=true;
			FramePlusfun.Quest()
		else
			PIGA["FramePlus"]["Quest"]=false
			Pig_Options_RLtishi_UI:Show()
		end
	end);
	--
	FramePlusF.Skill = PIGCheckbutton_R(FramePlusF,{"专业界面扩展","扩展专业技能界面为两列；左边配方列表，右边配方详情"})
	FramePlusF.Skill:SetScript("OnClick", function (self)
		if self:GetChecked() then
			PIGA["FramePlus"]["Skill"]=true;
			FramePlusfun.Skill()
		else
			PIGA["FramePlus"]["Skill"]=false
			Pig_Options_RLtishi_UI:Show()
		end
	end)
	
	FramePlusF.Talent = PIGCheckbutton_R(FramePlusF,{"天赋面板扩展"," "})
	if tocversion<30000 then
		FramePlusF.Talent.tooltip= "在一页显示三系天赋";
	else
		FramePlusF.Talent.tooltip= "在一页显示三系天赋和雕文";
	end
	FramePlusF.Talent:SetScript("OnClick", function (self)
		if self:GetChecked() then
			PIGA["FramePlus"]["Talent"]=true;
			FramePlusfun.Talent()
		else
			PIGA["FramePlus"]["Talent"]=false
			Pig_Options_RLtishi_UI:Show()
		end
	end)
	if tocversion<20000 then
		local tooltip = "整合追踪类技能，点击小地图追踪技能按钮选择其他追踪技能！";
		FramePlusF.Zhuizong = PIGCheckbutton_R(FramePlusF,{"整合追踪技能",tooltip})
		FramePlusF.Zhuizong:SetScript("OnClick", function (self)
			if self:GetChecked() then
				PIGA["FramePlus"]["Zhuizong"]=true
				FramePlusfun.Zhuizong()
			else
				PIGA["FramePlus"]["Zhuizong"]=false
				Pig_Options_RLtishi_UI:Show()
			end
		end)
	end
end
--
FramePlusF.yidongUI = PIGCheckbutton_R(FramePlusF,{"解锁系统界面","解锁系统的角色/法术书/天赋/任务/好友/专业/附魔界面，使其可以自由移动"})
FramePlusF.yidongUI:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["FramePlus"]["yidongUI"]=true;
		FramePlusfun.yidongUI()
	else
		PIGA["FramePlus"]["yidongUI"]=false
		Pig_Options_RLtishi_UI:Show()
	end
end);

--角色信息面板
local Characterline = PIGLine(FramePlusF,"TOP",-260)
local CharacterFFF = PIGFrame(FramePlusF,{"TOPLEFT",Characterline,"BOTTOMLEFT",0,-16})
CharacterFFF:SetPoint("BOTTOMRIGHT",FramePlusF,"BOTTOMRIGHT",0,0);
CharacterFFF.biaoti = PIGFontString(CharacterFFF,{"TOPLEFT", Characterline, "BOTTOMLEFT", 10, -4},"角色信息面板");
---
CharacterFFF.Character_xiuliG = PIGCheckbutton_R(CharacterFFF,{"显示修理费","角色面板显示修理费用"})
CharacterFFF.Character_xiuliG:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["FramePlus"]["Character_xiuliG"]=true;
		FramePlusfun.Character_xiuliG()
	else
		PIGA["FramePlus"]["Character_xiuliG"]=false
		Pig_Options_RLtishi_UI:Show()
	end
end)
CharacterFFF.Character_naijiu = PIGCheckbutton_R(CharacterFFF,{"显示装备耐久","角色面板显示装备耐久剩余值"})
CharacterFFF.Character_naijiu:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["FramePlus"]["Character_naijiu"]=true;
		FramePlusfun.Character_ADD()
	else
		PIGA["FramePlus"]["Character_naijiu"]=false
		Pig_Options_RLtishi_UI:Show()
	end
end)
CharacterFFF.Character_ItemLevel = PIGCheckbutton_R(CharacterFFF,{"显示装等","显示装备等级，背包银行物品需要显示装等请在背包内设置"})
CharacterFFF.Character_ItemLevel:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["FramePlus"]["Character_ItemLevel"]=true
		FramePlusfun.Character_ADD()
	else
		PIGA["FramePlus"]["Character_ItemLevel"]=false
		Pig_Options_RLtishi_UI:Show()
	end
end)
CharacterFFF.Character_ItemColor = PIGCheckbutton_R(CharacterFFF,{"根据品质染色装备边框","根据品质染色装备边框"})
CharacterFFF.Character_ItemColor:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["FramePlus"]["Character_ItemColor"]=true
		FramePlusfun.Character_ADD()
	else
		PIGA["FramePlus"]["Character_ItemColor"]=false
		Pig_Options_RLtishi_UI:Show()
	end
end)
CharacterFFF.Character_ItemList = PIGCheckbutton_R(CharacterFFF,{"显示装备列表","在角色信息界面右侧显示装备列表"})
CharacterFFF.Character_ItemList:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["FramePlus"]["Character_ItemList"]=true
		FramePlusfun.Character_ADD()
	else
		PIGA["FramePlus"]["Character_ItemList"]=false
		Pig_Options_RLtishi_UI:Show()
	end
end)
if tocversion<40000 then
	CharacterFFF.Character_Mingzhong = PIGCheckbutton_R(CharacterFFF,{"显示命中说明","角色信息面板显示命中说明"})
	CharacterFFF.Character_Mingzhong:SetScript("OnClick", function (self)
		if self:GetChecked() then
			PIGA["FramePlus"]["Character_Mingzhong"]=true
			FramePlusfun.Character_Mingzhong()
		else
			PIGA["FramePlus"]["Character_Mingzhong"]=false
			Pig_Options_RLtishi_UI:Show()
		end
	end)
end
if tocversion<20000 then
	CharacterFFF.Character_Shuxing = PIGCheckbutton_R(CharacterFFF,{"显示人物属性","角色面板显示人物属性"})
	CharacterFFF.Character_Shuxing:SetScript("OnClick", function (self)
		if self:GetChecked() then
			PIGA["FramePlus"]["Character_Shuxing"]=true
			FramePlusfun.Character_Shuxing()
		else
			PIGA["FramePlus"]["Character_Shuxing"]=false
			Pig_Options_RLtishi_UI:Show()
		end
	end)
end
FramePlusF:HookScript("OnShow", function(self)
	self.BuffTime:SetChecked(PIGA["FramePlus"]["BuffTime"])
	self.Skill_QKbut:SetChecked(PIGA["FramePlus"]["Skill_QKbut"])
	if tocversion<100000 then
		self.Quest:SetChecked(PIGA["FramePlus"]["Quest"])
		self.Skill:SetChecked(PIGA["FramePlus"]["Skill"])
		self.Talent:SetChecked(PIGA["FramePlus"]["Talent"])
	end
	self.yidongUI:SetChecked(PIGA["FramePlus"]["yidongUI"])
	
	CharacterFFF.Character_xiuliG:SetChecked(PIGA["FramePlus"]["Character_xiuliG"])
	CharacterFFF.Character_naijiu:SetChecked(PIGA["FramePlus"]["Character_naijiu"])
	CharacterFFF.Character_ItemLevel:SetChecked(PIGA["FramePlus"]["Character_ItemLevel"])
	CharacterFFF.Character_ItemColor:SetChecked(PIGA["FramePlus"]["Character_ItemColor"])
	CharacterFFF.Character_ItemList:SetChecked(PIGA["FramePlus"]["Character_ItemList"])
	if tocversion<40000 then
		CharacterFFF.Character_Mingzhong:SetChecked(PIGA["FramePlus"]["Character_Mingzhong"])
	end
	if tocversion<20000 then
		CharacterFFF.Character_Shuxing:SetChecked(PIGA["FramePlus"]["Character_Shuxing"])
		self.Zhuizong:SetChecked(PIGA["FramePlus"]["Zhuizong"])
	end
end)
--
local TooltipF =PIGOptionsList_R(RTabFrame,L["FRAMEP_TABNAME2"],90)
local ItemLeveltishi = {"显示物品ID/归属版本","在鼠标提示上显示物品ID/物品归属版本"}
if tocversion<100000 then
	ItemLeveltishi = {"显示物品ID/LV","在鼠标提示上显示物品ID/LV"}
end
TooltipF.ItemLevel = PIGCheckbutton_R(TooltipF,ItemLeveltishi)
TooltipF.ItemLevel:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["Tooltip"]["ItemLevel"]=true;			
	else
		PIGA["Tooltip"]["ItemLevel"]=false;
	end
end);

TooltipF.SpellID = PIGCheckbutton_R(TooltipF,{"显示技能ID/BUFF来源","在鼠标提示上显示技能ID/BUFF来源"})
TooltipF.SpellID:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["Tooltip"]["SpellID"]=true;			
	else
		PIGA["Tooltip"]["SpellID"]=false;
	end
end);
if tocversion<20000 then
	TooltipF.ItemSell = PIGCheckbutton_R(TooltipF,{"显示物品售价","在鼠标提示上显示物品售价"})
	TooltipF.ItemSell:SetScript("OnClick", function (self)
		if self:GetChecked() then
			PIGA["Tooltip"]["ItemSell"]=true;			
		else
			PIGA["Tooltip"]["ItemSell"]=false;
		end
	end);
end
TooltipF:HookScript("OnShow", function(self)
	self.ItemLevel:SetChecked(PIGA["Tooltip"]["ItemLevel"])
	self.SpellID:SetChecked(PIGA["Tooltip"]["SpellID"])
	if tocversion<20000 then
		self.ItemSell:SetChecked(PIGA["Tooltip"]["ItemSell"])
	end
end)
--==================================
addonTable.FramePlus = function()
	FramePlusfun.BuffTime()
	FramePlusfun.Skill_QKbut()
	if tocversion<100000 then
		FramePlusfun.Quest()
		FramePlusfun.Skill()
		FramePlusfun.Talent()
	end
	FramePlusfun.yidongUI()
	FramePlusfun.Character_xiuliG()
	FramePlusfun.Character_ADD()
	if tocversion<40000 then
		FramePlusfun.Character_Mingzhong()
	end
	if tocversion<20000 then
		FramePlusfun.Character_Shuxing()
		FramePlusfun.Zhuizong()
	end
end