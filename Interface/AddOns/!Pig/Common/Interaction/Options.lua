local addonName, addonTable = ...;
local L=addonTable.locale
local _, _, _, tocversion = GetBuildInfo()
---
local Create=addonTable.Create
local PIGFrame=Create.PIGFrame
local PIGLine=Create.PIGLine
local PIGSlider = Create.PIGSlider
local PIGCheckbutton=Create.PIGCheckbutton
local PIGCheckbutton_R=Create.PIGCheckbutton_R
local PIGOptionsList_R=Create.PIGOptionsList_R
local PIGFontString=Create.PIGFontString
--
local CommonFun=addonTable.CommonFun
--
local InteractionF,InteractionTabbut =PIGOptionsList_R(CommonFun.RTabFrame,L["COMMON_TABNAME2"],70)
CommonFun.Interaction={}
--自动对话
InteractionF.AutoDialogue = PIGCheckbutton_R(InteractionF,{"自动对话","当NPC只有一个对话选项时自动激活选项"})
InteractionF.AutoDialogue:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["Interaction"]["AutoDialogue"]=true;			
	else
		PIGA["Interaction"]["AutoDialogue"]=false;
	end
	CommonFun.Interaction.zidongduihua()
end);
--自动站立下马
InteractionF.AutoDown = PIGCheckbutton_R(InteractionF,{"自动下马/站立","与NPC或物体交互时自动下马/站立"})
InteractionF.AutoDown:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["Interaction"]["AutoDown"]=true;			
	else
		PIGA["Interaction"]["AutoDown"]=false;
	end
	CommonFun.Interaction.AutoDown()
end);
--自动接任务
InteractionF.AutoJierenwu = PIGCheckbutton_R(InteractionF,{"自动接任务","和NPC对话时自动接任务"})
InteractionF.AutoJierenwu:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["Interaction"]["AutoJierenwu"]=true;
	else
		PIGA["Interaction"]["AutoJierenwu"]=false;
	end
	CommonFun.Interaction.zidongduihua()
end);
--自动交任务
InteractionF.AutoJiaorenwu = PIGCheckbutton_R(InteractionF,{"自动交任务","和NPC对话时自动交任务"})
InteractionF.AutoJiaorenwu:SetScript("OnClick", function ()
	if InteractionF.AutoJiaorenwu:GetChecked() then
		PIGA["Interaction"]["AutoJiaorenwu"]=true;
	else
		PIGA["Interaction"]["AutoJiaorenwu"]=false;
	end
	CommonFun.Interaction.zidongduihua()
end);
InteractionF.zidongjieshouyaoqing = PIGCheckbutton_R(InteractionF,{"自动接受组队邀请","自动接受组队邀请"})
InteractionF.zidongjieshouyaoqing:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["Interaction"]["AutoJyaoqing"]=true;
	else
		PIGA["Interaction"]["AutoJyaoqing"]=false;
	end
	CommonFun.Interaction.YaoqingFuhuo()
end);
----
InteractionF.zidongFuhuo = PIGCheckbutton_R(InteractionF,{"自动接受复活","自动接受复活"})
InteractionF.zidongFuhuo:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["Interaction"]["AutoFuhuo"]=true;
	else
		PIGA["Interaction"]["AutoFuhuo"]=false;
	end
	CommonFun.Interaction.YaoqingFuhuo()
end);
if tocversion<80000 then
	InteractionF.AutolootCK = PIGCheckbutton_R(InteractionF,{"快速拾取","加快拾取速度(在队长分配不起作用)"})
	InteractionF.AutolootCK:SetScript("OnClick", function (self)
		if self:GetChecked() then
			PIGA["Interaction"]["Autoloot"]=true;
			CommonFun.Interaction.FastLoot()
		else
			PIGA["Interaction"]["Autoloot"]=false;
			Pig_Options_RLtishi_UI:Show()
		end
	end)
