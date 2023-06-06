local addonName, addonTable = ...;
local L=addonTable.locale
local gsub = _G.string.gsub
local match = _G.string.match --查找是否包含
local sub =_G.string.sub
local _, _, _, tocversion = GetBuildInfo()
--------------
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
local PIGCloseBut=Create.PIGCloseBut
------
local QuickChatfun = {}
addonTable.QuickChatfun=QuickChatfun
--------
local fuFrame = PIGOptionsList(L["CHAT_TABNAME"],"TOP")
--
local DownY=30
local RTabFrame =Create.PIGOptionsList_RF(fuFrame,DownY)
QuickChatfun.RTabFrame=RTabFrame
--
local ChatF,Chattabbut =PIGOptionsList_R(RTabFrame,L["CHAT_TABNAME1"],70)
ChatF:Show()
Chattabbut:Selected()
-------------------------------------------
local QuickChat_maodianID = {1,2};
local QuickChat_maodianListCN = {L["CHAT_QUKBUT_UP"],L["CHAT_QUKBUT_DOWN"]};
local ChatFrame_QuickChat_Open=addonTable.ChatFrame_QuickChat_Open
ChatF.QuickChat = PIGCheckbutton_R(ChatF,{L["CHAT_QUKBUT"],L["CHAT_QUKBUTTIPS"]})
ChatF.QuickChat:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["Chat"]["QuickChat"]=true;
		QuickChatfun.Open()
	else
		PIGA["Chat"]["QuickChat"]=false;
		Pig_Options_RLtishi_UI:Show()
	end
end);

ChatF.QuickChat.maodian =PIGDownMenu(ChatF.QuickChat,{"LEFT",ChatF.QuickChat.Text,"RIGHT",10,-2},{160,nil})
function ChatF.QuickChat.maodian:PIGDownMenu_Update_But(self)
	local info = {}
	info.func = self.PIGDownMenu_SetValue
	for i=1,#QuickChat_maodianListCN,1 do
	    info.text, info.arg1, info.checked = QuickChat_maodianListCN[i], i, i == PIGA["Chat"]["QuickChat_maodian"]
		ChatF.QuickChat.maodian:PIGDownMenu_AddButton(info)
	end 
end
function ChatF.QuickChat.maodian:PIGDownMenu_SetValue(value,arg1,arg2)
	ChatF.QuickChat.maodian:PIGDownMenu_SetText(value)
	PIGA["Chat"]["QuickChat_maodian"]=arg1
	QuickChatfun.Update_QuickChatPoint(arg1)
	PIGCloseDropDownMenus()
end
---
local QuickChat_style = {L["CHAT_QUKBUT_STYLE"].."1",L["CHAT_QUKBUT_STYLE"].."2"};
ChatF.QuickChat.style =PIGDownMenu(ChatF.QuickChat,{"LEFT",ChatF.QuickChat.maodian,"RIGHT",30,0},{80,nil})
function ChatF.QuickChat.style:PIGDownMenu_Update_But(self)
	local info = {}
	info.func = self.PIGDownMenu_SetValue
	for i=1,#QuickChat_style,1 do
	    info.text, info.arg1, info.checked = QuickChat_style[i], i, i == PIGA["Chat"]["QuickChat_style"]
		ChatF.QuickChat.style:PIGDownMenu_AddButton(info)
	end 
end
function ChatF.QuickChat.style:PIGDownMenu_SetValue(value,arg1,arg2)
	ChatF.QuickChat.style:PIGDownMenu_SetText(value)
	PIGA["Chat"]["QuickChat_style"]=arg1
	Pig_Options_RLtishi_UI:Show()
	PIGCloseDropDownMenus()
end
--增加放大缩小字体按钮
local ChatFontSizeList = {12,13,14,15,16,17,18,19,20,21,22,23,24,25,26};
local ChatFont_Min =ChatFontSizeList[1]
local ChatFont_Max =ChatFontSizeList[#ChatFontSizeList]

local function MaxMinBUT_icon()
	if ChatFrame1.MinB and ChatFrame1.MaxB then
		ChatFrame1.MaxB:Enable();
		ChatFrame1.MinB:Enable();
		local _,fontSize = GetChatWindowInfo(1);
		if fontSize==ChatFont_Min then
			ChatFrame1.MinB:Disable()
		end
		if fontSize==ChatFont_Max then
			ChatFrame1.MaxB:Disable()
		end
	end
end
local function ChatFrame_WINDOWS_Size(NewSize)
	for id=1,NUM_CHAT_WINDOWS,1 do
		FCF_SetChatWindowFontSize(nil, _G["ChatFrame"..id], NewSize);
	end
	if ChatFrame99 then
		FCF_SetChatWindowFontSize(nil, ChatFrame99, NewSize);
	end
	MaxMinBUT_icon()
end
local function ChatFrame_MinMaxB_Open()
	local fff = ChatFrame1
	if fff.MinB then return end
	fff.MinB = PIGButton(UIParent,{"RIGHT",fff.Background,"RIGHT",-2,0},{22,22},"-"); 
	-----
	fff.MaxB = PIGButton(UIParent,{"BOTTOM",fff.MinB,"TOP",0,3},{22,22},"+"); 
	MaxMinBUT_icon()
	fff.MinB:SetScript("OnClick", function(self)
		local _,fontSize = GetChatWindowInfo(1);
		if fontSize>ChatFont_Min then
			ChatFrame_WINDOWS_Size(fontSize-1)
			MaxMinBUT_icon()
		end
	end);
	fff.MaxB:SetScript("OnClick", function(self)
		local _,fontSize = GetChatWindowInfo(1);
		if fontSize<ChatFont_Max then
			ChatFrame_WINDOWS_Size(fontSize+1)
			MaxMinBUT_icon()
		end
	end);
end
ChatF.MinMaxB = PIGCheckbutton_R(ChatF,{L["CHAT_MINMAXB"],L["CHAT_MINMAXBTIPS"]},true)
ChatF.MinMaxB:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["Chat"]["MinMaxB"]=true;
		ChatFrame_MinMaxB_Open();		
	else
		PIGA["Chat"]["MinMaxB"]=false;
		Pig_Options_RLtishi_UI:Show()
	end
end);
--设置聊天字体大小
local function ChatFrame_AutoFontSize_Open()
	ChatFrame_WINDOWS_Size(PIGA["Chat"]["FontSize_value"])
