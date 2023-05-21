local _, addonTable = ...;
local L=addonTable.locale
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
-----
local QuickChatfun=addonTable.QuickChatfun
local fuFrame =PIGOptionsList_R(QuickChatfun.RTabFrame,L["CHAT_TABNAME4"],110)
--=========================================================
--聊天窗口可以移动到屏幕边缘
local function Bianju()
	if PIG["Chat"]["Frame"]["Bianju"] then
		for i = 1, NUM_CHAT_WINDOWS do 
			_G["ChatFrame"..i]:SetClampRectInsets(-35, 0, 0, 0) --可拖动至紧贴屏幕边缘 
		end
	end
end
fuFrame.Bianju = PIGCheckbutton_R(fuFrame,{L["CHAT_BIANJU"],L["CHAT_BIANJUTIPS"]})
fuFrame.Bianju:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIG["Chat"]["Frame"]["Bianju"]=true;
		Bianju()
	else
		PIG["Chat"]["Frame"]["Bianju"]=false;
		Pig_Options_RLtishi_UI:Show()
	end
end);
fuFrame:HookScript("OnShow", function (self)
	self.Bianju:SetChecked(PIG["Chat"]["Frame"]["Bianju"])
end);
--========================================
fuFrame.zhuF = PIGFrame(fuFrame,{"TOP", fuFrame, "TOP", 0, -70},{fuFrame:GetWidth()-20, 140})
fuFrame.zhuF:PIGSetBackdrop()
fuFrame.zhuF.bt = PIGFontString(fuFrame.zhuF,{"TOPLEFT", fuFrame.zhuF, "TOPLEFT", 6, -2},L["CHAT_ZHUCHATF"])
--设置主聊天宽度
local function Enable_Disable(self,Booleans)
	if Booleans then
		self:Enable()
		self.Low:SetTextColor(1, 1, 1, 1);
		self.High:SetTextColor(1, 1, 1, 1);
		self.Text:SetTextColor(1, 1, 1, 1);
	else
		self:Disable();
		self.Low:SetTextColor(0.8, 0.8, 0.8, 0.5);
		self.High:SetTextColor(0.8, 0.8, 0.8, 0.5);
		self.Text:SetTextColor(0.8, 0.8, 0.8, 0.5);
	end
end
local function Zhu_Width_Height_XY()
	fuFrame.zhuF.Width:SetChecked(PIG["Chat"]["Frame"]["Width"]);
	fuFrame.zhuF.Height:SetChecked(PIG["Chat"]["Frame"]["Height"]);
	fuFrame.zhuF.Point:SetChecked(PIG["Chat"]["Frame"]["Point"]);
	Enable_Disable(fuFrame.zhuF.Width.Slider,PIG["Chat"]["Frame"]["Width"])
	Enable_Disable(fuFrame.zhuF.Height.Slider,PIG["Chat"]["Frame"]["Height"])
	Enable_Disable(fuFrame.zhuF.Point.Slider_X,PIG["Chat"]["Frame"]["Point"])
	Enable_Disable(fuFrame.zhuF.Point.Slider_Y,PIG["Chat"]["Frame"]["Point"])
end
local function SetValueText()
	if PIG["Chat"]["Frame"]["Width"] then
		fuFrame.zhuF.Width.Slider:SetValue(PIG["Chat"]["Frame"]["Width_value"]);
		fuFrame.zhuF.Width.Slider.Text:SetText(PIG["Chat"]["Frame"]["Width_value"]);
	end
	if PIG["Chat"]["Frame"]["Height"] then
		fuFrame.zhuF.Height.Slider:SetValue(PIG["Chat"]["Frame"]["Height_value"]);
		fuFrame.zhuF.Height.Slider.Text:SetText(PIG["Chat"]["Frame"]["Height_value"]);
	end
	if PIG["Chat"]["Frame"]["Point"] then
		fuFrame.zhuF.Point.Slider_X:SetValue(PIG["Chat"]["Frame"]["Point_X"]);
		fuFrame.zhuF.Point.Slider_X.Text:SetText("X:"..PIG["Chat"]["Frame"]["Point_X"]);
		fuFrame.zhuF.Point.Slider_Y:SetValue(PIG["Chat"]["Frame"]["Point_Y"]);
		fuFrame.zhuF.Point.Slider_Y.Text:SetText("Y:"..PIG["Chat"]["Frame"]["Point_Y"]);
	end
