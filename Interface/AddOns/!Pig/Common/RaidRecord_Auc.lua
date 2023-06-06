local addonName, addonTable = ...;
local L=addonTable.locale
local _, _, _, tocversion = GetBuildInfo()
---
local Create=addonTable.Create
local PIGFrame=Create.PIGFrame
local PIGButton=Create.PIGButton
local PIGFontString=Create.PIGFontString
local PIGSetFont=Create.PIGSetFont
local PIGEnter=Create.PIGEnter
---
local biaotou="!Pig_Auc";
local auc_start="auc_start";
local auc_end="auc_end";
local auc_daoshu="auc_daoshu";
local auc_chujia="auc_chujia";
addonTable.RaidR_Auc={biaotou,auc_start,auc_end,auc_daoshu,auc_chujia}
local butww = 30
local RaidR_AucF = CreateFrame("Frame","RaidR_AucFUI",UIParent)
RaidR_AucF:SetSize(butww,butww);
RaidR_AucF:SetPoint("CENTER",UIParent,"CENTER",-100,-50);
RaidR_AucF:SetFrameStrata("HIGH")
RaidR_AucF:Hide()

RaidR_AucF.nr=PIGFrame(RaidR_AucF,{"TOPRIGHT",RaidR_AucF,"TOPRIGHT",0,0},{300, 220})
RaidR_AucF.nr:PIGSetBackdrop(0.8)
RaidR_AucF.nr:PIGSetMovable(RaidR_AucF)
RaidR_AucF.nr.biaoti = PIGFontString(RaidR_AucF.nr,{"TOP", RaidR_AucF.nr, "TOP", 0,-2},"正在拍卖");
RaidR_AucF.nr.aucitem1 = PIGFontString(RaidR_AucF.nr,{"TOP", RaidR_AucF.nr, "TOP", 0,-30},nil,nil,18);
RaidR_AucF.nr.aucitem2 = PIGFontString(RaidR_AucF.nr,{"TOP", RaidR_AucF.nr, "TOP", 0,-60});
RaidR_AucF.nr.aucitem2:SetTextColor(1, 1, 1, 1)
RaidR_AucF.nr.chujiaV = CreateFrame("EditBox", nil, RaidR_AucF.nr, "InputBoxInstructionsTemplate");
RaidR_AucF.nr.chujiaV:SetSize(94,22);
RaidR_AucF.nr.chujiaV:SetPoint("TOP", RaidR_AucF.nr, "TOP", 0,-100);
PIGSetFont(RaidR_AucF.nr.chujiaV,15,"OUTLINE")
RaidR_AucF.nr.chujiaV:SetJustifyH("CENTER")
RaidR_AucF.nr.chujiaV:SetMaxLetters(10)
RaidR_AucF.nr.chujiaV:SetNumeric(true)
RaidR_AucF.nr.chujiaV:SetAutoFocus(false)
RaidR_AucF.nr.chujiaV:SetScript("OnEscapePressed", function(self) 
	local xianjiaV=self:GetNumber()
	local qipaiV = tonumber(RaidR_AucF.nr.qipai)
	if xianjiaV<qipaiV then self:SetText(qipaiV) end
	self:ClearFocus() 
end);
RaidR_AucF.nr.chujiaV:SetScript("OnEnterPressed", function(self) 
	local xianjiaV=self:GetNumber()
	local qipaiV = tonumber(RaidR_AucF.nr.qipai)
	if xianjiaV<qipaiV then self:SetText(qipaiV) end
	self:ClearFocus() 
end);
local sub = _G.string.sub
local function jisuanxiaoshudian(danwei,ge,shi,bai,qian)
	local geshihuazhiVV=danwei
	if ge~="0" then
		geshihuazhiVV="."..qian..bai..shi..ge..danwei
	elseif shi~="0" then
		geshihuazhiVV="."..qian..bai..shi..danwei
	elseif bai~="0" then
		geshihuazhiVV="."..qian..bai..danwei
	elseif qian~="0" then
		geshihuazhiVV="."..qian..danwei
	end
	return geshihuazhiVV
