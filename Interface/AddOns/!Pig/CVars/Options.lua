local addonName, addonTable = ...;
local L=addonTable.locale
local _, _, _, tocversion = GetBuildInfo()
---
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
---
local fuFrame = PIGOptionsList(L["CVAR_TABNAME"],"TOP")
--
local DownY=30
local RTabFrame =Create.PIGOptionsList_RF(fuFrame,DownY)
--
local CVarsF,CVarstabbut =PIGOptionsList_R(RTabFrame,L["CVAR_TABNAME1"],70)
CVarsF:Show()
CVarstabbut:Selected()
----------------------
local function ShowmorenV(self,CVarName,text,textName,beishu)
	local beishu=beishu or 10
	local sishewuru = 5/beishu
	local shezhiVV= tonumber(GetCVar(CVarName))
	local shezhiVV= tostring(shezhiVV)
	self:SetValue(shezhiVV);
	if text and textName then
		self.Text:SetText(textName[shezhiVV]..text.."("..shezhiVV..")");
	elseif text then
		self.Text:SetText(shezhiVV..text);
	elseif textName then
		self.Text:SetText(textName[shezhiVV].."("..shezhiVV..")");
	else
		self.Text:SetText(shezhiVV);
	end
	self:HookScript("OnValueChanged", function(self)
		self.Valuepig=self:GetValue()
		if self:GetValueStep()<1 then
			self.Valuepig = self.Valuepig*beishu
			self.Valuepig = floor(self.Valuepig+sishewuru)/beishu
		else
			self.Valuepig = tostring(self.Valuepig)
		end
		if text and textName then
			self.Text:SetText(textName[self.Valuepig]..text.."("..self.Valuepig..")");
		elseif text then
			self.Text:SetText(self.Valuepig..text);
		elseif textName then
			self.Text:SetText(textName[self.Valuepig].."("..self.Valuepig..")");
		else
			self.Text:SetText(self.Valuepig);	
		end
		SetCVar(CVarName,self.Valuepig)
	end)
end
local function ADD_tishi(fujiF,CVarsV,pianyiX,pianyiY)
	fujiF.tishi = CreateFrame("Frame", nil, fujiF);
	fujiF.tishi:SetSize(28,28);
	fujiF.tishi:SetPoint("LEFT", fujiF.Text, "RIGHT", pianyiX,pianyiY);
	fujiF.tishi.Texture = fujiF.tishi:CreateTexture(nil, "BORDER");
	fujiF.tishi.Texture:SetTexture("interface/common/help-i.blp");
	fujiF.tishi.Texture:SetAllPoints(fujiF.tishi)
	fujiF.tishi:SetScript("OnEnter", function (self)
		GameTooltip:ClearLines();
		GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT",0,0);
		GameTooltip:AddLine("提示：")
		if CVarsV=="反河蟹" then
			GameTooltip:AddLine("\124cff00ff00此设置需退出战网和WOW客户端重新进入生效!\124r")
		else
			GameTooltip:AddLine("\124cff00ff00此设置需重载界面才能生效!\124r")
		end
		GameTooltip:Show();
	end);
	fujiF.tishi:SetScript("OnLeave", function ()
		GameTooltip:ClearLines();
		GameTooltip:Hide() 
	end);
end
----------
local chaoyuanshijuVVV = {"cameraDistanceMaxZoomFactor","2.6"}
if tocversion<80000 then
	chaoyuanshijuVVV = {"cameraDistanceMaxZoomFactor","4"}
