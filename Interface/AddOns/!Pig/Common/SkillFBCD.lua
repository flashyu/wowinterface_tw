local _, addonTable = ...;
local _, _, _, tocversion = GetBuildInfo()
--
local Create = addonTable.Create
local PIGFrame=Create.PIGFrame
local PIGLine=Create.PIGLine
local PIGButton = Create.PIGButton
local PIGModbutton=Create.PIGModbutton
local PIGModCheckbutton=Create.PIGModCheckbutton
local PIGQuickBut=Create.PIGQuickBut
local PIGFontString=Create.PIGFontString
local PIGCloseBut=Create.PIGCloseBut
--
local GetContainerNumSlots = C_Container and C_Container.GetContainerNumSlots or GetContainerNumSlots
local GetContainerItemID = C_Container and C_Container.GetContainerItemID or GetContainerItemID
local GetContainerItemCooldown = C_Container and C_Container.GetContainerItemCooldown or GetContainerItemCooldown

local CommonFun=addonTable.CommonFun
--=================================
local GnName,GnUI,GnIcon,FrameLevel = "专业/副本CD","SkillFBCD_UI",133735,10
local GnTooltip = "点击-|cff00FFFF打开"..GnName.."监控|r"
--------------
local PIG_renwuming
local Pig_SkillID={}
local Pig_ItemID={}
local zhuanyeIcon={136249,136240,134071,237171}--裁缝/炼金/珠宝加工/铭文
if tocversion<20000 then
	zhuanyejinengshuaxinshijian="TRADE_SKILL_UPDATE"
	Pig_SkillID={
		{18560,zhuanyeIcon[1],"spell"},{11480,zhuanyeIcon[2],"spell"},{11479,zhuanyeIcon[2],"spell"},{17187,zhuanyeIcon[2],"spell"},{17559,zhuanyeIcon[2],"spell"},{17560,zhuanyeIcon[2],"spell"},{17561,zhuanyeIcon[2],"spell"},
		{17562,zhuanyeIcon[2],"spell"},{17563,zhuanyeIcon[2],"spell"},{17564,zhuanyeIcon[2],"spell"},{17565,zhuanyeIcon[2],"spell"},{17566,zhuanyeIcon[2],"spell"},{25146,zhuanyeIcon[2],"spell"},
	};
	Pig_ItemID={
		{19566,132836,15846},{13399,133651,11020},{21935,135863,17716},{26265,134249,21540},
	};
elseif tocversion<30000 then
	zhuanyejinengshuaxinshijian="TRADE_SKILL_UPDATE"
	Pig_SkillID={
		--裁缝
		{26751,zhuanyeIcon[1],"spell"},
		{31373,zhuanyeIcon[1],"spell"},
		{36686,zhuanyeIcon[1],"spell"},
		--炼金
		{32766,zhuanyeIcon[2],"spell"},
		{32765,zhuanyeIcon[2],"spell"},
		{29688,zhuanyeIcon[2],"spell"},
		{28566,zhuanyeIcon[2],"spell"},
		{28567,zhuanyeIcon[2],"spell"},
		{28568,zhuanyeIcon[2],"spell"},
		{28569,zhuanyeIcon[2],"spell"},
		{28580,zhuanyeIcon[2],"spell"},
		{28581,zhuanyeIcon[2],"spell"},
		{28582,zhuanyeIcon[2],"spell"},
		{28583,zhuanyeIcon[2],"spell"},
		{28584,zhuanyeIcon[2],"spell"},
		{28585,zhuanyeIcon[2],"spell"},
		--珠宝加工
		{47280,zhuanyeIcon[3],"spell"},
	};
	Pig_ItemID={
		--筛盐器
		{19566,132836,15846},
	};
elseif tocversion<40000 then
	zhuanyejinengshuaxinshijian="TRADE_SKILL_UPDATE"
	Pig_SkillID={
		--裁缝
		{56005,zhuanyeIcon[1],"spell"},
		--炼金
		{60893,zhuanyeIcon[2],"spell"},
		{66663,zhuanyeIcon[2],"spell"},
		{66662,zhuanyeIcon[2],"spell"},
		{66658,zhuanyeIcon[2],"spell"},
		{66664,zhuanyeIcon[2],"spell"},
		--珠宝加工
		{47280,zhuanyeIcon[3],"spell"},
		{62242,zhuanyeIcon[3],"spell"},
		--铭文
		{61177,zhuanyeIcon[4],"spell"},
	};
	Pig_ItemID={
		--筛盐器
		{19566,132836,15846},
	};
