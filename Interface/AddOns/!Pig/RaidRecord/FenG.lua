local _, addonTable = ...;
local find = _G.string.find
-----
local Create = addonTable.Create
local PIGFrame=Create.PIGFrame
local PIGButton = Create.PIGButton
local PIGDownMenu=Create.PIGDownMenu
local PIGLine=Create.PIGLine
local PIGEnter=Create.PIGEnter
local PIGSlider = Create.PIGSlider
local PIGCloseBut=Create.PIGCloseBut
local PIGModbutton=Create.PIGModbutton
local PIGCheckbutton=Create.PIGCheckbutton
local PIGModCheckbutton=Create.PIGModCheckbutton
local PIGOptionsList_RF=Create.PIGOptionsList_RF
local PIGOptionsList_R=Create.PIGOptionsList_R
local PIGQuickBut=Create.PIGQuickBut
local Show_TabBut_R=Create.Show_TabBut_R
local PIGFontString=Create.PIGFontString
local PIGCloseBut=Create.PIGCloseBut
local PIGSetFont=Create.PIGSetFont
----------
local RaidRFun=addonTable.RaidRFun
local iconWH,hang_Height,hang_NUM,lineTOP  =  RaidRFun.iconWH,RaidRFun.hang_Height,RaidRFun.hang_NUM,RaidRFun.lineTOP
-------
function RaidRFun.RaidRecord_fenG()
	local GnName,GnUI,GnIcon,FrameLevel = RaidRFun.GnName,RaidRFun.GnUI,RaidRFun.GnIcon,RaidRFun.FrameLevel
	local RaidR=_G[GnUI]
	local fujiF=PIGOptionsList_R(RaidR.F,"分G助手",80)
	fujiF.tishidongjie = PIGFontString(fujiF,{"CENTER",fujiF,"CENTER",0,40},"请先冻结人员信息", "OUTLINE",20);
	fujiF.tishidongjie:SetTextColor(1, 1, 0, 1);
	fujiF.nr = PIGFrame(fujiF,{"TOPLEFT",fujiF,"TOPLEFT",0,0});  
	fujiF.nr:SetPoint("BOTTOMRIGHT",fujiF,"BOTTOMRIGHT",0,0);
	fujiF.nr:Hide()
	function RaidR.Update_FenG_NOdongjie()
		if PIGA["RaidRecord"]["Dongjie"] then
			fujiF.tishidongjie:Hide();
			fujiF.nr:Show();
			fujiF:RegisterEvent("CHAT_MSG_WHISPER");	
		else
			fujiF.tishidongjie:Show();
			fujiF.nr:Hide();
			fujiF:UnregisterEvent("CHAT_MSG_WHISPER");
		end
	end
	local function SendMailInfo(Name,jinbiV)
		SendMailNameEditBox:SetText(Name);
		SendMailSubjectEditBox:SetText(date("%Y-%m-%d",PIGA["RaidRecord"]["instanceName"][1]).."<"..PIGA["RaidRecord"]["instanceName"][2]..PIGA["RaidRecord"]["instanceName"][3]..">");
		SendMailMoneyGold:SetText(jinbiV);
		MailEditBox:SetText("这是你在"..date("%Y-%m-%d",PIGA["RaidRecord"]["instanceName"][1]).."参加".."<"..PIGA["RaidRecord"]["instanceName"][2]..PIGA["RaidRecord"]["instanceName"][3]..">活动薪水，请查收");
	end
	--创建队伍角色框架===================
	local zhizeIcon=RaidRFun.zhizeIcon
	local fenGbiliIcon=RaidRFun.fenGbiliIcon
	local LeftmenuV=RaidRFun.LeftmenuV
	local RightmenuV=RaidRFun.RightmenuV
	local buzhuzhize=RaidRFun.buzhuzhize

	local duiwu_Width,duiwu_Height=190,26;
	local jiangeW,jiangeH,PjiangeH=10,0,2;
	for p=1,8 do
		local duiwuF = PIGFrame(fujiF.nr,nil,{duiwu_Width,duiwu_Height*5+PjiangeH*4+1},"RRfenGList_"..p);
		duiwuF:PIGSetBackdrop(0,1)
		if p==1 then
			duiwuF:SetPoint("TOPLEFT",fujiF.nr,"TOPLEFT",8,-40);
		end
		if p>1 and p<5 then
			duiwuF:SetPoint("LEFT",_G["RRfenGList_"..(p-1)],"RIGHT",jiangeW,jiangeH);
		end
		if p==5 then
			duiwuF:SetPoint("TOP",_G["RRfenGList_1"],"BOTTOM",0,-40);
		end
		if p>5 then
			duiwuF:SetPoint("LEFT",_G["RRfenGList_"..(p-1)],"RIGHT",jiangeW,jiangeH);
		end
		---
		duiwuF.tongzhi = CreateFrame("Button",nil,duiwuF);  
		duiwuF.tongzhi:SetSize(iconWH,iconWH);
		duiwuF.tongzhi:SetPoint("BOTTOMLEFT",duiwuF,"TOPLEFT",8,0);
		duiwuF.tongzhi:SetHighlightTexture("interface/buttons/ui-common-mousehilight.blp");
		duiwuF.tongzhi.Tex = duiwuF.tongzhi:CreateTexture(nil, "BORDER");
		duiwuF.tongzhi.Tex:SetTexture(130979);
		duiwuF.tongzhi.Tex:SetPoint("CENTER",4,0);
		duiwuF.tongzhi.Tex:SetSize(iconWH,iconWH);
		PIGEnter(duiwuF.tongzhi,"通报"..p.."队明细以及通知分G人交易")
		duiwuF.tongzhi:SetScript("OnMouseDown", function (self)
			self.Tex:SetPoint("CENTER",2.5,-1.5);
		end);
		duiwuF.tongzhi:SetScript("OnMouseUp", function (self)
			self.Tex:SetPoint("CENTER",4,0);
		end);
		duiwuF.tongzhi:SetScript("OnClick", function(self)	
			local biaojiName={"{rt1}","{rt2}","{rt3}","{rt4}","{rt5}","{rt6}","{rt7}","{rt8}"};
			duiwuF.tongzhi.fenGren=0
			for pp=1,5 do
				if _G["RRfenGList_"..p.."_"..pp].fenGren:GetChecked() then
					duiwuF.tongzhi.fenGren=pp
					break
				end
			end
			if duiwuF.tongzhi.fenGren==0 then
				PIG_print("请先选择分G人");
				UIErrorsFrame:TryDisplayMessage(234, "请先选择分G人", YELLOW_FONT_COLOR:GetRGB())
				return
			end
			local fenGrenFF = _G["RRfenGList_"..p.."_"..duiwuF.tongzhi.fenGren]
			local fenGrenname=fenGrenFF.Name.t:GetText()
			if UnitIsConnected(fenGrenname) then
				PIGSendChatRaidParty("======【"..p.."队】=========");
				local MSGFENGXINXI="分G总数: "..duiwuF.jiaoyiG:GetText()..",分G人员【"..fenGrenname.."】标记为{rt"..p.."}";
				SetRaidTarget(fenGrenname, p);
				PIGSendChatRaidParty(MSGFENGXINXI);
				local msnfenG="明细: ";
				for kk=1,5 do
					local zuwanjiaF = _G["RRfenGList_"..p.."_"..kk]
					local zuwanjiaName = zuwanjiaF.Name.t:GetText()
					if zuwanjiaF:IsShown() then
						local zuwanjiaG = zuwanjiaF.fenGV:GetText()
						msnfenG=msnfenG..zuwanjiaName..":"..zuwanjiaG.."，"
					end
				end
				PIGSendChatRaidParty(msnfenG);
				self.Tex:SetDesaturated(true);
			else
				PIG_print("当前分G人已离线，请选择其他未离线成员");
				UIErrorsFrame:TryDisplayMessage(234, "当前分G人已离线，请选择其他未离线成员", YELLOW_FONT_COLOR:GetRGB())
			end	
		end);
		duiwuF.biaoti = PIGFontString(duiwuF,{"LEFT", duiwuF.tongzhi, "RIGHT", 0,1},"\124cff00FF00"..p.."队\124r", "OUTLINE",15);
		duiwuF.jiaoyi = PIGFontString(duiwuF,{"LEFT",duiwuF.biaoti,"RIGHT",2,0},"需交易G\124r", "OUTLINE");
		duiwuF.jiaoyiG = PIGFontString(duiwuF,{"LEFT",duiwuF.jiaoyi,"RIGHT",0,0},0, "OUTLINE",15);
		duiwuF.jiaoyiG:SetTextColor(1, 1, 1, 1)

		for pp=1,5 do
			local player = CreateFrame("Frame", "RRfenGList_"..p.."_"..pp, duiwuF);
			player:SetSize(duiwu_Width,duiwu_Height);
			if pp==1 then
				player:SetPoint("TOP",duiwuF,"TOP",0,-1);
			else
				player:SetPoint("TOP",_G["RRfenGList_"..p.."_"..(pp-1)],"BOTTOM",0,-PjiangeH);
			end
			if pp~=5 then PIGLine(player,"BOT",-1,nil,{0.3,0.3,0.3,0.3}) end
			-------------
			player.fenGren = CreateFrame("CheckButton", nil, player, "UIRadioButtonTemplate");
			player.fenGren:SetSize(duiwu_Height-10,duiwu_Height-9);
			player.fenGren:SetHitRectInsets(0,0,-2,-2);
			player.fenGren:SetPoint("LEFT",player,"LEFT",1,0);
			PIGEnter(player.fenGren,"设置为"..p.."队分G人员")
			player.fenGren:SetScript("OnClick", function (self)
				for qq=1,5 do
					_G["RRfenGList_"..p.."_"..qq].fenGren:SetChecked(false);
				end
				self:SetChecked(true);
			end)	
			-------------
			player.Name = CreateFrame("Frame", nil, player);
			player.Name:SetPoint("LEFT",player.fenGren,"RIGHT",1,0);
			player.Name:SetSize(duiwu_Width-72,duiwu_Height);
			player.Name.t = PIGFontString(player.Name,{"LEFT",player.Name,"LEFT",0,0},"","OUTLINE");
			player.Name:SetScript("OnMouseUp", function (self)
				if ( MailFrame:IsVisible() and MailFrame.selectedTab == 2 ) then
					SendMailInfo(player.AllName,0)
				else
					PIG_print("请先打开邮箱发件页面");
				end
			end);
			-------------
			player.buzhu = player:CreateTexture(nil, "ARTWORK");
			player.buzhu:SetTexture("interface/lfgframe/ui-lfg-icon-roles.blp");
			player.buzhu:SetSize(duiwu_Height-10,duiwu_Height-8);
			player.buzhu:SetPoint("LEFT", player.Name, "RIGHT", 0,0);
			player.fenGbili = player:CreateTexture(nil, "ARTWORK");
			player.fenGbili:SetSize(duiwu_Height-10,duiwu_Height-8);
			player.fenGbili:SetPoint("LEFT", player.buzhu, "RIGHT", 0,0);
			-- ------
			player.mail = CreateFrame("Button",nil,player, "TruncatedButtonTemplate",pp);
			player.mail:SetHighlightTexture("interface/buttons/ui-common-mousehilight.blp")
			player.mail:SetSize(duiwu_Height-9,duiwu_Height-8);
			player.mail:SetPoint("LEFT", player.fenGbili, "RIGHT", 2,0);
			player.mail.Tex = player.mail:CreateTexture(nil, "BORDER");
			player.mail.Tex:SetTexture("interface/cursor/mail.blp");
			player.mail.Tex:SetSize(duiwu_Height-9,duiwu_Height-8);
			player.mail.Tex:SetPoint("CENTER");
			player.mail:SetScript("OnMouseDown", function (self)
				self.Tex:SetPoint("CENTER",-1.5,-1.5);
			end);
			player.mail:SetScript("OnMouseUp", function (self)
				self.Tex:SetPoint("CENTER");
			end);
			player.mail:SetScript("OnClick", function (self)
				if ( MailFrame:IsVisible() and MailFrame.selectedTab == 2 ) then
					SendMailInfo(player.AllName,player.fenGV:GetText())
					PIGA["RaidRecord"]["Raidinfo"][p][pp][8]=1;
					RaidR.Update_FenG()
				else
					PIG_print("请先打开邮箱发件页面");
				end
			end);
			player.fenG = CreateFrame("Frame", nil, player);
			player.fenG:SetSize(10,duiwu_Height);
			player.fenG:SetPoint("RIGHT",player.Name,"RIGHT",0,0);
			player.fenG:SetFrameLevel(FrameLevel+20)
			player.fenGV = PIGFontString(player.fenG,{"RIGHT",player.fenG,"RIGHT",0,0},0,"OUTLINE");
			player.fenGV:Hide();
		end
	end

	fujiF.nr.yedibuF = PIGLine(fujiF.nr,"BOT",80)
	--分G人数设置
	fujiF.nr.rensh_ALL = PIGFontString(fujiF.nr,{"TOPLEFT",fujiF.nr.yedibuF,"BOTTOMLEFT",10,-10},"\124cff00FF00总人数:\124r", "OUTLINE");
	fujiF.nr.rensh_ALL_V = PIGFontString(fujiF.nr,{"LEFT",fujiF.nr.rensh_ALL,"RIGHT",0,0},0, "OUTLINE",15);
	fujiF.nr.rensh_ALL_V:SetTextColor(1, 1, 1, 1);

	--分G比例
	fujiF.nr.fenGbili_1_icon = fujiF.nr:CreateTexture(nil, "ARTWORK");
	fujiF.nr.fenGbili_1_icon:SetTexture(fenGbiliIcon[1]);
	fujiF.nr.fenGbili_1_icon:SetSize(duiwu_Height-8,duiwu_Height-8);
	fujiF.nr.fenGbili_1_icon:SetPoint("LEFT", fujiF.nr.rensh_ALL, "RIGHT", 100,0);
	fujiF.nr.fenGbili_1 = PIGFontString(fujiF.nr,{"LEFT",fujiF.nr.fenGbili_1_icon,"RIGHT",0,0},"|cff00ff00双倍:|r", "OUTLINE");
	fujiF.nr.fenGbili_1_V = PIGFontString(fujiF.nr,{"LEFT",fujiF.nr.fenGbili_1,"RIGHT",0,0},0, "OUTLINE",15);
	fujiF.nr.fenGbili_1_V:SetTextColor(1, 1, 1, 1);

	fujiF.nr.fenGbili_2_icon = fujiF.nr:CreateTexture(nil, "ARTWORK");
	fujiF.nr.fenGbili_2_icon:SetTexture(fenGbiliIcon[2]);
	fujiF.nr.fenGbili_2_icon:SetSize(duiwu_Height-8,duiwu_Height-8);
	fujiF.nr.fenGbili_2_icon:SetPoint("LEFT", fujiF.nr.fenGbili_1_icon, "RIGHT", 70,0);
	fujiF.nr.fenGbili_2 = PIGFontString(fujiF.nr,{"LEFT",fujiF.nr.fenGbili_2_icon,"RIGHT",0,0},"|cff00ff000.5倍:|r", "OUTLINE");
	fujiF.nr.fenGbili_2_V = PIGFontString(fujiF.nr,{"LEFT",fujiF.nr.fenGbili_2,"RIGHT",0,0},0, "OUTLINE",15);
	fujiF.nr.fenGbili_2_V:SetTextColor(1, 1, 1, 1);

	fujiF.nr.fenGbili_3_icon = fujiF.nr:CreateTexture(nil, "ARTWORK");
	fujiF.nr.fenGbili_3_icon:SetTexture(fenGbiliIcon[3]);
	fujiF.nr.fenGbili_3_icon:SetSize(duiwu_Height-8,duiwu_Height-8);
	fujiF.nr.fenGbili_3_icon:SetPoint("LEFT", fujiF.nr.fenGbili_2_icon, "RIGHT", 70,0);
	fujiF.nr.fenGbili_3 = PIGFontString(fujiF.nr,{"LEFT",fujiF.nr.fenGbili_3_icon,"RIGHT",0,0},"|cff00ff00不分:|r", "OUTLINE");
	fujiF.nr.fenGbili_3_V = PIGFontString(fujiF.nr,{"LEFT",fujiF.nr.fenGbili_3,"RIGHT",0,0},0, "OUTLINE",15);
	fujiF.nr.fenGbili_3_V:SetTextColor(1, 1, 1, 1);

	--补助
	fujiF.nr.buzhu_1_icon = fujiF.nr:CreateTexture(nil, "ARTWORK");
	fujiF.nr.buzhu_1_icon:SetTexture("interface/lfgframe/ui-lfg-icon-roles.blp");
	fujiF.nr.buzhu_1_icon:SetTexCoord(zhizeIcon[1][1],zhizeIcon[1][2],zhizeIcon[1][3],zhizeIcon[1][4]);
	fujiF.nr.buzhu_1_icon:SetSize(duiwu_Height-8,duiwu_Height-8);
	fujiF.nr.buzhu_1_icon:SetPoint("LEFT", fujiF.nr.fenGbili_3_icon, "RIGHT", 160,0);
	fujiF.nr.buzhu_1 = PIGFontString(fujiF.nr,{"LEFT",fujiF.nr.buzhu_1_icon,"RIGHT",0,0},"|cff00ff00"..buzhuzhize[1].."|r", "OUTLINE");
	fujiF.nr.buzhu_1_V = PIGFontString(fujiF.nr,{"LEFT",fujiF.nr.buzhu_1,"RIGHT",0,0},0, "OUTLINE",15);
	fujiF.nr.buzhu_1_V:SetTextColor(1, 1, 1, 1);
	fujiF.nr.buzhu_2_icon = fujiF.nr:CreateTexture(nil, "ARTWORK");
	fujiF.nr.buzhu_2_icon:SetTexture("interface/lfgframe/ui-lfg-icon-roles.blp");
	fujiF.nr.buzhu_2_icon:SetTexCoord(zhizeIcon[2][1],zhizeIcon[2][2],zhizeIcon[2][3],zhizeIcon[2][4]);
	fujiF.nr.buzhu_2_icon:SetSize(duiwu_Height-8,duiwu_Height-8);
	fujiF.nr.buzhu_2_icon:SetPoint("LEFT", fujiF.nr.buzhu_1_icon, "RIGHT", 70,0);
	fujiF.nr.buzhu_2 = PIGFontString(fujiF.nr,{"LEFT",fujiF.nr.buzhu_2_icon,"RIGHT",0,0},"|cff00ff00"..buzhuzhize[2].."|r", "OUTLINE");
	fujiF.nr.buzhu_2_V = PIGFontString(fujiF.nr,{"LEFT",fujiF.nr.buzhu_2,"RIGHT",0,0},0, "OUTLINE",15);
	fujiF.nr.buzhu_2_V:SetTextColor(1, 1, 1, 1);
	fujiF.nr.buzhu_3_icon = fujiF.nr:CreateTexture(nil, "ARTWORK");
	fujiF.nr.buzhu_3_icon:SetTexture("interface/lfgframe/ui-lfg-icon-roles.blp");
	fujiF.nr.buzhu_3_icon:SetTexCoord(zhizeIcon[3][1],zhizeIcon[3][2],zhizeIcon[3][3],zhizeIcon[3][4]);
	fujiF.nr.buzhu_3_icon:SetSize(duiwu_Height-8,duiwu_Height-8);
	fujiF.nr.buzhu_3_icon:SetPoint("LEFT", fujiF.nr.buzhu_2_icon, "RIGHT", 70,0);
	fujiF.nr.buzhu_3 = PIGFontString(fujiF.nr,{"LEFT",fujiF.nr.buzhu_3_icon,"RIGHT",0,0},"|cff00ff00"..buzhuzhize[3].."|r", "OUTLINE");
	fujiF.nr.buzhu_3_V = PIGFontString(fujiF.nr,{"LEFT",fujiF.nr.buzhu_3,"RIGHT",0,0},0, "OUTLINE",15);
	fujiF.nr.buzhu_3_V:SetTextColor(1, 1, 1, 1);

	--=========================
	fujiF.nr.yedibuF2 = PIGLine(fujiF.nr,"BOT",46)
	--人均
	fujiF.nr.shouru0 = PIGFontString(fujiF.nr,{"TOPLEFT",fujiF.nr.yedibuF2,"BOTTOMLEFT",10,-16},"\124cffFFFF00人均/G:\124r", "OUTLINE");
	fujiF.nr.shouru0_V = PIGFontString(fujiF.nr,{"LEFT",fujiF.nr.shouru0,"RIGHT",0,0},0, "OUTLINE",15);
	fujiF.nr.shouru0_V:SetTextColor(1, 1, 1, 1);
	--人均
	fujiF.nr.shouru1 = PIGFontString(fujiF.nr,{"LEFT",fujiF.nr.shouru0,"RIGHT",62,0},"\124cffFFFF00全工/G:\124r", "OUTLINE");
	fujiF.nr.shouru1_V = PIGFontString(fujiF.nr,{"LEFT",fujiF.nr.shouru1,"RIGHT",0,0},0, "OUTLINE",15);
	fujiF.nr.shouru1_V:SetTextColor(1, 1, 1, 1);

	fujiF.nr.shouru2 = PIGFontString(fujiF.nr,{"LEFT",fujiF.nr.shouru1,"RIGHT",62,0},"\124cffFFFF00双工/G:\124r", "OUTLINE");
	fujiF.nr.shouru2_V = PIGFontString(fujiF.nr,{"LEFT",fujiF.nr.shouru2,"RIGHT",0,0},0, "OUTLINE",15);
	fujiF.nr.shouru2_V:SetTextColor(1, 1, 1, 1);

	fujiF.nr.shouru3 = PIGFontString(fujiF.nr,{"LEFT",fujiF.nr.shouru2,"RIGHT",62,0},"\124cffFFFF00半工/G:\124r", "OUTLINE");
	fujiF.nr.shouru3_V = PIGFontString(fujiF.nr,{"LEFT",fujiF.nr.shouru3,"RIGHT",0,0},0, "OUTLINE",15);
	fujiF.nr.shouru3_V:SetTextColor(1, 1, 1, 1);
	---广播分配信息=================================
	fujiF.nr.guangbo = PIGButton(fujiF.nr,{"TOPRIGHT",fujiF.nr.yedibuF2,"BOTTOMRIGHT",-210,-10},{118,24},"·发送到");
	fujiF.nr.guangbo.Text:SetPoint("LEFT",fujiF.nr.guangbo,"LEFT",21,0);
	fujiF.nr.guangbo.Tex = fujiF.nr.guangbo:CreateTexture(nil, "BORDER");
	fujiF.nr.guangbo.Tex:SetTexture("interface/common/voicechat-speaker.blp");
	fujiF.nr.guangbo.Tex:SetPoint("LEFT",6,0);
	fujiF.nr.guangbo.Tex:SetSize(22,22);
	fujiF.nr.guangbo:SetScript("OnMouseDown", function (self)
		self.Tex:SetPoint("LEFT",10,-1);
	end);
	fujiF.nr.guangbo:SetScript("OnMouseUp", function (self)
		self.Tex:SetPoint("LEFT",8,0);
	end);
	local function bobaoxini(idx,ZongSR)
    	local dataX = PIGA["RaidRecord"]["Raidinfo"]
		for p=1,#dataX do
			for pp=1,#dataX[p] do
				if dataX[p][pp][4] then
					if dataX[p][pp][4]==LeftmenuV[idx] then
						if dataX[p][pp][5] then--百分比补助
							local baifenbishouru=ZongSR*(dataX[p][pp][6]*0.01)
							SendChatMessage("["..buzhuzhize[idx].."补助]支出"..baifenbishouru.."G("..dataX[p][pp][6].."%)<"..dataX[p][pp][1]..">", fujiF.nr.guangbo_dow.moren)
						else
							SendChatMessage("["..buzhuzhize[idx].."补助]支出"..dataX[p][pp][6].."G<"..dataX[p][pp][1]..">", fujiF.nr.guangbo_dow.moren)
						end
					end
				end
			end
		end
	end
	fujiF.nr.guangbo:SetScript("OnClick", function (self)
		local liupaichupin={};
		SendChatMessage("========收支明细========", fujiF.nr.guangbo_dow.moren)
		local ItemSLsit = PIGA["RaidRecord"]["ItemList"];
		for id=1,#ItemSLsit do
			if ItemSLsit[id][9]>0 or ItemSLsit[id][14]>0 then
				if ItemSLsit[id][14]>0 then
					SendChatMessage(ItemSLsit[id][2].."x"..ItemSLsit[id][3].." 收入:"..ItemSLsit[id][9]+ItemSLsit[id][14].."G(买方<"..ItemSLsit[id][8]..">尚欠"..ItemSLsit[id][14]..")", fujiF.nr.guangbo_dow.moren);
				else
					SendChatMessage(ItemSLsit[id][2].."x"..ItemSLsit[id][3].." 收入:"..ItemSLsit[id][9].."G(买方<"..ItemSLsit[id][8]..">)", fujiF.nr.guangbo_dow.moren);
				end
			else
				if PIGA["RaidRecord"]["Rsetting"]["liupaibobao"] then
					table.insert(liupaichupin,ItemSLsit[id][2]);
				end
			end
		end
		if #liupaichupin>0 then
			SendChatMessage("以下为流拍物品:", fujiF.nr.guangbo_dow.moren);
			local LPnum = 3--流派每行物品数
			for l=1,math.ceil(#liupaichupin/LPnum) do
				if l==1 then
					local textmsgIiem="";
					for ll=1,l*LPnum do
						if liupaichupin[ll]~=nil then
							textmsgIiem=textmsgIiem..liupaichupin[ll];
						end
					end
					SendChatMessage(textmsgIiem, fujiF.nr.guangbo_dow.moren);
				else
					local textmsgIiem1="";
					for ll=(l-1)*LPnum+1,l*LPnum do
						if liupaichupin[ll]~=nil then
							textmsgIiem1=textmsgIiem1..liupaichupin[ll];
						end
					end
					SendChatMessage(textmsgIiem1, fujiF.nr.guangbo_dow.moren);
				end
				textmsgIiem=nil;textmsgIiem1=nil;
			end
		end
		--补助
		local ZongSR=RaidR.xiafangF.ZongSR_V:GetText();
		if PIGA["RaidRecord"]["Rsetting"]["bobaomingxi"] then
			local dataX = PIGA["RaidRecord"]["fakuan"]
	    	for p=1,#dataX do
				if dataX[p][3]~="N/A" then
					if dataX[p][4]>0 then
						SendChatMessage("["..dataX[p][1].."]收入"..dataX[p][2].."G<"..dataX[p][3]..">尚欠"..dataX[p][4].."G",fujiF.nr.guangbo_dow.moren)
					else
						SendChatMessage("["..dataX[p][1].."]收入"..dataX[p][2].."G<"..dataX[p][3]..">",fujiF.nr.guangbo_dow.moren)
					end
				end
			end
			bobaoxini(1,ZongSR)
			bobaoxini(2,ZongSR)
			bobaoxini(3,ZongSR)
			local dataX = PIGA["RaidRecord"]["jiangli"]
	    	for p=1,#dataX do
				if dataX[p][3]~="N/A" then
					if dataX[p][4] then--百分比补助
						local baifenbishouru=ZongSR*(dataX[p][2]*0.01);
						SendChatMessage("["..dataX[p][1].."]支出"..baifenbishouru.."G("..dataX[p][2].."%)<"..dataX[p][3]..">",fujiF.nr.guangbo_dow.moren)
					else
						SendChatMessage("["..dataX[p][1].."]支出"..dataX[p][2].."G<"..dataX[p][3]..">",fujiF.nr.guangbo_dow.moren)
					end
				end
			end
		end
		local Wupin_SR=RaidR.xiafangF.Wupin_SR_V:GetText()
		local fakuan_SR=RaidR.xiafangF.fakuan_SR_V:GetText();
		local buzhu_ZC=RaidR.xiafangF.buzhu_SR_V:GetText();
		local jiangli_ZC=RaidR.xiafangF.jiangli_SR_V:GetText();
		local Jing_RS=RaidR.xiafangF.Jing_RS_V:GetText();
		local hejifayanxianMSG="合计:";
		hejifayanxianMSG=hejifayanxianMSG.."物品收入:"..Wupin_SR.."G,";	
		if tonumber(fakuan_SR)>0 then
			hejifayanxianMSG=hejifayanxianMSG.."罚款/其他收入:"..fakuan_SR.."G,";
		end
		hejifayanxianMSG=hejifayanxianMSG.."总收入:"..ZongSR.."G,";
		if tonumber(buzhu_ZC)>0 then
			hejifayanxianMSG=hejifayanxianMSG.."补助支出:"..buzhu_ZC.."G,";
		end
		if tonumber(jiangli_ZC)>0 then
			hejifayanxianMSG=hejifayanxianMSG.."奖励支出:"..jiangli_ZC.."G,";
		end
		hejifayanxianMSG=hejifayanxianMSG.."净收入:"..Jing_RS.."G,";
		SendChatMessage(hejifayanxianMSG, fujiF.nr.guangbo_dow.moren);
		--
		local shourumingxi="";
		local zongrenshu=fujiF.nr.rensh_ALL_V:GetText();
		local renshu2=fujiF.nr.fenGbili_1_V:GetText();
		local renshu05=fujiF.nr.fenGbili_2_V:GetText();
		local renshu0=fujiF.nr.fenGbili_3_V:GetText();
		local renshu1=zongrenshu-renshu0
		local shouru1=tonumber(fujiF.nr.shouru1_V:GetText());
		local shouru2=tonumber(fujiF.nr.shouru2_V:GetText());
		local shouru3=tonumber(fujiF.nr.shouru3_V:GetText());
		if tonumber(renshu1)>0 then
			shourumingxi=shourumingxi.."人均:"..shouru1.."G(分G人数"..renshu1..")，";
		end
		if tonumber(renshu2)>0  then
			shourumingxi=shourumingxi.."双工:"..shouru2.."G(人数"..renshu2..")，";
		end
		if tonumber(renshu05)>0 then
			shourumingxi=shourumingxi.."半工:"..shouru3.."G(人数"..renshu05..")";
		end
		SendChatMessage(shourumingxi, fujiF.nr.guangbo_dow.moren);
		SendChatMessage("==<!Pig开团助手为你服务>==",fujiF.nr.guangbo_dow.moren);
	end);
	local pindaoName = {["RAID"]="|cffFF7F00团队|r",["SAY"]="|cffFFFFFF说话|r",["PARTY"]="|cffAAAAFF队伍|r",["GUILD"]="|cff40FF40公会|r"};
	local pindaoID = {"RAID","SAY","PARTY","GUILD"};
	fujiF.nr.guangbo_dow=PIGDownMenu(fujiF.nr,{"LEFT",fujiF.nr.guangbo,"RIGHT", -40,0},{62,24})
	fujiF.nr.guangbo_dow:SetBackdrop(nil)
	fujiF.nr.guangbo_dow.Text:SetPoint("RIGHT",fujiF.nr.guangbo_dow.Button,"LEFT",-2,0);
	fujiF.nr.guangbo_dow.moren="RAID"
	function fujiF.nr.guangbo_dow:PIGDownMenu_Update_But(self)
		local info = {}
		info.func = self.PIGDownMenu_SetValue
		for i=1,#pindaoID,1 do
			info.notCheckable=true
		    info.text, info.arg1, info.arg2 = pindaoName[pindaoID[i]], pindaoID[i], pindaoID[i]
			fujiF.nr.guangbo_dow:PIGDownMenu_AddButton(info)
		end 
	end
	function fujiF.nr.guangbo_dow:PIGDownMenu_SetValue(value,arg1,arg2)
		fujiF.nr.guangbo_dow:PIGDownMenu_SetText(value)
		fujiF.nr.guangbo_dow.moren=arg1
		PIGCloseDropDownMenus()
	end
	fujiF.nr.guangbo_dow:PIGDownMenu_SetText(pindaoName[fujiF.nr.guangbo_dow.moren])
	--
	fujiF.nr.liupaibobao = PIGCheckbutton(fujiF.nr,{"LEFT",fujiF.nr.guangbo,"RIGHT",40,0},{"流拍","开启后,发送拍卖结果时会播报流拍物品"})
	fujiF.nr.liupaibobao:SetScript("OnClick", function (self)
		if self:GetChecked() then
			PIGA["RaidRecord"]["Rsetting"]["liupaibobao"]=true;
		else
			PIGA["RaidRecord"]["Rsetting"]["liupaibobao"]=false;
		end
	end);
	--
	fujiF.nr.bobaomingxi = PIGCheckbutton(fujiF.nr,{"LEFT",fujiF.nr.liupaibobao,"RIGHT",40,0},{"明细","开启后,发送拍卖结果时会播报补助/奖励/罚款明细"})
	fujiF.nr.bobaomingxi:SetScript("OnClick", function (self)
		if self:GetChecked() then
			PIGA["RaidRecord"]["Rsetting"]["bobaomingxi"]=true;
		else
			PIGA["RaidRecord"]["Rsetting"]["bobaomingxi"]=false;
		end
	end);

	--显示玩家分G数-----
	local xianshiWH = 18
	fujiF.nr.XianshifenGV = CreateFrame("Button",nil,fujiF.nr, "TruncatedButtonTemplate"); 
	fujiF.nr.XianshifenGV:SetHighlightTexture("interface/buttons/ui-common-mousehilight.blp");
	fujiF.nr.XianshifenGV:SetSize(xianshiWH,xianshiWH);
	fujiF.nr.XianshifenGV:SetPoint("TOPRIGHT",fujiF.nr.yedibuF2,"BOTTOMRIGHT",-8,-14);
	fujiF.nr.XianshifenGV.tex = fujiF.nr.XianshifenGV:CreateTexture(nil, "OVERLAY");
	fujiF.nr.XianshifenGV.tex:SetTexture("interface/moneyframe/ui-goldicon.blp");
	fujiF.nr.XianshifenGV.tex:SetSize(xianshiWH,xianshiWH);
	fujiF.nr.XianshifenGV.tex:SetPoint("CENTER",0,0);
	fujiF.nr.XianshifenGV:SetScript("OnMouseDown", function (self)
		self.tex:SetPoint("CENTER",-1.2,-1.2);
	end);
	fujiF.nr.XianshifenGV:SetScript("OnMouseUp", function (self)
		self.tex:SetPoint("CENTER",0,0);
	end);	
	fujiF.nr.XianshifenGV:SetScript("OnClick", function (self)
		if self.yixianshi then
			for p=1,8 do
				for pp=1,5 do
					_G["RRfenGList_"..p.."_"..pp].fenGV:Hide()
				end
			end
			self.yixianshi=false
		else
			for p=1,8 do
				for pp=1,5 do
					_G["RRfenGList_"..p.."_"..pp].fenGV:Show()
				end
			end
			self.yixianshi=true
		end	
	end);
	--计算分G-----------
	function RaidR.Update_FenG()
		if not fujiF.nr:IsShown() then return end
		for p=1,8 do
			local duiwuF = _G["RRfenGList_"..p]
			duiwuF.tongzhi:Hide()
			duiwuF.jiaoyi:Hide()
			duiwuF.jiaoyiG:SetText("")
			for pp=1,5 do
				_G["RRfenGList_"..p.."_"..pp]:Hide()
			end
		end
		local renyuanxinxi = {
			["renshu"]=0,
			["buzhurenshu"]={},
			["fenGbili"]={},
		}
		for g=1,#LeftmenuV do
			renyuanxinxi.buzhurenshu[g]= 0
		end
		for g=1,#RightmenuV do
			renyuanxinxi.fenGbili[g]= 0
		end
		local infoData = PIGA["RaidRecord"]["Raidinfo"]
		for p=1,8 do
			local duinum = #infoData[p]
			if duinum>0 then
				local duiwuF = _G["RRfenGList_"..p]
				duiwuF.tongzhi:Show()
				duiwuF.jiaoyi:Show()
				renyuanxinxi.renshu=renyuanxinxi.renshu+duinum
				for pp=1,duinum do
					local renyF = _G["RRfenGList_"..p.."_"..pp]
					renyF:Show()
					local AllName = infoData[p][pp][1]
					renyF.AllName=AllName
					local name,server = strsplit("-", AllName);
					if server then
						renyF.Name.t:SetText(name.."(*)")
					else
						renyF.Name.t:SetText(name)
					end
					local zhiye = infoData[p][pp][2]
					local color = RAID_CLASS_COLORS[zhiye]
					--renyF.color=color
					renyF.Name.t:SetTextColor(color.r, color.g, color.b,1);
					--补助类型
					local buzhuLEI = infoData[p][pp][4]
					if buzhuLEI then
						renyF.buzhu:Show()
						for g=1,#LeftmenuV do
							if buzhuLEI==LeftmenuV[g] then
								renyuanxinxi.buzhurenshu[g]=renyuanxinxi.buzhurenshu[g]+1
								renyF.buzhu:SetTexCoord(zhizeIcon[g][1],zhizeIcon[g][2],zhizeIcon[g][3],zhizeIcon[g][4]);
							end
						end
					else
						renyF.buzhu:Hide()
					end
					--分G比例
					local fenGLEI = infoData[p][pp][3]
					if fenGLEI==1 then
						renyF.fenGbili:Hide()
					else
						renyF.fenGbili:Show()
						for g=1,#RightmenuV do
							if fenGLEI==RightmenuV[g] then
								renyuanxinxi.fenGbili[g]=renyuanxinxi.fenGbili[g]+1
								renyF.fenGbili:SetTexture(fenGbiliIcon[g]);
							end
						end
					end
					--邮寄图标
					if infoData[p][pp][7] then--需邮寄
						renyF.mail:Show()
						local yiyouji = infoData[p][pp][8]
						if yiyouji then
							renyF.mail.Tex:SetTexture("interface/cursor/unablemail.blp");
						else
							renyF.mail.Tex:SetTexture("interface/cursor/mail.blp");
						end
					else
						renyF.mail:Hide()
					end
				end
			end
		end

		fujiF.nr.rensh_ALL_V:SetText(renyuanxinxi.renshu);
		fujiF.nr.fenGbili_1_V:SetText(renyuanxinxi.fenGbili[1]);
		fujiF.nr.fenGbili_2_V:SetText(renyuanxinxi.fenGbili[2]);
		fujiF.nr.fenGbili_3_V:SetText(renyuanxinxi.fenGbili[3]);
		fujiF.nr.buzhu_1_V:SetText(renyuanxinxi.buzhurenshu[1]);
		fujiF.nr.buzhu_2_V:SetText(renyuanxinxi.buzhurenshu[2]);
		fujiF.nr.buzhu_3_V:SetText(renyuanxinxi.buzhurenshu[3]);
		---
		fujiF.nr.shouru0_V:SetText(0)
		fujiF.nr.shouru1_V:SetText(0)
		fujiF.nr.shouru2_V:SetText(0)
		fujiF.nr.shouru3_V:SetText(0)
		local zongshouru=tonumber(RaidR.xiafangF.ZongSR_V:GetText());
		local jingshouru=tonumber(RaidR.xiafangF.Jing_RS_V:GetText());
		if jingshouru>0 and renyuanxinxi.renshu>0 then
			local pingjunshouru=jingshouru/(renyuanxinxi.renshu-renyuanxinxi.fenGbili[3]+renyuanxinxi.fenGbili[1]);--没人应得数
			fujiF.nr.shouru0_V:SetText(floor(pingjunshouru));
			if renyuanxinxi.fenGbili[2]==0 then--没有0.5倍
				fujiF.nr.shouru1_V:SetText(floor(pingjunshouru));
				fujiF.nr.shouru2_V:SetText(floor(pingjunshouru*2));
				fujiF.nr.shouru3_V:SetText(floor(pingjunshouru*0.5));
			else
				fujiF.nr.shouru3_V:SetText(floor(pingjunshouru*0.5));
				local bangongkouchu = pingjunshouru*0.5*renyuanxinxi.fenGbili[2]--半工扣除金额
				local quchubangongrenshu = renyuanxinxi.renshu-renyuanxinxi.fenGbili[3]+renyuanxinxi.fenGbili[1]-renyuanxinxi.fenGbili[2]--去掉半工人数剩余人数
				if quchubangongrenshu>0 then
					local Qrenjunshouru=(pingjunshouru*quchubangongrenshu+bangongkouchu)/quchubangongrenshu;--半工扣除平均分给其他人
					fujiF.nr.shouru1_V:SetText(floor(Qrenjunshouru));
					fujiF.nr.shouru2_V:SetText(floor(Qrenjunshouru*2));
				else
					fujiF.nr.shouru1_V:SetText(floor(pingjunshouru));
					fujiF.nr.shouru2_V:SetText(floor(pingjunshouru*2));
				end
			end
		end
		--个人分G数和队伍需交易数
		for p=1,8 do
			local duiwufenGshu={
				["duiwuG"]=0,
				["renwu"]={0,0,0,0,0},
			};	
			if #infoData[p]>0 then	
				for pp=1,#infoData[p] do
						local gerenData = infoData[p][pp]
						--分G比例数
						local shouru1=tonumber(fujiF.nr.shouru1_V:GetText());
						local shouru2=tonumber(fujiF.nr.shouru2_V:GetText());
						local shouru3=tonumber(fujiF.nr.shouru3_V:GetText());
						local fenGshujuID={shouru2,shouru3,0,shouru1}
						for g=1,#RightmenuV do
							if gerenData[3]==RightmenuV[g] then
								duiwufenGshu.renwu[pp]=duiwufenGshu.renwu[pp]+fenGshujuID[g];
								if not gerenData[7] then--不需邮寄
									duiwufenGshu.duiwuG=duiwufenGshu.duiwuG+fenGshujuID[g];
								end
							end
						end
						--补助金额
						for g=1,#LeftmenuV do
							if gerenData[4]==LeftmenuV[g] then
								if gerenData[5] then
									local bili = gerenData[6]*0.01
									local biliG = zongshouru*bili
									duiwufenGshu.renwu[pp]=duiwufenGshu.renwu[pp]+biliG;
									if not gerenData[7] then--不需邮寄
										duiwufenGshu.duiwuG=duiwufenGshu.duiwuG+biliG;
									end
								else
									duiwufenGshu.renwu[pp]=duiwufenGshu.renwu[pp]+gerenData[6];
									if not gerenData[7] then--不需邮寄
										duiwufenGshu.duiwuG=duiwufenGshu.duiwuG+gerenData[6];
									end
								end
							end
						end
						--奖励人员
						local dataX = PIGA["RaidRecord"]["jiangli"]
				    	for g=1,#dataX do
							if dataX[g][3]~="N/A" then
								if gerenData[1]==dataX[g][3] then
									if dataX[g][4] then
										local bili = dataX[g][2]*0.01
										local biliG = zongshouru*bili
										duiwufenGshu.renwu[pp]=duiwufenGshu.renwu[pp]+biliG;
										if not gerenData[7] then--不需邮寄
											duiwufenGshu.duiwuG=duiwufenGshu.duiwuG+biliG;
										end
									else
										duiwufenGshu.renwu[pp]=duiwufenGshu.renwu[pp]+dataX[g][2];
										if not gerenData[7] then--不需邮寄
											duiwufenGshu.duiwuG=duiwufenGshu.duiwuG+dataX[g][2];
										end
									end
								end
							end
						end
						--减去有罚款欠款人的欠款金额
						local dataX = PIGA["RaidRecord"]["fakuan"]
						for g=1,#dataX do
							if dataX[g][3]~="N/A" then
								if gerenData[1]==dataX[g][3] then
									duiwufenGshu.renwu[pp]=duiwufenGshu.renwu[pp]-dataX[g][4];
									if not gerenData[7] then--不需邮寄
										duiwufenGshu.duiwuG=duiwufenGshu.duiwuG-dataX[g][4];
									end
								end
							end
						end
						_G["RRfenGList_"..p.."_"..pp].fenGV:SetText(floor(duiwufenGshu.renwu[pp]))
				end
				_G["RRfenGList_"..p].jiaoyiG:SetText(floor(duiwufenGshu.duiwuG))
			end
		end
	end
	fujiF.nr:SetScript("OnShow", function (self)
		self.liupaibobao:SetChecked(PIGA["RaidRecord"]["Rsetting"]["liupaibobao"]);
		self.bobaomingxi:SetChecked(PIGA["RaidRecord"]["Rsetting"]["bobaomingxi"]);
		RaidR.Update_FenG()
	end)
	
	--密语激活邮寄图标
	fujiF:SetScript("OnEvent",function (self,event,arg1,arg2,arg3,arg4,arg5)
		if event=="CHAT_MSG_WHISPER" then
			local mailYES=arg1:find("邮寄", 1)
			if mailYES then
				local gongzi=arg1:find("工资", 1)
				local xinshui=arg1:find("薪水", 1)
				if gongzi or xinshui then
					local xianyoushuju = PIGA["RaidRecord"]["Raidinfo"]
					for p=1,8 do
						for pp=1,#xianyoushuju[p] do
								if arg5 == xianyoushuju[p][pp][1] then
									if xianyoushuju[p][pp][7] then
										SendChatMessage("你已登记，请勿重复发送！", "WHISPER", nil, arg5);
									else
										xianyoushuju[p][pp][7]=true
										SendChatMessage("已登记，工资将通过邮件送达,请注意查收！", "WHISPER", nil, arg5);
										RaidR.Update_FenG()
									end
								end
						end
					end
				end
			end
		end
	end)
end