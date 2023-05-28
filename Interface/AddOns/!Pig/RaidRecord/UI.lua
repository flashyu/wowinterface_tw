local addonName, addonTable = ...;
local L=addonTable.locale
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
---
local RaidRFun=addonTable.RaidRFun
local Width,Height,biaotiH  = 820, 570, 21;
--父框架
function RaidRFun.RaidRecord()
	if not PIGA["RaidRecord"]["Open"] then return end
	if _G[GnUI] then return end
	local GnName,GnUI,GnIcon,FrameLevel = RaidRFun.GnName,RaidRFun.GnUI,RaidRFun.GnIcon
	local ModBut = PIGModbutton(GnName,GnIcon,GnUI,FrameLevel,3)
	local RaidR=PIGFrame(UIParent,{"CENTER",UIParent,"CENTER",0,20},{Width, Height},GnUI,true)
	RaidR:PIGSetBackdrop(0.8)
	RaidR:PIGClose()
	RaidR:PIGSetMovable()
	RaidR.biaoti = PIGFontString(RaidR,{"TOP", RaidR, "TOP", 0, -4},GnName)
	PIGLine(RaidR,"TOP",-biaotiH)
	--内容显示
	RaidR.TOPF=PIGFrame(RaidR,{"TOPLEFT",RaidR,"TOPLEFT",0,-30})
	RaidR.TOPF:SetPoint("BOTTOMRIGHT",RaidR,"BOTTOMRIGHT",0,100);
	RaidR.F=PIGOptionsList_RF(RaidR.TOPF,biaotiH)
	
