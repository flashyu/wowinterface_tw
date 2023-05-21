local addonName, addonTable = ...;
local L=addonTable.locale
local Create = addonTable.Create
local FontUrl=Create.FontUrl
local PIGSetFont=Create.PIGSetFont
-------------------
local BGColor={0.1, 0.1, 0.1, 0.8}
local BorderColor={0, 0, 0, 1}
local BorderColor_OnEnter={0, 0.8, 1, 0.9}
local TextColor={1, 0.843, 0, 1}
local TextColor_Disable={0.5, 0.5, 0.5, 1}
local function BackdropSet(self)
	self:SetBackdrop(Create.Backdropinfo)
	self:SetBackdropColor(BGColor[1],BGColor[2],BGColor[3],BGColor[4]);
	self:SetBackdropBorderColor(BorderColor[1], BorderColor[2], BorderColor[3], BorderColor[4]);
end
function Create.PIGButton(fuF,Point,WH,Text,UIName)
	local But = CreateFrame("Button", UIName, fuF,"BackdropTemplate");
	But:RegisterForClicks("LeftButtonUp","RightButtonUp")
	BackdropSet(But)
	if WH then
		But:SetSize(WH[1],WH[2]);
	end
	if Point then
		But:SetPoint(Point[1],Point[2],Point[3],Point[4],Point[5]);
	end
	But:HookScript("OnEnter", function(self)
		if self:IsEnabled() then
			self:SetBackdropBorderColor(BorderColor_OnEnter[1], BorderColor_OnEnter[2], BorderColor_OnEnter[3], BorderColor_OnEnter[4]);
		end
	end);
	But:HookScript("OnLeave", function(self)
		if self:IsEnabled() then
			self:SetBackdropBorderColor(BorderColor[1], BorderColor[2], BorderColor[3], BorderColor[4]);
		end
	end);
	hooksecurefunc(But, "Enable", function(self)
		self.Text:SetTextColor(TextColor[1], TextColor[2], TextColor[3], TextColor[4]);
	end)
	hooksecurefunc(But, "Disable", function(self)
		self.Text:SetTextColor(TextColor_Disable[1], TextColor_Disable[2], TextColor_Disable[3], TextColor_Disable[4]);
	end)
	But:HookScript("OnMouseDown", function(self)
		if self:IsEnabled() then
			self.Text:SetPoint("CENTER", 1.5, -1.5);
		end
	end);
	But:HookScript("OnMouseUp", function(self)
		if self:IsEnabled() then
			self.Text:SetPoint("CENTER", 0, 0);
		end
	end);
	function But:SetText(TextN)
		self.Text:SetText(TextN);
	end
	function But:GetText()
		return self.Text:GetText();
	end
	But:HookScript("OnClick", function (self)
		PlaySound(SOUNDKIT.IG_CHAT_EMOTE_BUTTON);
	end)
	But.Text = But:CreateFontString();
	But.Text:SetPoint("CENTER", 0, 0);
	PIGSetFont(But.Text,Zihao,Miaobian)
	But.Text:SetTextColor(TextColor[1], TextColor[2], TextColor[3], TextColor[4]);
	But.Text:SetText(Text)
	return But
end
function Create.PIGCloseBut(fuF,Point,WH,UIName)
	local WH = WH or {22,22}
	local But = CreateFrame("Button",UIName,fuF);
	But:SetHighlightTexture("interface/buttons/ui-common-mousehilight.blp")
	But:SetSize(WH[1],WH[2])
	if Point then
		But:SetPoint(Point[1],Point[2],Point[3],Point[4],Point[5])
	end
	But.Tex = But:CreateTexture(nil, "BORDER");
	But.Tex:SetTexture("interface/common/voicechat-muted.blp");
	But.Tex:SetSize(But:GetWidth()-8,But:GetHeight()-8);
	But.Tex:SetPoint("CENTER",0,0);
	But:HookScript("OnMouseDown", function (self)
		self.Tex:SetPoint("CENTER",-1.5,-1.5);
	end);
	But:HookScript("OnMouseUp", function (self)
		self.Tex:SetPoint("CENTER");
	end);
	But:HookScript("OnClick", function (self)
		PlaySound(SOUNDKIT.U_CHAT_SCROLL_BUTTON);
	end);
	return But
