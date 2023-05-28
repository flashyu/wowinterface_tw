local _, addonTable = ...;
local L=addonTable.locale
local gsub = _G.string.gsub 
local find = _G.string.find
local floor =floor
----------
local Create=addonTable.Create
local PIGFrame=Create.PIGFrame
local PIGLine=Create.PIGLine
local PIGButton = Create.PIGButton
local PIGDownMenu=Create.PIGDownMenu
local PIGCheckbutton=Create.PIGCheckbutton
local PIGOptionsList=Create.PIGOptionsList
local PIGFontString=Create.PIGFontString
local PIGFontStringBG=Create.PIGFontStringBG
--
local fuFrame = PIGOptionsList(L["DEBUG_TABNAME"],"BOT")
--內存CPU监控
fuFrame.OPENJK = PIGButton(fuFrame,{"TOPLEFT",fuFrame,"TOPLEFT",20,-20},{150,24},L["DEBUG_BUTNAME"])
fuFrame.OPENJK:SetScript("OnClick", function (self)
	Pig_OptionsUI:Hide()
	AddOnCPU_UI:Show()
end);
SetCVar("scriptProfile", 0)--默认关闭cpu監控
local AddOnCPU=PIGFrame(UIParent,{"CENTER",UIParent,"CENTER",0,0},{360,494},"AddOnCPU_UI",true)
AddOnCPU:PIGSetBackdrop()
AddOnCPU:PIGSetMovable()
AddOnCPU:PIGClose()
AddOnCPU.biaoti=PIGFontString(AddOnCPU,{"TOP", AddOnCPU, "TOP", 0, -4},L["DEBUG_BUTNAME"])
PIGLine(AddOnCPU,"TOP",-20)
--
AddOnCPU.sort=21--排序
local hang_Height,hang_NUM  = 22, 18;
local function Get_AddOnData()
	AddOnCPU.AddOnData={}
	AddOnCPU.NumAddOns=0
	AddOnCPU.NumMemory=0
	AddOnCPU.NumCPU="N/A"
	UpdateAddOnMemoryUsage()
	if GetCVarInfo("scriptProfile")=="1" then
		UpdateAddOnCPUUsage()
		AddOnCPU.NumCPU=0
	end
	local addhejinum = GetNumAddOns()
	AddOnCPU.NumAddOns=addhejinum
	for id=1,addhejinum do	
		local name=GetAddOnInfo(id)
		local Memory=GetAddOnMemoryUsage(id)
		local adddata = {name,floor(Memory),"N/A",false}
		AddOnCPU.NumMemory=AddOnCPU.NumMemory+Memory
		if GetCVarInfo("scriptProfile")=="1" then
			local CPUUsage=GetAddOnCPUUsage(id)
			adddata[3]=floor(CPUUsage)
			AddOnCPU.NumCPU=AddOnCPU.NumCPU+CPUUsage
		end
		table.insert(AddOnCPU.AddOnData,adddata)
		if IsAddOnLoaded(id) then
			adddata[4]=true
		end
	end
	AddOnCPU.NumMemory=floor(AddOnCPU.NumMemory)
	if GetCVarInfo("scriptProfile")=="1" then
		AddOnCPU.NumCPU=floor(AddOnCPU.NumCPU)
	end
