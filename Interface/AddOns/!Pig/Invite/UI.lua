local addonName, addonTable = ...;
local L =addonTable.locale
local _, _, _, tocversion = GetBuildInfo()
---------------------------------
local Create=addonTable.Create
local PIGFrame=Create.PIGFrame
local PIGLine=Create.PIGLine
local PIGEnter=Create.PIGEnter
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
local PIGModCheckbutton=Create.PIGModCheckbutton
local PIGModbutton=Create.PIGModbutton
local PIGQuickBut=Create.PIGQuickBut
local PIGCloseBut=Create.PIGCloseBut
local PIGSetFont=Create.PIGSetFont
-----------
local GetPIGID=addonTable.Fun.GetPIGID
local InviteFun=addonTable.InviteFun
local GnName,GnUI,GnIcon,FrameLevel = InviteFun.GnName,InviteFun.GnUI,InviteFun.GnIcon,InviteFun.FrameLevel
-- local CDWMinfo = {
-- 	["pindao"] ="PIG",["Leisure"]="INVITE_LEISURE",["Plane"]="INVITE_LAYER",["Chedui"]="INVITE_LFG",
-- }
function InviteFun.Invite()
	if not PIGA["Invite"]["Open"] then return end
	if _G[GnUI] then return end
	local ModBut = PIGModbutton(GnName,GnIcon,GnUI,FrameLevel,4)
	--
	local Width,Height,biaotiH  = 880, 505, 21;
	local InvF=PIGFrame(UIParent,{"CENTER",UIParent,"CENTER",0,60},{Width, Height},GnUI,true)
	InvF:PIGSetBackdrop()
	InvF:PIGClose()
	InvF:PIGSetMovable()
	InvF.hang_Height,InvF.hang_NUM=25,15
	InvF.pindao="PIG"
	InvF.biaoti = PIGFontString(InvF,{"TOP", InvF, "TOP", 0, -4},GnName)
	--必须加入PIG频道获取
	local function gengxinbut1()
		local PIGxulieID =GetPIGID(InvF.pindao)
		if PIGxulieID>0 then
			InvF.jiaruchazhaoqi:Disable()
			InvF.jiaruchazhaoqi:SetText(L["INVITE_LFG_LEAVE"]);
		else
			InvF.jiaruchazhaoqi:Enable()
			InvF.jiaruchazhaoqi:SetText(L["INVITE_LFG_JOIN"]);
		end
	end
	InvF.jiaruchazhaoqi = PIGButton(InvF, {"TOPLEFT",InvF,"TOPLEFT",10,-3.4},{110,16})
	PIGSetFont(InvF.jiaruchazhaoqi.Text,12)
	InvF.jiaruchazhaoqi:SetFrameLevel(InvF.jiaruchazhaoqi:GetFrameLevel()+6)
	InvF.jiaruchazhaoqi:Disable()
	InvF.jiaruchazhaoqi:HookScript("OnShow", function (self)
		gengxinbut1()
	end)
	InvF.jiaruchazhaoqi:SetScript("OnClick", function (self)
		JoinPermanentChannel("PIG", nil, DEFAULT_CHAT_FRAME:GetID(), 1);
		ChatFrame_AddChannel(DEFAULT_CHAT_FRAME, "PIG")
		ChatFrame_RemoveMessageGroup(DEFAULT_CHAT_FRAME, "CHANNEL")
		gengxinbut1()
	end)
	
	--设置-----------------------------
	InvF.setbut = CreateFrame("Button",nil,InvF, "TruncatedButtonTemplate"); 
	InvF.setbut:SetNormalTexture("interface/gossipframe/healergossipicon.blp"); 
	InvF.setbut:SetHighlightTexture(130718);
	InvF.setbut:SetSize(18,18);
	InvF.setbut:SetPoint("TOPRIGHT",InvF,"TOPRIGHT",-60,-2.5);
	InvF.setbut.Down = InvF.setbut:CreateTexture(nil, "OVERLAY");
	InvF.setbut.Down:SetTexture(130839);
	InvF.setbut.Down:SetSize(18,18);
	InvF.setbut.Down:SetPoint("CENTER");
	InvF.setbut.Down:Hide();
	InvF.setbut:SetScript("OnMouseDown", function (self)
		self.Down:Show();
	end);
	InvF.setbut:SetScript("OnMouseUp", function (self)
		self.Down:Hide()
	end);
	InvF.setbut:HookScript("OnClick", function (self)
		if Pig_OptionsUI:IsShown() then
			Pig_OptionsUI:Hide()
		else
			Pig_OptionsUI:Show()
			Create.Show_TabBut(InviteFun.fuFrame,InviteFun.fuFrameBut)
		end
	end);
	--内容显示
	InvF.F=PIGOptionsList_RF(InvF,biaotiH,"Bot",{0,0,0})
	----
	InviteFun.Chedui()
	--InviteFun.Leisure()
	InviteFun.Plane()
end

function InviteFun.GetInfoBut(fuF,Point,butTXT,jindutiaoW,GetButW)
	local GetButW=GetButW or {120,22}
	local GetBut = PIGButton(fuF,{Point[1],Point[2],Point[3],Point[4],Point[5]},{GetButW[1],GetButW[2]},butTXT);
	---
	local jindutiaoW=jindutiaoW or {160,20}
	GetBut.jindutiao = CreateFrame("Frame", nil, GetBut);
	GetBut.jindutiao:SetSize(jindutiaoW[1],jindutiaoW[2]);
	GetBut.jindutiao:SetPoint("RIGHT",GetBut,"LEFT",-10,0);
	GetBut.jindutiao:Hide();
	GetBut.jindutiao.tex = GetBut.jindutiao:CreateTexture();
	GetBut.jindutiao.tex:SetTexture("interface/raidframe/raid-bar-hp-fill.blp");
	GetBut.jindutiao.tex:SetColorTexture(0.3, 0.7, 0.1, 0.9)
	GetBut.jindutiao.tex:SetSize(jindutiaoW[1],jindutiaoW[2]-1);
	GetBut.jindutiao.tex:SetPoint("LEFT",GetBut.jindutiao,"LEFT",0,0);
	GetBut.jindutiao.edg = CreateFrame("Frame", nil, GetBut.jindutiao, "BackdropTemplate");
	GetBut.jindutiao.edg:SetBackdrop( { edgeFile = "Interface/AddOns/"..addonName.."/Libs/Pig_Border.blp",edgeSize = 8});
	GetBut.jindutiao.edg:SetBackdropBorderColor(0, 1, 1, 0.9);
	GetBut.jindutiao.edg:SetAllPoints(GetBut.jindutiao)
	GetBut.jindutiao.edg.t = PIGFontString(GetBut.jindutiao.edg,{"CENTER",GetBut.jindutiao.edg,"CENTER",0,0},L["INVITE_RECEIVEDATA"],"OUTLINE",12);
	GetBut.jindutishi = PIGFontString(GetBut,{"RIGHT",GetBut,"LEFT",-10,0},"","OUTLINE");
	GetBut.jindutishi:SetTextColor(0, 0.9, 0, 1);
	GetBut.err = PIGFontString(GetBut,{"BOTTOMLEFT",GetBut,"TOPLEFT",0,6},"","OUTLINE");
	GetBut.err:SetTextColor(1, 0, 0, 1);
	------
	return GetBut
end