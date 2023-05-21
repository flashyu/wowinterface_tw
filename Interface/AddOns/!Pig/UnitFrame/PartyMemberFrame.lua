local _, addonTable = ...;
local _, _, _, tocversion = GetBuildInfo()
local Create = addonTable.Create
local PIGFontString=Create.PIGFontString
local UnitFramefun=addonTable.UnitFramefun
--=======================================
local UFP_MAX_PARTY_BUFFS = 16;
local UFP_MAX_PARTY_DEBUFFS = 8;
local UFP_MAX_PARTY_PET_DEBUFFS = 4;
----------------
--队友血量
local function Update_HP(self,arg1)
	local mubiaoHmax = UnitHealthMax(arg1)
	if mubiaoHmax>0 then
		local mubiaoH = UnitHealth(arg1)
		self.title:SetText(mubiaoH..'/'..mubiaoHmax);
	else
		self.title:SetText('?/?');
	end
end
--队友等级
local function Update_Level(self,arg1)
	local LevelLL=UnitLevel(arg1)
    if LevelLL then
    	if LevelLL >= 1 then
			self.title:SetText(LevelLL);
		else
			self.title:SetText("?");
		end
	end
end
----队友目标
local function Update_duiyoumubiao(self,arg1)
	local PartymubiaiT=arg1.."target"
	local partytargetname = GetUnitName(PartymubiaiT, true)
	if partytargetname then 
		local diduiORyoushan = UnitIsEnemy(PartymubiaiT,"player")
		local duiyoumubiaobaifenbi = math.floor((UnitHealth(PartymubiaiT)/UnitHealthMax(PartymubiaiT))*100);
		if diduiORyoushan then
			self.title:SetTextColor(1, 0, 0);
		else
			self.title:SetTextColor(0, 1, 0);
		end	
		if UnitIsDead(PartymubiaiT) then
			self.title:SetText(partytargetname.."(死亡)");
		else
			self.title:SetText(partytargetname.."("..duiyoumubiaobaifenbi.."%)");
		end
	else
		self.title:SetText();
	end
end
--显示BUFF
local function Update_BUFF(id,arg1)
	for j = 1, UFP_MAX_PARTY_BUFFS, 1 do
		local BUFFalphap = 0;
		local _, icon = UnitBuff(arg1, j);
		if icon then
			_G["Party"..id.."Buff"..j].Icon:SetTexture(icon);
			BUFFalphap = 1;
		end
		_G["Party"..id.."Buff"..j].Icon:SetAlpha(BUFFalphap);
	end
end
local function Update_Debuff(id,arg1)
	for j = 1, UFP_MAX_PARTY_DEBUFFS, 1 do
		local BUFFalphap = 0;
		local _, icon = UnitDebuff(arg1, j);
		if icon then
			_G["Party"..id.."Debuff"..j].Icon:SetTexture(icon);
			BUFFalphap = 1;
		end
		_G["Party"..id.."Debuff"..j].Icon:SetAlpha(BUFFalphap);
	end
