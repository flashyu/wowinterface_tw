local _, addonTable = ...;
local match = _G.string.match
local _, _, _, tocversion = GetBuildInfo()
--------
local CommonFun=addonTable.CommonFun
---主动跟随函数
function CommonFun.Gensui_Z()
	if botton=="LeftButton" then
		if PIGA["QuickFollow"]["Name"]~=nil and PIGA["QuickFollow"]["Name"]~="" then
			local isRecognized = IsRecognizedName(PIGA["QuickFollow"]["Name"], AUTOCOMPLETE_FLAG_ONLINE, AUTOCOMPLETE_FLAG_NONE)
			if isRecognized then
				FollowUnit(PIGA["QuickFollow"]["Name"]);
			end
		end
	else
		local name,_ = UnitName("player");
		--判断目标
		local mubiaoname,_ = UnitName("target");
		if UnitIsPlayer("target") then --是否为玩家
			if mubiaoname~=name then
				if CheckInteractDistance("target", 4) then --判断距离
					FollowUnit(mubiaoname);
					return
				end
			end
		end
		--跟随队友
		if IsInGroup()==true then
			local duiyou1,_ = UnitName("party1")		
			if duiyou1 and UnitIsConnected("Party1") then --玩家未离线
				if CheckInteractDistance("party1", 4) then					
					FollowUnit(duiyou1);
					return
				end
			end
		end
		if IsInGroup()==true then
			local duiyou2,_ = UnitName("party2")		
			if duiyou2 and UnitIsConnected("Party2") then --玩家未离线
				if CheckInteractDistance("party2", 4) then					
					FollowUnit(duiyou2);
					return
				end
			end
		end
		if IsInGroup()==true then
			local duiyou3,_ = UnitName("party3")		
			if duiyou3 and UnitIsConnected("Party3") then --玩家未离线
				if CheckInteractDistance("party3", 4) then					
					FollowUnit(duiyou3);
					return
				end
			end
		end
		if IsInGroup()==true then
			local duiyou4,_ = UnitName("party4")		
			if duiyou4 and UnitIsConnected("Party4") then --玩家未离线
				if CheckInteractDistance("party4", 4) then					
					FollowUnit(duiyou4);
					return
				end
			end
		end
	end
end
---被动跟随函数
local function kaishiMsg()
	if IsInGroup() then
		if IsInRaid() then
			SendChatMessage("[!Pig] 已开启被动跟随,收到指令 "..PIGA["QuickFollow"]["Kaishi"].." 跟随；收到 "..PIGA["QuickFollow"]["Jieshu"].." 停止", "RAID", nil);
		else
			SendChatMessage("[!Pig] 已开启被动跟随,收到指令 "..PIGA["QuickFollow"]["Kaishi"].." 跟随；收到 "..PIGA["QuickFollow"]["Jieshu"].." 停止", "PARTY", nil);
		end
	end
end
local function jieshuMsg()
	if IsInGroup() then
		if IsInRaid() then
			SendChatMessage("[!Pig] 已关闭被动跟随", "RAID", nil);
		else
			SendChatMessage("[!Pig] 已关闭被动跟随", "PARTY", nil);
		end
	end