end
fuFrame.zhuF.Width = PIGCheckbutton(fuFrame.zhuF,{"TOPLEFT",fuFrame.zhuF,"TOPLEFT",10,-30},{L["CHAT_ZHUCHATFW"],L["CHAT_ZHUCHATFWTIPS"]})
fuFrame.zhuF.Width:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIG["Chat"]["Frame"]["Width"]=true
	else
		PIG["Chat"]["Frame"]["Width"]=false
		Pig_Options_RLtishi_UI:Show()
	end
	Zhu_Width_Height_XY()
	SetValueText()
end);
local xiayiinfo = {150,800,1}
fuFrame.zhuF.Width.Slider = PIGSlider(fuFrame.zhuF,{"LEFT",fuFrame.zhuF.Width.Text,"RIGHT",6,0},{100,14},xiayiinfo)
fuFrame.zhuF.Width.Slider:SetScript("OnMouseWheel", function(self, arg1)
	if self:IsEnabled() then
		local sliderMin, sliderMax = self:GetMinMaxValues()
		local value = self:GetValue()
		if arg1 > 0 then
			self:SetValue(min(value + arg1, sliderMax))
		else
			self:SetValue(max(value + arg1, sliderMin))
		end
	end
end)
fuFrame.zhuF.Width.Slider:SetScript("OnValueChanged", function(self)
	local valxxx = self:GetValue()
	PIG["Chat"]["Frame"]["Width_value"]=valxxx;
	ChatFrame1:SetWidth(PIG["Chat"]["Frame"]["Width_value"]);
end)
--设置主聊天窗口高度
fuFrame.zhuF.Height = PIGCheckbutton(fuFrame.zhuF,{"LEFT",fuFrame.zhuF.Width.Slider,"RIGHT",100,0},{L["CHAT_ZHUCHATFH"],L["CHAT_ZHUCHATFHTIPS"]})
fuFrame.zhuF.Height:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIG["Chat"]["Frame"]["Height"]=true;
	else
		PIG["Chat"]["Frame"]["Height"]=false;
		Pig_Options_RLtishi_UI:Show()
	end
	Zhu_Width_Height_XY()
	SetValueText()
end);
-----------------------------------
local xiayiinfo = {120,500,1}
fuFrame.zhuF.Height.Slider = PIGSlider(fuFrame.zhuF,{"LEFT",fuFrame.zhuF.Height.Text,"RIGHT",6,0},{100,14},xiayiinfo)
fuFrame.zhuF.Height.Slider:SetScript("OnMouseWheel", function(self, arg1)
	if fuFrame.zhuF.Height_Slider:IsEnabled() then
		local sliderMin, sliderMax = self:GetMinMaxValues()
		local value = self:GetValue()
		if arg1 > 0 then
			self:SetValue(min(value + arg1, sliderMax))
		else
			self:SetValue(max(value + arg1, sliderMin))
		end
	end
end)
fuFrame.zhuF.Height.Slider:SetScript("OnValueChanged", function(self)
	local valxxx = self:GetValue()
	PIG["Chat"]["Frame"]["Height_value"]=valxxx;
	ChatFrame1:SetHeight(PIG["Chat"]["Frame"]["Height_value"]);
end)
--主聊天窗口X位置=======================
local function SetPointXY()
	local XXX,YYY = PIG["Chat"]["Frame"]["Point_X"],PIG["Chat"]["Frame"]["Point_Y"]
	fuFrame.zhuF.Point.Slider_X.Text:SetText("X:"..XXX);
	fuFrame.zhuF.Point.Slider_X:SetValue(XXX);
	fuFrame.zhuF.Point.Slider_Y.Text:SetText("Y:"..YYY);
	fuFrame.zhuF.Point.Slider_Y:SetValue(YYY);
	if YYY<50 then
		for i = 1, NUM_CHAT_WINDOWS do 
			_G["ChatFrame"..i]:SetClampRectInsets(-35, 0, 0, 0) --可拖动至紧贴屏幕边缘 
		end
	end
	ChatFrame1:ClearAllPoints();
	ChatFrame1:SetPoint("BOTTOMLEFT",UIParent,"BOTTOMLEFT",XXX,YYY);
