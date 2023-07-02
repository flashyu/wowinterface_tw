local addonName, addonTable = ...;
local L=addonTable.locale
local _, _, _, tocversion = GetBuildInfo()
local gsub = _G.string.gsub 
local sub = _G.string.sub
local find = _G.string.find
-- --================================
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
local PIGQuickBut=Create.PIGQuickBut
local PIGCloseBut=Create.PIGCloseBut
---
local RaidRFun={}
local GnName,GnUI,GnIcon,FrameLevel = L["RaidR_TABNAME"],"RaidR_UI",133742,50
RaidRFun.GnName=GnName
RaidRFun.GnUI=GnUI
RaidRFun.GnIcon=GnIcon
RaidRFun.FrameLevel=FrameLevel
local fuFrame,fuFrameBut = PIGOptionsList(GnName,"EXT")
RaidRFun.fuFrame=fuFrame
RaidRFun.fuFrameBut=fuFrameBut
--
local Tooltip = "一个方便团长开团小工具，包括副本掉落记录，补助/罚款记录，便捷物品拍卖，分G助手"
fuFrame.Open = PIGModCheckbutton(fuFrame,{GnName,Tooltip},{"TOP",fuFrame,"TOP",0,-10},true)
fuFrame.Open:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["RaidRecord"]["Open"]=true;
		fuFrame.SetListF:Show()
		RaidRFun.RaidRecord()
	else
		PIGA["RaidRecord"]["Open"]=false;
		fuFrame.SetListF:Hide()
		Pig_Options_RLtishi_UI:Show()
	end
	QuickButUI.RaidRecord()
end);
fuFrame.Open.QKBut:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["RaidRecord"]["AddBut"]=true
		QuickButUI.RaidRecord()
	else
		PIGA["RaidRecord"]["AddBut"]=false
		Pig_Options_RLtishi_UI:Show();
	end
end);
function QuickButUI:RaidRecord()	
	if PIGA["QuickBut"]["Open"] and PIGA["RaidRecord"]["Open"] and PIGA["RaidRecord"]["AddBut"] then
		local QkButUI = "QkBut_RaidRecord"
		if _G[QkButUI] then return end
		local QuickTooltip = "点击-|cff00FFFF打开"..GnName.."|r"
		local QkBut=PIGQuickBut(QkButUI,QuickTooltip,GnIcon,GnUI,FrameLevel)
	end