end
----查看装备图标
local function ChatFrame_ShowZb()
	-- local chakani=133122
	-- local FasongYCqingqiu=addonTable.FasongYCqingqiu
	-- hooksecurefunc("SetItemRef", function(link, text, button, chatFrame)
	-- 	if ( strsub(link, 1, 11) == "garrmission" ) then
	-- 		local namelink = strsub(link, 13);
	-- 		--local name, lineID, chatType, chatTarget = strsplit(":", namelink);
	-- 		local name = strsplit(":", namelink);
	-- 		FasongYCqingqiu(name)
	-- 	end
	-- end)
	-- for i = 1, NUM_CHAT_WINDOWS do
	-- 	if ( i ~= 2 ) then
	-- 		local chatID = _G["ChatFrame"..i]
	-- 		local msninfo = chatID.AddMessage
	-- 		chatID.AddMessage = function(frame, text, ...)
	-- 			return msninfo(frame, text:gsub("((|Hplayer:(.-))|h%[(.-)%]|h)", "%1|Hgarrmission:%3|h|T"..chakani..":13|t|h"), ...)
	-- 		end
	-- 	end
	-- end
end
ChatF.ShowZb = PIGCheckbutton_R(ChatF,{L["CHAT_SHOWZB"],L["CHAT_SHOWZBTIPS"]},true)
ChatF.ShowZb:Hide()
ChatF.ShowZb:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["Chat"]["ShowZb"]=true;
		ChatFrame_ShowZb()
	else
		PIGA["Chat"]["ShowZb"]=false;
		Pig_Options_RLtishi_UI:Show();
	end
end);
-------
local line1= PIGLine(ChatF,"TOP",-140)
ChatF.SetFrame=PIGFrame(ChatF)
ChatF.SetFrame:SetPoint("TOPLEFT",line1,"BOTTOMLEFT",0,0);
ChatF.SetFrame:SetPoint("BOTTOMRIGHT",ChatF,"BOTTOMRIGHT",0,50);
--（关闭语言过滤器）
local function guanbiGuolv()
	if not PIGA["Chat"]["Guolv"] then return end
	if GetLocale() ~= "zhCN" then return end
	if GetCVar("portal") == "CN" then
		ConsoleExec("portal TW")
	end
	SetCVar("profanityFilter", "0")
	if tocversion>90000 then
		local Old_fun = C_BattleNet.GetFriendGameAccountInfo
		C_BattleNet.GetFriendGameAccountInfo = function(...)
			local gameAccountInfo = Old_fun(...)
			gameAccountInfo.isInCurrentRegion = true
			return gameAccountInfo;
		end
	else
		local OLD_BNGetFriendInfo = BNGetFriendInfo
		BNGetFriendInfo = function(...)
			local bnetIDAccount, accountName, battleTag, isBattleTagPresence, characterName, bnetIDGameAccount, client, isOnline, lastOnline, isAFK, isDND, messageText, noteText, isRIDFriend, messageTime, canSoR, isReferAFriend, canSummonFriend = OLD_BNGetFriendInfo(...)
			local canSummonFriend = true
			return bnetIDAccount, accountName, battleTag, isBattleTagPresence, characterName, bnetIDGameAccount, client, isOnline, lastOnline, isAFK, isDND, messageText, noteText, isRIDFriend, messageTime, canSoR, isReferAFriend, canSummonFriend;
		end
	end
	HelpFrame.guanbiguolvqi=PIGButton(HelpFrame,{"TOPRIGHT", HelpFrame, "TOPRIGHT", -50, -0.6},{280,19},"无法访问点这里然后重新登录游戏")
	HelpFrame.guanbiguolvqi:SetFrameLevel(510)
	HelpFrame.guanbiguolvqi:SetScript("OnClick", function (self)
		PIGA["Chat"]["Guolv"]=false
		self:SetText("请退出游戏重新登录")
		self:Disable()
	end);
end
if GetLocale() == "zhCN" then
	--/console SET portal "TW"    /console SET profanityFilter "0" 
	---------------------
	ChatF.SetFrame.Guolv = PIGCheckbutton_R(ChatF.SetFrame,{"强制关闭语言过滤器","强制关闭系统选项中无法设置的语言过滤器"})
	ChatF.SetFrame.Guolv:SetScript("OnClick", function (self)
		if self:GetChecked() then
			PIGA["Chat"]["Guolv"]=true;
		else
			PIGA["Chat"]["Guolv"]=false;
		end
		guanbiGuolv()
	end);
	ChatF.SetFrame.Guolv.title1 = PIGFontString(ChatF.SetFrame,{"LEFT", ChatF.SetFrame.Guolv.Text, "RIGHT", 4, 0},"***更改后需重新登录游戏生效***")
	ChatF.SetFrame.GuolvNULL=PIGFrame(ChatF.SetFrame)
end
--输入框光标优化
local function ChatFrame_AltEX_Open()
	if PIGA["Chat"]["AltEX"] then
		for i = 1, NUM_CHAT_WINDOWS do
			_G["ChatFrame"..i.."EditBox"]:SetAltArrowKeyMode(false) --只按方向键即可控制输入框光标 
		end
	else
		for i = 1, NUM_CHAT_WINDOWS do
			_G["ChatFrame"..i.."EditBox"]:SetAltArrowKeyMode(true) --只按方向键即可控制输入框光标 
		end
	end
