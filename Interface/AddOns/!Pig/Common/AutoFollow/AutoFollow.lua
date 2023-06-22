local addonName, addonTable = ...;
local L=addonTable.locale
local _, _, _, tocversion = GetBuildInfo()
---
local Create=addonTable.Create
local PIGFrame=Create.PIGFrame
local PIGButton=Create.PIGButton
local PIGLine=Create.PIGLine
local PIGCheckbutton=Create.PIGCheckbutton
local PIGCheckbutton_R=Create.PIGCheckbutton_R
local PIGOptionsList_R=Create.PIGOptionsList_R
local PIGFontString=Create.PIGFontString
--
local CommonFun=addonTable.CommonFun
local Macro_FollowName = "PIGFOLLOW"
CommonFun.Macro_FollowName=Macro_FollowName
local AutoFollowF =PIGOptionsList_R(CommonFun.RTabFrame,L["COMMON_TABNAME3"],90)

---创建快捷按钮
function QuickButUI:AutoFollow()	
	if PIGA["QuickBut"]["Open"] and PIGA["QuickFollow"]["QuickBut"] then
		if Gensui_Z_UI then return end
		local nr = QuickButUI.nr
		local butW = nr:GetHeight()
		--主动
		local Children = {nr:GetChildren()};
		local geshu = #Children;
		local gensuiZ  = PIGButton(nr,nil,{butW-5,butW-5},"主","Gensui_Z_UI");
		if geshu==0 then
			gensuiZ:SetPoint("LEFT",nr,"LEFT",2,0);
		else
			gensuiZ:SetPoint("LEFT",Children[geshu],"RIGHT",2,0);
		end
		gensuiZ:RegisterForClicks("LeftButtonUp","RightButtonUp")
		gensuiZ:HookScript("OnEnter", function (self)
			GameTooltip:ClearLines();
			GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT",2,4);
			GameTooltip:AddLine("左键-|cff00FFFF跟随自定义角色！|r\n右击-|cff00FFFF随机跟随,目标优先级:当前目标>队友1/2/3/4|r")
			GameTooltip:Show();
		end);
		gensuiZ:HookScript("OnLeave", function ()
			GameTooltip:ClearLines();
			GameTooltip:Hide() 
		end);
		gensuiZ:HookScript("OnClick", function (self,botton)
			CommonFun.Gensui_Z(botton)
		end);
		--被动
		local gensuiB = CreateFrame("CheckButton", "Gensui_B_UI", nr, "ChatConfigCheckButtonTemplate");
		gensuiB:SetSize(butW,butW);
		gensuiB:SetPoint("LEFT",gensuiZ,"RIGHT",3,-4);
		gensuiB:SetHitRectInsets(0,0,0,0);
		gensuiB.Text:ClearAllPoints();
		gensuiB.Text:SetTextColor(1, 1, 0, 0.8);
		gensuiB.Text:SetPoint("TOP",gensuiB,"TOP",0,4);
		if tocversion<20000 then
			gensuiB.Text:SetText("被");
			gensuiB.tooltip = "|cffffFF00被动跟随|r\n|cff00FFFF开启后收到预设指令将自动开始或停止跟随目标！|r\n可在设置内自定义跟随指令/自动确认就位/只跟随队长！";
		else
			gensuiB.Text:SetText("宏");
			gensuiB.tooltip = "|cffffFF00动态切换宏跟随目标|r\n|cff00FFFF创建宏以后，可以根据接收到指令修改宏内的跟随目标(在插件设置创建宏)|r\n注意跟随还是需要手动点击宏！";
		end
		gensuiB:HookScript("OnClick", function (self)
			if self:GetChecked() then
				AutoFollowF.gensuiF.B_Open:SetChecked(true)
				PIG_PerA["QuickFollow"]["beidongOpen"]=true
			else
				AutoFollowF.gensuiF.B_Open:SetChecked(false)
				PIG_PerA["QuickFollow"]["beidongOpen"]=false
			end
			CommonFun.Gensui_B(PIG_PerA["QuickFollow"]["beidongOpen"],AutoFollowF)
		end);

		----
		local gensuiCMD  = PIGButton(nr,{"LEFT",gensuiB,"RIGHT",3,4},{butW-5,butW-5},"令","Gensui_B_CMD_UI");
		gensuiCMD:RegisterForClicks("LeftButtonUp","RightButtonUp")
		gensuiCMD:HookScript("OnEnter", function (self)
			GameTooltip:ClearLines();
			GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT",2,4);
			GameTooltip:AddLine("左键-|cff00FFFF发送开始指令|r\n右击-|cff00FFFF发送停止指令|r")
			GameTooltip:Show();
		end);
		gensuiCMD:HookScript("OnLeave", function ()
			GameTooltip:ClearLines();
			GameTooltip:Hide() 
		end);
		gensuiCMD:HookScript("OnClick", function (self,botton)
			if botton=="LeftButton" then
				if IsInGroup() then
					if IsInRaid() then
						SendChatMessage(PIGA["QuickFollow"]["Kaishi"], "RAID", nil);
					else
						SendChatMessage(PIGA["QuickFollow"]["Kaishi"], "PARTY", nil);
					end
				end
			else
				if IsInGroup() then
					if IsInRaid() then
						SendChatMessage(PIGA["QuickFollow"]["Jieshu"], "RAID", nil);
					else
						SendChatMessage(PIGA["QuickFollow"]["Jieshu"], "PARTY", nil);
					end
				end
			end
		end);
		QuickButUI:GengxinWidth()
		--
		if PIG_PerA["QuickFollow"]["beidongOpen"] then
			Gensui_B_UI:SetChecked(true) Gensui_B_CMD_UI:Disable() 
			C_Timer.After(3,function()
				CommonFun.Gensui_B(PIG_PerA["QuickFollow"]["beidongOpen"],AutoFollowF)
			end)
		end
	end
