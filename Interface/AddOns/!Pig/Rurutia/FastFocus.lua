local _, addonTable = ...;
------------
local Rurutiafun=addonTable.Rurutiafun
---快速焦点
local UnitFrame = {
	PlayerFrame,
	PetFrame,
	PartyMemberFrame1,
	PartyMemberFrame2,
	PartyMemberFrame3,
	PartyMemberFrame4,
	PartyMemberFrame1PetFrame,
	PartyMemberFrame2PetFrame,
	PartyMemberFrame3PetFrame,
	PartyMemberFrame4PetFrame,
	TargetFrame,
	TargetofTargetFrame,
	CompactRaidGroup1Member1,
	CompactRaidGroup1Member2,
	CompactRaidGroup1Member3,
	CompactRaidGroup1Member4,
	CompactRaidGroup1Member5,
	CompactRaidGroup2Member1,
	CompactRaidGroup2Member2,
	CompactRaidGroup2Member3,
	CompactRaidGroup2Member4,
	CompactRaidGroup2Member5,
	CompactRaidGroup3Member1,
	CompactRaidGroup3Member2,
	CompactRaidGroup3Member3,
	CompactRaidGroup3Member4,
	CompactRaidGroup3Member5,
	CompactRaidGroup4Member1,
	CompactRaidGroup4Member2,
	CompactRaidGroup4Member3,
	CompactRaidGroup4Member4,
	CompactRaidGroup4Member5,
	CompactRaidGroup5Member1,
	CompactRaidGroup5Member2,
	CompactRaidGroup5Member3,
	CompactRaidGroup5Member4,
	CompactRaidGroup5Member5,
	CompactRaidGroup6Member1,
	CompactRaidGroup6Member2,
	CompactRaidGroup6Member3,
	CompactRaidGroup6Member4,
	CompactRaidGroup6Member5,
	CompactRaidGroup7Member1,
	CompactRaidGroup7Member2,
	CompactRaidGroup7Member3,
	CompactRaidGroup7Member4,
	CompactRaidGroup7Member5,
	CompactRaidGroup8Member1,
	CompactRaidGroup8Member2,
	CompactRaidGroup8Member3,
	CompactRaidGroup8Member4,
	CompactRaidGroup8Member5,
	--
	ElvUF_Player,
	ElvUF_Target,
	ElvUF_TargetTarget,
	ElvUF_PartyGroup1UnitButton1,
	ElvUF_PartyGroup1UnitButton2,
	ElvUF_PartyGroup1UnitButton3,
	ElvUF_PartyGroup1UnitButton4,
	ElvUF_PartyGroup1UnitButton5,
	ElvUF_Raid40Group1UnitButton1,
	ElvUF_Raid40Group1UnitButton2,
	ElvUF_Raid40Group1UnitButton3,
	ElvUF_Raid40Group1UnitButton4,
	ElvUF_Raid40Group1UnitButton5,
	ElvUF_Raid40Group2UnitButton1,
	ElvUF_Raid40Group2UnitButton2,
	ElvUF_Raid40Group2UnitButton3,
	ElvUF_Raid40Group2UnitButton4,
	ElvUF_Raid40Group2UnitButton5,
	ElvUF_Raid40Group3UnitButton1,
	ElvUF_Raid40Group3UnitButton2,
	ElvUF_Raid40Group3UnitButton3,
	ElvUF_Raid40Group3UnitButton4,
	ElvUF_Raid40Group3UnitButton5,
	ElvUF_Raid40Group4UnitButton1,
	ElvUF_Raid40Group4UnitButton2,
	ElvUF_Raid40Group4UnitButton3,
	ElvUF_Raid40Group4UnitButton4,
	ElvUF_Raid40Group4UnitButton5,
	ElvUF_Raid40Group5UnitButton1,
	ElvUF_Raid40Group5UnitButton2,
	ElvUF_Raid40Group5UnitButton3,
	ElvUF_Raid40Group5UnitButton4,
	ElvUF_Raid40Group5UnitButton5,
	ElvUF_Raid40Group6UnitButton1,
	ElvUF_Raid40Group6UnitButton2,
	ElvUF_Raid40Group6UnitButton3,
	ElvUF_Raid40Group6UnitButton4,
	ElvUF_Raid40Group6UnitButton5,
	ElvUF_Raid40Group7UnitButton1,
	ElvUF_Raid40Group7UnitButton2,
	ElvUF_Raid40Group7UnitButton3,
	ElvUF_Raid40Group7UnitButton4,
	ElvUF_Raid40Group7UnitButton5,
	ElvUF_Raid40Group8UnitButton1,
	ElvUF_Raid40Group8UnitButton2,
	ElvUF_Raid40Group8UnitButton3,
	ElvUF_Raid40Group8UnitButton4,
	ElvUF_Raid40Group8UnitButton5,
}
local function zhixingshezhiFocus(Frame)
	local gonegnengKEY = PIG["Rurutia"]["FastFocusKEY"].."-type1"
	Frame:SetAttribute(gonegnengKEY,"macro")
	Frame:SetAttribute("macrotext","/focus mouseover")
end
function Rurutiafun.FastFocus_Open()
	for k,v in pairs(UnitFrame) do
		zhixingshezhiFocus(v)
	end
end
---
Rurutiafun.SetKeyList = {
	{"SHIFT+左键","shift"},
	{"CTRL+左键","ctrl"},
	{"ALT+左键","alt"},
}
Rurutiafun.SetKeyListName = {
	["shift"]="SHIFT+左键",
	["ctrl"]="CTRL+左键",
	["alt"]="ALT+左键",
}

--清除
function Rurutiafun.FastClearFocus_Open()
	local gonegnengKEY = PIG["Rurutia"]["FastFocusKEY"].."-type1"
	FocusFrame:SetAttribute(gonegnengKEY,"macro")
	FocusFrame:SetAttribute("macrotext","/clearfocus")
end