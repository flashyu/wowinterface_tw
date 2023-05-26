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
---
local RaidRFun={}
local fuFrame = PIGOptionsList(L["RaidR_TABNAME"],"EXT")
--
local GnName,GnUI,GnIcon,FrameLevel = "开团助手","RaidR_UI",133742,50
RaidRFun.GnName=GnName
RaidRFun.GnUI=GnUI
RaidRFun.GnIcon=GnIcon
local Tooltip = "一个方便团长开团小工具，包括副本掉落记录，补助/罚款记录，便捷物品拍卖，分G助手"
fuFrame.Open = PIGModCheckbutton(fuFrame,{GnName,Tooltip},{"TOP",fuFrame,"TOP",0,-10},true)
fuFrame.Open:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIG["RaidRecord"]["Open"]=true;
		fuFrame.SetListF:Show()
		RaidRFun.RaidRecord()
	else
		PIG["RaidRecord"]["Open"]=false;
		fuFrame.SetListF:Hide()
		Pig_Options_RLtishi_UI:Show()
	end
	QuickButUI.RaidRecord()
end);
fuFrame.Open.QKBut:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIG["RaidRecord"]["AddBut"]=true
		QuickButUI.RaidRecord()
	else
		PIG["RaidRecord"]["AddBut"]=false
		Pig_Options_RLtishi_UI:Show();
	end
end);
function QuickButUI:RaidRecord()	
	if PIG["QuickBut"]["Open"] and PIG["RaidRecord"]["Open"] and PIG["RaidRecord"]["AddBut"] then
		local QkButUI = "QkBut_RaidRecord"
		if _G[QkButUI] then return end
		local QuickTooltip = "点击-|cff00FFFF打开"..GnName.."|r"
		local QkBut=PIGQuickBut(QkButUI,QuickTooltip,GnIcon,nil,FrameLevel)
		QkBut:SetScript("OnClick", function(self,button)
			if _G[GnUI]:IsShown() then
				_G[GnUI]:Hide();
			else
				_G[GnUI]:Show()
			end
		end);
	end
end
fuFrame:HookScript("OnShow", function (self)
	self.Open:SetChecked(PIG["RaidRecord"]["Open"])
	self.Open.QKBut:SetChecked(PIG["RaidRecord"]["AddBut"])
	if PIG["RaidRecord"]["Open"] then
		--self.SetListF:Show()
		self.SetListF:Hide()
	else
		self.SetListF:Hide()
	end
end);
fuFrame.Open:Hide()
---------========
fuFrame.SetListline = PIGLine(fuFrame,"TOP",-66)
fuFrame.SetListF = PIGFrame(fuFrame)
fuFrame.SetListF:SetPoint("TOPLEFT",fuFrame.SetListline,"BOTTOMLEFT",0,0);
fuFrame.SetListF:SetPoint("BOTTOMRIGHT",fuFrame,"BOTTOMRIGHT",0,0);
-------
fuFrame.SetListF.fubenwai = PIGCheckbutton_R(fuFrame.SetListF,{"记录副本外","开启后会记录副本外的拾取信息（默认只记录团队副本内掉落）"})
fuFrame.SetListF.fubenwai:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIG["RaidRecord"]["Rsetting"]["fubenwai"]=true;
	else
		PIG["RaidRecord"]["Rsetting"]["fubenwai"]=false;
	end
end);
--5人本
fuFrame.SetListF.wurenben = PIGCheckbutton_R(fuFrame.SetListF,{"记录5人本","开启后会记录5人本拾取信息（默认只记录团队副本内掉落）"})
fuFrame.SetListF.wurenben:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIG["RaidRecord"]["Rsetting"]["wurenben"]=true;
	else
		PIG["RaidRecord"]["Rsetting"]["wurenben"]=false;
	end
end);

--手动添加物品
fuFrame.SetListF.shoudongloot = PIGCheckbutton_R(fuFrame.SetListF,{"手动添加物品","开启后按住shift点击聊天栏物品链接添加物品到拾取目录（注意必须保持拾取目录列表为打开状态）"})
fuFrame.SetListF.shoudongloot:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIG["RaidRecord"]["Rsetting"]["shoudongloot"]=true;
	else
		PIG["RaidRecord"]["Rsetting"]["shoudongloot"]=false;
	end
