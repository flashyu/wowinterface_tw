local _, addonTable = ...;
local _, _, _, tocversion = GetBuildInfo()
--------
local Create = addonTable.Create
local PIGFrame=Create.PIGFrame
local PIGQuickBut=Create.PIGQuickBut
local PIGCheckbutton=Create.PIGCheckbutton
local PIGCheckbutton_R=Create.PIGCheckbutton_R
local PIGFontString=Create.PIGFontString
--
local GetContainerNumFreeSlots = C_Container and C_Container.GetContainerNumFreeSlots or GetContainerNumFreeSlots
local GetContainerNumSlots = C_Container and C_Container.GetContainerNumSlots or GetContainerNumSlots
local GetContainerItemID = C_Container and C_Container.GetContainerItemID or GetContainerItemID
local PickupContainerItem =C_Container and C_Container.PickupContainerItem or PickupContainerItem
--=======================================
local zhuangbeixilieID={
	{1,"Head",true},
	{2,"Neck",false},
	{3,"Shoulder",true},
	{4,"Shirt",false},
	{5,"Chest",true},
	{6,"Waist",true},
	{7,"Legs",true},
	{8,"Feet",true},
	{9,"Wrist",true},
	{10,"Hands",true},
	{11,"Finger0",false},
	{12,"Finger1",false},
	{13,"Trinket0",false},
	{14,"Trinket1",false},
	{15,"Back",false},
	{16,"MainHand",true},
	{17,"SecondaryHand",true},
	{18,"Ranged",true},
	{19,"Tabard",false},
}
local ActionBarfun=addonTable.ActionBarfun
local QuickButF=ActionBarfun.QuickButF
local AutoEquip_tooltip = {
	"添加<装备管理>到功能动作条",
	"启动装备管理,在功能动作条显示装备管理按钮。|r"
}
QuickButF.ModF.AutoEquip=PIGCheckbutton_R(QuickButF.ModF,AutoEquip_tooltip,true)
QuickButF.ModF.AutoEquip:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIG["QuickBut"]["AutoEquip"]=true;
		QuickButUI:AutoEquip()
	else
		PIG["QuickBut"]["AutoEquip"]=false;
		Pig_Options_RLtishi_UI:Show()
	end
