local addonName, addonTable = ...;
local gsub = _G.string.gsub 
local find = _G.string.find
local _, _, _, tocversion = GetBuildInfo()
local InviteUnit=C_PartyInfo and C_PartyInfo.InviteUnit or InviteUnit
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
local PIGCloseBut=Create.PIGCloseBut
-----------------------------------------
local QuickChatfun=addonTable.QuickChatfun
function QuickChatfun.QuickBut_Jilu()
	local miyuP={}
	miyuP.zijirealm = GetRealmName()
	local jilupindaoID={"PARTY","RAID"};
	local baocuntianshu=PIGA["Chatjilu"]["tianshu"];
	for i=1,#jilupindaoID do
		local shujuyaun=PIGA["Chatjilu"]["jiluinfo"][jilupindaoID[i]]["neirong"];
		if #shujuyaun>0 then
			if #shujuyaun[1]>0 then
				for ii=#shujuyaun[1], 1, -1 do
						local dangqianday=floor(GetServerTime()/60/60/24);
						local jiluday=shujuyaun[1][ii];
						if (dangqianday-jiluday)>baocuntianshu then
							table.remove(shujuyaun[1],ii);
							table.remove(shujuyaun[2],ii);
						end
				end
			end
		end
	end		
	--密语
	local miyushuju=PIGA["Chatjilu"]["jiluinfo"]["WHISPER"]["neirong"];
	if #miyushuju>0 then
		for k,v in pairs(miyushuju[2]) do
			for i=#v,1,-1 do
				local baocunTime=baocuntianshu*60*60*24;
				if (GetServerTime()-v[i][2])>baocunTime then
					table.remove(v,i);					
				end
			end
			if #v==0 then
				table.removekey(miyushuju[2],k)
			end
		end
		for x=#miyushuju[1],1,-1 do
			if miyushuju[2][miyushuju[1][x][1]] then
				if #miyushuju[2][miyushuju[1][x][1]]==0 then
					table.remove(miyushuju[1],x);
				end
			else
				table.remove(miyushuju[1],x);
			end
		end
	end
	--------------
	local fuFrame=QuickChatFFF_UI
	--密语/团队聊天记录
	local ChatWidth,ChatHeight=220,260;
	local ChatjiluMianban=PIGFrame(UIParent,{"CENTER",UIParent,"CENTER",0,80},{ChatWidth*4,ChatHeight*2},"ChatjiluMianban_UI",true)
	ChatjiluMianban:PIGSetBackdrop()
	ChatjiluMianban:PIGSetMovable()
	ChatjiluMianban:PIGClose()
	ChatjiluMianban.biaoti=PIGFontString(ChatjiluMianban,{"TOP", ChatjiluMianban, "TOP", 0, -4},"聊天记录")
	PIGLine(ChatjiluMianban,"TOP",-20)

	--记录频道选择
	ChatjiluMianban.jilupindaotxt=PIGFontString(ChatjiluMianban,{"TOPLEFT", ChatjiluMianban, "TOPLEFT", 340,-40},"记录频道:")
	local huoquliaotianjiluFFF = CreateFrame("Frame");
	local jilupindaoName={"队伍","团队"};
	local jilupindaoNameC={"AAAAFF","FF7F00"};
	local jilupindaoEvent={{"CHAT_MSG_PARTY","CHAT_MSG_PARTY_LEADER"},{"CHAT_MSG_RAID","CHAT_MSG_RAID_LEADER","CHAT_MSG_RAID_WARNING"}};
	for j=1,#jilupindaoName do
		local pindaoxuanzeC = CreateFrame("CheckButton", "pindaoxuanzeC_"..j.."_UI", ChatjiluMianban, "ChatConfigCheckButtonTemplate");
		pindaoxuanzeC:SetFrameLevel(pindaoxuanzeC:GetFrameLevel()+5)
		pindaoxuanzeC:SetSize(30,32);
		pindaoxuanzeC:SetHitRectInsets(0,0,0,0);
		if j==1 then
			pindaoxuanzeC:SetPoint("LEFT",ChatjiluMianban.jilupindaotxt,"RIGHT",4,0);
		else
			pindaoxuanzeC:SetPoint("LEFT",_G["pindaoxuanzeC_"..(j-1).."_UI"],"RIGHT",40,0);
		end
		_G["pindaoxuanzeC_"..j.."_UIText"]:SetText("\124cff"..jilupindaoNameC[j]..jilupindaoName[j].."\124r");
		pindaoxuanzeC.tooltip = "记录"..jilupindaoName[j].."频道聊天信息";
		pindaoxuanzeC:SetScript("OnClick", function (self)
			if self:GetChecked() then
				PIGA["Chatjilu"]["jiluinfo"][jilupindaoID[j]]["kaiguan"]=true;
				for jj=1,#jilupindaoEvent[j] do
					huoquliaotianjiluFFF:RegisterEvent(jilupindaoEvent[j][jj]);
				end
			else
				PIGA["Chatjilu"]["jiluinfo"][jilupindaoID[j]]["kaiguan"]=false;
				for jj=1,#jilupindaoEvent[j] do
					huoquliaotianjiluFFF:UnregisterEvent(jilupindaoEvent[j][jj]);
				end
			end
		end);
	end
	--保存天数
	ChatjiluMianban.baocuntianchu=PIGFontString(ChatjiluMianban,{"TOPLEFT",ChatjiluMianban,"TOPLEFT",600,-38},"保存时间")
	--
	local baocuntianshulist ={7,31,180,365};
	local baocuntianshulistN ={[7]="一周",[31]="一月",[180]="半年",[365]="一年"};
	ChatjiluMianban.tianshuxiala=PIGDownMenu(ChatjiluMianban,{"LEFT",ChatjiluMianban.baocuntianchu,"RIGHT", 0,0},{70,24})
	ChatjiluMianban.tianshuxiala:SetFrameLevel(ChatjiluMianban.tianshuxiala:GetFrameLevel()+5)
	function ChatjiluMianban.tianshuxiala:PIGDownMenu_Update_But(self)
		local info = {}
		info.func = self.PIGDownMenu_SetValue
		for i=1,#baocuntianshulist,1 do
		    info.text, info.arg1, info.arg2 = baocuntianshulistN[baocuntianshulist[i]], baocuntianshulist[i], baocuntianshulist[i]
		    info.checked = baocuntianshulist[i]==PIGA["Chatjilu"]["tianshu"]
			ChatjiluMianban.tianshuxiala:PIGDownMenu_AddButton(info)
		end 
	end
	function ChatjiluMianban.tianshuxiala:PIGDownMenu_SetValue(value,arg1,arg2)
		ChatjiluMianban.tianshuxiala:PIGDownMenu_SetText(value)
		PIGA["Chatjilu"]["tianshu"]=arg1
		PIGCloseDropDownMenus()
	end

	ChatjiluMianban.qingkong = PIGButton(ChatjiluMianban,{"TOPRIGHT",ChatjiluMianban,"TOPRIGHT",-10,-34},{90,22},"清空记录");
	ChatjiluMianban.qingkong:SetFrameLevel(ChatjiluMianban.qingkong:GetFrameLevel()+5)
	ChatjiluMianban.qingkong:SetScript("OnClick", function (self)
		StaticPopup_Show ("QINGKONGLIAOTIANJILU");
	end);
	---
	ChatjiluMianban.nr=PIGOptionsList_RF(ChatjiluMianban,70)
	ChatjiluMianban.nr.tishiliulan = PIGFontString(ChatjiluMianban.nr,{"CENTER",ChatjiluMianban.nr,"CENTER",0,0},"点击上方频道标签浏览聊天记录");
	-------
	ChatjiluMianban:HookScript("OnShow", function (self)
		ChatjiluMianban.tianshuxiala:PIGDownMenu_SetText(baocuntianshulistN[PIGA["Chatjilu"]["tianshu"]])
		for j=1,#jilupindaoID do
			_G["pindaoxuanzeC_"..j.."_UI"]:SetChecked(PIGA["Chatjilu"]["jiluinfo"][jilupindaoID[j]]["kaiguan"]);
		end
	end);
	---
	StaticPopupDialogs["QINGKONGLIAOTIANJILU"] = {
		text = "确定要清空所有保存聊天记录吗？",
		button1 = "确定",
		button2 = "取消",
		OnAccept = function()
			for i=1,#jilupindaoID do
				PIGA["Chatjilu"]["jiluinfo"][jilupindaoID[i]]["neirong"]={}
				_G["liaotianneirong_shuaxin"..i.."_UI"]:SetID(0)
				_G["CHatjilu_liaotianneirong_Scroll"..i.."_UI"]:Clear()
				_G["dangtianzonghangshu_"..i.."_UI"]:SetText()
			    local ziframe = {ChatjiluMianban.nr.Bot:GetChildren()}
			    for i=1,#ziframe do
			    	ziframe[i]:Hide()
			    end	
			end
		end,
		timeout = 0,
		whileDead = true,
		hideOnEscape = true,
	}
	---
	local TabWidth,TabHeight = 100,26;
	local hang_Height,hang_NUM  = 21.4, 20;
	for id=1,#jilupindaoName do
		local function riqi_list_gengxin(self)
			local laiyuan=jilupindaoID[id];
			for i = 1, hang_NUM do
				local fuji = _G["riqi_list_TAB_"..id.."_"..i]
				fuji:Hide()
				fuji.Title:SetText("");
				fuji.Title:SetTextColor(0,250/255,154/255, 1);
				fuji.highlight1:Hide();
			end
			if #PIGA["Chatjilu"]["jiluinfo"][laiyuan]["neirong"]>0 then
			    local ItemsNum = #PIGA["Chatjilu"]["jiluinfo"][laiyuan]["neirong"][1];
			    FauxScrollFrame_Update(self, ItemsNum, hang_NUM, hang_Height);
			    local offset = FauxScrollFrame_GetOffset(self);
			    for i = 1, hang_NUM do
					local dangqian = (ItemsNum+1)-i-offset;
					if dangqian>0 then
						local fuji = _G["riqi_list_TAB_"..id.."_"..i]
						fuji:Show()
						fuji:SetID(dangqian)
						fuji.Title:SetText(date("%Y-%m-%d",PIGA["Chatjilu"]["jiluinfo"][laiyuan]["neirong"][1][dangqian]*86400));
						local yijihuohang=_G["CHatjilu_liaotianneirong_Scroll"..id.."_UI"].ShowID
						if dangqian==yijihuohang then
							fuji.Title:SetTextColor(1,1,1, 1);
							fuji.highlight1:Show();
						end
					end
				end
			end
		end
		local PindaolistFrame =PIGOptionsList_R(ChatjiluMianban.nr,jilupindaoName[id],TabWidth)
		-----------
		PindaolistFrame:HookScript("OnShow", function (self)
			ChatjiluMianban.nr.tishiliulan:Hide()
		end);
		----左边日期目录
		local riqi_list = PIGFrame(PindaolistFrame);
		riqi_list:PIGSetBackdrop()
		riqi_list:SetWidth(130);
		riqi_list:SetPoint("TOPLEFT",PindaolistFrame,"TOPLEFT",4,-4);
		riqi_list:SetPoint("BOTTOMLEFT",PindaolistFrame,"BOTTOMLEFT",0,4);
		riqi_list:HookScript("OnShow", function (self)
		    riqi_list_gengxin(self.Scroll);
		end);
		riqi_list.Scroll = CreateFrame("ScrollFrame","riqi_list_Scroll_"..id.."_UI",riqi_list, "FauxScrollFrameTemplate");  
		riqi_list.Scroll:SetPoint("TOPLEFT",riqi_list,"TOPLEFT",0,-2);
		riqi_list.Scroll:SetPoint("BOTTOMRIGHT",riqi_list,"BOTTOMRIGHT",-24,2);
		riqi_list.Scroll:SetScript("OnVerticalScroll", function(self, offset)
		    FauxScrollFrame_OnVerticalScroll(self, offset, hang_Height, riqi_list_gengxin)
		end)
		local function zairuliaotianINFO(ShowID,id)
				local laiyuan=PIGA["Chatjilu"]["jiluinfo"][jilupindaoID[id]]["neirong"];
				local jilulist=laiyuan[2][ShowID];
				for x=1,#jilulist do
					local Event =jilulist[x][1];
					local info2 ="["..date("%H:%M",jilulist[x][2]).."] ";
					local info3 =jilulist[x][3];
					local info4_jiluxiaoxineirong =jilulist[x][4];
					local info5 =jilulist[x][5];
					for i=1,#QuickChatfun.biaoqing do
						if info4_jiluxiaoxineirong:find(QuickChatfun.biaoqing[i][1]) then
							info4_jiluxiaoxineirong = info4_jiluxiaoxineirong:gsub(QuickChatfun.biaoqing[i][1], "\124T" .. QuickChatfun.biaoqing[i][2] .. ":" ..(PIGA["Chat"]["FontSize_value"]+2) .. "\124t");
						end
					end
					local textCHATINFO="";
					if Event=="CHAT_MSG_PARTY_LEADER" then
						textCHATINFO=info2.."|Hchannel:PARTY|h|cff89D2FF[队长]|r|h |Hplayer:"..info3..":000:PARTY:|h|cff89D2FF[|r|c"..info5..info3.."|r|cff89D2FF]|h："..info4_jiluxiaoxineirong.."|r";
					elseif Event=="CHAT_MSG_PARTY" then							
						textCHATINFO=info2.."|Hchannel:PARTY|h|cffAAAAFF[小队]|r|h |Hplayer:"..info3..":000:PARTY:|h|cffAAAAFF[|r|c"..info5..info3.."|r|cffAAAAFF]|h："..info4_jiluxiaoxineirong.."\124r";
					elseif Event=="CHAT_MSG_RAID_LEADER" then							
						textCHATINFO=info2.."|Hchannel:RAID|h\124cffFF4809[团队领袖]\124r|h |Hplayer:"..info3..":000:RAID:|h\124cffFF4809[\124r|c"..info5..info3.."|r\124cffFF4809]|h："..info4_jiluxiaoxineirong.."\124r";
					elseif Event=="CHAT_MSG_RAID" then
						textCHATINFO=info2.."|Hchannel:RAID|h\124cffFF7F00[团队]\124r|h |Hplayer:"..info3..":000:RAID:|h\124cffFF7F00[\124r|c"..info5..info3.."|r\124cffFF7F00]|h："..info4_jiluxiaoxineirong.."\124r";						
					elseif Event=="CHAT_MSG_RAID_WARNING" then	
						textCHATINFO=info2.."\124cffFF4800[团队通知]\124r |Hplayer:"..info3..":000:RAID:|h\124cffFF4800[\124r|c"..info5..info3.."|r\124cffFF4800]|h："..info4_jiluxiaoxineirong.."\124r";
					end
					_G["CHatjilu_liaotianneirong_Scroll"..id.."_UI"]:Show()
					_G["CHatjilu_liaotianneirong_Scroll"..id.."_UI"]:AddMessage(textCHATINFO, nil, nil, nil, nil, true);	
				end
				local xianshiriqishuju=date("%Y-%m-%d",laiyuan[1][ShowID]*86400)
				_G["dangtianzonghangshu_"..id.."_UI"]:SetText(xianshiriqishuju.."|cff"..jilupindaoNameC[id].."["..jilupindaoName[id].."]|r聊天总行数:"..#jilulist);
		end
		local hang_Width  = riqi_list:GetWidth()
		for i=1, hang_NUM, 1 do
			riqi_list.TAB = CreateFrame("Button", "riqi_list_TAB_"..id.."_"..i, riqi_list);
			riqi_list.TAB:SetSize(hang_Width,hang_Height);
			if i==1 then
				riqi_list.TAB:SetPoint("TOPLEFT", riqi_list.Scroll, "TOPLEFT", 0, -1);
			else
				riqi_list.TAB:SetPoint("TOPLEFT", _G["riqi_list_TAB_"..id.."_"..(i-1)], "BOTTOMLEFT", 0, 0);
			end
			riqi_list.TAB.Title = PIGFontString(riqi_list.TAB,{"LEFT", riqi_list.TAB, "LEFT", 6, 0})
			riqi_list.TAB.Title:SetTextColor(0,250/255,154/255, 1);
			riqi_list.TAB.highlight = riqi_list.TAB:CreateTexture();
			riqi_list.TAB.highlight:SetTexture("interface/buttons/ui-listbox-highlight2.blp");
			riqi_list.TAB.highlight:SetBlendMode("ADD")
			riqi_list.TAB.highlight:SetPoint("LEFT", riqi_list.TAB, "LEFT", 2,0);
			riqi_list.TAB.highlight:SetSize(hang_Width-6,hang_Height);
			riqi_list.TAB.highlight:SetAlpha(0.4);
			riqi_list.TAB.highlight:Hide();
			riqi_list.TAB.highlight1 = riqi_list.TAB:CreateTexture();
			riqi_list.TAB.highlight1:SetTexture("interface/buttons/ui-listbox-highlight.blp");
			riqi_list.TAB.highlight1:SetPoint("LEFT", riqi_list.TAB, "LEFT", 2,0);
			riqi_list.TAB.highlight1:SetSize(hang_Width-6,hang_Height);
			riqi_list.TAB.highlight1:SetAlpha(0.9);
			riqi_list.TAB.highlight1:Hide();
			riqi_list.TAB:SetScript("OnEnter", function (self)
				if not self.highlight1:IsShown() then
					self.Title:SetTextColor(1,1,1,1);
					self.highlight:Show();
				end
			end);
			riqi_list.TAB:SetScript("OnLeave", function (self)
				if not self.highlight1:IsShown() then
					self.Title:SetTextColor(0,250/255,154/255,1);	
				end
				self.highlight:Hide();
			end);
			riqi_list.TAB:SetScript("OnClick", function (self)
				for v=1,hang_NUM do
					local fujix = _G["riqi_list_TAB_"..id.."_"..v]
					fujix.highlight1:Hide();
					fujix.highlight:Hide();
					fujix.Title:SetTextColor(0,250/255,154/255,1);
				end
				self.Title:SetTextColor(1,1,1,1);
				self.highlight1:Show();
				---
				_G["CHatjilu_liaotianneirong_Scroll"..id.."_UI"].ShowID=self:GetID()
				_G["CHatjilu_liaotianneirong_Scroll"..id.."_UI"]:Clear()
				zairuliaotianINFO(self:GetID(),id)
			end)
		end
		---右边聊天内容显示区域
		local butWWW,butHHH = 30,30
		local liaotianneirong = PIGFrame(PindaolistFrame);
		liaotianneirong:PIGSetBackdrop()
		liaotianneirong:SetPoint("TOPLEFT",riqi_list,"TOPRIGHT",4,0);
		liaotianneirong:SetPoint("BOTTOMRIGHT",PindaolistFrame,"BOTTOMRIGHT",-4,24);
		liaotianneirong.Scroll = CreateFrame("ScrollingMessageFrame", "CHatjilu_liaotianneirong_Scroll"..id.."_UI", liaotianneirong, "ChatFrameTemplate")
		liaotianneirong.Scroll:SetPoint("TOPLEFT",liaotianneirong,"TOPLEFT",4,-4);
		liaotianneirong.Scroll:SetPoint("BOTTOMRIGHT",liaotianneirong,"BOTTOMRIGHT",-26,4);
		liaotianneirong.Scroll:SetFading(false)
		liaotianneirong.Scroll:SetMaxLines(9999)
		liaotianneirong.Scroll:UnregisterAllEvents()
		liaotianneirong.Scroll:SetFrameStrata("MEDIUM")
		liaotianneirong.Scroll:SetToplevel(false)
		liaotianneirong.Scroll:Hide()
		liaotianneirong.Scroll:SetHyperlinksEnabled(true)
		liaotianneirong.Scroll:EnableMouseWheel(true)
		---按钮
		liaotianneirong.Scroll.ScrollToBottomButton = CreateFrame("Button",nil,liaotianneirong.Scroll, "TruncatedButtonTemplate");
		liaotianneirong.Scroll.ScrollToBottomButton:SetNormalTexture("interface/chatframe/ui-chaticon-scrollend-up.blp")
		liaotianneirong.Scroll.ScrollToBottomButton:SetHighlightTexture("interface/buttons/ui-common-mousehilight.blp");
		liaotianneirong.Scroll.ScrollToBottomButton:SetPushedTexture("interface/chatframe/ui-chaticon-scrollend-down.blp")
		liaotianneirong.Scroll.ScrollToBottomButton:SetSize(butWWW,butHHH);
		liaotianneirong.Scroll.ScrollToBottomButton:SetPoint("BOTTOMLEFT",liaotianneirong.Scroll,"BOTTOMRIGHT",0,4);
		liaotianneirong.Scroll.ScrollToBottomButton.hilight = liaotianneirong.Scroll.ScrollToBottomButton:CreateTexture(nil,"OVERLAY");
		liaotianneirong.Scroll.ScrollToBottomButton.hilight:SetTexture("interface/chatframe/ui-chaticon-blinkhilight.blp");
		liaotianneirong.Scroll.ScrollToBottomButton.hilight:SetSize(butWWW,butHHH);
		liaotianneirong.Scroll.ScrollToBottomButton.hilight:SetPoint("CENTER", 0, 0);
		liaotianneirong.Scroll.ScrollToBottomButton.hilight:Hide();
		liaotianneirong.Scroll.down = CreateFrame("Button",nil,liaotianneirong.Scroll, "TruncatedButtonTemplate");
		liaotianneirong.Scroll.down:SetNormalTexture("interface/chatframe/ui-chaticon-scrolldown-up.blp")
		liaotianneirong.Scroll.down:SetHighlightTexture("interface/buttons/ui-common-mousehilight.blp");
		liaotianneirong.Scroll.down:SetPushedTexture("interface/chatframe/ui-chaticon-scrolldown-down.blp")
		liaotianneirong.Scroll.down:SetSize(butWWW,butHHH);
		liaotianneirong.Scroll.down:SetPoint("BOTTOM",liaotianneirong.Scroll.ScrollToBottomButton,"TOP",-2,6);
		liaotianneirong.Scroll.up = CreateFrame("Button",nil,liaotianneirong.Scroll, "TruncatedButtonTemplate");
		liaotianneirong.Scroll.up:SetNormalTexture("interface/chatframe/ui-chaticon-scrollup-up.blp")
		liaotianneirong.Scroll.up:SetHighlightTexture("interface/buttons/ui-common-mousehilight.blp");
		liaotianneirong.Scroll.up:SetPushedTexture("interface/chatframe/ui-chaticon-scrollup-down.blp")
		liaotianneirong.Scroll.up:SetSize(butWWW,butHHH);
		liaotianneirong.Scroll.up:SetPoint("BOTTOM",liaotianneirong.Scroll.down,"TOP",0,6);
		liaotianneirong.Scroll.shuaxin = CreateFrame("Button","liaotianneirong_shuaxin"..id.."_UI",liaotianneirong.Scroll, "UIMenuButtonStretchTemplate",0);
		liaotianneirong.Scroll.shuaxin:SetHighlightTexture(0);
		liaotianneirong.Scroll.shuaxin:SetSize(butWWW-4,butHHH-4);
		liaotianneirong.Scroll.shuaxin:SetPoint("BOTTOM",liaotianneirong.Scroll.up,"TOP",-0.4,40);
		liaotianneirong.Scroll.shuaxin.highlight = liaotianneirong.Scroll.shuaxin:CreateTexture(nil, "HIGHLIGHT");
		liaotianneirong.Scroll.shuaxin.highlight:SetTexture("interface/buttons/ui-common-mousehilight.blp");
		liaotianneirong.Scroll.shuaxin.highlight:SetBlendMode("ADD")
		liaotianneirong.Scroll.shuaxin.highlight:SetPoint("CENTER", liaotianneirong.Scroll.shuaxin, "CENTER", 0,0);
		liaotianneirong.Scroll.shuaxin.highlight:SetSize(butWWW,butHHH);
		liaotianneirong.Scroll.shuaxin.Normal = liaotianneirong.Scroll.shuaxin:CreateTexture(nil, "BORDER");
		liaotianneirong.Scroll.shuaxin.Normal:SetTexture("interface/buttons/ui-refreshbutton.blp");
		liaotianneirong.Scroll.shuaxin.Normal:SetBlendMode("ADD")
		liaotianneirong.Scroll.shuaxin.Normal:SetPoint("CENTER", liaotianneirong.Scroll.shuaxin, "CENTER", 0,0);
		liaotianneirong.Scroll.shuaxin.Normal:SetSize(butWWW-14,butHHH-14);
		liaotianneirong.Scroll.shuaxin:HookScript("OnMouseDown", function (self)
			liaotianneirong.Scroll.shuaxin.Normal:SetPoint("CENTER", liaotianneirong.Scroll.shuaxin, "CENTER", -1.5,-1.5);
		end);
		liaotianneirong.Scroll.shuaxin:HookScript("OnMouseUp", function (self)
			liaotianneirong.Scroll.shuaxin.Normal:SetPoint("CENTER", liaotianneirong.Scroll.shuaxin, "CENTER", 0,0);
		end);
		-------------
		liaotianneirong.Scroll.kaishi = CreateFrame("Button",nil,liaotianneirong.Scroll, "TruncatedButtonTemplate");
		liaotianneirong.Scroll.kaishi:SetHighlightTexture("interface/buttons/ui-common-mousehilight.blp");
		liaotianneirong.Scroll.kaishi:SetNormalTexture("interface/chatframe/ui-chaticon-scrollend-up.blp")
		liaotianneirong.Scroll.kaishi:SetPushedTexture("interface/chatframe/ui-chaticon-scrollend-down.blp")
		liaotianneirong.Scroll.kaishi:SetSize(butWWW,butHHH);
		liaotianneirong.Scroll.kaishi:SetPoint("BOTTOM",liaotianneirong.Scroll.shuaxin,"TOP",0,50);
		local buttonNormal=liaotianneirong.Scroll.kaishi:GetNormalTexture() 
		if tocversion<30000 then
			buttonNormal:SetRotation(math.rad(180))
		else
			buttonNormal:SetRotation(math.rad(180))
		end
		local buttonPushed=liaotianneirong.Scroll.kaishi:GetPushedTexture() 
		if tocversion<30000 then
			buttonPushed:SetRotation(math.rad(180))
		else
			buttonPushed:SetRotation(math.rad(180))
		end
		liaotianneirong.Scroll.del =PIGCloseBut(liaotianneirong.Scroll,{"TOPLEFT",liaotianneirong.Scroll,"TOPRIGHT",1,-4},nil,"liaotianneirong_del"..id.."_UI")

		liaotianneirong.Scroll.kaishi:SetScript("OnClick", function (self)
			liaotianneirong.Scroll:ScrollToTop()
			liaotianneirong.Scroll.kaishi:SetNormalTexture("interface/chatframe/ui-chaticon-scrollend-disabled.blp")
			liaotianneirong.Scroll.up:SetNormalTexture("interface/chatframe/ui-chaticon-scrollup-disabled.blp")
			liaotianneirong.Scroll.down:SetNormalTexture("interface/chatframe/ui-chaticon-scrolldown-up.blp")
			liaotianneirong.Scroll.ScrollToBottomButton:SetNormalTexture("interface/chatframe/ui-chaticon-scrollend-up.blp")
		end);
		liaotianneirong.Scroll.up:SetScript("OnClick", function (self)
			for i=1,20 do
				liaotianneirong.Scroll:ScrollUp()
			end
			liaotianneirong.Scroll.down:SetNormalTexture("interface/chatframe/ui-chaticon-scrolldown-up.blp")
			liaotianneirong.Scroll.ScrollToBottomButton:SetNormalTexture("interface/chatframe/ui-chaticon-scrollend-up.blp")
		end);
		liaotianneirong.Scroll.down:SetScript("OnClick", function (self)
			for i=1,20 do
				liaotianneirong.Scroll:ScrollDown()
			end
			liaotianneirong.Scroll.kaishi:SetNormalTexture("interface/chatframe/ui-chaticon-scrollend-up.blp")
			liaotianneirong.Scroll.up:SetNormalTexture("interface/chatframe/ui-chaticon-scrollup-up.blp")
		end);
		liaotianneirong.Scroll.ScrollToBottomButton:SetScript("OnClick", function (self)
			liaotianneirong.Scroll:ScrollToBottom()
			liaotianneirong.Scroll.kaishi:SetNormalTexture("interface/chatframe/ui-chaticon-scrollend-up.blp")
			liaotianneirong.Scroll.up:SetNormalTexture("interface/chatframe/ui-chaticon-scrollup-up.blp")
			liaotianneirong.Scroll.down:SetNormalTexture("interface/chatframe/ui-chaticon-scrolldown-disabled.blp")
			liaotianneirong.Scroll.ScrollToBottomButton:SetNormalTexture("interface/chatframe/ui-chaticon-scrollend-disabled.blp")
		end);
		liaotianneirong.Scroll.shuaxin:SetScript("OnClick", function (self)
			liaotianneirong.Scroll.kaishi:SetNormalTexture("interface/chatframe/ui-chaticon-scrollend-up.blp")
			liaotianneirong.Scroll.up:SetNormalTexture("interface/chatframe/ui-chaticon-scrollup-up.blp")
			liaotianneirong.Scroll.down:SetNormalTexture("interface/chatframe/ui-chaticon-scrolldown-disabled.blp")
			liaotianneirong.Scroll.ScrollToBottomButton:SetNormalTexture("interface/chatframe/ui-chaticon-scrollend-disabled.blp")
			local ShowID = self:GetParent().ShowID
			if ShowID>0 then
				liaotianneirong.Scroll:Clear()
				zairuliaotianINFO(ShowID,id)
			end
		end);
		liaotianneirong.Scroll.del:SetScript("OnClick", function (self)
			local fujiK = self:GetParent()
			local ShowID = fujiK.ShowID
			if ShowID and ShowID>0 then
				liaotianneirong.Scroll:Clear()
				table.remove(PIGA["Chatjilu"]["jiluinfo"][jilupindaoID[id]]["neirong"][1],ShowID);
				table.remove(PIGA["Chatjilu"]["jiluinfo"][jilupindaoID[id]]["neirong"][2],ShowID);
			    riqi_list_gengxin(riqi_list.Scroll);
			    fujiK.ShowID=0
			end
		end);
		liaotianneirong.Scroll:SetScript("OnMouseWheel", function(self, delta)
			if delta == 1 then
				self.down:SetNormalTexture("interface/chatframe/ui-chaticon-scrolldown-up.blp")
				self.ScrollToBottomButton:SetNormalTexture("interface/chatframe/ui-chaticon-scrollend-up.blp")
				self:ScrollUp()
				self.ScrollToBottomButton.hilight:Show();
			elseif delta == -1 then
				self.kaishi:SetNormalTexture("interface/chatframe/ui-chaticon-scrollend-up.blp")
				self.up:SetNormalTexture("interface/chatframe/ui-chaticon-scrollup-up.blp")
				self:ScrollDown()
				if self:GetScrollOffset()==0 then
					self.ScrollToBottomButton.hilight:Hide();
					self.down:SetNormalTexture("interface/chatframe/ui-chaticon-scrolldown-disabled.blp")
					self.ScrollToBottomButton:SetNormalTexture("interface/chatframe/ui-chaticon-scrollend-disabled.blp")
				end
			end
		end)
		---总行数
		local dangtianzonghangshu =PIGFontString(liaotianneirong.Scroll,{"TOP",liaotianneirong,"BOTTOM",0,-4},nil,nil,nil,"dangtianzonghangshu_"..id.."_UI")
	end
	---根据启用注册事件
	for i=1,#jilupindaoID do
		if PIGA["Chatjilu"]["jiluinfo"][jilupindaoID[i]]["kaiguan"] then
			for jj=1,#jilupindaoEvent[i] do
				huoquliaotianjiluFFF:RegisterEvent(jilupindaoEvent[i][jj]);
			end
		end
	end
	--huoquliaotianjiluFFF:RegisterEvent("CHAT_MSG_SAY");
	huoquliaotianjiluFFF:HookScript("OnEvent", function (self,event,arg1,arg2,arg3,arg4,arg5,_,_,_,_,_,_,arg12)
			for i=1,#jilupindaoEvent do
				for ii=1,#jilupindaoEvent[i] do
					if jilupindaoEvent[i][ii]==event then
						local xiaoxiTime=GetServerTime()
						local YYDAY=floor(xiaoxiTime/60/60/24)
						local localizedClass, englishClass = GetPlayerInfoByGUID(arg12)
						local rPerc, gPerc, bPerc, argbHex = GetClassColor(englishClass);
						local shujuyuanPR=PIGA["Chatjilu"]["jiluinfo"][jilupindaoID[i]]["neirong"]
						if #shujuyuanPR>0 then
							local yijingcunzairiqi=false
							for f=#shujuyuanPR[1], 1, -1 do
								if shujuyuanPR[1][f]==YYDAY then
									table.insert(shujuyuanPR[2][f], {event,xiaoxiTime,arg5,arg1,argbHex});
									yijingcunzairiqi=true;
									break
								end
							end
							if yijingcunzairiqi==false then
								table.insert(shujuyuanPR[1], YYDAY);
								table.insert(shujuyuanPR[2], {{event,xiaoxiTime,arg5,arg1,argbHex}});
							end
						else
							PIGA["Chatjilu"]["jiluinfo"][jilupindaoID[i]]["neirong"]={
								{YYDAY},{{{event,xiaoxiTime,arg5,arg1,argbHex}}}
							}
						end
					end
				end
			end
	end)


	---密语记录=======================================
	local www,hhh,hang_Height,hang_NUM = 160,310,24,12
	local miyijiluF=PIGFrame(UIParent,{"CENTER",UIParent,"CENTER",0,70},{www,hhh},"miyijiluF_UI",true)
	miyijiluF:PIGSetBackdrop()
	miyijiluF:PIGSetMovable()
	miyijiluF:PIGClose()
	miyijiluF.biaoti=PIGFontString(miyijiluF,{"TOP", miyijiluF, "TOP", 0, -4},"密语记录")
	miyijiluF.biaoti:SetTextColor(1, 0.843, 0, 1);
	PIGLine(miyijiluF,"TOP",-20)

	miyijiluF.shezhi = CreateFrame("Button",nil,miyijiluF);
	miyijiluF.shezhi:SetHighlightTexture("interface/buttons/ui-common-mousehilight.blp");
	miyijiluF.shezhi:SetSize(18,18);
	miyijiluF.shezhi:SetPoint("TOPLEFT",miyijiluF,"TOPLEFT",4,-1.8);
	miyijiluF.shezhi.Tex = miyijiluF.shezhi:CreateTexture(nil,"OVERLAY");
	miyijiluF.shezhi.Tex:SetTexture("interface/gossipframe/bindergossipicon.blp");
	miyijiluF.shezhi.Tex:SetPoint("CENTER", 0, 0);
	miyijiluF.shezhi.Tex:SetSize(16,16);
	miyijiluF.shezhi:SetScript("OnMouseDown", function (self)
		self.Tex:SetPoint("CENTER",-1,-1);
	end);
	miyijiluF.shezhi:SetScript("OnMouseUp", function (self)
		self.Tex:SetPoint("CENTER");
	end);
	miyijiluF.shezhi:SetScript("OnClick", function (self)
		if miyijiluF.shezhiF:IsShown() then
			miyijiluF.shezhiF:Hide();
		else
			miyijiluF.shezhiF:Show();
			miyijiluF.shezhiF.tixing:SetChecked(PIGA["Chatjilu"]["jiluinfo"]["WHISPER"]["tixing"])
		end
	end)
	miyijiluF.shezhiF=PIGFrame(miyijiluF.shezhi,{"TOPRIGHT",miyijiluF,"TOPLEFT",-1,0},{www,hhh})
	miyijiluF.shezhiF:PIGSetBackdrop()
	miyijiluF.shezhiF:PIGClose()
	miyijiluF.shezhiF:Hide()
	miyijiluF.shezhiF.biaoti=PIGFontString(miyijiluF.shezhiF,{"TOP", miyijiluF.shezhiF, "TOP", 0, -4},"设置")
	PIGLine(miyijiluF.shezhiF,"TOP",-20)

	miyijiluF.shezhiF.tixing = PIGCheckbutton(miyijiluF.shezhiF,{"TOPLEFT", miyijiluF.shezhiF, "TOPLEFT", 10,-30},{"新密语提醒","收到密语时频道切换按钮里面的图标会闪动"})
	miyijiluF.shezhiF.tixing:SetScript("OnClick", function (self)
		if self:GetChecked() then
			PIGA["Chatjilu"]["jiluinfo"]["WHISPER"]["tixing"]=true 
		else
			PIGA["Chatjilu"]["jiluinfo"]["WHISPER"]["tixing"]=false 
		end
	end)
	---重置密语记录
	miyijiluF.shezhiF.MIYUJILU = PIGFontString(miyijiluF.shezhiF,{"BOTTOMLEFT",miyijiluF.shezhiF,"BOTTOMLEFT",10,10},"出问题点");
	miyijiluF.shezhiF.MIYUJILUBUT = PIGButton(miyijiluF.shezhiF, {"LEFT",miyijiluF.shezhiF.MIYUJILU,"RIGHT",4,0},{76,20},"清空重置");  
	miyijiluF.shezhiF.MIYUJILUBUT:SetScript("OnClick", function ()
		StaticPopup_Show("CHONGZHI_MIYUJILU");
	end);
	--右键功能
	local FasongYCqingqiu=addonTable.FasongYCqingqiu
	local function RGongNeng(menuName,name)
		local fullnameX = name
		if menuName=="邀请组队" then
			InviteUnit(fullnameX)
		elseif menuName=="目标信息" then
			C_FriendList.SendWho(fullnameX)
		elseif menuName=="添加好友" then
			C_FriendList.AddFriend(fullnameX)
		elseif menuName=="邀请入会" then
			GuildInvite(fullnameX)
		elseif menuName=="复制名字" then
			local editBoxXX
			editBoxXX = ChatEdit_ChooseBoxForSend()
	        local hasText = (editBoxXX:GetText() ~= "")
	        ChatEdit_ActivateChat(editBoxXX)
			editBoxXX:Insert(fullnameX)
	        if (not hasText) then editBoxXX:HighlightText() end
		elseif menuName=="查看装备" then
			FasongYCqingqiu(fullnameX)
		end
	end
	local listName={"邀请组队","目标信息","添加好友","邀请入会","复制名字","查看装备","取消"}
	local caidanW,caidanH=106,20

	local beijingico=DropDownList1MenuBackdrop.NineSlice.Center:GetTexture()
	local beijing1,beijing2,beijing3,beijing4=DropDownList1MenuBackdrop.NineSlice.Center:GetVertexColor()
	local Biankuang1,Biankuang2,Biankuang3,Biankuang4=DropDownList1MenuBackdrop:GetBackdropBorderColor()
	miyijiluF.RGN=PIGFrame(miyijiluF,nil,{caidanW,caidanH*#listName+12+16})
	miyijiluF.RGN:SetFrameLevel(10)
	miyijiluF.RGN:PIGSetBackdrop(0.9)
	miyijiluF.RGN:SetScript("OnUpdate", function(self, ssss)
		if miyijiluF.RGN.zhengzaixianshi==nil then
			return;
		else
			if miyijiluF.RGN.zhengzaixianshi==true then
				if miyijiluF.RGN.xiaoshidaojishi<= 0 then
					miyijiluF.RGN:Hide();
					miyijiluF.RGN.zhengzaixianshi = nil;
				else
					miyijiluF.RGN.xiaoshidaojishi = miyijiluF.RGN.xiaoshidaojishi - ssss;	
				end
			end
		end

	end)
	miyijiluF.RGN:SetScript("OnEnter", function()
		miyijiluF.RGN.zhengzaixianshi = nil;
	end)
	miyijiluF.RGN:SetScript("OnLeave", function()
		miyijiluF.RGN.xiaoshidaojishi = 1.5;
		miyijiluF.RGN.zhengzaixianshi = true;
	end)
	---
	miyijiluF.RGN.name = PIGFontString(miyijiluF.RGN,{"TOP",miyijiluF.RGN,"TOP",0,-4});
	------
	for i=1,#listName do
		local RGNTAB = CreateFrame("Frame", "RGNTAB_"..i, miyijiluF.RGN);
		RGNTAB:SetSize(caidanW,caidanH);
		if i==1 then
			RGNTAB:SetPoint("TOPLEFT", miyijiluF.RGN, "TOPLEFT", 4, -22);
		else
			RGNTAB:SetPoint("TOPLEFT", _G["RGNTAB_"..(i-1)], "BOTTOMLEFT", 0, 0);
		end
		RGNTAB.Title = PIGFontString(RGNTAB,{"LEFT", RGNTAB, "LEFT", 6, 0},listName[i]);
		RGNTAB.highlight1 = RGNTAB:CreateTexture(nil, "BORDER");
		RGNTAB.highlight1:SetTexture("interface/buttons/ui-listbox-highlight.blp");
		RGNTAB.highlight1:SetPoint("CENTER", RGNTAB, "CENTER", -3,0);
		RGNTAB.highlight1:SetSize(caidanW-18,16);
		RGNTAB.highlight1:SetAlpha(0.9);
		RGNTAB.highlight1:Hide();
		RGNTAB:SetScript("OnEnter", function(self)
			self.highlight1:Show()
			miyijiluF.RGN.zhengzaixianshi = nil;
		end);
		RGNTAB:SetScript("OnLeave", function(self)
			self.highlight1:Hide()
			miyijiluF.RGN.xiaoshidaojishi = 1.5;
			miyijiluF.RGN.zhengzaixianshi = true;
		end);
		RGNTAB:SetScript("OnMouseDown", function(self)
			self.Title:SetPoint("LEFT", self, "LEFT", 7.4, -1.4);
		end);
		RGNTAB:SetScript("OnMouseUp", function(self)
			self.Title:SetPoint("LEFT", self, "LEFT", 6, 0);
			miyijiluF.RGN:Hide();
			RGongNeng(self.Title:GetText(),miyijiluF.RGN.name.X)
		end);
	end
	---------
	miyijiluF.F = CreateFrame("Frame", nil, miyijiluF);
	miyijiluF.F:SetPoint("TOPLEFT",miyijiluF,"TOPLEFT",0,-20);
	miyijiluF.F:SetPoint("BOTTOMRIGHT",miyijiluF,"BOTTOMRIGHT",0,0);
	local function gengxinhang(self)
		for id = 1, hang_NUM do
	    	_G["MSGhang_"..id]:Hide();
	    end
	    local shuju=PIGA["Chatjilu"]["jiluinfo"]["WHISPER"]["neirong"]
		if #shuju>0 then
			local ItemsNum = #shuju[1];
			FauxScrollFrame_Update(self, ItemsNum, hang_NUM, hang_Height);
			local offset = FauxScrollFrame_GetOffset(self);
		    for id = 1, hang_NUM do
				local dangqian = id+offset;
				if shuju[1][dangqian] then
					_G["MSGhang_"..id]:Show();
					local coords = CLASS_ICON_TCOORDS[shuju[1][dangqian][2]]
					_G["MSGhang_"..id].zhiye:SetTexCoord(unpack(coords));
					local name1,name2 = strsplit("-", shuju[1][dangqian][1]);
					_G["MSGhang_"..id].name.X=shuju[1][dangqian][1]
					if name2 == GetRealmName() then
						_G["MSGhang_"..id].name:SetText(name1);
					else
						_G["MSGhang_"..id].name:SetText(name1.."(*)");
					end
					local rPerc, gPerc, bPerc, argbHex = GetClassColor(shuju[1][dangqian][2]);
					local nrname=shuju[1][dangqian][1]
					local shifouyuedu=shuju[1][dangqian][3]
					local nrheji=shuju[2][nrname]
					if nrheji[#nrheji][1]=="CHAT_MSG_WHISPER" then
						if shifouyuedu then
							_G["MSGhang_"..id].name:SetTextColor(rPerc, gPerc, bPerc, 1);
						else
							_G["MSGhang_"..id].name:SetTextColor(0.9, 0.9, 0.9, 1);
						end
					else
						_G["MSGhang_"..id].name:SetTextColor(0.5, 0.5, 0.5, 1);
					end
					_G["MSGhang_"..id].del:SetID(dangqian);
				end
			end
		end
	end
	StaticPopupDialogs["CHONGZHI_MIYUJILU"] = {
		text = "此操作将\124cffff0000重置\124r密语记录配置，并清空所有已保存数据。\n确定重置?",
		button1 = "确定",
		button2 = "取消",
		OnAccept = function()
			PIGA["Chatjilu"]["jiluinfo"]["WHISPER"]["neirong"] = addonTable.Default["Chatjilu"]["jiluinfo"]["WHISPER"]["neirong"];
			gengxinhang(miyijiluF.F.Scroll)
		end,
		timeout = 0,
		whileDead = true,
		hideOnEscape = true,
	}
	miyijiluF.F.Scroll = CreateFrame("ScrollFrame",nil,miyijiluF.F, "FauxScrollFrameTemplate");  
	miyijiluF.F.Scroll:SetPoint("TOPLEFT",miyijiluF.F,"TOPLEFT",0,-2);
	miyijiluF.F.Scroll:SetPoint("BOTTOMRIGHT",miyijiluF.F,"BOTTOMRIGHT",-20,2);
	miyijiluF.F.Scroll:SetScript("OnVerticalScroll", function(self, offset)
	    FauxScrollFrame_OnVerticalScroll(self, offset, hang_Height, gengxinhang)
	end)
	miyijiluF.F.Scroll.ScrollBar:SetScale(0.8);
	for id = 1, hang_NUM do
		local hang = CreateFrame("Frame", "MSGhang_"..id, miyijiluF.F.Scroll:GetParent());
		hang:SetSize(www, hang_Height);
		if id==1 then
			hang:SetPoint("TOPLEFT",miyijiluF.F.Scroll,"TOPLEFT",0,0);
		else
			hang:SetPoint("TOP",_G["MSGhang_"..(id-1)],"BOTTOM",0,-0);
		end
		hang:SetScript("OnEnter",  function(self)
			miyijiluF.zhengzaixianshi = nil;
			local WowWidth=GetScreenWidth()/2-300;
			local offset = miyijiluF:GetLeft();
			miyijiluF.nr:ClearAllPoints();
			if offset<WowWidth then
				miyijiluF.nr:SetPoint("TOPLEFT",miyijiluF,"TOPRIGHT",1,0);
			else
				miyijiluF.nr:SetPoint("TOPRIGHT",miyijiluF,"TOPLEFT",-1,0);
			end
			miyijiluF.nr:Show()
			self.highlight:Show();
			self.del:Show();
			miyijiluF.nr.Scroll:Clear()

			local idxx=self.del:GetID()
			local shuju=PIGA["Chatjilu"]["jiluinfo"]["WHISPER"]["neirong"]
			local Aname = shuju[1][idxx][1];
			shuju[1][idxx][3]=false
			
			
			local rPerc, gPerc, bPerc, argbHex = GetClassColor(shuju[1][idxx][2]);
			miyijiluF.nr.text:SetText("与 |c"..argbHex..Aname.."|r 聊天记录");
			

			local name1,name2 = strsplit("-", Aname);
			local nering=shuju[2][Aname]
			local zonghhh=#nering
			if nering[zonghhh][1]=="CHAT_MSG_WHISPER_INFORM" then
				self.name:SetTextColor(0.5, 0.5, 0.5, 1);
			else
				self.name:SetTextColor(0.9, 0.9, 0.9, 1);
			end
			miyijiluF.nr.Scroll.ScrollToBottomButton:Hide()
			if zonghhh>9 then
				if zonghhh>21 then
					miyijiluF.nr.Scroll.ScrollToBottomButton:Show()
					miyijiluF.nr:SetHeight(310);
				else
					miyijiluF.nr:SetHeight(zonghhh*16+20);
				end
			else
				miyijiluF.nr:SetHeight(150);
			end
			for ix=1,zonghhh do
				local Event =nering[ix][1];
				local info2 ="[\124cffC0C0C0"..date("%m-%d %H:%M",nering[ix][2]).."]\124r ";
				local info4_jiluxiaoxineirong =nering[ix][3];
				local textCHATINFO="";
				if Event=="CHAT_MSG_WHISPER_INFORM" then
					textCHATINFO=info2.."\124cffFF80FF发送给|Hplayer:"..name1..":000:WHISPER:"..name1.."|h[\124r|c"..argbHex..name1.."|r\124cffFF80FF]|h："..info4_jiluxiaoxineirong.."\124r";						
				elseif Event=="CHAT_MSG_WHISPER" then
					textCHATINFO=info2.."|Hplayer:"..name1..":000:WHISPER:"..name1.."|h\124cffFF80FF[\124r|c"..argbHex..name1.."|r\124cffFF80FF]|h悄悄地说："..info4_jiluxiaoxineirong.."\124r";
				end
				miyijiluF.nr.Scroll:Show()
				miyijiluF.nr.Scroll:AddMessage(textCHATINFO, nil, nil, nil, nil, true);
			end
		end)
		hang:SetScript("OnLeave",  function(self)
			miyijiluF.xiaoshidaojishi = 0.2;
			miyijiluF.zhengzaixianshi = true;
			self.highlight:Hide();
			self.del:Hide();
		end)
		hang:SetScript("OnMouseUp", function(self,button)
			local name = self.name:GetText()	
			local cunzai =name:find("*")
			if not cunzai then
				self.name.X=name
			end
			local nameinfo = self.name.X
			if button=="LeftButton" then
				local editBox = ChatEdit_ChooseBoxForSend();
				local hasText = editBox:GetText()
				if editBox:HasFocus() then
					editBox:SetText("/WHISPER " ..nameinfo.." ".. hasText);
				else
					ChatEdit_ActivateChat(editBox)
					editBox:SetText("/WHISPER " ..nameinfo.." ".. hasText);
				end
			elseif button=="RightButton" then
				miyijiluF.RGN:ClearAllPoints();
				miyijiluF.RGN:SetPoint("TOPLEFT",self,"BOTTOMLEFT",24,0);
				miyijiluF.RGN:Show()
				miyijiluF.RGN.name:SetText(name);
				miyijiluF.RGN.name.X=nameinfo;
				miyijiluF.RGN.xiaoshidaojishi = 1.5;
				miyijiluF.RGN.zhengzaixianshi = true;
			end
		end)
		hang.highlight = hang:CreateTexture(nil, "BORDER");
		hang.highlight:SetTexture("interface/buttons/ui-listbox-highlight2.blp");
		hang.highlight:SetBlendMode("ADD")
		hang.highlight:SetPoint("CENTER", hang, "CENTER", 0,0);
		hang.highlight:SetSize(www, hang_Height-2);
		hang.highlight:SetAlpha(0.4);
		hang.highlight:Hide();
		if id~=hang_NUM then
			PIGLine(hang,"BOT")
		end
		hang.zhiye = hang:CreateTexture(nil, "BORDER");
		hang.zhiye:SetTexture("Interface/TargetingFrame/UI-Classes-Circles");
		hang.zhiye:SetPoint("LEFT", hang, "LEFT", 4,0);
		hang.zhiye:SetSize(hang_Height-5,hang_Height-5);
		hang.name = PIGFontString(hang,{"LEFT", hang.zhiye, "RIGHT", 4,0},nil,nil,13)
		hang.del = PIGCloseBut(hang,{"RIGHT",hang,"RIGHT",-14,-0});
		hang.del:SetScript("OnEnter",  function(self)
			self:Show();
		end)
		hang.del:SetScript("OnLeave",  function(self)
			self:Hide();
		end)
		hang.del:SetScript("OnClick", function (self)
			local idid=self:GetID()
			local shuju=PIGA["Chatjilu"]["jiluinfo"]["WHISPER"]["neirong"]	
			table.removekey(shuju[2],shuju[1][idid][1])
			table.remove(shuju[1],idid);
			gengxinhang(miyijiluF.F.Scroll)
		end)
	end
	huoquliaotianjiluFFF:RegisterEvent("CHAT_MSG_WHISPER_INFORM");
	huoquliaotianjiluFFF:RegisterEvent("CHAT_MSG_WHISPER");
	--密语提醒
	local youNEWxiaoxinlai=false;
	local function miyuMGStishi()
			if fuFrame.ChatJilu.Tex:IsShown() then
				fuFrame.ChatJilu.Tex:Hide()
			else
				fuFrame.ChatJilu.Tex:Show()
			end
			if youNEWxiaoxinlai then
				C_Timer.After(0.8,miyuMGStishi)
			else
				fuFrame.ChatJilu.Tex:Show()
			end
	end
	--提取消息
	miyuP.zijirealm = GetRealmName()
	huoquliaotianjiluFFF:HookScript("OnEvent", function (self,event,arg1,arg2,arg3,arg4,arg5,_,_,_,_,_,_,arg12)
		if not miyuP.zijirealm then miyuP.zijirealm = GetRealmName() end
		if event=="CHAT_MSG_WHISPER" then
			if PIGA["Chatjilu"]["jiluinfo"]["WHISPER"]["tixing"] and youNEWxiaoxinlai==false and not miyijiluF_UI:IsShown() then
				youNEWxiaoxinlai=true 
				miyuMGStishi() 
			end
		end
		if event=="CHAT_MSG_WHISPER_INFORM" or event=="CHAT_MSG_WHISPER" then
			if miyijiluF_UI:IsShown() then
				local function zhixingshuaxiHn()
					gengxinhang(miyijiluF.F.Scroll)
				end
				C_Timer.After(0.2,zhixingshuaxiHn)
			end
			local xiaoxiTime=GetServerTime()
			--local YYDAY=floor(xiaoxiTime/60/60/24)
			if not arg12 then return end
			local localizedClass, englishClass = GetPlayerInfoByGUID(arg12)
			if tocversion<40000 then
				local izedClass, englishClass, localizedRace, englishRace, sex, name, realm = GetPlayerInfoByGUID(arg12)
				if realm=="" or realm==" " then
					miyuP.miyuren=arg5.."-"..miyuP.zijirealm
				else
					miyuP.miyuren=arg5
				end
			else
				miyuP.miyuren=arg5
			end
			local huancunshuju=PIGA["Chatjilu"]["jiluinfo"]["WHISPER"]["neirong"]
			if #huancunshuju>0 then
				local yijingcunzairiqi=false
				for f=#huancunshuju[1], 1, -1 do
					if huancunshuju[1][f][1]==miyuP.miyuren then
						table.remove(huancunshuju[1],f);
						table.insert(huancunshuju[1],1,{miyuP.miyuren,englishClass,true});
						if not huancunshuju[2] then
							huancunshuju[2][miyuP.miyuren]={}
						end
						table.insert(huancunshuju[2][miyuP.miyuren], {event,xiaoxiTime,arg1});
						yijingcunzairiqi=true;
						break
					end
				end
				if yijingcunzairiqi==false then
					table.insert(huancunshuju[1],1,{miyuP.miyuren,englishClass,true});
					huancunshuju[2][miyuP.miyuren]={{event,xiaoxiTime,arg1}}
				end
			else
				PIGA["Chatjilu"]["jiluinfo"]["WHISPER"]["neirong"]={
					{{miyuP.miyuren,englishClass,true}},{[miyuP.miyuren]={{event,xiaoxiTime,arg1}}}
				}
			end
		end
	end)
	-----聊天内容显示区域
	miyijiluF.nr=PIGFrame(miyijiluF,{"TOPRIGHT",miyijiluF,"TOPLEFT",-1,0},{400,120})
	miyijiluF.nr:PIGSetBackdrop()
	miyijiluF.nr:Hide()
	miyijiluF.nr:SetScript("OnEnter",  function(self)
		miyijiluF.nr:Show();
		miyijiluF.zhengzaixianshi = nil;
	end)
	miyijiluF.nr:SetScript("OnLeave",  function(self)
		miyijiluF.xiaoshidaojishi = 0.2;
		miyijiluF.zhengzaixianshi = true;
	end)
	miyijiluF.nr:SetScript("OnUpdate", function(self, ssss)
		if miyijiluF.zhengzaixianshi==nil then
			return;
		else
			if miyijiluF.zhengzaixianshi==true then
				if miyijiluF.xiaoshidaojishi<= 0 then
					miyijiluF.nr:Hide();
					miyijiluF.zhengzaixianshi = nil;
				else
					miyijiluF.xiaoshidaojishi = miyijiluF.xiaoshidaojishi - ssss;	
				end
			end
		end
	end)
	miyijiluF.nr.text = PIGFontString(miyijiluF.nr,{"TOPLEFT",miyijiluF.nr,"TOPLEFT",4,-1});
	PIGLine(miyijiluF.nr,"TOP",-20)
	---
	miyijiluF.nr.Scroll = CreateFrame("ScrollingMessageFrame", "ChatFrame89", miyijiluF.nr, "ChatFrameTemplate")
	miyijiluF.nr.Scroll:SetPoint("TOPLEFT",miyijiluF.nr,"TOPLEFT",4,-22);
	miyijiluF.nr.Scroll:SetPoint("BOTTOMRIGHT",miyijiluF.nr,"BOTTOMRIGHT",-2,3);
	miyijiluF.nr.Scroll:UnregisterAllEvents()
	--miyijiluF.nr.Scroll:SetHyperlinksEnabled(true)--可点击
	miyijiluF.nr.Scroll:SetMaxLines(9999)
	miyijiluF.nr.Scroll:SetFading(false)
	miyijiluF.nr.Scroll:SetFrameStrata("HIGH")
	miyijiluF.nr.Scroll:SetScript("OnEnter",  function(self)
		miyijiluF.nr:Show();
		miyijiluF.zhengzaixianshi = nil;
	end)
	miyijiluF.nr.Scroll:SetScript("OnLeave",  function(self)
		miyijiluF.xiaoshidaojishi = 0.2;
		miyijiluF.zhengzaixianshi = true;
	end)
	miyijiluF.nr.Scroll:SetScript("OnMouseWheel", function(self, delta)
		if delta == 1 then
			self:ScrollUp()
			self.ScrollToBottomButton.hilight:Show();
		elseif delta == -1 then
			self:ScrollDown()
			if self:GetScrollOffset()==0 then
				self.ScrollToBottomButton.hilight:Hide();
			end
		end
	end)
	---翻页按钮=======================
	local anniudaxiaoF = 24
	miyijiluF.nr.Scroll.ScrollToBottomButton = CreateFrame("Button",nil,miyijiluF.nr.Scroll, "TruncatedButtonTemplate");
	miyijiluF.nr.Scroll.ScrollToBottomButton:SetNormalTexture("interface/chatframe/ui-chaticon-scrollend-up.blp")
	miyijiluF.nr.Scroll.ScrollToBottomButton:SetHighlightTexture("interface/buttons/ui-common-mousehilight.blp");
	miyijiluF.nr.Scroll.ScrollToBottomButton:SetPushedTexture("interface/chatframe/ui-chaticon-scrollend-down.blp")
	miyijiluF.nr.Scroll.ScrollToBottomButton:SetSize(anniudaxiaoF,anniudaxiaoF);
	miyijiluF.nr.Scroll.ScrollToBottomButton:SetPoint("BOTTOMRIGHT",miyijiluF.nr.Scroll,"BOTTOMRIGHT",0,4);
	miyijiluF.nr.Scroll.ScrollToBottomButton.hilight = miyijiluF.nr.Scroll.ScrollToBottomButton:CreateTexture(nil,"OVERLAY");
	miyijiluF.nr.Scroll.ScrollToBottomButton.hilight:SetTexture("interface/chatframe/ui-chaticon-blinkhilight.blp");
	miyijiluF.nr.Scroll.ScrollToBottomButton.hilight:SetSize(anniudaxiaoF,anniudaxiaoF);
	miyijiluF.nr.Scroll.ScrollToBottomButton.hilight:SetPoint("CENTER", 0, 0);
	miyijiluF.nr.Scroll.ScrollToBottomButton.hilight:Hide();
	miyijiluF.nr.Scroll.ScrollToBottomButton:SetScript("OnEnter",  function(self)
		miyijiluF.nr:Show();
		miyijiluF.zhengzaixianshi = nil;
	end)
	miyijiluF.nr.Scroll.ScrollToBottomButton:SetScript("OnLeave",  function(self)
		miyijiluF.xiaoshidaojishi = 0.2;
		miyijiluF.zhengzaixianshi = true;
	end)
	miyijiluF.nr.Scroll.ScrollToBottomButton:SetScript("OnClick", function (self)
		miyijiluF.nr.Scroll:ScrollToBottom()
		self.hilight:Hide();
	end);
	---================================
	local fuWidth = fuFrame.Width
	local Width,Height = fuWidth,fuWidth
	local ziframe = {fuFrame:GetChildren()}
	if PIGA["Chat"]["QuickChat_style"]==1 then
		fuFrame.ChatJilu = CreateFrame("Button",nil,fuFrame, "TruncatedButtonTemplate"); 
	elseif PIGA["Chat"]["QuickChat_style"]==2 then
		fuFrame.ChatJilu = CreateFrame("Button",nil,fuFrame, "UIMenuButtonStretchTemplate"); 
	end
	fuFrame.ChatJilu:SetSize(Width,Height);
	fuFrame.ChatJilu:SetFrameStrata("LOW")
	fuFrame.ChatJilu:SetPoint("LEFT",fuFrame,"LEFT",#ziframe*Width,0);
	fuFrame.ChatJilu.Tex = fuFrame.ChatJilu:CreateTexture(nil, "BORDER");
	fuFrame.ChatJilu.Tex:SetTexture("interface/chatframe/ui-chatwhispericon.blp");
	fuFrame.ChatJilu.Tex:SetPoint("CENTER",0,0);
	fuFrame.ChatJilu.Tex:SetSize(Width-6,Height-4);
	fuFrame.ChatJilu:SetScript("OnEnter", function (self)	
		GameTooltip:ClearLines();
		GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT",0,0);
		GameTooltip:SetText("|cff00FFff左键-|r|cffFFFF00私聊记录\n|cff00FFff右键-|r|cffFFFF00队伍团队记录|r");
		GameTooltip:Show();
		GameTooltip:FadeOut()
	end);
	fuFrame.ChatJilu:SetScript("OnLeave", function (self)
		GameTooltip:ClearLines();
		GameTooltip:Hide() 
	end);
	fuFrame.ChatJilu:SetScript("OnMouseDown", function (self)
		self.Tex:SetPoint("CENTER",1,-1);
	end);
	fuFrame.ChatJilu:SetScript("OnMouseUp", function (self)
		self.Tex:SetPoint("CENTER",0,0);
	end);
	fuFrame.ChatJilu:RegisterForClicks("LeftButtonUp","RightButtonUp")
	fuFrame.ChatJilu:SetScript("OnClick", function(self, event)
		if event=="LeftButton" then
			ChatjiluMianban:Hide()
			if miyijiluF_UI:IsShown() then
				miyijiluF_UI:Hide()
			else
				youNEWxiaoxinlai=false;
				miyijiluF_UI:Show()
				gengxinhang(miyijiluF_UI.F.Scroll)
			end
		else
			miyijiluF_UI:Hide()
			if ChatjiluMianban:IsShown() then
				ChatjiluMianban:Hide()
			else
				ChatjiluMianban:SetFrameLevel(70)
				ChatjiluMianban:Show()	
			end
		end
	end);
end