else
	zhuanyejinengshuaxinshijian="TRADE_SKILL_LIST_UPDATE"
	Pig_SkillID={

	};
	Pig_ItemID={
		
	};
end
--格式化时间
local function disp_time(time)
	local days = floor(time/86400)
	local hours = floor(mod(time, 86400)/3600)
	local minutes = math.ceil(mod(time,3600)/60)
	if time>86400 then
		return format("|c00FF0000%d天%d时%d分|r",days,hours,minutes)
	elseif time<86400 and time>3600 then
		return format("|c00FFA500%d时%d分|r",hours,minutes)
	elseif time<3600 and time>60 then
		return format("|c00FFFF40%d分|r",minutes)
	end
end
--获取当前所学专业数据
local function huoqu_Skill()
	local className, classFilename = UnitClass("player");
	local rPerc, gPerc, bPerc, argbHex = GetClassColor(classFilename);
	local renwuxinxi={PIG_renwuming,{rPerc, gPerc, bPerc},"juese"};
	----
	local yixueSkill={};
	for i=1,#Pig_SkillID do
		if IsPlayerSpell(Pig_SkillID[i][1]) then---学会
			local jinengxinxi = {Pig_SkillID[i][1],Pig_SkillID[i][2],Pig_SkillID[i][3]}
			table.insert(yixueSkill,jinengxinxi)
		end
	end
	for Bagid=0,4,1 do
		local numberOfSlots = GetContainerNumSlots(Bagid);
		for i=1,numberOfSlots,1 do
			for ii=1,#Pig_ItemID,1 do
				if GetContainerItemID(Bagid, i)==Pig_ItemID[ii][3] then--有物品
					local Itemxinxi={Pig_ItemID[ii][1],Pig_ItemID[ii][2],Pig_ItemID[ii][3]};
					table.insert(yixueSkill,Itemxinxi)
				end
			end
		end
	end
	-----
	local shujuyaun = PIGA["SkillFBCD"]["SkillCD"]
	for i=1,#shujuyaun,1 do
		if shujuyaun[i][1][1]==PIG_renwuming then
			return
		end
	end
	local Skillinfo={renwuxinxi,yixueSkill};
	table.insert(shujuyaun,Skillinfo)
