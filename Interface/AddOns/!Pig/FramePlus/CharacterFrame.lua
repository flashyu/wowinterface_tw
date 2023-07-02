local _, addonTable = ...;
local _, _, _, tocversion = GetBuildInfo()
local Create=addonTable.Create
local PIGFrame=Create.PIGFrame
local PIGFontString=Create.PIGFontString
----
local FramePlusfun=addonTable.FramePlusfun
local InvSlot=addonTable.Data.InvSlot
--============================================
function FramePlusfun.Character_xiuliG()--修理费用
	if not PIGA["FramePlus"]["Character_xiuliG"] then return end
	if PaperDollFrame.xiuli then return end
	PaperDollFrame.xiuli = CreateFrame("Frame",nil,PaperDollFrame);  
	PaperDollFrame.xiuli:SetSize(110,20);
	if tocversion<40000 then
		PaperDollFrame.xiuli:SetPoint("LEFT", PaperDollFrame, "LEFT", 66, 0);
	else
		PaperDollFrame.xiuli:SetPoint("BOTTOMLEFT", PaperDollFrame, "BOTTOMLEFT", 10, 10);
	end
	PaperDollFrame.xiuli:SetFrameLevel(6)
	PaperDollFrame.xiuli.ICON = PaperDollFrame:CreateTexture(nil, "OVERLAY");
	PaperDollFrame.xiuli.ICON:SetTexture("interface/minimap/tracking/repair.blp");
	PaperDollFrame.xiuli.ICON:SetSize(20,20);
	PaperDollFrame.xiuli.ICON:SetPoint("LEFT", PaperDollFrame.xiuli, "LEFT", 0, 0);
	PaperDollFrame.xiuli.G = PIGFontString(PaperDollFrame.xiuli,{"LEFT", PaperDollFrame.xiuli.ICON, "RIGHT", 0, 0},nil,nil,13)
	local PIGtooltip = CreateFrame("GameTooltip")
	--PIGtooltip:SetOwner(WorldFrame, "ANCHOR_NONE")
	local naijiubuweiID = {1,3,5,6,7,8,9,10,16,17,18}
	PaperDollFrame:HookScript("OnShow",function (self,event)
		PaperDollFrame.repaircost=0	
		if tocversion<100000 then 
			for id=1,#naijiubuweiID do
				local hasItem,_,cost = PIGtooltip:SetInventoryItem("player", naijiubuweiID[id])
				PaperDollFrame.repaircost=PaperDollFrame.repaircost+cost
			end
		else
			for id=1,#naijiubuweiID do
				local dataxxx = C_TooltipInfo.GetInventoryItem("player", naijiubuweiID[id])
				if dataxxx and dataxxx.repairCost then
					PaperDollFrame.repaircost=PaperDollFrame.repaircost+dataxxx.repairCost

				end
			end
		end
		PaperDollFrame.xiuli.G:SetText(GetCoinTextureString(PaperDollFrame.repaircost))
	end)
end
---耐久==================
local Zihaodaxiao,iwww,ihhh,kuandu = 14,33,15,160
local XWidth, XHeight =CharacterHeadSlot:GetWidth(),CharacterHeadSlot:GetHeight()
-----------------------
local function Update_Level_V(framef,unit, ZBID)
	framef.ZLV:SetText("");
	local itemLink = GetInventoryItemLink(unit, ZBID)
	if itemLink then
		local quality = GetInventoryItemQuality(unit, ZBID)
		if quality then
			local effectiveILvl = GetDetailedItemLevelInfo(itemLink)
			framef.ZLV:SetText(effectiveILvl);
			local r, g, b = GetItemQualityColor(quality)
			framef.ZLV:SetTextColor(r, g, b, 1);
		end
	end
end
local function Update_ranse_V(framef,unit,ZBID)
	framef.ranse:Hide()
	local quality = GetInventoryItemQuality(unit, ZBID)
    if quality and quality>1 then
        local r, g, b = GetItemQualityColor(quality);
        framef.ranse:SetVertexColor(r, g, b);
		framef.ranse:Show()
	end