end
local CVarsList1 = {
	{"自动比较装备","alwaysCompareItems","1","0","开启后在查看装备时会自动和身上装备对比",false},
	--{"聊天栏显示职业颜色","chatClassColorOverride","0","1","聊天框发言的玩家姓名会根据职业染色",false},
	{"显示目标所有增减益","noBuffDebuffFilterOnTarget","1","0","开启后目标所有增减益都会显示在目标头像，关闭则只显示自己施加的效果",false},
	{"显示增益持续时间","buffDurations","1","0","开启后显示增益持续时间",false},
	{"显示预估治疗量","predictedHealth","1","0","在血量框架上显示预估治疗量",false},
	{"显示你对目标治疗信息","floatingCombatTextCombatHealing","1","0","在目标人物显示你对目标治疗数字",false},
	{"显示你对目标伤害信息","floatingCombatTextCombatDamage","1","0","在目标人物显示你对目标伤害数字",false},
	{"目标伤害旧版弹出方式","floatingCombatTextCombatDamageDirectionalScale","0","1","开启后伤害弹出数字将会从目标上方弹出，而不是发散样式",false},
	---
	{"显示BUFF持续时间","buffDurations","1","0","显示BUFF持续时间",true},
	{"超远视距(变焦系数)",chaoyuanshijuVVV[1],chaoyuanshijuVVV[2],GetCVarDefault(chaoyuanshijuVVV[1]),"开启后视野可以拉的更远, 正式服在<选项→图形→镜头视野范围>也可以设置距离",false},
	{"按下按键时施法","ActionButtonUseKeyDown","1","0","开启后在你按下按键时候就会触发施法，正常是在抬起按键才触发，这样能略微增加你的施法速度",true},
	{"屏幕泛光","ffxGlow","1","0","开启后屏幕会微微泛光，觉得晃眼或者刺眼情况下你可能需要关闭此效果",false},
	{"死亡特效","ffxDeath","1","0","开启后死亡时屏幕是黑白，关闭后是彩色",false},
	{"新版TAB","TargetNearestUseNew","1","0","使用7.2版后的TAB选取目标功能,战斗中不会Tab到战斗外目标,不会Tab到你的角色或镜头看不到的目标。\n关闭后将启用旧版的选取最近目标。",false},
	{"反河蟹","overrideArchive","0","1","恢复某些模型的和谐之前的样子，例如骷髅药水不再是长肉的骷髅",true},
}
if tocversion>100000 then
	table.insert(CVarsList1,9,{"最大镜头视野范围","cameraFov","90",GetCVarDefault("cameraFov"),"启用最大镜头视野范围",false})
end
for i=1,#CVarsList1 do
	local CVarsCB = PIGCheckbutton_R(CVarsF,{CVarsList1[i][1],CVarsList1[i][5]},true,7)
	if CVarsList1[i][6] then
		ADD_tishi(CVarsCB,CVarsList1[i][1],-2,0)
	end
	CVarsCB:SetScript("OnClick", function (self)
		if self:GetChecked() then
			SetCVar(CVarsList1[i][2], CVarsList1[i][3])
			if CVarsList1[i][2]==chaoyuanshijuVVV[1] then
				PIGA["CVars"]["MaxZoom"]=true
			end
		else
			SetCVar(CVarsList1[i][2], CVarsList1[i][4])
			if CVarsList1[i][2]==chaoyuanshijuVVV[1] then
				PIGA["CVars"]["MaxZoom"]=false
			end
		end
		if CVarsList1[i][6] then
			Pig_Options_RLtishi_UI:Show()
		end
	end)
	CVarsCB:HookScript("OnShow", function (self)
		if GetCVar(CVarsList1[i][2])==CVarsList1[i][3] then
			self:SetChecked(true);
		end
	end)
end
CVarsF.fudongScale = PIGSlider(CVarsF,{"TOPLEFT",CVarsF,"TOPLEFT",120,-320},{100,14},{1,3,0.1})
CVarsF.fudongScale.t = PIGFontString(CVarsF.fudongScale,{"RIGHT",CVarsF.fudongScale,"LEFT",-4,0},"浮动信息大小");
ShowmorenV(CVarsF.fudongScale,"WorldTextScale","倍")
---信息浮动方式
local fudongModeName = {["1"]="向上浮动",["2"]="向下浮动",["3"]="弧形散开"}
CVarsF.fudongMODE=PIGDownMenu(CVarsF,{"TOPLEFT",CVarsF,"TOPLEFT",120,-360},{100,nil})
CVarsF.fudongMODE.t = PIGFontString(CVarsF.fudongMODE,{"RIGHT",CVarsF.fudongMODE,"LEFT",-4,0},"信息浮动方式");
function CVarsF.fudongMODE:PIGDownMenu_Update_But(self)
	local info = {}
	info.func = self.PIGDownMenu_SetValue
	for i=1,3,1 do
		local i = tostring(i)
	    info.text, info.arg1 = fudongModeName[i], i
	    info.checked = i==GetCVar("floatingCombatTextFloatMode")
		CVarsF.fudongMODE:PIGDownMenu_AddButton(info)
	end 
end
function CVarsF.fudongMODE:PIGDownMenu_SetValue(value,arg1,arg2)
	CVarsF.fudongMODE:PIGDownMenu_SetText(value)
	SetCVar("floatingCombatTextFloatMode", arg1)
	PIGCloseDropDownMenus()
end
CVarsF.fudongMODE:HookScript("OnShow", function (self)
	self:PIGDownMenu_SetText(fudongModeName[GetCVar("floatingCombatTextFloatMode")])
end);