end
local function zhuanhuanjiaxie(xianjiaV)
	local ge=xianjiaV:sub(-1,-1)--个
	local shi=xianjiaV:sub(-2,-2)--十
	local bai=xianjiaV:sub(-3,-3)--百
	local qian=xianjiaV:sub(-4,-4)--千
	local wan=xianjiaV:sub(-5,-5)--万
	local shiwan=xianjiaV:sub(-6,-6)--十万
	local baiwan=xianjiaV:sub(-7,-7)--百万
	local qianwan=xianjiaV:sub(-8,-8)--千万
	local yiji=xianjiaV:sub(-9,-9)--亿
	local shiyiji=xianjiaV:sub(-10,-10)--十亿
	local baiyiji=xianjiaV:sub(-11,-11)--百亿
	local geshihuazhiVV = ""
	local wan_xiaoshudian=jisuanxiaoshudian("万",ge,shi,bai,qian)
	local yi_xiaoshudian=jisuanxiaoshudian("亿",wan,shiwan,baiwan,qianwan)
	if baiyiji~="" then
		geshihuazhiVV=baiyiji..shiyiji..yiji..yi_xiaoshudian
	elseif shiyiji~="" then
		geshihuazhiVV=shiyiji..yiji..yi_xiaoshudian
	elseif yiji~="" then
		geshihuazhiVV=yiji..yi_xiaoshudian
	elseif qianwan~="" then
		geshihuazhiVV=qianwan..baiwan..shiwan..wan..wan_xiaoshudian
	elseif baiwan~="" then
		geshihuazhiVV=baiwan..shiwan..wan..wan_xiaoshudian
	elseif shiwan~="" then
		geshihuazhiVV=shiwan..wan..wan_xiaoshudian
	elseif wan~="" then
		geshihuazhiVV=wan..wan_xiaoshudian
	end
	return geshihuazhiVV