end
---重置配置
fuFrame.Default = PIGButton(fuFrame,{"TOPRIGHT",fuFrame,"TOPRIGHT",-20,-20},{60,22},"重置");  
fuFrame.Default:SetScript("OnClick", function ()
	StaticPopup_Show ("HUIFU_RAIDRECORD_INFO");
end);
StaticPopupDialogs["HUIFU_RAIDRECORD_INFO"] = {
	text = "此操作将\124cffff0000重置\124r"..GnName.."所有配置，需重载界面。\n确定重置?",
	button1 = "确定",
	button2 = "取消",
	OnAccept = function()
		PIGA["RaidRecord"] = addonTable.Default["RaidRecord"];
		PIGA["RaidRecord"]["Open"] = true;
		ReloadUI()
	end,
	timeout = 0,
	whileDead = true,
	hideOnEscape = true,
}
fuFrame:HookScript("OnShow", function (self)
	self.Open:SetChecked(PIGA["RaidRecord"]["Open"])
	self.Open.QKBut:SetChecked(PIGA["RaidRecord"]["AddBut"])
	if PIGA["RaidRecord"]["Open"] then
		self.SetListF:Show()
	else
		self.SetListF:Hide()
	end
end);
---------========
fuFrame.SetListline = PIGLine(fuFrame,"TOP",-66)
fuFrame.SetListF = PIGFrame(fuFrame)
fuFrame.SetListF:SetPoint("TOPLEFT",fuFrame.SetListline,"BOTTOMLEFT",0,0);
fuFrame.SetListF:SetPoint("BOTTOMRIGHT",fuFrame,"BOTTOMRIGHT",0,0);
-------
local bufenpei = {45039,45896,50274}
local autofenffff = CreateFrame("Frame")
autofenffff:SetScript("OnEvent",function(self,event,arg1,_,_,_,arg5)
	--是队长团长
	-- local isLeader = UnitIsGroupLeader("player");
	if IsInGroup() then
		local lootmethod, masterlooterPartyID, masterlooterRaidID= GetLootMethod();
		if lootmethod=="master" and masterlooterPartyID==0 then
			local zjinameX = UnitName("player")
			local lootNum = GetNumLootItems()
			local MSGyifasong = {}
			for x=1,lootNum do
				MSGyifasong[x]=false
			end
			for x = 1, lootNum do
				local link = GetLootSlotLink(x)
				if link then
					local itemID = GetItemInfoInstant(link)
					if itemID then
						self.bufenpei=true
						for ix=1,#bufenpei do	
							if itemID == bufenpei[ix] then
								self.bufenpei=false
								break
							end
						end
						---
						if self.bufenpei then
							local lootIcon, lootName, lootQuantity, currencyID, lootQuality, locked, isQuestItem, questID, isActive = GetLootSlotInfo(x)
							if not isQuestItem and lootQuality>=GetLootThreshold() then
								for ci = 1, GetNumGroupMembers() do
									local candidate = GetMasterLootCandidate(x, ci)
									if candidate == zjinameX then
										GiveMasterLoot(x, ci);
										if not MSGyifasong[x] then
											PIGSendChatRaidParty("!Pig:拾取"..link.."×"..lootQuantity)
											MSGyifasong[x]=true
										end
										break
									end
								end
							end
						end
					end
				end
			end
		end
	end
end)
local function autofenEvent()
	if PIGA["RaidRecord"]["Rsetting"]["autofen"] then
		autofenffff:RegisterEvent("LOOT_READY");
		--autofenffff:RegisterEvent("LOOT_OPENED");
	else
		autofenffff:UnregisterAllEvents()
	end
end
local autofentishi = "开启后队长分配模式下且你是战利品分配人会自动分配掉落到自己背包(分配品质右键点击自己头像设置)\n"..
"不会自动分配任务物品，也不会自动分配橙锤碎片。\n开启此功能后会在队伍/团队频道发送拾取明细"
fuFrame.SetListF.autofen = PIGCheckbutton_R(fuFrame.SetListF,{"自动分配物品给自己\124cff00FF00(你必须是战利品分配人)\124r",autofentishi},true)
fuFrame.SetListF.autofen:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["RaidRecord"]["Rsetting"]["autofen"]=true;
	else
		PIGA["RaidRecord"]["Rsetting"]["autofen"]=false;
	end
	autofenEvent()
end);
fuFrame.SetListF.fubenwai = PIGCheckbutton_R(fuFrame.SetListF,{"记录副本外","开启后会记录副本外的拾取信息（默认只记录团队副本内掉落）"},true)
fuFrame.SetListF.fubenwai:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["RaidRecord"]["Rsetting"]["fubenwai"]=true;
	else
		PIGA["RaidRecord"]["Rsetting"]["fubenwai"]=false;
	end
end);
--5人本
fuFrame.SetListF.wurenben = PIGCheckbutton_R(fuFrame.SetListF,{"记录5人本","开启后会记录5人本拾取信息（默认只记录团队副本内掉落）"},true)
fuFrame.SetListF.wurenben:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["RaidRecord"]["Rsetting"]["wurenben"]=true;
	else
		PIGA["RaidRecord"]["Rsetting"]["wurenben"]=false;
	end
end);

--手动添加物品
fuFrame.SetListF.shoudongloot = PIGCheckbutton_R(fuFrame.SetListF,{"手动添加物品","开启后按住shift点击聊天栏物品链接添加物品到拾取目录（注意必须保持拾取目录列表为打开状态）"},true)
fuFrame.SetListF.shoudongloot:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["RaidRecord"]["Rsetting"]["shoudongloot"]=true;
	else
		PIGA["RaidRecord"]["Rsetting"]["shoudongloot"]=false;
	end
