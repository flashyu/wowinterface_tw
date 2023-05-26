local addonName, addonTable = ...;
local L=addonTable.locale
local _, _, _, tocversion = GetBuildInfo()
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
---
local ActionBarfun={}
addonTable.ActionBarfun=ActionBarfun
local fuFrame,fuFrameBut = PIGOptionsList(L["ACTION_TABNAME"],"TOP")
--
local DownY=30
local RTabFrame =Create.PIGOptionsList_RF(fuFrame,DownY)
ActionBarfun.fuFrame=fuFrame
ActionBarfun.fuFrameBut=fuFrameBut
ActionBarfun.RTabFrame=RTabFrame
--
local ActionF,Actiontabbut =PIGOptionsList_R(RTabFrame,L["ACTION_TABNAME1"],70)
ActionF:Show()
Actiontabbut:Selected()
--------
local function ActionBar_Ranse()
	if tocversion<40000 then
		hooksecurefunc("ActionButton_OnUpdate", function(self, elapsed)
			if self.rangeTimer == TOOLTIP_UPDATE_TIME and self.action then
				local range = false
				if IsActionInRange(self.action) == false then 
					_G[self:GetName().."Icon"]:SetVertexColor(0.5, 0.1, 0.1)
					range = true
				end;
				if self.range ~= range and range == false then
					ActionButton_UpdateUsable(self)
				end;
				self.range = range
			end
		end)
	else
		hooksecurefunc("ActionButton_UpdateRangeIndicator", function(self, checksRange, inRange)
			if self.action == nil then return end
			local isUsable, notEnoughMana = IsUsableAction(self.action)
			if ( checksRange and not inRange ) then
				_G[self:GetName().."Icon"]:SetVertexColor(0.5, 0.1, 0.1)
			elseif isUsable ~= true or notEnoughMana == true then
				_G[self:GetName().."Icon"]:SetVertexColor(0.4, 0.4, 0.4)
			else
				_G[self:GetName().."Icon"]:SetVertexColor(1, 1, 1)
			end
		end)
	end
end
ActionF.Ranse=PIGCheckbutton_R(ActionF,{"技能范围着色","根据技能范围染色动作条按键颜色"})
ActionF.Ranse:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIG["ActionBar"]["Ranse"]=true;
		ActionBar_Ranse()
	else
		PIG["ActionBar"]["Ranse"]=false;
		Pig_Options_RLtishi_UI:Show()
	end
end);
ActionF.Cooldowns=PIGCheckbutton_R(ActionF,{"显示冷却时间","显示动作条技能物品冷却时间"})
ActionF.Cooldowns:SetScript("OnClick", function (self)
	if self:GetChecked() then
		SetCVar("countdownForCooldowns","1")
	else
		SetCVar("countdownForCooldowns","0")
	end
end);

if tocversion<20000 then
	local function UpdateCount(actionButton)
	    local text = actionButton.Count
	    local action = actionButton.action
	    if IsConsumableAction(action) then
	        local xxxx = GetActionCount(action)
	        if xxxx>0 then
	            text:SetText(xxxx)
	        else
	            text:SetText("|cffff0000"..xxxx.."|r")
	        end
	    end
	end
	function ActionBarfun.ActionBar_Cailiao()
	    hooksecurefunc("ActionButton_UpdateCount", UpdateCount)
	end
	ActionF.Cailiao=PIGCheckbutton_R(ActionF,{"显示施法材料数量","在动作条上显示需要施法材料技能材料数量"})
	ActionF.Cailiao:SetScript("OnClick", function (self)
		if self:GetChecked() then
			PIG["ActionBar"]["Cailiao"]=true;
			ActionBarfun.ActionBar_Cailiao()
		else
			PIG["ActionBar"]["Cailiao"]=false;
			Pig_Options_RLtishi_UI:Show()
		end
	end)
