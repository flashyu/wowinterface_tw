----<本插件初始为猪猪加油定制插件,现已公开分享>---562314----
local addonName, addonTable = ...;
local L=addonTable.locale
SLASH_RELOAD1 = '/rl'
SlashCmdList["RELOAD"] = ReloadUI
--
SLASH_PIG1 = "/pig"
SLASH_PIG2 = "/Pig"
SLASH_PIG3 = "/PIG"
SlashCmdList["PIG"] = function()
	Pig_OptionsUI:Show();
end
--================================================
local PIGUI = CreateFrame("Frame")        
PIGUI:RegisterEvent("ADDON_LOADED")
PIGUI:RegisterEvent("PLAYER_LOGIN");
PIGUI:SetScript("OnEvent",function(self, event, arg1)
	if event=="ADDON_LOADED" and arg1 == addonName then
		self:UnregisterEvent("ADDON_LOADED")
		addonTable.Config_Default()	
	end
	if event=="PLAYER_LOGIN" then
		--print(event,ElvUI,NDui)
		addonTable.Map()
		addonTable.CVars()
		addonTable.CombatPlus()
		addonTable.Common()
		addonTable.Chat()
		addonTable.ActionBar()
		addonTable.FramePlus()
		addonTable.UnitFrame()
		addonTable.BagBank()
		--技能监控
		-- addonTable.Spell_CD_JK()
		--时空之门
		-- addonTable.Invite()
		--开团助手
		addonTable.RaidRecord()
		--带本助手
		-- addonTable.daiben()
		--
		addonTable.Rurutia()
		QuickButUI:Add()
		------------------------------
		if not PIGA["Interaction"]["PigLoad"] then
			PIG_print(L["ABOUT_LOAD"]..","..L["ABOUT_REMINDER"])
		end
    end  
end)