end
-----
AutoFollowF.QuickBut=PIGCheckbutton(AutoFollowF,{"TOPLEFT",AutoFollowF,"TOPLEFT",20,-20},{"添加<跟随开关>到功能动作条","在功能动作条显示跟随开关按钮\n|cff00FF00注意：此功能需先打开功能动作条功能|r"})
AutoFollowF.QuickBut:HookScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["QuickFollow"]["QuickBut"]=true;
		QuickButUI.AutoFollow()
	else
		PIGA["QuickFollow"]["QuickBut"]=false;
		Pig_Options_RLtishi_UI:Show()
	end
end);
-----------------------------
AutoFollowF.gensuijiuwei=PIGCheckbutton(AutoFollowF,{"TOPLEFT",AutoFollowF,"TOPLEFT",20,-60},{"跟随时自动就位","开启后，跟随时将自动确认就位确认"})
AutoFollowF.gensuijiuwei:HookScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["QuickFollow"]["Jiuwei"]=true;
	else
		PIGA["QuickFollow"]["Jiuwei"]=false;
	end
end);
AutoFollowF.yijiaoduizhang=PIGCheckbutton(AutoFollowF,{"TOPLEFT",AutoFollowF,"TOPLEFT",300,-60},{"跟随时自动移交队长/团长","开启后，跟随时收到"..L["CHAT_WHISPER"].."内容为[队长]/[团长]，将自动移交队长/团长给对方"})
AutoFollowF.yijiaoduizhang:HookScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["QuickFollow"]["Yijiao"]=true;
	else
		PIGA["QuickFollow"]["Yijiao"]=false;
	end
end);
--提示
AutoFollowF.GensuiTishi=PIGCheckbutton(AutoFollowF,{"TOPLEFT",AutoFollowF,"TOPLEFT",300,-20},{"开始和停止跟随提示","开启后，开始和停止跟随会在队伍频道/"..L["CHAT_WHISPER"].."提示"})
AutoFollowF.GensuiTishi:HookScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["QuickFollow"]["Tishi"]=true;
	else
		PIGA["QuickFollow"]["Tishi"]=false;
	end
end);
if tocversion>20000 then
	local wlktishi = "注意：暴雪已不允许远程激活跟随命令，现在跟随命令只响应硬件事件\n既需要手动点击跟随宏，插件只会根据指令自动改变跟随目标"
	AutoFollowF.wlktishi = PIGFontString(AutoFollowF,{"TOPLEFT", AutoFollowF, "TOPLEFT", 26, -110},wlktishi,nil,16)
	AutoFollowF.wlktishi:SetTextColor(1, 0, 0, 1);