end
----
local hang_Height,hang_NUM  = 20, 18;
local function gengxin_Skill(self)
	if not _G[GnUI]:IsShown() then return end
	for x = 1, hang_NUM do
		_G["SK_list_"..x]:Hide();
    end
   	local ItemsSpell={};
   	local shujuyaun = PIGA["SkillFBCD"]["SkillCD"]
   	for i=1,#shujuyaun,1 do
   		local renwu={shujuyaun[i][1][1],shujuyaun[i][1][3],shujuyaun[i][1][2]}
   		table.insert(ItemsSpell,renwu)
   		for ii=1,#shujuyaun[i][2] do
			table.insert(ItemsSpell,shujuyaun[i][2][ii])
		end
   	end
   	local ItemsNum = #ItemsSpell;
	if ItemsNum>0 then
	    FauxScrollFrame_Update(self, ItemsNum, hang_NUM, hang_Height);
	    local offset = FauxScrollFrame_GetOffset(self);
	    for x = 1, hang_NUM do
			local dangqian = x+offset;
			if ItemsSpell[dangqian] then
				local fujik = _G["SK_list_"..x]
				fujik:Show();
				if ItemsSpell[dangqian][2]=="juese" then
					fujik.del:Show();
					fujik.del:SetID(dangqian);
					fujik.del:SetWidth(hang_Height);
					fujik.Tex:SetWidth(0.02);		
					fujik.name:SetText(ItemsSpell[dangqian][1]);
					fujik.name:SetTextColor(ItemsSpell[dangqian][3][1], ItemsSpell[dangqian][3][2], ItemsSpell[dangqian][3][3], 1);
					fujik.time:SetText();
				else
					fujik.del:Hide();
					fujik.del:SetWidth(hang_Height+10);
					fujik.Tex:SetWidth(hang_Height);
					fujik.name:SetTextColor(1, 1, 1, 1);
					if ItemsSpell[dangqian][3]=="spell" then
						fujik.Tex:SetTexture(ItemsSpell[dangqian][2]);
						local Name= GetSpellInfo(ItemsSpell[dangqian][1])
						fujik.name:SetText(Name);
						fujik:SetScript("OnEnter", function (self)
							GameTooltip:ClearLines();
							GameTooltip:SetOwner(self, "ANCHOR_CURSOR");
							GameTooltip:SetHyperlink("spell:"..ItemsSpell[dangqian][1])
						end);
						fujik:SetScript("OnLeave", function ()
							GameTooltip:ClearLines();
							GameTooltip:Hide() 
						end);
					else
						fujik.Tex:SetTexture(ItemsSpell[dangqian][2]);
						local Name= GetItemInfo(ItemsSpell[dangqian][3])
						fujik.name:SetText(Name);
						fujik:SetScript("OnEnter", function (self)
							GameTooltip:ClearLines();
							GameTooltip:SetOwner(self, "ANCHOR_CURSOR");
							GameTooltip:SetHyperlink("item:"..ItemsSpell[dangqian][3])
						end);
						fujik:SetScript("OnLeave", function ()
							GameTooltip:ClearLines();
							GameTooltip:Hide() 
						end);
					end
					if ItemsSpell[dangqian][5] then
						if ItemsSpell[dangqian][5]==0 then
							fujik.time:SetText("|cFF00FF00 已就绪！|r");
						else
							local sitng=ItemsSpell[dangqian][4]+ItemsSpell[dangqian][5]-GetTime();
							if sitng>0 then
								fujik.time:SetText(" "..xisp_time(sitng));
							else
								fujik.time:SetText("|cFF00FF00 已就绪！|r");
							end
						end
					else
						fujik.time:SetText("|cFFff0000 未知|r");
					end
				end
			end
		end
	end
end

--获取副本CD===============================
local function huoqu_Fuben()
	local className, classFilename = UnitClass("player");
	local rPerc, gPerc, bPerc, argbHex = GetClassColor(classFilename);
	local renwuxinxi={PIG_renwuming,{rPerc, gPerc, bPerc},"juese"};
	local fubenCDinfo={};
	local numInstances = GetNumSavedInstances();
	if numInstances>0 then
		for id = 1, numInstances, 1 do				
			local name, id, reset, difficulty, locked, extended, instanceIDMostSig, isRaid, maxPlayers, difficultyName, numEncounters, encounterProgress = GetSavedInstanceInfo(id)
			table.insert(fubenCDinfo,{name.."\124cff66FF11["..difficultyName.."]\124r",GetTime(),reset})
		end
	end
	fubenCDinfo.cunzaiYN = true
	local shujuyaun = PIGA["SkillFBCD"]["FubenCD"]
	for id=1,#shujuyaun,1 do
		if shujuyaun[id][1][1]==PIG_renwuming then
			shujuyaun[id][2]=fubenCDinfo;
			fubenCDinfo.cunzaiYN = false
			break
		end
	end
	if fubenCDinfo.cunzaiYN then
		local info={renwuxinxi,fubenCDinfo};
		table.insert(shujuyaun,info)
	end