end);
--拾取物品倒计时
local function ITEMTimetishi()
	if not InCombatLockdown() then
		if PIG["RaidRecord"]["Open"] and PIG["RaidRecord"]["Rsetting"]["jiaoyidaojishi"] then
			if PIG["RaidRecord"]["instanceName"][1] then
				if GetServerTime()-PIG["RaidRecord"]["instanceName"][1]<43200 then
					if #PIG["RaidRecord"]["ItemList"]>0 then
						for i=1,#PIG["RaidRecord"]["ItemList"],1 do
							if PIG["RaidRecord"]["ItemList"][i][13] then
								if PIG["RaidRecord"]["ItemList"][i][8]~="无" or PIG["RaidRecord"]["ItemList"][i][9]>0 or PIG["RaidRecord"]["ItemList"][i][14]>0 then--已有成交人/收款/欠款
									PIG["RaidRecord"]["ItemList"][i][13]=false;
								else
									local yijingguoqu=GetServerTime()-PIG["RaidRecord"]["ItemList"][i][1];
									if yijingguoqu>7200 then
										PIG["RaidRecord"]["ItemList"][i][13]=false;	
									elseif yijingguoqu>6600 then
										if PIG["RaidRecord"]["ItemList"][i][12] then
											if UnitIsGroupLeader("player", "LE_PARTY_CATEGORY_HOME") and IsInRaid("LE_PARTY_CATEGORY_HOME") then
												SendChatMessage("提示：未成交物品"..PIG["RaidRecord"]["ItemList"][i][2].."可交易时间不足10分钟，请确认物品归属(预估时间仅供参考)！","RAID", nil);
												PIG["RaidRecord"]["ItemList"][i][12]=false;
											end
										end
									end	
								end
							end
						end
					end
				end
			end	
		end
	end
	C_Timer.After(30,ITEMTimetishi);
end
fuFrame.SetListF.jiaoyidaojishi = PIGCheckbutton_R(fuFrame.SetListF,{"可交易倒计时通告","启用后，物品可交易时间低于10分钟将会在团队频道提示，预估时间仅供参考\n注意此通告不会在战斗中执行"})
fuFrame.SetListF.jiaoyidaojishi:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIG["RaidRecord"]["Rsetting"]["jiaoyidaojishi"]=true;
	else
		PIG["RaidRecord"]["Rsetting"]["jiaoyidaojishi"]=false;
	end
end);

