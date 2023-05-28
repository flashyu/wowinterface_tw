local addonName, addonTable = ...;
local _, _, _, tocversion = GetBuildInfo()
local Rurutiafun=addonTable.Rurutiafun
--任务完成
local AudioList = {
	{"升级音效",567431},
	{"就位音效",567478},
	{"露露语音1","Interface/AddOns/"..addonName.."_Rurutia/media/ogg/1.ogg"},
	{"露露语音2","Interface/AddOns/"..addonName.."_Rurutia/media/ogg/2.ogg"},
	{"露露语音3","Interface/AddOns/"..addonName.."_Rurutia/media/ogg/3.ogg"},
	{"露露语音4","Interface/AddOns/"..addonName.."_Rurutia/media/ogg/4.ogg"},
	{"露露语音5","Interface/AddOns/"..addonName.."_Rurutia/media/ogg/5.ogg"},
}
Rurutiafun.AudioList=AudioList
local QuestsEndFrameUI = CreateFrame("Frame");
QuestsEndFrameUI.wanchengqingkuang={}
QuestsEndFrameUI.chucijiazai=false
local function huoqurenwuzhuangtai()
	if tocversion<100000 then
		local numShownEntries, numQuests = GetNumQuestLogEntries()
		for i=1,numShownEntries do
			local title, level, suggestedGroup, isHeader, isCollapsed, isComplete, frequency, questID = GetQuestLogTitle(i)
			if not isHeader then--不是标题
				local yiwancheng = true
				--print(isComplete)
				if isComplete==1 then	
					if not QuestsEndFrameUI.wanchengqingkuang[questID] and QuestsEndFrameUI.chucijiazai then
						PlaySoundFile(AudioList[PIGA["Rurutia"]["QuestsEndAudio"]][2], "Master")	
					end
				else
					yiwancheng = false
				end
				QuestsEndFrameUI.wanchengqingkuang[questID]=yiwancheng
				-- local numQuestLogLeaderBoards,= GetNumQuestLeaderBoards(questID)
				-- for ii=1,1 do
				-- 	local description, objectiveType, isCompleted = GetQuestLogLeaderBoard(ii, i)
				-- 	print(description, objectiveType, isCompleted)
				-- end
			end
		end
	else
		local numShownEntries, numQuests = C_QuestLog.GetNumQuestLogEntries()
		for i=1,numShownEntries do
			local info = C_QuestLog.GetInfo(i)
			if not info.isHeader then--不是标题
				local objectives = C_QuestLog.GetQuestObjectives(info.questID)
				local renwuzixiang = #objectives
				if renwuzixiang>0 then
					local yiwancheng = true
					for ii=1,renwuzixiang do
						if not objectives[ii].finished then
							yiwancheng = objectives[ii].finished
							break
						end
					end
					if yiwancheng then
						if not QuestsEndFrameUI.wanchengqingkuang[info.questID] and QuestsEndFrameUI.chucijiazai then
							PlaySoundFile(AudioList[PIGA["Rurutia"]["QuestsEndAudio"]][2], "Master")	
						end		
					end
					QuestsEndFrameUI.wanchengqingkuang[info.questID]=yiwancheng
				end
			end
		end
	end
	QuestsEndFrameUI.chucijiazai=true
end
local function zhucewshijian()
	huoqurenwuzhuangtai()
	QuestsEndFrameUI:RegisterEvent("QUEST_WATCH_UPDATE")
	QuestsEndFrameUI:RegisterEvent("QUEST_WATCH_LIST_CHANGED")
	QuestsEndFrameUI:RegisterEvent("QUEST_LOG_UPDATE")
	QuestsEndFrameUI:RegisterEvent("UNIT_QUEST_LOG_CHANGED")
end
QuestsEndFrameUI:SetScript("OnEvent", function(self,event,arg1,arg2,arg3)
	if event=="PLAYER_ENTERING_WORLD" then
		C_Timer.After(6,zhucewshijian)
	else
		huoqurenwuzhuangtai()
	end
end)
function Rurutiafun.QuestsEnd_Open(Check)
	if PIGA["Rurutia"]["QuestsEnd"] then
		QuestsEndFrameUI:RegisterEvent("PLAYER_ENTERING_WORLD")
		if Check=="Check" then
			zhucewshijian()
		end
	else
		QuestsEndFrameUI:UnregisterAllEvents()
	end
end