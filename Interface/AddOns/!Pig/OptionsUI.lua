local addonName, addonTable = ...;
local L=addonTable.locale
local gsub = _G.string.gsub
-------
local Create = addonTable.Create
local PIGFrame=Create.PIGFrame
local PIGButton=Create.PIGButton
local PIGLine=Create.PIGLine
local PIGFontString=Create.PIGFontString

--系统插件菜单======================
local PIG_AddOn = {};
PIG_AddOn.panel = CreateFrame( "Frame", "PIG_AddOnPanel", UIParent );
PIG_AddOn.panel:Hide()
PIG_AddOn.panel.name = "!Pig";
InterfaceOptions_AddCategory(PIG_AddOn.panel);
--子页
PIG_AddOn.childpanel = CreateFrame( "Frame", "PIG_AddOnChild", PIG_AddOn.panel);
PIG_AddOn.childpanel.name = "About";
--指定归属父级
PIG_AddOn.childpanel.parent = PIG_AddOn.panel.name;
InterfaceOptions_AddCategory(PIG_AddOn.childpanel);
--系统设置面板
PIG_AddOnPanel.Openshezhi = PIGButton(PIG_AddOnPanel,{"TOPLEFT",PIG_AddOnPanel,"TOPLEFT",20,-20},{80,24},L["OPTUI_SET"])
PIG_AddOnPanel.Openshezhi:SetScript("OnClick", function ()
	HideUIPanel(InterfaceOptionsFrame);
	HideUIPanel(SettingsPanel);
	HideUIPanel(GameMenuFrame);
	Pig_OptionsUI:Show();
end)
PIGLine(PIG_AddOnPanel,"TOP",-60,{2,4,-4})
Create.About_Update(PIG_AddOnPanel,-120,"Panel")
--子页内容
PIGLine(PIG_AddOnChild,"TOP",-60,{2,4,-4})
Create.About_Thanks(PIG_AddOnChild,-40)
-- PIG_AddOnPanel.okay = function (self) SC_ChaChingPanel_Close(); end;
-- PIG_AddOnPanel.cancel = function (self) SC_ChaChingPanel_CancelOrLoad();  end;
---------------