end
RaidR_AucF.nr.chujiaV:SetScript("OnCursorChanged", function(self) 
	self.chujiadaxie:SetText(zhuanhuanjiaxie(self:GetText()))
end)
RaidR_AucF.nr.chujiaV.MinB = PIGButton(RaidR_AucF.nr.chujiaV,{"RIGHT",RaidR_AucF.nr.chujiaV,"LEFT",-16,0},{24,24},"_");
RaidR_AucF.nr.chujiaV.MinB.Text:SetPoint("CENTER", RaidR_AucF.nr.chujiaV.MinB, "CENTER", 1.4,14);
PIGSetFont(RaidR_AucF.nr.chujiaV.MinB.Text,30)
RaidR_AucF.nr.chujiaV.MinB:SetScript("OnMouseDown", function(self)
	if self:IsEnabled() then
		self.Text:SetPoint("CENTER", 2.9,12.5);
	end
end);
RaidR_AucF.nr.chujiaV.MinB:SetScript("OnMouseUp", function(self)
	if self:IsEnabled() then
		self.Text:SetPoint("CENTER", 1.4,14);
	end
end);
RaidR_AucF.nr.chujiaV.MaxB = PIGButton(RaidR_AucF.nr.chujiaV,{"LEFT",RaidR_AucF.nr.chujiaV,"RIGHT",12,0},{24,24},"+"); 
PIGSetFont(RaidR_AucF.nr.chujiaV.MaxB.Text,30)
RaidR_AucF.nr.chujiaV.MinB:SetScript("OnClick", function(self)
	local xianjiaV=RaidR_AucF.nr.chujiaV:GetNumber()
	local qipaiV = tonumber(RaidR_AucF.nr.qipai)
	local danciV = tonumber(RaidR_AucF.nr.danci)
	local NEWxianjiaV=xianjiaV-danciV
	if NEWxianjiaV<qipaiV then
		RaidR_AucF.nr.chujiaV:SetText(qipaiV);
	else
		RaidR_AucF.nr.chujiaV:SetText(NEWxianjiaV-danciV);
	end
end);
RaidR_AucF.nr.chujiaV.MaxB:SetScript("OnClick", function(self)
	local xianjiaV=RaidR_AucF.nr.chujiaV:GetNumber()
	local danciV = tonumber(RaidR_AucF.nr.danci)
	local NEWxianjiaV=xianjiaV+danciV
	if string.len(NEWxianjiaV)<=9 then
		RaidR_AucF.nr.chujiaV:SetText(NEWxianjiaV);
	end
end);
RaidR_AucF.nr.chujiaV.chujiadaxie = PIGFontString(RaidR_AucF.nr.chujiaV,{"TOP", RaidR_AucF.nr.chujiaV, "BOTTOM", 0,-2});
RaidR_AucF.nr.chujiabut10 = PIGButton(RaidR_AucF.nr,{"BOTTOM", RaidR_AucF.nr, "BOTTOM", -60,54},{80,24},"10倍加价");
RaidR_AucF.nr.chujiabut10:SetScript("OnClick", function(self)
	local xianjiaV=RaidR_AucF.nr.chujiaV:GetNumber()
	local danciV = tonumber(RaidR_AucF.nr.danci)
	local NEWxianjiaV=xianjiaV+danciV*10
	if string.len(NEWxianjiaV)<=9 then
		RaidR_AucF.nr.chujiaV:SetText(NEWxianjiaV);
	end
end);
RaidR_AucF.nr.chujiabut20 = PIGButton(RaidR_AucF.nr,{"BOTTOM", RaidR_AucF.nr, "BOTTOM", 60,54},{80,24},"20倍加价");
RaidR_AucF.nr.chujiabut20:SetScript("OnClick", function(self)
	local xianjiaV=RaidR_AucF.nr.chujiaV:GetNumber()
	local danciV = tonumber(RaidR_AucF.nr.danci)
	local NEWxianjiaV=xianjiaV+danciV*20
	if string.len(NEWxianjiaV)<=9 then
		RaidR_AucF.nr.chujiaV:SetText(NEWxianjiaV);
	end
end);
RaidR_AucF.nr.chujiabut = PIGButton(RaidR_AucF.nr,{"BOTTOM", RaidR_AucF.nr, "BOTTOM", 0,18},{80,24},"出价");
RaidR_AucF.nr.chujiabut.tishi = CreateFrame("Frame", nil, RaidR_AucF.nr.chujiabut);
RaidR_AucF.nr.chujiabut.tishi:SetSize(26,26);
RaidR_AucF.nr.chujiabut.tishi:SetPoint("LEFT", RaidR_AucF.nr.chujiabut, "RIGHT", 4,0);
RaidR_AucF.nr.chujiabut.tishi.Tex = RaidR_AucF.nr.chujiabut.tishi:CreateTexture(nil, "BORDER");
RaidR_AucF.nr.chujiabut.tishi.Tex:SetTexture("interface/helpframe/helpicon-reportabuse.blp");
RaidR_AucF.nr.chujiabut.tishi.Tex:SetAllPoints(RaidR_AucF.nr.chujiabut.tishi)
PIGEnter(RaidR_AucF.nr.chujiabut.tishi,"重要提示：","|cffFF0000请及早出价，以免网络延迟造成的出价滞后|r")
RaidR_AucF.nr.chujiabut:SetScript("OnClick",function(self)
	local chujiajiaV=RaidR_AucF.nr.chujiaV:GetNumber()
	local chujiajianxie=zhuanhuanjiaxie(RaidR_AucF.nr.chujiaV:GetText())
	if chujiajiaV<10000 then
		PIGSendChatRaidParty("出价:"..chujiajiaV)
	else
		PIGSendChatRaidParty("出价:"..chujiajiaV.." ("..chujiajianxie..")")
	end
	PIGSendAddonMessage(biaotou,auc_chujia.."&"..chujiajiaV)
end)
RaidR_AucF.Min = CreateFrame("Button",nil,RaidR_AucF, "TruncatedButtonTemplate"); 
RaidR_AucF.Min:SetNormalTexture("interface/chatframe/ui-chaticon-minimize-up.blp");
RaidR_AucF.Min:SetPushedTexture("interface/chatframe/ui-chaticon-minimize-down.blp")
RaidR_AucF.Min:SetHighlightTexture("interface/buttons/ui-checkbox-highlight.blp");
RaidR_AucF.Min:SetSize(butww,butww);
RaidR_AucF.Min:SetPoint("TOPRIGHT",RaidR_AucF,"TOPRIGHT",0,0);
RaidR_AucF.Min:SetFrameLevel(10)
RaidR_AucF.Min:RegisterForDrag("LeftButton")
RaidR_AucF.Min:SetScript("OnDragStart",function()
	RaidR_AucF:StartMoving()
end)
RaidR_AucF.Min:SetScript("OnDragStop",function()
	RaidR_AucF:StopMovingOrSizing()
end)
RaidR_AucF.Min.Height = RaidR_AucF.Min:CreateTexture(nil, "OVERLAY");
RaidR_AucF.Min.Height:SetAtlas("bags-newitem")
RaidR_AucF.Min.Height:SetSize(butww-1,butww-1);
RaidR_AucF.Min.Height:SetPoint("CENTER",0,0);
RaidR_AucF.Min.Height:Hide()
RaidR_AucF.Min.ShowHide=false
RaidR_AucF.Min.xulie=0
local function tishishanshuo()
	if RaidR_AucF:IsShown() and not RaidR_AucF.nr:IsShown() then
		if RaidR_AucF.Min.xulie==1 then
			RaidR_AucF.Min.xulie=0
			RaidR_AucF.Min.Height:Hide()
		else
			RaidR_AucF.Min.xulie=1
			RaidR_AucF.Min.Height:Show()
		end
		if RaidR_AucF.Min.ShowHide then
			C_Timer.After(1,tishishanshuo)
		end
	end