end
function Create.PIGTabBut(fuF,Point,WH,Text,UIName)
	local But = CreateFrame("Button", UIName, fuF,"BackdropTemplate")
	But.Show=false;
	BackdropSet(But)
	if WH then But:SetSize(WH[1],WH[2]) end
	if Point then
		But:SetPoint(Point[1],Point[2],Point[3],Point[4],Point[5])
	end
	hooksecurefunc(But, "Enable", function(self)
		self.Text:SetTextColor(TextColor[1], TextColor[2], TextColor[3], TextColor[4])
	end)
	hooksecurefunc(But, "Disable", function(self)
		self.Text:SetTextColor(TextColor_Disable[1], TextColor_Disable[2], TextColor_Disable[3], TextColor_Disable[4])
	end)
	But:HookScript("OnEnter", function(self)
		if self:IsEnabled() and not self.Show then
			self:SetBackdropBorderColor(BorderColor_OnEnter[1], BorderColor_OnEnter[2], BorderColor_OnEnter[3], BorderColor_OnEnter[4])
		end
	end);
	But:HookScript("OnLeave", function(self)
		if self:IsEnabled() and not self.Show then
			self:SetBackdropBorderColor(BorderColor[1], BorderColor[2], BorderColor[3], BorderColor[4])
		end
	end);
	But:HookScript("OnMouseDown", function(self)
		if self:IsEnabled() and not self.Show then
			self.Text:SetPoint("CENTER", 1.5, -1.5)
		end
	end);
	But:HookScript("OnMouseUp", function(self)
		if self:IsEnabled() and not self.Show then
			self.Text:SetPoint("CENTER", 0, 0)
		end
	end);
	But.Text = But:CreateFontString()
	But.Text:SetPoint("CENTER", 0, 0)
	PIGSetFont(But.Text,Zihao,Miaobian)
	But.Text:SetTextColor(TextColor[1], TextColor[2], TextColor[3], TextColor[4])
	But.Text:SetText(Text);
	
	function But:Selected()
		PlaySound(SOUNDKIT.IG_CHARACTER_INFO_TAB);
		self.Show=true;
		self.Text:SetTextColor(1, 1, 1, 1)
		--self:SetBackdropColor(0.3098,0.262745,0.0353, 1)
		self:SetBackdropColor(0.32,0.1647,0.0353, BGColor[4])
		self:SetBackdropBorderColor(1, 1, 0, 1)	
	end
	function But:NotSelected()
		self.Show=false
		self.Text:SetTextColor(TextColor[1], TextColor[2], TextColor[3], TextColor[4])
		self:SetBackdropColor(BGColor[1],BGColor[2],BGColor[3],BGColor[4])
		self:SetBackdropBorderColor(BorderColor[1], BorderColor[2], BorderColor[3], BorderColor[4])
	end
	return But
end
function Create.PIGSlider(fuF,Point,WH,minmaxSet,tooltip,UIName)
	local tooltip = tooltip or "拖动滑块或者用鼠标滚轮调整数值";
	local Slider = CreateFrame("Slider", UIName, fuF, "OptionsSliderTemplate")
	Slider:SetSize(WH[1],WH[2]);
	Slider:SetPoint(Point[1],Point[2],Point[3],Point[4],Point[5]);
	Slider.tooltipText = tooltip
	Slider.Low:SetText(minmaxSet[1]);
	Slider.High:SetText(minmaxSet[2]);
	Slider.Low:SetFont(FontUrl,14)
	Slider.High:SetFont(FontUrl,14)
	Slider.Text:SetFont(FontUrl,14)
	Slider:SetMinMaxValues(minmaxSet[1], minmaxSet[2]);
	Slider:SetValueStep(minmaxSet[3]);
	Slider:SetObeyStepOnDrag(true);
	Slider:EnableMouseWheel(true);
	Slider:HookScript("OnMouseWheel", function(self, arg1)
		if self:IsEnabled() then
			local Value = self:GetValue()
			--local Value = (floor(self:GetValue()*10+0.5))/10
			local step = minmaxSet[3] * arg1
			if step > 0 then
				self:SetValue(min(Value + step, minmaxSet[2]))
			else
				self:SetValue(max(Value + step, minmaxSet[1]))
			end
		end
	end)
	return Slider