--交易记录==========================================================
local jiaoyijiluFFFF = CreateFrame("Frame")
C_ChatInfo.RegisterAddonMessagePrefix('!Pig-jiaoyi')
jiaoyijiluFFFF:RegisterEvent('CHAT_MSG_ADDON');
local guangbopindao="RAID";
local jiaoyishujuinfo={{},0,{},0}
jiaoyijiluFFFF:SetScript("OnEvent",function (self,event,arg1,arg2,arg3,arg4,arg5)
	if event=="CHAT_MSG_ADDON" then
		local namerealm = GetUnitName("player", true);
		if arg1 == '!Pig-jiaoyi' and arg5 ~= namerealm then
			local wupinID, wanjiaName,jiaoyijine = strsplit("-", arg2);
			-- local _, _, _, wupinID = arg2:find("((.+)姓名)");
			-- local _, _, _, wanjiaName = arg2:find("(姓名(.+)金额)");
			-- local _, _,_, jiaoyijine = arg2:find("(金额(.+))");			  
			for x=1,#PIG["RaidRecord"]["ItemList"] do
				if tonumber(wupinID)==PIG["RaidRecord"]["ItemList"][x][11] then
					if PIG["RaidRecord"]["ItemList"][x][8]=="无" and PIG["RaidRecord"]["ItemList"][x][9]==0 then
						PIG["RaidRecord"]["ItemList"][x][8]=wanjiaName;
						PIG["RaidRecord"]["ItemList"][x][9]=tonumber(jiaoyijine);
						PIG["RaidRecord"]["ItemList"][x][10]=GetServerTime();
						addonTable.RaidRecord_UpdateItem(Item_Scroll_UI);
						break
					end
				end
			end
	    end
	end
	if event=="TRADE_SHOW" then
		jiaoyishujuinfo={{},0,{},0}
	end
	if event=="TRADE_PLAYER_ITEM_CHANGED" or event=="TRADE_TARGET_ITEM_CHANGED" or event=="TRADE_ACCEPT_UPDATE" or event=="TRADE_MONEY_CHANGED" then
		jiaoyishujuinfo={{},0,{},0}
		for i=1,6 do
			local PPPItemlink = GetTradePlayerItemLink(i);
			if PPPItemlink then
				local PPPname, PPPtexture, PPPquantity = GetTradePlayerItemInfo(i)
				table.insert(jiaoyishujuinfo[1],{PPPItemlink,PPPquantity});
			end
			local TTTItemlink = GetTradeTargetItemLink(i);
			if TTTItemlink then
				local TTTname, TTTtexture, TTTquantity = GetTradeTargetItemInfo(i)
				table.insert(jiaoyishujuinfo[3],{TTTItemlink,TTTquantity});
			end
		end
		jiaoyishujuinfo[2]=GetPlayerTradeMoney();
		jiaoyishujuinfo[4]=GetTargetTradeMoney();
	end
	if event=="UI_INFO_MESSAGE" then
		if arg2=="交易完成" then
			if #jiaoyishujuinfo[1]>1 then
				local fubenzhushou_chenggongjiaoyi = false
				for x=1,#jiaoyishujuinfo[1] do
					local zijiitemID = GetItemInfoInstant(jiaoyishujuinfo[1][x][1]);
					for xx=1,#PIG["RaidRecord"]["ItemList"] do
						if zijiitemID==PIG["RaidRecord"]["ItemList"][xx][11] then
							if PIG["RaidRecord"]["ItemList"][xx][8]=="无" and PIG["RaidRecord"]["ItemList"][xx][9]==0 then
								fubenzhushou_chenggongjiaoyi = true
								local wanjia = TradeFrameRecipientNameText:GetText()
								PIG["RaidRecord"]["ItemList"][xx][8]=wanjia;
								addonTable.RaidRecord_UpdateItem(Item_Scroll_UI);
								C_ChatInfo.SendAddonMessage('!Pig-jiaoyi', zijiitemID..'-'..wanjia..'-'..0, guangbopindao);-- 发送此次交易给其他使用者
								if PIG["RaidRecord"]["Rsetting"]["jiaoyitonggao"]==true then
									SendChatMessage("!Pig:物品"..jiaoyishujuinfo[1][x][1].."已交予"..wanjia,guangbopindao, nil);
								end
								break
							end
						end
					end
				end
				if fubenzhushou_chenggongjiaoyi then
					print("|cff00FFFF!Pig:|r|cffFFFF00一次交易多件物品请手动输入每件物品的成交价！|r")
				end
			elseif #jiaoyishujuinfo[1]==1 then
				local zijiitemID = GetItemInfoInstant(jiaoyishujuinfo[1][1][1]);
				for x=1,#PIG["RaidRecord"]["ItemList"] do
					if zijiitemID==PIG["RaidRecord"]["ItemList"][x][11] then
						if PIG["RaidRecord"]["ItemList"][x][8]=="无" and PIG["RaidRecord"]["ItemList"][x][9]==0 then
							local wanjia = TradeFrameRecipientNameText:GetText()
							PIG["RaidRecord"]["ItemList"][x][8]=wanjia;
							PIG["RaidRecord"]["ItemList"][x][9]=jiaoyishujuinfo[4]/10000;
							PIG["RaidRecord"]["ItemList"][x][10]=GetServerTime();
							addonTable.RaidRecord_UpdateItem(Item_Scroll_UI);
							C_ChatInfo.SendAddonMessage('!Pig-jiaoyi', zijiitemID..'-'..wanjia..'-'..(jiaoyishujuinfo[4]/10000), guangbopindao);-- 发送此次交易给其他使用者
							if PIG["RaidRecord"]["Rsetting"]["jiaoyitonggao"]==true then
								SendChatMessage("!Pig:物品"..jiaoyishujuinfo[1][1][1].."已交予"..wanjia.."，收到"..floor((jiaoyishujuinfo[4]/10000)).."G",guangbopindao, nil);
							end
							break
						end
					end
				end
			elseif #jiaoyishujuinfo[1]==0 then --补交罚款
				for x=1,#PIG["RaidRecord"]["fakuan"] do
					local wanjia = TradeFrameRecipientNameText:GetText()
					if PIG["RaidRecord"]["fakuan"][x][4]==wanjia then
						PIG["RaidRecord"]["fakuan"][x][2]=PIG["RaidRecord"]["fakuan"][x][2]+jiaoyishujuinfo[4]/10000;
						if PIG["RaidRecord"]["fakuan"][x][3]>0 then
							PIG["RaidRecord"]["fakuan"][x][3]=PIG["RaidRecord"]["fakuan"][x][3]-jiaoyishujuinfo[4]/10000;
						end
						addonTable.RaidRecord_UpdateFakuan(fakuan_Scroll_UI);
						break
					end
				end
			end
			--从物品目录剔除此次交易生成的拾取记录
			if #jiaoyishujuinfo[3]>0 then
				for x=1,#jiaoyishujuinfo[3] do
					for v = #PIG["RaidRecord"]["ItemList"], 1, -1 do
						if jiaoyishujuinfo[3][x][1]==PIG["RaidRecord"]["ItemList"][v][2] then
							table.remove(PIG["RaidRecord"]["ItemList"],v);
							break
						end
					end
					for d =1, #PIG["RaidRecord"]["ItemList"] , 1 do
						if jiaoyishujuinfo[3][x][1]==PIG["RaidRecord"]["ItemList"][d][2] then
							PIG["RaidRecord"]["ItemList"][d][3]=PIG["RaidRecord"]["ItemList"][d][3]-jiaoyishujuinfo[3][x][2];
						end
					end
					addonTable.RaidRecord_UpdateItem(Item_Scroll_UI)
				end
			end
		end
	end
end)
local function jiaoyijiluFun()
	if PIG["RaidRecord"]["Open"] and PIG["RaidRecord"]["Rsetting"]["jiaoyijilu"] then
		PIGEnable(fuFrame.SetListF.jiaoyitonggao)
		jiaoyijiluFFFF:RegisterEvent("UI_INFO_MESSAGE");--交易信息
		jiaoyijiluFFFF:RegisterEvent("TRADE_SHOW");
		jiaoyijiluFFFF:RegisterEvent("TRADE_CLOSED");
		--jiaoyijiluFFFF:RegisterEvent("TRADE_REQUEST_CANCEL");--取消交易尝试时触发。
		-- jiaoyijiluFFFF:RegisterEvent("PLAYER_TRADE_MONEY");--当玩家进行交易时被触发
		jiaoyijiluFFFF:RegisterEvent("TRADE_MONEY_CHANGED");--交易窗口的货币值更改时触发。
		jiaoyijiluFFFF:RegisterEvent("TRADE_PLAYER_ITEM_CHANGED");
		jiaoyijiluFFFF:RegisterEvent("TRADE_TARGET_ITEM_CHANGED");
		jiaoyijiluFFFF:RegisterEvent("TRADE_ACCEPT_UPDATE");--当玩家和目标接受按钮的状态更改时触发。
	else
		PIGDisable(fuFrame.SetListF.jiaoyitonggao)
		jiaoyijiluFFFF:UnregisterEvent("UI_INFO_MESSAGE");--交易信息
		jiaoyijiluFFFF:UnregisterEvent("TRADE_SHOW");
		jiaoyijiluFFFF:UnregisterEvent("TRADE_CLOSED");
		--jiaoyijiluFFFF:UnregisterEvent("TRADE_REQUEST_CANCEL");--取消交易尝试时触发。
		-- jiaoyijiluFFFF:UnregisterEvent("PLAYER_TRADE_MONEY");--当玩家进行交易时被触发
		jiaoyijiluFFFF:UnregisterEvent("TRADE_MONEY_CHANGED");--交易窗口的货币值更改时触发。
		jiaoyijiluFFFF:UnregisterEvent("TRADE_PLAYER_ITEM_CHANGED");
		jiaoyijiluFFFF:UnregisterEvent("TRADE_TARGET_ITEM_CHANGED");
		jiaoyijiluFFFF:UnregisterEvent("TRADE_ACCEPT_UPDATE");--当玩家和目标接受按钮的状态更改时触发。
	end
