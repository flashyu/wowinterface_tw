local addonName, addonTable = ...;
local _, _, _, tocversion = GetBuildInfo()
local gsub = _G.string.gsub 
local find = _G.string.find
local sub = _G.string.sub 
local upper = _G.string.upper
------------
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
local PIGCloseBut=Create.PIGCloseBut
--===============================
local QuickChatfun=addonTable.QuickChatfun
local PIG_renwuming
local function fengeguanjianzi(str,delimiter)---分割字符
    local dLen = string.len(delimiter)
    local newDeli = ""
    for i=1,dLen,1 do
        newDeli = newDeli .. "["..delimiter:sub(i,i).."]"
    end
    local locaStart,locaEnd = str:find(newDeli)
    local arr = {}
    local n = 1
    while locaStart ~= nil
    do
        if locaStart>0 then
            arr[n] = str:sub(1,locaStart-1)
            n = n + 1
        end
        str = str:sub(locaEnd+1,string.len(str))
        locaStart,locaEnd = str:find(newDeli)
    end
    if str ~= nil and str ~= "" and str ~= " " then
        arr[n] = str
    end
    return arr
end
local Chatlist_W = {}
local Chatlist_B = {}
local function geshihua_txt(laiyuan)--格式化字符
	local NEWtxtlist={}
	local txtlist=PIGA["Chat"][laiyuan][PIG_renwuming]
	for x=1,#txtlist do
		local txtlist_hang={}
		for xx=1,#txtlist[x] do
			local tihuanteshuzifu=txtlist[x][xx]
			local tihuanteshuzifu=tihuanteshuzifu:gsub("%^","%%^");
			local tihuanteshuzifu=tihuanteshuzifu:gsub("%$","%%$");
			local tihuanteshuzifu=tihuanteshuzifu:gsub("%%","%%%");
			local tihuanteshuzifu=tihuanteshuzifu:gsub("%*","%%*");
			local tihuanteshuzifu=tihuanteshuzifu:gsub("%+","%%+");
			local tihuanteshuzifu=tihuanteshuzifu:gsub("%-","%%-");
			local tihuanteshuzifu=tihuanteshuzifu:gsub("%.","%%.");
			local tihuanteshuzifu=tihuanteshuzifu:gsub("%?","%%?");
			local tihuanteshuzifu=tihuanteshuzifu:gsub("%(","%%(");
			local tihuanteshuzifu=tihuanteshuzifu:gsub("%)","%%)");
			local tihuanteshuzifu=tihuanteshuzifu:gsub("%[","%%[");
			local tihuanteshuzifu=tihuanteshuzifu:gsub("%]","%%]");
			local tihuanteshuzifu=tihuanteshuzifu:upper()--转换大小写
			table.insert(txtlist_hang, tihuanteshuzifu);
		end
		table.insert(NEWtxtlist, txtlist_hang);
	end
	PIGA["Chat"][laiyuan][PIG_renwuming]=NEWtxtlist
	if laiyuan=="Keyword" then
		Chatlist_W=NEWtxtlist
	elseif laiyuan=="Blacklist" then
		Chatlist_B =NEWtxtlist
	end
end
local function Save_KeyValue(fuji,leixing,Scroll)
	local value = fuji:GetText();
	local value = value:gsub(" ", "")
	if value~="" then
		local value = value:gsub("，", ",")
		local guanjianzilist = fengeguanjianzi(value, ",")
		table.insert(PIGA["Chat"][leixing][PIG_renwuming],guanjianzilist)
		geshihua_txt(leixing)
		Scroll.gengxin_list(Scroll)
	end
	fuji.tishi:Show()
	fuji.YES:Hide();
	fuji:SetText("");
	fuji:ClearFocus()