local OptionsW,OptionsH,OptionsJG,BottomHHH = 800,600,14,40
local Pig_Options=PIGFrame(UIParent,{"CENTER",UIParent,"CENTER",0,0},{OptionsW,OptionsH},"Pig_OptionsUI",true)
Pig_Options:PIGSetBackdrop()
Pig_Options:SetFrameStrata("HIGH")
--左侧内容
local OptionsLFW =160
Pig_Options.L = CreateFrame("Frame", nil, Pig_Options)
Pig_Options.L:SetWidth(OptionsLFW);
Pig_Options.L:SetPoint("TOPLEFT", Pig_Options, "TOPLEFT", 0, 0)
Pig_Options.L:SetPoint("BOTTOMLEFT", Pig_Options, "BOTTOMLEFT", 0, 0)
Pig_Options.L.top = PIGFrame(Pig_Options.L)
--Pig_Options.L.top:PIGSetBackdrop()
Pig_Options.L.top:SetHeight(50)
Pig_Options.L.top:SetPoint("TOPLEFT", Pig_Options.L, "TOPLEFT", 2, -2)
Pig_Options.L.top:SetPoint("TOPRIGHT", Pig_Options.L, "TOPRIGHT", 0, 0)
Pig_Options.L.top:PIGSetMovable(Pig_Options)
Pig_Options.L.top.title = PIGFontString(Pig_Options.L.top,{"LEFT", Pig_Options.L.top, "LEFT", 13, 6},"!Pig",nil, 36)
Pig_Options.L.top.title:SetTextColor(1, 69/255, 0, 1)
Pig_Options.L.top.title1 =PIGFontString(Pig_Options.L.top,{"BOTTOMLEFT", Pig_Options.L.top.title, "BOTTOMRIGHT", 10, 0},L["ADDON_NAME"],nil, 16)
Pig_Options.L.top.title1:SetTextColor(0, 1, 1, 1)
--菜单
Pig_Options.L.F = PIGFrame(Pig_Options.L)
Pig_Options.L.F:PIGSetBackdrop()
Pig_Options.L.F:SetPoint("TOPLEFT", Pig_Options.L.top, "BOTTOMLEFT", 0, 0)
Pig_Options.L.F:SetPoint("BOTTOMRIGHT", Pig_Options.L, "BOTTOMRIGHT", 0, BottomHHH)
Pig_Options.L.F.ListTOP = CreateFrame("Frame", nil, Pig_Options.L.F)
Pig_Options.L.F.ListTOP:SetPoint("TOPLEFT", Pig_Options.L.F, "TOPLEFT", 0, 0)
Pig_Options.L.F.ListTOP:SetPoint("BOTTOMRIGHT", Pig_Options.L.F, "BOTTOMRIGHT", 0, 150)
Pig_Options.L.F.ListEXT = CreateFrame("Frame", nil, Pig_Options.L.F)
Pig_Options.L.F.ListEXT:SetPoint("TOPLEFT", Pig_Options.L.F.ListTOP, "BOTTOMLEFT", 0, 0)
Pig_Options.L.F.ListEXT:SetPoint("BOTTOMRIGHT", Pig_Options.L.F, "BOTTOMRIGHT", 0, 0)
PIGLine(Pig_Options.L.F.ListEXT,"TOP",0,{2.1,1,-1},{1, 0.65, 0, 0.8})
Pig_Options.L.F.ListBOT = CreateFrame("Frame", nil, Pig_Options.L.F)
Pig_Options.L.F.ListBOT:SetPoint("TOPLEFT", Pig_Options.L.F, "BOTTOMLEFT", 0, 0)
Pig_Options.L.F.ListBOT:SetPoint("BOTTOMRIGHT", Pig_Options.L, "BOTTOMRIGHT", 0, 0)
--右侧
Pig_Options.R = CreateFrame("Frame", nil, Pig_Options)
Pig_Options.R:SetPoint("TOPLEFT", Pig_Options, "TOPLEFT", OptionsLFW+OptionsJG, 0)
Pig_Options.R:SetPoint("BOTTOMRIGHT", Pig_Options, "BOTTOMRIGHT", 0, BottomHHH)
--右侧顶部
Pig_Options.R.top = PIGFrame(Pig_Options.R)
Pig_Options.R.top:SetHeight(24)
Pig_Options.R.top:SetPoint("TOPLEFT", Pig_Options.R, "TOPLEFT", 0, -2)
Pig_Options.R.top:SetPoint("TOPRIGHT", Pig_Options.R, "TOPRIGHT", -2, 0)
Pig_Options.R.top:PIGSetBackdrop()
Pig_Options.R.top:PIGSetMovable(Pig_Options)
Pig_Options.R.top:PIGClose(25,25,Pig_Options)
Pig_Options.R.top.Ver = CreateFrame("Frame", nil, Pig_Options.R.top)
Pig_Options.R.top.Ver:SetPoint("TOPLEFT", Pig_Options.R.top, "TOPLEFT", 0, 0)
Pig_Options.R.top.Ver:SetPoint("BOTTOMRIGHT", Pig_Options.R.top, "BOTTOMRIGHT", -30, 0)
--右侧内容
Pig_Options.R.F = PIGFrame(Pig_Options.R)
Pig_Options.R.F:PIGSetBackdrop()
Pig_Options.R.F:SetPoint("TOPLEFT", Pig_Options.R, "TOPLEFT", 0, -34)
Pig_Options.R.F:SetPoint("BOTTOMRIGHT", Pig_Options.R, "BOTTOMRIGHT", -2, 0)
Pig_Options.R.F.NR = CreateFrame("Frame", nil, Pig_Options.R.F)
Pig_Options.R.F.NR:SetAllPoints(Pig_Options.R.F)
--侧面功能按钮区域
Pig_Options.ListFun = PIGFrame(Pig_Options)
Pig_Options.ListFun:PIGSetBackdrop()
Pig_Options.ListFun:SetPoint("TOPLEFT", Pig_Options.R.F, "TOPRIGHT", 4, 0)
Pig_Options.ListFun:SetPoint("BOTTOMRIGHT", Pig_Options, "BOTTOMRIGHT", 40, 0)