end
RaidR_AucF:SetScript("OnShow", function(self)
	tishishanshuo()
	C_Timer.After(300,function() self:Hide() end)
end);
RaidR_AucF.Min:SetScript("OnClick", function (self)
	if RaidR_AucF.nr:IsShown() then
		RaidR_AucF.nr:Hide();
		self.Height:Show()
		RaidR_AucF.Min:SetNormalTexture("interface/chatframe/ui-chaticon-maximize-up.blp");
		RaidR_AucF.Min:SetPushedTexture("interface/chatframe/ui-chaticon-maximize-down.blp")
		if not RaidR_AucF.Min.ShowHide then
			RaidR_AucF.Min.ShowHide=true
			tishishanshuo()
		end
	else
		RaidR_AucF.nr:Show();
		self.Height:Hide()
		RaidR_AucF.Min:SetNormalTexture("interface/chatframe/ui-chaticon-minimize-up.blp");
		RaidR_AucF.Min:SetPushedTexture("interface/chatframe/ui-chaticon-minimize-down.blp")
		RaidR_AucF.Min.ShowHide=false
	end	
end);
---
C_ChatInfo.RegisterAddonMessagePrefix(biaotou)
RaidR_AucF:RegisterEvent("CHAT_MSG_ADDON");
RaidR_AucF:RegisterEvent("CHAT_MSG_ADDON");
RaidR_AucF:SetScript("OnEvent",function(self, event, arg1, arg2, arg3, arg4, arg5)
	if event=="CHAT_MSG_ADDON" and arg1 == biaotou then
		local kaishijieshu, neirong = strsplit("&", arg2);
		if kaishijieshu==auc_daoshu then--倒数结束
			if neirong=="0" then
				RaidR_AucF.nr.chujiabut:Disable()
			end
		elseif kaishijieshu==auc_chujia then--拍卖出价
			RaidR_AucF.nr.chujiaV:SetText(neirong+RaidR_AucF.nr.danci)
		elseif kaishijieshu==auc_start then--拍卖开始
			self:Show()
			local itemlink,num,qipai,jiajia = strsplit("#", neirong);
			RaidR_AucF.nr.aucitem1:SetText(itemlink.."×"..num)
			RaidR_AucF.nr.aucitem2:SetText("起拍价:|cff00FFFF"..qipai.."|r\n最低加价:|cff00FFFF"..jiajia.."|r")
			RaidR_AucF.nr.chujiaV:SetText(qipai)
			RaidR_AucF.nr.qipai=qipai
			RaidR_AucF.nr.danci=jiajia
			RaidR_AucF.nr.chujiabut:Enable()
		elseif kaishijieshu==auc_end then--拍卖结束
			self:Hide()
		end
	end
end)