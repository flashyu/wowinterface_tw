local addonName, addonTable = ...;
local Create = addonTable.Create
local PIGFrame=Create.PIGFrame
local PIGFontString=Create.PIGFontString
local _, _, _, tocversion = GetBuildInfo()
-------------
local InvSlot=addonTable.Data.InvSlot
-- ElvUI=true
--暴雪角色装备界面
function Create.CharacterFrame(fuji,Point,UIName,FrameLevel)
	local WH={338,424}
	local frameX
	if ElvUI or NDui then
		frameX = PIGFrame(fuji,Point,WH,UIName,true)
		frameX:PIGSetBackdrop()
		frameX:PIGSetMovable()
		frameX:PIGClose();
		local TitleText = PIGFontString(frameX,{"TOP", frameX, "TOP",0, -6},nil,nil,nil,UIName.."TitleText")
		TitleText:SetTextColor(1, 1, 1, 1)
		frameX.Inset = CreateFrame("Frame", nil, frameX)
		frameX.Inset:SetPoint("TOPLEFT",frameX,"TOPLEFT",6,-64)
		frameX.Inset:SetPoint("BOTTOMRIGHT",frameX,"BOTTOMRIGHT",-6,4)
	else
		frameX = CreateFrame("Frame", UIName, fuji,"ButtonFrameTemplate")
		frameX:Hide()
		tinsert(UISpecialFrames,UIName);
		if WH then
			frameX:SetSize(WH[1],WH[2]);
		end
		if Point then
			frameX:SetPoint(Point[1],Point[2],Point[3],Point[4],Point[5]);
		end
		frameX:SetMovable(true)
		frameX:EnableMouse(true)
		frameX:RegisterForDrag("LeftButton")
		frameX:SetScript("OnDragStart",function(self)
			frameX:StartMoving()
		end)
		frameX:SetScript("OnDragStop",function(self)
			frameX:StopMovingOrSizing()
		end)
		frameX:SetClampedToScreen(true)
		frameX.portrait=frameX.portrait or frameX.PortraitContainer.portrait
		SetPortraitToTexture(frameX.portrait, 130899)
		_G[UIName.."TitleText"]:SetTextColor(1, 1, 1, 1)
	end
	frameX:SetUserPlaced(false)
	if FrameLevel then
		frameX:SetFrameLevel(FrameLevel)
	end
	--
	frameX.biaotiF = CreateFrame("Frame", nil, frameX)
	frameX.biaotiF:SetPoint("TOPLEFT", frameX, "TOPLEFT",0, -24);
	frameX.biaotiF:SetPoint("TOPRIGHT", frameX, "TOPRIGHT",0, -24);
	frameX.biaotiF:SetHeight(36)
	frameX.biaoti = PIGFontString(frameX,{"CENTER", frameX.biaotiF, "CENTER",0, 0})
	--
	frameX.Inset:SetPoint("BOTTOMRIGHT",frameX,"BOTTOMRIGHT",-6,4)
	frameX.Doll = CreateFrame("Frame", nil, frameX)
	frameX.Doll:SetPoint("TOPLEFT",frameX,"TOPLEFT",0,0)
	frameX.Doll:SetPoint("BOTTOMRIGHT",frameX,"BOTTOMRIGHT",0,0)
	frameX.Doll.Items = CreateFrame("Frame", nil, frameX.Doll)
	frameX.Doll.Items:SetPoint("TOPLEFT",frameX.Doll,"TOPLEFT",0,0)
	frameX.Doll.Items:SetPoint("BOTTOMRIGHT",frameX.Doll,"BOTTOMRIGHT",0,0)
	
	local uiWidth=CharacterHeadSlot:GetWidth()
	for i=1,#InvSlot["CID"] do
		local item
		if tocversion<100000 then
			item = CreateFrame("Button", UIName.."_item_"..InvSlot["CID"][i], frameX.Doll.Items,"SecureActionButtonTemplate");
			item:SetHighlightTexture(130718);
			item.icon = item:CreateTexture()
			item.icon:SetAllPoints(item)
		else
			item = CreateFrame("ItemButton", UIName.."_item_"..InvSlot["CID"][i], frameX.Doll.Items);
		end
		item:SetSize(uiWidth,uiWidth);
		item.Frame = item:CreateTexture(nil, "BACKGROUND")
		if ElvUI or NDui then
			item.icon:SetTexCoord(0.08,0.92,0.08,0.92)
			--item.NormalTexture:SetAlpha(0)
			item.Frame:SetTexture("");
		else
			item.Frame:SetTexture("Interface/CharacterFrame/Char-Paperdoll-Parts");
		end
		item.Frame:SetDrawLayer("BACKGROUND", -1)
		if i<17 then
			item.Frame:SetSize(uiWidth*1.3,uiWidth*1.26);
			if i<9 then 
				item.Frame:SetTexCoord(0.20703125,0.39843750,0.59375000,0.93750000)
				item.Frame:SetPoint("TOPLEFT",item,"TOPLEFT",-4.4,2);
			end
			if i>8 and i<17 then
				item.Frame:SetTexCoord(0.00390625,0.19921875,0.59375000,0.93750000)
				item.Frame:SetPoint("TOPRIGHT",item,"TOPRIGHT",4,2);
			end
			if i==1 then	
				item:SetPoint("TOPLEFT",frameX.Inset,"TOPLEFT",4,-2);
			elseif i==9 then
				item:SetPoint("TOPRIGHT",frameX.Inset,"TOPRIGHT",-3,-2);
			else
				item:SetPoint("TOP", _G[UIName.."_item_"..(InvSlot["CID"][i-1])], "BOTTOM", 0, -4);
			end
		else
			item.Frame:SetSize(uiWidth*1.16,uiWidth*1.42);
			item.Frame:SetTexCoord(0.67187500,0.83593750,0.00781250,0.42187500)
			item.Frame:SetPoint("TOPLEFT",item,"TOPLEFT",-4,8);
			if i==17 then
				item:SetPoint("BOTTOMLEFT",frameX.Inset,"BOTTOMLEFT",100,6);
			else
				item:SetPoint("LEFT", _G[UIName.."_item_"..(InvSlot["CID"][i-1])], "RIGHT", 4, 0);
			end
		end
		item.LV = PIGFontString(item,{"TOPRIGHT", item, "TOPRIGHT", 0,-1},nil,"OUTLINE")
		item.ranse = item:CreateTexture(nil, "OVERLAY");
	    item.ranse:SetTexture("Interface/Buttons/UI-ActionButton-Border");
	    item.ranse:SetBlendMode("ADD");
	    item.ranse:SetSize(uiWidth*1.74,uiWidth*1.74);
	    item.ranse:SetPoint("CENTER", item, "CENTER", 0, 0);
	    item.ranse:Hide()
	end
	for i=1,#InvSlot["ID"] do
		local zbBuwei = PIGFrame(frameX,nil,{4,17},UIName.."_zbBuwei_"..InvSlot["ID"][i]);
		if i==1 then
			zbBuwei:SetPoint("TOPLEFT",frameX,"TOPLEFT",90,-66);
		else
			zbBuwei:SetPoint("TOPLEFT",_G[UIName.."_zbBuwei_"..(InvSlot["ID"][i-1])],"BOTTOMLEFT",0,-1);
		end
		zbBuwei.itembuweiF = PIGFrame(zbBuwei,{"RIGHT",zbBuwei,"LEFT",0,0},{33,17});
		zbBuwei.itembuweiF:PIGSetBackdrop(0,nil,nil,{1,1,1})
		zbBuwei.itembuwei = PIGFontString(zbBuwei.itembuweiF,{"CENTER",0,0.6},InvSlot["Name"][InvSlot["ID"][i]][2],nil,13)
		zbBuwei.itemlink = PIGFontString(zbBuwei,{"LEFT",zbBuwei,"RIGHT",0,0})
	end
	return frameX