-- 	--内容显示框架
-- 	RaidR.TabFrame = CreateFrame("Frame", nil, RaidR,"BackdropTemplate");
-- 	RaidR.TabFrame:SetBackdrop({bgFile = "interface/raidframe/ui-raidframe-groupbg.blp",
-- 		edgeFile = "interface/glues/common/textpanel-border.blp", 
-- 		tile = false,tileSize = 0, edgeSize = 20,insets = { left = 4, right = 2, top = 0, bottom = 4 }});
-- 	RaidR.TabFrame:SetSize(Width-40,hang_Height*hang_NUM);
-- 	RaidR.TabFrame:SetPoint("TOP",RaidR,"TOP",0,-44);
-- 	----
-- 	local TabWidth,TabHeight = 110,26;
-- 	local TabName = {"拾取记录","T/N补助","罚款/收入","奖励/支出","人员信息"};
-- 	for id=1,#TabName do
-- 		local Tablist = CreateFrame("Button","Tablist_"..id.."_UI",RaidR.TabFrame, "TruncatedButtonTemplate",id);
-- 		Tablist:SetSize(TabWidth,TabHeight);
-- 		if id==1 then
-- 			Tablist:SetPoint("BOTTOMLEFT", RaidR.TabFrame, "TOPLEFT", 30,-1);
-- 		else
-- 			Tablist:SetPoint("LEFT", _G["Tablist_"..(id-1).."_UI"], "RIGHT", 20,0);
-- 		end
-- 		Tablist.Tex = Tablist:CreateTexture(nil, "BORDER");
-- 		Tablist.Tex:SetTexture("interface/paperdollinfoframe/ui-character-inactivetab.blp");
-- 		PIGRotation(Tablist.Tex, 180)
-- 		Tablist.Tex:SetPoint("BOTTOM", Tablist, "BOTTOM", 0,0);
-- 		Tablist.title = Tablist:CreateFontString();
-- 		Tablist.title:SetPoint("BOTTOM", Tablist, "BOTTOM", 0,5);
-- 		Tablist.title:SetFontObject(GameFontNormalSmall);
-- 		Tablist.title:SetText(TabName[id]);
-- 		Tablist.highlight = Tablist:CreateTexture(nil, "BORDER");
-- 		Tablist.highlight:SetTexture("interface/paperdollinfoframe/ui-character-tab-highlight.blp");
-- 		Tablist.highlight:SetBlendMode("ADD")
-- 		Tablist.highlight:SetPoint("CENTER", Tablist.title, "CENTER", 0,0);
-- 		Tablist.highlight:SetSize(TabWidth-12,TabHeight);
-- 		Tablist.highlight:Hide();
-- 		Tablist:SetScript("OnEnter", function (self)
-- 			if not _G["TablistFrame_"..self:GetID().."_UI"]:IsShown() then
-- 				self.title:SetTextColor(1, 1, 1, 1);
-- 				self.highlight:Show();
-- 			end
-- 		end);
-- 		Tablist:SetScript("OnLeave", function (self)
-- 			if not _G["TablistFrame_"..self:GetID().."_UI"]:IsShown() then
-- 				self.title:SetTextColor(1, 215/255, 0, 1);	
-- 			end
-- 			self.highlight:Hide();
-- 		end);
-- 		Tablist:SetScript("OnMouseDown", function (self)
-- 			if not _G["TablistFrame_"..self:GetID().."_UI"]:IsShown() then
-- 				self.title:SetPoint("CENTER", _G["Tablist_"..self:GetID().."_UI"], "CENTER", 2, -2);
-- 			end
-- 		end);
-- 		Tablist:SetScript("OnMouseUp", function (self)
-- 			if not _G["TablistFrame_"..self:GetID().."_UI"]:IsShown() then
-- 				self.title:SetPoint("CENTER", _G["Tablist_"..self:GetID().."_UI"], "CENTER", 0, 0);
-- 			end
-- 		end);
-- 		local TablistFrame = CreateFrame("Frame", "TablistFrame_"..id.."_UI",RaidR.TabFrame);
-- 		TablistFrame:SetSize(Width-40,hang_Height*hang_NUM);
-- 		TablistFrame:SetPoint("TOP",RaidR.TabFrame,"TOP",0,-0);
-- 		TablistFrame:Hide();
-- 		Tablist:SetScript("OnClick", function (self)
-- 			for x=1,#TabName do
-- 				_G["Tablist_"..x.."_UI"].Tex:SetTexture("interface/paperdollinfoframe/ui-character-inactivetab.blp");
-- 				_G["Tablist_"..x.."_UI"].Tex:SetPoint("BOTTOM", _G["Tablist_"..x.."_UI"], "BOTTOM", 0,0);
-- 				_G["Tablist_"..x.."_UI"].title:SetTextColor(1, 215/255, 0, 1);
-- 				_G["TablistFrame_"..x.."_UI"]:Hide();
-- 			end
-- 			self.Tex:SetTexture("interface/paperdollinfoframe/ui-character-activetab.blp");
-- 			self.Tex:SetPoint("BOTTOM", _G["Tablist_"..self:GetID().."_UI"], "BOTTOM", 0,-2);
-- 			self.title:SetTextColor(1, 1, 1, 1);
-- 			_G["TablistFrame_"..self:GetID().."_UI"]:Show();
-- 			self.highlight:Hide();
-- 		end);
-- 		if id==1 then
-- 			--激活选项卡第一页
-- 			Tablist.Tex:SetTexture("interface/paperdollinfoframe/ui-character-activetab.blp");
-- 			Tablist.Tex:SetPoint("BOTTOM", Tablist, "BOTTOM", 0,-2);
-- 			Tablist.title:SetTextColor(1, 1, 1, 1);
-- 			TablistFrame:Show()
-- 		end
-- 	end
	--===下方控制栏====
	RaidR.xiafangF = PIGFrame(RaidR,{"TOPLEFT",RaidR.TOPF,"BOTTOMLEFT",0,0});
	RaidR.xiafangF:SetPoint("BOTTOMRIGHT",RaidR,"BOTTOMRIGHT",0,0);
	RaidR.xiafangF.lian = RaidR.xiafangF:CreateLine()
	RaidR.xiafangF.lian:SetColorTexture(0.4,0.4,0.4,0.6)
	RaidR.xiafangF.lian:SetThickness(2.4);
	RaidR.xiafangF.lian:SetStartPoint("TOPLEFT",Width/3-30,0)
	RaidR.xiafangF.lian:SetEndPoint("BOTTOMLEFT",Width/3-30,0)
	RaidR.xiafangF.lian1 = RaidR.xiafangF:CreateLine()
	RaidR.xiafangF.lian1:SetColorTexture(0.4,0.4,0.4,0.6)
	RaidR.xiafangF.lian1:SetThickness(2.4);
	RaidR.xiafangF.lian1:SetStartPoint("TOPLEFT",Width/3*2-60,0)
	RaidR.xiafangF.lian1:SetEndPoint("BOTTOMLEFT",Width/3*2-60,0)
	--1格下方统计金额----------------------------------------------------
	RaidR.xiafangF.Wupin_SR = RaidR.xiafangF:CreateFontString();
	RaidR.xiafangF.Wupin_SR:SetPoint("TOPLEFT",RaidR.xiafangF,"TOPLEFT",2,-3);
	RaidR.xiafangF.Wupin_SR:SetFont(ChatFontNormal:GetFont(), 14, "OUTLINE");
	RaidR.xiafangF.Wupin_SR:SetText("\124cffFFFF00物品拍卖收入/G：\124r");
	RaidR.xiafangF.Wupin_SR_V = RaidR.xiafangF:CreateFontString();
	RaidR.xiafangF.Wupin_SR_V:SetPoint("LEFT",RaidR.xiafangF.Wupin_SR,"RIGHT",0,0);
	RaidR.xiafangF.Wupin_SR_V:SetFont(ChatFontNormal:GetFont(), 14, "OUTLINE");
	RaidR.xiafangF.buzhu_SR = RaidR.xiafangF:CreateFontString();
	RaidR.xiafangF.buzhu_SR:SetPoint("TOPLEFT",RaidR.xiafangF.Wupin_SR,"BOTTOMLEFT",0,-3);
	RaidR.xiafangF.buzhu_SR:SetFont(ChatFontNormal:GetFont(), 14, "OUTLINE");
	RaidR.xiafangF.buzhu_SR:SetText("\124cffFFFF00补助支出/G：\124r");
	RaidR.xiafangF.buzhu_SR_V = RaidR.xiafangF:CreateFontString();
	RaidR.xiafangF.buzhu_SR_V:SetPoint("LEFT",RaidR.xiafangF.buzhu_SR,"RIGHT",0,0);
	RaidR.xiafangF.buzhu_SR_V:SetFont(ChatFontNormal:GetFont(), 14, "OUTLINE");
	RaidR.xiafangF.fakuan_SR = RaidR.xiafangF:CreateFontString();
	RaidR.xiafangF.fakuan_SR:SetPoint("TOPLEFT",RaidR.xiafangF.buzhu_SR,"BOTTOMLEFT",0,-3);
	RaidR.xiafangF.fakuan_SR:SetFont(ChatFontNormal:GetFont(), 14, "OUTLINE");
	RaidR.xiafangF.fakuan_SR:SetText("\124cffFFFF00罚款其他收入/G：\124r");
	RaidR.xiafangF.fakuan_SR_V = RaidR.xiafangF:CreateFontString();
	RaidR.xiafangF.fakuan_SR_V:SetPoint("LEFT",RaidR.xiafangF.fakuan_SR,"RIGHT",0,0);
	RaidR.xiafangF.fakuan_SR_V:SetFont(ChatFontNormal:GetFont(), 14, "OUTLINE");
	RaidR.xiafangF.jiangli_SR = RaidR.xiafangF:CreateFontString();
	RaidR.xiafangF.jiangli_SR:SetPoint("TOPLEFT",RaidR.xiafangF.fakuan_SR,"BOTTOMLEFT",0,-3);
	RaidR.xiafangF.jiangli_SR:SetFont(ChatFontNormal:GetFont(), 14, "OUTLINE");
	RaidR.xiafangF.jiangli_SR:SetText("\124cffFFFF00奖励支出/G：\124r");
	RaidR.xiafangF.jiangli_SR_V = RaidR.xiafangF:CreateFontString();
	RaidR.xiafangF.jiangli_SR_V:SetPoint("LEFT",RaidR.xiafangF.jiangli_SR,"RIGHT",0,0);
	RaidR.xiafangF.jiangli_SR_V:SetFont(ChatFontNormal:GetFont(), 14, "OUTLINE");
	--2格下方统计金额----------------------------------------------------
	RaidR.xiafangF.ZongSR = RaidR.xiafangF:CreateFontString();
	RaidR.xiafangF.ZongSR:SetPoint("TOPLEFT",RaidR.xiafangF.lian,"TOPLEFT",8,-2);
	RaidR.xiafangF.ZongSR:SetFont(ChatFontNormal:GetFont(), 14, "OUTLINE");
	RaidR.xiafangF.ZongSR:SetText("\124cffFFFF00总收入/G：\124r");
	RaidR.xiafangF.ZongSR_V = RaidR.xiafangF:CreateFontString();
	RaidR.xiafangF.ZongSR_V:SetPoint("LEFT",RaidR.xiafangF.ZongSR,"RIGHT",0,0);
	RaidR.xiafangF.ZongSR_V:SetFont(ChatFontNormal:GetFont(), 14, "OUTLINE");
	RaidR.xiafangF.Jing_RS = RaidR.xiafangF:CreateFontString();
	RaidR.xiafangF.Jing_RS:SetPoint("TOPLEFT",RaidR.xiafangF.ZongSR,"BOTTOMLEFT",0,-6);
	RaidR.xiafangF.Jing_RS:SetFont(ChatFontNormal:GetFont(), 14, "OUTLINE");
	RaidR.xiafangF.Jing_RS:SetText("\124cffFFFF00净收入/G:\124r");
	RaidR.xiafangF.Jing_RS_V = RaidR.xiafangF:CreateFontString();
	RaidR.xiafangF.Jing_RS_V:SetPoint("LEFT",RaidR.xiafangF.Jing_RS,"RIGHT",0,0);
	RaidR.xiafangF.Jing_RS_V:SetFont(ChatFontNormal:GetFont(), 14, "OUTLINE");
	--分G计算方式提示
	RaidR.xiafangF.jisuantishi = CreateFrame("Frame", nil, RaidR.xiafangF);
	RaidR.xiafangF.jisuantishi:SetSize(22,22);
	RaidR.xiafangF.jisuantishi:SetPoint("BOTTOMLEFT",RaidR.xiafangF.lian,"BOTTOMLEFT",130,7);
	RaidR.xiafangF.jisuantishi.Texture = RaidR.xiafangF.jisuantishi:CreateTexture(nil, "BORDER");
	RaidR.xiafangF.jisuantishi.Texture:SetTexture("interface/dialogframe/dialogalerticon.blp");
	RaidR.xiafangF.jisuantishi.Texture:SetSize(34,36);
	RaidR.xiafangF.jisuantishi.Texture:SetPoint("CENTER",RaidR.xiafangF.jisuantishi,"CENTER",0,0);
	local jisuanguize = {
		"分G人数：团队总人数-不分G人数+双工人数",
		"每人应得：净收入÷分G人数=每人应得数",
		"半工工资：每人应得工资扣除一半为半工实发数",
		"全工工资(无半工)：每人应得数即为实发数",
		"全工工资(有半工)：每人应得+(半工扣款×半工人数)/(分G人数-半工人数)=全工实发数",
		"双工工资：全工工资×2",
	}
	RaidR.xiafangF.jisuantishi:SetScript("OnEnter", function (self)
		GameTooltip:ClearLines();
		GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT",0,0);
		GameTooltip:AddLine("分G计算规则:")
		GameTooltip:AddLine("\124cff00ff00"..jisuanguize[1].."\124r")
		GameTooltip:AddLine("\124cff00ff00"..jisuanguize[2].."\124r")
		GameTooltip:AddLine("\124cff00ff00"..jisuanguize[3].."\124r")
		GameTooltip:AddLine("\124cff00ff00"..jisuanguize[4].."\124r")
		GameTooltip:AddLine("\124cff00ff00"..jisuanguize[5].."\124r")
		GameTooltip:AddLine("\124cff00ff00"..jisuanguize[6].."\124r")
		GameTooltip:AddLine("\124cff00ffff左键点击发送上方分G规则\124r")
		GameTooltip:AddLine("关于半工扣款分配给其他成员的说明：个人认为因为你没有做到应有的事，\n导致其他人员工作量增加，所以你的扣款均分给其他人是合理且公平的。")
		GameTooltip:AddLine("\124cff00ffff右键点击发送半工扣款说明\124r")
		GameTooltip:Show();
	end);
	RaidR.xiafangF.jisuantishi:SetScript("OnLeave", function ()
		GameTooltip:ClearLines();
		GameTooltip:Hide() 
	end);
	RaidR.xiafangF.jisuantishi:SetScript("OnMouseDown", function (self)
		self.Texture:SetPoint("CENTER",RaidR.xiafangF.jisuantishi,"CENTER",-1,-1);
	end);
	RaidR.xiafangF.jisuantishi:SetScript("OnMouseUp", function (self,button)
		self.Texture:SetPoint("CENTER",RaidR.xiafangF.jisuantishi,"CENTER",0,0);
		if button=="LeftButton" then
			SendChatMessage("=======本团分G计算规则========", RaidR_UI.xuanzhongChat, nil);
			for i=1,#jisuanguize do
				SendChatMessage(jisuanguize[i], RaidR_UI.xuanzhongChat, nil);
			end
		else
			SendChatMessage("====半工不等于全工一半说明====", RaidR_UI.xuanzhongChat, nil);
			SendChatMessage("注意区分每人应得和实发数，半工为应得一半非实发一半", RaidR_UI.xuanzhongChat, nil);
			SendChatMessage("团队因为你没有做到应有的事,导致其他人员工作量增加,所以你的扣款均分给其他人是合理且公平的", RaidR_UI.xuanzhongChat, nil);
		end
	end);
	--更新收入
	local function UpdateG()
		--物品
		local Wupin_shouru=0;
		for ii = 1, #PIGA["RaidRecord"]["ItemList"] do
			Wupin_shouru=Wupin_shouru+PIGA["RaidRecord"]["ItemList"][ii][9]+PIGA["RaidRecord"]["ItemList"][ii][14];
		end
		RaidR.xiafangF.Wupin_SR_V:SetText(Wupin_shouru);
		--补助支出
		local Buzhu_shouru=0;
		for i=1, 8 do
	    	if #PIGA["RaidRecord"]["Raidinfo"][i]>0 then
				for ii=1, #PIGA["RaidRecord"]["Raidinfo"][i] do
					if PIGA["RaidRecord"]["Raidinfo"][i][ii][5]=="坦克补助" or PIGA["RaidRecord"]["Raidinfo"][i][ii][5]=="其他补助" or PIGA["RaidRecord"]["Raidinfo"][i][ii][5]=="治疗补助" then
						Buzhu_shouru=PIGA["RaidRecord"]["Raidinfo"][i][ii][6]+Buzhu_shouru;
					end
				end
			end
		end
		RaidR.xiafangF.buzhu_SR_V:SetText(Buzhu_shouru);
		--罚款+其他收入
		local fakuan_shouru=0;
		for i = 1, #PIGA["RaidRecord"]["fakuan"] do
			if PIGA["RaidRecord"]["fakuan"][i][4]~="无" then
				fakuan_shouru=PIGA["RaidRecord"]["fakuan"][i][2]+PIGA["RaidRecord"]["fakuan"][i][3]+fakuan_shouru;
			end
		end
		RaidR.xiafangF.fakuan_SR_V:SetText(fakuan_shouru);
		--奖励支出
		local jiangli_shouru=0;
		for i = 1, #PIGA["RaidRecord"]["jiangli"] do
			if PIGA["RaidRecord"]["jiangli"][i][3]~="无" then
				jiangli_shouru=PIGA["RaidRecord"]["jiangli"][i][2]+jiangli_shouru;
			end
		end
		RaidR.xiafangF.jiangli_SR_V:SetText(jiangli_shouru);
		local Zshouru=Wupin_shouru+fakuan_shouru;
		RaidR.xiafangF.ZongSR_V:SetText(Zshouru);
		local Jshouru=Zshouru-Buzhu_shouru-jiangli_shouru;
		RaidR.xiafangF.Jing_RS_V:SetText(Jshouru);
	end