end

fuFrame.zhuF.Point = PIGCheckbutton(fuFrame.zhuF,{"TOPLEFT",fuFrame.zhuF.Width,"BOTTOMLEFT",0,-20},{L["CHAT_ZHUCHATFXY"],L["CHAT_ZHUCHATFXYTIPS"]})
fuFrame.zhuF.Point:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIG["Chat"]["Frame"]["Point"]=true;
	else
		PIG["Chat"]["Frame"]["Point"]=false;
		Pig_Options_RLtishi_UI:Show()
	end
	Zhu_Width_Height_XY()
	SetValueText()
end);
local xiayiinfo = {35,500,1}
fuFrame.zhuF.Point.Slider_X = PIGSlider(fuFrame.zhuF,{"LEFT",fuFrame.zhuF.Point.Text,"RIGHT",8,0},{100,14},xiayiinfo)
fuFrame.zhuF.Point.Slider_X:SetScript("OnMouseWheel", function(self, arg1)
	if self:IsEnabled() then
		local sliderMin, sliderMax = self:GetMinMaxValues()
		local value = self:GetValue()
		if arg1 > 0 then
			self:SetValue(min(value + arg1, sliderMax))
		else
			self:SetValue(max(value + arg1, sliderMin))
		end
	end
end)
fuFrame.zhuF.Point.Slider_X:SetScript("OnValueChanged", function(self)
	local valxxx = self:GetValue()
	PIG["Chat"]["Frame"]["Point_X"]=valxxx;
	SetPointXY()
end)
local xiayiinfo = {0,500,1}
fuFrame.zhuF.Point.Slider_Y = PIGSlider(fuFrame.zhuF,{"LEFT",fuFrame.zhuF.Point.Slider_X,"RIGHT",48,0},{100,14},xiayiinfo)
fuFrame.zhuF.Point.Slider_Y:SetScript("OnMouseWheel", function(self, arg1)
	if self:IsEnabled() then
		local sliderMin, sliderMax = self:GetMinMaxValues()
		local value = self:GetValue()
		if arg1 > 0 then
			self:SetValue(min(value + arg1, sliderMax))
		else
			self:SetValue(max(value + arg1, sliderMin))
		end
	end
end)
fuFrame.zhuF.Point.Slider_Y:SetScript("OnValueChanged", function(self)
	local valxxx = self:GetValue()
	PIG["Chat"]["Frame"]["Point_Y"]=valxxx;
	SetPointXY()
end)
----
fuFrame.zhuF:SetScript("OnShow", function(self)
	Zhu_Width_Height_XY()
end)