end
---
local function ActionBar_PetTishi()
	if PETchaofengtishiUI then return end
	local _, classId = UnitClassBase("player");
	--职业编号1战士/2圣骑士/3猎人/4盗贼/5牧师/6死亡骑士/7萨满祭司/8法师/9术士/10武僧/11德鲁伊/12恶魔猎手
	if classId==3 or  classId==9 then
		local chaofengjinengName
		if classId==3 then
			if GetLocale() == "zhTW" then
				chaofengjinengName="低吼"
			else
				chaofengjinengName="低吼"
			end
		elseif classId==9 then
			if tocversion<80000 then
				if GetLocale() == "zhTW" then
					chaofengjinengName="受難"
				else
					chaofengjinengName="受难"
				end
			else
				if GetLocale() == "zhTW" then
					chaofengjinengName="脅迫氣場"
				else
					chaofengjinengName="胁迫气场"
				end
			end
		end

		local Width,Height = 30,30;
		local PETchaofengtishi = CreateFrame("Frame", "PETchaofengtishiUI", PetActionBarFrame);
		PETchaofengtishi:SetSize(Width,Height);
		PETchaofengtishi:SetPoint("BOTTOM", PetActionBarFrame, "TOP", 0, 10);
		PETchaofengtishi.Icon = PETchaofengtishi:CreateTexture(nil, "ARTWORK");
		PETchaofengtishi.Icon:SetTexture("interface/common/help-i.blp");
		PETchaofengtishi.Icon:SetSize(Width*1.6,Height*1.6);
		PETchaofengtishi.Icon:SetPoint("CENTER");
		PETchaofengtishi:Hide()
		-----------
		local function PetTishizhhixing()
			local inInstance = IsInInstance();
			local tishibiaoti,tishineirong="|cff00FFFF猪猪加油提示：","";
			local hasPetSpells, _ = HasPetSpells()
			if hasPetSpells then
				for i=1, hasPetSpells do
					local spellName = GetSpellBookItemName(i, BOOKTYPE_PET)
			 		yizhaodaoPETspell=false
					if spellName==chaofengjinengName then
						yizhaodaoPETspell=true 
						local autocastable, autostate = GetSpellAutocast(i, BOOKTYPE_PET)
						if inInstance then
							if autostate then
								tishineirong="|cffFFFF00副本内开启宠物嘲讽可能干扰坦克仇恨！|r";
								PETchaofengtishi:Show()
							else
								PETchaofengtishi:Hide()
							end
						else
							if autostate then
								PETchaofengtishi:Hide()
							else
								PETchaofengtishi:Show()
								tishineirong="|cffFFFF00野外关闭宠物嘲讽可能造成宠物仇恨匮乏！|r";
							end
						end
						break
					end
				end
			end
			for ii=4, 7 do
				local name, subtext, texture, isToken, isActive, autoCastAllowed, autoCastEnabled = GetPetActionInfo(ii);
				if name==chaofengjinengName then
					PETchaofengtishi:SetPoint("BOTTOM", _G["PetActionButton"..ii], "TOP", 0, 0);
				end
			end
			PETchaofengtishi:SetScript("OnEnter", function ()
				GameTooltip:ClearLines();
				GameTooltip:SetOwner(PETchaofengtishi, "ANCHOR_TOPLEFT",2,4);
				GameTooltip:AddLine(tishibiaoti)
				GameTooltip:AddLine(tishineirong)
				GameTooltip:Show();
			end);
			PETchaofengtishi:SetScript("OnLeave", function ()
				GameTooltip:ClearLines();
				GameTooltip:Hide() 
			end);
		end
		----------
		local PETchaofeng= CreateFrame("Frame");
		PETchaofeng:RegisterEvent("PET_BAR_UPDATE")
		PETchaofeng:SetScript("OnEvent",PetTishizhhixing)
		PetTishizhhixing()
	end
end
local Pettooltip = "宠物动作条嘲讽技能上方增加一个提示按钮，副本内提示关闭宠物嘲讽/副本外提示开启！\r|cffFFff00（只对有宠物职业生效）|r";
ActionF.PetTishi=PIGCheckbutton_R(ActionF,{"宠物动作条嘲讽提示",Pettooltip})
ActionF.PetTishi:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIG["ActionBar"]["PetTishi"]=true;
		ActionBar_PetTishi()
	else
		PIG["ActionBar"]["PetTishi"]=false;
		Pig_Options_RLtishi_UI:Show()
	end