------
local tianqiName = {["0"]="小雨",["1"]="中雨",["2"]="大雨",["3"]="暴雨"}
CVarsF.tianqi=PIGDownMenu(CVarsF,{"TOPLEFT",CVarsF,"TOPLEFT",400,-320},{100,nil})
CVarsF.tianqi.t = PIGFontString(CVarsF.tianqi,{"RIGHT",CVarsF.tianqi,"LEFT",-4,0},"天气效果");
function CVarsF.tianqi:PIGDownMenu_Update_But(self)
	local info = {}
	info.func = self.PIGDownMenu_SetValue
	for i=0,3,1 do
		local i = tostring(i)
	    info.text, info.arg1 = tianqiName[i], i
	    info.checked = i==GetCVar("weatherDensity")
		CVarsF.tianqi:PIGDownMenu_AddButton(info)
	end 
end
function CVarsF.tianqi:PIGDownMenu_SetValue(value,arg1,arg2)
	CVarsF.tianqi:PIGDownMenu_SetText(value)
	SetCVar("weatherDensity", arg1)
	PIGCloseDropDownMenus()
end
CVarsF.tianqi:HookScript("OnShow", function (self)
	self:PIGDownMenu_SetText(tianqiName[GetCVar("weatherDensity")])
end);

---
local xueyeLVName = {["0"]="无",["1"]="略微",["2"]="少量",["3"]="普通",["4"]="暴力",["5"]="很暴力"}
CVarsF.xueye=PIGDownMenu(CVarsF,{"TOPLEFT",CVarsF,"TOPLEFT",400,-360},{100,nil})
CVarsF.xueye.t = PIGFontString(CVarsF.xueye,{"RIGHT",CVarsF.xueye,"LEFT",-4,0},"血液效果");
function CVarsF.xueye:PIGDownMenu_Update_But(self)
	local info = {}
	info.func = self.PIGDownMenu_SetValue
	for i=0,5,1 do
		local i = tostring(i)
	    info.text, info.arg1 = xueyeLVName[i], i
	    info.checked = i==GetCVar("violenceLevel")
		CVarsF.xueye:PIGDownMenu_AddButton(info)
	end 
end
function CVarsF.xueye:PIGDownMenu_SetValue(value,arg1,arg2)
	CVarsF.xueye:PIGDownMenu_SetText(value)
	SetCVar("violenceLevel", arg1)
	PIGCloseDropDownMenus()
end
CVarsF.xueye:HookScript("OnShow", function (self)
	self:PIGDownMenu_SetText(xueyeLVName[GetCVar("violenceLevel")])
end);
ADD_tishi(CVarsF.xueye,nil,22,0)
---姓名板
local xingmingbanF =PIGOptionsList_R(RTabFrame,L["CVAR_TABNAME2"],70)
local xingmingList = {
	{"显示姓名板","nameplateShowOnlyNames","0","1","显示姓名板，正式服需要显示战斗外姓名版需要打开-界面-名字-显示所有姓名版",true},
	{"友方姓名板职业颜色","ShowClassColorInFriendlyNameplate","1","0","根据友方职业颜色染色姓名板",true},
	{"敌方姓名板职业颜色","ShowClassColorInNameplate","1","0","根据敌方职业颜色染色姓名板",true},
	{"当前目标的姓名板锁定在屏幕内","clampTargetNameplateToScreen","1","0","姓名板锁定在屏幕内",false},
}
for i=1,#xingmingList do
	local CVarsCB = PIGCheckbutton_R(xingmingbanF,{xingmingList[i][1],xingmingList[i][5]},true)
	if xingmingList[i][6] then
		ADD_tishi(CVarsCB,xingmingList[i][1],-2,0)
	end
	CVarsCB:SetScript("OnClick", function (self)
		if self:GetChecked() then
			SetCVar(xingmingList[i][2], xingmingList[i][3])
		else
			SetCVar(xingmingList[i][2], xingmingList[i][4])
		end
		if xingmingList[i][6] then
			Pig_Options_RLtishi_UI:Show()
		end
	end)
	CVarsCB:HookScript("OnShow", function (self)
		if GetCVar(xingmingList[i][2])==xingmingList[i][3] then
			self:SetChecked(true);
		end
	end)