end
local function Update_ItemList_V(fjik,duixiang,tiaozui)
	local newmaxWWWW = kuandu
	local zhuangdengindo = {["allleve"]=0,["slots"]=16}
	for i = 1, #InvSlot["ID"] do
		local fujikk = _G[fjik..InvSlot["ID"][i]]
		local itemLink=GetInventoryItemLink(duixiang, InvSlot["ID"][i])
		if InvSlot["ID"][i]==16 then
			zhuangdengindo.zhushou=itemLink
		end
		if InvSlot["ID"][i]==17 then
			zhuangdengindo.fushou=itemLink
		end
		if itemLink then
			fujikk.itemlink:SetText(itemLink)
			fujikk.itembuwei:SetTextColor(0, 1, 1, 0.8);
			fujikk.itembuweiF:SetBackdropBorderColor(0, 1, 1, 0.5)
			local effectiveILvl = GetDetailedItemLevelInfo(itemLink)
			zhuangdengindo.allleve=zhuangdengindo.allleve+effectiveILvl
			local width = fujikk.itemlink:GetStringWidth()+44
			if width>newmaxWWWW then
				newmaxWWWW = width
			end	
		else
			fujikk.itembuwei:SetTextColor(0.5, 0.5, 0.5,0.8);
			fujikk.itembuweiF:SetBackdropBorderColor(0.5, 0.5, 0.5,0.5)
			fujikk.itemlink:SetText(" ")
		end
	end
	tiaozui.ZBLsit:SetWidth(newmaxWWWW)
	if GetAverageItemLevel then
		local avgItemLevel, avgItemLevelEquipped, avgItemLevelPvP = GetAverageItemLevel();
		tiaozui.ZBLsit.pingjunLV_V:SetText(string.format("%.2f",avgItemLevelEquipped))
	else
		if zhuangdengindo.zhushou and zhuangdengindo.fushou then
			zhuangdengindo.slots=17
		elseif zhuangdengindo.zhushou then
			local itemID, itemType, itemSubType, itemEquipLoc = GetItemInfoInstant(zhuangdengindo.zhushou) 
			if itemEquipLoc~="INVTYPE_2HWEAPON" then
				zhuangdengindo.slots=17
			end
		elseif zhuangdengindo.fushou then
			zhuangdengindo.slots=17
		end
		local pingjunLvl = zhuangdengindo.allleve/zhuangdengindo.slots
		tiaozui.ZBLsit.pingjunLV_V:SetText(string.format("%.2f",pingjunLvl))
	end
end

local function Update_Data()--刷新自身
	if PIGA["FramePlus"]["Character_naijiu"] then
		for inv = 1, #InvSlot["ID"] do
			if InvSlot["Name"][InvSlot["ID"][inv]][4] then
				local Frameu=_G["Character"..InvSlot["Name"][InvSlot["ID"][inv]][3].."Slot"].naijiuV
				Frameu:SetText("");
				local current, maximum = GetInventoryItemDurability(InvSlot["ID"][inv]);
				if maximum then
					local naijiubaifenbi=floor(current/maximum*100);
					Frameu:SetText(naijiubaifenbi.."%");
					if naijiubaifenbi>79 then
						Frameu:SetTextColor(0,1,0, 1);
					elseif  naijiubaifenbi>59 then
						Frameu:SetTextColor(1,215/255,0, 1);
					elseif  naijiubaifenbi>39 then
						Frameu:SetTextColor(1,140/255,0, 1);
					elseif  naijiubaifenbi>19 then
						Frameu:SetTextColor(1,69/255,0, 1);
					else
						Frameu:SetTextColor(1,0,0, 1);
					end
				end
			end
		end
	end
	if PIGA["FramePlus"]["Character_ItemLevel"] then
		for inv = 1, #InvSlot["ID"] do
			if InvSlot["ID"][inv]~=0 and InvSlot["ID"][inv]~=4 and InvSlot["ID"][inv]~=19 then
				local framef=_G["Character"..InvSlot["Name"][InvSlot["ID"][inv]][3].."Slot"]
				Update_Level_V(framef,"player", InvSlot["ID"][inv])
			end
		end
	end
	if PIGA["FramePlus"]["Character_ItemColor"] then
		for inv = 1, #InvSlot["ID"] do
			local framef=_G["Character"..InvSlot["Name"][InvSlot["ID"][inv]][3].."Slot"]
			Update_ranse_V(framef,"player",InvSlot["ID"][inv])
		end
	end
	if PIGA["FramePlus"]["Character_ItemList"] then
		Update_ItemList_V("CZBLsit","player",PaperDollFrame)
	end
end

local function Update_Data_Inspect()--刷新观察对象
	if PIGA["FramePlus"]["Character_ItemLevel"] then
		for inv = 1, #InvSlot["ID"] do
			if InvSlot["ID"][inv]~=0 and InvSlot["ID"][inv]~=4 and InvSlot["ID"][inv]~=19 then
				local framef=_G["Inspect"..InvSlot["Name"][InvSlot["ID"][inv]][3].."Slot"]
				Update_Level_V(framef,"target", InvSlot["ID"][inv])
			end
		end
	end
	if PIGA["FramePlus"]["Character_ItemColor"] then
		for inv = 1, #InvSlot["ID"] do
			local framef=_G["Inspect"..InvSlot["Name"][InvSlot["ID"][inv]][3].."Slot"]
			if framef then
				Update_ranse_V(framef,"target",InvSlot["ID"][inv])
			end
		end
	end
	if PIGA["FramePlus"]["Character_ItemList"] then
		Update_ItemList_V("CZBLsitInspect","target",InspectPaperDollFrame)
	end
