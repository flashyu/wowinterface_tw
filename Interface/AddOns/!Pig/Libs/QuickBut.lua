local addonName, addonTable = ...;
local L=addonTable.locale
local Create = addonTable.Create
--创建功能动作条按钮
function Create.PIGQuickBut(QkButUI,Tooltip,Icon,GnUI,FrameLevel,Template)
	local fuji = QuickButUI
	local nr = fuji.nr
	local butW = nr:GetHeight()
	local Children = {nr:GetChildren()};
	local geshu = #Children;
	local But = CreateFrame("Button", QkButUI, nr, Template);
	But:RegisterForClicks("LeftButtonUp","RightButtonUp")
	But:SetNormalTexture(Icon)
	But:SetHighlightTexture(130718);
	But:SetSize(butW-2,butW-2);
	if geshu==0 then
		But:SetPoint("LEFT",nr,"LEFT",0,0);
	else
		But:SetPoint("LEFT",Children[geshu],"RIGHT",2,0);
	end
	But:HookScript("OnEnter", function (self)
		GameTooltip:ClearLines();
		GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT",10,0);
		GameTooltip:AddLine(Tooltip)
		GameTooltip:Show();
	end);
	But:HookScript("OnLeave", function ()
		GameTooltip:ClearLines();
		GameTooltip:Hide() 
	end);
	But.Down = But:CreateTexture(nil, "OVERLAY");
	But.Down:SetTexture(130839);
	But.Down:SetAllPoints(But)
	But.Down:Hide();
	But:HookScript("OnMouseDown", function (self)
		self.Down:Show();
		GameTooltip:ClearLines();
		GameTooltip:Hide() 
	end);
	But:HookScript("OnMouseUp", function (self)
		self.Down:Hide();
	end);
	But.Height = But:CreateTexture(nil, "OVERLAY");
	But.Height:SetTexture(130724);
	But.Height:SetBlendMode("ADD");
	But.Height:SetAllPoints(But)
	But.Height:Hide()
	if GnUI then
		But:HookScript("OnClick", function(self,button)
			if _G[GnUI]:IsShown() then
				_G[GnUI]:Hide();
			else
				_G[GnUI]:SetFrameLevel(FrameLevel)
				_G[GnUI]:Show();
			end
		end)
	end
	return But
end
--创建侧面功能按钮
function Create.PIGModbutton(GnTooltip,GnIcon,GnUI,FrameLevel,ID)
	local nr = Pig_OptionsUI.ListFun
	local butW = nr:GetWidth()
	local But = CreateFrame("Button", nil, nr);
	But:SetNormalTexture(GnIcon)
	But:SetHighlightTexture(130718);
	But:SetSize(butW-10,butW-10);
	local Children = {nr:GetChildren()};
	local geshu = #Children;
	But:SetPoint("TOP",nr,"TOP",0,-((geshu-1)*(butW)+8));
	But:HookScript("OnEnter", function (self)
		GameTooltip:ClearLines();
		GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT",10,0);
		GameTooltip:AddLine(GnTooltip)
		GameTooltip:Show();
	end);
	But:HookScript("OnLeave", function ()
		GameTooltip:ClearLines();
		GameTooltip:Hide() 
	end);
	But.Down = But:CreateTexture(nil, "OVERLAY");
	But.Down:SetTexture(130839);
	But.Down:SetAllPoints(But)
	But.Down:Hide();
	But:HookScript("OnMouseDown", function (self)
		self.Down:Show();
		GameTooltip:ClearLines();
		GameTooltip:Hide() 
	end);
	But:HookScript("OnMouseUp", function (self)
		self.Down:Hide();
	end);
	But.Height = But:CreateTexture(nil, "OVERLAY");
	But.Height:SetTexture(130724);
	But.Height:SetBlendMode("ADD");
	But.Height:SetAllPoints(But)
	But.Height:Hide()
	if GnUI then
		But:HookScript("OnClick", function(self,button)
			if _G[GnUI]:IsShown() then
				_G[GnUI]:Hide();
			else
				Pig_OptionsUI:Hide()
				_G[GnUI]:SetFrameLevel(FrameLevel)
				_G[GnUI]:Show();
			end
		end)
	end
	return But
end
--创建选项按钮
function Create.PIGModCheckbutton(fuF,text,Point,dandu)
	local Line = Create.PIGLine(fuF,"TOP",Point[5])
	if dandu then Line:Hide() end
	local But = Create.PIGCheckbutton(fuF,nil,text)
	But:SetPoint("TOPLEFT",Line,"TOPLEFT",20,-10)
	local text1 = {"添加<"..text[1]..">到功能动作条","添加<"..text[1]..">到功能动作条，以便快速打开。\n|cff00FF00注意：此功能需先在动作条菜单打开功能动作条功能|r"}
	But.QKBut = Create.PIGCheckbutton(But,{"LEFT",But,"RIGHT",220,0},text1)
	return But
end