--LOOT=======================================
--FCF_ResetChatWindows();--恢复聊天设置为默认
--FCF_ResetChatWindows(); -- 重置聊天设置
--FCF_SetLocked(_G.ChatFrame1, 1) --锁定聊天窗口移动
--FCF_DockFrame(_G.ChatFrame2,3)  --设置窗口是否停靠参数2为停靠位置
--FCF_UnDockFrame(_G["ChatFrame"..NewWindow_ID]); --分离窗口
--FCF_NewChatWindow(L["CHAT_LOOTFNAME"])--用户手动创建新窗口
--FCF_OpenNewWindow(L["CHAT_LOOTFNAME"]);--创建聊天窗口 
--FCF_SetWindowName(_G.ChatFrame2, "记录");
--FCF_UpdateButtonSide(_G["ChatFrame"..id]);--刷新按钮位置
fuFrame.LOOTF = PIGFrame(fuFrame,{"TOP", fuFrame, "TOP", 0, -250},{fuFrame:GetWidth()-20, 150})
fuFrame.LOOTF:PIGSetBackdrop()
fuFrame.LOOTF.add = PIGButton(fuFrame.LOOTF,{"TOPLEFT",fuFrame.LOOTF,"TOPLEFT",4,-4},{150,22},L["CHAT_LOOTFADD"]);
--重设窗口显示内容
local function ShowChannelFun()
	--综合
	if fuFrame.Chatloot and PIG["Chat"]["Frame"]["ShowChannel"] then
		local chatGroup1 = { "SYSTEM", "CHANNEL", "SAY", "EMOTE", "YELL", "WHISPER", "PARTY", "PARTY_LEADER", "RAID", "RAID_LEADER", "RAID_WARNING", "INSTANCE_CHAT", "INSTANCE_CHAT_LEADER", "GUILD", "OFFICER", "MONSTER_SAY", "MONSTER_YELL", "MONSTER_EMOTE", "MONSTER_WHISPER", "MONSTER_BOSS_EMOTE", "MONSTER_BOSS_WHISPER", "ERRORS", "AFK", "DND", "IGNORED", "BG_HORDE", "BG_ALLIANCE", "BG_NEUTRAL", "ACHIEVEMENT", "GUILD_ACHIEVEMENT", "BN_WHISPER", "BN_INLINE_TOAST_ALERT","TARGETICONS" }
		ChatFrame_RemoveAllMessageGroups(DEFAULT_CHAT_FRAME)
		for _, v in ipairs(chatGroup1) do
			ChatFrame_AddMessageGroup(DEFAULT_CHAT_FRAME, v)
		end
		--拾取窗口
		local chatGroup3 = { "COMBAT_XP_GAIN", "COMBAT_HONOR_GAIN", "COMBAT_FACTION_CHANGE", "SKILL", "MONEY", "LOOT", "TRADESKILLS", "OPENING", "PET_INFO", "COMBAT_MISC_INFO" }
		for id=1,NUM_CHAT_WINDOWS,1 do
			local name, __ = GetChatWindowInfo(id);
			if name==L["CHAT_LOOTFNAME"] then
				ChatFrame_RemoveAllMessageGroups(_G["ChatFrame"..id])
				for _, v in ipairs(chatGroup3) do
					ChatFrame_AddMessageGroup(_G["ChatFrame"..id], v)
				end
				break
			end
		end
		for id=1,NUM_CHAT_WINDOWS,1 do
			local name, __ = GetChatWindowInfo(id);
			if name==COMBAT_LOG then
				FCF_SetWindowName(_G["ChatFrame"..id], COMBAT_LABEL);
				break
			end
		end
	end
end
local tishims = {L["CHAT_LOOTFNRSET"],L["CHAT_LOOTFNRSETTIPS"]}
fuFrame.LOOTF.ShowChannel = PIGCheckbutton(fuFrame.LOOTF,{"LEFT",fuFrame.LOOTF.add,"RIGHT",60,-2},tishims)
fuFrame.LOOTF.ShowChannel:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIG["Chat"]["Frame"]["ShowChannel"]=true;
	else
		PIG["Chat"]["Frame"]["ShowChannel"]=false;
	end
	ShowChannelFun()