end
local function add_ItemListFF(fujik,UIname)
	if not fujik.ZBLsit then
		fujik.ZBLsit = PIGFrame(fujik);
		if GearManagerDialog then GearManagerDialog:SetFrameLevel(10) end
		fujik.ZBLsit:PIGSetBackdrop();
		fujik.ZBLsit:SetWidth(kuandu);
		if tocversion<100000 then
			if ElvUI then
				fujik.ZBLsit:SetPoint("TOPLEFT", fujik, "TOPRIGHT",-31,-12);
				fujik.ZBLsit:SetPoint("BOTTOMLEFT", fujik, "BOTTOMRIGHT",0,75);
			elseif NDui then
				if tocversion<20000 then
					fujik.ZBLsit:SetPoint("TOPLEFT", fujik, "TOPRIGHT",-33,-15);
					fujik.ZBLsit:SetPoint("BOTTOMLEFT", fujik, "BOTTOMRIGHT",0,73);
				else
					fujik.ZBLsit:SetPoint("TOPLEFT", fujik, "TOPRIGHT",170,-15);
					fujik.ZBLsit:SetPoint("BOTTOMLEFT", fujik, "BOTTOMRIGHT",0,73);
				end
			else
				fujik.ZBLsit:SetPoint("TOPLEFT", fujik, "TOPRIGHT",-31,-15);
				fujik.ZBLsit:SetPoint("BOTTOMLEFT", fujik, "BOTTOMRIGHT",0,75);
			end
		else
			if ElvUI or NDui then
				fujik.ZBLsit:SetPoint("TOPLEFT", fujik, "TOPRIGHT",1,0);
				fujik.ZBLsit:SetPoint("BOTTOMLEFT", fujik, "BOTTOMRIGHT",0,0);
			else
				fujik.ZBLsit:SetPoint("TOPLEFT", fujik, "TOPRIGHT",2,-3);
				fujik.ZBLsit:SetPoint("BOTTOMLEFT", fujik, "BOTTOMRIGHT",0,3);
			end
		end
		if fujik==PaperDollFrame then
			if PaperDollFrame.shuxing then
				PaperDollFrame.shuxing:SetPoint("TOPLEFT", PaperDollFrame.ZBLsit, "TOPRIGHT",1,0);
				PaperDollFrame.shuxing:SetPoint("BOTTOMLEFT", PaperDollFrame.ZBLsit, "BOTTOMRIGHT",0,0);
			end
		end
		-- 
		fujik.ZBLsit.pingjunLV = PIGFontString(fujik.ZBLsit,{"TOPLEFT",fujik.ZBLsit,"TOPLEFT",3,-6},"平均装等:",nil,Zihaodaxiao+1);
		fujik.ZBLsit.pingjunLV:SetTextColor(0,1,1,0.8);
		fujik.ZBLsit.pingjunLV_V = PIGFontString(fujik.ZBLsit,{"LEFT",fujik.ZBLsit.pingjunLV,"RIGHT",4,0}," ",nil,Zihaodaxiao+2);
		for i=1,#InvSlot["ID"] do
			local clsit = PIGFrame(fujik.ZBLsit,nil,{4,ihhh},UIname..InvSlot["ID"][i]);
			if i==1 then
				clsit:SetPoint("TOPLEFT",fujik.ZBLsit,"TOPLEFT",36,-30);
			else
				clsit:SetPoint("TOPLEFT",_G[UIname..(InvSlot["ID"][i-1])],"BOTTOMLEFT",0,-8);
			end
			clsit.itembuweiF = PIGFrame(clsit,{"RIGHT",clsit,"LEFT",0,0},{iwww,ihhh+2});
			clsit.itembuweiF:PIGSetBackdrop(0,nil,nil,{1,1,1})
			clsit.itembuwei = PIGFontString(clsit.itembuweiF,{"CENTER",0,0.6},InvSlot["Name"][InvSlot["ID"][i]][2],nil,Zihaodaxiao-1)
			clsit.itemlink = PIGFontString(clsit,{"LEFT",clsit,"RIGHT",0,0})
		end
		-- fujik.ZBLsit.Taozhuang = PIGFontString(fujik.ZBLsit,{"TOPLEFT",_G[UIname..InvSlot["ID"][#InvSlot["ID"]]].itembuwei,"BOTTOMLEFT",0,-10},"套装：");
		-- fujik.ZBLsit.Taozhuang:SetTextColor(0, 1, 1, 0.8);
	end
end
---观察染色
if not InspectTalentFrameSpentPoints then InspectTalentFrameSpentPoints = CreateFrame("Frame") end
local function ADD_Inspect()
	if PIGA["FramePlus"]["Character_ItemLevel"] then
		for inv = 1, #InvSlot["ID"] do
			local framef=_G["Inspect"..InvSlot["Name"][InvSlot["ID"][inv]][3].."Slot"]
			if not framef.ZLV then
				framef.ZLV = PIGFontString(framef,{"TOPRIGHT", framef, "TOPRIGHT", -1, -1},nil,"OUTLINE",15)
				framef.ZLV:SetDrawLayer("OVERLAY", 7)
			end
		end
	end 
	if PIGA["FramePlus"]["Character_ItemColor"] then
		for inv = 1, #InvSlot["ID"] do
			local framef=_G["Inspect"..InvSlot["Name"][InvSlot["ID"][inv]][3].."Slot"]
			if not framef.ranse then
			    framef.ranse = framef:CreateTexture(nil, "OVERLAY");
			    framef.ranse:SetTexture("Interface/Buttons/UI-ActionButton-Border");
			    framef.ranse:SetBlendMode("ADD");
			    framef.ranse:SetSize(XWidth*1.8, XHeight*1.8);
			    framef.ranse:SetPoint("CENTER", framef, "CENTER", 0, 0);
			    framef.ranse:Hide()
			end
		end
	end
	if PIGA["FramePlus"]["Character_ItemList"] then
		add_ItemListFF(InspectPaperDollFrame,"CZBLsitInspect")
	end
	PaperDollFrame:UnregisterEvent("ADDON_LOADED");
	C_Timer.After(0.4,Update_Data_Inspect)
end
function FramePlusfun.Character_ADD()
	if PIGA["FramePlus"]["Character_naijiu"] then
		for inv = 1, #InvSlot["ID"] do
			local framef=_G["Character"..InvSlot["Name"][InvSlot["ID"][inv]][3].."Slot"]
			if not framef.naijiuV then
				framef.naijiuV = PIGFontString(framef,{"BOTTOMLEFT", framef, "BOTTOMLEFT", 1, 1},nil,"OUTLINE",13)
				framef.naijiuV:SetDrawLayer("OVERLAY", 7)
			end
		end
	end
	if PIGA["FramePlus"]["Character_ItemLevel"] then
		for inv = 1, #InvSlot["ID"] do
			local framef=_G["Character"..InvSlot["Name"][InvSlot["ID"][inv]][3].."Slot"]
			if not framef.ZLV then
				framef.ZLV = PIGFontString(framef,{"TOPRIGHT", framef, "TOPRIGHT", -1, -1},nil,"OUTLINE",15)
				framef.ZLV:SetDrawLayer("OVERLAY", 7)
			end
		end
	end
	if PIGA["FramePlus"]["Character_ItemColor"] then
		for inv = 1, #InvSlot["ID"] do
			local framef=_G["Character"..InvSlot["Name"][InvSlot["ID"][inv]][3].."Slot"]
			if not framef.ranse then
			    framef.ranse = framef:CreateTexture(nil, "OVERLAY");
			    framef.ranse:SetTexture("Interface/Buttons/UI-ActionButton-Border");
			    framef.ranse:SetBlendMode("ADD");
			    if InvSlot["ID"][inv]==0 then
			    	framef.ranse:SetSize(XWidth*1.4, XHeight*1.4);
			    else
			    	framef.ranse:SetSize(XWidth*1.8, XHeight*1.8);
			    end
			    framef.ranse:SetPoint("CENTER", framef, "CENTER", 0, 0);
			    framef.ranse:Hide()
			   end
		end
	end
	if PIGA["FramePlus"]["Character_ItemList"] then
		add_ItemListFF(PaperDollFrame,"CZBLsit")
	end
	------
	if IsAddOnLoaded("Blizzard_InspectUI") then
		ADD_Inspect()
	else
		if PIGA["FramePlus"]["Character_ItemLevel"] or PIGA["FramePlus"]["Character_ItemColor"] or PIGA["FramePlus"]["Character_ItemList"] then
			PaperDollFrame:RegisterEvent("ADDON_LOADED")
			PaperDollFrame:RegisterEvent("INSPECT_READY");
		end
	end
	PaperDollFrame:HookScript("OnShow",function (self,event)
		Update_Data()
	end)
end
----------
PaperDollFrame:RegisterEvent("UNIT_INVENTORY_CHANGED")
PaperDollFrame:HookScript("OnEvent", function(self,event,arg1)
	--print(event)
	if event=="ADDON_LOADED" and arg1=="Blizzard_InspectUI" then
		ADD_Inspect()
	end
	if IsAddOnLoaded("Blizzard_InspectUI") then
		if event=="INSPECT_READY" or event=="UNIT_INVENTORY_CHANGED" then
			--if InspectFrame:IsShown() then
				Update_Data_Inspect()
			--end
		end
	end
	if event=="PLAYER_EQUIPMENT_CHANGED" or event=="UNIT_INVENTORY_CHANGED" or event=="PLAYER_AVG_ITEM_LEVEL_UPDATE" then
		if PaperDollFrame:IsVisible() then
			Update_Data()
		end
	end
end);

---命中说明
function FramePlusfun.Character_Mingzhong()
	if not PIGA["FramePlus"]["Character_Mingzhong"] then return end
	if PaperDollFrame.MingZhong then return end
	--物理
	PaperDollFrame.MingZhong = CreateFrame("Button",nil,PaperDollFrame, "UIPanelInfoButton");  
	PaperDollFrame.MingZhong:SetSize(16,16);
	PaperDollFrame.MingZhong:SetPoint("RIGHT", PaperDollFrame, "RIGHT", -90, 0);
	PaperDollFrame.MingZhong:SetFrameLevel(6)
	PaperDollFrame.MingZhong.texture:SetPoint("BOTTOMRIGHT", PaperDollFrame.MingZhong, "BOTTOMRIGHT", 0, 0);

	PaperDollFrame.MingZhong.Wl = PIGFrame(PaperDollFrame.MingZhong);
	PaperDollFrame.MingZhong.Wl:PIGSetBackdrop(1);
	PaperDollFrame.MingZhong.Wl:SetWidth(200);
	if tocversion<40000 then
		PaperDollFrame.MingZhong.Wl:SetPoint("TOPLEFT", PaperDollFrame, "TOPRIGHT",-31,-15);
		PaperDollFrame.MingZhong.Wl:SetPoint("BOTTOMLEFT", PaperDollFrame, "BOTTOMRIGHT",0,75);
	else
		PaperDollFrame.MingZhong.Wl:SetPoint("TOPLEFT", PaperDollFrame, "TOPRIGHT",1,-2);
		PaperDollFrame.MingZhong.Wl:SetPoint("BOTTOMLEFT", PaperDollFrame, "BOTTOMRIGHT",0,3);
	end
	PaperDollFrame.MingZhong.Wl:Hide()

	PaperDollFrame.MingZhong.Wl.title1 = PIGFontString(PaperDollFrame.MingZhong.Wl,{"TOPLEFT", PaperDollFrame.MingZhong.Wl, "TOPLEFT", 4, -6},"关于物理命中");
	local mingzhongshuomingTXT
	if tocversion<20000 then
		mingzhongshuomingTXT=
		"同级:基础命中率95%(5%)\n高1级:基础命中率94.5%(6%)\n高2级:基础命中率94%(6%)\n高3级:基础命中率92%(8%)\n"..
		"双持惩罚:基础命中率-19%\n\n"..
		"|cffFFD700例外情况：|r\n"..
		"|cffFF8C00当<目标的防御等级>减去<玩家武器技能>大于10,装备或天赋上所提供的命中会被无视1%。这将导致在对抗骷髅BOSS时需要额外1%的命中，即需要9%的命中而不是8%.|r\n"..
		"武器技能和防御等级计算公式当前级别*5；60级角色对抗骷髅BOSS情况:5*63-5*60>10\n\n"..
		"|cffFFD700种族武器专精：|r\n"..
		"人类的剑/双手剑/锤/双手锤与兽人的斧/双手斧武器技能提高5点，会产生效果："..
		"会使武器技能和BOSS防御等级差值不大于10，不需要额外1%命中，再加上5点武器技能本身提供的1%命中，此时你将只需要6%命中即可。但武器技能的作用还不止于此，也会大量降低你的普攻偏斜。"
	elseif tocversion<30000 then
		mingzhongshuomingTXT=
		"同级:基础命中率95%(5%)\n高1级:基础命中率93.8%(7%)\n高2级:基础命中率92.8%(8%)\n高3级:基础命中率91.4%(9%)\n"..
		"双持惩罚:基础命中率减去19%\n"..
		"|cffFFD700命中等级：|r\n"..
		"|cffFF8C00TBC1%命中≈15.8命中等级。|r\n"..
		"9%命中：9*15.8≈143命中等级\n"..
		"双持职业\n需要28*15.8≈443点命中等级\n"..
		"|cffFFD700职业差异：|r\n"..
		"猎人，武器战以及猫德这些DPS职业都只需要9%的命中，就可以保证技能和平A全部命中\n"..
		"盗贼/狂暴战/增强萨,天赋自带5%/5%/6%的命中，双持的时候需要23%/23%/22%的命中\n"..
		"不过狂暴战/增强萨达到9%命中之后，暴击收益更高，只需堆到9%保证技能命中后尽量堆暴击，盗贼因为天赋回能尽量堆满命中\n"..
		"坦克:达到9%技能全命中后优先考虑生存属性"
	elseif tocversion<40000 then
		mingzhongshuomingTXT=
		"同级:基础命中率95%(5%)\n高1级:基础命中率93.8%(7%)\n高2级:基础命中率92.8%(8%)\n高3级:基础命中率91.4%(9%)\n"..
		"双持惩罚:基础命中率减去19%\n"..
		"|cffFFD700命中等级：|r\n"..
		"|cffFF8C00WLK1%命中≈32.8命中等级。|r\n"..
		"9%命中：9*32.8≈296命中等级\n"..
		"双持职业\n需要28*32.8≈919点命中等级\n"..
		"|cffFFD700职业差异：|r\n"..
		"猎人，武器战以及猫德这些DPS职业都只需要9%的命中，就可以保证技能和平A全部命中\n"..
		"盗贼/狂暴战/增强萨,天赋自带5%/5%/6%的命中，双持的时候需要23%/23%/22%的命中\n"..
		"不过狂暴战/增强萨达到9%命中之后，暴击收益更高，只需堆到9%保证技能命中后尽量堆暴击，盗贼因为天赋回能尽量堆满命中\n"..
		"坦克:达到9%技能全命中后优先考虑生存属性"
	end
	PaperDollFrame.MingZhong.Wl.title2 = PIGFontString(PaperDollFrame.MingZhong.Wl,{"TOPLEFT", PaperDollFrame.MingZhong.Wl.title1, "BOTTOMLEFT", 0, 0},mingzhongshuomingTXT,nil,13);
	PaperDollFrame.MingZhong.Wl.title2:SetWidth(192);
	PaperDollFrame.MingZhong.Wl.title2:SetJustifyH("LEFT");

	PaperDollFrame.MingZhong.Wl.title3 = PIGFontString(PaperDollFrame.MingZhong.Wl,{"TOPLEFT", PaperDollFrame.MingZhong.Wl.title2, "BOTTOMLEFT", 0, -6},"|cff00ff00骷髅BOSS默认高玩家3级|r",nil,13)

	--法术
	PaperDollFrame.MingZhong.Fs = PIGFrame(PaperDollFrame.MingZhong);
	PaperDollFrame.MingZhong.Fs:PIGSetBackdrop(1);
	PaperDollFrame.MingZhong.Fs:SetWidth(170);
	PaperDollFrame.MingZhong.Fs:SetPoint("TOPLEFT", PaperDollFrame.MingZhong.Wl, "TOPRIGHT",1,0);
	PaperDollFrame.MingZhong.Fs:SetPoint("BOTTOMLEFT", PaperDollFrame.MingZhong.Wl, "BOTTOMRIGHT",0,0);
	PaperDollFrame.MingZhong.Fs:Hide()

	PaperDollFrame.MingZhong.Fs.title1 = PIGFontString(PaperDollFrame.MingZhong.Fs,{"TOPLEFT", PaperDollFrame.MingZhong.Fs, "TOPLEFT", 6, -6},"关于法系命中(抵抗)");
	local FSmingzhongshuomingTXT
	if tocversion<20000 then
		FSmingzhongshuomingTXT=
		"|cffFF8C00注意:法术命中上限是99%|r\n同级:基础命中率96%(3%)\n高1级:基础命中率95%(4%)\n高2级:基础命中率94%(5%)\n"..
		"高3级:基础命中率83%(16%)\n"
	elseif tocversion<30000 then
		FSmingzhongshuomingTXT=
		"|cffFF8C00注意:法术命中上限是99%|r\n同级:基础命中率96%(3%)\n高1级:基础命中率95%(4%)\n高2级:基础命中率94%(5%)\n"..
		"高3级:基础命中率83%(16%)\n"..
		"TBC法系命中率\n1%≈12.6法系命中等级"
	elseif tocversion<40000 then
		FSmingzhongshuomingTXT=
		"|cffFF8C00注意:法术命中上限是99%|r\n同级:基础命中率96%(3%)\n高1级:基础命中率95%(4%)\n高2级:基础命中率94%(5%)\n"..
		"高3级:基础命中率83%(16%)\n"..
		"WLK法系命中率\n1%≈26.2法系命中等级"
	end
	PaperDollFrame.MingZhong.Fs.title10 = PIGFontString(PaperDollFrame.MingZhong.Fs,{"TOPLEFT", PaperDollFrame.MingZhong.Fs.title1, "BOTTOMLEFT", 0, -4},FSmingzhongshuomingTXT,nil,13);
	PaperDollFrame.MingZhong.Fs.title10:SetJustifyH("LEFT");

	PaperDollFrame.MingZhong.Fs.title3 = PIGFontString(PaperDollFrame.MingZhong.Fs,{"TOPLEFT", PaperDollFrame.MingZhong.Fs.title10, "BOTTOMLEFT", 0, -10},"|cff00ff00骷髅BOSS默认高玩家3级|r",nil,13);

	PaperDollFrame.MingZhong:SetScript("OnEnter", function() PaperDollFrame.MingZhong.Wl:Show() PaperDollFrame.MingZhong.Fs:Show() end );
	PaperDollFrame.MingZhong:SetScript("OnLeave", function() PaperDollFrame.MingZhong.Wl:Hide() PaperDollFrame.MingZhong.Fs:Hide() end );
end
---人物C界面右边显示属性
local function ADD_FontString(fuji,Text,zihao,Point,Color)
	local Color=Color or {0.53,0.8,0.98}
	local faxx = PIGFontString(fuji,{Point[1], Point[2], Point[3], Point[4], Point[5]},Text,nil,zihao)
	faxx:SetTextColor(Color[1],Color[2],Color[3], 0.9);
	return faxx
end
function FramePlusfun.Character_Shuxing()
	if not PIGA["FramePlus"]["Character_Shuxing"] then return end
	if PaperDollFrame.shuxing then return end
	UIPanelWindows["CharacterFrame"].width = 504
	PaperDollFrame.shuxing = PIGFrame(PaperDollFrame);
	PaperDollFrame.shuxing:PIGSetBackdrop();
	PaperDollFrame.shuxing:SetWidth(150);
	if PaperDollFrame.ZBLsit then
		PaperDollFrame.shuxing:SetPoint("TOPLEFT", PaperDollFrame.ZBLsit, "TOPRIGHT",1,0);
		PaperDollFrame.shuxing:SetPoint("BOTTOMLEFT", PaperDollFrame.ZBLsit, "BOTTOMRIGHT",0,0);
	else
		PaperDollFrame.shuxing:SetPoint("TOPLEFT", PaperDollFrame, "TOPRIGHT",-31,-15);
		PaperDollFrame.shuxing:SetPoint("BOTTOMLEFT", PaperDollFrame, "BOTTOMRIGHT",0,75);
	end
	---近战---------------------
	local fuji = PaperDollFrame.shuxing
	local zihaoid = 12.4
	fuji.ad=ADD_FontString(fuji,"近战属性",zihaoid+2.6,{"TOPLEFT",fuji,"TOPLEFT",4,-6},{1,1,0})
	fuji.ad1=ADD_FontString(fuji,"近战命中率:",zihaoid,{"TOPLEFT",fuji.ad,"BOTTOMLEFT",0,-2})
	fuji.ad1V=ADD_FontString(fuji,"",zihaoid,{"LEFT",fuji.ad1,"RIGHT",2,0},{1,1,1})
	fuji.ad2=ADD_FontString(fuji,"近战暴击率:",zihaoid,{"TOPLEFT",fuji.ad1,"BOTTOMLEFT",0,-2})
	fuji.ad2V=ADD_FontString(fuji,"",zihaoid,{"LEFT",fuji.ad2,"RIGHT",2,0},{1,1,1})
	---远程---------------------
	fuji.adyc=ADD_FontString(fuji,"远程属性",zihaoid+2.6,{"TOPLEFT",fuji.ad2,"BOTTOMLEFT",0,-8},{0,1,0})
	fuji.adyc1=ADD_FontString(fuji,"远程命中率:",zihaoid,{"TOPLEFT",fuji.adyc,"BOTTOMLEFT",0,-2})
	fuji.adyc1V=ADD_FontString(fuji,"",zihaoid,{"LEFT",fuji.adyc1,"RIGHT",2,0},{1,1,1})
	fuji.adyc2=ADD_FontString(fuji,"远程暴击率:",zihaoid,{"TOPLEFT",fuji.adyc1,"BOTTOMLEFT",0,-2})
	fuji.adyc2V=ADD_FontString(fuji,"",zihaoid,{"LEFT",fuji.adyc2,"RIGHT",2,0},{1,1,1})
	---法系------------------
	fuji.ap=ADD_FontString(fuji,"法系属性",zihaoid+2.6,{"TOPLEFT",fuji.adyc2,"BOTTOMLEFT",0,-8},{0,1,1})
	fuji.ap1=ADD_FontString(fuji,"法术命中率:",zihaoid,{"TOPLEFT",fuji.ap,"BOTTOMLEFT",0,-2})
	fuji.ap1V=ADD_FontString(fuji,"",zihaoid,{"LEFT",fuji.ap1,"RIGHT",2,0},{1,1,1})
	fuji.ap2=ADD_FontString(fuji,"法系暴击率:",zihaoid,{"TOPLEFT",fuji.ap1,"BOTTOMLEFT",0,-2})
	fuji.ap2V=ADD_FontString(fuji,"",zihaoid,{"LEFT",fuji.ap2,"RIGHT",2,0},{1,1,1})
	fuji.ap3=ADD_FontString(fuji,"5秒回蓝(脱战):",zihaoid,{"TOPLEFT",fuji.ap2,"BOTTOMLEFT",0,-2})
	fuji.ap3V=ADD_FontString(fuji,"",zihaoid,{"LEFT",fuji.ap3,"RIGHT",2,0},{1,1,1})
	fuji.ap4=ADD_FontString(fuji,"5秒回蓝(战斗):",zihaoid,{"TOPLEFT",fuji.ap3,"BOTTOMLEFT",0,-2})
	fuji.ap4V=ADD_FontString(fuji,"",zihaoid,{"LEFT",fuji.ap4,"RIGHT",2,0},{1,1,1})
	---伤害加成------------------
	fuji.jc=ADD_FontString(fuji,"伤害加成",zihaoid+2.6,{"TOPLEFT",fuji.ap4,"BOTTOMLEFT",0,-8},{1,0.27,0})
	fuji.jc1=ADD_FontString(fuji,"物伤加成:",zihaoid,{"TOPLEFT",fuji.jc,"BOTTOMLEFT",0,-2})
	fuji.jc1V=ADD_FontString(fuji,"",zihaoid,{"LEFT",fuji.jc1,"RIGHT",2,0},{1,1,1})
	fuji.jc2=ADD_FontString(fuji,"治疗加成:",zihaoid,{"TOPLEFT",fuji.jc1,"BOTTOMLEFT",0,-2})
	fuji.jc2V=ADD_FontString(fuji,"",zihaoid,{"LEFT",fuji.jc2,"RIGHT",2,0},{1,1,1})
	fuji.jc3=ADD_FontString(fuji,"法伤加成(冰霜):",zihaoid,{"TOPLEFT",fuji.jc2,"BOTTOMLEFT",0,-2})
	fuji.jc3V=ADD_FontString(fuji,"",zihaoid,{"LEFT",fuji.jc3,"RIGHT",2,0},{1,1,1})
	fuji.jc4=ADD_FontString(fuji,"法伤加成(火焰):",zihaoid,{"TOPLEFT",fuji.jc3,"BOTTOMLEFT",0,-2})
	fuji.jc4V=ADD_FontString(fuji,"",zihaoid,{"LEFT",fuji.jc4,"RIGHT",2,0},{1,1,1})
	fuji.jc5=ADD_FontString(fuji,"法伤加成(奥术):",zihaoid,{"TOPLEFT",fuji.jc4,"BOTTOMLEFT",0,-2})
	fuji.jc5V=ADD_FontString(fuji,"",zihaoid,{"LEFT",fuji.jc5,"RIGHT",2,0},{1,1,1})
	fuji.jc6=ADD_FontString(fuji,"法伤加成(暗影):",zihaoid,{"TOPLEFT",fuji.jc5,"BOTTOMLEFT",0,-2})
	fuji.jc6V=ADD_FontString(fuji,"",zihaoid,{"LEFT",fuji.jc6,"RIGHT",2,0},{1,1,1})
	fuji.jc7=ADD_FontString(fuji,"法伤加成(自然):",zihaoid,{"TOPLEFT",fuji.jc6,"BOTTOMLEFT",0,-2})
	fuji.jc7V=ADD_FontString(fuji,"",zihaoid,{"LEFT",fuji.jc7,"RIGHT",2,0},{1,1,1})
	fuji.jc8=ADD_FontString(fuji,"法伤加成(神圣):",zihaoid,{"TOPLEFT",fuji.jc7,"BOTTOMLEFT",0,-2})
	fuji.jc8V=ADD_FontString(fuji,"",zihaoid,{"LEFT",fuji.jc8,"RIGHT",2,0},{1,1,1})
	---防御---------------------
	fuji.fy=ADD_FontString(fuji,"防御属性",zihaoid+2.6,{"TOPLEFT",fuji.jc8,"BOTTOMLEFT",0,-8},{1,0.84,0})
	fuji.fy1=ADD_FontString(fuji,"闪避几率:",zihaoid,{"TOPLEFT",fuji.fy,"BOTTOMLEFT",0,-2})
	fuji.fy1V=ADD_FontString(fuji,"",zihaoid,{"LEFT",fuji.fy1,"RIGHT",2,0},{1,1,1})
	fuji.fy2=ADD_FontString(fuji,"招架几率:",zihaoid,{"TOPLEFT",fuji.fy1,"BOTTOMLEFT",0,-2})
	fuji.fy2V=ADD_FontString(fuji,"",zihaoid,{"LEFT",fuji.fy2,"RIGHT",2,0},{1,1,1})
	fuji.fy3=ADD_FontString(fuji,"格挡几率:",zihaoid,{"TOPLEFT",fuji.fy2,"BOTTOMLEFT",0,-2})
	fuji.fy3V=ADD_FontString(fuji,"",zihaoid,{"LEFT",fuji.fy3,"RIGHT",2,0},{1,1,1})
	--
	fuji.shuoming=ADD_FontString(fuji,"命中统计不包含天赋加成",zihaoid-0.4,{"TOPLEFT",fuji.fy3,"BOTTOMLEFT",0,-8},{1,0.9,0})
	-----------
	local function Round(num)    
	    local mult = 10^(2);
	    return math.floor(num * mult + 0.5) / mult;
	end
	local function PaperDollFrameUP()
		if PaperDollFrame:IsVisible() then
			fuji.ad1V:SetText(GetHitModifier().."%")
			fuji.ad2V:SetText(Round(GetCritChance()).."%")
			fuji.adyc1V:SetText(GetHitModifier().."%")
			fuji.adyc2V:SetText(Round(GetRangedCritChance()).."%")
			fuji.ap1V:SetText(GetSpellHitModifier().."%")
			fuji.ap2V:SetText(Round(GetSpellCritChance(1)).."%")
			local base, casting = GetManaRegen()--精神2秒回蓝
			fuji.ap3V:SetText(Round(base*5))
			fuji.ap4V:SetText(Round(casting*5))
			--
			fuji.jc1V:SetText(GetSpellBonusDamage(1))
			fuji.jc2V:SetText(GetSpellBonusHealing())
			fuji.jc3V:SetText(GetSpellBonusDamage(5))
			fuji.jc4V:SetText(GetSpellBonusDamage(3))
			fuji.jc5V:SetText(GetSpellBonusDamage(7))
			fuji.jc6V:SetText(GetSpellBonusDamage(6))
			fuji.jc7V:SetText(GetSpellBonusDamage(4))
			fuji.jc8V:SetText(GetSpellBonusDamage(2))
			---
			fuji.fy1V:SetText(Round(GetDodgeChance()).."%")
			fuji.fy2V:SetText(Round(GetBlockChance()).."%")
			fuji.fy3V:SetText(Round(GetParryChance()).."%")
		end
	end;
	PaperDollFrameUP()
	PaperDollFrame:RegisterEvent("PLAYER_EQUIPMENT_CHANGED");
	PaperDollFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
	PaperDollFrame:RegisterEvent("UNIT_INVENTORY_CHANGED");--更换装备
	PaperDollFrame:RegisterEvent("UNIT_RANGEDDAMAGE");--当单位的远程伤害改变时触发。
	PaperDollFrame:RegisterEvent("UNIT_RANGED_ATTACK_POWER");--当单位的远程攻击力改变时触发。
	PaperDollFrame:RegisterEvent("UNIT_RESISTANCES");--当单位的抗性改变时触发。
	PaperDollFrame:RegisterEvent("UNIT_AURA");--获得BUFF时
	PaperDollFrame:RegisterEvent("UNIT_DISPLAYPOWER");--当单位的魔法类型改变时触发，例如德鲁伊变形
	PaperDollFrame:RegisterEvent("CHARACTER_POINTS_CHANGED");--分配天赋点触发
	PaperDollFrame:RegisterEvent("LEARNED_SPELL_IN_TAB");--学习新法术触发
	PaperDollFrame:HookScript("OnEvent", PaperDollFrameUP);--由注册事件触发
	PaperDollFrame:HookScript("OnShow", PaperDollFrameUP);--框架显示时触发
end