local addonName, addonTable = ...;
local L=addonTable.locale
local _, _, _, tocversion = GetBuildInfo()
----------
local Create = addonTable.Create
local PIGFrame=Create.PIGFrame
local PIGButton=Create.PIGButton
local PIGCheckbutton=Create.PIGCheckbutton
local PIGQuickBut=Create.PIGQuickBut
local PIGLine=Create.PIGLine
local PIGSlider = Create.PIGSlider
local PIGCheckbutton_R=Create.PIGCheckbutton_R
local PIGOptionsList_R=Create.PIGOptionsList_R
local PIGFontString=Create.PIGFontString
--------------
local ActionBarfun=addonTable.ActionBarfun
local PIGUseKeyDown=ActionBarfun.PIGUseKeyDown
local function PlayerHasHearthstone()
	return 6948
end
local PlayerHasHearthstone=C_Container and C_Container.PlayerHasHearthstone or PlayerHasHearthstone
---功能动作条===========
local fuFrame=ActionBarfun.fuFrame
local fuFrameBut=ActionBarfun.fuFrameBut
local RTabFrame=ActionBarfun.RTabFrame
local QuickButF,QuickButTabBut =PIGOptionsList_R(RTabFrame,L["ACTION_TABNAME2"],100)
ActionBarfun.QuickButF=QuickButF
--
QuickButF.Open=PIGCheckbutton_R(QuickButF,{"功能动作条","在屏幕上创建一条功能动作条，以便快捷使用某些功能。\n你可以自定义需要显示的按钮"})
QuickButF.Open:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIG["QuickBut"]["Open"]=true;
		QuickButUI:Open()
	else
		PIG["QuickBut"]["Open"]=false;
		Pig_Options_RLtishi_UI:Show()
	end
end)
--
local function QuickButFLock()
	if QuickButUI.yidong then
		if PIG["QuickBut"]["Lock"] then
			QuickButUI.yidong:Hide()
		else
			QuickButUI.yidong:Show()
		end
	end
end
QuickButF.Lock=PIGCheckbutton(QuickButF,{"LEFT",QuickButF.Open,"RIGHT",130,0},{"锁定位置","锁定功能动作条位置，使其无法移动"})
QuickButF.Lock:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIG["QuickBut"]["Lock"]=true
	else
		PIG["QuickBut"]["Lock"]=false;
	end
	QuickButFLock()
end)
--
QuickButF.suofang_t = PIGFontString(QuickButF,{"LEFT",QuickButF.Lock,"RIGHT",110,2},"缩放:")
local xiayiinfo = {0.8,1.4,0.1}
QuickButF.suofang = PIGSlider(QuickButF,{"LEFT",QuickButF.suofang_t,"RIGHT",10,0},{100,14},xiayiinfo)
QuickButF.suofang:SetScript("OnValueChanged", function(self)
	local Hval = self:GetValue()
	local Hval = Hval*10+0.5
	local Hval = floor(Hval)*0.1
	self.Text:SetText(Hval);
	PIG["QuickBut"]["bili"]=Hval;
	QuickButUI:SetScale(Hval);
end)
--
QuickButF.CZBUT = PIGButton(QuickButF,{"TOPRIGHT",QuickButF,"TOPRIGHT",-10,-20},{80,24},"重置位置")
QuickButF.CZBUT:SetScript("OnClick", function ()
	PIG["QuickBut"]["Point"]=addonTable.Default["QuickBut"]["Point"];
	if QuickButUI then
		QuickButUI:ClearAllPoints();
		if tocversion<100000 then
			QuickButUI:SetPoint(PIG["QuickBut"]["Point"][1],UIParent,PIG["QuickBut"]["Point"][2],PIG["QuickBut"]["Point"][3],PIG["QuickBut"]["Point"][4]);
		else
			QuickButUI:SetPoint(PIG["QuickBut"]["Point"][1],UIParent,PIG["QuickBut"]["Point"][2],PIG["QuickBut"]["Point"][3]-200,PIG["QuickBut"]["Point"][4]+90);
		end
	end
end)
QuickButF:HookScript("OnShow", function(self)
	self.Open:SetChecked(PIG["QuickBut"]["Open"])
	self.Lock:SetChecked(PIG["QuickBut"]["Lock"])
	self.suofang:SetValue(PIG["QuickBut"]["bili"]);
end)
--
QuickButF.Modline = PIGLine(QuickButF,"TOP",-66)
QuickButF.ModF = PIGFrame(QuickButF)
QuickButF.ModF:SetPoint("TOPLEFT",QuickButF.Modline,"BOTTOMLEFT",0,0);
QuickButF.ModF:SetPoint("BOTTOMRIGHT",QuickButF,"BOTTOMRIGHT",0,30);
local BGbroadcast_tooltip = {"添加<战况广播按钮>到功能动作条","添加一个战场战况广播按钮,注意战场外不显示"}
QuickButF.ModF.BGbroadcast=PIGCheckbutton_R(QuickButF.ModF,BGbroadcast_tooltip,true)
QuickButF.ModF.BGbroadcast:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIG["QuickBut"]["BGbroadcast"]=true;
		QuickButUI:BGbroadcast()
	else
		PIG["QuickBut"]["BGbroadcast"]=false;
		Pig_Options_RLtishi_UI:Show()
	end