end);
--拾取物品倒计时
fuFrame.SetListF.jiaoyidaojishi = PIGCheckbutton_R(fuFrame.SetListF,{"可交易倒计时通告","启用后，物品可交易时间低于10分钟将会在团队频道提示，预估时间仅供参考\n注意此通告不会在战斗中执行"},true)
fuFrame.SetListF.jiaoyidaojishi:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["RaidRecord"]["Rsetting"]["jiaoyidaojishi"]=true;
	else
		PIGA["RaidRecord"]["Rsetting"]["jiaoyidaojishi"]=false;
	end
end);

--交易记录==========================================================
local biaotouT = "!Pig_RRTRADE"
C_ChatInfo.RegisterAddonMessagePrefix(biaotouT)
local PIGTradeFrame = CreateFrame("Frame")
PIGTradeFrame:HookScript("OnEvent",function (self,event,arg1,arg2,arg3,arg4,arg5)
	if event=="CHAT_MSG_ADDON" and arg1 == biaotouT then
		local nameziji = UnitName("player")
		if arg5==nameziji then return end
		local itemID_P, wanjiaName,jiaoyiG = strsplit("&", arg2);
		if itemID_P and wanjiaName and jiaoyiG then
			local RRItemList = PIGA["RaidRecord"]["ItemList"]		  
			for x=1,#RRItemList do
				--if tonumber(itemID_P)==RRItemList[x][2] then
				local itemLink=PIG_ItemLink(itemID_P)
				local itemLink2=PIG_ItemLink(RRItemList[x][2])
				if itemLink==itemLink2 then
					if RRItemList[x][8]=="N/A" and RRItemList[x][9]==0 then
						RRItemList[x][8]=wanjiaName;
						RRItemList[x][9]=tonumber(jiaoyiG);
						RRItemList[x][10]=GetServerTime();
						_G[GnUI].Update_Item();
						break
					end
				end
			end
		end
	end

	if event=="UI_INFO_MESSAGE" and arg2==ERR_TRADE_COMPLETE then
		self.PIG_TargetItem={}
		self.PIG_PlayerItem={}
		local PIG_TargetName=TradeFrame.PIG_TargetName
		local PIG_TargetMoney=TradeFrame.PIG_TargetMoney*0.0001
		local PIG_PlayerMoney=TradeFrame.PIG_PlayerMoney*0.0001
		for i=1,#TradeFrame.PIG_TargetItem do
			if TradeFrame.PIG_TargetItem[i] then
				table.insert(self.PIG_TargetItem,TradeFrame.PIG_TargetItem[i])
			end
		end
		for i=1,#TradeFrame.PIG_PlayerItem do
			if TradeFrame.PIG_PlayerItem[i] then
				table.insert(self.PIG_PlayerItem,TradeFrame.PIG_PlayerItem[i])
			end
		end
		local wupinNum = #self.PIG_PlayerItem
		if wupinNum>0 and PIG_TargetMoney>0 then--有物品交出和金币收入
			local RRItemList = PIGA["RaidRecord"]["ItemList"]
			for p=1,wupinNum do
				local itemLink_P = self.PIG_PlayerItem[p][1]
				local pingjunfenG = PIG_TargetMoney/wupinNum;
				for x=1,#RRItemList do
					--local itemID_P = GetItemInfoInstant(itemLink_P) 
					--if itemID_P==RRItemList[x][11] then
					local itemLink=PIG_ItemLink(itemLink_P)
					local itemLink2=PIG_ItemLink(RRItemList[x][2])
					if itemLink==itemLink2 then
						if RRItemList[x][8]=="N/A" and RRItemList[x][9]==0 then
							RRItemList[x][8]=PIG_TargetName;
							RRItemList[x][9]=pingjunfenG;
							RRItemList[x][10]=GetServerTime();
							_G[GnUI].Update_Item();
							PIGSendAddonMessage(biaotouT,itemLink_P.."&"..PIG_TargetName.."&"..pingjunfenG)
							if PIGA["RaidRecord"]["Rsetting"]["jiaoyitonggao"] then
								PIGSendChatRaidParty("!Pig:"..itemLink_P.."已交予"..PIG_TargetName.."，收到"..pingjunfenG.."G")
							end
							break
						end
					end
				end
			end
			if wupinNum>1 then
				C_Timer.After(0.1,function()
					UIErrorsFrame:TryDisplayMessage(234, "交易多件物品收到金额将会被平分", YELLOW_FONT_COLOR:GetRGB());
				end)
				PIG_print("交易多件物品收到金额将会被平分")
			end
			--屏蔽交易产生的拾取记录
			_G[GnUI].shiqulinshiStop=true
			C_Timer.After(0.8,function()
				_G[GnUI].shiqulinshiStop=nil
			end)
		elseif wupinNum==0 and PIG_TargetMoney>0 then--只有金币收入补交物品拍卖欠款
			local RRItemList = PIGA["RaidRecord"]["ItemList"]
			for x=1,#RRItemList do
				if RRItemList[x][8]==PIG_TargetName then
					if RRItemList[x][14]>0 then
						RRItemList[x][14]=RRItemList[x][14]-PIG_TargetMoney
						RRItemList[x][9]=RRItemList[x][9]+PIG_TargetMoney
						_G[GnUI].Update_Item();
						break
					end
				end
			end
		end
	end
end)
local function jiaoyijiluEvent()
	if PIGA["RaidRecord"]["Open"] and PIGA["RaidRecord"]["Rsetting"]["jiaoyijilu"] then
		PIGEnable(fuFrame.SetListF.jiaoyitonggao)
		PIGTradeFrame:RegisterEvent("UI_INFO_MESSAGE");
		PIGTradeFrame:RegisterEvent("CHAT_MSG_ADDON");
	else
		PIGDisable(fuFrame.SetListF.jiaoyitonggao)
		PIGTradeFrame:UnregisterEvent("UI_INFO_MESSAGE");
		PIGTradeFrame:UnregisterEvent("CHAT_MSG_ADDON");
	end