--	addonTable.RaidRecord_UpdateG = UpdateG;
-- 	--=====================================================
-- 	--新的记录
-- 	local function ADD_fubenjilu()
-- 		if #PIGA["RaidRecord"]["ItemList"]>0 then
-- 			local N_list1=PIGA["RaidRecord"]["instanceName"][1];
-- 			local N_list2=PIGA["RaidRecord"]["instanceName"][2];
-- 			local fubenName={N_list1,N_list2,N_list3};
-- 			---
-- 			local wupinH={};
-- 			for t=1,#PIGA["RaidRecord"]["ItemList"] do
-- 				local W_list1=PIGA["RaidRecord"]["ItemList"][t][2];
-- 				local W_list2=PIGA["RaidRecord"]["ItemList"][t][9];
-- 				local W_list3=PIGA["RaidRecord"]["ItemList"][t][8];
-- 				local W_list={W_list1,W_list2,W_list3};
-- 				table.insert(wupinH,W_list);
-- 			end
-- 			local fakuanH={};
-- 			for b=1,#PIGA["RaidRecord"]["fakuan"] do
-- 				if PIGA["RaidRecord"]["fakuan"][b][4]~="无" then
-- 					local B_list1=PIGA["RaidRecord"]["fakuan"][b][1];
-- 					local B_list2=PIGA["RaidRecord"]["fakuan"][b][2]+PIGA["RaidRecord"]["fakuan"][b][3];
-- 					local B_list3=PIGA["RaidRecord"]["fakuan"][b][4];
-- 					local B_list={B_list1,B_list2,B_list3};
-- 					table.insert(fakuanH,B_list);
-- 				end
-- 			end
-- 			local jiangliH={};
-- 			for q=1,#PIGA["RaidRecord"]["jiangli"] do
-- 				if PIGA["RaidRecord"]["jiangli"][q][3]~="无" then
-- 					local Q_list1=PIGA["RaidRecord"]["jiangli"][q][1];
-- 					local Q_list2=PIGA["RaidRecord"]["jiangli"][q][2];
-- 					local Q_list3=PIGA["RaidRecord"]["jiangli"][q][3];
-- 					local Q_list={Q_list1,Q_list2,Q_list3};
-- 					table.insert(jiangliH,Q_list);
-- 				end
-- 			end
-- 			local buzhuH={};
-- 			for i=1, 8 do
-- 				if #PIGA["RaidRecord"]["Raidinfo"][i]>0 then
-- 					for ii=1, #PIGA["RaidRecord"]["Raidinfo"][i] do
-- 						if #PIGA["RaidRecord"]["Raidinfo"][i][ii]>0 then
-- 							if PIGA["RaidRecord"]["Raidinfo"][i][ii][5]=="坦克补助" or PIGA["RaidRecord"]["Raidinfo"][i][ii][5]=="其他补助" or PIGA["RaidRecord"]["Raidinfo"][i][ii][5]=="治疗补助" then
-- 								local Buzhu_list1=PIGA["RaidRecord"]["Raidinfo"][i][ii][5];
-- 								local Buzhu_list2=PIGA["RaidRecord"]["Raidinfo"][i][ii][6];
-- 								local Buzhu_list3=PIGA["RaidRecord"]["Raidinfo"][i][ii][4];
-- 								local Buzhu_list={Buzhu_list1,Buzhu_list2,Buzhu_list3};
-- 								table.insert(buzhuH,Buzhu_list);
-- 							end
-- 						end
-- 					end
-- 				end
-- 			end
-- 			local Shouru={
-- 				RaidR.xiafangF.Wupin_SR_V:GetText(),RaidR.xiafangF.buzhu_SR_V:GetText(),RaidR.xiafangF.fakuan_SR_V:GetText(),RaidR.xiafangF.jiangli_SR_V:GetText(),
-- 				RaidR.xiafangF.ZongSR_V:GetText(),RaidR.xiafangF.Jing_RS_V:GetText(),fenG_UI.renjunshouru_V:GetText()
-- 			}
-- 			local History={fubenName,wupinH,buzhuH,fakuanH,jiangliH,Shouru};
-- 			table.insert(PIGA["RaidRecord"]["History"],History);