end);
--提示
fuFrame.LOOTF.tishi = CreateFrame("Frame", nil, fuFrame.LOOTF);
fuFrame.LOOTF.tishi:SetSize(30,30);
fuFrame.LOOTF.tishi:SetPoint("LEFT",fuFrame.LOOTF.add,"RIGHT",0,0);
fuFrame.LOOTF.tishi.Texture = fuFrame.LOOTF.tishi:CreateTexture(nil, "BORDER");
fuFrame.LOOTF.tishi.Texture:SetTexture("interface/common/help-i.blp");
fuFrame.LOOTF.tishi.Texture:SetAllPoints(fuFrame.LOOTF.tishi)
fuFrame.LOOTF.tishi:SetScript("OnEnter", function (self)
	GameTooltip:ClearLines();
	GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT",0,0);
	GameTooltip:AddLine(L["LIB_TIPS"])
	GameTooltip:AddLine(L["CHAT_LOOTFTIPS"])
	GameTooltip:Show();
end);
fuFrame.LOOTF.tishi:SetScript("OnLeave", function ()
	GameTooltip:ClearLines();
	GameTooltip:Hide() 
end);
fuFrame.LOOTF.ShowlootF = PIGButton(fuFrame.LOOTF,{"TOPLEFT",fuFrame.LOOTF,"TOPLEFT",410,-4},{150,22},L["CHAT_LOOTFFENLI"]);
fuFrame.LOOTF.ShowlootF:SetScript("OnClick", function (self)
	if fuFrame.ChatlootID then
		local lotofa = _G["ChatFrame"..fuFrame.ChatlootID]
		local lotofaTab = _G["ChatFrame"..fuFrame.ChatlootID.."Tab"]
		if lotofa:IsShown() then
			lotofa:Hide()
			lotofaTab:Hide()
		else
			--FCF_SetLocked(lotofa, 2)
			FCF_UnDockFrame(lotofa);
			lotofa:Show()
			lotofaTab:Show()
		end
	end
end);
--设置拾取窗口------------------------
local function LOOT_Width_Heigh_Point_XY()
	if fuFrame.Chatloot then
		fuFrame.LOOTF.add:Disable()
		fuFrame.LOOTF.add:SetText(L["CHAT_LOOTFYES"])
		fuFrame.LOOTF.ShowlootF:Enable()
		PIGEnable(fuFrame.LOOTF.ShowChannel)
		PIGEnable(fuFrame.LOOTF.Width)
		PIGEnable(fuFrame.LOOTF.Height)
		PIGEnable(fuFrame.LOOTF.Point)
	else
		fuFrame.LOOTF.add:Enable()
		fuFrame.LOOTF.add:SetText(L["CHAT_LOOTFADD"])
		fuFrame.LOOTF.ShowlootF:Disable()
		PIGDisable(fuFrame.LOOTF.ShowChannel)
		PIGDisable(fuFrame.LOOTF.Width)
		PIGDisable(fuFrame.LOOTF.Height)
		PIGDisable(fuFrame.LOOTF.Point)
	end
	Enable_Disable(fuFrame.LOOTF.Width.Slider,fuFrame.Chatloot)
	Enable_Disable(fuFrame.LOOTF.Height.Slider,fuFrame.Chatloot)
	Enable_Disable(fuFrame.LOOTF.Point.Slider_X,fuFrame.Chatloot)
	Enable_Disable(fuFrame.LOOTF.Point.Slider_Y,fuFrame.Chatloot)
end

--拾取窗口位置
fuFrame.Chatloot = false
fuFrame.ChatlootNum=0
local function LOOT_cunzai()
	if NUM_CHAT_WINDOWS~=nil then
		for id=1,NUM_CHAT_WINDOWS,1 do
			local name, __ = GetChatWindowInfo(id);
			if name==L["CHAT_LOOTFNAME"] then
				--print(name)
				fuFrame.Chatloot = true
				fuFrame.ChatlootID = id
				return id
			end
		end
	end