end
------------
local jiaoyijiluTS="开启后,交易拾取目录内的物品将会自动填入收入金额及成交人。一次交易多件商品只会记录成交人需手动输入每件商品收入价\n|cff00ff00（其他已安装本插件的玩家也会收到此次交易信息）|r"
fuFrame.SetListF.jiaoyijilu = PIGCheckbutton_R(fuFrame.SetListF,{"记录装备交易",jiaoyijiluTS},true)
fuFrame.SetListF.jiaoyijilu:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["RaidRecord"]["Rsetting"]["jiaoyijilu"]=true;
	else
		PIGA["RaidRecord"]["Rsetting"]["jiaoyijilu"]=false;
	end
	jiaoyijiluEvent()
end);
fuFrame.SetListF.jiaoyitonggao = PIGCheckbutton_R(fuFrame.SetListF,{"交易通告","通告交易物品和被交易人"},true)
fuFrame.SetListF.jiaoyitonggao:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["RaidRecord"]["Rsetting"]["jiaoyitonggao"]=true;
	else
		PIGA["RaidRecord"]["Rsetting"]["jiaoyitonggao"]=false;
	end
end);
----===================================================
local zidonghuifuFFF = CreateFrame("Frame")
local function zidonghuifuEvent()
	if PIGA["RaidRecord"]["Rsetting"]["zidonghuifuYY"] then
		zidonghuifuFFF:RegisterEvent("CHAT_MSG_WHISPER") 
		zidonghuifuFFF:RegisterEvent("CHAT_MSG_PARTY");
		zidonghuifuFFF:RegisterEvent("CHAT_MSG_RAID");
	else
		zidonghuifuFFF:UnregisterAllEvents();
	end
