local addonName, addonTable = ...;
local L=addonTable.locale
local _, _, _, tocversion = GetBuildInfo()
local gsub = _G.string.gsub
local sub = _G.string.sub
local find = _G.string.find
------------
local QuickChatfun=addonTable.QuickChatfun
--/////聊天快捷按钮--------
QuickChatfun.biaoqing = {
	{"{rt1}","INTERFACE\\TARGETINGFRAME\\UI-RAIDTARGETINGICON_1"}, {"{rt2}","INTERFACE\\TARGETINGFRAME\\UI-RAIDTARGETINGICON_2"}, 
	{"{rt3}","INTERFACE\\TARGETINGFRAME\\UI-RAIDTARGETINGICON_3"}, {"{rt4}","INTERFACE\\TARGETINGFRAME\\UI-RAIDTARGETINGICON_4"}, 
	{"{rt5}","INTERFACE\\TARGETINGFRAME\\UI-RAIDTARGETINGICON_5"}, {"{rt6}","INTERFACE\\TARGETINGFRAME\\UI-RAIDTARGETINGICON_6"}, 
	{"{rt7}","INTERFACE\\TARGETINGFRAME\\UI-RAIDTARGETINGICON_7"}, {"{rt8}","INTERFACE\\TARGETINGFRAME\\UI-RAIDTARGETINGICON_8"},
	{"{天使}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\angel.tga"},{"{生气}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\angry.tga"},
	{"{大笑}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\biglaugh.tga"},{"{鼓掌}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\clap.tga"},
	{"{酷}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\cool.tga"},{"{哭}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\cry.tga"},
	{"{可爱}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\cutie.tga"},{"{鄙视}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\despise.tga"},
	{"{美梦}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\dreamsmile.tga"},{"{尴尬}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\embarrass.tga"},
	{"{邪恶}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\evil.tga"},{"{兴奋}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\excited.tga"},
	{"{晕}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\faint.tga"},{"{打架}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\fight.tga"},
	{"{流感}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\flu.tga"},{"{呆}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\freeze.tga"},
	{"{皱眉}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\frown.tga"},{"{致敬}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\greet.tga"},
	{"{鬼脸}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\grimace.tga"},{"{龇牙}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\growl.tga"},
	{"{开心}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\happy.tga"},{"{心}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\heart.tga"},
	{"{恐惧}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\horror.tga"},{"{生病}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\ill.tga"},
	{"{无辜}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\Innocent.tga"},{"{功夫}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\kongfu.tga"},
	{"{花痴}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\love.tga"},{"{邮件}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\mail.tga"},
	{"{化妆}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\makeup.tga"},{"{马里奥}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\mario.tga"},
	{"{沉思}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\meditate.tga"},{"{可怜}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\miserable.tga"},
	{"{好}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\okay.tga"},{"{漂亮}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\pretty.tga"},
	{"{吐}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\puke.tga"},{"{握手}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\shake.tga"},
	{"{喊}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\shout.tga"},{"{闭嘴}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\shuuuu.tga"},
	{"{害羞}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\shy.tga"},{"{睡觉}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\sleep.tga"},
	{"{微笑}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\smile.tga"},{"{吃惊}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\suprise.tga"},
	{"{失败}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\surrender.tga"},{"{流汗}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\sweat.tga"},
	{"{流泪}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\tear.tga"},{"{悲剧}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\tears.tga"},
	{"{想}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\think.tga"},{"{偷笑}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\Titter.tga"},
	{"{猥琐}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\ugly.tga"},{"{胜利}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\victory.tga"},
	{"{雷锋}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\volunteer.tga"},{"{委屈}","Interface\\AddOns\\"..addonName.."\\Chat\\icon\\wronged.tga"},
};
local function TihuanBiaoqing(self,event,arg1,...)
	for i=1,#QuickChatfun.biaoqing do
		if arg1:find(QuickChatfun.biaoqing[i][1]) then
			--arg1 = arg1:gsub(QuickChatfun.biaoqing[i][1], "\124T" .. QuickChatfun.biaoqing[i][2] .. ":" ..(PIG["Chat"]["FontSize_value"]+2) .. "\124t");
			arg1 = arg1:gsub(QuickChatfun.biaoqing[i][1], "|T"..QuickChatfun.biaoqing[i][2]..":16|t");
		end
	end
	return false, arg1, ...
