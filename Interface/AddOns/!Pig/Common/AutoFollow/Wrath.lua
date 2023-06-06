local addonName, addonTable = ...;
local match = _G.string.match
local _, _, _, tocversion = GetBuildInfo()
---
local CommonFun=addonTable.CommonFun
---被动跟随函数
local Macro_FollowName = CommonFun.Macro_FollowName
local function kaishiMsg()
	if IsInGroup() then
		if IsInRaid() then
			SendChatMessage("[!Pig] 开始接收指令,发送 "..PIGA["QuickFollow"]["Jieshu"].." 停止接收", "RAID", nil);
		else
			SendChatMessage("[!Pig] 开始接收指令,发送 "..PIGA["QuickFollow"]["Jieshu"].." 停止接收", "PARTY", nil);
		end
	end
end
local function jieshuMsg()
	if IsInGroup() then
		if IsInRaid() then
			SendChatMessage("[!Pig] 停止接收指令,发送 "..PIGA["QuickFollow"]["Kaishi"].." 开始接收", "RAID", nil);
		else
			SendChatMessage("[!Pig] 停止接收指令,发送 "..PIGA["QuickFollow"]["Kaishi"].." 开始接收", "PARTY", nil);
		end
	end
end

local function Gensui_B_Wrath(Booleans,AutoFollowF)
	local macroSlot = GetMacroIndexByName(Macro_FollowName)
	if macroSlot==0 then
		if Gensui_B_UI then Gensui_B_UI:SetChecked(false) end
		AutoFollowF.gensuiF.B_Open:SetChecked(false);
		PIG_print("没有检测到跟随宏")
		PIG_PerA["QuickFollow"]["beidongOpen"]=false
		return
	end
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
			SendChatMessage("[!Pig] 已开启自动移交队长,收到"..SLASH_TEXTTOSPEECH_WHISPER.."内容为“队长”将自动移交队长", "PARTY", nil);
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
	AutoFollowF.gensuiF:HookScript("OnEvent",function (self,event,arg1,_,_,_,arg5)
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
			if not UnitInParty(wanjiamingpp) and not UnitInRaid(wanjiamingpp) then
				EditMacro(macroSlot, nil, nil, "/follow player")
				return 
			end
			local macroSlot = GetMacroIndexByName(Macro_FollowName)
			if arg1 == PIGA["QuickFollow"]["Kaishi"] then
				if PIGA["QuickFollow"]["Duizhang"] then
					if UnitIsGroupLeader(wanjiamingpp,"LE_PARTY_CATEGORY_HOME") then
						EditMacro(macroSlot, nil, nil, "/follow "..wanjiamingpp)
					end
				else
					EditMacro(macroSlot, nil, nil, "/follow "..wanjiamingpp)
				end
			elseif arg1 == PIGA["QuickFollow"]["Jieshu"] then
				EditMacro(macroSlot, nil, nil, "/follow player")
			end
		end
	end);
end
if tocversion>19999 then
	CommonFun.Gensui_B=Gensui_B_Wrath
end