end
-------------
AutoFollowF.gensuiF = PIGFrame(AutoFollowF,{"TOP", AutoFollowF, "TOP", 0, -160},{AutoFollowF:GetWidth()-40, 160})
AutoFollowF.gensuiF:PIGSetBackdrop()

--Show
local function Showbianji_E(Frame1,Frame2,data1,data2)
	Frame1:SetTextColor(1, 1, 1, 1);
	Frame2:Show(); 
end
--ESC
local function ESCbianji_E(Frame1,Frame2,data1,data2)
	Frame1:ClearFocus();Frame2:Hide();
	Frame1:SetTextColor(200/255, 200/255, 200/255, 0.8);
	Frame1:SetText(PIGA[data1][data2]);
end
--save
local function baocunbianji_E(Frame1,Frame2,data1,data2)
	PIGA[data1][data2]=Frame1:GetText()
	Frame1:ClearFocus()
	Frame1:SetTextColor(200/255, 200/255, 200/255, 0.8);
	Frame2:Hide();
end
----设置被动跟随===============
local gensuiB_tishi = CreateFrame("Frame", "gensuiB_UI_tishi", UIParent)
gensuiB_tishi:SetSize(200,50);
gensuiB_tishi:SetPoint("CENTER", UIParent, "CENTER", 0, 50);
gensuiB_tishi:Hide();
gensuiB_tishi.t = PIGFontString(gensuiB_tishi,{"CENTER", gensuiB_tishi, "CENTER", 0, 0},nil,"OUTLINE",40)
if tocversion<20000 then
	gensuiB_tishi.t:SetText("|cffffFF00被动|r|cff00D7FF跟随中...|r");
else
	gensuiB_tishi.t:SetText("|cffffFF00接收|r|cff00D7FF指令中...|r");
end

AutoFollowF.gensuiF.ST_B_t = PIGFontString(AutoFollowF.gensuiF,{"TOPLEFT", AutoFollowF.gensuiF, "TOPLEFT", 10, -10})
if tocversion<20000 then
	AutoFollowF.gensuiF.ST_B_t:SetText("|cff00FFFF被动跟随设置|r(收到队友指定发言或"..L["CHAT_WHISPER"].."将自动跟随对方)");
else
	AutoFollowF.gensuiF.ST_B_t:SetText("|cff00FFFF跟随宏|r(根据队友发言指令切换宏命令内的跟随目标)");
end
if tocversion<20000 then
	AutoFollowF.gensuiF.B_Open=PIGCheckbutton(AutoFollowF.gensuiF,{"TOPLEFT",AutoFollowF.gensuiF,"TOPLEFT",20,-40},{"开启被动跟随","收到队友指定指令将自动跟随对方"})
else
	AutoFollowF.gensuiF.B_Open=PIGCheckbutton(AutoFollowF.gensuiF,{"TOPLEFT",AutoFollowF.gensuiF,"TOPLEFT",20,-40},{"开启动态切换跟随目标","根据队友发言指令切换宏命令的跟随目标"})
end
AutoFollowF.gensuiF.B_Open:HookScript("OnClick", function (self)
	if self:GetChecked() then
		PIG_PerA["QuickFollow"]["beidongOpen"]=true
		if Gensui_B_UI then Gensui_B_UI:SetChecked(true) end
	else
		PIG_PerA["QuickFollow"]["beidongOpen"]=false
		if Gensui_B_UI then Gensui_B_UI:SetChecked(false) end
	end
	CommonFun.Gensui_B(PIG_PerA["QuickFollow"]["beidongOpen"],AutoFollowF)
end)
AutoFollowF.gensuiF.ST_B_Duizhang=PIGCheckbutton(AutoFollowF.gensuiF,{"TOPLEFT",AutoFollowF.gensuiF,"TOPLEFT",300,-40},{"只接受队长指令","只接受来自队长的指令"})
AutoFollowF.gensuiF.ST_B_Duizhang:HookScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["QuickFollow"]["Duizhang"]=true;
	else
		PIGA["QuickFollow"]["Duizhang"]=false;
	end