end
----
local function gengxin_Fuben(self)
	if not _G[GnUI]:IsShown() then return end
	for id = 1, hang_NUM, 1 do
		_G["fubenCD_list_"..id]:Hide();
	end
   	local cdmulu={};
   	local shujuyaun = PIGA["SkillFBCD"]["FubenCD"]
   	for i=1,#shujuyaun,1 do
   		local renwu={shujuyaun[i][1][1],shujuyaun[i][1][3],shujuyaun[i][1][2]}
   		table.insert(cdmulu,renwu)
   		for ii=1,#shujuyaun[i][2] do
			table.insert(cdmulu,shujuyaun[i][2][ii])
		end
   	end
	local ItemsNum = #cdmulu;
	if ItemsNum>0 then
	    FauxScrollFrame_Update(self, ItemsNum, hang_NUM, hang_Height);
	    local offset = FauxScrollFrame_GetOffset(self);
	    for id = 1, hang_NUM do
			local dangqian = id+offset;
			if cdmulu[dangqian] then
				local fujik = _G["fubenCD_list_"..id]
				fujik:Show();
				if cdmulu[dangqian][2]=="juese" then
					fujik.del:Show();
					fujik.del:SetWidth(hang_Height);
					fujik.name:SetText(cdmulu[dangqian][1]);
					fujik.name:SetTextColor(cdmulu[dangqian][3][1], cdmulu[dangqian][3][2], cdmulu[dangqian][3][3], 1);
				else
					fujik.del:Hide();
					fujik.del:SetWidth(hang_Height+10);
					fujik.name:SetTextColor(1, 1, 1, 1);
					local shengyu=cdmulu[dangqian][2]+cdmulu[dangqian][3]-GetTime();
					if shengyu>0 then
						local txt=cdmulu[dangqian][1].." "..disp_time(shengyu)
						fujik.name:SetText(txt);
					else
						local txt=cdmulu[dangqian][1].."|cFF00FF00 新CD！|r";
						fujik.name:SetText(txt);
					end
				end
			end
		end
	end