end)
--
QuickButF.ModF:HookScript("OnShow", function(self)
	self.AutoEquip:SetChecked(PIG["QuickBut"]["AutoEquip"])
end)
function QuickButUI:AutoEquip()
	if not PIG["QuickBut"]["Open"] or not PIG["QuickBut"]["AutoEquip"] then return end
	local GnUI = "QkBut_AutoEquip"
	if _G[GnUI] then return end
	local FrameOnUpdate = CreateFrame("Frame");
	FrameOnUpdate:Hide()
	local Icon=133122
	local Tooltip = "左击-|cff00FFFF展开切换按钮|r\n右击-|cff00FFFF卸下身上有耐久装备|r"
	local AutoEquip=PIGQuickBut(GnUI,Tooltip,Icon)
	-- AutoEquip.BGtex = AutoEquip:CreateTexture(nil, "BACKGROUND", nil, -1);
	-- AutoEquip.BGtex:SetTexture("interface/buttons/ui-emptyslot-white.blp");
	-- AutoEquip.BGtex:SetPoint("TOPLEFT", -10, 10);
	-- AutoEquip.BGtex:SetPoint("BOTTOMRIGHT", 10, -10);
	-- AutoEquip.iconx = AutoEquip:CreateTexture(nil, "ARTWORK");
	-- AutoEquip.iconx:SetTexture(514608);
	-- AutoEquip.iconx:SetTexCoord(0.04,0.50,0.48,0.60);
	-- AutoEquip.iconx:SetPoint("TOPLEFT", 0, 0);
	-- AutoEquip.iconx:SetPoint("BOTTOMRIGHT", 0, 0);
	--
	local NumTexCoord = {
		{0.326,0.43,0,0.32},
		{0.546,0.694,0,0.32},
		{0.80,0.95,0,0.32},
		{0.04,0.21,0.33,0.66},
		{0.3,0.45,0.33,0.66},
		{0.546,0.71,0.33,0.66},
	}
	local butW = self.nr:GetHeight()
	local anniushu=10
	if tocversion<30000 then
		anniushu=6
	end
	local AutoEquipList = PIGFrame(AutoEquip,{"BOTTOM",AutoEquip,"TOP",0,0},{butW, (butW+6)*anniushu},"AutoEquipList_UI",true)
	for i=1,anniushu do
		local AutoEquip_but = CreateFrame("Button", "AutoEquip_but"..i, AutoEquipList)
		AutoEquip_but:SetHighlightTexture(130718);
		AutoEquip_but:SetSize(butW, butW)

		AutoEquip_but.BGtex = AutoEquip_but:CreateTexture(nil, "BACKGROUND", nil, -1);
		AutoEquip_but.BGtex:SetTexture("Interface/Buttons/UI-Quickslot");
		AutoEquip_but.BGtex:SetAlpha(0.4);
		AutoEquip_but.BGtex:SetSize(butW+18, butW+18)
		AutoEquip_but.BGtex:SetPoint("CENTER", 0, 0);

		AutoEquip_but.Tex = AutoEquip_but:CreateTexture(nil, "BORDER");
		AutoEquip_but.Tex:SetPoint("TOPLEFT", 0, 0);
		AutoEquip_but.Tex:SetPoint("BOTTOMRIGHT", 0, 0);
		if tocversion<30000 then
			AutoEquip_but.Tex:SetTexture("interface/timer/bigtimernumbers.blp");
			AutoEquip_but.Tex:SetTexCoord(NumTexCoord[i][1],NumTexCoord[i][2],NumTexCoord[i][3],NumTexCoord[i][4]);
		end

		AutoEquip_but.name = PIGFontString(AutoEquip_but,{"BOTTOM", AutoEquip_but, "BOTTOM", 0, 0},nil,"OUTLINE")
		AutoEquip_but.name:SetTextColor(1, 1, 1, 1)
		AutoEquip_but:RegisterForClicks("AnyUp");
		AutoEquip_but.Down = AutoEquip_but:CreateTexture(nil, "OVERLAY");
		AutoEquip_but.Down:SetTexture(130839);
		AutoEquip_but.Down:SetAllPoints(AutoEquip_but)
		AutoEquip_but.Down:Hide();
		AutoEquip_but:SetScript("OnMouseDown", function (self)
			self.Down:Show();
			GameTooltip:ClearLines();
			GameTooltip:Hide() 
		end);
		AutoEquip_but:SetScript("OnMouseUp", function (self)
			self.Down:Hide();
		end);
		AutoEquip_but:SetScript("OnEnter", function (self)
			GameTooltip:ClearLines();
			GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT",0,0);
			if tocversion<30000 then
				GameTooltip:AddLine("左击-|cff00FFFF切换配装|r\n右击-|cff00FFFF右键保存当前配装|r")
			else
				local name = C_EquipmentSet.GetEquipmentSetInfo(i-1)
				if name then
					GameTooltip:AddLine("左击-|cff00FFFF切换配装|r\n右击-|cff00FFFF右键保存当前配装|r\nShift+左键-|cff00FFFF删除|r")
				else
					GameTooltip:AddLine("|cffFFFF00请在角色信息界面创建装备配装\n然后在此管理配装|r")
				end
			end
			GameTooltip:Show();
		end);
		AutoEquip_but:SetScript("OnLeave", function ()
			GameTooltip:ClearLines();
			GameTooltip:Hide() 
		end);
		AutoEquip_but:SetScript("OnClick", function(self,button)
			if button=="LeftButton" then
				if tocversion<30000 then
					if InCombatLockdown() then return end
					local wupinshujuinfo =PIG_Per['QuickBut']['AutoEquipList'][i]
					if wupinshujuinfo then
						FrameOnUpdate.hejilist={}
						for gg=1,#wupinshujuinfo do
							if wupinshujuinfo[gg][2] then
								EquipItemByName(wupinshujuinfo[gg][2], wupinshujuinfo[gg][1])
							else
								local itemLink = GetInventoryItemLink("player", zhuangbeixilieID[gg][1])
								if itemLink then
									if wupinshujuinfo[gg][1]==17 then
										if wupinshujuinfo[gg-1][2] then
											local fffffID =C_Item.GetItemInventoryTypeByID(wupinshujuinfo[gg-1][2])
											if fffffID~=17 then
												table.insert(FrameOnUpdate.hejilist,zhuangbeixilieID[gg][1])
											end
										end
									else
										table.insert(FrameOnUpdate.hejilist,zhuangbeixilieID[gg][1])
									end	
								end
							end
						end
						if #FrameOnUpdate.hejilist>0 then
							FrameOnUpdate.konggekaishi=0
							FrameOnUpdate.konggelist={}
							for bagID=0,4 do
								local numberOfFreeSlots, bagType = GetContainerNumFreeSlots(bagID)
								if numberOfFreeSlots>0 and bagType==0 then
									for ff=1,GetContainerNumSlots(bagID) do
										if GetContainerItemID(bagID, ff) then
										else
											table.insert(FrameOnUpdate.konggelist,{bagID,ff})
											FrameOnUpdate.konggekaishi=FrameOnUpdate.konggekaishi+1
											if FrameOnUpdate.konggekaishi==#FrameOnUpdate.hejilist then
												break
											end
										end
									end
								end
								if FrameOnUpdate.konggekaishi==#FrameOnUpdate.hejilist then
									break
								end
							end
				
							for inv = 1, #FrameOnUpdate.konggelist do
								local isLocked2 = IsInventoryItemLocked(FrameOnUpdate.hejilist[inv])
								if not isLocked2 then
									PickupInventoryItem(FrameOnUpdate.hejilist[inv])
									PickupContainerItem(FrameOnUpdate.konggelist[inv][1], FrameOnUpdate.konggelist[inv][2])
								end
							end
							if #FrameOnUpdate.konggelist<#FrameOnUpdate.hejilist then
								PIG_print(i.."号配装失败(背包剩余空间不足)");
								return
							end
						end
						PIG_print("更换"..i.."号配装成功");
					else
						PIG_print(i.."号配装尚未保存");
					end
				else
					if IsShiftKeyDown() then
						C_EquipmentSet.DeleteEquipmentSet(i-1)
						for i=1,anniushu do
							local fujikj = _G["AutoEquip_but"..i]
							local name, iconFileID, setID, isEquipped, numItems, numEquipped, numInInventory, numLost, numIgnored = C_EquipmentSet.GetEquipmentSetInfo(i-1)
							fujikj.Tex:SetTexture(iconFileID);
							fujikj.name:SetText(name);
						end
					else
						C_EquipmentSet.UseEquipmentSet(i-1)
					end
				end
			else
				if tocversion<30000 then
					local wupinshujuinfo = {}
					for inv = 1, #zhuangbeixilieID do
						local itemLink = GetInventoryItemLink("player", zhuangbeixilieID[inv][1])
						table.insert(wupinshujuinfo, {zhuangbeixilieID[inv][1],itemLink});
					end
					PIG_Per['QuickBut']['AutoEquipList'][i] = wupinshujuinfo
					PIG_print("当前装备已保存到"..i.."号配装");
				else
					--C_EquipmentSet.UnassignEquipmentSetSpec(i-1)
					C_EquipmentSet.SaveEquipmentSet(i-1)
				end
			end
			AutoEquipList:Hide()
		end)
	end
	--
	local function SetPoints(self)
		local WowHeight=GetScreenHeight();
		local offset1 = self:GetBottom();
		AutoEquipList:ClearAllPoints();
		if offset1>(WowHeight*0.5) then
			for i=1,anniushu do
				local fujikj = _G["AutoEquip_but"..i]
				fujikj:ClearAllPoints();
				if i==1 then
					fujikj:SetPoint("TOP",AutoEquipList,"TOP",0,0);
				else
					local fujikj_1 = _G["AutoEquip_but"..(i-1)]
					fujikj:SetPoint("TOP",fujikj_1,"BOTTOM",0,-6);
				end
			end
			AutoEquipList:SetPoint("TOP",self,"BOTTOM",0,-6);
		else
			for i=1,anniushu do
				local fujikj = _G["AutoEquip_but"..i]
				fujikj:ClearAllPoints();
				if i==1 then
					fujikj:SetPoint("BOTTOM",AutoEquipList,"BOTTOM",0,0);
				else
					local fujikj_1 = _G["AutoEquip_but"..(i-1)]
					fujikj:SetPoint("BOTTOM",fujikj_1,"TOP",0,6);
				end
			end
			AutoEquipList:SetPoint("BOTTOM",self,"TOP",0,6);
		end
		AutoEquipList:Show()
	end
	AutoEquip:SetScript("OnClick", function(self,button)
		if button=="LeftButton" then
			if tocversion<30000 then
				if AutoEquipList:IsShown() then
					AutoEquipList:Hide()
				else
					SetPoints(self)
				end
			else
				local kaiqiq=GetCVar("equipmentManager")
				if kaiqiq=="0" then PIG_print("请先打开系统的装备管理功能") return end
				if AutoEquipList:IsShown() then
					AutoEquipList:Hide()
				else
					SetPoints(self)
					for i=1,anniushu do
						local fujikj = _G["AutoEquip_but"..i]
						local name, iconFileID, setID, isEquipped, numItems, numEquipped, numInInventory, numLost, numIgnored = C_EquipmentSet.GetEquipmentSetInfo(i-1)
						fujikj.Tex:SetTexture(iconFileID);
						fujikj.name:SetText(name);
					end
				end
			end
		else
			if InCombatLockdown() then return end
			FrameOnUpdate.hejilist={}
			for inv = 1, #zhuangbeixilieID do
				if zhuangbeixilieID[inv][3] then
					if GetInventoryItemID("player",zhuangbeixilieID[inv][1]) then
						table.insert(FrameOnUpdate.hejilist,zhuangbeixilieID[inv][1])
					end
				end
			end
			FrameOnUpdate.konggekaishi=0
			FrameOnUpdate.konggelist={}
			for bagID=0,4 do
				local numberOfFreeSlots, bagType = GetContainerNumFreeSlots(bagID)
				if numberOfFreeSlots>0 and bagType==0 then
					for ff=1,GetContainerNumSlots(bagID) do
						if GetContainerItemID(bagID, ff) then
						else
							table.insert(FrameOnUpdate.konggelist,{bagID,ff})
							FrameOnUpdate.konggekaishi=FrameOnUpdate.konggekaishi+1
							if FrameOnUpdate.konggekaishi==#FrameOnUpdate.hejilist then
								break
							end
						end
					end
				end
				if FrameOnUpdate.konggekaishi==#FrameOnUpdate.hejilist then
					break
				end
			end
			if #FrameOnUpdate.hejilist>0 then
				if #FrameOnUpdate.konggelist<#FrameOnUpdate.hejilist then
					PIG_print("背包剩余空间不足，无法全部卸下");
				end
				for inv = 1, #FrameOnUpdate.konggelist do
					local isLocked2 = IsInventoryItemLocked(FrameOnUpdate.hejilist[inv])
					if not isLocked2 then
						PickupInventoryItem(FrameOnUpdate.hejilist[inv])
						PickupContainerItem(FrameOnUpdate.konggelist[inv][1], FrameOnUpdate.konggelist[inv][2])
					end
				end
			end
			AutoEquipList:Hide()
		end
	end);
end