end
------------
fuFrame.SetListF.jiaoyijilu = PIGCheckbutton_R(fuFrame.SetListF,{"记录装备交易","开启后,交易拾取目录内的物品将会自动填入收入金额及成交人。一次交易多件商品只会记录成交人需手动输入每件商品收入价\n|cff00ff00（其他已安装本插件的玩家也会收到此次交易信息）|r"})
fuFrame.SetListF.jiaoyijilu:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIG["RaidRecord"]["Rsetting"]["jiaoyijilu"]=true;
	else
		PIG["RaidRecord"]["Rsetting"]["jiaoyijilu"]=false;
	end
	jiaoyijiluFun()
end);
fuFrame.SetListF.jiaoyitonggao = PIGCheckbutton_R(fuFrame.SetListF,{"交易通告","通告交易物品和被交易人"})
fuFrame.SetListF.jiaoyitonggao:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIG["RaidRecord"]["Rsetting"]["jiaoyitonggao"]=true;
	else
		PIG["RaidRecord"]["Rsetting"]["jiaoyitonggao"]=false;
	end
end);
----===================================================
local waiwaizidonghuifu_fuben = CreateFrame("Frame");
local function zhuceshijianEE()
	if PIG["RaidRecord"]["Rsetting"]["zidonghuifuYY"]==true then
		waiwaizidonghuifu_fuben:RegisterEvent("CHAT_MSG_WHISPER") 
		waiwaizidonghuifu_fuben:RegisterEvent("CHAT_MSG_PARTY");--收到组队信息
		waiwaizidonghuifu_fuben:RegisterEvent("CHAT_MSG_PARTY_LEADER");
		waiwaizidonghuifu_fuben:RegisterEvent("CHAT_MSG_RAID");--收到团队信息
		waiwaizidonghuifu_fuben:RegisterEvent("CHAT_MSG_RAID_LEADER");
	else
		waiwaizidonghuifu_fuben:UnregisterAllEvents();
	end
