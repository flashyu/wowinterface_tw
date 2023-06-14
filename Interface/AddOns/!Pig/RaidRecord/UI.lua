local addonName, addonTable = ...;
local L=addonTable.locale
local gsub = _G.string.gsub
local _, _, _, tocversion = GetBuildInfo()
-- --================================
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
local PIGModCheckbutton=Create.PIGModCheckbutton
local PIGQuickBut=Create.PIGQuickBut
local PIGModbutton=Create.PIGModbutton
local PIGEnter=Create.PIGEnter
local PIGSetFont=Create.PIGSetFont
---
local RaidRFun=addonTable.RaidRFun
local GnName,GnUI,GnIcon,FrameLevel = RaidRFun.GnName,RaidRFun.GnUI,RaidRFun.GnIcon,RaidRFun.FrameLevel
local Width,Height,biaotiH,lineTOP  = 820, 570, 21,30;
local iconWH,hang_Height,hang_NUM  = 22,29, 14;
RaidRFun.lineTOP=lineTOP
RaidRFun.iconWH=iconWH
RaidRFun.hang_Height=hang_Height
RaidRFun.hang_NUM=hang_NUM
--local zhizeIcon = {{0.01,0.26,0.26,0.51},{0.27,0.52,0,0.25},{0.27,0.52,0.25,0.5},{0.01,0.26,0,0.25}}
local zhizeIcon = {{0.01,0.26,0.26,0.51},{0.27,0.52,0,0.25},{0.27,0.52,0.25,0.5}}
RaidRFun.zhizeIcon=zhizeIcon
local LeftmenuV={"T","N","D"}
RaidRFun.LeftmenuV=LeftmenuV
RaidRFun.fenGbiliIcon = {
		"interface/cursor/thumbsup.blp",
		"interface/cursor/fishingcursor.blp",
		"Interface/Buttons/UI-GroupLoot-Pass-Up",
}
RaidRFun.RightmenuV={2,0.5,0,1}
--父框架
function RaidRFun.RaidRecord()
	if not PIGA["RaidRecord"]["Open"] then return end
	if _G[GnUI] then return end
	local ModBut = PIGModbutton(GnName,GnIcon,GnUI,FrameLevel,3)
	local RaidR=PIGFrame(UIParent,{"CENTER",UIParent,"CENTER",0,60},{Width, Height},GnUI,true)
	RaidR:PIGSetBackdrop(0.8)
	RaidR:PIGClose()
	RaidR:PIGSetMovable()
	RaidR.biaoti = PIGFontString(RaidR,{"TOP", RaidR, "TOP", 0, -4},GnName)
	PIGLine(RaidR,"TOP",-biaotiH)
	--内容显示
	RaidR.TOPF=PIGFrame(RaidR,{"TOPLEFT",RaidR,"TOPLEFT",0,-30})
	RaidR.TOPF:SetPoint("BOTTOMRIGHT",RaidR,"BOTTOMRIGHT",0,52);
	RaidR.F=PIGOptionsList_RF(RaidR.TOPF,biaotiH-2,nil,{6,6,0})
	--===下方控制栏====
	RaidR.xiafangF = PIGFrame(RaidR,{"TOPLEFT",RaidR.TOPF,"BOTTOMLEFT",0,0});
	RaidR.xiafangF:SetPoint("BOTTOMRIGHT",RaidR,"BOTTOMRIGHT",0,0);
	--统计金额----------------------------------------------------
	RaidR.xiafangF.Wupin_SR = PIGFontString(RaidR.xiafangF,{"TOPLEFT",RaidR.xiafangF,"TOPLEFT",6,-6},"\124cffFFFF00物品拍卖收入/G：\124r","OUTLINE");
	RaidR.xiafangF.Wupin_SR_V = PIGFontString(RaidR.xiafangF,{"LEFT",RaidR.xiafangF.Wupin_SR,"RIGHT",0,0},"","OUTLINE");
	RaidR.xiafangF.Wupin_SR_V:SetTextColor(1, 1, 1, 1);
	RaidR.xiafangF.fakuan_SR = PIGFontString(RaidR.xiafangF,{"TOPLEFT",RaidR.xiafangF.Wupin_SR,"BOTTOMLEFT",0,-8},"\124cffFFFF00罚款其他收入/G：\124r","OUTLINE");
	RaidR.xiafangF.fakuan_SR_V = PIGFontString(RaidR.xiafangF,{"LEFT",RaidR.xiafangF.fakuan_SR,"RIGHT",0,0},"","OUTLINE");
	RaidR.xiafangF.fakuan_SR_V:SetTextColor(1, 1, 1, 1);
	RaidR.xiafangF.buzhu_SR = PIGFontString(RaidR.xiafangF,{"TOPLEFT",RaidR.xiafangF,"TOPLEFT",200,-6},"\124cffFFFF00补助支出/G：\124r","OUTLINE");
	RaidR.xiafangF.buzhu_SR_V = PIGFontString(RaidR.xiafangF,{"LEFT",RaidR.xiafangF.buzhu_SR,"RIGHT",0,0},"","OUTLINE");
	RaidR.xiafangF.buzhu_SR_V:SetTextColor(1, 1, 1, 1);
	RaidR.xiafangF.jiangli_SR = PIGFontString(RaidR.xiafangF,{"TOPLEFT",RaidR.xiafangF.buzhu_SR,"BOTTOMLEFT",0,-8},"\124cffFFFF00奖励支出/G：\124r","OUTLINE");
	RaidR.xiafangF.jiangli_SR_V = PIGFontString(RaidR.xiafangF,{"LEFT",RaidR.xiafangF.jiangli_SR,"RIGHT",0,0},"","OUTLINE");
	RaidR.xiafangF.jiangli_SR_V:SetTextColor(1, 1, 1, 1);
	RaidR.xiafangF.ZongSR = PIGFontString(RaidR.xiafangF,{"TOPLEFT",RaidR.xiafangF,"TOPLEFT",360,-6},"\124cffFFFF00总收入/G：\124r","OUTLINE");
	RaidR.xiafangF.ZongSR_V = PIGFontString(RaidR.xiafangF,{"LEFT",RaidR.xiafangF.ZongSR,"RIGHT",0,0},"","OUTLINE");
	RaidR.xiafangF.ZongSR_V:SetTextColor(1, 1, 1, 1);
	RaidR.xiafangF.Jing_RS = PIGFontString(RaidR.xiafangF,{"TOPLEFT",RaidR.xiafangF.ZongSR,"BOTTOMLEFT",0,-8},"\124cffFFFF00净收入/G:\124r","OUTLINE");
	RaidR.xiafangF.Jing_RS_V = PIGFontString(RaidR.xiafangF,{"LEFT",RaidR.xiafangF.Jing_RS,"RIGHT",0,0},"","OUTLINE");
	RaidR.xiafangF.Jing_RS_V:SetTextColor(1, 1, 1, 1);

	--更新收入
	function RaidR:UpdateGinfo()
		--物品收入
		local Wupin_shouru=0;
		local dataX = PIGA["RaidRecord"]["ItemList"]
		for xx = 1, #dataX do
			Wupin_shouru=Wupin_shouru+dataX[xx][9]+dataX[xx][14];
		end
		RaidR.xiafangF.Wupin_SR_V:SetText(Wupin_shouru);
		--罚款+其他收入
		local fakuan_shouru=0;
		local dataX = PIGA["RaidRecord"]["fakuan"]
		for xx = 1, #dataX do
			if dataX[xx][3]~="N/A" then
				fakuan_shouru=fakuan_shouru+dataX[xx][2]+dataX[xx][4];
			end
		end
		RaidR.xiafangF.fakuan_SR_V:SetText(fakuan_shouru);
		--总收入
		local Zshouru=Wupin_shouru+fakuan_shouru;
		RaidR.xiafangF.ZongSR_V:SetText(Zshouru);
		--补助支出
		local Buzhu_shouru=0;
		local dataX = PIGA["RaidRecord"]["Raidinfo"]
		for p=1,#dataX do
			for pp=1,#dataX[p] do
				if dataX[p][pp][4] then
					if dataX[p][pp][5] then--百分比补助
						Buzhu_shouru=Buzhu_shouru+Zshouru*(dataX[p][pp][6]*0.01);
					else
						Buzhu_shouru=Buzhu_shouru+dataX[p][pp][6];
					end
				end
			end
		end
		RaidR.xiafangF.buzhu_SR_V:SetText(Buzhu_shouru);
		--奖励支出
		local jiangli_shouru=0;
		local dataX = PIGA["RaidRecord"]["jiangli"]
		for xx = 1, #dataX do
			if dataX[xx][3]~="N/A" then
				if dataX[xx][4] then--百分比补助
					jiangli_shouru=jiangli_shouru+Zshouru*(dataX[xx][2]*0.01);
				else
					jiangli_shouru=jiangli_shouru+dataX[xx][2]
				end
			end
		end
		RaidR.xiafangF.jiangli_SR_V:SetText(jiangli_shouru);
		---
		local Jshouru=Zshouru-Buzhu_shouru-jiangli_shouru;
		RaidR.xiafangF.Jing_RS_V:SetText(Jshouru);
	end
	--=成交人选择==================
	RaidR.PlayerList = PIGFrame(RaidR,{"TOPLEFT",RaidR,"TOPLEFT",6,-22});
	RaidR.PlayerList:SetPoint("BOTTOMRIGHT",RaidR,"BOTTOMRIGHT",-180,49);
	RaidR.PlayerList:PIGSetBackdrop(1)
	RaidR.PlayerList:PIGClose()
	RaidR.PlayerList:SetFrameLevel(FrameLevel+20);
	RaidR.PlayerList:Hide()
	RaidR.PlayerList.biaoti = PIGFontString(RaidR.PlayerList,{"TOP", RaidR.PlayerList, "TOP", 0, -4},"选择成员")
	PIGLine(RaidR.PlayerList,"TOP",-biaotiH)
	RaidR.PlayerList.t = PIGFontString(RaidR.PlayerList,{"TOPLEFT",RaidR.PlayerList,"TOPLEFT",20,-biaotiH-8});
	RaidR.PlayerList.qingchu = PIGButton(RaidR.PlayerList,{"TOPRIGHT",RaidR.PlayerList,"TOPRIGHT",-20,-biaotiH-6},{120,24},"清除已选择人员");  
	RaidR.PlayerList.qingchu:SetScript("OnClick", function ()
		local fujik = RaidR.PlayerList
		local bianjiID = fujik.bianjiID
		local GNNn = fujik.GNNn
		if GNNn=="ChengjiaoRen" then
			PIGA["RaidRecord"]["ItemList"][RaidR.PlayerList.bianjiID][8]="N/A";
			RaidR.Update_Item();
		elseif GNNn=="JiangliRen" then
			PIGA["RaidRecord"]["jiangli"][bianjiID][3]="N/A";
			RaidR.Update_Buzhu_QITA()
		elseif GNNn=="FakuanRen" then
			PIGA["RaidRecord"]["fakuan"][bianjiID][3]="N/A";
			RaidR.Update_Fakuan()
		end
		RaidR.PlayerList:Hide()
	end);
	RaidR.PlayerList.RR = PIGFrame(RaidR.PlayerList,{"TOPLEFT",RaidR.PlayerList,"TOPRIGHT",114,0});
	RaidR.PlayerList.RR:SetPoint("BOTTOMRIGHT",RaidR.PlayerList,"BOTTOMRIGHT",180,0);
	--刷新选择框角色
	function RaidR.PlayerList:PlayerList_UP()
		if self:IsShown() then
			for p=1,8 do
				for pp=1,5 do
					local pff = _G["RRPlayerList_"..p.."_"..pp]
					pff:Hide();
					pff:SetText("N/A");
				end
		    end
		    local plist = PIGA["RaidRecord"]["Raidinfo"]
			for p=1,#plist do
				for pp=1,#plist[p] do
					if plist[p][pp] then
				   		local pff = _G["RRPlayerList_"..p.."_"..pp]
				   		pff:Show();
				   		local wanjianame=plist[p][pp][1]
				   		pff.allname=wanjianame
				   		local wanjiaName, fuwiqiName = strsplit("-", wanjianame);
				   		if fuwiqiName then
							pff:SetText(wanjiaName.."(*)");
						else
							pff:SetText(wanjiaName);
						end
						local color = RAID_CLASS_COLORS[plist[p][pp][2]]
						pff.Text:SetTextColor(color.r, color.g, color.b,1);
				   	end
				end
			end
		end
	end
	function RaidR.PlayerList:Showtishi(GNNn,id)
		self:Show();
		self.bianjiID=id
		self.GNNn=GNNn
		if GNNn=="ChengjiaoRen" then
			local biajidata = PIGA["RaidRecord"]["ItemList"][id]
			self.t:SetText("\124cff00FF55选择\124r "..biajidata[2].." \124cff00FF55成交人\124r")

		elseif GNNn=="JiangliRen" then
			local biajidata = PIGA["RaidRecord"]["jiangli"][id]
			self.t:SetText("\124cff00FF55选择\124r "..biajidata[1].." \124cff00FF55奖励人\124r")
		elseif GNNn=="FakuanRen" then
			local biajidata = PIGA["RaidRecord"]["fakuan"][id]
			self.t:SetText("\124cff00FF55选择\124r "..biajidata[1].." \124cff00FF55罚款人\124r")
		end
		RaidR.PlayerList:PlayerList_UP()
	end
	--
	local duiwuW,duiwuH = 140,30;
	local jiangeW,jiangeH,juesejiangeH = 12,0,6;
	for p=1,8 do
		local duiwuF = CreateFrame("Frame", "RRPlayerList_"..p, RaidR.PlayerList);
		duiwuF:SetSize(duiwuW,duiwuH*5+juesejiangeH*4);
		if p==1 then
			duiwuF:SetPoint("TOPLEFT",RaidR.PlayerList,"TOPLEFT",18,-biaotiH-60);
		end
		if p>1 and p<5 then
			duiwuF:SetPoint("LEFT",_G["RRPlayerList_"..(p-1)],"RIGHT",jiangeW,jiangeH);
		end
		if p==5 then
			duiwuF:SetPoint("TOP",_G["RRPlayerList_1"],"BOTTOM",0,-26);
		end
		if p>5 then
			duiwuF:SetPoint("LEFT",_G["RRPlayerList_"..(p-1)],"RIGHT",jiangeW,jiangeH);
		end
		for pp=1,5 do
			local playerF = PIGButton(duiwuF,nil,{duiwuW,duiwuH},nil,"RRPlayerList_"..p.."_"..pp);
			PIGSetFont(playerF.Text,14,"OUTLINE")
			if pp==1 then
				playerF:SetPoint("TOP",duiwuF,"TOP",0,0);
			else
				playerF:SetPoint("TOP",_G["RRPlayerList_"..p.."_"..(pp-1)],"BOTTOM",0,-juesejiangeH);
			end
			playerF:SetScript("OnClick", function (self)
				local fujik = RaidR.PlayerList
				local bianjiID = fujik.bianjiID
				local GNNn = fujik.GNNn
				if GNNn=="ChengjiaoRen" then
					local biajidata = PIGA["RaidRecord"]["ItemList"][bianjiID]
					biajidata[8]=self.allname
					RaidR.Update_Item();
				elseif GNNn=="JiangliRen" then
					local biajidata = PIGA["RaidRecord"]["jiangli"][bianjiID]
					biajidata[3]=self.allname
					RaidR.Update_Buzhu_QITA()
				elseif GNNn=="FakuanRen" then
					local biajidata = PIGA["RaidRecord"]["fakuan"][bianjiID]
					biajidata[3]=self.allname
					RaidR.Update_Fakuan()
				end
				fujik:Hide()
			end);
		end
	end
	--冻结人员信息=============================
	RaidR.xiafangF.DongjieButline = PIGLine(RaidR.xiafangF,"L",521)
	local wwwx,hhhx = 32,32
	RaidR.xiafangF.DongjieBut = PIGButton(RaidR.xiafangF,{"TOPLEFT",RaidR.xiafangF.DongjieButline,"TOPRIGHT",6,-14},{110,24},"冻结人员信息");
	RaidR.xiafangF.DongjieBut:SetMotionScriptsWhileDisabled(true)
	local dongnjietishi1 = "\124cff00ff001、分G计算前请冻结人员信息，防止人员变动影响分G计算结果。\124r\n\124cff00ff002、建议在活动结束后人员变动之前冻结人员信息。\124r\n"
	local dongnjietishi2 ="\124cffFFA500冻结之后，分G结果不会因\124r\124cffFFff00新增人员/移动分组/人员退组/离线\124r\124cffFFA500而改变。\124r"
	PIGEnter(RaidR.xiafangF.DongjieBut,"提示：",dongnjietishi1,dongnjietishi2)
	RaidR.xiafangF.DongjieBut:SetScript("OnClick", function (self)
		if PIGA["RaidRecord"]["Dongjie"] then
			StaticPopup_Show("RR_DONGJIE_ON","更新冻结");
		else
			StaticPopup_Show("RR_DONGJIE_ON","冻结当前");
		end
	end);
	StaticPopupDialogs["RR_DONGJIE_ON"] = {
		text = "%s人员信息吗？\n\n",
		button1 = L["LIB_YES"],
		button2 = L["LIB_NO"],
		OnAccept = function()
			PIGA["RaidRecord"]["Dongjie"] = true
			RaidR:Update_DongjieBUT()
			RaidR:GetRiadPlayerInfo()
			RaidR:RaidInfoShow()
			RaidR.PlayerList:PlayerList_UP()
			if UnitIsGroupLeader("player") then
				local fullName = UnitFullName("player")
				if IsInRaid() then
					SendChatMessage("人员信息已记录,退组/离线/不影响分G，需邮寄工资请"..SLASH_TEXTTOSPEECH_WHISPER.."【"..fullName.."】:邮寄工资", "RAID_WARNING", nil);
				elseif IsInGroup() then
					SendChatMessage("人员信息已记录,退组/离线/不影响分G，需邮寄工资请"..SLASH_TEXTTOSPEECH_WHISPER.."【"..fullName.."】:邮寄工资", "PARTY", nil);
				end
			end
		end,
		timeout = 0,
		whileDead = true,
		hideOnEscape = true,
	}
	RaidR.xiafangF.DongjieTishi = CreateFrame("Frame", nil, RaidR.xiafangF);
	RaidR.xiafangF.DongjieTishi:SetSize(wwwx,hhhx);
	RaidR.xiafangF.DongjieTishi:SetPoint("LEFT",RaidR.xiafangF.DongjieBut,"RIGHT",10,0);
	RaidR.xiafangF.DongjieTishi:Hide();
	RaidR.xiafangF.DongjieTishi.Tex = RaidR.xiafangF.DongjieTishi:CreateTexture(nil, "BORDER");
	RaidR.xiafangF.DongjieTishi.Tex:SetTexture("interface/icons/spell_frost_frost.blp");
	RaidR.xiafangF.DongjieTishi.Tex:SetSize(wwwx,hhhx);
	RaidR.xiafangF.DongjieTishi.Tex:SetPoint("CENTER",RaidR.xiafangF.DongjieTishi,"CENTER",0,0);
	PIGEnter(RaidR.xiafangF.DongjieTishi,"\124cff00BFFF人员信息已冻结\124r","\124cff00FF00如需获取人员实时信息，请点击此图标关闭冻结！\124r")
	RaidR.xiafangF.DongjieTishi:SetScript("OnMouseUp", function ()
		StaticPopup_Show("RR_DONGJIE_OFF");
	end);
	StaticPopupDialogs["RR_DONGJIE_OFF"] = {
		text = "解除人员信息冻结吗？\n\n\124cff00FF00解除后人员将实时更新\n分G计算前需重新冻结\124r\n\n",
		button1 = L["LIB_YES"],
		button2 = L["LIB_NO"],
		OnAccept = function()
			PIGA["RaidRecord"]["Dongjie"] = false
			RaidR:Update_DongjieBUT()
			RaidR:GetRiadPlayerInfo()
			RaidR:RaidInfoShow()
		end,
		timeout = 0,
		whileDead = true,
		hideOnEscape = true,
	}
	function RaidR:Update_DongjieBUT()
		local IsInGroup = IsInGroup();
		if IsInGroup then
			RaidR.xiafangF.DongjieBut:Enable();
		else
			RaidR.xiafangF.DongjieBut:Disable();
		end
		if PIGA["RaidRecord"]["Dongjie"] then
			RaidR.xiafangF.DongjieBut:SetText("更新冻结信息");
			RaidR.xiafangF.DongjieTishi:Show();	
		else
			RaidR.xiafangF.DongjieBut:SetText("冻结人员信息");		
			RaidR.xiafangF.DongjieTishi:Hide();
		end
		RaidR.Update_FenG_NOdongjie()
	end
	---------
	RaidR.xiafangF.shezhiline = PIGLine(RaidR.xiafangF,"L",691)
	--分G计算方式提示
	RaidR.xiafangF.tuanduiguize = CreateFrame("Button", nil, RaidR.xiafangF);
	RaidR.xiafangF.tuanduiguize:SetHighlightTexture("interface/buttons/ui-common-mousehilight.blp");
	RaidR.xiafangF.tuanduiguize:SetSize(22,20);
	RaidR.xiafangF.tuanduiguize:SetPoint("TOPRIGHT",RaidR.xiafangF,"TOPRIGHT",-3,-1);
	RaidR.xiafangF.tuanduiguize.Texture = RaidR.xiafangF.tuanduiguize:CreateTexture(nil, "BORDER");
	RaidR.xiafangF.tuanduiguize.Texture:SetTexture("interface/dialogframe/dialogalerticon.blp");
	RaidR.xiafangF.tuanduiguize.Texture:SetSize(34,36);
	RaidR.xiafangF.tuanduiguize.Texture:SetPoint("CENTER",RaidR.xiafangF.tuanduiguize,"CENTER",0,0);
	RaidR.xiafangF.tuanduiguize:SetScript("OnMouseDown", function (self)
		self.Texture:SetPoint("CENTER",self,"CENTER",-1,-1);
	end);
	RaidR.xiafangF.tuanduiguize:SetScript("OnMouseUp", function (self)
		self.Texture:SetPoint("CENTER",self,"CENTER",0,0);
	end);
	PIGEnter(RaidR.xiafangF.tuanduiguize,"团队规则")
	RaidR.xiafangF.tuanduiguize:SetScript("OnClick", function (self,button)
		if self.F:IsShown() then
			self.F:Hide()
		else
			self.F:Show()
		end
	end);
	RaidR.xiafangF.tuanduiguize.F=PIGFrame(RaidR.xiafangF.tuanduiguize,{"CENTER",RaidR,"CENTER",0,10},{600, 480})
	RaidR.xiafangF.tuanduiguize.F:PIGSetBackdrop(1)
	RaidR.xiafangF.tuanduiguize.F:PIGClose()
	RaidR.xiafangF.tuanduiguize.F:Hide()
	RaidR.xiafangF.tuanduiguize.F:SetFrameLevel(FrameLevel+30);
	RaidR.xiafangF.tuanduiguize.F.biaoti = PIGFontString(RaidR.xiafangF.tuanduiguize.F,{"TOP", RaidR.xiafangF.tuanduiguize.F, "TOP", 0, -4},"团队规则")
	PIGLine(RaidR.xiafangF.tuanduiguize.F,"TOP",-biaotiH)
	local jisuanguize = {
		"=======本团分G计算规则========",
		"分G人数：团队总人数-不分G人数+双工人数",
		"每人应得：净收入÷分G人数=每人应得数",
		"半工工资：每人应得工资扣除一半为半工实发数",
		"全工工资(无半工)：每人应得数即为实发数",
		"全工工资(有半工)：每人应得+(半工扣款×半工人数)/(分G人数-半工人数)=全工实发数",
		"双工工资：全工工资×2",
	}
	for i=1,#jisuanguize do
		local TISHIZITI1 = PIGFontString(RaidR.xiafangF.tuanduiguize.F,nil,jisuanguize[i]); 
		TISHIZITI1:SetPoint("TOPLEFT",RaidR.xiafangF.tuanduiguize.F,"TOPLEFT",10,-(i*20)-8);
		TISHIZITI1:SetTextColor(0, 1, 0, 1);
	end
	RaidR.xiafangF.tuanduiguize.F.fasong1 = PIGButton(RaidR.xiafangF.tuanduiguize.F,{"TOPLEFT",RaidR.xiafangF.tuanduiguize.F,"TOPLEFT",10,-168},{110,24},"发送分G规则"); 
	RaidR.xiafangF.tuanduiguize.F.fasong1:SetScript("OnClick", function (self,button)	
		for i=1,#jisuanguize do
			PIGSendChatRaidParty(jisuanguize[i])
		end
	end);
	local ewaishuoming = {
		"====半工不等于全工一半说明====",
		"注意区分每人应得数和实发数，半工为应得一半非实发一半",
		"半工扣除的一半金额会平均分配给其他成员",
		"团队因为你没有做到应有的事，导致其他人员工作量增加",
		"所以你的扣款均分给其他人是合理且公平的",
	}
	for i=1,#ewaishuoming do
		local TISHIZITI1 = PIGFontString(RaidR.xiafangF.tuanduiguize.F,nil,ewaishuoming[i]); 
		TISHIZITI1:SetJustifyH("LEFT")
		TISHIZITI1:SetPoint("TOPLEFT",RaidR.xiafangF.tuanduiguize.F,"TOPLEFT",10,-i*20-190);
		TISHIZITI1:SetTextColor(0, 1, 1, 1);
	end
	RaidR.xiafangF.tuanduiguize.F.fasong2 = PIGButton(RaidR.xiafangF.tuanduiguize.F,{"TOPLEFT",RaidR.xiafangF.tuanduiguize.F,"TOPLEFT",10,-310},{140,24},"发送半工扣款说明"); 
	RaidR.xiafangF.tuanduiguize.F.fasong2:SetScript("OnClick", function (self,button)
		local xiaoxin1 = ewaishuoming[2].."，"..ewaishuoming[3]
		local xiaoxin2 = ewaishuoming[4].."，"..ewaishuoming[5]
		PIGSendChatRaidParty(ewaishuoming[1])
		PIGSendChatRaidParty(xiaoxin1)
		PIGSendChatRaidParty(xiaoxin2)
	end);
	--其他处理方案
	RaidR.xiafangF.tuanduiguize.F.daoshuchujia = PIGFontString(RaidR.xiafangF.tuanduiguize.F,{"TOPLEFT",RaidR.xiafangF.tuanduiguize.F,"TOPLEFT",10,-350},"倒数1之后的出价:无效"); 
	RaidR.xiafangF.tuanduiguize.F.daoshuchujia:SetTextColor(1, 0, 1, 1);

	RaidR.xiafangF.tuanduiguize.F.Pchujia = PIGFontString(RaidR.xiafangF.tuanduiguize.F,{"TOPLEFT",RaidR.xiafangF.tuanduiguize.F,"TOPLEFT",10,-374},"P之后出价:");
	RaidR.xiafangF.tuanduiguize.F.Pchujia:SetTextColor(1, 0, 1, 1);
	RaidR.xiafangF.tuanduiguize.F.PchujiaE = CreateFrame("EditBox", nil, RaidR.xiafangF.tuanduiguize.F, "InputBoxInstructionsTemplate");
	RaidR.xiafangF.tuanduiguize.F.PchujiaE:SetSize(80,28);
	RaidR.xiafangF.tuanduiguize.F.PchujiaE:SetPoint("LEFT",RaidR.xiafangF.tuanduiguize.F.Pchujia,"RIGHT",10,0);
	PIGSetFont(RaidR.xiafangF.tuanduiguize.F.PchujiaE,13.4,"OUTLINE")
	RaidR.xiafangF.tuanduiguize.F.PchujiaE:SetAutoFocus(false);
	RaidR.xiafangF.tuanduiguize.F.PchujiaE:SetMaxLetters(20)
	RaidR.xiafangF.tuanduiguize.F.PchujiaE:SetTextColor(0.5, 0.5, 0.5, 0.8)
	RaidR.xiafangF.tuanduiguize.F.PchujiaE:SetScript("OnEditFocusLost", function(self) self:SetTextColor(0.5, 0.5, 0.5, 0.8) end);
	RaidR.xiafangF.tuanduiguize.F.PchujiaE:SetScript("OnEscapePressed", function(self)
		self:ClearFocus() 
	end);
	RaidR.xiafangF.tuanduiguize.F.PchujiaE:SetScript("OnEditFocusGained", function(self)
		self:SetTextColor(1, 1, 1, 1); 
	end)
	RaidR.xiafangF.tuanduiguize.F.PchujiaE:SetScript("OnEnterPressed", function(self) 
		PIGA["RaidRecord"]["Rsetting"]["Pchujia"]=self:GetText()
		self:ClearFocus() 
	end);

	RaidR.xiafangF.tuanduiguize.F.liupaibiaoti = PIGFontString(RaidR.xiafangF.tuanduiguize.F,{"TOPLEFT",RaidR.xiafangF.tuanduiguize.F,"TOPLEFT",10,-400},"流派装备处理方案:"); 
	RaidR.xiafangF.tuanduiguize.F.liupaibiaoti:SetTextColor(1, 0, 1, 1);

	RaidR.xiafangF.tuanduiguize.F.liupaiE = CreateFrame("EditBox", nil, RaidR.xiafangF.tuanduiguize.F, "InputBoxInstructionsTemplate");
	RaidR.xiafangF.tuanduiguize.F.liupaiE:SetSize(380,28);
	RaidR.xiafangF.tuanduiguize.F.liupaiE:SetPoint("LEFT",RaidR.xiafangF.tuanduiguize.F.liupaibiaoti,"RIGHT",10,0);
	PIGSetFont(RaidR.xiafangF.tuanduiguize.F.liupaiE,13.4,"OUTLINE")
	RaidR.xiafangF.tuanduiguize.F.liupaiE:SetAutoFocus(false);
	RaidR.xiafangF.tuanduiguize.F.liupaiE:SetMaxLetters(20)
	RaidR.xiafangF.tuanduiguize.F.liupaiE:SetTextColor(0.5, 0.5, 0.5, 0.8)
	RaidR.xiafangF.tuanduiguize.F.liupaiE:SetScript("OnEditFocusLost", function(self) self:SetTextColor(0.5, 0.5, 0.5, 0.8) end);
	RaidR.xiafangF.tuanduiguize.F.liupaiE:SetScript("OnEscapePressed", function(self)
		self:ClearFocus() 
	end);
	RaidR.xiafangF.tuanduiguize.F.liupaiE:SetScript("OnEditFocusGained", function(self)
		self:SetTextColor(1, 1, 1, 1); 
	end)
	RaidR.xiafangF.tuanduiguize.F.liupaiE:SetScript("OnEnterPressed", function(self) 
		PIGA["RaidRecord"]["Rsetting"]["liupaichuli"]=self:GetText()
		self:ClearFocus() 
	end);
	RaidR.xiafangF.tuanduiguize.F.fasongliupai = PIGButton(RaidR.xiafangF.tuanduiguize.F,{"TOPLEFT",RaidR.xiafangF.tuanduiguize.F,"TOPLEFT",10,-424},{120,24},"发送其他规则"); 
	RaidR.xiafangF.tuanduiguize.F.fasongliupai:SetScript("OnClick", function (self,button)
		PIGSendChatRaidParty(RaidR.xiafangF.tuanduiguize.F.daoshuchujia:GetText())
		PIGSendChatRaidParty(RaidR.xiafangF.tuanduiguize.F.Pchujia:GetText()..RaidR.xiafangF.tuanduiguize.F.PchujiaE:GetText())
		PIGSendChatRaidParty(RaidR.xiafangF.tuanduiguize.F.liupaibiaoti:GetText()..RaidR.xiafangF.tuanduiguize.F.liupaiE:GetText())
	end);
	RaidR.xiafangF.tuanduiguize.F:SetScript("OnShow", function (self)
		RaidR.xiafangF.tuanduiguize.F.PchujiaE:SetText(PIGA["RaidRecord"]["Rsetting"]["Pchujia"])
		RaidR.xiafangF.tuanduiguize.F.liupaiE:SetText(PIGA["RaidRecord"]["Rsetting"]["liupaichuli"])
	end);

	--设置
	RaidR.xiafangF.setbut = CreateFrame("Button",nil,RaidR.xiafangF, "TruncatedButtonTemplate"); 
	RaidR.xiafangF.setbut:SetNormalTexture("interface/gossipframe/healergossipicon.blp"); 
	RaidR.xiafangF.setbut:SetHighlightTexture(130718);
	RaidR.xiafangF.setbut:SetSize(22,21);
	RaidR.xiafangF.setbut:SetPoint("TOP",RaidR.xiafangF.tuanduiguize,"BOTTOM",0,-5);
	RaidR.xiafangF.setbut.Down = RaidR.xiafangF.setbut:CreateTexture(nil, "OVERLAY");
	RaidR.xiafangF.setbut.Down:SetTexture(130839);
	RaidR.xiafangF.setbut.Down:SetSize(21,21);
	RaidR.xiafangF.setbut.Down:SetPoint("CENTER");
	RaidR.xiafangF.setbut.Down:Hide();
	RaidR.xiafangF.setbut:SetScript("OnMouseDown", function (self)
		self.Down:Show();
	end);
	RaidR.xiafangF.setbut:SetScript("OnMouseUp", function (self)
		self.Down:Hide()
	end);
	RaidR.xiafangF.setbut:HookScript("OnClick", function (self)
		if Pig_OptionsUI:IsShown() then
			Pig_OptionsUI:Hide()
		else
			Pig_OptionsUI:Show()
			Create.Show_TabBut(RaidRFun.fuFrame,RaidRFun.fuFrameBut)
		end
	end);
	---
	RaidR.xiafangF.NEW_jilu = PIGButton(RaidR.xiafangF,{"TOPLEFT",RaidR.xiafangF.shezhiline,"TOPRIGHT",6,-2},{74,21},"新的记录");  
	RaidR.xiafangF.NEW_jilu:SetScript("OnClick", function ()
		StaticPopup_Show("NEW_WUPIN_LIST","");
	end);
	RaidR.xiafangF.HistoryBut = PIGButton(RaidR.xiafangF,{"TOPLEFT",RaidR.xiafangF.NEW_jilu,"BOTTOMLEFT",0,-4},{74,21},"历史记录"); 
	RaidR.xiafangF.HistoryBut:Disable() 
	RaidR.xiafangF.HistoryBut:SetScript("OnClick", function ()
		RaidR.ShowHideHistory()
	end);
	---子页面
	RaidRFun.RaidRecord_Item()
	RaidRFun.RaidRecord_Buzhu()
	RaidRFun.RaidRecord_Fakuan()
	RaidRFun.RaidRecord_RaidInfo()
	RaidRFun.RaidRecord_fenG()
	RaidRFun.RaidRecord_History();

	--新的记录==================================
	function RaidR.Show_dangqianName()
		if dangqianName_UI:IsShown() then
			local fubenN = PIGA["RaidRecord"]["instanceName"][2] or ""
			local fubennandu = PIGA["RaidRecord"]["instanceName"][3] or ""
			dangqianName_UI:SetText(fubenN.."-"..fubennandu);
		end
	end
	local function ADD_Instancejilu()
		local ItemListData = PIGA["RaidRecord"]["ItemList"]
		if #ItemListData>0 then
			local Old_Data = {}
			--存储标题
			Old_Data.Biaoti={PIGA["RaidRecord"]["instanceName"]}
			--存储物品数据
			Old_Data.ItemList={PIGA["RaidRecord"]["ItemList"]}
			--存储人员补助数据
			Old_Data.Players={PIGA["RaidRecord"]["Raidinfo"]}
			--存储奖励数据
			local jiangliH={};
			for q=1,#PIGA["RaidRecord"]["jiangli"] do
				if PIGA["RaidRecord"]["jiangli"][q][3]~="N/A" then
					table.insert(jiangliH,PIGA["RaidRecord"]["jiangli"][q]);
				end
			end
			Old_Data.Jiangli={jiangliH}
			--存储罚款数据
			local fakuanH={};
			for q=1,#PIGA["RaidRecord"]["fakuan"] do
				if PIGA["RaidRecord"]["fakuan"][q][3]~="N/A" then
					table.insert(fakuanH,PIGA["RaidRecord"]["fakuan"][q]);
				end
			end
			Old_Data.Fakuan={fakuanH}

			table.insert(PIGA["RaidRecord"]["History"],Old_Data);

			--清空数据
			PIGA["RaidRecord"]["ItemList"] = {};
			PIGA["RaidRecord"]["Raidinfo"] = {{},{},{},{},{},{},{},{}};
			for j=1,#PIGA["RaidRecord"]["fakuan"] do
				PIGA["RaidRecord"]["fakuan"][j][2]=0;
				PIGA["RaidRecord"]["fakuan"][j][3]="N/A";
			end
			for j=1,#PIGA["RaidRecord"]["jiangli"] do
				PIGA["RaidRecord"]["jiangli"][j][2]=0;
				PIGA["RaidRecord"]["jiangli"][j][3]="N/A";
				PIGA["RaidRecord"]["jiangli"][j][4]=0;
			end
			--记录新数据
			PIGA["RaidRecord"]["Dongjie"] = false;--关闭快照状态
			local FBname, instanceType, difficultyID, difficultyName = GetInstanceInfo()
			PIGA["RaidRecord"]["instanceName"]={GetServerTime(),FBname,difficultyName}
			RaidR.Show_dangqianName()
			RaidR:Update_DongjieBUT()
			RaidR.Update_Item()
			RaidR.Update_Buzhu_TND()
			RaidR.Update_Buzhu_QITA()
			RaidR.Update_Fakuan()
			RaidR.Update_FenG()
			--RaidR.Update_History()
		end
	end
	StaticPopupDialogs["NEW_WUPIN_LIST"] = {
		text = "%s开始一份\124cff00ff00新的\124r开团助手记录吗?\n已有记录将被保存在历史记录内\n",
		button1 = "确定",
		button2 = "取消",
		OnAccept = function()
			ADD_Instancejilu()
		end,
		OnCancel = function()
			local FBname, instanceType, difficultyID, difficultyName = GetInstanceInfo()
			PIGA["RaidRecord"]["instanceName"]={GetServerTime(),FBname,difficultyName}
			RaidR.Show_dangqianName()
		end,
		timeout = 0,
		whileDead = true,
		hideOnEscape = true,
	}
	---
	local function panduanNewfuben()
		local FBname, instanceType, difficultyID, difficultyName = GetInstanceInfo()
		--print(FBname, instanceType, difficultyID, difficultyName)
		if difficultyID~=0 then
			if PIGA["RaidRecord"]["instanceName"][1] then
				if #PIGA["RaidRecord"]["ItemList"]==0 then
					PIGA["RaidRecord"]["instanceName"]={GetServerTime(),FBname,difficultyName}
					RaidR.Show_dangqianName()
				else
					if PIGA["RaidRecord"]["instanceName"][2]==FBname and PIGA["RaidRecord"]["instanceName"][3]==difficultyName then
						if GetServerTime()-PIGA["RaidRecord"]["instanceName"][1]>43200 then
							StaticPopup_Show("NEW_WUPIN_LIST","你似乎进入了新的副本\n");
						end
					else
						StaticPopup_Show("NEW_WUPIN_LIST","你似乎进入了新的副本\n");
					end
				end
			else
				PIGA["RaidRecord"]["instanceName"]={GetServerTime(),FBname,difficultyName}
				RaidR.Show_dangqianName()
			end
		end
	end
	RaidR:RegisterEvent("PLAYER_ENTERING_WORLD");
	RaidR:SetScript("OnEvent",function (self,event)
		local inInstance, instanceType = IsInInstance()
		if instanceType=="raid" then
			panduanNewfuben()
		elseif instanceType=="party" then
			if PIGA["RaidRecord"]["Rsetting"]["wurenben"] then
				panduanNewfuben()
			end
		end
	end);
end