end
--------------------
function QuickChatfun.QuickBut_Keyword()
	local wanjia, realm = UnitFullName("player")
	local realm=realm or GetRealmName()
	PIG_renwuming = wanjia.."-"..realm
	if not PIGA["Chat"]["Keyword"][PIG_renwuming] then PIGA["Chat"]["Keyword"][PIG_renwuming]={} end
	if not PIGA["Chat"]["Blacklist"][PIG_renwuming] then PIGA["Chat"]["Blacklist"][PIG_renwuming]={} end
	local fuFrame=QuickChatFFF_UI
	local fuWidth = fuFrame.Width
	local Width,Height = fuWidth,fuWidth
	local ziframe = {fuFrame:GetChildren()}
	if PIGA["Chat"]["QuickChat_style"]==1 then
		fuFrame.Keyword = CreateFrame("Button",nil,fuFrame); 
	elseif PIGA["Chat"]["QuickChat_style"]==2 then
		fuFrame.Keyword = CreateFrame("Button",nil,fuFrame, "UIMenuButtonStretchTemplate"); 
	end
	fuFrame.Keyword:SetSize(Width,Height);
	fuFrame.Keyword:SetPoint("LEFT",fuFrame,"LEFT",#ziframe*Width,0);
	fuFrame.Keyword.Tex = fuFrame.Keyword:CreateTexture();
	fuFrame.Keyword.Tex:SetTexture("interface/common/voicechat-on.blp");
	fuFrame.Keyword.Tex:SetSize(Width+2,Height-4);
	fuFrame.Keyword.Tex:SetPoint("CENTER", -7.5, 0);
	fuFrame.Keyword:SetScript("OnMouseDown",  function(self)
		self.Tex:SetPoint("CENTER", -6, -1.5);
	end)
	fuFrame.Keyword:SetScript("OnMouseUp",  function(self)
		self.Tex:SetPoint("CENTER", -7.5, 0);
	end)
	fuFrame.Keyword:SetScript("OnEnter", function (self)	
		GameTooltip:ClearLines();
		GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT",0,0);
		GameTooltip:SetText("|cff00FFff左键-|r|cffFFFF00关键字提取\n|cff00FFff右键-|r|cffFFFF00清空提取信息|r");
		GameTooltip:Show();
		GameTooltip:FadeOut()
	end);
	fuFrame.Keyword:SetScript("OnLeave", function (self)
		GameTooltip:ClearLines();
		GameTooltip:Hide() 
	end);
	fuFrame.Keyword:SetScript("OnClick", function(self,button)
		if button=="LeftButton" then
			if self.F:IsShown() then
				self.F:Hide()
			else
				self.F:Show()
			end
		else
			ChatFrame99:Clear()
		end
	end);
	----
	fuFrame.Keyword.F = CreateFrame("ScrollingMessageFrame", "ChatFrame99", fuFrame.Keyword, "ChatFrameTemplate")
	fuFrame.Keyword.F:SetHeight(200);
	fuFrame.Keyword.F:SetFrameStrata("LOW")
	fuFrame.Keyword.F:EnableMouse(false)
	fuFrame.Keyword.F:UnregisterAllEvents()
	--fuFrame.Keyword.F:Clear() -- 清除框架中的消息 
	--fuFrame.Keyword.F:SetFadeDuration(seconds)--设置淡入淡出持续时间 
	--fuFrame.Keyword.F:SetTimeVisible(seconds)--设置消息显示时间
	--fuFrame.Keyword.F:SetFading(false)淡入淡出
	--fuFrame.Keyword.F:SetMaxLines(999) --设置可显示最大行数
	--fuFrame.Keyword.F:SetInsertMode(TOP or BOTTOM) --设置新消息的插入位置
	--fuFrame.Keyword.F:SetToplevel(true)--单击子项时框架是否应自行升起
   	--fuFrame.Keyword.F:EnableMouseWheel(false)-- 禁用鼠标滚动
	fuFrame.Keyword.F:SetHyperlinksEnabled(true)--可点击
	if PIGA["Chat"]["FontSize"] then
		FCF_SetChatWindowFontSize(nil, ChatFrame99, PIGA["Chat"]["FontSize_value"])
	end

	fuFrame.Keyword.F.Background = fuFrame.Keyword.F:CreateTexture(nil, "BACKGROUND");
	fuFrame.Keyword.F.Background:SetTexture("Interface/ChatFrame/ChatFrameBackground");
	fuFrame.Keyword.F.Background:SetPoint("TOPLEFT",ChatFrame99,"TOPLEFT",0,0);
	fuFrame.Keyword.F.Background:SetPoint("BOTTOMRIGHT",ChatFrame99,"BOTTOMRIGHT",23,0);
	if PIGA["Chat"]["KeywordFShow"] then
		fuFrame.Keyword.F:Show();
	else
		fuFrame.Keyword.F:Hide();
	end
	fuFrame.Keyword.F:HookScript("OnShow", function(self)
		PIGA["Chat"]["KeywordFShow"]=true
		fuFrame.Keyword.youNEWxiaoxinlai=false;
	end);
	fuFrame.Keyword.F:HookScript("OnHide", function(self)
		PIGA["Chat"]["KeywordFShow"]=false
	end);
	fuFrame.Keyword.F:SetScript("OnMouseWheel", function(self, delta)
		if delta == 1 then
			fuFrame.Keyword.F:ScrollUp()
			fuFrame.Keyword.F.ScrollToBottomButton.hilight:Show();
		elseif delta == -1 then
			fuFrame.Keyword.F:ScrollDown()
			if fuFrame.Keyword.F:GetScrollOffset()==0 then
				fuFrame.Keyword.F.ScrollToBottomButton.hilight:Hide();
			end
		end
	end)
	---提醒
	fuFrame.Keyword.youNEWxiaoxinlai=false;
	local function guanjianziMGStishi()
		if fuFrame.Keyword.Tex:IsShown() then
			fuFrame.Keyword.Tex:Hide()
		else
			fuFrame.Keyword.Tex:Show()
		end
		if fuFrame.Keyword.youNEWxiaoxinlai then
			C_Timer.After(0.8,guanjianziMGStishi)
		else
			fuFrame.Keyword.Tex:Show()
		end
	end
	---翻页按钮=======================
	local anniudaxiaoF = 24
	fuFrame.Keyword.F.ScrollToBottomButton = CreateFrame("Button",nil,fuFrame.Keyword.F);
	fuFrame.Keyword.F.ScrollToBottomButton:SetNormalTexture("interface/chatframe/ui-chaticon-scrollend-up.blp")
	fuFrame.Keyword.F.ScrollToBottomButton:SetHighlightTexture("interface/buttons/ui-common-mousehilight.blp");
	fuFrame.Keyword.F.ScrollToBottomButton:SetPushedTexture("interface/chatframe/ui-chaticon-scrollend-down.blp")
	fuFrame.Keyword.F.ScrollToBottomButton:SetSize(anniudaxiaoF,anniudaxiaoF);
	fuFrame.Keyword.F.ScrollToBottomButton:SetPoint("BOTTOMLEFT",fuFrame.Keyword.F,"BOTTOMRIGHT",0,12);
	fuFrame.Keyword.F.ScrollToBottomButton.hilight = fuFrame.Keyword.F.ScrollToBottomButton:CreateTexture(nil,"OVERLAY");
	fuFrame.Keyword.F.ScrollToBottomButton.hilight:SetTexture("interface/chatframe/ui-chaticon-blinkhilight.blp");
	fuFrame.Keyword.F.ScrollToBottomButton.hilight:SetSize(anniudaxiaoF,anniudaxiaoF);
	fuFrame.Keyword.F.ScrollToBottomButton.hilight:SetPoint("CENTER", 0, 0);
	fuFrame.Keyword.F.ScrollToBottomButton.hilight:Hide();
	---------
	fuFrame.Keyword.F.ScrollToBottomButton:SetScript("OnClick", function (self)
		fuFrame.Keyword.F:ScrollToBottom()
		fuFrame.Keyword.F.ScrollToBottomButton.hilight:Hide();
	end);
	--设置==========
	local ButtonH = 22
	fuFrame.Keyword.F.shezhi = CreateFrame("Button",nil,fuFrame.Keyword.F);
	fuFrame.Keyword.F.shezhi:SetHighlightTexture("interface/buttons/ui-common-mousehilight.blp");
	fuFrame.Keyword.F.shezhi:SetSize(ButtonH,ButtonH);
	fuFrame.Keyword.F.shezhi:SetPoint("BOTTOM",fuFrame.Keyword.F.ScrollToBottomButton,"TOP",0,6);
	fuFrame.Keyword.F.shezhi.Tex = fuFrame.Keyword.F.shezhi:CreateTexture(nil, "BORDER");
	fuFrame.Keyword.F.shezhi.Tex:SetTexture("interface/gossipframe/bindergossipicon.blp");
	fuFrame.Keyword.F.shezhi.Tex:SetPoint("CENTER");
	fuFrame.Keyword.F.shezhi.Tex:SetSize(ButtonH-4,ButtonH-4);
	fuFrame.Keyword.F.shezhi:SetScript("OnMouseDown", function (self)
		self.Tex:SetPoint("CENTER",-1.2,-1.2);
	end);
	fuFrame.Keyword.F.shezhi:SetScript("OnMouseUp", function (self)
		self.Tex:SetPoint("CENTER");
	end);
	fuFrame.Keyword.F.shezhi:SetScript("OnClick", function (self)		
		if self.F:IsShown() then
			self.F:Hide()
		else
			self.F:Show()
		end	
	end);
	local shezhiW ,shezhiH=260,220
	fuFrame.Keyword.F.shezhi.F=PIGFrame(fuFrame.Keyword.F.shezhi,nil,nil,"Keyword_shezhiUI",true)
	fuFrame.Keyword.F.shezhi.F:PIGSetBackdrop(0.9)
	fuFrame.Keyword.F.shezhi.F:PIGClose()
	fuFrame.Keyword.F.shezhi.F:SetHeight(142);
	fuFrame.Keyword.F.shezhi.F:SetPoint("BOTTOMLEFT",fuFrame.Keyword.F,"BOTTOMLEFT",8,4);
	fuFrame.Keyword.F.shezhi.F:SetPoint("BOTTOMRIGHT",fuFrame.Keyword.F,"BOTTOMRIGHT",-4,4);
	fuFrame.Keyword.F.shezhi.F:Hide()
	--选项
	fuFrame.Keyword.F.shezhi.F.xitongjihuoB = PIGCheckbutton(fuFrame.Keyword.F.shezhi.F,{"TOPLEFT",fuFrame.Keyword.F.shezhi.F,"TOPLEFT",10,-10},{"过滤系统聊天框黑名单","开起后黑名单也会对系统聊天框生效，否则只对提取聊天框生效"})
	fuFrame.Keyword.F.shezhi.F.xitongjihuoB:SetScript("OnClick", function (self)
		if self:GetChecked() then
			PIGA["Chat"]["xitongjihuoB"]=true
		else
			PIGA["Chat"]["xitongjihuoB"]=false
		end
	end);
	fuFrame.Keyword.F.shezhi.F.guolvzishen = PIGCheckbutton(fuFrame.Keyword.F.shezhi.F,{"TOPLEFT",fuFrame.Keyword.F.shezhi.F,"TOPLEFT",10,-50},{"不显示自身发言","不显示自身发言"})
	fuFrame.Keyword.F.shezhi.F.guolvzishen:SetScript("OnClick", function (self)
		if self:GetChecked() then
			PIGA["Chat"]["guolvzishen"]=true
		else
			PIGA["Chat"]["guolvzishen"]=false
		end
	end);
	--
	fuFrame.Keyword.F.shezhi.F.guolvchongfu = PIGCheckbutton(fuFrame.Keyword.F.shezhi.F,{"LEFT",fuFrame.Keyword.F.shezhi.F.guolvzishen,"RIGHT",150,0},{"过滤重复发言","过滤1分钟之内的重复发言(此功能也会对系统聊天栏生效)"})
	fuFrame.Keyword.F.shezhi.F.guolvchongfu:SetScript("OnClick", function (self)
		if self:GetChecked() then
			PIGA["Chat"]["guolvchongfu"]=true
		else
			PIGA["Chat"]["guolvchongfu"]=false
		end
	end);
	--高度
	fuFrame.Keyword.F.shezhi.F.GaoduH = PIGFontString(fuFrame.Keyword.F.shezhi.F,{"TOPLEFT",fuFrame.Keyword.F.shezhi.F,"TOPLEFT",10,-100},"高度：");
	fuFrame.Keyword.F.shezhi.F.GaoduHSlider =PIGSlider(fuFrame.Keyword.F.shezhi.F,{"LEFT",fuFrame.Keyword.F.shezhi.F.GaoduH,"RIGHT",10,0},{100,14},{100,500,1},"拖动滑块或者用鼠标滚轮调整数值")
	fuFrame.Keyword.F.shezhi.F.GaoduHSlider:SetScript("OnValueChanged", function(self)
		local val = self:GetValue()
		self.Text:SetText(val);
		fuFrame.Keyword.F:SetHeight(val)
		PIGA["Chat"]["gaoduH"]=val
	end)
	fuFrame.Keyword.F.shezhi.F.GaoduHSlider:SetValue(PIGA["Chat"]["gaoduH"]);
	--颜色透明度
	if tocversion<80000 then
		local xiayiinfo = {0,1,0.1}
		fuFrame.Keyword.F.shezhi.F.Color = PIGSlider(fuFrame.Keyword.F.shezhi.F,{"TOPLEFT",fuFrame.Keyword.F.shezhi.F,"TOPLEFT",240,-100},{100,14},xiayiinfo)
		fuFrame.Keyword.F.shezhi.F.Color.t = PIGFontString(fuFrame.Keyword.F.shezhi.F.Color,{"RIGHT",fuFrame.Keyword.F.shezhi.F.Color,"LEFT",6,},"透明度")
		fuFrame.Keyword.F.shezhi.F.Color:SetScript("OnValueChanged", function(self)
			local Hval = self:GetValue()
			local Hval = Hval*10+0.5
			local Hval = floor(Hval)*0.1
			self.Text:SetText(Hval);
			PIGA["Chat"]["BgColor"][4]=Hval;
			fuFrame.Keyword.F.Background:SetVertexColor(unpack(PIGA["Chat"]["BgColor"]))
		end)
		fuFrame.Keyword.F.shezhi.F.Color:SetValue(PIGA["Chat"]["BgColor"][4]);
	else
		local newR, newG, newB, newA = unpack(PIGA["Chat"]["BgColor"])
		fuFrame.Keyword.F.Background:SetVertexColor(newR, newG, newB, newA)
		local function SETColorCallback(restore)
			local newR, newG, newB, newA;
			if restore then
				newR, newG, newB, newA = restore.r, restore.g, restore.b, restore.opacity
			else
				newA, newR, newG, newB = OpacitySliderFrame:GetValue(), ColorPickerFrame:GetColorRGB();
			end
			fuFrame.Keyword.F.Background:SetVertexColor(newR, newG, newB, newA)
			fuFrame.Keyword.F.shezhi.F.Color.Color:SetVertexColor(newR, newG, newB, newA)
			PIGA["Chat"]["BgColor"]={newR, newG, newB, newA}
		end
		fuFrame.Keyword.F.shezhi.F.Color = CreateFrame("Button", nil, fuFrame.Keyword.F.shezhi.F, "ColorSwatchTemplate")
		fuFrame.Keyword.F.shezhi.F.Color:SetPoint("TOPLEFT",fuFrame.Keyword.F.shezhi.F,"TOPLEFT",260,-100);
		fuFrame.Keyword.F.shezhi.F.Color:SetSize(26,26);
		fuFrame.Keyword.F.shezhi.F.Color.Color:SetVertexColor(newR, newG, newB, newA)	
		fuFrame.Keyword.F.shezhi.F.Color:SetScript("OnClick", function (self)
			local info={}
			info.r, info.g, info.b, info.opacity = fuFrame.Keyword.F.Background:GetVertexColor()
			info.hasOpacity = true
			info.swatchFunc=SETColorCallback
			info.opacityFunc=SETColorCallback
			info.cancelFunc=SETColorCallback
			OpenColorPicker(info);
		end);
	end
	fuFrame.Keyword.F.shezhi.F:HookScript("OnShow", function (self)	
		fuFrame.Keyword.F.shezhi.F.guolvzishen:SetChecked(PIGA["Chat"]["guolvzishen"])
		fuFrame.Keyword.F.shezhi.F.xitongjihuoB:SetChecked(PIGA["Chat"]["xitongjihuoB"])
		fuFrame.Keyword.F.shezhi.F.guolvchongfu:SetChecked(PIGA["Chat"]["guolvchongfu"])
	end)
	--编辑关键字/黑名单================================
	fuFrame.Keyword.F.Keyword = CreateFrame("Button",nil,fuFrame.Keyword.F);
	fuFrame.Keyword.F.Keyword:SetHighlightTexture("interface/buttons/ui-common-mousehilight.blp");
	fuFrame.Keyword.F.Keyword:SetSize(ButtonH,ButtonH);
	fuFrame.Keyword.F.Keyword:SetPoint("BOTTOM",fuFrame.Keyword.F.shezhi,"TOP",0,6);
	fuFrame.Keyword.F.Keyword.Tex = fuFrame.Keyword.F.Keyword:CreateTexture(nil, "BORDER");
	fuFrame.Keyword.F.Keyword.Tex:SetTexture("interface/buttons/ui-guildbutton-publicnote-up.blp");
	fuFrame.Keyword.F.Keyword.Tex:SetPoint("CENTER");
	fuFrame.Keyword.F.Keyword.Tex:SetSize(ButtonH-4,ButtonH-4);
	fuFrame.Keyword.F.Keyword:SetScript("OnMouseDown", function (self)
		self.Tex:SetPoint("CENTER",-1.2,-1.2);
	end);
	fuFrame.Keyword.F.Keyword:SetScript("OnMouseUp", function (self)
		self.Tex:SetPoint("CENTER");
	end);
	fuFrame.Keyword.F.Keyword:RegisterForClicks("LeftButtonUp","RightButtonUp")
	fuFrame.Keyword.F.Keyword:SetScript("OnClick", function (self,button)
		if button=="LeftButton" then
			if self.F:IsShown() then
				self.F:Hide()
			else
				self.F:Show()
			end
		else
			ChatFrame99:Clear()
		end
	end);
	local GJZW ,GJZH, hang_H, hang_NUM=600,400,23,12
	fuFrame.Keyword.F.Keyword.F=PIGFrame(fuFrame.Keyword.F.Keyword,nil,nil,"Keyword_addKeyUI",true)
	fuFrame.Keyword.F.Keyword.F:PIGSetBackdrop()
	fuFrame.Keyword.F.Keyword.F:PIGSetMovable()
	fuFrame.Keyword.F.Keyword.F:PIGClose()
	fuFrame.Keyword.F.Keyword.F:SetSize(GJZW ,GJZH);
	fuFrame.Keyword.F.Keyword.F:SetPoint("CENTER",UIParent,"CENTER",0,0);
	fuFrame.Keyword.F.Keyword.F:Hide()
	fuFrame.Keyword.F.Keyword.F.biaoti = PIGFontString(fuFrame.Keyword.F.Keyword.F,{"TOP", fuFrame.Keyword.F.Keyword.F, "TOP", 0, -4},"编辑关键字/黑名单");
	fuFrame.Keyword.F.Keyword.F.line1=PIGLine(fuFrame.Keyword.F.Keyword.F,"TOP",-20)
	--L
	fuFrame.Keyword.F.Keyword.F.L=PIGFrame(fuFrame.Keyword.F.Keyword.F)
	fuFrame.Keyword.F.Keyword.F.L:PIGSetBackdrop()
	fuFrame.Keyword.F.Keyword.F.L:SetPoint("TOPLEFT",fuFrame.Keyword.F.Keyword.F.line1,"BOTTOMLEFT",4,-4);
	fuFrame.Keyword.F.Keyword.F.L:SetPoint("BOTTOMRIGHT",fuFrame.Keyword.F.Keyword.F,"BOTTOMRIGHT",-GJZW/2-4,4);
	fuFrame.Keyword.F.Keyword.F.L.line1=PIGLine(fuFrame.Keyword.F.Keyword.F.L,"TOP",-26)
	--关键字
	fuFrame.Keyword.F.Keyword.F.L.T = PIGFontString(fuFrame.Keyword.F.Keyword.F.L,{"TOPLEFT",fuFrame.Keyword.F.Keyword.F.L,"TOPLEFT",8,-6},"提取关键字");
	fuFrame.Keyword.F.Keyword.F.L.daoru=PIGDownMenu(fuFrame.Keyword.F.Keyword.F.L,{"LEFT",fuFrame.Keyword.F.Keyword.F.L.T,"RIGHT", 4,0},{160,nil})
	fuFrame.Keyword.F.Keyword.F.L.daoru:SetScale(0.9)
	fuFrame.Keyword.F.Keyword.F.L.daoru:PIGDownMenu_SetText("导入其他角色")
	function fuFrame.Keyword.F.Keyword.F.L.daoru:PIGDownMenu_Update_But(self)
		local jueseListLL = PIGA["Chat"]["Keyword"];
		local info = {}
		info.func = self.PIGDownMenu_SetValue
		for k,v in pairs(jueseListLL) do
			if k~=PIG_renwuming then
				info.text, info.arg1 = "导入["..k.."]("..#v..")", k
				info.notCheckable = true;
				fuFrame.Keyword.F.Keyword.F.L.daoru:PIGDownMenu_AddButton(info)
			end
		end
	end
	function fuFrame.Keyword.F.Keyword.F.L.daoru:PIGDownMenu_SetValue(value,arg1,arg2)
		local info = {}
		for xx=1,#PIGA["Chat"]["Keyword"][arg1] do
			table.insert(info, PIGA["Chat"]["Keyword"][arg1][xx])
		end
		PIGA["Chat"]["Keyword"][PIG_renwuming] = info
		fuFrame.Keyword.F.Keyword.F.L.WList.Scroll.gengxin_list(fuFrame.Keyword.F.Keyword.F.L.WList.Scroll)
		PIGCloseDropDownMenus()
	end
	local function Focus_ShowHide(self1,self2,ShowHide)
		if ShowHide then
			self1.tishi:Hide()
			self1.YES:Show()
			self1:SetText("")
			self2.tishi:Show()
			self2.YES:Hide()
		else
			self1.tishi:Show()
			self1.YES:Hide()
			self1:SetText("")
		end
	end
	fuFrame.Keyword.F.Keyword.F.L.EW = CreateFrame("EditBox", nil, fuFrame.Keyword.F.Keyword.F.L,"InputBoxInstructionsTemplate");
	fuFrame.Keyword.F.Keyword.F.L.EW:SetSize(200,ButtonH);
	fuFrame.Keyword.F.Keyword.F.L.EW:SetPoint("TOPLEFT", fuFrame.Keyword.F.Keyword.F.L.line1, "BOTTOMLEFT", 10,-2);
	fuFrame.Keyword.F.Keyword.F.L.EW:SetFontObject(ChatFontNormal);
	fuFrame.Keyword.F.Keyword.F.L.EW:SetMaxLetters(20);
	fuFrame.Keyword.F.Keyword.F.L.EW:SetAutoFocus(false);
	fuFrame.Keyword.F.Keyword.F.L.EW.tishi = PIGFontString(fuFrame.Keyword.F.Keyword.F.L,{"LEFT",fuFrame.Keyword.F.Keyword.F.L.EW,"LEFT",6,0},"输入关键字(用,分隔)");
	fuFrame.Keyword.F.Keyword.F.L.EW.tishi:SetTextColor(0.8, 0.8, 0.8, 0.8);
	fuFrame.Keyword.F.Keyword.F.L.EW.YES = PIGButton(fuFrame.Keyword.F.Keyword.F.L.EW,{"LEFT",fuFrame.Keyword.F.Keyword.F.L.EW,"RIGHT",6,0},{50,ButtonH-2},"确定");
	fuFrame.Keyword.F.Keyword.F.L.EW.YES:Hide();
	fuFrame.Keyword.F.Keyword.F.L.EW:SetScript("OnEscapePressed", function(self)
		Focus_ShowHide(self,nil,false)
		self:ClearFocus()
	end);
	fuFrame.Keyword.F.Keyword.F.L.EW:SetScript("OnEditFocusGained", function(self)
		Focus_ShowHide(self,fuFrame.Keyword.F.Keyword.F.R.EB,true)
	end);
	fuFrame.Keyword.F.Keyword.F.L.EW:SetScript("OnHide", function(self)
		Focus_ShowHide(self,nil,false)
	end);
	fuFrame.Keyword.F.Keyword.F.L.EW:SetScript("OnEnterPressed", function(self)
		Save_KeyValue(self,"Keyword",fuFrame.Keyword.F.Keyword.F.L.WList.Scroll)
	end);
	fuFrame.Keyword.F.Keyword.F.L.EW.YES:SetScript("OnClick", function(self)
		local fujif = self:GetParent();
		Save_KeyValue(fujif,"Keyword",fuFrame.Keyword.F.Keyword.F.L.WList.Scroll)
	end)

	--例子
	fuFrame.Keyword.F.Keyword.F.L.lineW=PIGLine(fuFrame.Keyword.F.Keyword.F.L,"BOT",36)
	local tishineiW = "|cff00FF00附魔：提取包含附魔的内容\n收,氪金：提取同时包含收和氪金的内容|r"
	fuFrame.Keyword.F.Keyword.F.L.shili = PIGFontString(fuFrame.Keyword.F.Keyword.F.L,{"TOPLEFT",fuFrame.Keyword.F.Keyword.F.L.lineW,"BOTTOMLEFT",4,-4},tishineiW,nil,13);
	fuFrame.Keyword.F.Keyword.F.L.shili:SetJustifyH("LEFT")
	---显示列表
	fuFrame.Keyword.F.Keyword.F.L.WList = PIGFrame(fuFrame.Keyword.F.Keyword.F.L);
	fuFrame.Keyword.F.Keyword.F.L.WList:SetPoint("TOPLEFT", fuFrame.Keyword.F.Keyword.F.L.line1, "TOPLEFT", 0, -28);
	fuFrame.Keyword.F.Keyword.F.L.WList:SetPoint("BOTTOMRIGHT", fuFrame.Keyword.F.Keyword.F.L.lineW, "TOPRIGHT", 0, 0);
	fuFrame.Keyword.F.Keyword.F.L.WList.Scroll = CreateFrame("ScrollFrame",nil,fuFrame.Keyword.F.Keyword.F.L.WList, "FauxScrollFrameTemplate");  
	fuFrame.Keyword.F.Keyword.F.L.WList.Scroll:SetPoint("TOPLEFT",fuFrame.Keyword.F.Keyword.F.L.WList,"TOPLEFT",0,-1);
	fuFrame.Keyword.F.Keyword.F.L.WList.Scroll:SetPoint("BOTTOMRIGHT",fuFrame.Keyword.F.Keyword.F.L.WList,"BOTTOMRIGHT",-22,1);
	fuFrame.Keyword.F.Keyword.F.L.WList.Scroll.ScrollBar:SetScale(0.8);
	fuFrame.Keyword.F.Keyword.F.L.WList.Scroll:SetScript("OnVerticalScroll", function(self, offset)
	    FauxScrollFrame_OnVerticalScroll(self, offset, hang_H, self.gengxin_list)
	end)
	function fuFrame.Keyword.F.Keyword.F.L.WList.Scroll.gengxin_list(self)
		for id = 1, hang_NUM, 1 do	
			_G["KeyWList_"..id]:Hide();
		end
		local ItemsNum = #PIGA["Chat"]["Keyword"][PIG_renwuming];
		if ItemsNum>0 then
		    FauxScrollFrame_Update(self, ItemsNum, hang_NUM, hang_H);
		    local offset = FauxScrollFrame_GetOffset(self);
			for id = 1, hang_NUM do
				local dangqian = id+offset;
				if PIGA["Chat"]["Keyword"][PIG_renwuming][dangqian] then
					local fujik = _G["KeyWList_"..id]
					fujik:Show();
					fujik.del:SetID(dangqian);
					local guanjianzineironglianji = ""
					for xx=1,#PIGA["Chat"]["Keyword"][PIG_renwuming][dangqian] do
						if PIGA["Chat"]["Keyword"][PIG_renwuming][dangqian][xx] then
							if xx==#PIGA["Chat"]["Keyword"][PIG_renwuming][dangqian] then
								guanjianzineironglianji=guanjianzineironglianji..PIGA["Chat"]["Keyword"][PIG_renwuming][dangqian][xx]
							else
								guanjianzineironglianji=guanjianzineironglianji..PIGA["Chat"]["Keyword"][PIG_renwuming][dangqian][xx]..","
							end
						end
					end
					fujik.txt:SetText(guanjianzineironglianji);
				end
			end
		end
	end
	local WListWW = fuFrame.Keyword.F.Keyword.F.L.WList:GetWidth()
	for id = 1, hang_NUM, 1 do
		local ListBut = CreateFrame("Frame", "KeyWList_"..id, fuFrame.Keyword.F.Keyword.F.L.WList);
		ListBut:SetSize(WListWW,hang_H);
		if id==1 then
			ListBut:SetPoint("TOPLEFT", fuFrame.Keyword.F.Keyword.F.L.WList.Scroll, "TOPLEFT", 0, 0);
		else
			ListBut:SetPoint("TOPLEFT", _G["KeyWList_"..(id-1)], "BOTTOMLEFT", 0, 0);
		end	
		PIGLine(ListBut,"TOP",0,{1,1,-20},{0.5, 0.5, 0.5, 0.2})
		ListBut.del =PIGCloseBut(ListBut,{"LEFT", ListBut, "LEFT", 0,0})
		ListBut.del:SetScript("OnClick", function (self)
			table.remove(PIGA["Chat"]["Keyword"][PIG_renwuming], self:GetID());
			fuFrame.Keyword.F.Keyword.F.L.WList.Scroll.gengxin_list(fuFrame.Keyword.F.Keyword.F.L.WList.Scroll)
		end);	
		ListBut.txt = PIGFontString(ListBut,{"LEFT", ListBut.del, "RIGHT", 4, 0});
		ListBut.txt:SetTextColor(0.7, 0.7, 0.7, 1);
	end
	fuFrame.Keyword.F.Keyword.F.L.WList:HookScript("OnShow", function(self)
		self.Scroll.gengxin_list(self.Scroll)
	end);

	--黑名单
	fuFrame.Keyword.F.Keyword.F.R=PIGFrame(fuFrame.Keyword.F.Keyword.F)
	fuFrame.Keyword.F.Keyword.F.R:PIGSetBackdrop()
	fuFrame.Keyword.F.Keyword.F.R:SetPoint("TOPLEFT",fuFrame.Keyword.F.Keyword.F.L,"TOPRIGHT",4,0);
	fuFrame.Keyword.F.Keyword.F.R:SetPoint("BOTTOMRIGHT",fuFrame.Keyword.F.Keyword.F,"BOTTOMRIGHT",-4,4);
	fuFrame.Keyword.F.Keyword.F.R.line1=PIGLine(fuFrame.Keyword.F.Keyword.F.R,"TOP",-26)
	fuFrame.Keyword.F.Keyword.F.R.T1 = PIGFontString(fuFrame.Keyword.F.Keyword.F.R,{"TOPLEFT",fuFrame.Keyword.F.Keyword.F.R,"TOPLEFT",8,-6},"过滤黑名单");
	fuFrame.Keyword.F.Keyword.F.R.daoru_B=PIGDownMenu(fuFrame.Keyword.F.Keyword.F.R,{"LEFT",fuFrame.Keyword.F.Keyword.F.R.T1,"RIGHT", 4,0},{160,nil})
	fuFrame.Keyword.F.Keyword.F.R.daoru_B:SetScale(0.9)
	fuFrame.Keyword.F.Keyword.F.R.daoru_B:PIGDownMenu_SetText("导入其他角色")
	function fuFrame.Keyword.F.Keyword.F.R.daoru_B:PIGDownMenu_Update_But(self)
		local jueseListxx = PIGA["Chat"]["Blacklist"];
		local info = {}
		info.func = self.PIGDownMenu_SetValue
		for k,v in pairs(jueseListxx) do
			if k~=PIG_renwuming then
				info.text, info.arg1 = "导入["..k.."]("..#v..")", k
				info.notCheckable = true;
				fuFrame.Keyword.F.Keyword.F.R.daoru_B:PIGDownMenu_AddButton(info)
			end
		end
	end
	function fuFrame.Keyword.F.Keyword.F.R.daoru_B:PIGDownMenu_SetValue(value,arg1,arg2)
		local info = {}
		for xx=1,#PIGA["Chat"]["Blacklist"][arg1] do
			table.insert(info, PIGA["Chat"]["Blacklist"][arg1][xx])
		end
		PIGA["Chat"]["Blacklist"][PIG_renwuming] = info
		fuFrame.Keyword.F.Keyword.F.R.BList.Scroll.gengxin_list(fuFrame.Keyword.F.Keyword.F.R.BList.Scroll)
		PIGCloseDropDownMenus()
	end
	fuFrame.Keyword.F.Keyword.F.R.EB = CreateFrame("EditBox", nil, fuFrame.Keyword.F.Keyword.F.R,"InputBoxInstructionsTemplate");
	fuFrame.Keyword.F.Keyword.F.R.EB:SetSize(200,ButtonH);
	fuFrame.Keyword.F.Keyword.F.R.EB:SetPoint("TOPLEFT", fuFrame.Keyword.F.Keyword.F.R.line1, "BOTTOMLEFT", 10,-2);
	fuFrame.Keyword.F.Keyword.F.R.EB:SetFontObject(ChatFontNormal);
	fuFrame.Keyword.F.Keyword.F.R.EB:SetMaxLetters(20);
	fuFrame.Keyword.F.Keyword.F.R.EB:SetAutoFocus(false);
	fuFrame.Keyword.F.Keyword.F.R.EB.tishi = PIGFontString(fuFrame.Keyword.F.Keyword.F.R,{"LEFT",fuFrame.Keyword.F.Keyword.F.R.EB,"LEFT",6,0},"输入关键字(用,分隔)");
	fuFrame.Keyword.F.Keyword.F.R.EB.tishi:SetTextColor(0.8, 0.8, 0.8, 0.8);
	fuFrame.Keyword.F.Keyword.F.R.EB.YES = PIGButton(fuFrame.Keyword.F.Keyword.F.R.EB,{"LEFT",fuFrame.Keyword.F.Keyword.F.R.EB,"RIGHT",6,0},{50,ButtonH-2},"确定");
	fuFrame.Keyword.F.Keyword.F.R.EB.YES:Hide();
	fuFrame.Keyword.F.Keyword.F.R.EB:SetScript("OnEscapePressed", function(self) 
		Focus_ShowHide(self,nil,false)
		self:ClearFocus()
	end);
	fuFrame.Keyword.F.Keyword.F.R.EB:SetScript("OnEditFocusGained", function(self)
		Focus_ShowHide(self,fuFrame.Keyword.F.Keyword.F.L.EW,true)
	end);
	fuFrame.Keyword.F.Keyword.F.R.EB:SetScript("OnHide", function(self)
		Focus_ShowHide(self,nil,false)
	end);
	fuFrame.Keyword.F.Keyword.F.R.EB:SetScript("OnEnterPressed", function(self)
		Save_KeyValue(self,"Blacklist",fuFrame.Keyword.F.Keyword.F.R.BList.Scroll)
	end);
	fuFrame.Keyword.F.Keyword.F.R.EB.YES:SetScript("OnClick", function(self)
		local fujif = self:GetParent();
		Save_KeyValue(fujif,"Blacklist",fuFrame.Keyword.F.Keyword.F.R.BList.Scroll)
	end)
	
	---例子
	fuFrame.Keyword.F.Keyword.F.R.lineB=PIGLine(fuFrame.Keyword.F.Keyword.F.R,"BOT",36)
	local tishineiB = "|cffFFFF00AA：屏蔽包含AA的内容\n带,刷：屏蔽同时包含带和刷的内容|r"
	fuFrame.Keyword.F.Keyword.F.R.shili = PIGFontString(fuFrame.Keyword.F.Keyword.F.R,{"TOPLEFT",fuFrame.Keyword.F.Keyword.F.R.lineB,"BOTTOMLEFT",4,-4},tishineiB,nil,13);
	fuFrame.Keyword.F.Keyword.F.R.shili:SetJustifyH("LEFT");
	---显示列表
	fuFrame.Keyword.F.Keyword.F.R.BList = PIGFrame(fuFrame.Keyword.F.Keyword.F.R);
	fuFrame.Keyword.F.Keyword.F.R.BList:SetPoint("TOPLEFT", fuFrame.Keyword.F.Keyword.F.R.line1, "TOPLEFT", 0, -28);
	fuFrame.Keyword.F.Keyword.F.R.BList:SetPoint("BOTTOMRIGHT", fuFrame.Keyword.F.Keyword.F.R.lineB, "TOPRIGHT", 0, 0);
	fuFrame.Keyword.F.Keyword.F.R.BList.Scroll = CreateFrame("ScrollFrame",nil,fuFrame.Keyword.F.Keyword.F.R.BList, "FauxScrollFrameTemplate");  
	fuFrame.Keyword.F.Keyword.F.R.BList.Scroll:SetPoint("TOPLEFT",fuFrame.Keyword.F.Keyword.F.R.BList,"TOPLEFT",0,-1);
	fuFrame.Keyword.F.Keyword.F.R.BList.Scroll:SetPoint("BOTTOMRIGHT",fuFrame.Keyword.F.Keyword.F.R.BList,"BOTTOMRIGHT",-22,1);
	fuFrame.Keyword.F.Keyword.F.R.BList.Scroll.ScrollBar:SetScale(0.8);
	fuFrame.Keyword.F.Keyword.F.R.BList.Scroll:SetScript("OnVerticalScroll", function(self, offset)
	    FauxScrollFrame_OnVerticalScroll(self, offset, ButtonH, self.gengxin_list)
	end)
	function fuFrame.Keyword.F.Keyword.F.R.BList.Scroll.gengxin_list(self)
		for id = 1, hang_NUM, 1 do	
			_G["KeyBList_"..id]:Hide();
		end
		local shujuyuan = PIGA["Chat"]["Blacklist"][PIG_renwuming];
		local ItemsNum = #shujuyuan
		if ItemsNum>0 then
		    FauxScrollFrame_Update(self, ItemsNum, hang_NUM, ButtonH);
		    local offset = FauxScrollFrame_GetOffset(self);
			for id = 1, hang_NUM do
				local dangqian = id+offset;
				if shujuyuan[dangqian] then
					local fujik = _G["KeyBList_"..id]
					fujik:Show();
					fujik.del:SetID(dangqian);
					local guanjianzineironglianji = ""
					for xx=1,#shujuyuan[dangqian] do
						if shujuyuan[dangqian][xx] then
							if xx==#shujuyuan[dangqian] then
								guanjianzineironglianji=guanjianzineironglianji..shujuyuan[dangqian][xx]
							else
								guanjianzineironglianji=guanjianzineironglianji..shujuyuan[dangqian][xx]..","
							end
						end
					end
					fujik.txt:SetText(guanjianzineironglianji);
				end
			end
		end
	end
	local BListWW = fuFrame.Keyword.F.Keyword.F.R.BList:GetWidth()
	for id = 1, hang_NUM, 1 do
		local ListBut = CreateFrame("Frame", "KeyBList_"..id, fuFrame.Keyword.F.Keyword.F.R.BList);
		ListBut:SetSize(BListWW,hang_H);
		if id==1 then
			ListBut:SetPoint("TOPLEFT", fuFrame.Keyword.F.Keyword.F.R.BList.Scroll, "TOPLEFT", 0, 0);
		else
			ListBut:SetPoint("TOPLEFT", _G["KeyBList_"..(id-1)], "BOTTOMLEFT", 0, 0);
		end	
		PIGLine(ListBut,"TOP",0,{1,1,-20},{0.5, 0.5, 0.5, 0.2})
		ListBut.del =PIGCloseBut(ListBut,{"LEFT", ListBut, "LEFT", 0,0})
		ListBut.del:SetScript("OnClick", function (self)
			table.remove(PIGA["Chat"]["Blacklist"][PIG_renwuming], self:GetID());
			fuFrame.Keyword.F.Keyword.F.R.BList.Scroll.gengxin_list(fuFrame.Keyword.F.Keyword.F.R.BList.Scroll)
		end);	
		ListBut.txt = PIGFontString(ListBut,{"LEFT", ListBut.del, "RIGHT", 4, 0});
		ListBut.txt:SetTextColor(0.7, 0.7, 0.7, 1);
	end
	fuFrame.Keyword.F.Keyword.F.R.BList:HookScript("OnShow", function(self)
		self.Scroll.gengxin_list(self.Scroll)
	end);
	
	-----=======================================
	local biaoqingTXT={}--表情字符
	for i=1,#QuickChatfun.biaoqing do
		local newvalueXxX = QuickChatfun.biaoqing[i][2]:gsub("%-", "%%-");
		table.insert(biaoqingTXT,newvalueXxX)
	end
	local function del_biaoqing(newText)--去除表情字符
		for i=1,#biaoqingTXT do
			newText = newText:gsub("|T"..biaoqingTXT[i]..":16|t", "");
		end
		return newText
	end
	local function del_link(newText)--去除Link统一大小写
		local newText=newText:gsub("|Hitem:","");
		local newText=newText:gsub("|Hspell:","");
		local newText=newText:gsub("|Hquestie:(%d+):Player%-(%d+)%-(%w+)|h","");
		local newText=newText:gsub("|Hquest:","");
		local newText=newText:gsub("|h","");
		local newText=newText:gsub("|r","");
		local newText=newText:gsub("|cff%w%w%w%w%w%w","");
		local newText=newText:gsub(" ","");
		local newText=newText:upper()--转换大小写
		return newText
	end
	----
	geshihua_txt("Keyword")
	geshihua_txt("Blacklist")
	local function del_biaodian(newText)		
		local duibiText=newText
		local duibiText=duibiText:gsub("%p","");
		local duibiText=duibiText:gsub("，","");
		local duibiText=duibiText:gsub("。","");
		local duibiText=duibiText:gsub("！","");
		local duibiText=duibiText:gsub("：","");
		local duibiText=duibiText:gsub("；","");
		local duibiText=duibiText:gsub("“","");
		local duibiText=duibiText:gsub("”","");
		local duibiText=duibiText:gsub("‘","");
		local duibiText=duibiText:gsub("’","");
		local duibiText=duibiText:gsub("~","");
		local duibiText=duibiText:gsub("%s","");
		return duibiText
	end
	local function BlackTxt(newText)
		if #Chatlist_B>0 then
			fuFrame.Keyword.allCUNZAI_BLK = false;
			for x=1,#Chatlist_B do
				fuFrame.Keyword.allCUNZAI_BLK_C = true;
				for xx=1,#Chatlist_B[x] do
					local cunzaiguanjianzi=newText:find(Chatlist_B[x][xx], 1)
					if not cunzaiguanjianzi then
						fuFrame.Keyword.allCUNZAI_BLK_C = false
						break
					end
				end
				if fuFrame.Keyword.allCUNZAI_BLK_C then
					fuFrame.Keyword.allCUNZAI_BLK = true;
					break
				end
			end
			if fuFrame.Keyword.allCUNZAI_BLK then
				return fuFrame.Keyword.allCUNZAI_BLK
			end
		end
		return false
	end
	local jingjianTXT=QuickChatfun.jingjianTXT
	local chongfufayanduibi={}--过滤重复发言临时
	--PIGA["Chat"]["xxxxxx"]={}
	for i = 1, NUM_CHAT_WINDOWS do
		if ( i ~= 2 ) then
			local chatID = _G["ChatFrame"..i]
			local msninfo = chatID.AddMessage
			local zijiname = UnitName("player")
			chatID.AddMessage = function(frame, text, ...)
				--table.insert(PIGA["Chat"]["xxxxxx"],text);
				local ChannelYes=text:find("|Hchannel:channel:", 1)	--是公共频道消息
				if ChannelYes then
					local ChatKeyqishiweizhi,ChatKeyjieshuweizhi
					-- if PIGA["Chat"]["ShowZb"] then
					-- 	ChatKeyqishiweizhi,ChatKeyjieshuweizhi=text:find("|t|h： ", 1)--频道类型后缀位置
					-- else
						ChatKeyqishiweizhi,ChatKeyjieshuweizhi=text:find("]|h： ", 1)--频道类型后缀位置
					--end
					if ChatKeyqishiweizhi and ChatKeyjieshuweizhi then
						local fayanName=text:sub(1,ChatKeyqishiweizhi-1)--截取发言人
						local zijifayan=fayanName:find(zijiname, 1)
						if PIGA["Chat"]["guolvzishen"] then
							if zijifayan then return msninfo(frame, text, ...) end
						end
						local newText=text:sub(ChatKeyjieshuweizhi+1, -1)--截取发言内容
						local newText =del_biaoqing(newText)
						local newText =del_link(newText)
						if not zijifayan and PIGA["Chat"]["guolvchongfu"] then--过滤非自身重复发言
							local duibiText=del_biaodian(newText)
							for i=#chongfufayanduibi,1,-1 do
								if (GetServerTime()-chongfufayanduibi[i][1])>60 then
									table.remove(chongfufayanduibi,i)
								end
							end
							for i=1,#chongfufayanduibi do
								if chongfufayanduibi[i][2]==duibiText then
									return false
								end
							end
							table.insert(chongfufayanduibi,{GetServerTime(),duibiText})
						end
						--屏蔽黑名单
						if BlackTxt(newText) then
							if PIGA["Chat"]["xitongjihuoB"] then
								return
							else
								return msninfo(frame, text, ...)
							end
						end
						--提取
						if #Chatlist_W>0 then
							for x=1,#Chatlist_W do
								fuFrame.Keyword.ALLcunzai=true;	
								for xx=1,#Chatlist_W[x] do
									local cunzaiguanjianzi=newText:find(Chatlist_W[x][xx], 1)
									if not cunzaiguanjianzi then
										fuFrame.Keyword.ALLcunzai = false
										break
									end
								end
								if fuFrame.Keyword.ALLcunzai then						
									local text=jingjianTXT(text)
									fuFrame.Keyword.F:AddMessage(text, ...);
									guanjianziMGStishi()
									break
								end
							end
						end
					end
				end
				return msninfo(frame, text, ...)
			end
		end
	end
end