end)
--进入战斗时自动切换到1号动作栏
local zidongfanyeFFFF = CreateFrame("Frame")
zidongfanyeFFFF:HookScript("OnEvent", function()
	ChangeActionBarPage(1);
end)
local function ActionBar_AutoFanye()
	if PIG["ActionBar"]["AutoFanye"] then
		zidongfanyeFFFF:RegisterEvent("PLAYER_REGEN_DISABLED");
	else
		zidongfanyeFFFF:UnregisterEvent("PLAYER_REGEN_DISABLED");
	end
end
ActionF.AutoFanye=PIGCheckbutton_R(ActionF,{"进战斗时切换1动作栏","进入战斗后自动切换到1号动作栏"})
ActionF.AutoFanye:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIG["ActionBar"]["AutoFanye"]=true;
	else
		PIG["ActionBar"]["AutoFanye"]=false;
	end
	ActionBar_AutoFanye()
end)
ActionF.botline = PIGLine(ActionF,"TOP",-354)
if tocversion<100000 then
	function ActionBarfun.ActionBar_HideShijiu()
		if PIG["ActionBar"]["HideShijiu"] then
			MainMenuBarRightEndCap:Hide();--隐藏右侧鹰标 
			MainMenuBarLeftEndCap:Hide();--隐藏左侧鹰标 
		else
			MainMenuBarRightEndCap:Show();
			MainMenuBarLeftEndCap:Show();
		end
	end
	ActionF.HideShijiu=PIGCheckbutton(ActionF,{"TOPLEFT",ActionF.botline,"TOPLEFT",20,-20},{"隐藏狮鹫图标","隐藏动作条两边的狮鹫图标"})
	ActionF.HideShijiu:SetScript("OnClick", function (self)
		if self:GetChecked() then
			PIG["ActionBar"]["HideShijiu"]=true;
		else
			PIG["ActionBar"]["HideShijiu"]=false;
		end
		ActionBarfun.ActionBar_HideShijiu()
	end)
	--移动右边动作条
	if not IsXPUserDisabled then
		function IsXPUserDisabled() return false end
	end
	local function GetExpWatched()
		local name, reaction, min, max, value, factionID = GetWatchedFactionInfo();
		local newLevel = UnitLevel("player");
		local showXP = newLevel < GetMaxPlayerLevel() and not IsXPUserDisabled();
		if name then
			return showXP,true
		else
			return showXP,false
		end
	end
	function ActionBarfun.Pig_BarRight()
		if not PIG["ActionBar"]["BarRight"] then return end
		local function Pig_MultiBar_Update()
			if not InCombatLockdown() then
				for i=1, 12 do
					_G["MultiBarLeftButton"..i]:ClearAllPoints();
					_G["MultiBarLeftButton"..i]:SetPoint("BOTTOM",_G["MultiBarBottomLeftButton"..i],"TOP",0,6);
					_G["MultiBarRightButton"..i]:ClearAllPoints();
					_G["MultiBarRightButton"..i]:SetPoint("BOTTOM",_G["MultiBarBottomRightButton"..i],"TOP",0,6);
				end
				VerticalMultiBarsContainer:SetSize(0, 0);
			end
		end
		Pig_MultiBar_Update()

		local function StanceBar_Update(self)
			if SHOW_MULTI_ACTIONBAR_4 and SHOW_MULTI_ACTIONBAR_3 then
				if not self:IsUserPlaced() then
					if InCombatLockdown() then
						self:RegisterEvent("PLAYER_REGEN_ENABLED");
						PIG_print("部分移动会在战斗结束后执行")
					else
						local point, relativeTo, relativePoint, xOfs, yOfs = self:GetPoint()
						self:SetMovable(true)
						self:ClearAllPoints();
						self:SetPoint("BOTTOMLEFT", self:GetParent(),"TOPLEFT", xOfs, yOfs+42)
						self:SetUserPlaced(true)
					end 
				end
			else
				self:SetMovable(true)
				self:SetUserPlaced(false)
				self:SetMovable(false)
			end
		end
		StanceBar_Update(StanceBarFrame)
		StanceBarFrame:HookScript("OnEvent", function (self,event)
			if event=="PLAYER_REGEN_ENABLED" then
				if SHOW_MULTI_ACTIONBAR_4 and SHOW_MULTI_ACTIONBAR_3 then
					if not self:IsUserPlaced() then
						local point, relativeTo, relativePoint, xOfs, yOfs = self:GetPoint()
						self:SetMovable(true)
						self:ClearAllPoints();
						self:SetPoint("BOTTOMLEFT", self:GetParent(),"TOPLEFT", xOfs, yOfs+42)
						self:SetUserPlaced(true)
					end
				end
				self:UnregisterEvent("PLAYER_REGEN_ENABLED");
			end
		end);

		local function MultiCastBar_Update(self)
			if SHOW_MULTI_ACTIONBAR_4 and SHOW_MULTI_ACTIONBAR_3 then
				if InCombatLockdown() then
					self:RegisterEvent("PLAYER_REGEN_ENABLED");
					PIG_print("部分移动会在战斗结束后执行")
				else
					self:SetMovable(true)
					self:ClearAllPoints();
					self:SetPoint("BOTTOMLEFT", self:GetParent(),"TOPLEFT", MULTICASTACTIONBAR_XPOS, MULTICASTACTIONBAR_YPOS+42)
					self:SetUserPlaced(true)
				end 
			else
				self:SetMovable(true)
				self:SetUserPlaced(false)
				self:SetMovable(false)
			end
		end
		MultiCastBar_Update(MultiCastActionBarFrame)
		MultiCastActionBarFrame:HookScript("OnEvent", function (self,event)
			if event=="PLAYER_REGEN_ENABLED" then
				if SHOW_MULTI_ACTIONBAR_4 and SHOW_MULTI_ACTIONBAR_3 then
					self:SetMovable(true)
					self:ClearAllPoints();
					self:SetPoint("BOTTOMLEFT", self:GetParent(),"TOPLEFT", MULTICASTACTIONBAR_XPOS, MULTICASTACTIONBAR_YPOS+42)
					self:SetUserPlaced(true)
				end
				self:UnregisterEvent("PLAYER_REGEN_ENABLED");
			end
		end);


		local function PetBar_Update(self)
			if InCombatLockdown() then return end
			if SHOW_MULTI_ACTIONBAR_1 or SHOW_MULTI_ACTIONBAR_2 or SHOW_MULTI_ACTIONBAR_3 or SHOW_MULTI_ACTIONBAR_4 then
				local showXP,showRep = GetExpWatched()
				self:SetMovable(true)
				self:ClearAllPoints();
				if SHOW_MULTI_ACTIONBAR_4 and SHOW_MULTI_ACTIONBAR_3 and SHOW_MULTI_ACTIONBAR_1 then
					if showXP and showRep then
						--self:SetPoint("TOPLEFT", self:GetParent(),"BOTTOMLEFT", PETACTIONBAR_XPOS, 188)
						self:SetPoint("BOTTOMLEFT", self:GetParent(),"TOPLEFT", PETACTIONBAR_XPOS, 96)
					elseif showXP or showRep then
						--self:SetPoint("TOPLEFT", self:GetParent(),"BOTTOMLEFT", PETACTIONBAR_XPOS, 180)
						self:SetPoint("BOTTOMLEFT", self:GetParent(),"TOPLEFT", PETACTIONBAR_XPOS, 86)
					else
						--self:SetPoint("TOPLEFT", self:GetParent(),"BOTTOMLEFT", PETACTIONBAR_XPOS, 172)
						self:SetPoint("BOTTOMLEFT", self:GetParent(),"TOPLEFT", PETACTIONBAR_XPOS, 84)
					end	
				-- else
					-- if SHOW_MULTI_ACTIONBAR_1 then
						-- if showXP and showRep then
							-- --self:SetPoint("TOPLEFT", self:GetParent(),"BOTTOMLEFT", PETACTIONBAR_XPOS, 148)
							-- self:SetPoint("BOTTOMLEFT", self:GetParent(),"TOPLEFT", PETACTIONBAR_XPOS, 54)
						-- elseif showXP or showRep then
							-- --self:SetPoint("TOPLEFT", self:GetParent(),"BOTTOMLEFT", PETACTIONBAR_XPOS, 140)
							-- self:SetPoint("BOTTOMLEFT", self:GetParent(),"TOPLEFT", PETACTIONBAR_XPOS, 45)
						-- else
							-- --self:SetPoint("TOPLEFT", self:GetParent(),"BOTTOMLEFT", PETACTIONBAR_XPOS, 132)
							-- self:SetPoint("BOTTOMLEFT", self:GetParent(),"TOPLEFT", PETACTIONBAR_XPOS, 42)
						-- end
					-- else
						-- if showXP and showRep then
							-- --self:SetPoint("TOPLEFT", self:GetParent(),"BOTTOMLEFT", PETACTIONBAR_XPOS, 104)
							-- self:SetPoint("BOTTOMLEFT", self:GetParent(),"TOPLEFT", PETACTIONBAR_XPOS, 12)
						-- elseif showXP or showRep then
							-- --self:SetPoint("TOPLEFT", self:GetParent(),"BOTTOMLEFT", PETACTIONBAR_XPOS, 96)
							-- self:SetPoint("BOTTOMLEFT", self:GetParent(),"TOPLEFT", PETACTIONBAR_XPOS, 4)
						-- else
							-- --self:SetPoint("TOPLEFT", self:GetParent(),"BOTTOMLEFT", PETACTIONBAR_XPOS, 88)
							-- self:SetPoint("BOTTOMLEFT", self:GetParent(),"TOPLEFT", PETACTIONBAR_XPOS, 0)
						-- end
					-- end
				end
				self:SetUserPlaced(true)
			end
		end
		PetBar_Update(PetActionBarFrame)
		hooksecurefunc("MainMenuBar_UpdateExperienceBars",function(newLevel)
			StanceBar_Update(StanceBarFrame)
			PetBar_Update(PetActionBarFrame)
			MultiCastBar_Update(MultiCastActionBarFrame)
		end);
		hooksecurefunc("MultiActionBar_Update",function()	
			Pig_MultiBar_Update()
			StanceBar_Update(StanceBarFrame)
			PetBar_Update(PetActionBarFrame)
			MultiCastBar_Update(MultiCastActionBarFrame)
		end);
	end
	ActionF.BarRight=PIGCheckbutton(ActionF,{"TOPLEFT",ActionF.botline,"TOPLEFT",300,-20},{"移动右边动作条到下方","移动右边竖向动作条到下方动作条之上"})
	ActionF.BarRight:SetScript("OnClick", function (self)
		if self:GetChecked() then
			PIG["ActionBar"]["BarRight"]=true
			ActionBarfun.Pig_BarRight()
		else
			PIG["ActionBar"]["BarRight"]=false
			Pig_Options_RLtishi_UI:Show()
		end
	end)
	--主动作条缩放比例
	function ActionBarfun.ActionBar_bili()
		if PIG["ActionBar"]["ActionBar_bili"] then
			MainMenuBar:SetScale(PIG["ActionBar"]["ActionBar_bili_value"]);
			VerticalMultiBarsContainer:SetScale(PIG["ActionBar"]["ActionBar_bili_value"]);
			for i=1, 12 do
				_G["MultiBarLeftButton"..i]:SetScale(PIG["ActionBar"]["ActionBar_bili_value"])
				--_G["MultiBarRightButton"..i]:SetScale(PIG["ActionBar"]["ActionBar_bili_value"])
			end
		end
	end
	function ActionBarfun.ActionBar_bili_OP()
		ActionF.ActionBar_bili.Slider:SetValue(PIG["ActionBar"]["ActionBar_bili_value"]);
		ActionF.ActionBar_bili.Slider.Text:SetText(PIG["ActionBar"]["ActionBar_bili_value"]);
		if PIG["ActionBar"]["ActionBar_bili"] then
			ActionF.ActionBar_bili:SetChecked(true);
			ActionF.ActionBar_bili.Slider:Enable();
			ActionF.ActionBar_bili.Slider.Low:SetTextColor(1, 1, 1, 1);
			ActionF.ActionBar_bili.Slider.High:SetTextColor(1, 1, 1, 1);
			ActionF.ActionBar_bili.Slider.Text:SetTextColor(1, 1, 1, 1);
		else
			ActionF.ActionBar_bili:SetChecked(false);
			ActionF.ActionBar_bili.Slider:Disable();
			ActionF.ActionBar_bili.Slider.Low:SetTextColor(0.8, 0.8, 0.8, 0.5);
			ActionF.ActionBar_bili.Slider.High:SetTextColor(0.8, 0.8, 0.8, 0.5);
			ActionF.ActionBar_bili.Slider.Text:SetTextColor(0.8, 0.8, 0.8, 0.5);
		end
	end
	ActionF.ActionBar_bili = PIGCheckbutton(ActionF,{"TOPLEFT",ActionF.botline,"TOPLEFT",20,-60},{"缩放动作条","启用缩放动作条,注意此设置和系统高级里面的UI缩放不同，只调整动作条比例"})
	ActionF.ActionBar_bili:SetScript("OnClick", function (self)
		if self:GetChecked() then
			PIG["ActionBar"]["ActionBar_bili"]=true	
		else
			PIG["ActionBar"]["ActionBar_bili"]=false
			Pig_Options_RLtishi_UI:Show()
		end
		ActionBarfun.ActionBar_bili_OP()
		ActionBarfun.ActionBar_bili()
	end);
	-------
	local tooltipText = '拖动滑块或者用鼠标滚轮调整动作条缩放比例,注意此设置和系统高级里面的UI缩放不同，只调整动作条比例';
	ActionF.ActionBar_bili.Slider = PIGSlider(ActionF,{"LEFT",ActionF.ActionBar_bili,"RIGHT",96,0},{110,14},{0.6,1.4,0.1},tooltipText)
	ActionF.ActionBar_bili.Slider:SetScript('OnValueChanged', function(self)
		local Newval = floor(self:GetValue()*10+0.5)
		local Newval = Newval/10
		PIG["ActionBar"]["ActionBar_bili_value"]=Newval;	
		ActionBarfun.ActionBar_bili_OP()
		ActionBarfun.ActionBar_bili()
	end)