-- 			----清空数据
-- 			PIGA["RaidRecord"]["ItemList"] = {};
-- 			PIGA["RaidRecord"]["Raidinfo"] = {{},{},{},{},{},{},{},{}};
-- 			for j=1,#PIGA["RaidRecord"]["fakuan"] do
-- 				PIGA["RaidRecord"]["fakuan"][j][4]="无";
-- 			end
-- 			for jj=1,#PIGA["RaidRecord"]["jiangli"] do
-- 				PIGA["RaidRecord"]["jiangli"][jj][3]="无";
-- 			end
-- 			fenG_BUT_UI:Disable();
-- 			fenG_UI:Hide();
-- 			local FBname = GetInstanceInfo()
-- 			PIGA["RaidRecord"]["instanceName"][1]=GetServerTime();
-- 			PIGA["RaidRecord"]["instanceName"][2]=FBname;
-- 			addonTable.RaidRecord_UpdateItem(Item_Scroll_UI);
-- 			addonTable.RaidRecord_Updatebuzhu_T(buzhu_T_List_Scroll_UI);
-- 			addonTable.RaidRecord_Updatebuzhu_N(buzhu_N_List_Scroll_UI);
-- 			addonTable.RaidRecord_UpdateFakuan(fakuan_Scroll_UI);
-- 			addonTable.RaidRecord_Updatejiangli(jiangli_Scroll_UI);
-- 			addonTable.RaidRecord_History(History_UI.list.Scroll);
-- 			addonTable.RaidInfo_Update_BUT()
-- 			PIGA["RaidRecord"]["Dongjie"] = "OFF";--关闭快照状态
-- 			RaidR_UI.xiafangF.DongjieTishi:Hide();
-- 		end
-- 	end
-- 	StaticPopupDialogs["NEW_WUPIN_LIST"] = {
-- 		text = "|cff00FFFF!Pig"..GnName.."：|r\n开始一份\124cff00ff00新的\124r副本记录吗?\n已有记录将被保存在历史记录内\n",
-- 		button1 = "确定",
-- 		button2 = "取消",
-- 		OnAccept = function()
-- 			ADD_fubenjilu()
-- 		end,
-- 		OnCancel = function()
-- 			PIGA["RaidRecord"]["instanceName"][1]=GetServerTime();
-- 			local FBname = GetInstanceInfo()
-- 			PIGA["RaidRecord"]["instanceName"][2]=FBname;
-- 		end,
-- 		timeout = 0,
-- 		whileDead = true,
-- 		hideOnEscape = true,
-- 	}
-- 	--
-- 	RaidR.xiafangF.NEW_jilu = CreateFrame("Button",nil,RaidR.xiafangF, "UIPanelButtonTemplate");  
-- 	RaidR.xiafangF.NEW_jilu:SetSize(80,28);
-- 	RaidR.xiafangF.NEW_jilu:SetPoint("TOPLEFT",RaidR.xiafangF,"TOPLEFT",Width*0.61,-6);
-- 	RaidR.xiafangF.NEW_jilu:SetText("新的记录");
-- 	RaidR.xiafangF.NEW_jilu:SetScript("OnClick", function ()
-- 		StaticPopup_Show("NEW_WUPIN_LIST");
-- 	end);
-- 	---
-- 	RaidR_UI:RegisterEvent("PLAYER_ENTERING_WORLD");
-- 	RaidR_UI:SetScript("OnEvent",function (self,event,arg1,arg2,arg3,arg4,arg5)
-- 		local inInstance, instanceType = IsInInstance()
-- 		if inInstance then
-- 			local FBname = GetInstanceInfo()
-- 			if #PIGA["RaidRecord"]["ItemList"]==0 then
-- 				PIGA["RaidRecord"]["instanceName"][1]=GetServerTime();
-- 				PIGA["RaidRecord"]["instanceName"][2]=FBname;
-- 			else
-- 				if PIGA["RaidRecord"]["instanceName"][2]==FBname then
-- 					if GetServerTime()-PIGA["RaidRecord"]["instanceName"][1]>43200 then
-- 						StaticPopup_Show("NEW_WUPIN_LIST");
-- 					end
-- 				else
-- 					StaticPopup_Show("NEW_WUPIN_LIST");
-- 				end
-- 			end
-- 		end
-- 	end);
-- 	---子页面
	RaidRFun.RaidRecord_Item()
-- 	addonTable.ADD_Item();--创建拾取目录
-- 	addonTable.ADD_buzhu();
-- 	addonTable.ADD_fakuan();
-- 	addonTable.ADD_jiangli();
-- 	addonTable.ADD_RaidInfo();--人物信息
-- 	addonTable.ADD_fenG()
-- 	addonTable.ADD_Invite();--组队助手
-- 	addonTable.ADD_History();
-- 	addonTable.ADD_Rsetting();--创建设置
-- 	--
-- 	addonTable.RaidInfo_Update_BUT()--冻结按钮
-- end
end