end
----创建扩展信息框架
local duiyouFrameReg = CreateFrame("Frame");
function UnitFramefun.Duiyou()
	if PIG["UnitFrame"]["PartyMemberFrame"]["Plus"] then
		for id = 1, MAX_PARTY_MEMBERS, 1 do
			local Party=_G["PartyMemberFrame"..id] or PartyFrame and PartyFrame["MemberFrame"..id]
			----队友职业图标
			if not Party.zhiye then		
				Party.zhiye = CreateFrame("Button", nil, Party);
				Party.zhiye:SetFrameLevel(5)
				Party.zhiye:SetSize(28,28);
				if tocversion<100000 then
					Party.zhiye:SetPoint("BOTTOMLEFT", Party, "TOPLEFT", 22, -18);
				else
					Party.zhiye:SetPoint("BOTTOMLEFT", Party, "TOPLEFT", 17, -16);
				end
				Party.zhiye:SetHighlightTexture("Interface/Minimap/UI-Minimap-ZoomButton-Highlight");

				Party.zhiye.Border = Party.zhiye:CreateTexture(nil, "OVERLAY");
				Party.zhiye.Border:SetTexture("Interface/Minimap/MiniMap-TrackingBorder");
				Party.zhiye.Border:SetSize(46,46);
				Party.zhiye.Border:SetPoint("CENTER", Party.zhiye, "CENTER", 10, -10);

				Party.zhiye.Icon = Party.zhiye:CreateTexture();
				Party.zhiye.Icon:SetSize(17,17);
				Party.zhiye.Icon:SetPoint("CENTER");

				--队友职业图标点击功能：左交易/右观察
				Party.zhiye:RegisterForClicks("LeftButtonUp", "RightButtonUp");
				Party.zhiye:SetScript("OnClick", function (self, button)
					local wanjiaID =self:GetParent().unit
					if UnitIsConnected(wanjiaID) then--玩家未离线
						local inRange1 = CheckInteractDistance(wanjiaID, 1);
						if button=="LeftButton" and not UnitIsDead(wanjiaID) then
							InspectUnit(wanjiaID);
						elseif button=="RightButton" and inRange1 then		
							InitiateTrade(wanjiaID);         
						end
					end	
				end);
			end
			--队友等级
			if not Party.Level then	
				Party.Level = CreateFrame("Frame", nil, Party);
				Party.Level:SetSize(20,18);
				Party.Level:SetPoint("TOPRIGHT", Party, "BOTTOMLEFT", 14, 11);
			    Party.Level.title = PIGFontString(Party.Level,{"TOPRIGHT", Party.Level, "TOPRIGHT", 0, 0},"", "OUTLINE")
			    Party.Level.title:SetTextColor(1, 0.82, 0);
			    Party.Level:RegisterUnitEvent("UNIT_LEVEL", "party"..id);
			    Party.Level:HookScript("OnEvent", function(self,event,arg1)
					if not IsInRaid() then Update_Level(self,arg1) end
				end)
			end
		    ---队友血量扩展显示框架
		    if not Party.HP then
				Party.HP = CreateFrame("Frame", nil, Party,"BackdropTemplate");
				Party.HP:SetSize(90,22);
				Party.HP:SetBackdrop({ bgFile = "Interface/DialogFrame/UI-DialogBox-Background",
				edgeFile = "Interface/Tooltips/UI-Tooltip-Border", edgeSize = 10, 
				insets = { left = 2, right = 2, top = 2, bottom = 2 }});
				Party.HP:SetBackdropColor(0, 0, 0, 0.6);
				Party.HP:SetBackdropBorderColor(0.8, 0.8, 0.8, 0.9);
				if tocversion<100000 then
					Party.HP:SetPoint("TOPLEFT", Party, "TOPRIGHT", -11, -10);
				else
					Party.HP:SetWidth(100);
					Party.HP:SetPoint("TOPLEFT", Party, "TOPRIGHT", -3, -17.6);
				end
				Party.HP.title = PIGFontString(Party.HP,{"CENTER", Party.HP, "CENTER", 0, 0},"", "OUTLINE", 13.6)
				Party.HP.title:SetTextColor(0,1,0,1);
				Party.HP:RegisterUnitEvent("UNIT_HEALTH", "party"..id);--HP改变时
				Party.HP:RegisterUnitEvent("UNIT_MAXHEALTH", "party"..id);--最大HP改变时
				Party.HP:HookScript("OnEvent", function(self,event,arg1)
					if not IsInRaid() then Update_HP(self,arg1) end
				end)
			end
			--位面图标移位
			Party.notPresentIcon=Party.notPresentIcon or Party.NotPresentIcon
			Party.notPresentIcon:ClearAllPoints()
			Party.notPresentIcon:SetPoint("LEFT",Party.HP,"RIGHT",0,0);
			--队友buff常驻显示
			for j = 1, UFP_MAX_PARTY_BUFFS, 1 do  --BUFF
				if not _G["Party"..id.."Buff"..j] then
					local buff = CreateFrame("Button", "Party"..id.."Buff"..j, Party);
					buff:SetSize(15,15);
					if j == 1 then
						if tocversion<100000 then
			           		buff:SetPoint("TOPLEFT", Party, "TOPLEFT", 48, -32);
			           	else
							buff:SetPoint("TOPLEFT", Party, "TOPLEFT", 40, -39);
			           	end
			            buff:RegisterUnitEvent("UNIT_AURA","party"..id);--获得BUFF时
			            buff:HookScript("OnEvent", function(self,event,arg1)
							if not IsInRaid() then Update_BUFF(id,arg1) end
						end)
			        else
			            buff:SetPoint("LEFT", _G["Party"..id.."Buff"..(j-1)], "RIGHT", 2, 0);
			        end
					buff.Icon = buff:CreateTexture(nil, "ARTWORK");
			        buff.Icon:SetAllPoints(buff)
					
					buff:EnableMouse(true);
			        buff:SetScript("OnEnter",function(self)
			        	GameTooltip:ClearLines();
						GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
			            GameTooltip:SetUnitBuff(Party.unit, j);
			        end)
			        buff:SetScript("OnLeave",function()
			            GameTooltip:Hide();
			        end)
			    end
		    end
		    --改动系统DEBUFF位置
		    if tocversion<100000 then
		    	_G["PartyMemberFrame"..id.."Debuff1"]:ClearAllPoints();
				_G["PartyMemberFrame"..id.."Debuff1"]:SetPoint("TOPRIGHT", _G["PartyMemberFrame"..id], "TOPRIGHT", 50, 8);
		    else
			    for j = 1, UFP_MAX_PARTY_DEBUFFS, 1 do  --DEBUFF
					if not _G["Party"..id.."Debuff"..j] then
						local debuff = CreateFrame("Button", "Party"..id.."Debuff"..j, Party);
						debuff:SetSize(15,15);
						if j == 1 then
							debuff:SetPoint("BOTTOMLEFT", Party, "TOPLEFT", 122, -16);
				            debuff:RegisterUnitEvent("UNIT_AURA","party"..id);--获得debuff时
				            debuff:HookScript("OnEvent", function(self,event,arg1)
								if not IsInRaid() then Update_Debuff(id,arg1) end
							end)
				        else
				            debuff:SetPoint("LEFT", _G["Party"..id.."Debuff"..(j-1)], "RIGHT", 2, 0);
				        end
						debuff.Icon = debuff:CreateTexture(nil, "ARTWORK");
				        debuff.Icon:SetAllPoints(debuff)
						
						debuff:EnableMouse(true);
				        debuff:SetScript("OnEnter",function(self)
				        	GameTooltip:ClearLines();
							GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
				            GameTooltip:SetUnitDebuff(Party.unit, j);
				        end)
				        debuff:SetScript("OnLeave",function()
				            GameTooltip:Hide();
				        end)
				    end
			    end
			end

		    --队友目标
		    if not Party.mubiao then
				Party.mubiao = CreateFrame("Button", nil, Party, "SecureActionButtonTemplate")
				Party.mubiao:SetSize(100,22);
				Party.mubiao:SetPoint("LEFT", Party.HP, "RIGHT", 4, -0);
				Party.mubiao:RegisterForClicks("AnyUp")
				Party.mubiao:RegisterForDrag("LeftButton")
				Party.mubiao:SetAttribute("*type1", "target")
				Party.mubiao:SetAttribute("unit", "Party"..id.."target")
			    Party.mubiao.title = PIGFontString(Party.mubiao,{"LEFT", Party.mubiao, "LEFT", 0, 0},"", "OUTLINE")
			    Party.mubiao.title:SetTextColor(1, 0.82, 0);
			    Party.mubiao:RegisterUnitEvent("UNIT_TARGET","party"..id);
			    Party.mubiao:HookScript("OnEvent", function(self,event,arg1)
					if not IsInRaid() then Update_duiyoumubiao(self,arg1) end
				end)
			end
		end
		--隐藏系统自带队友buff鼠标提示
		if tocversion<100000 then
			hooksecurefunc("PartyMemberBuffTooltip_Update", function(self)
			    PartyMemberBuffTooltip:Hide();
			end)
		else
			hooksecurefunc(PartyMemberBuffTooltip, "UpdateTooltip", function(self)
				self:Hide();
			end)
		end
		---
		local function Update_Level_ALL(id)
			local Party=_G["PartyMemberFrame"..id] or PartyFrame and PartyFrame["MemberFrame"..id]
			local Party=Party.Level
			Update_Level(Party,"party"..id)
		
		end
		local function Update_HP_ALL(id)
			local Party=_G["PartyMemberFrame"..id] or PartyFrame and PartyFrame["MemberFrame"..id]
			local Party=Party.HP
			Update_HP(Party,"party"..id)
		end
	    local function Update_duiyoumubiao_ALL(id)
	    	local Party=_G["PartyMemberFrame"..id] or PartyFrame and PartyFrame["MemberFrame"..id]
			local Party=Party.mubiao
			Update_duiyoumubiao(Party,"party"..id)
	    end
		local function Update_BUFF_ALL(id)
			Update_BUFF(id,"party"..id)
		end
	    --===============================
	    --更新队友职业图标
		local function Update_zhiye(id)
	        local _,class = UnitClass("Party"..id)
			if class then
				local Party=_G["PartyMemberFrame"..id] or PartyFrame and PartyFrame["MemberFrame"..id]
				Party.zhiye.Icon:SetTexture("Interface/GLUES/CHARACTERCREATE/UI-CHARACTERCREATE-CLASSES")
				local coords = CLASS_ICON_TCOORDS[class];
				Party.zhiye.Icon:SetTexCoord(unpack(coords));
			end
		end
		----------------
		local function yanchizhixingsuoyou()
			if not IsInRaid() then
				local numSubgroupMembers = GetNumSubgroupMembers()
				for id = 1, numSubgroupMembers, 1 do
					Update_zhiye(id)
					Update_Level_ALL(id)
					Update_HP_ALL(id)
					Update_duiyoumubiao_ALL(id)
					Update_BUFF_ALL(id)
				end
			end
		end
		C_Timer.After(1,yanchizhixingsuoyou)
		C_Timer.After(2,yanchizhixingsuoyou)
		local function HideHPMPTT()
			for id=1,MAX_PARTY_MEMBERS do
				if not PartyMemberFrame1 and not PartyFrame then C_Timer.After(3,HideHPMPTT) return end
				local Party=_G["PartyMemberFrame"..id] or PartyFrame and PartyFrame["MemberFrame"..id]
				local healthbar=Party.healthbar or Party.HealthBar
				local manabar=Party.manabar or Party.ManaBar
				healthbar.TextString:SetAlpha(0.1);
				manabar.TextString:SetAlpha(0.1);
				local function xianHPMP() 
					healthbar.TextString:SetAlpha(1);
					manabar.TextString:SetAlpha(1);		
				end
				local function yinHPMP()
					healthbar.TextString:SetAlpha(0.1);
					manabar.TextString:SetAlpha(0.1);
				end
				healthbar:HookScript("OnEnter",xianHPMP);
				manabar:HookScript("OnEnter", xianHPMP)
				healthbar:HookScript("OnLeave", yinHPMP)
				manabar:HookScript("OnLeave", yinHPMP)
			end
		end
		if tocversion>50000 then C_Timer.After(3,HideHPMPTT) end
		------------------
		duiyouFrameReg:RegisterEvent("GROUP_ROSTER_UPDATE");--团队成员更新
		duiyouFrameReg:SetScript("OnEvent", function(self,event,arg1,...)
			if not IsInRaid() then 
				if event=="GROUP_ROSTER_UPDATE" then
					yanchizhixingsuoyou()
					C_Timer.After(2,yanchizhixingsuoyou)
				end
			end
		end)
	end
end