end
--背包银行界面
function Create.BagBankBG(self,texname)
	self.Bg = self:CreateTexture(texname.."Bg", "BACKGROUND");
	self.Bg:SetTexture("interface/framegeneral/ui-background-rock.blp");
	self.Bg:SetPoint("TOPLEFT", self, "TOPLEFT",14, -13);
	self.Bg:SetPoint("BOTTOMRIGHT", self, "BOTTOMRIGHT", -3, 5);
	self.Bg:SetDrawLayer("BACKGROUND", -1)
	self.portrait = self:CreateTexture(nil,"BACKGROUND");
	self.portrait:SetSize(60,60);
	self.portrait:SetPoint("TOPLEFT",self,"TOPLEFT",8.5,-4);
	self.topbg = self:CreateTexture(texname.."topbg", "BACKGROUND");
	self.topbg:SetTexture(374157);
	self.topbg:SetPoint("TOPLEFT", self, "TOPLEFT",68, -13);
	self.topbg:SetPoint("TOPRIGHT", self, "TOPRIGHT",-24, -13);
	self.topbg:SetTexCoord(0,0.2890625,0,0.421875,1.359809994697571,0.2890625,1.359809994697571,0.421875);
	self.topbg:SetHeight(20);
	self.TOPLEFT = self:CreateTexture(texname.."TOPLEFT", "BORDER");
	self.TOPLEFT:SetTexture("interface/framegeneral/ui-frame.blp");
	self.TOPLEFT:SetPoint("TOPLEFT", self, "TOPLEFT",0, 0);
	self.TOPLEFT:SetTexCoord(0.0078125,0.0078125,0.0078125,0.6171875,0.6171875,0.0078125,0.6171875,0.6171875);
	self.TOPLEFT:SetSize(78,78);
	self.TOPRIGHT = self:CreateTexture(texname.."TOPRIGHT", "BORDER");
	self.TOPRIGHT:SetTexture(374156);
	self.TOPRIGHT:SetPoint("TOPRIGHT", self, "TOPRIGHT",0, -10);
	self.TOPRIGHT:SetTexCoord(0.6328125,0.0078125,0.6328125,0.265625,0.890625,0.0078125,0.890625,0.265625);
	self.TOPRIGHT:SetSize(33,33);
	self.TOP = self:CreateTexture(texname.."TOP", "BORDER");
	self.TOP:SetTexture(374157);
	self.TOP:SetPoint("TOPLEFT", self.TOPLEFT, "TOPRIGHT",0, -10);
	self.TOP:SetPoint("BOTTOMRIGHT", self.TOPRIGHT, "BOTTOMLEFT", 0, 5);
	self.TOP:SetTexCoord(0,0.4375,0,0.65625,1.08637285232544,0.4375,1.08637285232544,0.65625);
	self.BOTTOMLEFT = self:CreateTexture(texname.."BOTTOMLEFT", "BORDER");
	self.BOTTOMLEFT:SetTexture(374156);
	self.BOTTOMLEFT:SetPoint("BOTTOMLEFT", self, "BOTTOMLEFT",8, 0);
	self.BOTTOMLEFT:SetTexCoord(0.0078125,0.6328125,0.0078125,0.7421875,0.1171875,0.6328125,0.1171875,0.7421875);
	self.BOTTOMLEFT:SetSize(14,14);

	self.BOTTOMRIGHT = self:CreateTexture(texname.."BOTTOMRIGHT", "BORDER");
	self.BOTTOMRIGHT:SetTexture(374156);
	self.BOTTOMRIGHT:SetPoint("BOTTOMRIGHT", self, "BOTTOMRIGHT",0, 0);
	self.BOTTOMRIGHT:SetTexCoord(0.1328125,0.8984375,0.1328125,0.984375,0.21875,0.8984375,0.21875,0.984375);
	self.BOTTOMRIGHT:SetSize(11,11);

	self.LEFT = self:CreateTexture(texname.."LEFT", "BORDER");
	self.LEFT:SetTexture(374153);
	self.LEFT:SetTexCoord(0.359375,0,0.359375,1.42187488079071,0.609375,0,0.609375,1.42187488079071);
	self.LEFT:SetPoint("TOPLEFT", self.TOPLEFT, "BOTTOMLEFT",8, 0);
	self.LEFT:SetPoint("BOTTOMLEFT", self.BOTTOMLEFT, "TOPLEFT", 0, 0);
	self.LEFT:SetWidth(16);

	self.RIGHT = self:CreateTexture(texname.."RIGHT", "BORDER");
	self.RIGHT:SetTexture(374153);
	self.RIGHT:SetTexCoord(0.171875,0,0.171875,1.5703125,0.328125,0,0.328125,1.5703125);
	self.RIGHT:SetPoint("TOPRIGHT", self.TOPRIGHT, "BOTTOMRIGHT",0.8, 0);
	self.RIGHT:SetPoint("BOTTOMRIGHT", self.BOTTOMRIGHT, "TOPRIGHT", 0, 0);
	self.RIGHT:SetWidth(10);

	self.BOTTOM = self:CreateTexture(texname.."BOTTOM", "BORDER");
	self.BOTTOM:SetTexture(374157);
	self.BOTTOM:SetTexCoord(0,0.203125,0,0.2734375,1.425781607627869,0.203125,1.425781607627869,0.2734375);
	self.BOTTOM:SetPoint("BOTTOMLEFT", self.BOTTOMLEFT, "BOTTOMRIGHT",0, -0);
	self.BOTTOM:SetPoint("BOTTOMRIGHT", self.BOTTOMRIGHT, "BOTTOMLEFT", 0, 0);
	self.BOTTOM:SetHeight(9);
	local Mkuandu,Mgaodu = 8,22
	self.moneyframe = CreateFrame("Frame", nil, self);
	self.moneyframe:SetSize(160,Mgaodu);
	self.moneyframe:SetPoint("BOTTOMRIGHT", self, "BOTTOMRIGHT", -8, 7)
	self.moneyframe_R = self:CreateTexture(texname.."moneyframe_R", "BORDER");
	self.moneyframe_R:SetTexture("interface/common/moneyframe.blp");
	self.moneyframe_R:SetTexCoord(0,0.05,0,0.31);
	self.moneyframe_R:SetSize(Mkuandu,Mgaodu);
	self.moneyframe_R:SetPoint("RIGHT", self.moneyframe, "RIGHT", 0, 0)
	self.moneyframe_l = self:CreateTexture(texname.."moneyframe_L", "BORDER");
	self.moneyframe_l:SetTexture("interface/common/moneyframe.blp");
	self.moneyframe_l:SetTexCoord(0.95,1,0,0.31);
	self.moneyframe_l:SetSize(Mkuandu,Mgaodu);
	self.moneyframe_l:SetPoint("LEFT", self.moneyframe, "LEFT", 0, 0)
	self.moneyframe_C = self:CreateTexture(texname.."moneyframe_C", "BORDER");
	self.moneyframe_C:SetTexture("interface/common/moneyframe.blp");
	self.moneyframe_C:SetTexCoord(0.1,0.9,0.314,0.621);
	self.moneyframe_C:SetPoint("TOPLEFT", self.moneyframe_l, "TOPRIGHT", 0, 0)
	self.moneyframe_C:SetPoint("BOTTOMRIGHT", self.moneyframe_R, "BOTTOMLEFT", 0, 0)