end)
local Lushi_tooltip = {"添加<炉石/专业按钮>到功能动作条","启动炉石/专业按钮。\n|cff00ff00左键使用炉石！|r\n|cff00ff00右键打开专业技能面板!|r"}
QuickButF.ModF.Lushi=PIGCheckbutton_R(QuickButF.ModF,Lushi_tooltip,true)
QuickButF.ModF.Lushi:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIG["QuickBut"]["Lushi"]=true;
		QuickButUI:Lushi()
	else
		PIG["QuickBut"]["Lushi"]=false;
		Pig_Options_RLtishi_UI:Show()
	end
end)
local Spell_tooltip = {
	"添加<职业辅助技能栏>到功能动作条",
	"启动职业辅助技能栏。\n|cff00ff00左键展开职业辅助技能栏！|r\n|cff00ff00右键打开Recount/Details统计面板(需安装插件:Recount/Details)。|r"
}
QuickButF.ModF.Spell=PIGCheckbutton_R(QuickButF.ModF,Spell_tooltip,true)
QuickButF.ModF.Spell:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIG["QuickBut"]["Spell"]=true;
		QuickButUI:Spell()
	else
		PIG["QuickBut"]["Spell"]=false;
		Pig_Options_RLtishi_UI:Show()
	end
end)
QuickButF.ModF:HookScript("OnShow", function(self)
	self.Lushi:SetChecked(PIG["QuickBut"]["Lushi"])
	self.Spell:SetChecked(PIG["QuickBut"]["Spell"])
	self.BGbroadcast:SetChecked(PIG["QuickBut"]["BGbroadcast"])
end)
---
function QuickButUI:Open()
	if not PIG["QuickBut"]["Open"] or self.yidong then
		return
	end
	self:SetScale(PIG["QuickBut"]["bili"]);
	self.yidong=PIGFrame(self,{"TOPLEFT",self,"TOPLEFT",0,0})
	self.yidong:SetPoint("BOTTOMLEFT", self, "BOTTOMLEFT", 0, 0);
	self.yidong:SetWidth(13);
	if PIG["QuickBut"]["Lock"] then
		self.yidong:Hide()
	end
	self.yidong:PIGSetBackdrop()
	self.yidong:PIGSetMovable(self)
	self.yidong:SetScript("OnMouseUp", function (self,Button)
		if Button=="RightButton" then
			if Pig_OptionsUI:IsShown() then
				Pig_OptionsUI:Hide()
			else
				Pig_OptionsUI:Show()
				Create.Show_TabBut(fuFrame,fuFrameBut)
				Create.Show_TabBut_R(RTabFrame,QuickButF,QuickButTabBut)
			end
		end
	end);
	self.yidong:SetScript("OnEnter", function (self)
		self:SetBackdropBorderColor(0,0.8,1, 0.9);
		GameTooltip:ClearLines();
		GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT",0,0);
		GameTooltip:AddLine("左键-|cff00FFff拖动|r，右键-|cff00FFff设置|r")
		GameTooltip:Show();
	end);
	self.yidong:SetScript("OnLeave", function (self)
		self:SetBackdropBorderColor(0, 0, 0, 1);
		GameTooltip:ClearLines();
		GameTooltip:Hide() 
	end)
	self.yidong.t = PIGFontString(self.yidong,nil,"拖\n动",nil,9)
	self.yidong.t:SetAllPoints(self.yidong)
	self.yidong.t:SetTextColor(0.8, 0.8, 0.8, 0.8)
	self.nr=PIGFrame(self,{"TOPLEFT",self.yidong,"TOPRIGHT",1,0})
	self.nr:PIGSetBackdrop()
	self.nr:SetPoint("BOTTOMRIGHT", self, "BOTTOMRIGHT", 0, 0);