end
fuFrame.SetListF.zidonghuifuYY = PIGCheckbutton_R(fuFrame.SetListF,{"自动回复YY频道\124cff00FF00(你必须是队长或团长)\124r","开启后,收到队伍或者团队人员咨询YY频道会自动回复预设内容"})
fuFrame.SetListF.zidonghuifuYY:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIG["RaidRecord"]["Rsetting"]["zidonghuifuYY"]=true;
	else
		PIG["RaidRecord"]["Rsetting"]["zidonghuifuYY"]=false;
	end
	zhuceshijianEE()
end);

--触发关键字
fuFrame.SetListF.zidonghuifuYY.biaoti = fuFrame.SetListF:CreateFontString();
fuFrame.SetListF.zidonghuifuYY.biaoti:SetPoint("TOPLEFT", fuFrame.SetListF.zidonghuifuYY, "BOTTOMLEFT", 0,-6);
fuFrame.SetListF.zidonghuifuYY.biaoti:SetFontObject(GameFontNormal);
fuFrame.SetListF.zidonghuifuYY.biaoti:SetText("触发关键字(用，分隔):");
fuFrame.SetListF.zidonghuifuYY.F = CreateFrame("Frame", nil, fuFrame.SetListF,"BackdropTemplate");
fuFrame.SetListF.zidonghuifuYY.F:SetBackdrop({edgeFile = "Interface/Tooltips/UI-Tooltip-Border", edgeSize = 14});
fuFrame.SetListF.zidonghuifuYY.F:SetBackdropBorderColor(0, 1, 1, 0.8);
fuFrame.SetListF.zidonghuifuYY.F:SetSize(310,26);
fuFrame.SetListF.zidonghuifuYY.F:SetPoint("LEFT", fuFrame.SetListF.zidonghuifuYY.biaoti, "RIGHT", 0,-0);
fuFrame.SetListF.zidonghuifuYY.E = CreateFrame('EditBox', nil, fuFrame.SetListF.zidonghuifuYY.F);
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
    local newDeli = ''
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
	PIG["RaidRecord"]["Rsetting"]["YYguanjianzi"]=guanjianzilist;
end);
--回复内容
fuFrame.SetListF.zidonghuifuYY.NR_biaoti = fuFrame.SetListF:CreateFontString();
fuFrame.SetListF.zidonghuifuYY.NR_biaoti:SetPoint("TOPLEFT", fuFrame.SetListF.zidonghuifuYY.biaoti, "BOTTOMLEFT", 0,-18);
fuFrame.SetListF.zidonghuifuYY.NR_biaoti:SetFontObject(GameFontNormal);
fuFrame.SetListF.zidonghuifuYY.NR_biaoti:SetText("回复内容:");
fuFrame.SetListF.zidonghuifuYY.NR = CreateFrame("Frame", nil, fuFrame.SetListF,"BackdropTemplate");
fuFrame.SetListF.zidonghuifuYY.NR:SetBackdrop({edgeFile = "Interface/Tooltips/UI-Tooltip-Border", edgeSize = 14});
fuFrame.SetListF.zidonghuifuYY.NR:SetBackdropBorderColor(0, 1, 1, 0.8);
fuFrame.SetListF.zidonghuifuYY.NR:SetSize(400,28);
fuFrame.SetListF.zidonghuifuYY.NR:SetPoint("LEFT", fuFrame.SetListF.zidonghuifuYY.NR_biaoti, "RIGHT", 0,-0);
fuFrame.SetListF.zidonghuifuYY.NR_E = CreateFrame('EditBox', nil, fuFrame.SetListF.zidonghuifuYY.NR);
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
	PIG["RaidRecord"]["Rsetting"]["YYneirong"]=self:GetText();
end);
---
waiwaizidonghuifu_fuben:SetScript("OnEvent",function(self, event,arg1,_,_,_,arg5)
	if PIG["RaidRecord"]["Rsetting"]["zidonghuifuYY"]==true then
		local isLeader = UnitIsGroupLeader("player", "LE_PARTY_CATEGORY_HOME");
		if isLeader then
			local nameziji = UnitName("player")
			if arg5~=nameziji then
				local fubenzhushou_zidonghuifuYY=arg1:find("[!Pig]", 1)
				if not fubenzhushou_zidonghuifuYY then
					local YYguanjianzi=PIG["RaidRecord"]["Rsetting"]["YYguanjianzi"];
					for i=1,#YYguanjianzi do
						local YYhaoYES=arg1:find(YYguanjianzi[i], 1)
						if YYhaoYES then
							if event=="CHAT_MSG_WHISPER" then
								local IsInRaid=IsInRaid("LE_PARTY_CATEGORY_HOME");
								if IsInRaid then
									for p=1,40 do
										local name = GetUnitName("raid"..p, true)
										if name~=nil then
											if arg5==name then
												SendChatMessage("[!Pig] "..PIG["RaidRecord"]["Rsetting"]["YYneirong"], "WHISPER", nil, arg5);
												break
											end
										end
									end
								else
									local IsInGroup = IsInGroup("LE_PARTY_CATEGORY_HOME");
									if IsInGroup then
										for p=1,4 do
											local name = GetUnitName("party"..p, true)
											if name~=nil then
												if arg5==name then
													SendChatMessage("[!Pig] "..PIG["RaidRecord"]["Rsetting"]["YYneirong"], "WHISPER", nil, arg5);
													break
												end
											end
										end
									end
								end
							elseif event=="CHAT_MSG_PARTY" or event=="CHAT_MSG_PARTY_LEADER" then
								SendChatMessage("[!Pig] "..PIG["RaidRecord"]["Rsetting"]["YYneirong"], "PARTY", nil);
							elseif event=="CHAT_MSG_RAID" or event=="CHAT_MSG_RAID_LEADER" then
								SendChatMessage("[!Pig] "..PIG["RaidRecord"]["Rsetting"]["YYneirong"], "RAID_WARNING", nil);
							end
							break
						end
					end
				end
			end
		end
	end
end)