end
--创建监控面板===================================================
local function Add_Skill_CD()
	if not PIGA["SkillFBCD"]["Open"] then return end
	if _G[GnUI] then return end
	local wanjia, realm = UnitFullName("player")
	local realm=realm or GetRealmName()
	PIG_renwuming = wanjia.."-"..realm
	local ModBut = PIGModbutton(GnName,GnIcon,GnUI,FrameLevel,1)
	--显示框架
	local Width,Height = 650,460;
	local zhuanyeCD=PIGFrame(UIParent,{"CENTER",UIParent,"CENTER",0,60},{Width,Height},GnUI,true)
	zhuanyeCD:PIGSetBackdrop()
	zhuanyeCD:PIGClose()
	zhuanyeCD:PIGSetMovable()
	zhuanyeCD.title = PIGFontString(zhuanyeCD,{"TOP", zhuanyeCD, "TOP", 0, -3},"专业技能/副本CD监控")
	PIGLine(zhuanyeCD,"TOP",-21)
	---重置配置
	zhuanyeCD.chongzhizhushouBUT = PIGButton(zhuanyeCD,{"RIGHT",zhuanyeCD.Close,"LEFT",-20,0},{50,18},"重置");  
	zhuanyeCD.chongzhizhushouBUT:SetScript("OnClick", function ()
		StaticPopup_Show ("HUIFU_ZHUANYEFUBENCD");
	end);
	StaticPopupDialogs["HUIFU_ZHUANYEFUBENCD"] = {
		text = "\124cffff0000重置\124r专业和副本所有CD记录吗?",
		button1 = "确定",
		button2 = "取消",
		OnAccept = function()
			PIGA["SkillFBCD"]["SkillCD"]={}
			PIGA["SkillFBCD"]["FubenCD"]={}
			PIGA["SkillFBCD"]["Open"]=true;
			ReloadUI()
		end,
		timeout = 0,
		whileDead = true,
		hideOnEscape = true,
	}
	-------------------
	--下方提示
	zhuanyeCD.tishi = PIGFontString(zhuanyeCD,{"BOTTOM",zhuanyeCD,"BOTTOM",26,12},"\124cff00ff00第一次使用时请打开专业面板获取一次CD！\124r","OUTLINE",13)
	zhuanyeCD.tishiTex = zhuanyeCD:CreateTexture(nil, "ARTWORK");
	zhuanyeCD.tishiTex:SetTexture("interface/common/help-i.blp");
	zhuanyeCD.tishiTex:SetPoint("RIGHT", zhuanyeCD.tishi, "LEFT", 0, 0);
	zhuanyeCD.tishiTex:SetSize(26,26);

	---专业CD列表
	zhuanyeCD.SkillCD=PIGFrame(zhuanyeCD,{"TOPLEFT", zhuanyeCD, "TOPLEFT", 4, -40},{(Width-16)/2,Height-70})
	zhuanyeCD.SkillCD:PIGSetBackdrop()
	zhuanyeCD.SkillCD.titleL = PIGFontString(zhuanyeCD.SkillCD,{"BOTTOM", zhuanyeCD.SkillCD, "TOP", 0, 2},"正在冷却中的专业技能")
	------------------
	zhuanyeCD.SkillCD.Scroll = CreateFrame("ScrollFrame",nil,zhuanyeCD.SkillCD, "FauxScrollFrameTemplate");  
	zhuanyeCD.SkillCD.Scroll:SetPoint("TOPLEFT",zhuanyeCD.SkillCD,"TOPLEFT",4,-4);
	zhuanyeCD.SkillCD.Scroll:SetPoint("BOTTOMRIGHT",zhuanyeCD.SkillCD,"BOTTOMRIGHT",-24,2);
	zhuanyeCD.SkillCD.Scroll:SetScript("OnVerticalScroll", function(self, offset)
	    FauxScrollFrame_OnVerticalScroll(self, offset, hang_Height, gengxin_Skill)
	end)
	for id = 1, hang_NUM, 1 do
		local SK_list = CreateFrame("Frame", "SK_list_"..id, zhuanyeCD.SkillCD.Scroll:GetParent());
		SK_list:SetSize(zhuanyeCD.SkillCD:GetWidth()-18,hang_Height);
		if id==1 then
			SK_list:SetPoint("TOPLEFT", zhuanyeCD.SkillCD.Scroll, "TOPLEFT", 0, -1);
		else
			SK_list:SetPoint("TOPLEFT", _G["SK_list_"..(id-1)], "BOTTOMLEFT", 0, -1);
		end
		SK_list.del=PIGCloseBut(SK_list,{"LEFT", SK_list, "LEFT", 0,0},{hang_Height,hang_Height})
		SK_list.del:SetScript("OnClick", function (self)
			local wanjianame = self:GetParent().name:GetText()
			local shujuyuan = PIGA["SkillFBCD"]["SkillCD"]
			for i=1,#shujuyuan,1 do
				if shujuyuan[i][1][1]==wanjianame then
					table.remove(shujuyuan,i);
					gengxin_Skill(zhuanyeCD.SkillCD.Scroll);
					break
				end
			end
		end);
		SK_list.Tex = SK_list:CreateTexture(nil, "BORDER");
		SK_list.Tex:SetSize(hang_Height,hang_Height);
		SK_list.Tex:SetPoint("LEFT", SK_list.del, "RIGHT", 0, 0);			
		SK_list.name = PIGFontString(SK_list,{"LEFT", SK_list.Tex, "RIGHT", 0, 0})
		SK_list.name:SetTextColor(1, 1, 1);
		SK_list.time = PIGFontString(SK_list,{"LEFT", SK_list.name, "RIGHT", 0, 0})
	end
	--副本CD列表===================================================
	zhuanyeCD.fubenCD=PIGFrame(zhuanyeCD,{"TOPRIGHT", zhuanyeCD, "TOPRIGHT", -4, -40},{(Width-16)/2,Height-70})
	zhuanyeCD.fubenCD:PIGSetBackdrop()
	zhuanyeCD.fubenCD.titleR = PIGFontString(zhuanyeCD.fubenCD,{"BOTTOM", zhuanyeCD.fubenCD, "TOP", 0, 2},"正在冷却中的副本")
	------
	zhuanyeCD.fubenCD.Scroll = CreateFrame("ScrollFrame",nil,zhuanyeCD.fubenCD, "FauxScrollFrameTemplate");  
	zhuanyeCD.fubenCD.Scroll:SetPoint("TOPLEFT",zhuanyeCD.fubenCD,"TOPLEFT",4,-4);
	zhuanyeCD.fubenCD.Scroll:SetPoint("BOTTOMRIGHT",zhuanyeCD.fubenCD,"BOTTOMRIGHT",-24,2);
	zhuanyeCD.fubenCD.Scroll:SetScript("OnVerticalScroll", function(self, offset)
	    FauxScrollFrame_OnVerticalScroll(self, offset, hang_Height, gengxin_Fuben)
	end)
	for id = 1, hang_NUM, 1 do
		local fubenCD_list = CreateFrame("Frame", "fubenCD_list_"..id, zhuanyeCD.fubenCD.Scroll:GetParent());
		fubenCD_list:SetSize(zhuanyeCD.fubenCD:GetWidth()-18,hang_Height);
		if id==1 then
			fubenCD_list:SetPoint("TOPLEFT", zhuanyeCD.fubenCD.Scroll, "TOPLEFT", 0, 0);
		else
			fubenCD_list:SetPoint("TOPLEFT", _G["fubenCD_list_"..id-1], "BOTTOMLEFT", 0, -1);
		end
		fubenCD_list.del=PIGCloseBut(fubenCD_list,{"LEFT", fubenCD_list, "LEFT", 0,0},{hang_Height,hang_Height})
		fubenCD_list.del:SetScript("OnClick", function (self)
			local wanjianame = self:GetParent().name:GetText()
			local shujuyuan = PIGA["SkillFBCD"]["FubenCD"]
			for i=1,#shujuyuan,1 do
				if shujuyuan[i][1][1]==wanjianame then
					table.remove(shujuyuan,i);
					gengxin_Fuben(zhuanyeCD.fubenCD.Scroll);
					break
				end
			end
		end);
		fubenCD_list.name = PIGFontString(fubenCD_list,{"LEFT", fubenCD_list.del, "RIGHT", 0, 0})
		fubenCD_list.name:SetTextColor(1, 1, 1);
	end
	---更新专业CD
	local function zhixingdakaigengxin()
		local shujuyuan = PIGA["SkillFBCD"]["SkillCD"]
		for x=1,#shujuyuan,1 do
			if shujuyuan[x][1][1]==PIG_renwuming then
				for xx=1,#shujuyuan[x][2] do
					local chazhaoName= GetSpellInfo(shujuyuan[x][2][xx][1])
					for j=1,GetNumTradeSkills() do
						local Skillname= GetTradeSkillInfo(j);
						if Skillname==chazhaoName then
							local cd = GetTradeSkillCooldown(j);
							if cd then
								shujuyuan[x][2][xx][4]=GetTime()
								shujuyuan[x][2][xx][5]=cd
							else
								shujuyuan[x][2][xx][4]=0
								shujuyuan[x][2][xx][5]=0
							end
							break
						end
					end
				end
				break
			end
		end
	end
	--注册CD监测事件
	zhuanyeCD:RegisterUnitEvent("UNIT_SPELLCAST_SUCCEEDED","player");              
	zhuanyeCD:RegisterEvent("UPDATE_INSTANCE_INFO");
	zhuanyeCD:RegisterEvent(zhuanyejinengshuaxinshijian)
	zhuanyeCD:SetScript("OnEvent", function(self,event,arg1,_,arg3)
		if event==zhuanyejinengshuaxinshijian then
			zhixingdakaigengxin()
		end
		if event=="UNIT_SPELLCAST_SUCCEEDED" then
			for s=1,#Pig_SkillID,1 do
				if arg3==Pig_SkillID[s][1] then
					local shujuyuan = PIGA["SkillFBCD"]["SkillCD"]
					for k=1,#shujuyuan,1 do
						if shujuyuan[k][1][1]==PIG_renwuming then
							for kk=1,#shujuyuan[k][2],1 do
								if shujuyuan[k][2][kk][1]==arg3 then
									local function gengxinSPCD1()
										local start, duration = GetSpellCooldown(arg3);
										shujuyuan[k][2][kk][4] =start;
										shujuyuan[k][2][kk][5] =duration;
										gengxin_Skill(zhuanyeCD.SkillCD.Scroll);
										return
									end
									C_Timer.After(1, gengxinSPCD1);
									return						
								end
							end
							return
						end
					end
					return		
				end
			end
			---
			for i=1,#Pig_ItemID,1 do
				if arg3==Pig_ItemID[i][1] then
					local shujuyuan = PIGA["SkillFBCD"]["SkillCD"]
					for k=1,#shujuyuan,1 do
						if shujuyuan[k][1][1]==PIG_renwuming then
							for kk=1,#shujuyuan[k][2],1 do
								if shujuyuan[k][2][kk][1]==arg3 then
									local function gengxinSPCD3()
											for Bagid=0,4,1 do
												local numberOfSlots = GetContainerNumSlots(Bagid);
												for sol=1,numberOfSlots,1 do
													if GetContainerItemID(Bagid, sol)==Pig_ItemID[i][3] then
														local startTime, duration = GetContainerItemCooldown(Bagid, sol)
														shujuyuan[k][2][kk][4] =startTime;
														shujuyuan[k][2][kk][5] =duration;
														gengxin_Skill(zhuanyeCD.SkillCD.Scroll);
														return
													end
												end
											end
									end
									C_Timer.After(1, gengxinSPCD3);
									return
								end
							end
							return
						end
					end
					return
				end
			end
		end
		if event=="UPDATE_INSTANCE_INFO" then
			huoqu_Fuben()
			gengxin_Fuben(zhuanyeCD.fubenCD.Scroll);
		end
	end)
	--点击后显示/隐藏
	zhuanyeCD:HookScript("OnShow", function ()
		RequestRaidInfo()
		huoqu_Skill()
		gengxin_Skill(zhuanyeCD.SkillCD.Scroll);
	end)
