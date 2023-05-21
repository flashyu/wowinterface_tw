local _, addonTable = ...;
local _, _, _, tocversion = GetBuildInfo()
local CommonFun=addonTable.CommonFun
local InteractionFun=addonTable.CommonFun.Interaction
----自动对话
local function duorenwuduihua()
	--交任务
	if PIG['Interaction']['AutoJiaorenwu'] then
		if tocversion<30000 then
			local activeQuestCount = GetNumActiveQuests();
			local gossipActiveQuestCount = GetNumGossipActiveQuests();
			local gossipActiveQuests = { GetGossipActiveQuests() };
			for i=1, activeQuestCount do
				local title, isComplete = GetActiveTitle(i);
				if (isComplete) then
					SelectActiveQuest(i);
				end
			end
			for i=1, gossipActiveQuestCount do
				local propertyOffset = 6 * (i - 1);
				local isComplete = gossipActiveQuests[4 + propertyOffset];
			
				if (isComplete) then
					SelectGossipActiveQuest(i);
				end
			end
		else
			local activeQuestCount =C_GossipInfo.GetNumActiveQuests()
			local gossipActiveQuests = { C_GossipInfo.GetActiveQuests() };
			for i=1,activeQuestCount do
				if gossipActiveQuests[i] then
					for _,vv in pairs(gossipActiveQuests[i]) do
						if (vv.isComplete) then
							C_GossipInfo.SelectActiveQuest(vv.questID)
						end
					end
				end
			end
		end
	end
	--接任务
	if PIG['Interaction']['AutoJierenwu'] then
		if tocversion<30000 then
			local availableQuestCount = GetNumAvailableQuests();
			local gossipAvailableQuestCount = GetNumGossipAvailableQuests();
			local gossipAvailableQuests = { GetGossipAvailableQuests() };
			for i=1, availableQuestCount do
				local isTrivial = IsAvailableQuestTrivial(i);
				if (not isTrivial) then
					SelectAvailableQuest(i);
				end
			end
			for i=1, gossipAvailableQuestCount do
				local propertyOffset = 7 * (i - 1);
				local isTrivial = gossipAvailableQuests[3 + propertyOffset];
				if (not isTrivial) then
					SelectGossipAvailableQuest(i);
				end
			end
		else
			local availableQuestCount  = C_GossipInfo.GetNumAvailableQuests();
			local gossipAvailableQuests = { C_GossipInfo.GetAvailableQuests() };
			for i=1,availableQuestCount do
				if gossipAvailableQuests[i] then
					for _,vv in pairs(gossipAvailableQuests[i]) do
						if (not vv.isTrivial) then
							C_GossipInfo.SelectAvailableQuest(vv.questID)
						end
					end
				end
			end
		end
	end
end
local function Eventduihua(self,event)
	--print(event)
	--接
	if event=="QUEST_DETAIL" then
		if PIG['Interaction']['AutoJierenwu'] then
			AcceptQuest()
		end
	end
	--交
	if event=="QUEST_PROGRESS" then
		if PIG['Interaction']['AutoJiaorenwu'] then
			if (IsQuestCompletable()) then
				CompleteQuest();
			end
		end
	end
	if event=="QUEST_COMPLETE" then
		if PIG['Interaction']['AutoJiaorenwu'] then
			if GetNumQuestChoices() <= 1 then
				GetQuestReward(1);
			end
		end
	end
	--多任务
	if event=="QUEST_GREETING" then
		duorenwuduihua()
	end
	--对话/任务
	if event=="GOSSIP_SHOW" then
		if tocversion<30000 then	
			local kejierenwu = GetNumGossipActiveQuests() --返回此 NPC 提供的任务（您尚未参与）的数量
			local jiaofurenwu = GetNumGossipAvailableQuests() --返回你最终应该交给这个 NPC 的活动任务的数量。
			local zongjirenwu=kejierenwu+jiaofurenwu
			if zongjirenwu>0 then
				duorenwuduihua()
			else
				if PIG['Interaction']['AutoDialogue'] then
					local numOptions = GetNumGossipOptions() --NPC对话选项
					if numOptions==1 then
						SelectGossipOption(1)
					end
				end
			end
		else	
			local kejierenwu = C_GossipInfo.GetNumActiveQuests() --返回此 NPC 提供的任务（您尚未参与）的数量
			local jiaofurenwu = C_GossipInfo.GetNumAvailableQuests() --返回你最终应该交给这个 NPC 的活动任务的数量。
			local zongjirenwu=kejierenwu+jiaofurenwu
			if zongjirenwu>0 then
				duorenwuduihua()
			else
				if PIG['Interaction']['AutoDialogue'] then
					local options = C_GossipInfo.GetOptions() --NPC对话选项
					local zongjirenwu=#options
					if zongjirenwu==1 then
						C_GossipInfo.SelectOption(options[1].gossipOptionID)
					end
				end
			end
		end	
	end