end

function Create.PIGCheckbutton(fuF,Point,Text,WH,UIName)
	local WH = WH or {30,30}
	local But = CreateFrame("CheckButton", UIName, fuF, "ChatConfigCheckButtonTemplate");
	But:SetMotionScriptsWhileDisabled(true)
	if Point then
		But:SetPoint(Point[1],Point[2],Point[3],Point[4],Point[5])
	end
	But:SetSize(WH[1],WH[2])
	if Text then
		But.Text:SetText(Text[1]);
		But.Text:SetFont(FontUrl,14)
		But.tooltip = Text[2]
	end
	local wrappedWidth = But.Text:GetWrappedWidth()
	But:SetHitRectInsets(0,-wrappedWidth,0,0)
	return But
end
--自动排列选择框
function Create.PIGCheckbutton_R(fuF,text,vertical,lienum,Vjiange,WH,UIName)
	local lienum=lienum or 11
	local Vjiange=Vjiange or 40
	local fujiinfo = {fuF:GetChildren()}
	local yiyoushu = #fujiinfo
	local Checkbutton = Create.PIGCheckbutton(fuF,Point,text,WH,UIName)
	if yiyoushu==0 then
		Checkbutton:SetPoint("TOPLEFT",fuF,"TOPLEFT",20,-20);
	else
		if vertical then
			local tmp1,tmp2 = math.modf(yiyoushu/lienum)
			if tmp2==0 then
				Checkbutton:SetPoint("TOPLEFT",fujiinfo[1],"TOPLEFT",300,0);
			else
				Checkbutton:SetPoint("TOPLEFT",fujiinfo[yiyoushu],"TOPLEFT",0,-Vjiange);
			end
		else
			local tmp1,tmp2 = math.modf(yiyoushu/2)
			if tmp2==0 then
				Checkbutton:SetPoint("TOPLEFT",fujiinfo[yiyoushu-1],"TOPLEFT",0,-Vjiange);
			else 
				Checkbutton:SetPoint("TOPLEFT",fujiinfo[yiyoushu],"TOPLEFT",300,0);
			end
		end
	end
	return Checkbutton
end
--左边主菜单
function Create.Show_TabBut(Rneirong,tabbut)
	local PigUI=Pig_OptionsUI
	local ListTOP = {PigUI.L.F.ListTOP:GetChildren()}
	for x=1, #ListTOP, 1 do
		ListTOP[x]:NotSelected()
	end
	local ListEXT = {PigUI.L.F.ListEXT:GetChildren()}
	for x=1, #ListEXT, 1 do
		ListEXT[x]:NotSelected()
	end
	local ListBOT = {PigUI.L.F.ListBOT:GetChildren()}
	for x=1, #ListBOT, 1 do
		ListBOT[x]:NotSelected()
	end

	local RNR = {PigUI.R.F.NR:GetChildren()}
	for x=1, #RNR, 1 do
		RNR[x]:Hide()
	end
	tabbut:Selected()
	Rneirong:Show()
end
function Create.PIGOptionsList(GnName,weizhi)
	local PigUI=Pig_OptionsUI
	local fuUI=PigUI.L.F.ListTOP
	local tabbutWW = fuUI:GetWidth()-4
	if weizhi=="EXT" then
		fuUI=PigUI.L.F.ListEXT
	elseif weizhi=="BOT" then
		fuUI=PigUI.L.F.ListBOT
		tabbutWW = 90
	end
	local List_ButH,jiange = 26,4
	local ziframe = {fuUI:GetChildren()}
	local zinum = #ziframe
	local TabBut = Create.PIGTabBut(fuUI,nil,{tabbutWW,List_ButH},GnName)
	if weizhi=="BOT" then
		TabBut:SetPoint("LEFT", fuUI, "LEFT", 30, 0);
	else
		if zinum==0 then
			TabBut:SetPoint("TOP", fuUI, "TOP", 0, -jiange);
		else
			TabBut:SetPoint("TOP", fuUI, "TOP", 0, -(zinum*(List_ButH+2)+jiange));
		end
	end
	--内容页
	local Rneirong = CreateFrame("Frame", nil, PigUI.R.F.NR)
	Rneirong:SetAllPoints(PigUI.R.F.NR)
	Rneirong:Hide()
	---
	TabBut:HookScript("OnClick", function(self)
		Create.Show_TabBut(Rneirong,self)
	end)
	return Rneirong,TabBut