end);
--开始指令
AutoFollowF.gensuiF.ST_B_E_t = PIGFontString(AutoFollowF.gensuiF,{"TOPLEFT", AutoFollowF.gensuiF.B_Open, "BOTTOMLEFT", 6, -15},"开始指令")
AutoFollowF.gensuiF.ST_B_E = CreateFrame("EditBox", nil, AutoFollowF.gensuiF,"InputBoxInstructionsTemplate");
AutoFollowF.gensuiF.ST_B_E:SetSize(100,30);
AutoFollowF.gensuiF.ST_B_E:SetPoint("LEFT",AutoFollowF.gensuiF.ST_B_E_t,"RIGHT",10,0);
AutoFollowF.gensuiF.ST_B_E:SetFontObject(ChatFontNormal);
AutoFollowF.gensuiF.ST_B_E:SetAutoFocus(false);
AutoFollowF.gensuiF.ST_B_E:EnableMouse(true)
AutoFollowF.gensuiF.ST_B_E:SetTextColor(200/255, 200/255, 200/255, 0.8); 
AutoFollowF.gensuiF.ST_B_E:HookScript("OnEditFocusGained", function(self)
	Showbianji_E(self,AutoFollowF.gensuiF.ST_B_E_b)
end);
AutoFollowF.gensuiF.ST_B_E:HookScript("OnEscapePressed", function(self) 
	ESCbianji_E(self,AutoFollowF.gensuiF.ST_B_E_b,"QuickFollow","Kaishi")
end);
AutoFollowF.gensuiF.ST_B_E:HookScript("OnEnterPressed", function(self)
	baocunbianji_E(self,AutoFollowF.gensuiF.ST_B_E_b,"QuickFollow","Kaishi")
end);
AutoFollowF.gensuiF.ST_B_E_b = CreateFrame("Button",nil,AutoFollowF.gensuiF, "UIPanelButtonTemplate");  
AutoFollowF.gensuiF.ST_B_E_b:SetSize(40,22);
AutoFollowF.gensuiF.ST_B_E_b:SetPoint("LEFT",AutoFollowF.gensuiF.ST_B_E,"RIGHT",0,0);
AutoFollowF.gensuiF.ST_B_E_b:SetText("确定");
AutoFollowF.gensuiF.ST_B_E_b:Hide();
AutoFollowF.gensuiF.ST_B_E_b:RegisterForClicks("LeftButtonUp", "RightButtonUp");
AutoFollowF.gensuiF.ST_B_E_b:HookScript("OnClick", function (self)
	baocunbianji_E(AutoFollowF.gensuiF.ST_B_E,self,"QuickFollow","Kaishi")
end);
--结束指令
AutoFollowF.gensuiF.ST_B_E_t_E = PIGFontString(AutoFollowF.gensuiF,{"LEFT", AutoFollowF.gensuiF.ST_B_E_t, "RIGHT", 170, 0},"停止指令")
AutoFollowF.gensuiF.ST_B_E_E = CreateFrame("EditBox", nil, AutoFollowF.gensuiF,"InputBoxInstructionsTemplate");
AutoFollowF.gensuiF.ST_B_E_E:SetSize(100,30);
AutoFollowF.gensuiF.ST_B_E_E:SetPoint("LEFT",AutoFollowF.gensuiF.ST_B_E_t_E,"RIGHT",10,0);
AutoFollowF.gensuiF.ST_B_E_E:SetFontObject(ChatFontNormal);
AutoFollowF.gensuiF.ST_B_E_E:SetAutoFocus(false);
AutoFollowF.gensuiF.ST_B_E_E:EnableMouse(true)
AutoFollowF.gensuiF.ST_B_E_E:SetTextColor(200/255, 200/255, 200/255, 0.8); 
AutoFollowF.gensuiF.ST_B_E_E:HookScript("OnEditFocusGained", function(self)
	Showbianji_E(self,AutoFollowF.gensuiF.ST_B_E_b_E)
end);
AutoFollowF.gensuiF.ST_B_E_E:HookScript("OnEscapePressed", function(self) 
	ESCbianji_E(self,AutoFollowF.gensuiF.ST_B_E_b_E,"QuickFollow","Jieshu")
end);
AutoFollowF.gensuiF.ST_B_E_E:HookScript("OnEnterPressed", function(self)
	baocunbianji_E(self,AutoFollowF.gensuiF.ST_B_E_b_E,"QuickFollow","Jieshu")
end);
AutoFollowF.gensuiF.ST_B_E_b_E = CreateFrame("Button",nil,AutoFollowF.gensuiF, "UIPanelButtonTemplate");  
AutoFollowF.gensuiF.ST_B_E_b_E:SetSize(40,22);
AutoFollowF.gensuiF.ST_B_E_b_E:SetPoint("LEFT",AutoFollowF.gensuiF.ST_B_E_E,"RIGHT",0,0);
AutoFollowF.gensuiF.ST_B_E_b_E:SetText("确定");
AutoFollowF.gensuiF.ST_B_E_b_E:Hide();
AutoFollowF.gensuiF.ST_B_E_b_E:RegisterForClicks("LeftButtonUp", "RightButtonUp");
AutoFollowF.gensuiF.ST_B_E_b_E:HookScript("OnClick", function (self)
	baocunbianji_E(AutoFollowF.gensuiF.ST_B_E_E,self,"QuickFollow","Jieshu")
end);
AutoFollowF.gensuiF:HookScript("OnHide", function(self)
	ESCbianji_E(AutoFollowF.gensuiF.ST_B_E,AutoFollowF.gensuiF.ST_B_E_b,"QuickFollow","Kaishi")
	ESCbianji_E(AutoFollowF.gensuiF.ST_B_E_E,AutoFollowF.gensuiF.ST_B_E_b_E,"QuickFollow","Jieshu")
end);
-------------------------
if tocversion<20000 then
	--强力模式
	AutoFollowF.gensuiF.qianglimoshi=PIGCheckbutton(AutoFollowF.gensuiF,{"TOPLEFT",AutoFollowF.gensuiF,"TOPLEFT",20,-120},{"强力模式","开启后，在未收到停止指令前不会停止跟随"})
	AutoFollowF.gensuiF.qianglimoshi:SetScript("OnClick", function (self)
		if self:GetChecked() then
			PIGA["QuickFollow"]["Qiangli"]=true;
		else
			PIGA["QuickFollow"]["Qiangli"]=false;
		end
	end);