end
local function AddOn_Update(self)
	for id=1,hang_NUM do
		_G["AddOnCPU_"..id]:Hide()
	end
	local shujuheji=AddOnCPU.AddOnData
	if AddOnCPU.sort==21 then
		table.sort(shujuheji,function(a,b)
			return a[2]>b[2]
		end)
	elseif AddOnCPU.sort==31 then
		table.sort(shujuheji,function(a,b)
			return a[3]>b[3]
		end)
	end
	FauxScrollFrame_Update(self, #shujuheji, hang_NUM, hang_Height);
	local offset = FauxScrollFrame_GetOffset(self);
	for id=1,hang_NUM do
		local dangqianID = id+offset
		if shujuheji[dangqianID] then
			local tetf = _G["AddOnCPU_"..id]
			tetf:Show()

			tetf.tet1:SetText(shujuheji[dangqianID][1]);
			if shujuheji[dangqianID][4] then
				tetf.tet1:SetTextColor(0, 1, 0, 1)
			else
				tetf.tet1:SetTextColor(0.5, 0.5, 0.5, 1)
			end
			tetf.tet2:SetText(shujuheji[dangqianID][2]);
			tetf.tet3:SetText(shujuheji[dangqianID][3]);
		end
	end
	AddOnCPU.NR.buttet1:SetText(AddOnCPU.NumAddOns..L["DEBUG_ADDNUM"]);
	AddOnCPU.NR.buttet2:SetText(AddOnCPU.NumMemory.."k");
	AddOnCPU.NR.buttet3:SetText(AddOnCPU.NumCPU.."ms");
end
AddOnCPU.NR=PIGFrame(AddOnCPU)
AddOnCPU.NR:SetPoint("TOPLEFT", AddOnCPU, "TOPLEFT", 4, -70)
AddOnCPU.NR:SetPoint("BOTTOMRIGHT", AddOnCPU, "BOTTOMRIGHT", -4, 24)
AddOnCPU.NR:PIGSetBackdrop()
local nrww = AddOnCPU.NR:GetWidth()
AddOnCPU.NR.tet1=PIGFontStringBG(AddOnCPU.NR,{"BOTTOMLEFT", AddOnCPU.NR, "TOPLEFT", 0,-1},L["DEBUG_ADD"],{nrww*0.5,22})
AddOnCPU.NR.tet2 = PIGButton(AddOnCPU.NR,{"LEFT", AddOnCPU.NR.tet1, "RIGHT", 0,0},{nrww*0.25,22},L["DEBUG_MEMORY"].."(k)")
AddOnCPU.NR.tet2:SetScript("OnClick", function ()
	AddOnCPU.sort=21
	AddOn_Update(AddOnCPU.NR.Scroll)
end);
AddOnCPU.NR.tet3 = PIGButton(AddOnCPU.NR,{"LEFT", AddOnCPU.NR.tet2, "RIGHT", 0,0},{nrww*0.25,22},"CPU(ms)")
AddOnCPU.NR.tet3:SetScript("OnClick", function ()
	if GetCVarInfo("scriptProfile")=="1" then
		AddOnCPU.sort=31
		AddOn_Update(AddOnCPU.NR.Scroll)
	end
end);
AddOnCPU.NR.buttet1=PIGFontStringBG(AddOnCPU.NR,{"TOPLEFT", AddOnCPU.NR, "BOTTOMLEFT", 0,1},"",{nrww*0.5,22})
AddOnCPU.NR.buttet2=PIGFontStringBG(AddOnCPU.NR,{"LEFT", AddOnCPU.NR.buttet1, "RIGHT", 0,0},"",{nrww*0.25,22})
AddOnCPU.NR.buttet3=PIGFontStringBG(AddOnCPU.NR,{"LEFT", AddOnCPU.NR.buttet2, "RIGHT", 0,0},"",{nrww*0.25,22})
AddOnCPU.NR.Scroll = CreateFrame("ScrollFrame",nil,AddOnCPU.NR, "FauxScrollFrameTemplate");  
AddOnCPU.NR.Scroll:SetPoint("TOPLEFT",AddOnCPU.NR,"TOPLEFT",0,-1);
AddOnCPU.NR.Scroll:SetPoint("BOTTOMRIGHT",AddOnCPU.NR,"BOTTOMRIGHT",-24,1);
AddOnCPU.NR.Scroll:SetScript("OnVerticalScroll", function(self, offset)
    FauxScrollFrame_OnVerticalScroll(self, offset, hang_Height, AddOn_Update)
end)

for id = 1, hang_NUM do
	local hang = CreateFrame("Frame", "AddOnCPU_"..id, AddOnCPU.NR.Scroll:GetParent());
	hang:SetSize(AddOnCPU.NR:GetWidth()-24, hang_Height);
	if id==1 then
		hang:SetPoint("TOP",AddOnCPU.NR.Scroll,"TOP",0,0);
	else
		hang:SetPoint("TOP",_G["AddOnCPU_"..(id-1)],"BOTTOM",0,0);
	end
	hang.tet1 = PIGFontString(hang,{"LEFT", hang, "LEFT", 2,0})
	hang.tet1:SetSize(nrww*0.5-2,hang_Height)
	hang.tet1:SetJustifyH("LEFT")
	hang.tet2 = PIGFontString(hang,{"LEFT", hang.tet1, "RIGHT", 2,0})
	hang.tet2:SetSize(nrww*0.25-2,hang_Height)
	hang.tet2:SetJustifyH("LEFT")
	hang.tet3 = PIGFontString(hang,{"LEFT", hang.tet2, "RIGHT", 2,0})
	hang.tet3:SetSize(nrww*0.25-2,hang_Height)
	hang.tet3:SetJustifyH("LEFT")
end
AddOnCPU.NR:SetScript("OnShow", function (self)
	Get_AddOnData()
	AddOn_Update(AddOnCPU.NR.Scroll)
end);
AddOnCPU.CPU_OPEN=PIGCheckbutton(AddOnCPU,{"TOPLEFT",AddOnCPU,"TOPLEFT",6,-21},{L["DEBUG_CPUUSAGE"],L["DEBUG_CPUUSAGETIPS"]})
AddOnCPU.CPU_OPEN:SetScript("OnClick", function (self)
	if self:GetChecked() then
		SetCVar("scriptProfile", "1")
	else
		SetCVar("scriptProfile", "0")
	end
	Get_AddOnData()
	AddOn_Update(AddOnCPU.NR.Scroll)
end);
AddOnCPU.shuaxin = PIGButton(AddOnCPU,{"TOPLEFT",AddOnCPU,"TOPLEFT",130,-25},{60,20},L["DEBUG_REFRESH"])
AddOnCPU.shuaxin:SetScript("OnClick", function (self)
	Get_AddOnData()
	AddOn_Update(AddOnCPU.NR.Scroll)
end);
AddOnCPU.CZ = PIGButton(AddOnCPU,{"TOPLEFT",AddOnCPU,"TOPLEFT",210,-25},{60,20},L["DEBUG_RESET"])
AddOnCPU.CZ:SetScript("OnClick", function (self)
	ResetCPUUsage()
	-- debugprofilestart()
	-- debugprofilestop()
	Get_AddOnData()
	AddOn_Update(AddOnCPU.NR.Scroll)
end);
AddOnCPU.COLLECT = PIGButton(AddOnCPU,{"TOPLEFT",AddOnCPU,"TOPLEFT",290,-25},{60,20},L["DEBUG_COLLECT"])
AddOnCPU.COLLECT:SetScript("OnClick", function (self)
	collectgarbage()--回收内存
	Get_AddOnData()
	AddOn_Update(AddOnCPU.NR.Scroll)
end);
AddOnCPU.COLLECT:Disable()
AddOnCPU.COLLECT:SetMotionScriptsWhileDisabled(true)
AddOnCPU.COLLECT:SetScript("OnEnter", function (self)
	GameTooltip:ClearLines();
	GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT",0,0);
	GameTooltip:AddLine(L["LIB_TIPS"])
	GameTooltip:AddLine(L["DEBUG_COLLECTTIPS"])
	GameTooltip:Show();
end);
AddOnCPU.COLLECT:SetScript("OnLeave", function ()
	GameTooltip:ClearLines();
	GameTooltip:Hide() 
end);
--------------------------------
fuFrame.errorUI = PIGButton(fuFrame,{"TOPLEFT",fuFrame,"TOPLEFT",20,-100},{120,24},L["DEBUG_ERRORLOG"])
fuFrame.errorUI:SetScript("OnClick", function (self)
	Pig_OptionsUI:Hide()
	Bugcollect_UI:Show()
end);
--
fuFrame.tishi =PIGFontString(fuFrame,{"LEFT", fuFrame.errorUI, "RIGHT", 10, 0},L["DEBUG_OPENERRORLOGCMD"].."/per")
fuFrame.tishi:SetTextColor(1, 1, 0, 1);
--
fuFrame.tishiCK=PIGCheckbutton(fuFrame,{"LEFT",fuFrame.tishi,"RIGHT", 10, 0},{L["DEBUG_ERRORCHECK"],L["DEBUG_ERRORTOOLTIP"]})
fuFrame.tishiCK:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["Error"]["ErrorTishi"] = true
	else
		PIGA["Error"]["ErrorTishi"] = false
	end
end);
---------
fuFrame.ErrCB=PIGCheckbutton(fuFrame,{"TOPLEFT",fuFrame.errorUI,"BOTTOMLEFT", 0, -20},{L["DEBUG_SCRIPTCHECK"],L["DEBUG_SCRIPTTOOLTIP"]})
fuFrame.ErrCB:SetScript("OnClick", function (self)
	if self:GetChecked() then
		SetCVar("scriptErrors", "1")
	else
		SetCVar("scriptErrors", "0")
	end
end);
---
local taintlist = {"0","1","2","11"}
local taintlistmenu = {["0"]=L["DEBUG_TAINT0"],["1"]=L["DEBUG_TAINT1"],
	["2"]=L["DEBUG_TAINT2"],["11"]=L["DEBUG_TAINT11"],
}
fuFrame.taintLog=PIGDownMenu(fuFrame,{"TOPLEFT",fuFrame.ErrCB,"BOTTOMLEFT",70,-20},{400,24})
fuFrame.taintLog.tishi=PIGFontString(fuFrame.taintLog,{"RIGHT", fuFrame.taintLog, "LEFT", 0, 0},L["DEBUG_TAINTLOG"])
fuFrame.taintLog.tishi:SetTextColor(1, 1, 0, 1);
function fuFrame.taintLog:PIGDownMenu_Update_But(self)
	local info = {}
	info.func = self.PIGDownMenu_SetValue
	for i=1,#taintlist,1 do
	    info.text, info.arg1 = taintlistmenu[taintlist[i]], taintlist[i]
	    info.checked = taintlist[i]==GetCVar("taintLog")
		fuFrame.taintLog:PIGDownMenu_AddButton(info)
	end 