--=================================================================
--过滤排除物品
local paichu_Height,paichu_NUM  = 28, 14;
local function gengxinpaichu(self)
	for q = 1, paichu_NUM do
		_G["Pcwupin_"..q.."_UI"].item:Hide();
		_G["Pcwupin_"..q.."_UI"].item.icon:SetTexture();
		_G["Pcwupin_"..q.."_UI"].item.link:SetText();
		_G["Pcwupin_"..q.."_UI"].del:Hide();
    end
	if #PIG["RaidRecord"]["ItemList_Paichu"]>0 then
		local ItemsNum = #PIG["RaidRecord"]["ItemList_Paichu"];
		FauxScrollFrame_Update(self, ItemsNum, paichu_NUM, paichu_Height);
		local offset = FauxScrollFrame_GetOffset(self);
	    if ItemsNum<paichu_NUM then
	    	New_DELpaichu_NUM=ItemsNum;
	    else
	    	New_DELpaichu_NUM=paichu_NUM;
	    end
		for k = 1, New_DELpaichu_NUM do
			local dangqianH = k+offset;
			local itemName, itemLink, _, _, _, _, _, _,_, itemTexture=GetItemInfo(PIG["RaidRecord"]["ItemList_Paichu"][dangqianH]);
	    	_G["Pcwupin_"..k.."_UI"].item.icon:SetTexture(itemTexture);
			_G["Pcwupin_"..k.."_UI"].item.link:SetText(itemLink);
			_G["Pcwupin_"..k.."_UI"].item:Show();
			_G["Pcwupin_"..k.."_UI"].item:SetScript("OnMouseDown", function (self)
				GameTooltip:ClearLines();
				GameTooltip:SetOwner(self, "ANCHOR_CURSOR");
				GameTooltip:SetHyperlink(itemLink)
			end);
			_G["Pcwupin_"..k.."_UI"].item:SetScript("OnMouseUp", function ()
				GameTooltip:ClearLines();
				GameTooltip:Hide() 
			end);
			_G["Pcwupin_"..k.."_UI"].del:Show();
			_G["Pcwupin_"..k.."_UI"].del:SetID(dangqianH);
		end
	end