end
local function Gensui_B_Vanilla(Booleans,AutoFollowF)
	if Booleans then
		if Gensui_B_UI then Gensui_B_UI:SetChecked(true) end
		AutoFollowF.gensuiF.B_Open:SetChecked(true);
		AutoFollowF.gensuiF:RegisterEvent("AUTOFOLLOW_BEGIN");
		AutoFollowF.gensuiF:RegisterEvent("AUTOFOLLOW_END");
		AutoFollowF.gensuiF:RegisterEvent("READY_CHECK");
		AutoFollowF.gensuiF:RegisterEvent("CHAT_MSG_PARTY");--收到组队信息
		AutoFollowF.gensuiF:RegisterEvent("CHAT_MSG_PARTY_LEADER");--当组长发送或接收消息时触发。
		AutoFollowF.gensuiF:RegisterEvent("CHAT_MSG_RAID");--收到团队信息
		AutoFollowF.gensuiF:RegisterEvent("CHAT_MSG_RAID_LEADER");--收到团队领导信息
		AutoFollowF.gensuiF:RegisterEvent("CHAT_MSG_WHISPER");--当收到其他玩家的耳语时触发
		gensuiB_UI_tishi:Show()
		if Gensui_B_CMD_UI then Gensui_B_CMD_UI:Disable() end
		if PIGA["QuickFollow"]["Yijiao"] and IsInGroup() then
			SendChatMessage("[!Pig] 已开启自动移交队长,收到"..L["CHAT_WHISPER"].."内容为“队长”将自动移交队长", "PARTY", nil);
		end
		kaishiMsg()
	else
		if Gensui_B_UI then Gensui_B_UI:SetChecked(false) end
		AutoFollowF.gensuiF.B_Open:SetChecked(false);
		AutoFollowF.gensuiF:UnregisterEvent("AUTOFOLLOW_BEGIN");
		AutoFollowF.gensuiF:UnregisterEvent("AUTOFOLLOW_END");
		AutoFollowF.gensuiF:UnregisterEvent("READY_CHECK");
		AutoFollowF.gensuiF:UnregisterEvent("CHAT_MSG_PARTY");--收到组队信息
		AutoFollowF.gensuiF:UnregisterEvent("CHAT_MSG_PARTY_LEADER");--当组长发送或接收消息时触发。
		AutoFollowF.gensuiF:UnregisterEvent("CHAT_MSG_RAID");--收到团队信息
		AutoFollowF.gensuiF:UnregisterEvent("CHAT_MSG_RAID_LEADER");--收到团队领导信息
		AutoFollowF.gensuiF:UnregisterEvent("CHAT_MSG_WHISPER");--当收到其他玩家的耳语时触发
		gensuiB_UI_tishi:Hide();
		if Gensui_B_CMD_UI then Gensui_B_CMD_UI:Enable() end
		FollowUnit("player");
		jieshuMsg()
	end
	AutoFollowF.gensuiF:SetScript("OnEvent",function (self,event,arg1,_,_,_,arg5)
		if event=="READY_CHECK" then
			if PIGA["QuickFollow"]["Jiuwei"] then
				ConfirmReadyCheck(true)--自动就位
			end
		elseif event=="AUTOFOLLOW_BEGIN" then
			if PIGA["QuickFollow"]["Tishi"] then
				if IsInGroup() then
					if IsInRaid() then
						SendChatMessage("[!Pig] 开始跟随玩家《"..arg1.."》", "RAID", nil);
					else 
						SendChatMessage("[!Pig] 开始跟随玩家《"..arg1.."》", "PARTY", nil);
					end
				end
			end	
		elseif event=="AUTOFOLLOW_END" then
			if PIGA["QuickFollow"]["Tishi"] then
				if IsInGroup() then
					if IsInRaid() then
						SendChatMessage("[!Pig] 已停止跟随", "RAID", nil);
					else 
						SendChatMessage("[!Pig] 已停止跟随", "PARTY", nil);
					end
				end
			end
		else
			local feizidonghuifu=arg1:find("[!Pig]", 1)
			if feizidonghuifu then return end
			if event=="CHAT_MSG_WHISPER" then
				if PIGA["QuickFollow"]["Yijiao"] then
					if UnitIsGroupLeader("player") then
						if arg1:match("队长") or arg1:match("团长") then		
							PromoteToLeader(arg5)--自动交接队长
						end
					end
				end
			end
			--
			if arg1 ~= PIGA["QuickFollow"]["Kaishi"] and arg1 ~= PIGA["QuickFollow"]["Jieshu"] then
				return 
			end
			if InCombatLockdown() then PIG_print("战斗中无法更新跟随目标") return end
			local wanjiamingpp=arg5
			local zijirealm = GetRealmName()
			local wanjia, wanjiarealm = strsplit("-", arg5);
			if wanjiarealm and zijirealm==wanjiarealm then wanjiamingpp=wanjia end
			if not UnitInParty(wanjiamingpp) and not UnitInRaid(wanjiamingpp) then return end
			local function Classes_Gensui_Z_shuaxin()
				FollowUnit(wanjiamingpp);
			end
			local function zhixinggensuiCMD()
				if zhixingzBDensui then zhixingzBDensui:Cancel() end
				if PIGA["QuickFollow"]["Qiangli"] then
					zhixingzBDensui=C_Timer.NewTicker(0.5, Classes_Gensui_Z_shuaxin)
				else
					FollowUnit(wanjiamingpp);
				end
				if PIGA["QuickFollow"]["Tishi"] then
					if event == "CHAT_MSG_RAID" or event == "CHAT_MSG_RAID_LEADER" then
						SendChatMessage("[!Pig] 开始跟随《"..wanjiamingpp.."》，发送"..PIGA["QuickFollow"]["Jieshu"].."停止跟随!", "RAID", nil);
					elseif event == "CHAT_MSG_PARTY" or event == "CHAT_MSG_PARTY_LEADER"then 
						SendChatMessage("[!Pig] 开始跟随《"..wanjiamingpp.."》，发送"..PIGA["QuickFollow"]["Jieshu"].."停止跟随!", "PARTY", nil);
					elseif event == "CHAT_MSG_WHISPER" then
						SendChatMessage("[!Pig] 我已开始跟随你，发送"..PIGA["QuickFollow"]["Jieshu"].."停止跟随！", "WHISPER", nil, wanjiamingpp)
					end
				end
			end
			if arg1 == PIGA["QuickFollow"]["Kaishi"] then
				if PIGA["QuickFollow"]["Duizhang"] then
					if UnitIsGroupLeader(wanjiamingpp,"LE_PARTY_CATEGORY_HOME") then
						zhixinggensuiCMD()
					end
				else
					zhixinggensuiCMD()
				end
			elseif arg1 == PIGA["QuickFollow"]["Jieshu"] then
				if zhixingzBDensui then zhixingzBDensui:Cancel() end
				FollowUnit("player");
				if PIGA["QuickFollow"]["Tishi"] then		
					if event == "CHAT_MSG_RAID" or event == "CHAT_MSG_RAID_LEADER" then
						SendChatMessage("[!Pig] 停止跟随《"..wanjiamingpp.."》，发送"..PIGA["QuickFollow"]["Kaishi"].."再次跟随", "RAID", nil);
					elseif event == "CHAT_MSG_PARTY" or event == "CHAT_MSG_PARTY_LEADER"then 
						SendChatMessage("[!Pig] 停止跟随《"..wanjiamingpp.."》，发送"..PIGA["QuickFollow"]["Kaishi"].."再次跟随", "PARTY", nil);
					elseif event == "CHAT_MSG_WHISPER" then
						SendChatMessage("[!Pig] 已停止跟随你，发送"..PIGA["QuickFollow"]["Kaishi"].."再次跟随！", "WHISPER", nil, wanjiamingpp);
					end
				end		
			end
		end
	end);
end
if tocversion<20000 then
	CommonFun.Gensui_B=Gensui_B_Vanilla
end