end
--战场通告
function QuickButUI:BGbroadcast()
	if PIG["QuickBut"]["Open"] and PIG["QuickBut"]["BGbroadcast"] then
		local GnUI = "BGbroadcast_UI"
		if _G[GnUI] then return end
		local GnIcon="interface/battlefieldframe/battleground-alliance.blp"
		local englishFaction, _ = UnitFactionGroup("player")
		--if englishFaction=="Alliance" then
		if englishFaction=="Horde" then
			GnIcon="interface/battlefieldframe/battleground-horde.blp"
		end	
		-- 
		local Tooltip = "左击-|cff00FFFF通报当前位置来犯人,(来几人就点几次)\r|r右击-|cff00FFFF报告位置安全|r"
		local BGanniu=PIGQuickBut(GnUI,Tooltip,GnIcon)
		BGanniu:SetScript("OnClick", function (self, event)
			if event=="RightButton" then
				SendChatMessage( GetMinimapZoneText().."已安全，机动人员请机动支援！", "instance_chat") 
			else
				if not direnshuliangpig or not hanhuaTimejiange or GetTime()-hanhuaTimejiange>10 then
					direnshuliangpig=0;
				end;
				hanhuaTimejiange=GetTime(); direnshuliangpig=direnshuliangpig+1; SendChatMessage( GetMinimapZoneText().."有"..direnshuliangpig.."个敌人来袭，请求支援！", "instance_chat"); 
			end
		end);
		BGanniu:RegisterEvent("CHAT_MSG_SAY")
		BGanniu:RegisterEvent("PLAYER_ENTERING_WORLD");
		BGanniu:RegisterEvent("ZONE_CHANGED_NEW_AREA");
		BGanniu:SetScript("OnEvent", function (self,event,arg1)
			local inInstance, instanceType =IsInInstance()
			if inInstance and instanceType=="pvp" then
				self.HideF=nil
			else
				self.HideF=true
			end
			self:ShowHide(GnUI)
		end);
	end
