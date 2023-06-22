local addonName, addonTable = ...;
local L =addonTable.locale
local _, _, _, tocversion = GetBuildInfo()
local match = _G.string.match
local gsub = _G.string.gsub
---------------------------
local Create=addonTable.Create
local PIGFrame=Create.PIGFrame
local PIGLine=Create.PIGLine
local PIGEnter=Create.PIGEnter
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
local PIGModCheckbutton=Create.PIGModCheckbutton
local PIGModbutton=Create.PIGModbutton
local PIGQuickBut=Create.PIGQuickBut
local PIGCloseBut=Create.PIGCloseBut
local PIGSetFont=Create.PIGSetFont
------------------
local InviteUnit=C_PartyInfo and C_PartyInfo.InviteUnit or InviteUnit
local InviteFun=addonTable.InviteFun
local GetPIGID=addonTable.Fun.GetPIGID
function InviteFun.Plane()
	local GnName,GnUI,GnIcon,FrameLevel = InviteFun.GnName,InviteFun.GnUI,InviteFun.GnIcon,InviteFun.FrameLevel
	local InvF=_G[GnUI]
	local pindao=InvF.pindao
	local hang_Height,hang_NUM=InvF.hang_Height,InvF.hang_NUM
	local fujiF,fujiTabBut=PIGOptionsList_R(InvF.F,L["INVITE_PLANE"],80,"Bot")
	-----------------
	fujiF.zijiweimian = PIGFontString(fujiF,{"TOPLEFT",fujiF,"TOPLEFT",10,-8},"你的区域ID:");
	fujiF.zijiweimian:SetTextColor(0, 0.98, 0.6, 1);
	fujiF.ZJweimianID = PIGFontString(fujiF,{"LEFT", fujiF.zijiweimian, "RIGHT", 0, 0},"点击NPC获取");
	fujiF.ZJweimianID:SetTextColor(1, 1, 1, 1);
	-----
	local biaotou="!Pig-Plane";
	local QQmsg="INVITE_LAYER"
	local shenqingMSG_V = "499";
	local shenqingMSG = "SQHWM_"..shenqingMSG_V;
	local jindutiaoWW = 160
	local GetButTXT = "刷新位面信息"
	C_ChatInfo.RegisterAddonMessagePrefix(biaotou)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_CHANNEL",function(self,event,arg1,...)
		if arg1==QQmsg then
			return true;
		end
	end)
	fujiF.GetBut=InviteFun.GetInfoBut(fujiF,{"TOPLEFT",fujiF,"TOPLEFT",180,-30},GetButTXT,{jindutiaoWW,20})

	fujiF.GetBut:HookScript("OnClick", function (self)
		if fujiF.ZJweimianID:GetText()=="点击NPC获取" then
			self.err:SetText("请点击任意NPC");
			--UIErrorsFrame:TryDisplayMessage(234, "请点击任意NPC获取自身位面", YELLOW_FONT_COLOR:GetRGB());
			return 
		end
		self.PIGID=GetPIGID(pindao)
		if self.PIGID==0 then
			self.err:SetText("请先加入"..pindao.."频道");
			--UIErrorsFrame:TryDisplayMessage(234, "请先加入"..pindao.."频道", YELLOW_FONT_COLOR:GetRGB());
			return
		end
		self:Disable();
		self.err:SetText("")
		self.jindutishi:SetText("")
		fujiF.JieshouInfoList={};
		if tocversion<80000 then
			SendChatMessage(QQmsg,"CHANNEL",nil,self.PIGID)
		else
			C_ChatInfo.SendAddonMessage(biaotou,QQmsg,"CHANNEL",self.PIGID)
		end
		local dangqiantime = GetServerTime();
		self.daojishiJG = dangqiantime
		PIGA["Invite"]["Plane"]["DaojishiCD"]=dangqiantime
		self.jindutiao.time = 0
		self.jindutiao:Show()
	end);
	fujiF.GetBut.daojishiJG=PIGA["Invite"]["Plane"]["DaojishiCD"]
	local function daojishiCDFUN()
		local self = fujiF.GetBut
		local chazhiV = 300-(GetServerTime()-self.daojishiJG)
		if chazhiV>0 then
			self:Disable()
			self:SetText("冷却中("..chazhiV..")");
		else
			self:Enable()
			self:SetText(GetButTXT);
		end
		if self:IsVisible() then
			C_Timer.After(1,daojishiCDFUN)
		end
	end
	fujiF.GetBut:HookScript("OnShow", function(self)
		local yiguoqu = GetServerTime()-self.daojishiJG
		if yiguoqu>3600 then
			fujiF.GetBut.jindutishi:SetText("上次获取:一小时之前");
		elseif yiguoqu>1800 then
			fujiF.GetBut.jindutishi:SetText("上次获取:半小时之前");
		elseif yiguoqu>600 then
			fujiF.GetBut.jindutishi:SetText("上次获取:10分钟之前");
		elseif yiguoqu>300 then
			fujiF.GetBut.jindutishi:SetText("上次获取:5分钟之前");
		else
			fujiF.GetBut.jindutishi:SetText("上次获取:刚刚");
		end
		daojishiCDFUN()
	end);
	fujiF.GetBut.jindutiao.time = 0
	fujiF.GetBut.jindutiao:SetScript("OnUpdate", function(self,sss)
		self.time=self.time+sss
		if self.time<2 then
			self.tex:SetWidth(jindutiaoWW*(self.time*0.5))
			self:Show();
		else
			self:Hide()
			fujiF.gengxinhang(fujiF.nr.Scroll)
		end
	end);
	-------------------------
	local Tooltip1= "|cffFFFF00当双方都打开此选项时可以直接申请组队，如只有一方打开则只能"..L["CHAT_WHISPER"].."申请对方组队|r";
	local Tooltip2 = "\n|cffFF0000关闭后其他玩家将不会自动接收你的申请\n(注意你在24小时内只能开关一次)|r"
	local Tooltip = Tooltip1..Tooltip2
	fujiF.AutoInvite =PIGCheckbutton(fujiF,{"TOPLEFT",fujiF,"TOPLEFT",420,-2},{"|cff00FF00自动接受玩家位面申请(单人且不在副本时)|r",Tooltip})
	fujiF.AutoInvite.help = PIGFontString(fujiF.AutoInvite,{"TOPLEFT", fujiF.AutoInvite, "BOTTOMLEFT", 10, 0},"我为人人，人人为我。请不要做精致的利己主义者");
	fujiF.AutoInvite.help:SetTextColor(0, 1, 1, 1);
	fujiF.AutoInvite:SetScript("OnClick", function (self)
		if self:GetChecked() then
			local DaojishiCD = PIGA["Invite"]["Plane"]["DaojishiCD"]
			local shengyu = 86400-(GetServerTime()-DaojishiCD)
			if shengyu>0 then
				local hours = floor(mod(shengyu, 86400)/3600)
				local minutes = math.ceil(mod(shengyu,3600)/60)
				UIErrorsFrame:TryDisplayMessage(234,"位面通道充能中...(剩余"..hours.."时"..minutes.."分)", 1,0,0);
				PIG_print("位面通道充能中...(剩余"..hours.."时"..minutes.."分)")
				self:SetChecked(false)
				return 
			end
			PIGA["Invite"]["Plane"]["AutoInvite"]=true;
		else
			StaticPopup_Show("OPEN_WEIMIANSHENQING");
		end
	end);
	fujiF.AutoInvite:SetChecked(PIGA["Invite"]["Plane"]["AutoInvite"]);

	StaticPopupDialogs["OPEN_WEIMIANSHENQING"] = {
		text = addonName..GnName.."-位面：\n|cffFFFF00确定关闭自动接受玩家位面申请吗？|r\n"..Tooltip2,
		button1 = L["LIB_ENT"],
		button2 = L["LIB_CEL"],
		OnAccept = function()
			PIGA["Invite"]["Plane"]["AutoInvite"]=false;
			PIGA["Invite"]["Plane"]["DaojishiCD"]=GetServerTime();
		end,
		OnCancel = function()
			fujiF.AutoInvite:SetChecked(true)
		end,
		timeout = 0,
		whileDead = true,
		hideOnEscape = true,
	}

	-------------
	fujiF.nr=PIGFrame(fujiF,{"TOPLEFT",fujiF,"TOPLEFT",4,-60})
	fujiF.nr:SetPoint("BOTTOMRIGHT", fujiF, "BOTTOMRIGHT", -4, 5);
	fujiF.nr:PIGSetBackdrop()
	local biaotiName={{"位面",20},{"区域ID",90},{"玩家名(点击"..L["CHAT_WHISPER"]..")",220},{"位置",420},{"自动接受申请",620},{"操作",740}}
	for i=1,#biaotiName do
		local biaoti=PIGFontString(fujiF.nr,{"TOPLEFT",fujiF.nr,"TOPLEFT",biaotiName[i][2],-5},biaotiName[i][1])
		biaoti:SetTextColor(1,1,0, 0.9);
	end
	fujiF.nr.line = PIGLine(fujiF.nr,"TOP",-24)
	---
	local hang_Width = fujiF.nr:GetWidth();
	fujiF.nr.Scroll = CreateFrame("ScrollFrame",nil,fujiF.nr, "FauxScrollFrameTemplate");  
	fujiF.nr.Scroll:SetPoint("TOPLEFT",fujiF.nr,"TOPLEFT",2,-27);
	fujiF.nr.Scroll:SetPoint("BOTTOMRIGHT",fujiF.nr,"BOTTOMRIGHT",-24,2);
	fujiF.nr.Scroll:SetScript("OnVerticalScroll", function(self, offset)
	    FauxScrollFrame_OnVerticalScroll(self, offset, hang_Height, fujiF.gengxinhang)
	end)
	for i=1, hang_NUM, 1 do
		local liebiao = CreateFrame("Frame", "WeimianList_"..i, fujiF.nr.Scroll:GetParent());
		liebiao:SetSize(hang_Width-25,hang_Height);
		if i==1 then
			liebiao:SetPoint("TOPLEFT", fujiF.nr.Scroll, "TOPLEFT", 0, -2);
		else
			liebiao:SetPoint("TOPLEFT", _G["WeimianList_"..(i-1)], "BOTTOMLEFT", 0, -1);
		end
		liebiao:Hide()
		if i~=hang_NUM then PIGLine(liebiao,"BOT",nil,nil,{0.3,0.3,0.3,0.3}) end
		liebiao.Weimian = PIGFontString(liebiao,{"LEFT", liebiao, "LEFT",biaotiName[1][2], 0});
		liebiao.Weimian:SetTextColor(0,0.98,0.6, 1);
		liebiao.zoneID = PIGFontString(liebiao,{"LEFT", liebiao, "LEFT", biaotiName[2][2], 0});
		liebiao.zoneID:SetTextColor(0.9,0.9,0.9, 0.9);
		liebiao.zoneID:SetJustifyH("LEFT");

		liebiao.Name = CreateFrame("Frame", nil, liebiao);
		liebiao.Name:SetSize(120,hang_Height);
		liebiao.Name:SetPoint("LEFT", liebiao, "LEFT", biaotiName[3][2], 0);
		liebiao.Name.T = PIGFontString(liebiao,{"LEFT", liebiao.Name, "LEFT", 0, 0});
		liebiao.Name.T:SetTextColor(0,0.98,0.6, 1);
		liebiao.Name:SetScript("OnMouseUp", function(self,button)
			local wjName = self.T:GetText()
			if wjName=="匿名" then return end
			local editBox = ChatEdit_ChooseBoxForSend();
			local hasText = editBox:GetText()
			if editBox:HasFocus() then
				editBox:SetText("/WHISPER " ..wjName.." ".. hasText);
			else
				ChatEdit_ActivateChat(editBox)
				editBox:SetText("/WHISPER " ..wjName.." ".. hasText);
			end
		end)
		liebiao.Weizhi = PIGFontString(liebiao,{"LEFT", liebiao, "LEFT", biaotiName[4][2], 0});
		liebiao.Weizhi:SetTextColor(0.6,0.6,0.6, 0.6);
		liebiao.Weizhi:SetJustifyH("LEFT");

		liebiao.autoinv = PIGFontString(liebiao,{"LEFT", liebiao, "LEFT", biaotiName[5][2], 0});
		liebiao.autoinv:SetJustifyH("LEFT");

		liebiao.miyu = PIGButton(liebiao, {"LEFT", liebiao, "LEFT", biaotiName[6][2], 0},{86,18});
		PIGSetFont(liebiao.miyu.Text,12)
		liebiao.miyu:SetScript("OnClick", function(self)
			local wjName = self.wjName
			if self:GetText()==L["CHAT_WHISPER"] then
				local editBox = ChatEdit_ChooseBoxForSend();
				local hasText = editBox:GetText()
				if editBox:HasFocus() then
					editBox:SetText("/WHISPER " ..wjName.." ".. hasText);
				else
					ChatEdit_ActivateChat(editBox)
					editBox:SetText("/WHISPER " ..wjName.." ".. hasText);
				end
			elseif self:GetText()=="请求换位面" then
				C_ChatInfo.SendAddonMessage(biaotou,shenqingMSG,"WHISPER",wjName)
			end
			fujiF.JieshouInfoList[self:GetID()][4]=true
			fujiF.gengxinhang(fujiF.nr.Scroll)
		end)
	end
	-----
	local function panduanweimianID(weimianbianhao,zoneID)
		local zuixiaozhiweimian={nil,"?"}
		for x=1,#weimianbianhao do	
			local ChazhiV=0
			local ChazhiV=zoneID-weimianbianhao[x]
			if ChazhiV<0 then
				ChazhiV=weimianbianhao[x]-zoneID
			end
			if ChazhiV<100 then
				if zuixiaozhiweimian[1] then
					if ChazhiV<zuixiaozhiweimian[1] then
						zuixiaozhiweimian[1]=ChazhiV
						zuixiaozhiweimian[2]=x
						return zuixiaozhiweimian[2]
					end
				else
			    	zuixiaozhiweimian[1]=ChazhiV
			    	zuixiaozhiweimian[2]=x
			    	return zuixiaozhiweimian[2]
			    end
			end
	    end
	    return zuixiaozhiweimian[2]
	end
	local function DisableFrame(fujiK,Open,autoinv)
		if Open=="Y" then
			fujiK.miyu:Show()
			fujiK.Weimian:SetTextColor(0,0.98,0.6, 1);
			fujiK.Name.T:SetTextColor(0,0.98,0.6, 1);
			--fujiK.Weizhi:SetTextColor(0,0.98,0.6, 1);
			fujiK.autoinv:SetTextColor(0,0.98,0.6, 1);
			if autoinv=="Y" then
				fujiK.autoinv:SetText("|cff00FF00是|r")
			else
				fujiK.autoinv:SetText("|cffFF0000否|r");
			end
		else
			fujiK.miyu:Hide()
			fujiK.Name.T:SetText("匿名");
			fujiK.autoinv:SetText("");
			fujiK.Weimian:SetTextColor(0.5,0.5,0.5, 0.4);
			fujiK.Name.T:SetTextColor(0.5,0.5,0.5, 0.4);
			--fujiK.Weizhi:SetTextColor(0.5,0.5,0.5, 0.4);
			fujiK.autoinv:SetTextColor(0.5,0.5,0.5, 0.4);
		end
	end
	------------
	fujiF.gengxinhang=function(self)
		fujiF.GetBut.jindutishi:SetText("上次获取:刚刚");
		for i = 1, hang_NUM do
			_G["WeimianList_"..i]:Hide()	
		end
		local ItemsNum = #fujiF.JieshouInfoList;
		if ItemsNum>0 then
			fujiF.GetBut.err:SetText("");
			local oldshuju = PIGA["Invite"]["Plane"]["InfoList"][fujiF.realm]
			for x=#oldshuju,1,-1 do
				if oldshuju[x] then
					if oldshuju[x][2] then
						local dqTime=GetServerTime()
						local libaiji=date("%w",dqTime)
						local yiguoquTime=dqTime-oldshuju[x][2]
						if yiguoquTime and yiguoquTime>604800 then
							table.remove(oldshuju,x);
						else
							if libaiji=="4" then
								if yiguoquTime>86400 then
									table.remove(oldshuju,x);
								end
							elseif libaiji=="5" then
								if yiguoquTime>172800 then
									table.remove(oldshuju,x);
								end
							elseif libaiji=="6" then
								if yiguoquTime>259200 then
									table.remove(oldshuju,x);
								end
							elseif libaiji=="7" then
								if yiguoquTime>345600 then
									table.remove(oldshuju,x);
								end
							elseif libaiji=="1" then
								if yiguoquTime>432000 then
									table.remove(oldshuju,x);
								end
							elseif libaiji=="2" then
								if yiguoquTime>518400 then
									table.remove(oldshuju,x);
								end
							-- elseif libaiji=="3" then
							-- 	if yiguoquTime>604800 then
							-- 		table.remove(oldshuju,x);
							-- 	end
							end
						end
					end
				end
			end

			for x=1,ItemsNum do
				local zoneID, MapID = strsplit("^", fujiF.JieshouInfoList[x][1]);
				if tonumber(MapID)==1453 or tonumber(MapID)==1454 then
					local PIG_WB_inshipaixu_you=true
					for xx=1,#oldshuju do
						if zoneID==oldshuju[xx][1] then
							PIG_WB_inshipaixu_you=false
							break
						end
					end
					if PIG_WB_inshipaixu_you then
						table.insert(oldshuju,{zoneID,GetServerTime()})
					end
				end
			end
			---
			local weimianbianhao={}
			for x=1,#oldshuju do
				table.insert(weimianbianhao,tonumber(oldshuju[x][1]))
			end
			local function paixuxiaoda(element1, elemnet2)
			    return element1 < elemnet2
			end
			table.sort(weimianbianhao, paixuxiaoda)
			local ZJweimianjeishou = fujiF.AutoInvite:GetChecked()
		    local ZJweimianID = panduanweimianID(weimianbianhao,tonumber(fujiF.DQweimianID))					
		    FauxScrollFrame_Update(self, ItemsNum, hang_NUM, hang_Height);
		    local offset = FauxScrollFrame_GetOffset(self);
		    for i = 1, hang_NUM do
		    	local dangqian = i+offset;
		    	if fujiF.JieshouInfoList[dangqian] then
					local fujikk = _G["WeimianList_"..i]	
					fujikk:Show()
						
					local zoneID, MapID, Open, autoinv = strsplit("^", fujiF.JieshouInfoList[dangqian][1]);
					fujikk.zoneID:SetText(zoneID);
					fujikk.Name.T:SetText(fujiF.JieshouInfoList[dangqian][2]);
					local weizhi = C_Map.GetMapInfo(MapID).name
					fujikk.Weizhi:SetText(weizhi);
					--

				    local weimianID = panduanweimianID(weimianbianhao,tonumber(zoneID))
					fujikk.Weimian:SetText(weimianID);
					DisableFrame(fujikk,Open,autoinv)

					fujikk.miyu:SetID(dangqian)
					fujikk.miyu.wjName=fujiF.JieshouInfoList[dangqian][2]

					if fujiF.JieshouInfoList[dangqian][4] then
						fujikk.miyu:Disable()
						fujikk.miyu:SetText("已发送请求");
					else
						if weimianID==ZJweimianID then
							fujikk.miyu:Disable()
							fujikk.miyu:SetText("同位面");
						else
							fujikk.miyu:Enable()
							if autoinv=="Y" and ZJweimianjeishou then
								fujikk.miyu:SetText("请求换位面");
							else
								fujikk.miyu:SetText(L["CHAT_WHISPER"]);
							end
						end
					end
				end
			end
		else
			fujiF.GetBut.err:SetText("未获取到位面信息，请稍后再试!");
		end
	end
	-----
	fujiF:HookScript("OnShow", function(self)
		if self.DQweimianID then
			self.ZJweimianID:SetText(self.DQweimianID);
		else
			self.ZJweimianID:SetText("点击NPC获取");
		end
	end);
	-------
	local function GetWeimianID(self)
		if UnitIsPlayer("target") then return end
		local inInstance =IsInInstance()
		if inInstance then return end
		local mubiaoGUID=UnitGUID("target")
		if mubiaoGUID then
			local unitType, _, serverID, instanceID, zoneID, npcID = strsplit("-", mubiaoGUID);
			if zoneID then
				self.DQweimianID=zoneID
				if self:IsShown() then
					self.ZJweimianID:SetText(zoneID);
					fujiF.GetBut.err:SetText("");
				end
				local MapID=C_Map.GetBestMapForUnit("player")
				if MapID then
					self.WeimianInfo=zoneID.."^"..MapID
					if MapID==1453 or MapID==1454 then
						local oldinfo = PIGA["Invite"]["Plane"]["InfoList"][self.realm]
						for x=1,#oldinfo do
							if zoneID==oldinfo[x][1] then
								return
							end
						end
						table.insert(oldinfo,{zoneID,GetServerTime()})
					end
				end
			end
		end
	end
	---------
	fujiF:RegisterEvent("CHAT_MSG_CHANNEL");
	fujiF:RegisterEvent("CHAT_MSG_ADDON");
	fujiF:RegisterEvent("PLAYER_TARGET_CHANGED"); 
	fujiF:RegisterEvent("PLAYER_ENTERING_WORLD");   
	fujiF:SetScript("OnEvent",function(self, event, arg1, arg2, arg3, _, arg5,_,_,_,arg9)
		if event=="PLAYER_ENTERING_WORLD" then
			self.realm = GetRealmName()
			PIGA["Invite"]["Plane"]["InfoList"][self.realm]=PIGA["Invite"]["Plane"]["InfoList"][self.realm] or {}
			GetWeimianID(self)
		end
		if event=="PLAYER_TARGET_CHANGED" then
			GetWeimianID(self)
		end
		if event=="CHAT_MSG_CHANNEL" then
			if not self.WeimianInfo then return end
			local inInstance=IsInInstance()
			if inInstance then return end
			if arg9~=pindao then return end
			if arg1~=QQmsg then return end
			if arg5 == GetUnitName("player", true) then return end
			local kaiguanzhuangtai = ""
			if PIGA["Invite"]["Open"] then
				kaiguanzhuangtai=kaiguanzhuangtai.."Y^"
			else
				kaiguanzhuangtai=kaiguanzhuangtai.."N^"
			end
			if PIGA["Invite"]["Plane"]["AutoInvite"] then
				kaiguanzhuangtai=kaiguanzhuangtai.."Y"
			else
				kaiguanzhuangtai=kaiguanzhuangtai.."N"
			end
			local SMessage=self.WeimianInfo.."^"..kaiguanzhuangtai
			C_ChatInfo.SendAddonMessage(biaotou,SMessage,"WHISPER",arg5)
		end

		if event=="CHAT_MSG_ADDON" and arg1 == biaotou and arg3 == "WHISPER" then
			local banhanshenqing =arg2:match("SQHWM")
			if banhanshenqing then
				if PIGA["Invite"]["Open"] and fujiF.AutoInvite:GetChecked() then
					local inInstance, instanceType =IsInInstance()
					local zuduizhong =IsInGroup("LE_PARTY_CATEGORY_HOME");
					if not inInstance and not zuduizhong then
						local Nerarg2 = arg2:gsub("SQHWM_","")
						if tonumber(Nerarg2)<tonumber(shenqingMSG_V) then
							SendChatMessage("邀请失败,你的"..addonName.."版本过低", "WHISPER", nil, arg5);
						else
							InviteUnit(arg5)
						end
					end
				end
			else
				table.insert(fujiF.JieshouInfoList, {arg2,arg5,GetServerTime()});
			end
		end
	end)
end