end
function Create.BagBankFrame(fuji,Point,UIName,data,FrameLevel)
	local BagdangeW=data["BagdangeW"]
	local meihang=data["meihang"]
	local suofang=data["suofang"]
	local lixianNum=data["lixianNum"]
	local WH={meihang*(BagdangeW)+8,200}
	local frameX
	if ElvUI or NDui then
		frameX = PIGFrame(fuji,Point,WH,UIName,true)
		frameX:PIGSetBackdrop()
		frameX:PIGSetMovable()
		frameX:PIGClose()
		local TitleText = PIGFontString(frameX,{"TOP", frameX, "TOP",0, -6},nil,nil,nil,UIName.."TitleText")
		TitleText:SetTextColor(1, 1, 1, 1)
		frameX.moneyframe = CreateFrame("Frame", nil, frameX);
		frameX.moneyframe:SetSize(160,22);
		frameX.moneyframe:SetPoint("BOTTOMRIGHT", frameX, "BOTTOMRIGHT", -8, 7)
	else
		if tocversion<100000 then
			frameX = CreateFrame("Frame", UIName, fuji,"BackdropTemplate")
			Create.BagBankBG(frameX,UIName)
			frameX.Close = CreateFrame("Button",nil,frameX, "UIPanelCloseButton");  
			frameX.Close:SetSize(32,32);
			frameX.Close:SetPoint("TOPRIGHT", frameX, "TOPRIGHT", 4.8, -6);
		else
			frameX = CreateFrame("Frame", UIName, fuji,"PortraitFrameFlatTemplate")
		end
		frameX:Hide()
		tinsert(UISpecialFrames,UIName);
		if WH then
			frameX:SetSize(WH[1],WH[2]);
		end
		if Point then
			frameX:SetPoint(Point[1],Point[2],Point[3],Point[4],Point[5]);
		end
		frameX:SetMovable(true)
		frameX:EnableMouse(true)
		frameX:SetClampedToScreen(true)
		frameX:RegisterForDrag("LeftButton")
		frameX:SetScript("OnDragStart",function(self)
			frameX:StartMoving()
		end)
		frameX:SetScript("OnDragStop",function(self)
			frameX:StopMovingOrSizing()
		end)
		--
		frameX.portrait=frameX.portrait or frameX.PortraitContainer and frameX.PortraitContainer.portrait
		SetPortraitToTexture(frameX.portrait, 130899)
	end
	frameX.wupin = CreateFrame("Frame", nil, frameX,"BackdropTemplate")
	if tocversion<100000 then
		frameX.wupin:SetBackdrop( { bgFile = "interface/framegeneral/ui-background-marble.blp" });
		if ElvUI or NDui then
			frameX.wupin:SetPoint("TOPLEFT", frameX, "TOPLEFT",6, -56);
			frameX.wupin:SetPoint("BOTTOMRIGHT", frameX, "BOTTOMRIGHT", -6, 29);
		else
			frameX.wupin:SetPoint("TOPLEFT", frameX, "TOPLEFT",17, -66);
			frameX.wupin:SetPoint("BOTTOMRIGHT", frameX, "BOTTOMRIGHT", -5, 29);
		end
	else
		frameX.wupin:SetPoint("TOPLEFT", frameX, "TOPLEFT",6, -56);
		frameX.wupin:SetPoint("BOTTOMRIGHT", frameX, "BOTTOMRIGHT", -6, 29);
	end
	frameX.wupin:EnableMouse(true)
	if lixianNum~="zhengheBAG" then
		for i=1,lixianNum do
			local itemBut
			if tocversion<100000 then
				itemBut = CreateFrame("Button", UIName.."_item_"..i, frameX.wupin,"SecureActionButtonTemplate");
				itemBut:SetHighlightTexture(130718);
				itemBut.icon = itemBut:CreateTexture()
				itemBut.icon:SetAllPoints(itemBut)
			else
				itemBut = CreateFrame("ItemButton", UIName.."_item_"..i, frameX.wupin);
			end
			itemBut:SetSize(BagdangeW,BagdangeW);
			if i==1 then
				itemBut:SetPoint("TOPLEFT",frameX.wupin,"TOPLEFT",0,0);
			end
			itemBut:Hide();
			itemBut.LV = PIGFontString(itemBut,{"TOPRIGHT", itemBut, "TOPRIGHT", 0,-1},nil,"OUTLINE")
			itemBut.shuliang =PIGFontString(itemBut,{"BOTTOMRIGHT", itemBut, "BOTTOMRIGHT", -4,2},nil,"OUTLINE")
			itemBut.shuliang:SetTextColor(1, 1, 1, 1);
		end
	end
	frameX:SetUserPlaced(false)
	if FrameLevel then
		frameX:SetFrameLevel(FrameLevel)
	end
	return frameX