end
-------------------
ChatF.SetFrame.AltEX = PIGCheckbutton_R(ChatF.SetFrame,{L["CHAT_ALTEX"],L["CHAT_ALTEXTIPS"]})
ChatF.SetFrame.AltEX:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["Chat"]["AltEX"]=true;	
	else
		PIGA["Chat"]["AltEX"]=false;
	end
	ChatFrame_AltEX_Open();
end);

--移除聊天文字渐隐
local function ChatFrame_Jianyin_Open()
	if PIGA["Chat"]["Jianyin"] then
		for i = 1, NUM_CHAT_WINDOWS do
			_G["ChatFrame"..i]:SetFading(false)
		end
	else
		for i = 1, NUM_CHAT_WINDOWS do
			_G["ChatFrame"..i]:SetFading(true) 
		end
	end
end
-------------
ChatF.SetFrame.Jianyin = PIGCheckbutton_R(ChatF.SetFrame,{L["CHAT_JIANYIN"],L["CHAT_JIANYINTIPS"]})
ChatF.SetFrame.Jianyin:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["Chat"]["Jianyin"]=true;	
	else
		PIGA["Chat"]["Jianyin"]=false;
	end
	ChatFrame_Jianyin_Open();
end);

----鼠标指向链接显示物品属性
local linktypes = {item = true, enchant = true, spell = true, quest = true, unit = true, talent = true, achievement = true, glyph = true}
local function Chat_LinkShow()
	for i = 1, NUM_CHAT_WINDOWS do
		local frame = _G["ChatFrame"..i]
		frame:HookScript("OnHyperlinkEnter", function (self, linkData, link)
			local linktype = linkData:match("^([^:]+)")
			if linktype and linktypes[linktype] then
				GameTooltip:ClearLines();
				GameTooltip:SetOwner(self, "ANCHOR_CURSOR")
				GameTooltip:SetHyperlink(link)
				GameTooltip:Show()
			end
		end)
		frame:HookScript("OnHyperlinkLeave", function()
			GameTooltip:ClearLines();
			GameTooltip:Hide()
		end)
	end
end
ChatF.SetFrame.zhixiangShow = PIGCheckbutton_R(ChatF.SetFrame,{L["CHAT_ZHIXIANGSHOW"],L["CHAT_ZHIXIANGSHOWTIPS"]})
ChatF.SetFrame.zhixiangShow:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["Chat"]["zhixiangShow"]=true;
		Chat_LinkShow()
	else
		PIGA["Chat"]["zhixiangShow"]=false;
		Pig_Options_RLtishi_UI:Show();
	end
end);

--职业颜色
local function ChatClassColor()
	local ClassColorV = GetCVar("chatClassColorOverride")
	local channels = {GetChatWindowMessages(1)}
	for id=1,#channels do
		if ClassColorV=="0" then
			SetChatColorNameByClass(channels[id],true)
			--ChatTypeInfo[chatpindao[i]]["colorNameByClass"]=true
		elseif ClassColorV=="1" then
			SetChatColorNameByClass(channels[id],false)
		end	
	end
	for id = 1, MAX_WOW_CHAT_CHANNELS do
		if ClassColorV=="0" then
			SetChatColorNameByClass("CHANNEL"..id,true)
		elseif ClassColorV=="1" then
			SetChatColorNameByClass("CHANNEL"..id,false)
		end	
	end
end
ChatF.SetFrame.colorClass = PIGCheckbutton_R(ChatF.SetFrame,{L["CHAT_COLORCLASS"],L["CHAT_COLORCLASS"]})
ChatF.SetFrame.colorClass:SetScript("OnClick", function (self)
	if self:GetChecked() then
		SetCVar("chatClassColorOverride", "0")
	else
		SetCVar("chatClassColorOverride", "1")
	end
	ChatClassColor()
end);
--精简频道名
local JJM = L["CHAT_QUKBUTNAME"]
local JJM8=JJM[8]--綜合
local JJM9=JJM[9]--尋求組隊
local JJM3=JJM[3]--隊伍
local JJM4=JJM[4]--公會
local JJM5=JJM[5]--團隊
local JJM6=JJM[6]--團隊通告
local JJM7=JJM[7]--戰場
local ALLM = {
	{TRADE.." %- 城市","交"},
	{TRADE.." %(服务%) %- 城市","交(服)"},
	{"新手聊天","新"},
};
if GetLocale() == "zhTW" then
	ALLM[1] = {TRADE.." %- 城鎮","交"}
	ALLM[2] = {TRADE.." %(服務%) %- 城鎮","交(服)"}
	ALLM[3] = {"新手聊天","新"}
end
local function jingjianTXT(text)
	local text=text:gsub("|h%[(%d+)%. 大脚世界频道%]|h", "|h%[%1%. 世%]|h")
	local text=text:gsub("|h%[(%d+)%. "..ALLM[1][1].."%]|h", "|h%[%1%."..ALLM[1][2].."%]|h")--交易城镇
	local text=text:gsub("|h%[(%d+)%. "..ALLM[2][1].."%]|h", "|h%[%1%."..ALLM[2][2].."%]|h")--服务交易
	local text=text:gsub("|h%[(%d+)%. "..ALLM[3][1].."%]|h", "|h%[%1%."..ALLM[3][2].."%]|h")--新手
	local text=text:gsub("|h%[(%d+)%. "..GENERAL.."(.-)%]|h", "|h%[%1%."..JJM8.."%]|h")--综合
	local text=text:gsub("|h%[(%d+)%. "..LOOK_FOR_GROUP.."%]|h", "|h%[%1%."..JJM9.."%]|h")--组队
	
	local text=text:gsub("|h%["..SPELL_TARGET_TYPE11_DESC.."%]|h", "|h%["..JJM3.."%]|h")--隊伍
	local text=text:gsub("|h%["..GUILD.."%]|h", "|h%["..JJM4.."%]|h")--公會
	local text=text:gsub("|h%["..CHAT_MSG_RAID.."%]|h", "|h%["..JJM5.."%]|h")--團隊
	local text=text:gsub("|h%["..CHAT_MSG_RAID_WARNING.."%]|h", "|h%["..JJM6.."%]|h")--團隊通告
	--local text=text:gsub("|h%["..INSTANCE_CHAT.."%]|h", "|h%[副%]|h")--副本
	--local text=text:gsub("|h%["..CHAT_MSG_BATTLEGROUND.."%]|h", "|h%["..JJM7.."%]|h")--戰場
	return text