else
	AutoFollowF.gensuiF.New_hong = PIGButton(AutoFollowF.gensuiF,{"TOPLEFT",AutoFollowF.gensuiF,"TOPLEFT",20,-120},{140,24},"创建跟随宏")
	AutoFollowF.gensuiF.New_hong:HookScript("OnClick", function ()
		local macroSlot = GetMacroIndexByName(Macro_FollowName)
		if macroSlot>0 then
			StaticPopup_Show ("ADD_GENSUI_HONG");
		else
			local global, perChar = GetNumMacros()
			if global<120 then
				StaticPopup_Show ("ADD_GENSUI_HONG");
			else
				PIG_print("你的宏数量已达最大值120，请删除一些再尝试。");
			end
		end
	end)
	---
	local function NEW_hong()
		local macroSlot = GetMacroIndexByName(Macro_FollowName)
		local hanhuaneirong1="/follow 猪猪加油";
		if macroSlot==0 then
			CreateMacro(Macro_FollowName, 135994, hanhuaneirong1, nil)
		else
			EditMacro(macroSlot, nil, 135994, hanhuaneirong1)
		end
	end
	StaticPopupDialogs["ADD_GENSUI_HONG"] = {
		text = "将创建一个跟随宏，请拖拽到动作条使用\n\n确定创建吗？\n\n",
		button1 = "确定",
		button2 = "取消",
		OnAccept = function()
			NEW_hong()
		end,
		timeout = 0,
		whileDead = true,
		hideOnEscape = true,
	}
end
----设置主动跟随==================
local gensuiZ_tishi = CreateFrame("Frame", "Gensui_Z_UI_tishi", UIParent)
gensuiZ_tishi:SetSize(200,50);
gensuiZ_tishi:SetPoint("CENTER", UIParent, "CENTER", 0, 50);
gensuiZ_tishi:Hide();
gensuiZ_tishi.t = PIGFontString(gensuiZ_tishi,{"CENTER", gensuiZ_tishi, "CENTER", 0, 0},nil,nil,40)
gensuiZ_tishi.t:SetText("|cff00FF00主动|r|cff00D7FF跟随中...|r");

AutoFollowF.gensuiFZ = PIGFrame(AutoFollowF,{"TOP", AutoFollowF, "TOP", 0, -330},{AutoFollowF:GetWidth()-40, 120})
AutoFollowF.gensuiFZ:PIGSetBackdrop()