end
-------------
local Width,Height,jiangejuli,hangshu = 25,25,0,10;
local ChatpindaoMAX = 5
local function ADD_chatbut(fuF,pdtype,name,chatID,Color)
	local PIGTemplate
	if PIG["Chat"]["QuickChat_style"]==1 then
		PIGTemplate="TruncatedButtonTemplate"
	elseif PIG["Chat"]["QuickChat_style"]==2 then
		PIGTemplate="UIMenuButtonStretchTemplate"
	end
	local ziframe = {fuF:GetChildren()}
	local chatbut = CreateFrame("Button",nil,fuF, PIGTemplate);  
	chatbut:SetSize(Width,Height);
	chatbut:SetPoint("LEFT",fuF,"LEFT",#ziframe*fuF.Width,0);
	chatbut:SetFrameStrata("LOW")
	if pdtype=="bq" then
		chatbut.Tex = chatbut:CreateTexture(nil, "BORDER");
		chatbut.Tex:SetTexture("Interface/AddOns/"..addonName.."/Chat/icon/happy.tga");
		chatbut.Tex:SetPoint("CENTER",0,0);
		chatbut.Tex:SetSize(Width-10,Height-10);
			chatbut:SetScript("OnMouseDown", function (self)
			self.Tex:SetPoint("CENTER",1,-1);
		end);
		chatbut:SetScript("OnMouseUp", function (self)
			self.Tex:SetPoint("CENTER",0,0);
		end);
		chatbut:SetScript("OnClick", function(self)
			if self.F:IsShown() then
				self.F:Hide()
			else
				self.F:Show()
				self.F.xiaoshidaojishi = 1.5;
				self.F.zhengzaixianshi = true;
			end
		end);
	elseif pdtype=="Mes" or pdtype=="CHANNEL" then
		chatbut:SetNormalFontObject(ChatFontNormal)
		chatbut:SetText(name);
		if Color then
			chatbut.Text:SetTextColor(Color[1], Color[2], Color[3], 1);
		end
		--
		if pdtype=="Mes" then	
			chatbut:SetScript("OnClick", function()
				local editBox = ChatEdit_ChooseBoxForSend();
				local hasText = editBox:GetText()
				if editBox:HasFocus() then
					editBox:SetText("/"..chatID.." " .. hasText);
				else
					ChatEdit_ActivateChat(editBox)
					editBox:SetText("/"..chatID.." " .. hasText);
				end
			end);
		elseif pdtype=="CHANNEL" then
			chatbut:SetScript("OnEnter", function (self)
				--C_Timer.After(0.8,function()		
					GameTooltip:ClearLines();
					GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT",0,0);
					GameTooltip:SetText("|cff00FFff左键-|r|cffFFFF00加入/发言\n|cff00FFff右键-|r|cffFFFF00屏蔽频道消息|r");
					GameTooltip:Show();
					GameTooltip:FadeOut()
				--end)
			end);
			chatbut:SetScript("OnLeave", function (self)
				GameTooltip:ClearLines();
				GameTooltip:Hide() 
			end);
			chatbut:RegisterForClicks("LeftButtonUp", "RightButtonUp");
			chatbut.X = chatbut:CreateTexture(nil, "OVERLAY");
			chatbut.X:SetTexture("interface/common/voicechat-muted.blp");
			chatbut.X:SetSize(16,16);
			chatbut.X:SetAlpha(0.7);
			chatbut.X:SetPoint("CENTER",0,0);
			chatbut.X:Hide()
			chatbut:SetScript("OnClick", function(self, event)
				self.channel,self.channelName= GetChannelName(chatID)
				if not self.channelName then
					if chatID=="大脚世界频道" or chatID=="PIG" then
						for i=1,ChatpindaoMAX do
							self.channel,self.channelName= GetChannelName(chatID..i)
							if self.channelName then
								break
							end
						end
					end
				end
				local channel,channelName = self.channel,self.channelName
				--local chatFrame = SELECTED_DOCK_FRAME--当前选择聊天框架
				if event=="LeftButton" then
					if not channelName then
						JoinPermanentChannel(chatID, nil, DEFAULT_CHAT_FRAME:GetID(), 1);
						ChatFrame_AddChannel(DEFAULT_CHAT_FRAME, chatID)--订购一个聊天框以显示先前加入的聊天频道
						ChatFrame_RemoveMessageGroup(DEFAULT_CHAT_FRAME, "CHANNEL")--屏蔽人员进入频道提示
						PIG_print("已加入"..chatID.."频道，右键屏蔽频道消息");
					else
						ChatFrame_AddChannel(DEFAULT_CHAT_FRAME, channelName)
						local editBox = ChatEdit_ChooseBoxForSend();
						local hasText = editBox:GetText()
						if editBox:HasFocus() then
							editBox:SetText("/"..channel.." " ..hasText);
						else
							ChatEdit_ActivateChat(editBox)
							editBox:SetText("/"..channel.." " ..hasText);
						end
					end
					chatbut.X:Hide();
				else
					local pindaomulu = {GetChatWindowChannels(1)}
					for i=1,#pindaomulu do
						if pindaomulu[i]==channelName then
							ChatFrame_RemoveChannel(DEFAULT_CHAT_FRAME, channelName);
							self.X:Show();
							PIG_print("已屏蔽"..channelName.."频道消息");
							return
						end
					end
					ChatFrame_AddChannel(DEFAULT_CHAT_FRAME, channelName)
					self.X:Hide();
					PIG_print("已解除"..channelName.."频道消息屏蔽");
				end
			end);
		end
	end
	return chatbut
end
---更新按钮的屏蔽状态
function QuickChatfun.Update_ChatBut_icon()
	if QuickChatFFF_UI then
		local chaozhaopindao = {
			{QuickChatFFF_UI.CHANNEL_1.X,GENERAL},
			{QuickChatFFF_UI.CHANNEL_2.X,LOOK_FOR_GROUP},
			{QuickChatFFF_UI.CHANNEL_3.X,"PIG"},
		}
		if GetLocale() == "zhCN" then
			table.insert(chaozhaopindao,{QuickChatFFF_UI.CHANNEL_4.X,"大脚世界频道"})
		end
		for i=1,#chaozhaopindao do
			chaozhaopindao[i][1]:Show();
		end
		local Showchatmulu = {GetChatWindowChannels(1)}
		for i=1,#chaozhaopindao do
			for ii=1,#Showchatmulu do
				if chaozhaopindao[i][2]==Showchatmulu[ii] then
					chaozhaopindao[i][1]:Hide();
				end
				if chaozhaopindao[i][2]=="PIG" or chaozhaopindao[i][2]=="大脚世界频道" then
					for x=1,ChatpindaoMAX do
						local newpindaoname = chaozhaopindao[i][2]..x
						if Showchatmulu[ii]==newpindaoname then
							chaozhaopindao[i][1]:Hide();
							break
						end
					end
				end
			end
		end
	end
end
---下移输入框=======	
function QuickChatfun.Update_QuickChatPoint(arg1)
	local arg1=arg1 or PIG["Chat"]["QuickChat_maodian"]
	if QuickChatFFF_UI then
		QuickChatFFF_UI:ClearAllPoints();	
		if arg1==1 then	
			QuickChatFFF_UI:SetPoint("BOTTOMLEFT",ChatFrame1,"TOPLEFT",0,28);
			if ChatFrame99 then
				if tocversion<100000 then
					if NDui then
						ChatFrame99:SetPoint("BOTTOMRIGHT",ChatFrame1,"TOPRIGHT",-0,56);
						ChatFrame99:SetPoint("BOTTOMLEFT",ChatFrame1,"TOPLEFT",-3,56);
					else
						ChatFrame99:SetPoint("BOTTOMRIGHT",ChatFrame1,"TOPRIGHT",-21,56);
						ChatFrame99:SetPoint("BOTTOMLEFT",ChatFrame1,"TOPLEFT",-3,56);
					end
				else
					if ElvUI then
						ChatFrame99:SetPoint("BOTTOMRIGHT",ChatFrame1,"TOPRIGHT",-18,56);
						ChatFrame99:SetPoint("BOTTOMLEFT",ChatFrame1,"TOPLEFT",-3,56);
					else
						ChatFrame99:SetPoint("BOTTOMRIGHT",ChatFrame1,"TOPRIGHT",-8,56);
						ChatFrame99:SetPoint("BOTTOMLEFT",ChatFrame1,"TOPLEFT",-3,56);
					end
				end
			end
			for i=1,NUM_CHAT_WINDOWS do
				local fujichat = _G["ChatFrame"..i]
				fujichat.editBox:ClearAllPoints();
				fujichat.editBox:SetPoint("BOTTOMLEFT",fujichat,"TOPLEFT",-5,-24);
				fujichat.editBox:SetPoint("BOTTOMRIGHT",fujichat,"TOPRIGHT",5,-24);
			end
		elseif arg1==2 then
			QuickChatFFF_UI:SetPoint("TOPLEFT",ChatFrame1,"BOTTOMLEFT",-2,-4);
			if ChatFrame99 then
				if tocversion<100000 then
					ChatFrame99:SetPoint("BOTTOMRIGHT",ChatFrame1,"TOPRIGHT",-21,28);
					ChatFrame99:SetPoint("BOTTOMLEFT",ChatFrame1,"TOPLEFT",-3,28);
				else
					ChatFrame99:SetPoint("BOTTOMRIGHT",ChatFrame1,"TOPRIGHT",-8,28);
					ChatFrame99:SetPoint("BOTTOMLEFT",ChatFrame1,"TOPLEFT",-3,28);
				end
			end
			for i=1,NUM_CHAT_WINDOWS do
				local fujichat = _G["ChatFrame"..i]
				fujichat.editBox:ClearAllPoints();
				fujichat.editBox:SetPoint("TOPLEFT",fujichat,"BOTTOMLEFT",-5,-23);
				fujichat.editBox:SetPoint("TOPRIGHT",fujichat,"BOTTOMRIGHT",5,-23);
			end
		end	
	end
end
function QuickChatfun.Open()
	if QuickChatFFF_UI==nil then
		ChatFrame_AddMessageEventFilter("CHAT_MSG_CHANNEL", TihuanBiaoqing)
		ChatFrame_AddMessageEventFilter("CHAT_MSG_SAY", TihuanBiaoqing)
		ChatFrame_AddMessageEventFilter("CHAT_MSG_YELL", TihuanBiaoqing)
		ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER", TihuanBiaoqing)
		ChatFrame_AddMessageEventFilter("CHAT_MSG_BN_WHISPER", TihuanBiaoqing)
		ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER_INFORM", TihuanBiaoqing)
		ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID", TihuanBiaoqing)
		ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID_LEADER", TihuanBiaoqing)
		ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID_WARNING", TihuanBiaoqing)
		ChatFrame_AddMessageEventFilter("CHAT_MSG_PARTY", TihuanBiaoqing)
		ChatFrame_AddMessageEventFilter("CHAT_MSG_PARTY_LEADER", TihuanBiaoqing)
		ChatFrame_AddMessageEventFilter("CHAT_MSG_GUILD", TihuanBiaoqing)
		ChatFrame_AddMessageEventFilter("CHAT_MSG_OFFICER", TihuanBiaoqing)
		ChatFrame_AddMessageEventFilter("CHAT_MSG_AFK", TihuanBiaoqing)
		ChatFrame_AddMessageEventFilter("CHAT_MSG_EMOTE", TihuanBiaoqing)
		ChatFrame_AddMessageEventFilter("CHAT_MSG_DND", TihuanBiaoqing)
		ChatFrame_AddMessageEventFilter("CHAT_MSG_COMMUNITIES_CHANNEL", TihuanBiaoqing)
		-----------------------
		local QuickChatFFF = CreateFrame("Frame", "QuickChatFFF_UI", UIParent);
		QuickChatFFF.Width=Width
		QuickChatFFF:SetSize(Width,Height);
		QuickChatFFF:SetFrameStrata("LOW")
		local function Hidebeijing(editBox)
			if ( editBox.disableActivate or ( GetCVar("chatStyle") == "classic" and not editBox.isGM ) ) then	
			else
				if ( not editBox.isGM ) then
					editBox:SetAlpha(0.1);
				end
			end
		end
		hooksecurefunc("ChatEdit_DeactivateChat", function(editBox)
			Hidebeijing(editBox)
		end)
		hooksecurefunc("ChatEdit_SetLastActiveWindow", function(editBox)
			Hidebeijing(editBox)
		end)
		-------
		QuickChatFFF.biaoqing = ADD_chatbut(QuickChatFFF,"bq")

		QuickChatFFF.biaoqing.F = CreateFrame("Frame", nil, QuickChatFFF.biaoqing,"BackdropTemplate");
		QuickChatFFF.biaoqing.F:SetBackdrop( { 
			bgFile = "Interface/Tooltips/UI-Tooltip-Background",tile = false, tileSize = 0,
			edgeFile = "Interface/Tooltips/UI-Tooltip-Border",edgeSize = 8, 
			insets = { left = 2, right = 2, top = 2, bottom = 2 }});
		QuickChatFFF.biaoqing.F:SetBackdropBorderColor(0.5, 0.5, 0.5, 0.8);
		QuickChatFFF.biaoqing.F:SetBackdropColor(0.5, 0.5, 0.5, 0.8);
		QuickChatFFF.biaoqing.F:SetSize((Width+2)*hangshu+10,Height*6+20);
		QuickChatFFF.biaoqing.F:SetPoint("BOTTOMLEFT",QuickChatFFF.biaoqing,"TOPLEFT", 0, 0);
		QuickChatFFF.biaoqing.F:Hide()
		QuickChatFFF.biaoqing.F:SetFrameStrata("HIGH")
		QuickChatFFF.biaoqing.F.xiaoshidaojishi = 0;
		QuickChatFFF.biaoqing.F.zhengzaixianshi = nil;

		QuickChatFFF.biaoqing.F:SetScript("OnUpdate", function(self, ssss)
			if QuickChatFFF.biaoqing.F.zhengzaixianshi==nil then
				return;
			else
				if QuickChatFFF.biaoqing.F.zhengzaixianshi==true then
					if QuickChatFFF.biaoqing.F.xiaoshidaojishi<= 0 then
						QuickChatFFF.biaoqing.F:Hide();
						QuickChatFFF.biaoqing.F.zhengzaixianshi = nil;
					else
						QuickChatFFF.biaoqing.F.xiaoshidaojishi = QuickChatFFF.biaoqing.F.xiaoshidaojishi - ssss;	
					end
				end
			end

		end)
		QuickChatFFF.biaoqing.F:SetScript("OnEnter", function()
			QuickChatFFF.biaoqing.F.zhengzaixianshi = nil;
		end)
		QuickChatFFF.biaoqing.F:SetScript("OnLeave", function()
			QuickChatFFF.biaoqing.F.xiaoshidaojishi = 1.5;
			QuickChatFFF.biaoqing.F.zhengzaixianshi = true;
		end)

		for i=1,#QuickChatfun.biaoqing do
			QuickChatFFF.biaoqing.F.list = CreateFrame("Button","biaoqing_list"..i.."_UI",QuickChatFFF.biaoqing.F,nil,i);
			QuickChatFFF.biaoqing.F.list:SetSize(Width,Height);
			if i==1 then
				QuickChatFFF.biaoqing.F.list:SetPoint("TOPLEFT",QuickChatFFF.biaoqing.F,"TOPLEFT", 5, -5);
			elseif i<hangshu+1 then
				QuickChatFFF.biaoqing.F.list:SetPoint("LEFT",_G["biaoqing_list"..(i-1).."_UI"],"RIGHT", 2, 0);
			elseif i==hangshu+1 then
				QuickChatFFF.biaoqing.F.list:SetPoint("TOPLEFT",_G["biaoqing_list1_UI"],"BOTTOMLEFT", 0, -2);
			elseif i<hangshu*2+1 then
				QuickChatFFF.biaoqing.F.list:SetPoint("LEFT",_G["biaoqing_list"..(i-1).."_UI"],"RIGHT", 2, 0);
			elseif i==hangshu*2+1 then
				QuickChatFFF.biaoqing.F.list:SetPoint("TOPLEFT",_G["biaoqing_list11_UI"],"BOTTOMLEFT", 0, -2);
			elseif i<hangshu*3+1 then
				QuickChatFFF.biaoqing.F.list:SetPoint("LEFT",_G["biaoqing_list"..(i-1).."_UI"],"RIGHT", 2, 0);
			elseif i==hangshu*3+1 then
				QuickChatFFF.biaoqing.F.list:SetPoint("TOPLEFT",_G["biaoqing_list21_UI"],"BOTTOMLEFT", 0, -2);
			elseif i<hangshu*4+1 then
				QuickChatFFF.biaoqing.F.list:SetPoint("LEFT",_G["biaoqing_list"..(i-1).."_UI"],"RIGHT", 2, 0);
			elseif i==hangshu*4+1 then
				QuickChatFFF.biaoqing.F.list:SetPoint("TOPLEFT",_G["biaoqing_list31_UI"],"BOTTOMLEFT", 0, -2);
			elseif i<hangshu*5+1 then
				QuickChatFFF.biaoqing.F.list:SetPoint("LEFT",_G["biaoqing_list"..(i-1).."_UI"],"RIGHT", 2, 0);
			elseif i==hangshu*5+1 then
				QuickChatFFF.biaoqing.F.list:SetPoint("TOPLEFT",_G["biaoqing_list41_UI"],"BOTTOMLEFT", 0, -2);
			elseif i<hangshu*6+1 then
				QuickChatFFF.biaoqing.F.list:SetPoint("LEFT",_G["biaoqing_list"..(i-1).."_UI"],"RIGHT", 2, 0);
			end
			QuickChatFFF.biaoqing.F.list.Tex = QuickChatFFF.biaoqing.F.list:CreateTexture();
			QuickChatFFF.biaoqing.F.list.Tex:SetTexture(QuickChatfun.biaoqing[i][2]);
			QuickChatFFF.biaoqing.F.list.Tex:SetPoint("CENTER",0,0);
			QuickChatFFF.biaoqing.F.list.Tex:SetSize(Width,Height);
			QuickChatFFF.biaoqing.F.list:SetScript("OnEnter", function()
				QuickChatFFF.biaoqing.F.zhengzaixianshi=nil
			end)
			QuickChatFFF.biaoqing.F.list:SetScript("OnLeave", function()
				QuickChatFFF.biaoqing.F.xiaoshidaojishi = 1.5;
				QuickChatFFF.biaoqing.F.zhengzaixianshi = true;
			end)
			QuickChatFFF.biaoqing.F.list:SetScript("OnClick", function(self)
				local editBox = ChatEdit_ChooseBoxForSend();
				local hasText = editBox:GetText()..QuickChatfun.biaoqing[self:GetID()][1]
				if editBox:HasFocus() then
					editBox:SetText(hasText);
				else
					ChatEdit_ActivateChat(editBox)
					editBox:SetText(hasText);
				end
				QuickChatFFF.biaoqing.F:Hide();
			end)

		end
		--说--
		QuickChatFFF.SAY = ADD_chatbut(QuickChatFFF,"Mes",L["CHAT_QUKBUTNAME"][1],"s")
		--喊--
		QuickChatFFF.YALL = ADD_chatbut(QuickChatFFF,"Mes",L["CHAT_QUKBUTNAME"][2],"y",{1, 64/255, 64/255})
		--队伍--
		QuickChatFFF.PARTY = ADD_chatbut(QuickChatFFF,"Mes",L["CHAT_QUKBUTNAME"][3],"p",{170/255, 170/255, 1})
		--公会--
		QuickChatFFF.GUILD = ADD_chatbut(QuickChatFFF,"Mes",L["CHAT_QUKBUTNAME"][4],"g",{64/255, 1, 64/255})
		--团队--
		QuickChatFFF.RAID = ADD_chatbut(QuickChatFFF,"Mes",L["CHAT_QUKBUTNAME"][5],"ra",{1, 127/255, 0})
		--团队通知--
		QuickChatFFF.RAID_WARNING = ADD_chatbut(QuickChatFFF,"Mes",L["CHAT_QUKBUTNAME"][6],"rw",{1, 72/255, 0})
		--战场--
		QuickChatFFF.BATTLEGROUND = ADD_chatbut(QuickChatFFF,"Mes",L["CHAT_QUKBUTNAME"][7],"bg",{1, 127/255, 0})
		--CHANNEL--
		QuickChatFFF.CHANNEL_1 = ADD_chatbut(QuickChatFFF,"CHANNEL",L["CHAT_QUKBUTNAME"][8],GENERAL,{0.888, 0.668, 0.668})
		QuickChatFFF.CHANNEL_2 = ADD_chatbut(QuickChatFFF,"CHANNEL",L["CHAT_QUKBUTNAME"][9],LOOK_FOR_GROUP,{0.888, 0.668, 0.668})
		QuickChatFFF.CHANNEL_3 = ADD_chatbut(QuickChatFFF,"CHANNEL",L["CHAT_QUKBUTNAME"][10],"PIG",{102/255,1,204/255})
		if GetLocale() == "zhCN" then
			QuickChatFFF.CHANNEL_4 = ADD_chatbut(QuickChatFFF,"CHANNEL",L["CHAT_QUKBUTNAME"][11],"大脚世界频道",{0.888, 0.668, 0.668})
		end
		--
		QuickChatfun.QuickBut_Jilu()
		QuickChatfun.QuickBut_Keyword()
		QuickChatfun.QuickBut_Roll()
		QuickChatfun.QuickBut_jiuwei()
		QuickChatfun.Update_QuickChatPoint(PIG["Chat"]["QuickChat_maodian"])
		C_Timer.After(3,QuickChatfun.Update_ChatBut_icon)
		C_Timer.After(5,QuickChatfun.Update_ChatBut_icon)
	end
end