end
zidonghuifuFFF:SetScript("OnEvent",function(self, event,arg1,_,_,_,arg5)
	local isLeader = UnitIsGroupLeader("player");
	if isLeader then
		local nameziji = UnitName("player")
		if arg5==nameziji then return end
		local fubenzhushou_zidonghuifuYY=arg1:find("[!Pig]", 1)
		if not fubenzhushou_zidonghuifuYY then
			local YYguanjianzi=PIGA["RaidRecord"]["Rsetting"]["YYguanjianzi"];
			for i=1,#YYguanjianzi do
				local YYhaoYES=arg1:find(YYguanjianzi[i], 1)
				if YYhaoYES then
					if event=="CHAT_MSG_WHISPER" then
						if IsInRaid() then
							for p=1,40 do
								local name = GetUnitName("raid"..p, true)
								if name~=nil then
									if arg5==name then
										SendChatMessage("[!Pig] "..PIGA["RaidRecord"]["Rsetting"]["YYneirong"], "WHISPER", nil, arg5);
										break
									end
								end
							end
						elseif IsInGroup() then
							for p=1,4 do
								local name = GetUnitName("party"..p, true)
								if name~=nil then
									if arg5==name then
										SendChatMessage("[!Pig] "..PIGA["RaidRecord"]["Rsetting"]["YYneirong"], "WHISPER", nil, arg5);
										break
									end
								end
							end
						end
					elseif event=="CHAT_MSG_PARTY" then
						SendChatMessage("[!Pig] "..PIGA["RaidRecord"]["Rsetting"]["YYneirong"], "PARTY");
					elseif event=="CHAT_MSG_RAID" then
						SendChatMessage("[!Pig] "..PIGA["RaidRecord"]["Rsetting"]["YYneirong"], "RAID_WARNING");
					end
					break
				end
			end
		end
	end
end)
fuFrame.SetListF.zidonghuifuYY = PIGCheckbutton_R(fuFrame.SetListF,{"自动回复YY频道\124cff00FF00(你必须是队长或团长)\124r","开启后,收到队伍或者团队人员咨询YY频道会自动回复预设内容"},true)
fuFrame.SetListF.zidonghuifuYY:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["RaidRecord"]["Rsetting"]["zidonghuifuYY"]=true;
	else
		PIGA["RaidRecord"]["Rsetting"]["zidonghuifuYY"]=false;
	end
	zidonghuifuEvent()
end);
--触发关键字
fuFrame.SetListF.zidonghuifuYY.biaoti = PIGFontString(fuFrame.SetListF,{"TOPLEFT", fuFrame.SetListF.zidonghuifuYY, "BOTTOMLEFT", 0,-6},"触发关键字(用，分隔):");
fuFrame.SetListF.zidonghuifuYY.F = PIGFrame(fuFrame.SetListF,{"TOPLEFT", fuFrame.SetListF.zidonghuifuYY.biaoti, "BOTTOMLEFT", 0,-2},{320,26});
fuFrame.SetListF.zidonghuifuYY.F:PIGSetBackdrop()
fuFrame.SetListF.zidonghuifuYY.E = CreateFrame("EditBox", nil, fuFrame.SetListF.zidonghuifuYY.F);
fuFrame.SetListF.zidonghuifuYY.E:SetPoint("TOPLEFT", fuFrame.SetListF.zidonghuifuYY.F, "TOPLEFT", 8,-6);
fuFrame.SetListF.zidonghuifuYY.E:SetPoint("BOTTOMRIGHT", fuFrame.SetListF.zidonghuifuYY.F, "BOTTOMRIGHT", -8,6);
fuFrame.SetListF.zidonghuifuYY.E:SetFontObject(ChatFontNormal);
fuFrame.SetListF.zidonghuifuYY.E:SetAutoFocus(false);
fuFrame.SetListF.zidonghuifuYY.E:SetMaxLetters(22);
fuFrame.SetListF.zidonghuifuYY.E:SetTextColor(0.6, 0.6, 0.6, 1);
fuFrame.SetListF.zidonghuifuYY.E:SetScript("OnEditFocusGained", function(self) 
	self:SetTextColor(1, 1, 1, 1);
end);
fuFrame.SetListF.zidonghuifuYY.E:SetScript("OnEscapePressed", function(self) 
	self:ClearFocus() 
end);
fuFrame.SetListF.zidonghuifuYY.E:SetScript("OnEnterPressed", function(self) 
	self:ClearFocus() 
end);
local function fengedianjianzi(str,delimiter)
    local dLen = string.len(delimiter)
    local newDeli = ""
    for i=1,dLen,1 do
        newDeli = newDeli .. "["..delimiter:sub(i,i).."]"
    end

    local locaStart,locaEnd = str:find(newDeli)
    local arr = {}
    local n = 1
    while locaStart ~= nil
    do
        if locaStart>0 then
            arr[n] = str:sub(1,locaStart-1)
            n = n + 1
        end

        str = str:sub(locaEnd+1,string.len(str))
        locaStart,locaEnd = str:find(newDeli)
    end
    if str ~= nil and str ~= "" and str ~= " " then
        arr[n] = str
    end
    return arr