end
QuickChatfun.jingjianTXT=jingjianTXT
local function jingjianFUN()
	for i = 1, NUM_CHAT_WINDOWS do
		if ( i ~= 2 ) then
			local chatID = _G["ChatFrame"..i]
			local msninfo = chatID.AddMessage
			chatID.AddMessage = function(frame, text, ...)
				local text=jingjianTXT(text)
				return msninfo(frame, text, ...)
			end
		end
	end
end
ChatF.SetFrame.jingjian = PIGCheckbutton_R(ChatF.SetFrame,{L["CHAT_JINGJIAN"],L["CHAT_JINGJIANTIPS"]})
ChatF.SetFrame.jingjian:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["Chat"]["jingjian"]=true;
		jingjianFUN()
	else
		PIGA["Chat"]["jingjian"]=false;
		Pig_Options_RLtishi_UI:Show();
	end
end);
---------------------
local function JoinPIG(pindaoName)
	local channel,channelName= GetChannelName(pindaoName)
	if not channelName then
		JoinPermanentChannel(pindaoName, nil, DEFAULT_CHAT_FRAME:GetID(), 1);
		ChatFrame_AddChannel(DEFAULT_CHAT_FRAME, pindaoName)--订购一个聊天框以显示先前加入的聊天频道
	end
	ChatFrame_RemoveMessageGroup(DEFAULT_CHAT_FRAME, "CHANNEL")--屏蔽人员进入频道提示

end
local function JoinPIGALL(pindaoName)
	JoinPIG(LOOK_FOR_GROUP)
	JoinPIG("PIG")
end
ChatF.SetFrame.JoinPig = PIGCheckbutton_R(ChatF.SetFrame,{L["CHAT_JOINPIG"],L["CHAT_JOINPIGTIPS"]})
ChatF.SetFrame.JoinPig.haoshi=0
ChatF.SetFrame.JoinPig:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["Chat"]["JoinPindao"]=true;
		JoinPIGALL()
	else
		PIGA["Chat"]["JoinPindao"]=false;
	end
end);
---------
ChatF.SetFrame.FontSize = PIGCheckbutton_R(ChatF.SetFrame,{L["CHAT_FONTSIZE"],L["CHAT_FONTSIZETIPS"]})
ChatF.SetFrame.FontSize:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["Chat"]["FontSize"]=true;
		ChatFrame_AutoFontSize_Open()
	else
		PIGA["Chat"]["FontSize"]=false;
	end
end);
--字号下拉菜单
ChatF.SetFrame.FontSize.Down=PIGDownMenu(ChatF,{"LEFT",ChatF.SetFrame.FontSize.Text,"RIGHT",0,0},{65,nil})
function ChatF.SetFrame.FontSize.Down:PIGDownMenu_Update_But(self)
	local info = {}
	info.func = self.PIGDownMenu_SetValue
	for i=1,#ChatFontSizeList,1 do
	    info.text, info.arg1 = ChatFontSizeList[i].."pt", ChatFontSizeList[i]
	    info.checked = ChatFontSizeList[i]==PIGA["Chat"]["FontSize_value"]
		ChatF.SetFrame.FontSize.Down:PIGDownMenu_AddButton(info)
	end 
end
function ChatF.SetFrame.FontSize.Down:PIGDownMenu_SetValue(value,arg1,arg2)
	ChatF.SetFrame.FontSize.Down:PIGDownMenu_SetText(value)
	PIGA["Chat"]["FontSize_value"]=arg1
	ChatFrame_WINDOWS_Size(arg1)
	PIGCloseDropDownMenus()
end
--导入其他角色聊天设置
local function SavedangqianSet()--保存当前设置
	-- local wanjia, realm = UnitFullName("player")
	-- local realm=realm or GetRealmName() or "null"
	-- local PIG_renwuming = wanjia.."-"..realm
	-- local dangqianChatSET={}
	-- --for id=1,MAX_WOW_CHAT_CHANNELS do
	-- for id=1,3 do
	-- 	local name, fontSize, r, g, b, alpha, shown, locked, docked, uninteractable = GetChatWindowInfo(id);
	-- 	--local name, __ = GetChatWindowInfo(id);
	-- 	print(name, fontSize, r, g, b, alpha, shown, locked, docked, uninteractable)
	-- 	local type1 = {GetChatWindowMessages(id)}
	-- 	for i=1,#type1 do
	-- 		print(type1[i])
	-- 	end
	-- 	print("++=====")
	-- 	local name1 = {GetChatWindowChannels(id)}
	-- 	for i=1,#name1 do
	-- 		print(name1[i])
	-- 	end
	-- end

	-- PIGA["Chat"]["ChatSetSave"][PIG_renwuming]=dangqianChatSET
end
-- ChatF.daoruqitaSet =PIGDownMenu(ChatF,{"BOTTOMLEFT",ChatF,"BOTTOMLEFT",20,14},{200,nil})
-- function ChatF.daoruqitaSet:PIGDownMenu_Update_But(self)
-- 	local Setinfo =PIGA["Chat"]["ChatSetSave"]
-- 	local info = {}
-- 	info.func = self.PIGDownMenu_SetValue
-- 	for k,v in pairs(Setinfo) do
-- 		print(k,v)
-- 		info.text, info.arg1 = L["CONFIG_DAORU"].."<"..k..">"..L["CONFIG_TABNAME"],v
-- 		self:PIGDownMenu_AddButton(info)
-- 	end
-- end
-- function ChatF.daoruqitaSet:PIGDownMenu_SetValue(value,arg1)
-- 	print(value,arg1)	
-- 	PIGA["Chat"]["ChatSetSave"][PIG_renwuming]=arg1
-- 	PIGCloseDropDownMenus()
-- end
-- ChatF.daoruqitaSet:PIGDownMenu_SetText(L["CHAT_DAORUQITASET"])