end
------
local AutoRepairline = PIGLine(InteractionF,"TOP",-300)
InteractionF.AutoRepair = PIGCheckbutton(InteractionF,{"TOPLEFT",AutoRepairline,"TOPLEFT",20,-16},{"自动修理", "与修理商人对话时自动修理身上和背包物品"})
InteractionF.AutoRepair:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["Interaction"]["AutoRepair"]=true;
	else
		PIGA["Interaction"]["AutoRepair"]=false;
	end
end);
if tocversion>19999 then
	InteractionF.GonghuiRepair = PIGCheckbutton(InteractionF,{"LEFT",InteractionF.AutoRepair,"RIGHT",200,0},{"优先使用公会资金", "修理时优先使用公会资金"})
	InteractionF.GonghuiRepair:SetScript("OnClick", function (self)
		if self:GetChecked() then
			PIGA["Interaction"]["AutoRepair_GUILD"]=true;
		else
			PIGA["Interaction"]["AutoRepair_GUILD"]=false;
		end
	end);
end
---------------
local RightPlusline = PIGLine(InteractionF,"TOP",-400)
InteractionF.RightPlus = PIGCheckbutton(InteractionF,{"TOPLEFT",RightPlusline,"TOPLEFT",20,-18},{"右键增强","增强交互时右键功能，例如点击聊天栏玩家名/查询页玩家名"})
InteractionF.RightPlus:SetScript("OnClick", function (self)
    if self:GetChecked() then
        PIGA["Interaction"]["RightPlus"]=true;
        InteractionFun.RightPlus()
        InteractionF.xiayiSlider:SetValue(PIGA["Interaction"]["xiayijuli"]);
    else
        PIGA["Interaction"]["RightPlus"]=false;
        Pig_Options_RLtishi_UI:Show()
    end
end);

InteractionF.xiayiTxt = PIGFontString(InteractionF,{"LEFT",InteractionF.RightPlus.Text,"RIGHT",20,0},"下移增强菜单")
local xiayiinfo = {0,100,1}
InteractionF.xiayiSlider = PIGSlider(InteractionF,{"LEFT",InteractionF.xiayiTxt,"RIGHT",10,0},{100,14},xiayiinfo)
InteractionF.xiayiSlider:SetScript("OnValueChanged", function(self)
	local val = self:GetValue()
	self.Text:SetText(val);
	PIGA["Interaction"]["xiayijuli"]=val
	if Pig_RightFUI then
		Pig_RightFUI:SetPoint("TOPLEFT",DropDownList1,"TOPRIGHT",0,-val)
	end
end)
--
InteractionF:HookScript("OnShow", function(self)
	self.AutoDialogue:SetChecked(PIGA["Interaction"]["AutoDialogue"]);
	self.AutoDown:SetChecked(PIGA['Interaction']['AutoDown']);
	self.AutoJierenwu:SetChecked(PIGA["Interaction"]["AutoJierenwu"]);
	self.AutoJiaorenwu:SetChecked(PIGA["Interaction"]["AutoJiaorenwu"]);
	self.zidongjieshouyaoqing:SetChecked(PIGA["Interaction"]["AutoJyaoqing"]);
	self.zidongFuhuo:SetChecked(PIGA["Interaction"]["AutoFuhuo"]);
	self.AutoRepair:SetChecked(PIGA["Interaction"]["AutoRepair"]);
	if tocversion<80000 then
		self.AutolootCK:SetChecked(PIGA["Interaction"]["Autoloot"]);
	end
	if tocversion>19999 then
		self.GonghuiRepair:SetChecked(PIGA["Interaction"]["AutoRepair_GUILD"]);
	end
	self.RightPlus:SetChecked(PIGA["Interaction"]["RightPlus"])
	self.xiayiSlider.Text:SetText(PIGA["Interaction"]["xiayijuli"]);
	if PIGA["Interaction"]["RightPlus"] then
		self.xiayiSlider:SetValue(PIGA["Interaction"]["xiayijuli"]);
	end
end)