end
-----------
fuFrame.SetListF.Paichu = CreateFrame("Frame", "Paichu_UI", fuFrame.SetListF)
fuFrame.SetListF.Paichu:SetSize(200, 300)
fuFrame.SetListF.Paichu:SetPoint("RIGHT", fuFrame.SetListF, "RIGHT", -2, -16)
fuFrame.SetListF.Paichu.line = fuFrame.SetListF.Paichu:CreateLine()
fuFrame.SetListF.Paichu.line:SetColorTexture(1,1,1,0.3)
fuFrame.SetListF.Paichu.line:SetThickness(2);
fuFrame.SetListF.Paichu.line:SetStartPoint("TOPLEFT",0,-30)
fuFrame.SetListF.Paichu.line:SetEndPoint("TOPRIGHT",0,-30)
fuFrame.SetListF.Paichu.line1 = fuFrame.SetListF.Paichu:CreateLine()
fuFrame.SetListF.Paichu.line1:SetColorTexture(1,1,1,0.3)
fuFrame.SetListF.Paichu.line1:SetThickness(2);
fuFrame.SetListF.Paichu.line1:SetStartPoint("TOPLEFT",0,1)
fuFrame.SetListF.Paichu.line1:SetEndPoint("BOTTOMLEFT",0,0)
fuFrame.SetListF.Paichu.biaoti = fuFrame.SetListF.Paichu:CreateFontString();
fuFrame.SetListF.Paichu.biaoti:SetPoint("TOPLEFT", fuFrame.SetListF.Paichu, "TOPLEFT", 4, -7);
fuFrame.SetListF.Paichu.biaoti:SetFont(ChatFontNormal:GetFont(), 14, "OUTLINE");
fuFrame.SetListF.Paichu.biaoti:SetText("\124cffFFFF00拾取黑名单\124r\124cff00FF00(拾取目录右键添加)\124r");
--提示
fuFrame.SetListF.Paichu.biaoti_tishi = CreateFrame("Frame", nil, fuFrame.SetListF.Paichu);
fuFrame.SetListF.Paichu.biaoti_tishi:SetSize(30,30);
fuFrame.SetListF.Paichu.biaoti_tishi:SetPoint("LEFT",fuFrame.SetListF.Paichu_biaoti,"RIGHT",-6,0);
fuFrame.SetListF.Paichu.biaoti_tishi_Texture = fuFrame.SetListF.Paichu.biaoti_tishi:CreateTexture(nil, "BORDER");
fuFrame.SetListF.Paichu.biaoti_tishi_Texture:SetTexture("interface/common/help-i.blp");
fuFrame.SetListF.Paichu.biaoti_tishi_Texture:SetAllPoints(fuFrame.SetListF.Paichu.biaoti_tishi)
fuFrame.SetListF.Paichu.biaoti_tishi:SetScript("OnEnter", function (self)
	GameTooltip:ClearLines();
	GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT",0,0);
	GameTooltip:AddLine("提示：")
	GameTooltip:AddLine("\124cff00ff00右键点击拾取记录物品名添加为不记录.\124r")
	GameTooltip:Show();
end);
fuFrame.SetListF.Paichu.biaoti_tishi:SetScript("OnLeave", function ()
	GameTooltip:ClearLines();
	GameTooltip:Hide() 
end);
----可滚动区域
fuFrame.SetListF.Paichu.Scroll = CreateFrame("ScrollFrame",nil,fuFrame.SetListF.Paichu, "FauxScrollFrameTemplate");  
fuFrame.SetListF.Paichu.Scroll:SetPoint("TOPLEFT",fuFrame.SetListF.Paichu,"TOPLEFT",0,-32);
fuFrame.SetListF.Paichu.Scroll:SetPoint("BOTTOMRIGHT",fuFrame.SetListF.Paichu,"BOTTOMRIGHT",-25,2);
fuFrame.SetListF.Paichu.Scroll:SetScript("OnVerticalScroll", function(self, offset)
    FauxScrollFrame_OnVerticalScroll(self, offset, Paichu_Height, gengxinpaichu)
end)
--创建行
local setww = fuFrame.SetListF.Paichu:GetWidth()
for id = 1, paichu_NUM do
	local Pcwupin = CreateFrame("Frame", "Pcwupin_"..id.."_UI", fuFrame.SetListF.Paichu.Scroll:GetParent());
	Pcwupin:SetSize(setww, paichu_Height);
	if id==1 then
		Pcwupin:SetPoint("TOP",fuFrame.SetListF.Paichu.Scroll,"TOP",0,0);
	else
		Pcwupin:SetPoint("TOP",_G["Pcwupin_"..(id-1).."_UI"],"BOTTOM",0,-0);
	end
	if id~=paichu_NUM then
		Pcwupin.line = Pcwupin:CreateLine()
		Pcwupin.line:SetColorTexture(1,1,1,0.2)
		Pcwupin.line:SetThickness(1.2);
		Pcwupin.line:SetStartPoint("BOTTOMLEFT",0,0.2)
		Pcwupin.line:SetEndPoint("BOTTOMRIGHT",0,0.2)
	end
	Pcwupin.item = CreateFrame("Frame", nil, Pcwupin);
	Pcwupin.item:SetSize(setww-68,paichu_Height);
	Pcwupin.item:SetPoint("LEFT",Pcwupin,"LEFT",34,0);
	Pcwupin.item.icon = Pcwupin.item:CreateTexture(nil, "BORDER");
	Pcwupin.item.icon:SetSize(paichu_Height-4,paichu_Height-4);
	Pcwupin.item.icon:SetPoint("LEFT", Pcwupin.item, "LEFT", 0,0);
	Pcwupin.item.link = Pcwupin.item:CreateFontString();
	Pcwupin.item.link:SetPoint("LEFT", Pcwupin.item, "LEFT", 30,0);
	Pcwupin.item.link:SetFont(ChatFontNormal:GetFont(), 14, "OUTLINE");

	Pcwupin.del = CreateFrame("Button",nil,Pcwupin, "TruncatedButtonTemplate");
	Pcwupin.del:SetSize(22,22);
	Pcwupin.del:SetPoint("LEFT", Pcwupin, "LEFT", 5,0);
	Pcwupin.del.Tex = Pcwupin.del:CreateTexture(nil, "BORDER");
	Pcwupin.del.Tex:SetTexture("interface/common/voicechat-muted.blp");
	Pcwupin.del.Tex:SetPoint("CENTER");
	Pcwupin.del.Tex:SetSize(15,15);
	Pcwupin.del:SetScript("OnMouseDown", function (self)
		self.Tex:SetPoint("CENTER",-1.5,-1.5);
	end);
	Pcwupin.del:SetScript("OnMouseUp", function (self)
		self.Tex:SetPoint("CENTER");
	end);
	Pcwupin.del:SetScript("OnClick", function (self)
		local Pcwupin_delID =self:GetID()
		table.remove(PIG["RaidRecord"]["ItemList_Paichu"], Pcwupin_delID);
		gengxinpaichu(fuFrame.SetListF.Paichu.Scroll);
	end);