end
xingmingbanF.nameplatebiaoti = PIGFontString(xingmingbanF,{"TOPLEFT",xingmingbanF,"TOPLEFT",20,-190},"姓名板锁定在屏幕内显示距离");
xingmingbanF.nameplateTop=PIGSlider(xingmingbanF,{"TOPLEFT",xingmingbanF.nameplatebiaoti,"BOTTOMLEFT",100,-20},{100,16},{0,0.2,0.01})
xingmingbanF.nameplateTop.t = PIGFontString(xingmingbanF,{"RIGHT",xingmingbanF.nameplateTop,"LEFT",-4,0},"顶部距离");
xingmingbanF.nameplateBottom=PIGSlider(xingmingbanF,{"TOPLEFT",xingmingbanF.nameplatebiaoti,"BOTTOMLEFT",100,-70},{100,16},{0,0.2,0.01})
xingmingbanF.nameplateBottom.t = PIGFontString(xingmingbanF,{"RIGHT",xingmingbanF.nameplateBottom,"LEFT",-4,0},"底部距离");
ShowmorenV(xingmingbanF.nameplateTop,"nameplateOtherTopInset","%屏幕尺寸",nil,100)
ShowmorenV(xingmingbanF.nameplateBottom,"nameplateOtherBottomInset","%屏幕尺寸",nil,100)

--自身高亮
local gaoliangF =PIGOptionsList_R(RTabFrame,L["CVAR_TABNAME3"],90)
local gaoliangmoshiName = {["-1"]="关闭",["0"]="圆环",["1"]="圆环/轮廓线",["2"]="轮廓线"}
gaoliangF.gaoliangMOD=PIGDownMenu(gaoliangF,{"TOPLEFT",gaoliangF,"TOPLEFT",90,-20},{150,nil})
gaoliangF.gaoliangMOD.t = PIGFontString(gaoliangF.gaoliangMOD,{"RIGHT",gaoliangF.gaoliangMOD,"LEFT",-4,0},"高亮模式");
function gaoliangF.gaoliangMOD:PIGDownMenu_Update_But(self)
	local info = {}
	info.func = self.PIGDownMenu_SetValue
	for i=-1,2,1 do
		local i = tostring(i)
	    info.text, info.arg1 = gaoliangmoshiName[i], i
	    info.checked = i==GetCVar("findYourselfMode")
		gaoliangF.gaoliangMOD:PIGDownMenu_AddButton(info)
	end 
end
function gaoliangF.gaoliangMOD:PIGDownMenu_SetValue(value,arg1,arg2)
	gaoliangF.gaoliangMOD:PIGDownMenu_SetText(value)
	SetCVar("findYourselfMode", arg1)
	PIGCloseDropDownMenus()
end
gaoliangF.gaoliangMOD:HookScript("OnShow", function (self)
	self:PIGDownMenu_SetText(gaoliangmoshiName[GetCVar("findYourselfMode")])
end);
local gaoliangList = {
	{"自身高亮","findYourselfAnywhere","1","0","高亮显示自身角色"},
	{"仅战斗中高亮","findYourselfAnywhereOnlyInCombat","1","0","仅在战斗中高亮显示自身角色"},
	{"仅团队中高亮","findYourselfInRaid","1","0","仅在团队中高亮显示自身角色"},
	{"仅团队战斗中高亮","findYourselfInRaidOnlyInCombat","1","0","仅在战场中高亮显示自身角色"},
	{"仅战场中高亮","findYourselfInBG","1","0","仅在战场中高亮显示自身角色"},
	{"仅战场战斗中高亮","findYourselfInBGOnlyInCombat","1","0","仅在战场中高亮显示自身角色"},	
}
for i=1,#gaoliangList do
	local CVarsCB = PIGCheckbutton_R(gaoliangF,{gaoliangList[i][1],gaoliangList[i][5]},true)
	CVarsCB:SetScript("OnClick", function (self)
		if self:GetChecked() then
			SetCVar(gaoliangList[i][2], gaoliangList[i][3])
		else
			SetCVar(gaoliangList[i][2], gaoliangList[i][4])
		end
	end);
	CVarsCB:HookScript("OnShow", function (self)
		if GetCVar(gaoliangList[i][2])==gaoliangList[i][3] then
			self:SetChecked(true);
		end
	end);
end

-----
local gaojiF =PIGOptionsList_R(RTabFrame,L["CVAR_TABNAME4"],60)
local gaojiList = {
	{"同步设置到服务器","synchronizeSettings","1","0"},
	{"同步键位到服务器","synchronizeBindings","1","0"},
	{"同步宏到服务器","synchronizeMacros","1","0"},
	{"同步CVar到服务器","synchronizeConfig","1","0"},
}
for i=1,#gaojiList do
	local CVarsCB = PIGCheckbutton_R(gaojiF,{gaojiList[i][1],gaojiList[i][1]},true)
	CVarsCB:SetScript("OnClick", function (self)
		if self:GetChecked() then
			SetCVar(gaojiList[i][2], gaojiList[i][3])
		else
			SetCVar(gaojiList[i][2], gaojiList[i][4])
		end
	end);
	CVarsCB:HookScript("OnShow", function (self)
		if GetCVar(gaojiList[i][2])==gaojiList[i][3] then
			self:SetChecked(true);
		else
			self:SetChecked(false);
		end
	end);