--RLUI
Pig_Options.tishi = CreateFrame("Frame", "Pig_Options_RLtishi_UI", Pig_Options)
Pig_Options.tishi:SetSize(520, 28)
Pig_Options.tishi:SetPoint("BOTTOM", Pig_Options, "BOTTOM", 80, 8)
Pig_Options.tishi:Hide()
Pig_Options.tishi.txt = PIGFontString(Pig_Options.tishi,{"CENTER", Pig_Options.tishi, "CENTER", -20, -2},L["OPTUI_RLUITIPS"],"OUTLINE")
Pig_Options.tishi.txt:SetTextColor(1, 0, 0, 1);
Pig_Options.tishi.Tex = Pig_Options.tishi:CreateTexture(nil, "BORDER");
Pig_Options.tishi.Tex:SetTexture("interface/helpframe/helpicon-reportabuse.blp");
Pig_Options.tishi.Tex:SetSize(32,32);
Pig_Options.tishi.Tex:SetPoint("RIGHT",Pig_Options.tishi.txt,"LEFT", 0, 0);
Pig_Options.tishi.Button = PIGButton(Pig_Options.tishi,{"LEFT",Pig_Options.tishi.txt,"RIGHT",4,0},{76,25},L["OPTUI_RLUI"])
Pig_Options.tishi.Button:SetScript("OnClick", function ()
	ReloadUI();
end);

Pig_Options.lianxizuozhe=PIGFrame(Pig_Options,{"CENTER",Pig_Options,"CENTER",80,20},{300,300})
Pig_Options.lianxizuozhe:PIGSetBackdrop(1)
Pig_Options.lianxizuozhe:PIGClose()
Pig_Options.lianxizuozhe:Hide()
Pig_Options.lianxizuozhe:SetFrameLevel(20)
PIGFontString(Pig_Options.lianxizuozhe,{"TOP", Pig_Options.lianxizuozhe, "TOP", 0, -10},L["ADDON_AUTHOR"])
Pig_Options.lianxizuozhe.wx = Pig_Options.lianxizuozhe:CreateTexture()
Pig_Options.lianxizuozhe.wx:SetTexture("Interface\\AddOns\\"..addonName.."\\Libs\\wx.blp");
Pig_Options.lianxizuozhe.wx:SetSize(240,240);
Pig_Options.lianxizuozhe.wx:SetPoint("CENTER", 0, 0);
Pig_Options:HookScript("OnHide", function (self)
	self.lianxizuozhe:Hide()
end)
function Pig_Options:ShowAuthor()
	local zuozheF = self.lianxizuozhe
	if zuozheF:IsShown() then
		zuozheF:Hide()
	else
		zuozheF:Show()
	end
end

--功能动作条
Pig_Options.qiege=16
local _, _, _, tocversion = GetBuildInfo()
if tocversion<100000 then
	Pig_Options.qiege=10
end
local ActionW = ActionButton1:GetWidth()-Pig_Options.qiege
local QuickBut=PIGFrame(UIParent,{"BOTTOM",UIParent,"BOTTOM",200,200},{ActionW+14,ActionW},"QuickButUI")
QuickBut:PIGSetMovable()
QuickBut:Hide()
function QuickBut:GengxinWidth()
	if self.nr then
		local nr = self.nr
		local butW = nr:GetHeight()
		local Children1 = {nr:GetChildren()};
		local geshu1 = #Children1
		local NewWidth = butW*geshu1-2
		self:SetWidth(NewWidth+self.yidong:GetWidth())
		if geshu1>0 then self:Show() end
	end
end
function QuickBut:RaidRecord() end
function QuickBut:Add()
	self:Open()
	self:AutoFollow()
	self:BGbroadcast()
	self:Lushi()
	self:Spell()
	self:AutoEquip()
	self:SkillFBCD()
	self:AutoSellBuy()
	-- self:ADD_QuickBut_SpellJK()
	-- self:ADD_QuickBut_Invite()
	self:RaidRecord()
	-- self:ADD_QuickBut_daiben()
	self:Pig_AFK()
	self:GengxinWidth()
end
-- local ButtoSDn = PIGButton(UIParent,{"CENTER",UIParent,"CENTER",4,0},{76,25},"ASDADA")
-- ButtoSDn:SetScript("OnClick", function ()
-- 	local Skill_List = {"基础营火","烹饪用火","分解","选矿","采集草药","挖矿"};
-- 	local Skill_List_yiyou = {};
-- 	for i=1,1000000 do
-- 		local duyaoname = GetSpellInfo(i)
-- 		if duyaoname then
-- 			--print(duyaoname,i)
-- 			for ix=1,#Skill_List do
-- 				if not Skill_List_yiyou[ix] then
-- 					if duyaoname==Skill_List[ix] then
-- 						print(duyaoname,i)
-- 						Skill_List_yiyou[ix]={duyaoname,i}
-- 					end
-- 				end
-- 			end
-- 		end
-- 	end
-- end);