end
local zidongduihuaFFF = CreateFrame("Frame")
zidongduihuaFFF:SetScript("OnEvent", Eventduihua)
function CommonFun.Interaction.zidongduihua()
	if PIG['Interaction']['AutoDialogue'] or PIG['Interaction']['AutoJierenwu'] or PIG['Interaction']['AutoJiaorenwu'] then
		zidongduihuaFFF:RegisterEvent("GOSSIP_SHOW")
		zidongduihuaFFF:RegisterEvent("QUEST_DETAIL")--显示任务详情时
		zidongduihuaFFF:RegisterEvent("QUEST_FINISHED")--任务框架更改
		zidongduihuaFFF:RegisterEvent("QUEST_PROGRESS")--当玩家与 NPC 谈论任务状态并且尚未点击完成按钮时触发
		zidongduihuaFFF:RegisterEvent("QUEST_GREETING")-- 与提供或接受多个任务（即有多个活动或可用任务）的 NPC 交谈时触发
		zidongduihuaFFF:RegisterEvent("QUEST_COMPLETE") --任务对话框显示了奖励和完成按钮可用
	else
		zidongduihuaFFF:UnregisterEvent("GOSSIP_SHOW")
		zidongduihuaFFF:UnregisterEvent("QUEST_DETAIL")
		zidongduihuaFFF:UnregisterEvent("QUEST_FINISHED")
		zidongduihuaFFF:UnregisterEvent("QUEST_PROGRESS")
		zidongduihuaFFF:UnregisterEvent("QUEST_GREETING")
		zidongduihuaFFF:UnregisterEvent("QUEST_COMPLETE") 
	end
end
--=====================
local zidongjieshouzuduiyaoqingFFF = CreateFrame("FRAME") 
zidongjieshouzuduiyaoqingFFF:SetScript("OnEvent", function(self, event, arg1, arg2)
	if event=="PARTY_INVITE_REQUEST" then
		AcceptGroup()
		StaticPopup_Hide("PARTY_INVITE")
	end
	if event=="RESURRECT_REQUEST" then
		AcceptResurrect()
		StaticPopup_Hide("RESURRECT")
	end
end)
function CommonFun.Interaction.YaoqingFuhuo()
	if PIG['Interaction']['AutoJyaoqing'] then
		zidongjieshouzuduiyaoqingFFF:RegisterEvent("PARTY_INVITE_REQUEST")
	else
		zidongjieshouzuduiyaoqingFFF:UnregisterEvent("PARTY_INVITE_REQUEST")
	end
	if PIG['Interaction']['AutoFuhuo'] then
		zidongjieshouzuduiyaoqingFFF:RegisterEvent("RESURRECT_REQUEST")
	else
		zidongjieshouzuduiyaoqingFFF:UnregisterEvent("RESURRECT_REQUEST")
	end
end