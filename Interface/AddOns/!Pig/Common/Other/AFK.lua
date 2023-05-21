local _, addonTable = ...;
local Create = addonTable.Create
local PIGQuickBut=Create.PIGQuickBut
local PIGFontString=Create.PIGFontString
--============================
local CommonFun=addonTable.CommonFun.Other
local GnUI = "AFK_UI"
function CommonFun.Pig_AFK()
	local morenzhuansu=GetCVar("cameraYawMoveSpeed")
	if not PIG["Other"]["AFK"]["Open"] or _G[GnUI] then return end
	local WowWidth=GetScreenWidth();
	local WowHeight=GetScreenHeight();
	local AFKUI = CreateFrame("Frame",GnUI, WorldFrame,"BackdropTemplate");
	AFKUI:SetBackdrop({
		bgFile = "interface/characterframe/ui-party-background.blp",
		edgeFile = "Interface/Tooltips/UI-Tooltip-Border", edgeSize = 8,});
	AFKUI:SetBackdropColor(0, 0, 0, 0.5);
	AFKUI:SetBackdropBorderColor(0, 0, 0, 0.8);
	AFKUI:SetSize(WowWidth,100);
	AFKUI:SetPoint("BOTTOM",WorldFrame,"BOTTOM",0,0);
	AFKUI:Hide()
	local raceName, raceFile, raceID = UnitRace("player")
	local name, realm = UnitName("player")
	local zijirealm = GetRealmName()
	local zijiinfo="|cff00FFFF服务器:|r"..zijirealm.."   |cff00FFFF种族:|r"..raceName.."   |cff00FFFF玩家名:|r"..name
	AFKUI.info = PIGFontString(AFKUI,{"CENTER", AFKUI, "CENTER", 0, 0},zijiinfo,"OUTLINE",28)
	AFKUI.info:SetTextColor(1, 1, 0, 1);
	
	
	AFKUI.zhenying = AFKUI:CreateTexture()
	AFKUI.zhenying:SetTexture(131148);
	AFKUI.zhenying:SetSize(50,50);
	AFKUI.zhenying:SetPoint("RIGHT", AFKUI.info,"LEFT",-10, 0);
	local englishFaction, _ = UnitFactionGroup("player")
	if englishFaction=="Alliance" then
		AFKUI.zhenying:SetTexCoord(0,0.5,0,1);
	elseif englishFaction=="Horde" then
		AFKUI.zhenying:SetTexCoord(0.5,1,0,1);
	end
	----
	local WowWidth=800;
	local WowHeight=500;
	AFKUI.moxingjuli = -0.4
	AFKUI.downV = -0.5
	if raceID==7 then
		AFKUI.moxingjuli=-0.8
		AFKUI.downV = -0.3
	end
	AFKUI.ModelUI = CreateFrame("PlayerModel", "ModelUI_UI", AFKUI);
	AFKUI.ModelUI:SetSize(WowWidth,WowHeight);
	AFKUI.ModelUI:SetPoint("BOTTOMRIGHT",AFKUI,"TOPRIGHT",0,0);
	AFKUI.ModelUI:SetUnit("player")
	AFKUI.ModelUI:SetCamera(1)
	--AFKUI.ModelUI:SetScale(0.8);
	--AFKUI.ModelUI:ClearModel();--清空模型
	AFKUI.ModelUI:SetPortraitZoom(AFKUI.moxingjuli);--模型视角远近
	--AFKUI.ModelUI:SetPosition(0,0,0.9);--相对于左下角定位模型Z,X,Y
	--AFKUI.ModelUI:SetFacing(3.1415926)--模型角度
	--AFKUI.ModelUI:SetAnimation(69);
	--AFKUI.ModelUI:SetSequence(69);
	
	AFKUI.ModelUI:SetScript("OnAnimStarted", function(self)
		local hasAnimation = self:HasAnimation(69);--检查模型是否支持与给定动画
		if hasAnimation then
			AFKUI.ModelUI:SetAnimation(69);
		end
	end);
	AFKUI.ModelUI:SetScript("OnAnimFinished", function(self) 
		self:SetAnimation(69); 
	end);

	AFKUI.title = PIGFontString(AFKUI,{"TOP", WorldFrame, "TOP", 0, -100},"临时离开，勿动!!!","OUTLINE",50)
	AFKUI.title:SetTextColor(1, 1, 0, 1);
	UIParent:HookScript("OnShow", function(self)
		SetCVar("cameraYawMoveSpeed",morenzhuansu)
		AFKUI:Hide()
		MoveViewLeftStop()
	end)
	
	AFKUI.pxulie=1
	local function weizhibiandong()
		if AFKUI:IsShown() then
			if AFKUI.pxulie then
				if AFKUI.pxulie==1 then
					AFKUI.ModelUI:SetPosition(0,0,AFKUI.downV);	
					AFKUI.pxulie=2
				elseif AFKUI.pxulie==2 then
					AFKUI.ModelUI:SetPosition(0,-0.6,AFKUI.downV);
					AFKUI.pxulie=3
				elseif AFKUI.pxulie==3 then
					AFKUI.ModelUI:SetPosition(0,0.6,AFKUI.downV);
					AFKUI.pxulie=1
				end
			end
			C_Timer.After(10,weizhibiandong)
		end
	end
	local function Stopzhuandong()
		SetCVar("cameraYawMoveSpeed",morenzhuansu)--旋转速度
		MoveViewLeftStop()
		AFKUI:Hide()
		UIParent:Show()
	end
	local LIKAIMSG=string.format(MARKED_AFK_MESSAGE,DEFAULT_AFK_MESSAGE)
	AFKUI:RegisterEvent("CHAT_MSG_AFK");
	AFKUI:RegisterEvent("CHAT_MSG_SYSTEM");
	AFKUI:RegisterEvent("PLAYER_REGEN_DISABLED");
	AFKUI:RegisterEvent("PLAYER_LEAVING_WORLD")
	AFKUI:RegisterEvent("PLAYER_LOGOUT")
	AFKUI:SetScript("OnEvent", function(self,event,arg1)
		if event=="PLAYER_REGEN_DISABLED" or event=="PLAYER_LEAVING_WORLD" or event=="PLAYER_LOGOUT" then
			if not InCombatLockdown() then
				Stopzhuandong()
			end
		end
		if event=="CHAT_MSG_AFK" or event=="CHAT_MSG_SYSTEM" then
			if not InCombatLockdown() then
				if arg1==LIKAIMSG then
					SetCVar("cameraYawMoveSpeed",6)
					MoveViewLeftStart()
					UIParent:Hide()
					AFKUI:Show()
					AFKUI.pxulie=1
					weizhibiandong()
				elseif arg1==CLEARED_AFK then
					Stopzhuandong()
				end
			end
		end
	end)
end
----
function QuickButUI.Pig_AFK()	
	if PIG["QuickBut"]["Open"] and PIG["Other"]["AFK"]["Open"] and PIG["Other"]["AFK"]["QuickBut"] then
		local GnUI = "AFK_QKBUT"
		if _G[GnUI] then return end
		local Icon=132802
		local Tooltip = "执行离开屏保"
		local AFK_pingbao=PIGQuickBut(GnUI,Tooltip,Icon,nil,nil, "SecureActionButtonTemplate")
		AFK_pingbao:SetAttribute("type", "macro")
		AFK_pingbao:HookScript("PreClick",  function (self)
			if InCombatLockdown() then
				PIG_print("副本内或战斗中无法暂离")
			else
				local inInstance, instanceType = IsInInstance()
				if inInstance then
					PIG_print("副本内或战斗中无法暂离")
				else
					AFK_pingbao:SetAttribute("macrotext", [=[/AFK]=])
				end
			end
		end);
		AFK_pingbao:HookScript("PostClick",  function (self)
			if not InCombatLockdown() then
				AFK_pingbao:SetAttribute("macrotext", [=[/PIG_print("副本内或战斗中无法暂离")]=])
			end
		end);
	end
end