end
local function LOOT_SetValueText()
	LOOT_cunzai()
	if fuFrame.Chatloot then
		ShowChannelFun()
		if PIG["Chat"]["Frame"]["Loot_Width"] then
			fuFrame.LOOTF.Width.Slider.Text:SetText(PIG["Chat"]["Frame"]["Loot_Width_value"]);
			fuFrame.LOOTF.Width.Slider:SetValue(PIG["Chat"]["Frame"]["Loot_Width_value"]);
		end
		if PIG["Chat"]["Frame"]["Loot_Height"] then
			fuFrame.LOOTF.Height.Slider.Text:SetText(PIG["Chat"]["Frame"]["Loot_Height_value"]);
			fuFrame.LOOTF.Height.Slider:SetValue(PIG["Chat"]["Frame"]["Loot_Height_value"]);
		end
		if PIG["Chat"]["Frame"]["Loot_Point"] then
			fuFrame.LOOTF.Point.Slider_X.Text:SetText("X:"..PIG["Chat"]["Frame"]["Loot_Point_X"]);
			fuFrame.LOOTF.Point.Slider_X:SetValue(PIG["Chat"]["Frame"]["Loot_Point_X"]);
			fuFrame.LOOTF.Point.Slider_Y.Text:SetText("Y:"..PIG["Chat"]["Frame"]["Loot_Point_Y"]);
			fuFrame.LOOTF.Point.Slider_Y:SetValue(PIG["Chat"]["Frame"]["Loot_Point_Y"]);
		end
	else
		if fuFrame.ChatlootNum<10 then
			C_Timer.After(1, LOOT_SetValueText)
			fuFrame.ChatlootNum=fuFrame.ChatlootNum+1
		end
	end
end
fuFrame.LOOTF.Width = PIGCheckbutton(fuFrame.LOOTF,{"TOPLEFT",fuFrame.LOOTF,"TOPLEFT",10,-44},{L["CHAT_LOOTFW"],L["CHAT_LOOTFWTIPS"]})
fuFrame.LOOTF.Width:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIG["Chat"]["Frame"]["Loot_Width"]=true;	
	else
		PIG["Chat"]["Frame"]["Loot_Width"]=false;
		Pig_Options_RLtishi_UI:Show()
	end
	LOOT_Width_Heigh_Point_XY()
	LOOT_SetValueText()
end);
local xiayiinfo = {150,800,1}
fuFrame.LOOTF.Width.Slider = PIGSlider(fuFrame.LOOTF,{"LEFT",fuFrame.LOOTF.Width.Text,"RIGHT",6,0},{100,14},xiayiinfo)
fuFrame.LOOTF.Width.Slider:SetScript("OnMouseWheel", function(self, arg1)
	if self:IsEnabled() then
		local sliderMin, sliderMax = self:GetMinMaxValues()
		local value = self:GetValue()
		if arg1 > 0 then
			self:SetValue(min(value + arg1, sliderMax))
		else
			self:SetValue(max(value + arg1, sliderMin))
		end
	end
end)
fuFrame.LOOTF.Width.Slider:SetScript("OnValueChanged", function(self)
	local valxxx = self:GetValue()
	PIG["Chat"]["Frame"]["Loot_Width_value"]=valxxx;
	if fuFrame.Chatloot then
		if PIG["Chat"]["Frame"]["Loot_Width_value"]<50 then
			_G["ChatFrame"..fuFrame.ChatlootID]:SetClampRectInsets(-35, 0, 0, 0) --可拖动至紧贴屏幕边缘 
		end
		FCF_UnDockFrame(_G["ChatFrame"..fuFrame.ChatlootID]);
		_G["ChatFrame"..fuFrame.ChatlootID]:SetWidth(PIG["Chat"]["Frame"]["Loot_Width_value"]);
		FCF_UpdateButtonSide(_G["ChatFrame"..fuFrame.ChatlootID]);
	end
end)
------
fuFrame.LOOTF.Height = PIGCheckbutton(fuFrame.LOOTF,{"LEFT",fuFrame.LOOTF.Width.Slider,"RIGHT",100,0},{L["CHAT_LOOTFH"],L["CHAT_LOOTFHTIPS"]})
fuFrame.LOOTF.Height:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIG["Chat"]["Frame"]["Loot_Height"]=true;
	else
		PIG["Chat"]["Frame"]["Loot_Height"]=false;
		Pig_Options_RLtishi_UI:Show()
	end
	LOOT_Width_Heigh_Point_XY()
	LOOT_SetValueText()