end
------
local function AutoCombatLog()
	if PIGA["CVars"]["AutoCombatLog"] then
		if PIGA["CVars"]["AutoCombatLogTJ"]==1 then
			SetCVar("advancedCombatLogging", "1")
			return
		else	
			local inInstance, instanceType = IsInInstance()
			if instanceType=="raid" then
				if PIGA["CVars"]["AutoCombatLogTJ"]==3 then
					SetCVar("advancedCombatLogging", "1")
					return
				end
			elseif instanceType=="party" then
				if PIGA["CVars"]["AutoCombatLogTJ"]==2 then
					SetCVar("advancedCombatLogging", "1")
					return
				end
			end
		end
		SetCVar("advancedCombatLogging", "0")
	end
end
local CombatLogF = CreateFrame("Frame");
CombatLogF:RegisterEvent("PLAYER_ENTERING_WORLD");
CombatLogF:SetScript("OnEvent",function (self,event,arg1,arg2)
	if event=="PLAYER_ENTERING_WORLD" then
		if arg1 or arg2 then
			--print("加载UI")
		else
			AutoCombatLog()
		end
	end
end)
local CombatLog =PIGCheckbutton(gaojiF,{"TOPLEFT",gaojiF,"TOPLEFT",20,-260},{"自动开启高级战斗日志","自动开启高级战斗日志"})
local function gengxinONOFF()
	if GetCVar("advancedCombatLogging")=="1" then
		CombatLog.Opentj.on:SetText("开")
		CombatLog.Opentj.on:SetTextColor(0, 1, 0, 1)
	else
		CombatLog.Opentj.on:SetText("关")
		CombatLog.Opentj.on:SetTextColor(1, 0, 0, 1)
	end
end
CombatLog:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["CVars"]["AutoCombatLog"]=true
	else
		PIGA["CVars"]["AutoCombatLog"]=false
	end
	AutoCombatLog()
	gengxinONOFF()
end);
local Opentiaojian = {[1]="常驻开启",[2]="只在地下城开启",[3]="只在团本开启"}
CombatLog.Opentj=PIGDownMenu(CombatLog,{"TOPLEFT",CombatLog,"TOPLEFT",70,-26},{150,nil})
CombatLog.Opentj.t = PIGFontString(CombatLog.Opentj,{"RIGHT",CombatLog.Opentj,"LEFT",-4,0},"开启条件");
CombatLog.Opentj.tt = PIGFontString(CombatLog.Opentj,{"TOPLEFT",CombatLog.Opentj.t,"BOTTOMLEFT",0,-10},"当前状态:");
CombatLog.Opentj.on = PIGFontString(CombatLog.Opentj,{"LEFT",CombatLog.Opentj.tt,"RIGHT",4,0},"关");
function CombatLog.Opentj:PIGDownMenu_Update_But(self)
	local info = {}
	info.func = self.PIGDownMenu_SetValue
	for i=1,#Opentiaojian,1 do
	    info.text, info.arg1 = Opentiaojian[i], i
	    info.checked = i==PIGA["CVars"]["AutoCombatLogTJ"]
		CombatLog.Opentj:PIGDownMenu_AddButton(info)
	end 
end
function CombatLog.Opentj:PIGDownMenu_SetValue(value,arg1,arg2)
	CombatLog.Opentj:PIGDownMenu_SetText(value)
	PIGA["CVars"]["AutoCombatLogTJ"]=arg1
	PIGCloseDropDownMenus()
	AutoCombatLog()
end
CombatLog:HookScript("OnShow", function (self)
	gengxinONOFF()
	if PIGA["CVars"]["AutoCombatLog"] then
		self:SetChecked(true);
	else
		self:SetChecked(false);
	end
	self.Opentj:PIGDownMenu_SetText(Opentiaojian[PIGA["CVars"]["AutoCombatLogTJ"]])
end);
--==================================
addonTable.CVars = function()
	local function chaoyuanshijujihuo()
		SetCVar(chaoyuanshijuVVV[1], chaoyuanshijuVVV[2])
	end
	if PIGA["CVars"]["MaxZoom"] then
		C_Timer.After(3, chaoyuanshijujihuo)
	end
	AutoCombatLog()
end