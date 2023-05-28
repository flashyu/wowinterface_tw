local _, addonTable = ...;
local _, _, _, tocversion = GetBuildInfo()
local FramePlusfun=addonTable.FramePlusfun
--------
local UINameList={
	ProfessionsFrame,--专业面板
	CharacterFrame,
	SpellBookFrame,
	QuestLogFrame,
	WorldMapFrame,
	FriendsFrame,
	LFGParentFrame,
	PVEFrame,
	ChannelFrame,--聊天频道
	AddonList,
	ContainerFrameCombinedBags,
}
local UINameList_AddOn={
	{"MacroFrame","Blizzard_MacroUI",},--宏命令
	{"AchievementFrame","Blizzard_AchievementUI",},--成就UI
	{"CommunitiesFrame","Blizzard_Communities",},--公会与社区
	{"CollectionsJournal","Blizzard_Collections",},--藏品
	{"EncounterJournal","Blizzard_EncounterJournal",},--冒险手册
	{"PlayerTalentFrame","Blizzard_TalentUI",},--天赋UI 
	{"TradeSkillFrame","Blizzard_TradeSkillUI",},--专业面板
	{"CraftFrame","Blizzard_CraftUI",},--附魔
	{"InspectFrame","Blizzard_InspectUI",},--观察
}
local function Moving(Frame,MovingUI)
	if Frame then
		local MovingUI = MovingUI or Frame
		MovingUI:EnableMouse(true)
		MovingUI:SetMovable(true)
	 	MovingUI:SetClampedToScreen(true)
	 	Frame:RegisterForDrag("LeftButton")
	    Frame:SetScript("OnDragStart",function()
	        MovingUI:StartMoving();
	    end)
	    Frame:SetScript("OnDragStop",function()
	        MovingUI:StopMovingOrSizing()
	    end)
	end
end
--
function FramePlusfun.yidongUI()
	if not PIGA['FramePlus']['yidongUI'] then return end
	for k,v in pairs(UINameList) do
		Moving(v)
	end
	for k,v in pairs(UINameList_AddOn) do
		if IsAddOnLoaded(v[2]) then
			if AchievementFrame and v[1]==AchievementFrame:GetName() then
				Moving(AchievementFrameHeader,_G[v[1]])
			else
		        Moving(_G[v[1]],_G[v[1]])
		    end
	    else
	        local shequFRAME = CreateFrame("FRAME")
	        shequFRAME:RegisterEvent("ADDON_LOADED")
	        shequFRAME:SetScript("OnEvent", function(self, event, arg1)
	            if arg1 == v[2] then
	            	if arg1=="Blizzard_Collections" then
	            		local checkBox = _G.WardrobeTransmogFrame.ToggleSecondaryAppearanceCheckbox;
					    local label = checkBox.Label;
					    label:ClearAllPoints();
					    label:SetPoint('LEFT', checkBox, 'RIGHT', 2, 1);
					    label:SetPoint('RIGHT', checkBox, 'RIGHT', 160, 1);
					end
	                if AchievementFrame and v[1]==AchievementFrame:GetName() then
						Moving(AchievementFrameHeader,_G[v[1]])
					else
				        Moving(_G[v[1]],_G[v[1]])
				    end
	                shequFRAME:UnregisterEvent("ADDON_LOADED")
	            end
	        end)
	    end
	end
end