end
--炉石专业按钮----
function QuickButUI:Lushi()
	if PIG["QuickBut"]["Open"] and PIG["QuickBut"]["Lushi"] then
		local GnUI = "General_UI"
		if _G[GnUI] then return end
		local Icon=134414
		local Tooltip = "左击-|cff00FFFF使用炉石\r|r右击-|cff00FFFF专业技能|r"
		local General=PIGQuickBut(GnUI,Tooltip,Icon,nil,nil,"SecureActionButtonTemplate")
		local ActionBarfun=addonTable.ActionBarfun
		ActionBarfun.PIGUseKeyDown(General)
		General.Cooldown = CreateFrame("Frame", nil, General);
		General.Cooldown:SetAllPoints()
		General.Cooldown.N = CreateFrame("Cooldown", nil, General.Cooldown, "CooldownFrameTemplate")
		General.Cooldown.N:SetAllPoints()

		General.START = General:CreateTexture(nil, "OVERLAY");
		General.START:SetTexture(130724);
		General.START:SetBlendMode("ADD");
		General.START:SetAllPoints(General)
		General.START:Hide();
		local lushiitemID,lushiSpellID,lushijisuqi=nil,nil,0
		local GetItemCooldown=C_Container and C_Container.GetItemCooldown or GetItemCooldown
		local function gengxinlushiCD()
			if lushiitemID then
				local start, duration= GetItemCooldown(lushiitemID)
				if start and duration then
		 			General.Cooldown.N:SetCooldown(start, duration);
		 		end
		 	end
	 	end
		
		local function Skill_Button_Genxin()
			if InCombatLockdown() then C_Timer.After(10, Skill_Button_Genxin) return end
			if lushijisuqi>10 then return end
			lushiitemID = PlayerHasHearthstone()
			local lushiName, SpellID = GetItemSpell(lushiitemID)
			lushiSpellID=SpellID
			if not lushiitemID or not lushiSpellID then
				C_Timer.After(1, Skill_Button_Genxin);
				lushijisuqi=lushijisuqi+1
				return 
			end
			General:SetAttribute("type1", "item");
			General:SetAttribute("item", lushiName);
			gengxinlushiCD()
			local Skill_List = addonTable.FramePlusfun.Skill_List
			local Skill_List = addonTable.FramePlusfun.Skill_List
			if tocversion>90000 then
				for x=1, #Skill_List do
					for _, i in pairs{GetProfessions()} do
						local offset, numSlots = select(3, GetSpellTabInfo(i))
						for j = offset+1, offset+numSlots do
							local spellName, _ ,spellID=GetSpellBookItemName(j, BOOKTYPE_SPELL)
							if spellName==Skill_List[x] then
								General:SetAttribute("type2", "spell");
								General:SetAttribute("spell", spellID);
								return
							end
						end
					end
				end
			else
				local _, _, tabOffset, numEntries = GetSpellTabInfo(1)
				for x=1, #Skill_List do
					for i=tabOffset + 1, tabOffset + numEntries do
						local spellName, _ = GetSpellBookItemName(i, BOOKTYPE_SPELL)
						if spellName==Skill_List[x] then
							General:SetAttribute("type2", "spell");
							General:SetAttribute("spell", spellName);
							return
						end
					end
				end
			end
		end

		General:RegisterUnitEvent("UNIT_SPELLCAST_START","player");
		General:RegisterUnitEvent("UNIT_SPELLCAST_STOP","player");
		General:RegisterEvent("SPELL_UPDATE_COOLDOWN")
		General:SetScript("OnEvent", function(self,event,arg1,_,arg3)
			if arg3==lushiSpellID then 
				if event=="UNIT_SPELLCAST_START" then
			 		General.START:Show();
			 	end
			 	if event=="UNIT_SPELLCAST_STOP" then
			 		General.START:Hide();
				end	
		 	end
			if event=="SPELL_UPDATE_COOLDOWN" then
				gengxinlushiCD()
				C_Timer.After(0.2, gengxinlushiCD);
			end
		end)
		Skill_Button_Genxin()
	end