end
fuFrame.SetListF.zidonghuifuYY.E:SetScript("OnEditFocusLost", function(self)
	self:SetTextColor(0.6, 0.6, 0.6, 1);
	local guanjianV = self:GetText();
	local guanjianshuzu = guanjianV:gsub("，", ",")
	local guanjianzilist = fengedianjianzi(guanjianshuzu, ",")
	PIGA["RaidRecord"]["Rsetting"]["YYguanjianzi"]=guanjianzilist;
end);
--回复内容
fuFrame.SetListF.zidonghuifuYY.NR_biaoti = PIGFontString(fuFrame.SetListF,{"TOPLEFT", fuFrame.SetListF.zidonghuifuYY.F, "BOTTOMLEFT", 0,-6},"回复内容:");
fuFrame.SetListF.zidonghuifuYY.NR = PIGFrame(fuFrame.SetListF,{"TOPLEFT", fuFrame.SetListF.zidonghuifuYY.NR_biaoti, "BOTTOMLEFT", 0,-2},{320,26});
fuFrame.SetListF.zidonghuifuYY.NR:PIGSetBackdrop()
fuFrame.SetListF.zidonghuifuYY.NR_E = CreateFrame("EditBox", nil, fuFrame.SetListF.zidonghuifuYY.NR);
fuFrame.SetListF.zidonghuifuYY.NR_E:SetPoint("TOPLEFT", fuFrame.SetListF.zidonghuifuYY.NR, "TOPLEFT", 8,-6);
fuFrame.SetListF.zidonghuifuYY.NR_E:SetPoint("BOTTOMRIGHT", fuFrame.SetListF.zidonghuifuYY.NR, "BOTTOMRIGHT", -8,6);
fuFrame.SetListF.zidonghuifuYY.NR_E:SetFontObject(ChatFontNormal);
fuFrame.SetListF.zidonghuifuYY.NR_E:SetAutoFocus(false);
fuFrame.SetListF.zidonghuifuYY.NR_E:SetMaxLetters(40);
fuFrame.SetListF.zidonghuifuYY.NR_E:SetTextColor(0.6, 0.6, 0.6, 1);
fuFrame.SetListF.zidonghuifuYY.NR_E:SetScript("OnEditFocusGained", function(self) 
	self:SetTextColor(1, 1, 1, 1);
end);
fuFrame.SetListF.zidonghuifuYY.NR_E:SetScript("OnEscapePressed", function(self) 
	self:ClearFocus() 
end);
fuFrame.SetListF.zidonghuifuYY.NR_E:SetScript("OnEnterPressed", function(self) 
	self:ClearFocus() 
end);
fuFrame.SetListF.zidonghuifuYY.NR_E:SetScript("OnEditFocusLost", function(self)
	self:SetTextColor(0.6, 0.6, 0.6, 1);
	PIGA["RaidRecord"]["Rsetting"]["YYneirong"]=self:GetText();
end);
--=================================================================
--过滤排除物品
local paichu_Height,paichu_NUM  = 28.4, 15;
local function gengxinpaichu(self)
	for k = 1, paichu_NUM do
		_G["PaichuList"..k]:Hide();
    end
    local paichumulu = PIGA["RaidRecord"]["Rsetting"]["PaichuList"]
    local ItemsNum = #paichumulu
	if ItemsNum>0 then
		FauxScrollFrame_Update(self, ItemsNum, paichu_NUM, paichu_Height);
		local offset = FauxScrollFrame_GetOffset(self);
		for k = 1, paichu_NUM do
			local dangqianH = k+offset;
			if paichumulu[dangqianH] then
				local fujik=_G["PaichuList"..k]
				fujik:Show();
				fujik.del:SetID(dangqianH);
				local itemName, itemLink, _, _, _, _, _, _,_, itemTexture=GetItemInfo(paichumulu[dangqianH]);
		    	fujik.item.icon:SetTexture(itemTexture);
				fujik.item.link:SetText(itemLink);
				fujik.item:SetScript("OnMouseDown", function (self)
					GameTooltip:ClearLines();
					GameTooltip:SetOwner(self, "ANCHOR_CURSOR");
					GameTooltip:SetHyperlink(itemLink)
				end);
				fujik.item:SetScript("OnMouseUp", function ()
					GameTooltip:ClearLines();
					GameTooltip:Hide() 
				end);
			end
		end
	end