end
function fuFrame.taintLog:PIGDownMenu_SetValue(value,arg1,arg2)
	fuFrame.taintLog:PIGDownMenu_SetText(value)
	SetCVar("taintLog", arg1)
	PIGCloseDropDownMenus()
end
--
fuFrame.NPCID = PIGButton(fuFrame,{"TOPLEFT",fuFrame,"TOPLEFT",20,-350},{125,24},L["DEBUG_GETGUIDBUT"])
fuFrame.NPCID:SetScript("OnClick", function (self)
	print(UnitGUID("target"))
end);
-----------------
fuFrame:SetScript("OnShow", function()
	if GetCVar("scriptErrors")=="1" then
		fuFrame.ErrCB:SetChecked(true)
	end
	fuFrame.tishiCK:SetChecked(PIGA["Error"]["ErrorTishi"])
	fuFrame.taintLog:PIGDownMenu_SetText(taintlistmenu[GetCVar("taintLog")])
end);
---创建常用3宏
local hongNameList = {["RL"]={"/Reload",132096},["FST"]={"/fstack",132089},["EVE"]={"/eventtrace",132092}}
fuFrame.New_hong = PIGButton(fuFrame,{"BOTTOMLEFT",fuFrame,"BOTTOMLEFT",20,20},{100,24},"ADD_FWR")
fuFrame.New_hong:SetScript("OnClick", function ()
	for k,v in pairs(hongNameList) do
		local macroSlot = GetMacroIndexByName(k)
		if macroSlot>0 then
			EditMacro(macroSlot, nil, v[2], v[1])
		else
			local global, perChar = GetNumMacros()
			if global<120 then
				CreateMacro(k, v[2], v[1], nil)
			else
				PIG_print(L["LIB_MACROERR"]);
			end
		end
	end
end)