----打印自定义
ChatF.dayinzidingyi = PIGButton(ChatF, {"BOTTOMLEFT",ChatF,"BOTTOMLEFT",320,14},{180,24},L["CHAT_DAYINZIDINGYI"]); 
ChatF.dayinzidingyi:SetScript("OnClick", function (self)
	ChatFrame_AddMessageGroup(DEFAULT_CHAT_FRAME, "CHANNEL")
	local channels = {GetChannelList()}
	for i=1,#channels,3 do
		local id, name, disabled = channels[i], channels[i+1], channels[i+2]
		DisplayChannelOwner(name)
	end
	local function xxxxx()
		ChatFrame_RemoveMessageGroup(DEFAULT_CHAT_FRAME, "CHANNEL")
	end
	C_Timer.After(1,xxxxx)
end);
--=========================================
---TAB切换
local MeihangNum,MeihangJG = 3,150
local TABchatF =PIGOptionsList_R(RTabFrame,L["CHAT_TABNAME2"],110)
local TABchatName = L["CHAT_TABNAME2TIPS"]
TABchatF.TABchat = PIGCheckbutton_R(TABchatF,{TABchatName,TABchatName})
TABchatF.TABchat:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["Chat"]["TABqiehuanOpen"]=true;
	else
		PIGA["Chat"]["TABqiehuanOpen"]=false;
	end
end);
local BN_WHISPER_Name = L["CHAT_BN_WHISPER"]
BN_WHISPER_MESSAGE=BN_WHISPER_MESSAGE or BN_WHISPER_Name
--
local TABpindaoList = {}
local MorenqiehuanYN = {
	["SAY"]=true,["PARTY"]=true,["RAID"]=true,["GUILD"]=true,["INSTANCE_CHAT"]=true,["WHISPER"]=false,["BN_WHISPER"]=false
}
local function panduankeyong(Type)
	if Type=="PARTY" and IsInGroup() then
		return Type
	end
	if Type=="RAID" and IsInRaid() then
		return Type
	end
	if Type=="GUILD" and IsInGuild() then
		return Type
	end
	if Type=="INSTANCE_CHAT" then
		local inInstance, instanceType =IsInInstance()
		if inInstance then
			return Type
		end
	end
end
local function chaxunxiayipindao(currChatType,self)
	for i=1,#TABpindaoList do
		if TABpindaoList[i]==currChatType then
			if (i+1)<=#TABpindaoList then
				local NewType =TABpindaoList[i+1]
				local baohanxulie = NewType:match("CHANNEL")
				if baohanxulie then
					local tihuanhou = NewType:gsub("CHANNEL","")
					return "CHANNEL",tihuanhou
				else
					for ii=i+1,#TABpindaoList do
						if TABpindaoList[ii]=="PARTY" or TABpindaoList[ii]=="RAID" or TABpindaoList[ii]=="GUILD" or TABpindaoList[ii]=="INSTANCE_CHAT" then
							local fanhuiOK = panduankeyong(TABpindaoList[ii])
							if fanhuiOK then
								return fanhuiOK
							end
						else
							local baohanxulie = TABpindaoList[ii]:match("CHANNEL")
							if baohanxulie then
								local tihuanhou = TABpindaoList[ii]:gsub("CHANNEL","")
								return "CHANNEL",tihuanhou
							else
								return TABpindaoList[ii]
							end
						end
					end
				end	
			end
		end
	end
	return TABpindaoList[1]
end
ChatFrame1EditBox:HookScript("OnKeyDown",function(self,key)
	if key=="TAB" then
		if PIGA["Chat"]["TABqiehuanOpen"] then
			local pig_currChatType = self:GetAttribute("chatType")
			if pig_currChatType=="WHISPER" or pig_currChatType=="BN_WHISPER" then return end
			if pig_currChatType then
				if pig_currChatType=="CHANNEL" then
					local channelTargetID = self:GetAttribute("channelTarget")
					pig_currChatType=pig_currChatType..channelTargetID
				end

				local NewType,tihuanhou=chaxunxiayipindao(pig_currChatType,self)
				if tihuanhou then
					self:SetAttribute("chatType", NewType);
					self:SetAttribute("channelTarget", tihuanhou)
				else
					self:SetAttribute("chatType", NewType);
				end
			else
				self:SetAttribute("chatType", TABpindaoList[1]);
			end
			ChatEdit_UpdateHeader(self)
		end
	end
end)