end
--=======================================================
---重置配置
fuFrame.SetListF.Default = PIGButton(fuFrame.SetListF,{"BOTTOMLEFT",fuFrame.SetListF,"BOTTOMLEFT",20,20},{138,22},"重置"..GnName.."配置");  
fuFrame.SetListF.Default:SetScript("OnClick", function ()
	StaticPopup_Show ("HUIFU_DEFAULT_FUBEN");
end);
StaticPopupDialogs["HUIFU_DEFAULT_FUBEN"] = {
	text = "此操作将\124cffff0000重置\124r"..GnName.."所有配置，需重载界面。\n确定重置?",
	button1 = "确定",
	button2 = "取消",
	OnAccept = function()
		PIG["RaidRecord"] = addonTable.Default["RaidRecord"];
		PIG["RaidRecord"]["Open"] = true;
		ReloadUI()
	end,
	timeout = 0,
	whileDead = true,
	hideOnEscape = true,
}
--============================
fuFrame.SetListF:HookScript("OnShow", function (self)
	-- if PIG["RaidRecord"]["Rsetting"]["jiaoyidaojishi"]==true then
	-- 	fuFrame.SetListF.jiaoyidaojishi:SetChecked(true);
	-- end
	-- if PIG["RaidRecord"]["Rsetting"]["fubenwai"]==true then
	-- 	fuFrame.SetListF.fubenwai:SetChecked(true);
	-- end
	-- if PIG["RaidRecord"]["Rsetting"]["wurenben"]==true then
	-- 	fuFrame.SetListF.wurenben:SetChecked(true);
	-- end
	-- if PIG["RaidRecord"]["Rsetting"]["shoudongloot"]==true then
	-- 	fuFrame.SetListF.shoudongloot:SetChecked(true);
	-- end
	-- if PIG["RaidRecord"]["Rsetting"]["jiaoyijilu"]==true then
	-- 	fuFrame.SetListF.jiaoyijilu:SetChecked(true);
	-- end
	-- if PIG["RaidRecord"]["Rsetting"]["jiaoyitonggao"]==true then
	-- 	fuFrame.SetListF.jiaoyitonggao:SetChecked(true);
	-- end
	-- if PIG["RaidRecord"]["Rsetting"]["caizhixiufu"]==true then
	-- 	fuFrame.SetListF.xiufucaizhi:SetChecked(true);
	-- end
	-- if PIG["RaidRecord"]["Rsetting"]["zidonghuifuYY"]==true then
	-- 	fuFrame.SetListF.zidonghuifuYY:SetChecked(true);
	-- end
	-- local huifuYY_guanjianzineirong="";
	-- for i=1,#PIG["RaidRecord"]["Rsetting"]["YYguanjianzi"] do
	-- 	if i~=#PIG["RaidRecord"]["Rsetting"]["YYguanjianzi"] then
	-- 		huifuYY_guanjianzineirong=huifuYY_guanjianzineirong..PIG["RaidRecord"]["Rsetting"]["YYguanjianzi"][i].."，"
	-- 	else
	-- 		huifuYY_guanjianzineirong=huifuYY_guanjianzineirong..PIG["RaidRecord"]["Rsetting"]["YYguanjianzi"][i]
	-- 	end
	-- end
	-- fuFrame.SetListF.zidonghuifuYY.E:SetText(huifuYY_guanjianzineirong)
	-- fuFrame.SetListF.zidonghuifuYY.NR_E:SetText(PIG["RaidRecord"]["Rsetting"]["YYneirong"])
	-- gengxinpaichu(fuFrame.SetListF.Paichu.Scroll);
end)
----------------
addonTable.RaidRFun=RaidRFun
addonTable.RaidRecord = function()
	-- if PIG["RaidRecord"]["Open"] then
	-- 	RaidRFun.RaidRecord()
	-- 	ITEMTimetishi();
	-- 	jiaoyijiluFun();
	-- 	zhuceshijianEE()
	-- end
end