end
---=======
ActionF:HookScript("OnShow", function(self)
	self.Ranse:SetChecked(PIG["ActionBar"]["Ranse"])
	if GetCVar("countdownForCooldowns")=="1" then
		self.Cooldowns:SetChecked(true)
	else
		self.Cooldowns:SetChecked(false)
	end
	if tocversion<20000 then
		self.Cailiao:SetChecked(PIG["ActionBar"]["Cailiao"])
	end
	self.PetTishi:SetChecked(PIG["ActionBar"]["PetTishi"])
	self.AutoFanye:SetChecked(PIG["ActionBar"]["AutoFanye"])
	if tocversion<100000 then
		self.HideShijiu:SetChecked(PIG["ActionBar"]["HideShijiu"])
		self.BarRight:SetChecked(PIG["ActionBar"]["BarRight"])
		ActionBarfun.ActionBar_bili_OP()
	end
end)
----------------
addonTable.ActionBar = function()
	ActionBar_Ranse()
	if tocversion<20000 then
		ActionBarfun.ActionBar_Cailiao()
	end
	ActionBar_PetTishi()
	ActionBar_AutoFanye()
	if tocversion<100000 then
		ActionBarfun.ActionBar_HideShijiu()
		ActionBarfun.Pig_BarRight()
		ActionF.ActionBar_bili.Slider:SetValue(PIG["ActionBar"]["ActionBar_bili_value"])
	end
	ActionBarfun.Pig_Action()
end