end
-----------
fuFrame.SetListF.Paichu = PIGFrame(fuFrame.SetListF,{"TOPLEFT", fuFrame.SetListF, "TOPRIGHT", -260, -28})
fuFrame.SetListF.Paichu:SetPoint("BOTTOMRIGHT", fuFrame.SetListF, "BOTTOMRIGHT", -6, 6)
fuFrame.SetListF.Paichu:PIGSetBackdrop()
fuFrame.SetListF.Paichu.biaoti = PIGFontString(fuFrame.SetListF.Paichu,{"BOTTOMLEFT", fuFrame.SetListF.Paichu, "TOPLEFT", 4, 4},"\124cff00FF00忽略以下物品拾取记录\124r");
--提示
fuFrame.SetListF.Paichu.biaoti_tishi = CreateFrame("Frame", nil, fuFrame.SetListF.Paichu);
fuFrame.SetListF.Paichu.biaoti_tishi:SetSize(30,30);
fuFrame.SetListF.Paichu.biaoti_tishi:SetPoint("LEFT",fuFrame.SetListF.Paichu.biaoti,"RIGHT",-6,0);
fuFrame.SetListF.Paichu.biaoti_tishi.Tex = fuFrame.SetListF.Paichu.biaoti_tishi:CreateTexture(nil, "BORDER");
fuFrame.SetListF.Paichu.biaoti_tishi.Tex:SetTexture("interface/common/help-i.blp");
fuFrame.SetListF.Paichu.biaoti_tishi.Tex:SetAllPoints(fuFrame.SetListF.Paichu.biaoti_tishi)
PIGEnter(fuFrame.SetListF.Paichu.biaoti_tishi,"提示：","\124cff00ff00拾取记录页面右键点击物品名添加为不记录.\124r")
----可滚动区域
fuFrame.SetListF.Paichu.Scroll = CreateFrame("ScrollFrame",nil,fuFrame.SetListF.Paichu, "FauxScrollFrameTemplate");  
fuFrame.SetListF.Paichu.Scroll:SetPoint("TOPLEFT",fuFrame.SetListF.Paichu,"TOPLEFT",0,0);
fuFrame.SetListF.Paichu.Scroll:SetPoint("BOTTOMRIGHT",fuFrame.SetListF.Paichu,"BOTTOMRIGHT",-25,2);
fuFrame.SetListF.Paichu.Scroll:SetScript("OnVerticalScroll", function(self, offset)
    FauxScrollFrame_OnVerticalScroll(self, offset, Paichu_Height, gengxinpaichu)
end)
--创建行
local Paichuww = fuFrame.SetListF.Paichu:GetWidth()
for id = 1, paichu_NUM do
	local Pcwupin = CreateFrame("Frame", "PaichuList"..id, fuFrame.SetListF.Paichu.Scroll:GetParent());
	Pcwupin:SetSize(Paichuww-25, paichu_Height);
	if id==1 then
		Pcwupin:SetPoint("TOP",fuFrame.SetListF.Paichu.Scroll,"TOP",0,0);
	else
		Pcwupin:SetPoint("TOP",_G["PaichuList"..(id-1)],"BOTTOM",0,-0);
	end
	if id~=paichu_NUM then
		Pcwupin.line = PIGLine(Pcwupin,"BOT")
	end
	Pcwupin.del=PIGCloseBut(Pcwupin,{"LEFT", Pcwupin, "LEFT", 4,0},{22,22})
	Pcwupin.del:SetScript("OnClick", function (self)
		table.remove(PIGA["RaidRecord"]["Rsetting"]["PaichuList"], self:GetID());
		gengxinpaichu(fuFrame.SetListF.Paichu.Scroll);
	end);
	Pcwupin.item = CreateFrame("Frame", nil, Pcwupin);
	Pcwupin.item:SetSize(Paichuww-51,paichu_Height);
	Pcwupin.item:SetPoint("LEFT",Pcwupin.del,"RIGHT",0,0);
	Pcwupin.item.icon = Pcwupin.item:CreateTexture(nil, "BORDER");
	Pcwupin.item.icon:SetSize(paichu_Height-4,paichu_Height-4);
	Pcwupin.item.icon:SetPoint("LEFT", Pcwupin.item, "LEFT", 0,0);
	Pcwupin.item.link = PIGFontString(Pcwupin.item,{"LEFT", Pcwupin.item.icon, "RIGHT", 1,0});