end
--暴雪浏览界面标题
function Create.PIGBrowseBiaoti(fuji)
	local TexC = fuji:CreateTexture(nil, "BORDER");
	TexC:SetTexture("interface/friendsframe/whoframe-columntabs.blp");
	TexC:SetTexCoord(0.08,0.00,0.08,0.59,0.91,0.00,0.91,0.59);
	TexC:SetPoint("TOPLEFT",fuji,"TOPLEFT",5,0);
	TexC:SetPoint("BOTTOMRIGHT",fuji,"BOTTOMRIGHT",-5,0);
	local TexL = fuji:CreateTexture(nil, "BORDER");
	TexL:SetTexture("interface/friendsframe/whoframe-columntabs.blp");
	TexL:SetTexCoord(0.00,0.00,0.00,0.59,0.08,0.00,0.08,0.59);
	TexL:SetPoint("TOPRIGHT",TexC,"TOPLEFT",0,0);
	TexL:SetPoint("BOTTOMRIGHT",TexC,"BOTTOMLEFT",0,0);
	TexL:SetWidth(5)
	local TexR = fuji:CreateTexture(nil, "BORDER");
	TexR:SetTexture("interface/friendsframe/whoframe-columntabs.blp");
	TexR:SetTexCoord(0.91,0.00,0.91,0.59,0.97,0.00,0.97,0.59);
	TexR:SetPoint("TOPLEFT",TexC,"TOPRIGHT",0,0);
	TexR:SetPoint("BOTTOMLEFT",TexC,"BOTTOMRIGHT",0,0);
	TexR:SetWidth(5)
	return TexC,TexL,TexR
end