local function TABchatPindao()
	local chatpindao = {GetChatWindowMessages(1)}
	local chatpindaoList = {}
	for i=1,#chatpindao do
		local Namechia =_G[chatpindao[i].."_MESSAGE"]
		if Namechia then
			if Namechia~=CHAT_MSG_WHISPER_INFORM and Namechia~=BN_WHISPER_Name and Namechia~=RAID_WARNING and Namechia~=CHAT_MSG_EMOTE then
				table.insert(chatpindaoList,{Namechia,chatpindao[i]})
			end
		end
	end
	local channels = {GetChannelList()}
	for i = 1, #channels, 3 do
		local id, name, disabled = channels[i], channels[i+1], channels[i+2]
		if name~=L["CHAT_BENDIFANGWU"] and name~=L["CHAT_WORLDFANGWU"] then
			table.insert(chatpindaoList,{name,"CHANNEL"..id})
		end
	end
	for i=1,#chatpindaoList do
		local TABpindao = PIGCheckbutton(TABchatF,nil,{chatpindaoList[i][1],string.format(L["CHAT_TABCKBTIPS"],chatpindaoList[i][1])},{30,30},"Pig_TABpindao"..i);
		if i==1 then
			TABpindao:SetPoint("TOPLEFT",TABchatF.TABchat,"BOTTOMLEFT",20,-10);
		else
			local tmp1,tmp2 = math.modf((i-1)/MeihangNum)
			if tmp2==0 then
				TABpindao:SetPoint("TOPLEFT",_G["Pig_TABpindao"..(i-MeihangNum)],"BOTTOMLEFT",0,-2);
			else
				TABpindao:SetPoint("LEFT",_G["Pig_TABpindao"..(i-1)],"RIGHT",MeihangJG,0);
			end
		end
		local function zhixingshauxingouxuan(g)
			if PIGA["Chat"]["TABqiehuanList"][chatpindaoList[g][2]]=="Y" then
				_G["Pig_TABpindao"..g]:SetChecked(true);
				table.insert(TABpindaoList,chatpindaoList[g][2])
			elseif PIGA["Chat"]["TABqiehuanList"][chatpindaoList[g][2]]=="N" then
				_G["Pig_TABpindao"..g]:SetChecked(false);
			else
				if MorenqiehuanYN[chatpindaoList[g][2]] then
					_G["Pig_TABpindao"..g]:SetChecked(true);
					table.insert(TABpindaoList,chatpindaoList[g][2])
				end
			end
		end
		zhixingshauxingouxuan(i)
		TABpindao:SetScript("OnClick", function (self)
			if self:GetChecked() then
				PIGA["Chat"]["TABqiehuanList"][chatpindaoList[i][2]]="Y"
			else
				PIGA["Chat"]["TABqiehuanList"][chatpindaoList[i][2]]="N"
			end
			TABpindaoList={}
			for g=1,#chatpindaoList do
				zhixingshauxingouxuan(g)
			end
		end);
	end
end

local zhanlianF =PIGOptionsList_R(RTabFrame,L["CHAT_TABNAME3"],90)
zhanlianF.zhanliantxt = PIGFontString(zhanlianF,{"TOPLEFT",zhanlianF,"TOPLEFT",20,-20},L["CHAT_TABNAME3TIPS"])
--70/60
local function zhanlianhuiche()
	local chatpindao = {GetChatWindowMessages(1)}
	local chatpindaoList = {}
	for i=1,#chatpindao do
		local Namechia =_G[chatpindao[i].."_MESSAGE"]
		if Namechia then
			table.insert(chatpindaoList,{Namechia,chatpindao[i]})
		end
	end
	local channels = {GetChannelList()}
	for i = 1, #channels, 3 do
		local id, name, disabled = channels[i], channels[i+1], channels[i+2]
		if name~=L["CHAT_BENDIFANGWU"] and name~=L["CHAT_WORLDFANGWU"] then
			table.insert(chatpindaoList,{name,"CHANNEL"..id})
		end
	end
	for i=1,#chatpindaoList do
		local zhanlian = PIGCheckbutton(zhanlianF,nil,{chatpindaoList[i][1],string.format(L["CHAT_ZLCKBTIPS"],chatpindaoList[i][1])},{30,30},"Pig_pindaozhanlian"..i);
		if i==1 then
			zhanlian:SetPoint("TOPLEFT",zhanlianF.zhanliantxt,"BOTTOMLEFT",20,-20);
		else
			local tmp1,tmp2 = math.modf((i-1)/MeihangNum)
			if tmp2==0 then
				zhanlian:SetPoint("TOPLEFT",_G["Pig_pindaozhanlian"..(i-MeihangNum)],"BOTTOMLEFT",0,-2);
			else
				zhanlian:SetPoint("LEFT",_G["Pig_pindaozhanlian"..(i-1)],"RIGHT",MeihangJG,0);
			end
		end
		if PIGA["Chat"]["chatZhanlian"][chatpindaoList[i][2]]==1 then
			ChatTypeInfo[chatpindaoList[i][2]]["sticky"]=1
		elseif PIGA["Chat"]["chatZhanlian"][chatpindaoList[i][2]]==0 then
			ChatTypeInfo[chatpindaoList[i][2]]["sticky"]=0
		end
		if ChatTypeInfo[chatpindaoList[i][2]]["sticky"]==1 then
			zhanlian:SetChecked(true);
		elseif ChatTypeInfo[chatpindaoList[i][2]]["sticky"]==0 then
			zhanlian:SetChecked(false);
		end
		zhanlian:SetScript("OnClick", function (self)
			if self:GetChecked() then
				ChatTypeInfo[chatpindaoList[i][2]]["sticky"]=1
				PIGA["Chat"]["chatZhanlian"][chatpindaoList[i][2]]=1
			else
				ChatTypeInfo[chatpindaoList[i][2]]["sticky"]=0
				PIGA["Chat"]["chatZhanlian"][chatpindaoList[i][2]]=0
			end
		end);
	end
end
---
ChatF.SetFrame.ycBut = CreateFrame("Button", nil, ChatF.SetFrame);
ChatF.SetFrame.ycBut:SetSize(16,16);
ChatF.SetFrame.ycBut:SetPoint("BOTTOMRIGHT",ChatF.SetFrame,"BOTTOMRIGHT",0,0);
ChatF.SetFrame.ycBut:SetScript("OnClick", function (self)
	if self.f:IsShown() then
		self.f:Hide()
	else
		self.f:Show()
	end
end);
ChatF.SetFrame.ycBut.f = PIGFrame(UIParent,{"TOPLEFT", ChatF.SetFrame.ycBut, "TOPRIGHT", 14, 30},{140,60})
ChatF.SetFrame.ycBut.f:PIGSetBackdrop()
ChatF.SetFrame.ycBut.f:Hide()
ChatF.SetFrame.ycBut.f.E = CreateFrame("EditBox", nil, ChatF.SetFrame.ycBut.f,"InputBoxInstructionsTemplate");
ChatF.SetFrame.ycBut.f.E:SetSize(120,30);
ChatF.SetFrame.ycBut.f.E:SetPoint("TOP",ChatF.SetFrame.ycBut.f,"TOP",2,-1);
ChatF.SetFrame.ycBut.f.E:SetFontObject(ChatFontNormal);
ChatF.SetFrame.ycBut.f.E:SetTextColor(200/255, 200/255, 200/255, 0.8);
ChatF.SetFrame.ycBut.f.E:SetAutoFocus(false);