end
--右边子菜单
function Create.PIGOptionsList_RF(fuF,DownY,Mode)
	local TabF = Create.PIGFrame(fuF)
	TabF:PIGSetBackdrop()
	local bianjuV = 6
	if Mode=="Left" then bianjuV = 0 end
	TabF:SetPoint("TOPLEFT", fuF, "TOPLEFT", bianjuV, -DownY)
	TabF:SetPoint("BOTTOMRIGHT", fuF, "BOTTOMRIGHT", -bianjuV, bianjuV)
	TabF.Top = Create.PIGFrame(TabF)
	if Mode=="Left" then
		TabF.Top:SetWidth(30)
		TabF.Top:SetPoint("TOPRIGHT", TabF, "TOPLEFT", 0, 0)
		TabF.Top:SetPoint("BOTTOMLEFT", TabF, "BOTTOMLEFT", -30, 0)
	else
		TabF.Top:SetHeight(30)
		TabF.Top:SetPoint("BOTTOMLEFT", TabF, "TOPLEFT", 0, 0)
		TabF.Top:SetPoint("BOTTOMRIGHT", TabF, "TOPRIGHT", 0, 30)
	end
	TabF.Bot = Create.PIGFrame(TabF)
	TabF.Bot:SetPoint("TOPLEFT", TabF, "TOPLEFT", 0, 0)
	TabF.Bot:SetPoint("BOTTOMRIGHT", TabF, "BOTTOMRIGHT", 0, 0)
	return TabF
end
function Create.Show_TabBut_R(fuF,Rneirong,tabbut)
	local RNR = {fuF.Bot:GetChildren()}
	for x=1, #RNR, 1 do
		RNR[x]:Hide()
	end
	local ListBOT = {fuF.Top:GetChildren()}
	for x=1, #ListBOT, 1 do
		ListBOT[x]:NotSelected()
	end
	tabbut:Selected()
	Rneirong:Show()
end
function Create.PIGOptionsList_R(fuF,tabname,W,Mode)
	local TAB_F = Create.PIGFrame(fuF.Bot)
	TAB_F:SetPoint("TOPLEFT", fuF.Bot, "TOPLEFT", 0, 0)
	TAB_F:SetPoint("BOTTOMRIGHT", fuF.Bot, "BOTTOMRIGHT", 0, 0)
	TAB_F:Hide()
	local ziframe = {fuF.Top:GetChildren()}
	local newWH = {W,24}
	if Mode=="Left" then newWH={24,W} end
	fuF.Top.tabbut = Create.PIGTabBut(fuF.Top,nil,{newWH[1],newWH[2]},tabname)
	if Mode=="Left" then
		if #ziframe==0 then
			fuF.Top.tabbut:SetPoint("TOPRIGHT", fuF.Top, "TOPRIGHT", 1, -10);
		else
			fuF.Top.tabbut:SetPoint("TOP", ziframe[#ziframe], "BOTTOM", 0, -10);
		end
	else
		if #ziframe==0 then
			fuF.Top.tabbut:SetPoint("BOTTOMLEFT", fuF.Top, "BOTTOMLEFT", 10, -1);
		else
			fuF.Top.tabbut:SetPoint("LEFT", ziframe[#ziframe], "RIGHT", 10, 0);
		end
	end
	fuF.Top.tabbut:HookScript("OnClick", function(self)
		Create.Show_TabBut_R(fuF,TAB_F,self)
	end)
	return TAB_F,fuF.Top.tabbut
end