AutoFollowF.gensuiFZ.ST_Z_t = PIGFontString(AutoFollowF.gensuiFZ,{"TOPLEFT", AutoFollowF.gensuiFZ, "TOPLEFT", 15, -15},"|cff00FFFF主动跟随设置|r")

AutoFollowF.gensuiFZ.ST_Z_t.ST_Z_E_t = PIGFontString(AutoFollowF.gensuiFZ,{"TOPLEFT", AutoFollowF.gensuiFZ.ST_Z_t, "BOTTOMLEFT", 4, -20},"自定义跟随角色：")
AutoFollowF.gensuiFZ.ST_Z_E = CreateFrame("EditBox", nil, AutoFollowF.gensuiFZ,"InputBoxInstructionsTemplate");
AutoFollowF.gensuiFZ.ST_Z_E:SetSize(150,30);
AutoFollowF.gensuiFZ.ST_Z_E:SetPoint("LEFT",AutoFollowF.gensuiFZ.ST_Z_t.ST_Z_E_t,"RIGHT",10,0);
AutoFollowF.gensuiFZ.ST_Z_E:SetFontObject(ChatFontNormal);
AutoFollowF.gensuiFZ.ST_Z_E:SetAutoFocus(false);
AutoFollowF.gensuiFZ.ST_Z_E:EnableMouse(true)
AutoFollowF.gensuiFZ.ST_Z_E:SetTextColor(200/255, 200/255, 200/255, 0.8);
AutoFollowF.gensuiFZ.ST_Z_E:HookScript("OnEditFocusGained", function(self)
	Showbianji_E(self,AutoFollowF.gensuiFZ.ST_Z_E_b)
end);
AutoFollowF.gensuiFZ.ST_Z_E:HookScript("OnEscapePressed", function(self)
	ESCbianji_E(self,AutoFollowF.gensuiFZ.ST_Z_E_b,"QuickFollow","Name")
end);
AutoFollowF.gensuiFZ.ST_Z_E:HookScript("OnEnterPressed", function(self)
	baocunbianji_E(self,AutoFollowF.gensuiFZ.ST_Z_E_b,"QuickFollow","Name")
end);
AutoFollowF.gensuiFZ.ST_Z_E_b = CreateFrame("Button",nil,AutoFollowF.gensuiFZ, "UIPanelButtonTemplate");  
AutoFollowF.gensuiFZ.ST_Z_E_b:SetSize(40,22);
AutoFollowF.gensuiFZ.ST_Z_E_b:SetPoint("LEFT",AutoFollowF.gensuiFZ.ST_Z_E,"RIGHT",0,0);
AutoFollowF.gensuiFZ.ST_Z_E_b:SetText("确定");
AutoFollowF.gensuiFZ.ST_Z_E_b:Hide();
AutoFollowF.gensuiFZ.ST_Z_E_b:RegisterForClicks("LeftButtonUp", "RightButtonUp");
AutoFollowF.gensuiFZ.ST_Z_E_b:HookScript("OnClick", function (self)
	baocunbianji_E(AutoFollowF.gensuiFZ.ST_Z_E,self,"QuickFollow","Name")
end);
AutoFollowF.gensuiFZ:HookScript("OnHide", function(self)
	ESCbianji_E(AutoFollowF.gensuiFZ.ST_Z_E,AutoFollowF.gensuiFZ.ST_Z_E_b,"QuickFollow","Name")
end);
--=============================
AutoFollowF:HookScript("OnShow", function(self)
	self.QuickBut:SetChecked(PIGA["QuickFollow"]["QuickBut"])
	self.gensuiFZ.ST_Z_E:SetText(PIGA["QuickFollow"]["Name"]);
	self.gensuiF.ST_B_E:SetText(PIGA["QuickFollow"]["Kaishi"]);
	self.gensuiF.ST_B_E_E:SetText(PIGA["QuickFollow"]["Jieshu"]);
	self.gensuiF.ST_B_Duizhang:SetChecked(PIGA["QuickFollow"]["Duizhang"]);
	self.GensuiTishi:SetChecked(PIGA["QuickFollow"]["Tishi"]);
	self.gensuijiuwei:SetChecked(PIGA["QuickFollow"]["Jiuwei"]);
	self.yijiaoduizhang:SetChecked(PIGA["QuickFollow"]["Yijiao"]);
end)