end);
------------------------------
local xiayiinfo = {120,500,1}
fuFrame.LOOTF.Height.Slider = PIGSlider(fuFrame.LOOTF,{"LEFT",fuFrame.LOOTF.Height.Text,"RIGHT",6,0},{100,14},xiayiinfo)
fuFrame.LOOTF.Height.Slider:SetScript("OnMouseWheel", function(self, arg1)
	if self:IsEnabled() then
		local sliderMin, sliderMax = self:GetMinMaxValues()
		local value = self:GetValue()
		if arg1 > 0 then
			self:SetValue(min(value + arg1, sliderMax))
		else
			self:SetValue(max(value + arg1, sliderMin))
		end
	end
end)
fuFrame.LOOTF.Height.Slider:SetScript("OnValueChanged", function(self)
	local Hval = self:GetValue()
	PIG["Chat"]["Frame"]["Loot_Height_value"]=Hval;
	if fuFrame.Chatloot then
		FCF_UnDockFrame(_G["ChatFrame"..fuFrame.ChatlootID]);
		_G["ChatFrame"..fuFrame.ChatlootID]:SetHeight(PIG["Chat"]["Frame"]["Loot_Height_value"]);
		FCF_UpdateButtonSide(_G["ChatFrame"..fuFrame.ChatlootID]);
	end
end)
---------
fuFrame.LOOTF.Point = PIGCheckbutton(fuFrame.LOOTF,{"TOPLEFT",fuFrame.LOOTF.Width,"BOTTOMLEFT",0,-20},{L["CHAT_LOOTFXY"],L["CHAT_LOOTFXYTIPS"]})
fuFrame.LOOTF.Point:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIG["Chat"]["Frame"]["Loot_Point"]=true;
	else
		PIG["Chat"]["Frame"]["Loot_Point"]=false;
		Pig_Options_RLtishi_UI:Show()
	end
	LOOT_Width_Heigh_Point_XY()
	LOOT_SetValueText()
end);
local xiayiinfo = {26,500,1}
fuFrame.LOOTF.Point.Slider_X = PIGSlider(fuFrame.LOOTF,{"LEFT",fuFrame.LOOTF.Point.Text,"RIGHT",6,0},{100,14},xiayiinfo)
fuFrame.LOOTF.Point.Slider_X:SetScript("OnMouseWheel", function(self, arg1)
	local sliderMin, sliderMax = self:GetMinMaxValues()
	local value = self:GetValue()
	if arg1 > 0 then
		self:SetValue(min(value + arg1, sliderMax))
	else
		self:SetValue(max(value + arg1, sliderMin))
	end
end)
local function Loot_Point_XY()
	if fuFrame.Chatloot then
		local fghh = _G["ChatFrame"..fuFrame.ChatlootID]
		if PIG["Chat"]["Frame"]["Loot_Point_Y"]<50 then
			fghh:SetClampRectInsets(-35, 0, 0, 0) --可拖动至紧贴屏幕边缘 
		end
		FCF_UnDockFrame(fghh);
		fghh:ClearAllPoints();
		fghh:SetPoint("BOTTOMRIGHT",UIParent,"BOTTOMRIGHT",-PIG["Chat"]["Frame"]["Loot_Point_X"],PIG["Chat"]["Frame"]["Loot_Point_Y"]);
		_G["ChatFrame"..fuFrame.ChatlootID.."Tab"]:ClearAllPoints();
		_G["ChatFrame"..fuFrame.ChatlootID.."Tab"]:SetPoint("BOTTOMLEFT", _G["ChatFrame"..fuFrame.ChatlootID.."Background"], "TOPLEFT", 2, 0);
		FCF_UpdateButtonSide(fghh);--刷新按钮位置
	end
