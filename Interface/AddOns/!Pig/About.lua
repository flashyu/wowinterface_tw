local addonName, addonTable = ...;
local L=addonTable.locale
local _, _, _, tocversion = GetBuildInfo()
local Create = addonTable.Create
local PIGLine=Create.PIGLine
local PIGOptionsList=Create.PIGOptionsList
local PIGFontString=Create.PIGFontString

----------------------------------------
local benjibanbenhao=GetAddOnMetadata(addonName, "Version")
local benjibanbenhaoTXT="|cffFFD700"..L["ABOUT_VERSION"]..":|r |cff00FF00"..benjibanbenhao.."|r"
Pig_OptionsUI.R.top.Ver.PigVer = PIGFontString(Pig_OptionsUI.R.top.Ver,{"LEFT", Pig_OptionsUI.R.top.Ver, "LEFT", 6, 0},benjibanbenhaoTXT)
local fuFrame = PIGOptionsList(L["ABOUT_TABNAME"])
------
Create.About_Update(fuFrame,-10)
PIGLine(fuFrame,"TOP",-230,{1.1,0,0})
Create.About_Thanks(fuFrame,-240)

--Update
local function huoqukeyongPIG(chname)
	local channels = {GetChannelList()}
	for i = 1, #channels, 3 do
		local id, name, disabled = channels[i], channels[i+1], channels[i+2]
		if name==chname then
			return id
		end
	end
	return 0
end
local benji_banbenhaoV=benjibanbenhao:gsub("%.","0");
local benji_banbenhaoV=tonumber(benji_banbenhaoV);
local biaotou="!Pig_Version";
local banbengengxin="NewVersion";
C_ChatInfo.RegisterAddonMessagePrefix(biaotou)
local Version_tishi = CreateFrame("Frame")
Version_tishi:RegisterEvent("CHAT_MSG_ADDON"); 
Version_tishi:RegisterEvent("PLAYER_LOGIN");            
Version_tishi:SetScript("OnEvent",function(self, event, arg1, arg2, arg3, arg4, arg5)
	if event=="PLAYER_LOGIN" then
		if PIGA["NEW_Version"] then
			if PIGA["NEW_Version"]>benji_banbenhaoV then
				self.yiyouzuixin=true;
				PIG_print(L["ABOUT_UPDATETIPS"])
			end
		end
		if not self.yiyouzuixin then
			if tocversion>100000 then
				self.PIGID=huoqukeyongPIG("PIG")
				if self.PIGID>0 then
					C_ChatInfo.SendAddonMessage(biaotou,banbengengxin,"CHANNEL"..self.PIGID)
				end
			else
				C_ChatInfo.SendAddonMessage(biaotou,banbengengxin,"SAY")
				C_ChatInfo.SendAddonMessage(biaotou,banbengengxin,"YELL")
			end
			if IsInGuild() then C_ChatInfo.SendAddonMessage(biaotou,banbengengxin,"GUILD") end
			if IsInGroup() then C_ChatInfo.SendAddonMessage(biaotou,banbengengxin,"PARTY") end
			if IsInRaid("LE_PARTY_CATEGORY_HOME") then C_ChatInfo.SendAddonMessage(biaotou,banbengengxin,"RAID") end
			if IsInRaid("LE_PARTY_CATEGORY_INSTANCE") then C_ChatInfo.SendAddonMessage(biaotou,banbengengxin,"INSTANCE_CHAT") end
		end
	end
	---
	if event=="CHAT_MSG_ADDON" and arg1 == biaotou then
		local name=GetUnitName("player", true)
		if arg5~=name then
			if arg2==banbengengxin then
				C_ChatInfo.SendAddonMessage(biaotou,benji_banbenhaoV,"WHISPER",arg5)
				return
			else
				if not self.yiyouzuixin then
					local NewBanben=tonumber(arg2);
					if NewBanben then
						if NewBanben>benji_banbenhaoV then
							self.yiyouzuixin=true;
							PIG_print(L["ABOUT_UPDATETIPS"])
							PIGA["NEW_Version"]=NewBanben					
						end	
					end
				end
			end
		end
	end
end)