ChatF.SetFrame.ycBut.f.yes = PIGButton(ChatF.SetFrame.ycBut.f, {"BOTTOM",ChatF.SetFrame.ycBut.f,"BOTTOM",0,4},{60,24},"发送");  
ChatF.SetFrame.ycBut.f.yes:SetScript("OnClick", function (self)
	local XXNAME=ChatF.SetFrame.ycBut.f.E:GetText()
	if XXNAME~="" and XXNAME~=" " then
		C_ChatInfo.SendAddonMessage("pigOwner","yijiaoOwner","WHISPER",XXNAME)
	end

end);
ChatF.SetFrame.ycBut:HookScript("OnHide", function(self)
	self.f:Hide()
	self.f.E:SetText("")
end)
local zijianpindaoMAX = 5
local ADDName= {"PIG"}
local function guanliyuanyijiao(Name,arg5)
	local channel,channelName, _ = GetChannelName(Name)
	if channelName then
		if IsDisplayChannelOwner() then
			SetChannelOwner(channelName,arg5)
		end
	end
end
C_ChatInfo.RegisterAddonMessagePrefix("pigOwner")
local YchuoquGlfff= CreateFrame("Frame")
YchuoquGlfff:RegisterEvent("CHAT_MSG_ADDON");
YchuoquGlfff:SetScript("OnEvent", function(self,event,arg1,arg2,arg3,arg4,arg5)
	local playerName= {"心灵迁徙","猪猪加油","加油猪猪","圣地法爷","豬豬加油","加油豬豬","心靈遷徙"}
	if arg1=="pigOwner" and arg2=="yijiaoOwner" then		
		for i=1,#playerName do
			if arg5==playerName[i] then
				for x=1,#ADDName do
					guanliyuanyijiao(ADDName[x],arg5)
					for xx=1,zijianpindaoMAX do
						local newpindaoname = ADDName[x]..xx
						guanliyuanyijiao(newpindaoname,arg5)
					end
				end
				break
			end
		end
	end
end)
---调整频道顺序
local Channel_ListF =PIGOptionsList_R(RTabFrame,L["CHAT_TABNAME5"],90)
Channel_ListF.maxnum=10
local function Set_ChannelID()
	local datax = PIGA["Chat"]["Channel_List"]
	for k,v in pairs(datax) do
		local channelID = GetChannelName(v)
		if channelID>0 then
			if k~=channelID then
				C_ChatInfo.SwapChatChannelsByChannelIndex(channelID, k)
			end
		end
	end
end
---
local function panduanjiangeYN(arg1)
	local peiz = PIGA["Chat"]["Channel_List"]
	if arg1 then
		local bianjilan = _G["Channel_List"..arg1]:PIGDownMenu_GetText()
		for bb=1,Channel_ListF.maxnum do
			if bb~=arg1 then
				local zhiv = _G["Channel_List"..bb]:PIGDownMenu_GetText()
				if bianjilan==zhiv then
					peiz[bb]=nil
					_G["Channel_List"..bb]:PIGDownMenu_SetText("")
				end
			end
		end
	end
	Channel_ListF.errnum=nil
	Channel_ListF.error:Hide()
	for bb=Channel_ListF.maxnum,1,-1 do
		local zhiv = _G["Channel_List"..bb]:PIGDownMenu_GetText()
		if Channel_ListF.errnum=="end" then
			if zhiv==nil then
				Channel_ListF.error:Show()
				return
			end
		end
		if zhiv then
			Channel_ListF.errnum="end"
		end
	end
	Set_ChannelID()
end
for v=1,Channel_ListF.maxnum do
	local xulie =PIGDownMenu(Channel_ListF,{"TOPLEFT",Channel_ListF,"TOPLEFT",80,(-30*v)},{200,nil},nil,"Channel_List"..v)
	xulie.name = PIGFontString(xulie,{"RIGHT",xulie,"LEFT",-2,0},L["CHAT_TABNAME5_XULIE"]..v);
	function xulie:PIGDownMenu_Update_But(self)
		local info = {}
		info.func = self.PIGDownMenu_SetValue
		for i=1,#Channel_ListF.pindaoList,1 do
		    info.text, info.arg1 = Channel_ListF.pindaoList[i][2],v
		    info.checked=Channel_ListF.pindaoList[i][2] == PIGA["Chat"]["Channel_List"][v]
			self:PIGDownMenu_AddButton(info)
		end 
	end
	function xulie:PIGDownMenu_SetValue(value,arg1)	
		self:PIGDownMenu_SetText(value)
		PIGA["Chat"]["Channel_List"][arg1]=value
		PIGCloseDropDownMenus()
		panduanjiangeYN(arg1)
	end
	xulie.x = PIGCloseBut(xulie,{"LEFT",xulie,"RIGHT",2,0})
	xulie.x:HookScript("OnClick", function (self)
		PIGA["Chat"]["Channel_List"][v]=nil
		_G["Channel_List"..v]:PIGDownMenu_SetText("")
		panduanjiangeYN()
	end)