end
--===============================
CommonFun.SkillFBCD = function()
	if PIGA["SkillFBCD"]["Open"] then
		Add_Skill_CD()
		C_Timer.After(6, huoqu_Skill)
	end
end
---
local Tooltip = "创建一个监控所有角色"..GnName.."界面！";
local Checkbut = PIGModCheckbutton(CommonFun.CommonF,{GnName,Tooltip},{"TOP",CommonFun.CommonF,"TOP",0,-100})
Checkbut:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["SkillFBCD"]["Open"]=true;
		CommonFun.SkillFBCD()
		huoqu_Skill()
	else
		PIGA["SkillFBCD"]["Open"]=false;
		Pig_Options_RLtishi_UI:Show()
	end
	QuickButUI.SkillFBCD()
end);

function QuickButUI.SkillFBCD()	
	if PIGA["QuickBut"]["Open"] and PIGA["SkillFBCD"]["Open"] and PIGA["SkillFBCD"]["AddBut"] then
		local QkButUI = "QkBut_Skill"
		if _G[QkButUI] then return end	
		local QkBut=PIGQuickBut(QkButUI,GnTooltip,GnIcon,GnUI,FrameLevel)
		--提示图标
		local function xianshitishi()
			if not InCombatLockdown() then
				local youlengquewancCD=false;
				local shujuyaun = PIGA["SkillFBCD"]["SkillCD"]
				for i=1,#shujuyaun,1 do
					if #shujuyaun[i][2]>0 then
						for ii=1,#shujuyaun[i][2],1 do
							if shujuyaun[i][2][ii][5] then
								if shujuyaun[i][2][ii][5]~=0 then
									local sitng=shujuyaun[i][2][ii][4]+shujuyaun[i][2][ii][5]-GetTime();
									if sitng<=0 then
										youlengquewancCD=true;
										break
									end
								else
									youlengquewancCD=true;
									break
								end
							end
						end
					end
				end
				if youlengquewancCD then 
					QkBut.Height:Show(); 
				else
					QkBut.Height:Hide();
				end
			end
			C_Timer.After(10,xianshitishi);
		end
		C_Timer.After(10,xianshitishi);
	end
end
Checkbut.QKBut:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["SkillFBCD"]["AddBut"]=true
		QuickButUI.SkillFBCD()
	else
		PIGA["SkillFBCD"]["AddBut"]=false
		Pig_Options_RLtishi_UI:Show();
	end
end);
Checkbut:HookScript("OnShow", function (self)
	self:SetChecked(PIGA["SkillFBCD"]["Open"])
	self.QKBut:SetChecked(PIGA["SkillFBCD"]["AddBut"])
end);