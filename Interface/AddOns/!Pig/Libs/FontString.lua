local addonName, addonTable = ...;
local L=addonTable.locale
local Create = addonTable.Create
local PIGFrame=Create.PIGFrame
local PIGLine=Create.PIGLine
local PIGButton = Create.PIGButton
local FontUrl=Create.FontUrl
local PIGSetFont=Create.PIGSetFont
-------------------
function Create.PIGFontString(fuF,Point,Text,Miaobian,Zihao,UIName)
	local Text = Text or ""
	local Font = fuF:CreateFontString(UIName);
	if Point then Font:SetPoint(Point[1],Point[2],Point[3],Point[4],Point[5]); end	
	PIGSetFont(Font,Zihao,Miaobian)
	Font:SetTextColor(1, 0.843, 0, 1);
	Font:SetText(Text);
	return Font
end
function Create.PIGFontStringBG(fuF,Point,Text,WH,Zihao,UIName)
	local Zihao = Zihao or 14
	local FontF =PIGFrame(fuF,{Point[1],Point[2],Point[3],Point[4],Point[5]},{WH[1],WH[2]})
	FontF:PIGSetBackdrop()
	local Font = FontF:CreateFontString(UIName);
	Font:SetPoint("CENTER", FontF, "CENTER", 0,0);
	Font:SetSize(WH[1],WH[2])
	Font:SetFont(FontUrl,Zihao)
	Font:SetTextColor(1, 0.843, 0, 1);
	Font:SetText(Text);
	return Font
end

--======================
function Create.About_Update(self,YY,Panel)
	self.Reminder = Create.PIGFontString(self,{"TOP",self,"TOP",0,YY},L["ABOUT_REMINDER"],nil,16)

	self.UpdateURL = CreateFrame("EditBox", nil, self, "InputBoxInstructionsTemplate");
	self.UpdateURL:SetSize(440,30);
	self.UpdateURL:SetPoint("TOP",self.Reminder,"BOTTOM",40,-20);
	self.UpdateURL:SetFont(ChatFontNormal:GetFont(), 16, "OUTLINE");
	self.UpdateURL:SetAutoFocus(false);
	self.UpdateURL:SetText(L["ABOUT_URL"]);
	function self.UpdateURL:SetTextpig()
		self:SetText(L["ABOUT_URL"]);
	end
	self.UpdateURL:SetScript("OnEscapePressed", function(self) self:SetTextpig() self:ClearFocus() end);
	self.UpdateURL:SetScript("OnEditFocusLost", function(self) self:SetTextpig() end);
	self.UpdateURL.txt = Create.PIGFontString(self,{"RIGHT",self.UpdateURL,"LEFT",0,0},L["ABOUT_UPDATEADD"],nil,16)
	self.UpdateURL.txt:SetTextColor(1, 1, 0, 1);
	self.Mail = Create.PIGFontString(self,{"TOP",self.UpdateURL,"BOTTOM",-20,-20},L["ABOUT_MAIL"],nil,16)

	self.Bili = Create.PIGFontString(self,{"TOP",self.Mail,"BOTTOM",0,-20},L["ABOUT_BILI"].."\n\n"..L["ABOUT_QQ"].."  "..L["ABOUT_YY"],nil,16)
   if Panel~="Panel" then
		self.ShowAuthor = PIGButton(self,{"TOP",self.Mail,"BOTTOM",0,-80},{100,24},L["ADDON_AUTHOR"])
		self.ShowAuthor:SetScript("OnClick", function (self)
			Pig_OptionsUI:ShowAuthor()
		end);
	end
end
function Create.About_Thanks(self,YY)
	self.tks = Create.PIGFontString(self,{"TOP",self,"TOP",0,YY},L["ABOUT_THANKS"],nil,16)
	self.tks:SetTextColor(1, 1, 0, 1);
	---60
	self.C60 = Create.PIGFontString(self,{"TOP",self.tks,"BOTTOM",0,-20},L["ABOUT_THANKS_TXT"].C60[1])
	self.C60_P = Create.PIGFontString(self,{"TOP",self.C60,"BOTTOM",0,-4},L["ABOUT_THANKS_TXT"].C60[2])

	--70
	self.C70 = Create.PIGFontString(self,{"TOP",self.C60_P,"BOTTOM",0,-10},L["ABOUT_THANKS_TXT"].WLK[1])
	self.C70_P = Create.PIGFontString(self,{"TOP",self.C70,"BOTTOM",0,-4},L["ABOUT_THANKS_TXT"].WLK[2])

	---正式服
	self.retail = Create.PIGFontString(self,{"TOP",self.C70_P,"BOTTOM",0,-10},L["ABOUT_THANKS_TXT"].RETAIL[1])
	self.retail = Create.PIGFontString(self,{"TOP",self.retail,"BOTTOM",0,-4},L["ABOUT_THANKS_TXT"].RETAIL[2])
end