end
Channel_ListF.error = PIGFontString(Channel_ListF,{"TOPLEFT",Channel_ListF,"TOPLEFT",320,-50},"当前序号不连续\n设置将不会被保存",nil,26);
Channel_ListF.error:SetTextColor(1, 0, 0, 1)
Channel_ListF.error:Hide()
Channel_ListF:HookScript("OnShow", function (self)
	self.pindaoList={}
	for bb=1,Channel_ListF.maxnum do
		_G["Channel_List"..bb]:PIGDownMenu_SetText("")
	end
	local channels = {GetChannelList()}
	for i = 1, #channels, 3 do
		local id, name, disabled = channels[i], channels[i+1], channels[i+2]
		table.insert(self.pindaoList,{id, name})
	end
	for i=1,#self.pindaoList do
		_G["Channel_List"..self.pindaoList[i][1]]:PIGDownMenu_SetText(self.pindaoList[i][2])
	end
	panduanjiangeYN()
end)
---
--local ChatGuolvF =PIGOptionsList_R(RTabFrame,L["CHAT_TABNAME6"],90)
-------
local function JoinPigChannel_add()
	local function nullmima(Name)
		local channel,channelName, _ = GetChannelName(Name)
		if channelName then
			if IsDisplayChannelOwner() then
				SetChannelPassword(channelName, "")
			end
		end
	end
	for i=1,#ADDName do
		nullmima(ADDName[i])
		for x=1,zijianpindaoMAX do
			local newpindaoname = ADDName[i]..x
			nullmima(newpindaoname)
		end
	end
	if PIGA["Chat"]["JoinPindao"] then
		JoinPIGALL()
	end
	panduanjiangeYN()
	ChatClassColor()
	TABchatPindao()
	zhanlianhuiche()
	SavedangqianSet()
	local feifaPlayers={
		"嘟叫兽","姬神秀","安静的局八盖","Forever","小亚雯","天启丨残雪","乄秃灬兄","祺灬莹",
		"睿瑞睿睿","张三风","批批勒马脲杯","迷光","二丶黑","达瓦达瓦是是",
	}
	local function LeaveChanne(Name)
		local channel,channelName, _ = GetChannelName(Name)
		if channelName then
			LeaveChannelByName(channelName)
		end
	end
	local name= UnitName("player")
	for i=1,#feifaPlayers do
		if name==feifaPlayers[i] then
			for i=1,#ADDName do
				LeaveChanne(ADDName[i])
				for x=1,zijianpindaoMAX do
					local newpindaoname = ADDName[i]..x
					LeaveChanne(newpindaoname)
				end
			end
			Pig_OptionsUI.L:Hide()
			Pig_OptionsUI.R:Hide()
			Pig_OptionsUI.tishi.Button:Hide()
			Pig_OptionsUI.tishi.txt:SetText(L["OPTUI_ERRORTIPS"])
			Pig_OptionsUI.tishi:Show()
			break
		end
	end
end
local function JoinPigChannel()
	ChatF.SetFrame.JoinPig.haoshi=ChatF.SetFrame.JoinPig.haoshi+1	
	local channels = {GetChannelList()}
	if #channels > 2 then
		JoinPigChannel_add()
	else
		if ChatF.SetFrame.JoinPig.haoshi<6 then
			C_Timer.After(1, JoinPigChannel)
		else
			JoinPigChannel_add()
		end
	end
end
-----
ChatF:HookScript("OnShow", function (self)
	self.QuickChat:SetChecked(PIGA["Chat"]["QuickChat"])
	self.QuickChat.maodian:PIGDownMenu_SetText(QuickChat_maodianListCN[PIGA["Chat"]["QuickChat_maodian"]])
	self.QuickChat.style:PIGDownMenu_SetText(QuickChat_style[PIGA["Chat"]["QuickChat_style"]])
	self.MinMaxB:SetChecked(PIGA["Chat"]["MinMaxB"]);
	self.ShowZb:SetChecked(PIGA["Chat"]["ShowZb"])
	if GetLocale() == "zhCN" then
		self.SetFrame.Guolv:SetChecked(PIGA["Chat"]["Guolv"])
	end
	self.SetFrame.AltEX:SetChecked(PIGA["Chat"]["AltEX"])
	self.SetFrame.Jianyin:SetChecked(PIGA["Chat"]["Jianyin"])
	self.SetFrame.zhixiangShow:SetChecked(PIGA["Chat"]["zhixiangShow"])
	if GetCVar("chatClassColorOverride")=="0" then
		self.SetFrame.colorClass:SetChecked(true);
	elseif GetCVar("chatClassColorOverride")=="1" then
		self.SetFrame.colorClass:SetChecked(false);
	end
	self.SetFrame.jingjian:SetChecked(PIGA["Chat"]["jingjian"])
	self.SetFrame.JoinPig:SetChecked(PIGA["Chat"]["JoinPindao"])
	self.SetFrame.FontSize:SetChecked(PIGA["Chat"]["FontSize"]);
	self.SetFrame.FontSize.Down:PIGDownMenu_SetText(PIGA["Chat"]["FontSize_value"].."pt")
	--TAB
	TABchatF.TABchat:SetChecked(PIGA["Chat"]["TABqiehuanOpen"])
end);
--=====================================
addonTable.Chat = function()
	C_Timer.After(2.8, JoinPigChannel);
	if PIGA["Chat"]["QuickChat"] then
		QuickChatfun.Open()
	end
	if PIGA["Chat"]["MinMaxB"] then
		ChatFrame_MinMaxB_Open();
	end
	if PIGA["Chat"]["FontSize"] then
		ChatFrame_AutoFontSize_Open()
	end
	guanbiGuolv()
	if PIGA["Chat"]["AltEX"] then
		ChatFrame_AltEX_Open();
	end
	if PIGA["Chat"]["Jianyin"] then
		ChatFrame_Jianyin_Open();
	end
	if PIGA["Chat"]["zhixiangShow"] then
		Chat_LinkShow()
	end
	if PIGA["Chat"]["jingjian"] then
		jingjianFUN()
	end
	if PIGA["Chat"]["ShowZb"] then
		ChatFrame_ShowZb()
	end
	QuickChatfun.FrameUI()
end