end
fuFrame.LOOTF.Point.Slider_X:SetScript("OnValueChanged", function(self)
	local valxxx = self:GetValue()
	PIG["Chat"]["Frame"]["Loot_Point_X"]=valxxx;
	Loot_Point_XY()
end)
local xiayiinfo = {8,500,1}
fuFrame.LOOTF.Point.Slider_Y = PIGSlider(fuFrame.LOOTF,{"LEFT",fuFrame.LOOTF.Point.Slider_X,"RIGHT",48,0},{100,14},xiayiinfo)
fuFrame.LOOTF.Point.Slider_Y:SetScript("OnMouseWheel", function(self, arg1)
		local sliderMin, sliderMax = self:GetMinMaxValues()
		local value = self:GetValue()
		if arg1 > 0 then
			self:SetValue(min(value + arg1, sliderMax))
		else
			self:SetValue(max(value + arg1, sliderMin))
		end
end)
fuFrame.LOOTF.Point.Slider_Y:SetScript("OnValueChanged", function(self)
	local valxxx = self:GetValue()
	PIG["Chat"]["Frame"]["Loot_Point_Y"]=valxxx;
	Loot_Point_XY()
end)
--创建拾取聊天窗口
local function LootFame_ADD()
	if fuFrame.Chatloot then return end
	if GetScreenWidth()<1024 then PIG_print(L["CHAT_LOOTFADDERR1"]) end
	if FCF_GetNumActiveChatFrames()>=10 then PIG_print(L["CHAT_LOOTFADDERR2"]) end
	FCF_OpenNewWindow(L["CHAT_LOOTFNAME"]);
	ShowChannelFun()
	local nEWid=LOOT_cunzai()
	local chfff = _G["ChatFrame"..nEWid]
	FCF_UnDockFrame(chfff);
	chfff:ClearAllPoints();
	chfff:SetPoint("BOTTOMRIGHT",UIParent,"BOTTOMRIGHT",-PIG["Chat"]["Frame"]["Loot_Point_X"],PIG["Chat"]["Frame"]["Loot_Point_Y"]);
	_G["ChatFrame"..nEWid.."Tab"]:ClearAllPoints();
	_G["ChatFrame"..nEWid.."Tab"]:SetPoint("BOTTOMLEFT", _G["ChatFrame"..nEWid.."Background"], "TOPLEFT", 2, 0);
	FCF_UpdateButtonSide(chfff);--刷新按钮位置
	LOOT_Width_Heigh_Point_XY()
end
------
fuFrame.LOOTF.add:SetScript("OnClick", function ()
	LootFame_ADD()
end)
----
fuFrame.LOOTF:SetScript("OnShow", function(self)
	LOOT_Width_Heigh_Point_XY()
	fuFrame.LOOTF.ShowChannel:SetChecked(PIG["Chat"]["Frame"]["ShowChannel"])
	fuFrame.LOOTF.Width:SetChecked(PIG["Chat"]["Frame"]["Loot_Width"]);
	fuFrame.LOOTF.Height:SetChecked(PIG["Chat"]["Frame"]["Loot_Height"]);
	fuFrame.LOOTF.Point:SetChecked(PIG["Chat"]["Frame"]["Loot_Point"]);
end)
---重置聊天设置
fuFrame.ReChatBut = PIGButton(fuFrame,{"BOTTOMLEFT",fuFrame,"BOTTOMLEFT",14,14},{120,24},L["CHAT_RECHATBUT"]);
fuFrame.ReChatBut:SetScript("OnClick", function ()
	FCF_ResetChatWindows();
end)
-----------
function QuickChatfun.FrameUI()
	Bianju()
	SetValueText()
	LOOT_SetValueText()
end