end
fuFrame.SetListF.Paichu:HookScript("OnShow", function (self)
	gengxinpaichu(self.Scroll);
end)
--=============================
fuFrame.SetListF:HookScript("OnShow", function (self)
	fuFrame.SetListF.autofen:SetChecked(PIGA["RaidRecord"]["Rsetting"]["autofen"]);
	fuFrame.SetListF.jiaoyidaojishi:SetChecked(PIGA["RaidRecord"]["Rsetting"]["jiaoyidaojishi"]);
	fuFrame.SetListF.fubenwai:SetChecked(PIGA["RaidRecord"]["Rsetting"]["fubenwai"]);
	fuFrame.SetListF.wurenben:SetChecked(PIGA["RaidRecord"]["Rsetting"]["wurenben"]);
	fuFrame.SetListF.shoudongloot:SetChecked(PIGA["RaidRecord"]["Rsetting"]["shoudongloot"]);
	fuFrame.SetListF.jiaoyijilu:SetChecked(PIGA["RaidRecord"]["Rsetting"]["jiaoyijilu"]);
	fuFrame.SetListF.jiaoyitonggao:SetChecked(PIGA["RaidRecord"]["Rsetting"]["jiaoyitonggao"]);
	fuFrame.SetListF.zidonghuifuYY:SetChecked(PIGA["RaidRecord"]["Rsetting"]["zidonghuifuYY"]);
	local huifuYY_guanjianzineirong="";
	for i=1,#PIGA["RaidRecord"]["Rsetting"]["YYguanjianzi"] do
		if i~=#PIGA["RaidRecord"]["Rsetting"]["YYguanjianzi"] then
			huifuYY_guanjianzineirong=huifuYY_guanjianzineirong..PIGA["RaidRecord"]["Rsetting"]["YYguanjianzi"][i].."，"
		else
			huifuYY_guanjianzineirong=huifuYY_guanjianzineirong..PIGA["RaidRecord"]["Rsetting"]["YYguanjianzi"][i]
		end
	end
	fuFrame.SetListF.zidonghuifuYY.E:SetText(huifuYY_guanjianzineirong)
	fuFrame.SetListF.zidonghuifuYY.NR_E:SetText(PIGA["RaidRecord"]["Rsetting"]["YYneirong"])
end)
-- ----------------
addonTable.RaidRFun=RaidRFun
addonTable.RaidRecord = function()
	if PIGA["RaidRecord"]["Open"] then
		RaidRFun.RaidRecord()
		autofenEvent()
		jiaoyijiluEvent();
		zidonghuifuEvent()
	end
end