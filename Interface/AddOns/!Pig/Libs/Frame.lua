local addonName, addonTable = ...;
local _G = _G
local CreateFrame = CreateFrame
---------
--_G.PIG = addonTable
--local Data, Frame = unpack(PIG)
---------------------------
-- local Create=addonTable.Create
-- local PIGFrame=Create.PIGFrame
-- local PIGLine=Create.PIGLine
-- local PIGEnter=Create.PIGEnter
-- local PIGButton = Create.PIGButton
-- local PIGCloseBut = Create.PIGCloseBut
-- local PIGDownMenu=Create.PIGDownMenu
-- local PIGSlider = Create.PIGSlider
-- local PIGCheckbutton=Create.PIGCheckbutton
-- local PIGCheckbutton_R=Create.PIGCheckbutton_R
-- local PIGOptionsList=Create.PIGOptionsList
-- local PIGOptionsList_RF=Create.PIGOptionsList_RF
-- local PIGOptionsList_R=Create.PIGOptionsList_R
-- local PIGFontString=Create.PIGFontString
-- local PIGFontStringBG=Create.PIGFontStringBG
local Create = {}
local FontUrl = "Fonts/ARHei.ttf"
Create.FontUrl=FontUrl
function Create.PIGSetFont(fuji,zihao,Miaobian)
	local zihao = zihao or 14
	fuji:SetFont(FontUrl,zihao,Miaobian)
end
-- Create.Backdropinfo={bgFile = "interface/chatframe/chatframebackground.blp",
-- 	edgeFile = "Interface/Buttons/WHITE8X8", edgeSize = 1,}
Create.Backdropinfo={bgFile = "interface/chatframe/chatframebackground.blp",
	edgeFile = "Interface/AddOns/!Pig/Libs/Pig_Border.blp", edgeSize = 8,}
Create.BackdropColor={0.08, 0.08, 0.08, 0.5}
Create.BackdropBorderColor={0, 0, 0, 1}
function Create.PIGLine(Parent,Point,Y,HLR,Color,UIName)
	local Y = Y or 0
	local HLR = HLR or {0.9,0,0}
	local Color = Color or Create.BackdropBorderColor
	local frameX = Parent:CreateTexture(UIName, "BORDER");
	frameX:SetTexture("interface/optionsframe/ui-optionsframe-spacer.blp");
	frameX:SetColorTexture(Color[1], Color[2], Color[3], Color[4])
	frameX:SetHeight(HLR[1]);
	if Point=="TOP" then
		frameX:SetPoint("TOPLEFT",Parent,"TOPLEFT",HLR[2],Y);
		frameX:SetPoint("TOPRIGHT",Parent,"TOPRIGHT",HLR[3],Y);
	elseif Point=="BOT" then
		frameX:SetPoint("BOTTOMLEFT",Parent,"BOTTOMLEFT",HLR[2],Y);
		frameX:SetPoint("BOTTOMRIGHT",Parent,"BOTTOMRIGHT",HLR[3],Y);
	elseif Point=="L" then
		frameX:SetPoint("TOPLEFT",Parent,"TOPLEFT",Y,HLR[2]);
		frameX:SetPoint("BOTTOMLEFT",Parent,"BOTTOMLEFT",Y,HLR[3]);
	elseif Point=="R" then
		frameX:SetPoint("TOPRIGHT",Parent,"TOPRIGHT",Y,HLR[2]);
		frameX:SetPoint("BOTTOMRIGHT",Parent,"BOTTOMRIGHT",Y,HLR[3]);
	elseif Point=="C" then
		frameX:SetPoint("TOP",Parent,"TOP",Y,HLR[2]);
		frameX:SetPoint("BOTTOM",Parent,"BOTTOM",Y,HLR[3]);
	end
	-- local frameX = Parent:CreateLine()
	-- frameX:SetColorTexture(Color[1], Color[2], Color[3], Color[4])
	-- frameX:SetThickness(HLR[1]);
	-- if Point=="TOP" then
	-- 	frameX:SetStartPoint("TOPLEFT",HLR[2],Y)
	-- 	frameX:SetEndPoint("TOPRIGHT",HLR[3],Y)
	-- end
	return frameX
end
function Create.PIGFrame(Parent,Point,WH,UIName,ESCOFF)
	local frameX = CreateFrame("Frame", UIName, Parent,"BackdropTemplate")
	if WH then
		frameX:SetSize(WH[1],WH[2]);
	end
	if Point then
		frameX:SetPoint(Point[1],Point[2],Point[3],Point[4],Point[5]);
	end
	frameX:EnableMouse(true)
	if ESCOFF then
		frameX:Hide()
		tinsert(UISpecialFrames,UIName);
	end
	function frameX:PIGSetBackdrop(BGAlpha,BorderAlpha,Color,BorderColor)
		self:SetBackdrop(Create.Backdropinfo)
		local BackdropColor=Create.BackdropColor
		local BackdropBorderColor=Create.BackdropBorderColor
		local BGAlpha = BGAlpha or BackdropColor[4]
		self:SetBackdropColor(BackdropColor[1], BackdropColor[2], BackdropColor[3], BGAlpha);
		local BorderAlpha = BorderAlpha or BackdropBorderColor[4]
		self:SetBackdropBorderColor(BackdropBorderColor[1], BackdropBorderColor[2], BackdropBorderColor[3], BorderAlpha);
	end
	function frameX:PIGSetMovable(MovableUI)
		local MovableUI=MovableUI or self
		MovableUI:SetMovable(true)
		MovableUI:SetUserPlaced(true)
		self:RegisterForDrag("LeftButton")
		self:SetScript("OnDragStart",function(self)
			MovableUI:StartMoving()
		end)
		self:SetScript("OnDragStop",function(self)
			MovableUI:StopMovingOrSizing()
		end)
		MovableUI:SetClampedToScreen(true)
	end
	function frameX:PIGClose(Ww,Hh,CloseUI)
		local Ww = Ww or 22
		local Hh = Hh or 22
		local CloseUI=CloseUI or self
		self.Close = CreateFrame("Button",nil,self);
		self.Close:SetHighlightTexture("interface/buttons/ui-common-mousehilight.blp")
		self.Close:SetSize(Ww,Hh);
		self.Close:SetPoint("TOPRIGHT",self,"TOPRIGHT",0,0);
		self.Close.Tex = self.Close:CreateTexture(nil, "BORDER");
		self.Close.Tex:SetTexture("interface/common/voicechat-muted.blp");
		self.Close.Tex:SetSize(self.Close:GetWidth()-8,self.Close:GetHeight()-8);
		self.Close.Tex:SetPoint("CENTER",0,0);
		self.Close:SetScript("OnMouseDown", function (self)
			self.Tex:SetPoint("CENTER",-1.5,-1.5);
		end);
		self.Close:SetScript("OnMouseUp", function (self)
			self.Tex:SetPoint("CENTER");
		end);
		self.Close:SetScript("OnClick", function (self)
			PlaySound(SOUNDKIT.U_CHAT_SCROLL_BUTTON);
			CloseUI:Hide()
		end);
	end
	return frameX
end
function Create.PIGEnter(Parent,text,text1)
	Parent:SetScript("OnEnter", function(self)
		GameTooltip:ClearLines();
		GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT",0,0);
		GameTooltip:AddLine(text)
		if text1 then
			GameTooltip:AddLine(text1)
		end
		GameTooltip:Show();
	end);
	Parent:SetScript("OnLeave", function()
		GameTooltip:ClearLines();
		GameTooltip:Hide() 
	end);
end
addonTable.Create=Create