end
--职业技能----
local PIGCloseBut=Create.PIGCloseBut
function QuickButUI:Spell()
	local PigMacroEventCount_QK =0;
	local PigMacroDeleted_QK = false;
	local PigMacroCount_QK=0
	if PIG["QuickBut"]["Open"] and PIG["QuickBut"]["Spell"] then
		local GnUI = "Zhushou_UI"
		if _G[GnUI] then return end
		local ActionBarfun=addonTable.ActionBarfun
		local Update_Attribute=ActionBarfun.Update_Attribute
		local Update_Icon=ActionBarfun.Update_Icon
		local Update_Cooldown=ActionBarfun.Update_Cooldown
		local Update_Count=ActionBarfun.Update_Count
		local Update_bukeyong=ActionBarfun.Update_bukeyong
		local Update_State=ActionBarfun.Update_State
		local Update_PostClick=ActionBarfun.Update_PostClick
		local loadingButInfo=ActionBarfun.loadingButInfo
		local OnEnter_Spell=ActionBarfun.OnEnter_Spell
		local OnEnter_Item=ActionBarfun.OnEnter_Item
		local OnEnter_Companion=ActionBarfun.OnEnter_Companion
		local Cursor_Fun=ActionBarfun.Cursor_Fun
		local Update_Macro=ActionBarfun.Update_Macro
		local Icon=131146
		local Tooltip = "左击-|cff00FFFF展开职业辅助技能栏|r\n右击-|cff00FFFF打开Recount/Details插件记录面板|r"
		local Zhushou=PIGQuickBut(GnUI,Tooltip,Icon,nil,nil,"SecureHandlerClickTemplate")
		Zhushou.Close = Zhushou:CreateTexture(nil,"ARTWORK");
		Zhushou.Close:SetDrawLayer("ARTWORK", 7)
		Zhushou.Close:SetTexture("interface/common/voicechat-muted.blp");
		Zhushou.Close:SetSize(Zhushou:GetWidth()-10,Zhushou:GetHeight()-10);
		Zhushou.Close:SetPoint("CENTER",0,0);
		Zhushou.Close:Hide()
		local IconTEX=Zhushou:GetNormalTexture()
		local IconCoord = CLASS_ICON_TCOORDS[select(2,UnitClass("player"))];
		IconTEX:SetTexCoord(unpack(IconCoord));
		---内容页----
		local butW = ActionButton1:GetWidth()
		local gaoNum,kuanNum = 10,2
		local Zhushou_List = CreateFrame("Frame", "Zhushou_List_UI", UIParent,"BackdropTemplate,SecureHandlerShowHideTemplate");
		Zhushou_List:SetBackdrop(Create.Backdropinfo)
		Zhushou_List:SetBackdropColor(Create.BackdropColor[1], Create.BackdropColor[2], Create.BackdropColor[3], Create.BackdropColor[4]);
		Zhushou_List:SetBackdropBorderColor(Create.BackdropBorderColor[1], Create.BackdropBorderColor[2], Create.BackdropBorderColor[3], Create.BackdropBorderColor[4]);
		Zhushou_List:SetSize((butW+6)*kuanNum+6,(butW+6)*gaoNum+6);
		Zhushou_List:SetScale(PIG["QuickBut"]["bili"]);
		Zhushou_List:Hide();
		Zhushou_List:SetFrameLevel(33)
		Zhushou_List:SetScale(0.8)
		--
		local WowHeight=GetScreenHeight();
		local offset = Zhushou:GetBottom();
		Zhushou_List:ClearAllPoints()
		if offset>(WowHeight*0.5) then
			Zhushou_List:SetPoint("TOP", Zhushou, "BOTTOM", 0, -4);
		else
			Zhushou_List:SetPoint("BOTTOM", Zhushou, "TOP", 0, 4);
		end
		--
		Zhushou_List:HookScript("OnShow",function(self)
			Zhushou.Close:Show()
		end)
		Zhushou_List:HookScript("OnHide",function(self)
			Zhushou.Close:Hide()
		end)
		Zhushou:HookScript("OnClick",function(self,button)
			if button == "RightButton" then
				if Recount then
					if Recount.MainWindow:IsShown() then
						Recount.MainWindow:Hide()
					else
						Recount.MainWindow:Show()
						Recount:RefreshMainWindow()
					end
				elseif DetailsBaseFrame1 then
					for i=1,10 do
						if not _G["DetailsBaseFrame"..i] then break end
						if _G["DetailsBaseFrame"..i]:IsShown() then
							_G["DetailsBaseFrame"..i]:Hide()
						else
							_G["DetailsBaseFrame"..i]:Show()
						end
					end
				else
					print("\124cff00FFFF!Pig：\124cffffFF00未安装Recount/Details！\124r");
				end
			end
		end)
		Zhushou:SetAttribute("_onclick", [=[
			local ref = self:GetFrameRef("frame1");
			if button == "LeftButton" then
				if ref:IsShown() then	
					ref:Hide();
				else
					ref:Show();
				end
			end
		]=]); 
		Zhushou:SetFrameRef("frame1", Zhushou_List_UI);
		---
		for i=1,gaoNum*kuanNum do
			local zhushoubut = CreateFrame("CheckButton", "Zhushou_List_"..i, Zhushou_List, "SecureActionButtonTemplate,ActionButtonTemplate,SecureHandlerDragTemplate,SecureHandlerMouseUpDownTemplate")
			zhushoubut:SetSize(butW, butW)
			zhushoubut.NormalTexture:SetAlpha(0.4);
			zhushoubut.cooldown:SetSwipeColor(0, 0, 0, 0.8);
			if i==1 then
				zhushoubut:SetPoint("BOTTOMLEFT",Zhushou_List,"BOTTOMLEFT",6,6);
			else
				local num1,num2=math.modf(i/2)
				if num2~=0 then
					zhushoubut:SetPoint("BOTTOMLEFT",_G["Zhushou_List_"..(i-2)],"TOPLEFT",0,6);
				else
					zhushoubut:SetPoint("LEFT",_G["Zhushou_List_"..(i-1)],"RIGHT",6,0);
				end
			end
	 		local ActionID = 400+i
	 		zhushoubut.action=ActionID
			zhushoubut:SetAttribute("action", ActionID)
			--
			PIGUseKeyDown(zhushoubut)
			loadingButInfo(zhushoubut,"QuickBut")
			--
			zhushoubut:HookScript("PostClick", function(self)
				Update_PostClick(self)
			end);
			zhushoubut:HookScript("OnShow", function (self)
				Update_Icon(self)
				Update_Cooldown(self)
				Update_Count(self)
				Update_bukeyong(self)
			end)
			--
			zhushoubut:HookScript("OnMouseUp", function (self)
				Cursor_Fun(self,"OnMouseUp","QuickBut")
				Update_Icon(self)
				Update_Cooldown(self)
				Update_Count(self)
			end);
			----
			zhushoubut:SetAttribute("_ondragstart",[=[
				self:SetAttribute("type", nil)
			]=])
			zhushoubut:HookScript("OnDragStart", function (self)
				Cursor_Fun(self,"OnDragStart","QuickBut")
				Update_Icon(self)
				Update_Cooldown(self)
				Update_Count(self)
			end)
			--
			zhushoubut:SetAttribute("_onreceivedrag",[=[
				local leibie, spellID = ...
				if kind=="spell" then
					self:SetAttribute("type", kind)
					self:SetAttribute(kind, spellID)
				elseif kind=="item" then
					self:SetAttribute("type", kind)
					self:SetAttribute(kind, leibie)
				elseif kind=="macro" then
					self:SetAttribute("type", kind)
					self:SetAttribute(kind, value)
				end
			]=])
			zhushoubut:HookScript("OnReceiveDrag", function (self)
				Cursor_Fun(self,"OnReceiveDrag","QuickBut")
				Update_Icon(self)
				Update_Cooldown(self)
				Update_Count(self)
			end);
			----
			zhushoubut:SetScript("OnEnter", function (self)
				GameTooltip:ClearLines();
				GameTooltip:SetOwner(self, "ANCHOR_NONE");
				GameTooltip:SetPoint("BOTTOMRIGHT",UIParent,"BOTTOMRIGHT",-100,140);
				local butInfo = PIG_Per["QuickBut"]["ActionInfo"][self.action]
				if butInfo then
					local Type=self.Type
					if Type then
						local SimID=self.SimID
						if Type=="spell" then
							OnEnter_Spell(Type,SimID)
						elseif Type=="item" then
							OnEnter_Item(Type,SimID)
						elseif Type=="macro" then
							local hongSpellID = GetMacroSpell(SimID)
							if hongSpellID then
								OnEnter_Spell(Type,hongSpellID)
							else
								local ItemName, ItemLink = GetMacroItem(SimID);
								if ItemName then
									OnEnter_Item(Type,ItemLink)
								else
									local name, icon, body, isLocal = GetMacroInfo(SimID)
									GameTooltip:SetText(name,1, 1, 1, 1)
									GameTooltip:Show();
								end
							end
						elseif Type=="companion" then
							OnEnter_Companion(Type,SimID,butInfo[3])
						end
					end
				end
			end)
			zhushoubut:SetScript("OnLeave", function ()
				GameTooltip:ClearLines();
				GameTooltip:Hide() 
			end);
			--
			zhushoubut:RegisterEvent("TRADE_SKILL_CLOSE")
			if tocversion>90000 then
			else
				zhushoubut:RegisterEvent("CRAFT_CLOSE")
			end
			local ActionBarfun=addonTable.ActionBarfun
			ActionBarfun.PIGUseKeyDown(zhushoubut)
			zhushoubut:RegisterEvent("UPDATE_MACROS");
			zhushoubut:RegisterEvent("EXECUTE_CHAT_LINE");
			zhushoubut:RegisterEvent("ACTIONBAR_UPDATE_COOLDOWN");
			zhushoubut:RegisterEvent("ACTIONBAR_UPDATE_STATE");
			zhushoubut:RegisterUnitEvent("UNIT_AURA","player");
			zhushoubut:RegisterEvent("BAG_UPDATE");
			zhushoubut:RegisterEvent("AREA_POIS_UPDATED");
			zhushoubut:HookScript("OnEvent", function(self,event,arg1,arg2,arg3)
				if Zhushou_List:IsShown() then
					if event=="PLAYER_REGEN_ENABLED" then
						PigMacroDeleted_QK,PigMacroCount_QK=Update_Macro(self,PigMacroDeleted_QK,PigMacroCount_QK,"QuickBut")
						self:UnregisterEvent("PLAYER_REGEN_ENABLED");
					end
					if event=="BAG_UPDATE" then
						Update_Count(self)
					end
					if event=="ACTIONBAR_UPDATE_COOLDOWN" then
						Update_Cooldown(self)
						Update_bukeyong(self)
					end
					if event=="ACTIONBAR_UPDATE_STATE" or event=="TRADE_SKILL_CLOSE" or event=="CRAFT_CLOSE" or event=="UNIT_AURA" or event=="EXECUTE_CHAT_LINE" then
						Update_State(self)
						Update_Icon(self)
					end
					if event=="UPDATE_MACROS" or event=="PLAYER_REGEN_ENABLED" then
						PigMacroEventCount_QK=PigMacroEventCount_QK+1;
						if self.Type=="macro" then
							if PigMacroEventCount_QK>5 then
								local AccMacros, CharMacros = GetNumMacros();
								if PigMacroCount_QK==0 then
									PigMacroCount_QK = AccMacros + CharMacros;
								elseif (PigMacroCount_QK > AccMacros + CharMacros) then
									PigMacroDeleted_QK = true;
								end
								PigMacroDeleted_QK,PigMacroCount_QK=Update_Macro(self,PigMacroDeleted_QK,PigMacroCount_QK,"QuickBut")
							end
						end
						Update_Icon(self)
						Update_Count(self)
					end
					if event=="AREA_POIS_UPDATED" then
						Update_bukeyong(self)
					end
				end
			end)
		end
	end
end