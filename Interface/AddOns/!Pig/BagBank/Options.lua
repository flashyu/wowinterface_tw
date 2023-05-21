local addonName, addonTable = ...;
local L=addonTable.locale
local _, _, _, tocversion = GetBuildInfo()
---
local Create=addonTable.Create
local PIGFrame=Create.PIGFrame
local PIGButton=Create.PIGButton
local PIGDownMenu=Create.PIGDownMenu
local PIGLine=Create.PIGLine
local PIGSlider = Create.PIGSlider
local PIGCheckbutton=Create.PIGCheckbutton
local PIGCheckbutton_R=Create.PIGCheckbutton_R
local PIGOptionsList=Create.PIGOptionsList
local PIGFontString=Create.PIGFontString
---
local BagBankfun={}
addonTable.BagBankfun=BagBankfun
local GetInsertItemsLeftToRight=C_Container and C_Container.GetInsertItemsLeftToRight or GetInsertItemsLeftToRight
local GetSortBagsRightToLeft=C_Container and C_Container.GetSortBagsRightToLeft or GetSortBagsRightToLeft
local SetInsertItemsLeftToRight=C_Container and C_Container.SetInsertItemsLeftToRight or SetInsertItemsLeftToRight
local BagBankF,BagBankFTabBut = PIGOptionsList(L["BAGBANK_TABNAME"],"TOP")
----------
BagBankF.Zhenghe = PIGCheckbutton_R(BagBankF,{"启用背包/银行整合","整合背包/银行包裹到一个界面"})
BagBankF.Zhenghe:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIG["BagBank"]["Zhenghe"]=true
		BagBankF.SetListF:Show()
		BagBankfun.Zhenghe()		
	else
		PIG["BagBank"]["Zhenghe"]=false
		BagBankF.SetListF:Hide()
		Pig_Options_RLtishi_UI:Show()
	end	
end);
--背包剩余-------------
local function gengxinbeibaoshengyugeshu()
	if MainMenuBarBackpackButton.freeSlots<10 then
		MainMenuBarBackpackButton.Count:SetTextColor(1, 0, 0, 1);
	else
		MainMenuBarBackpackButton.Count:SetTextColor(0, 1, 0, 1);
	end
end
local function BagKongyu()
	if PIG["BagBank"]["BagKongyu"] then
		SetCVar("displayFreeBagSlots", "1")
		MainMenuBarBackpackButton.Count:Show()
		MainMenuBarBackpackButton.Count:SetTextScale(18/14);
		gengxinbeibaoshengyugeshu()
	else
		SetCVar("displayFreeBagSlots", "0")
		MainMenuBarBackpackButton.Count:Hide()
	end
end
----
MainMenuBarBackpackButton:HookScript("OnEvent", function(self,event,arg1)
	if PIG["BagBank"]["BagKongyu"] then
		if event=="PLAYER_ENTERING_WORLD" then
			BagKongyu()
		end
		if event=="BAG_UPDATE" then
			gengxinbeibaoshengyugeshu()
		end
	end
end)
BagBankF.BagKongyu = PIGCheckbutton_R(BagBankF,{"显示背包剩余空间","在行囊显示背包剩余空间(大于等于10显示绿色,小于10显示红色)"})
BagBankF.BagKongyu:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIG["BagBank"]["BagKongyu"]=true;			
	else
		PIG["BagBank"]["BagKongyu"]=false;
	end
	BagKongyu()
end)
--
BagBankF.SetListline = PIGLine(BagBankF,"TOP",-66)
BagBankF.SetListF = PIGFrame(BagBankF)
BagBankF.SetListF:SetPoint("TOPLEFT",BagBankF.SetListline,"BOTTOMLEFT",0,0);
BagBankF.SetListF:SetPoint("BOTTOMRIGHT",BagBankF,"BOTTOMRIGHT",0,30);

local BAG_SetList = {
	{"交易时打开背包","jiaoyiOpen",false},
	{"拍卖时打开背包","AHOpen",false},
	{"显示装备等级","wupinLV",true},
	{"根据品质染色装备边框","wupinRanse",true},
	{"鼠标提示其他角色数量","qitashulaing",false},
	{"鼠标提示其他角色金币","qitajinbi",true},
	{"垃圾物品提示","JunkShow",true},
	{"战利品放入左边包",GetInsertItemsLeftToRight(),false},	
}
if tocversion<50000 then
	table.insert(BAG_SetList,{"反向整理","SortBag_Config",false})
else
	table.insert(BAG_SetList,{"反向整理",GetSortBagsRightToLeft(),false})
end

for i=1,#BAG_SetList do
	local tishi = BAG_SetList[i][4] or BAG_SetList[i][1]
	local BagBankSet = PIGCheckbutton_R(BagBankF.SetListF,{BAG_SetList[i][1],tishi},nil,nil,nil,nil,"BAG_SetList"..i)
	BagBankSet:SetScript("OnClick", function (self)
		if self:GetChecked() then
			if BAG_SetList[i][1]=="反向整理" then
				if tocversion<50000 then
					PIG["BagBank"]["SortBag_Config"]=false
				else
					SetSortBagsRightToLeft(false)
				end
			elseif BAG_SetList[i][1]=="战利品放入左边包" then
				SetInsertItemsLeftToRight(true)
			else
				PIG["BagBank"][BAG_SetList[i][2]]=true
				CloseAllBags()OpenAllBags()
			end		
		else
			if BAG_SetList[i][1]=="反向整理" then
				if tocversion<50000 then
					PIG["BagBank"]["SortBag_Config"]=true
				else
					SetSortBagsRightToLeft(true)
				end
			elseif BAG_SetList[i][1]=="战利品放入左边包" then
				SetInsertItemsLeftToRight(false)
			else
				PIG["BagBank"][BAG_SetList[i][2]]=false
			end
			if BAG_SetList[i][3] then
				Pig_Options_RLtishi_UI:Show()
			end
		end
	end)
end
--每行格数
if tocversion>100000 then
	function ContainerFrameCombinedBags:GetColumns()
		if self:IsCombinedBagContainer() then
			return PIG["BagBank"]["BAGmeihangshu_retail"]
		else
			return 4;
		end
	end
end
BagBankF.SetListF.hangNUMTXT = PIGFontString(BagBankF.SetListF,{"TOPLEFT",BagBankF.SetListF,"TOPLEFT",20,-250},"背包每行格数")
local BagmeihangN = {8,10,12,14,16};
BagBankF.SetListF.hangNUM=PIGDownMenu(BagBankF.SetListF,{"LEFT",BagBankF.SetListF.hangNUMTXT,"RIGHT",4,0},{70,nil})
function BagBankF.SetListF.hangNUM:PIGDownMenu_Update_But(self)
	local info = {}
	info.func = self.PIGDownMenu_SetValue
	for i=1,#BagmeihangN,1 do
	    info.text, info.arg1 = BagmeihangN[i], BagmeihangN[i]
	    if tocversion<100000 then
	   		info.checked = BagmeihangN[i]==PIG["BagBank"]["BAGmeihangshu"]
	   	else
			info.checked = BagmeihangN[i]==PIG["BagBank"]["BAGmeihangshu_retail"]
	   	end
		BagBankF.SetListF.hangNUM:PIGDownMenu_AddButton(info)
	end 
end
function BagBankF.SetListF.hangNUM:PIGDownMenu_SetValue(value,arg1,arg2)
	BagBankF.SetListF.hangNUM:PIGDownMenu_SetText(value)
	if tocversion<100000 then
		BAGheji_UI.meihang=arg1
		PIG["BagBank"]["BAGmeihangshu"] = arg1;
	else
		PIG["BagBank"]["BAGmeihangshu_retail"] = arg1;
	end
	CloseAllBags()
	OpenAllBags()
	PIGCloseDropDownMenus()
end
--缩放
BagBankF.SetListF.suofangTXT = PIGFontString(BagBankF.SetListF,{"TOPLEFT",BagBankF.SetListF.hangNUMTXT,"BOTTOMLEFT",0,-14},"背包缩放比例")
local BAGsuofangbili = {0.8,0.9,1,1.1,1.2,1.3,1.4};
BagBankF.SetListF.suofang=PIGDownMenu(BagBankF.SetListF,{"LEFT",BagBankF.SetListF.suofangTXT,"RIGHT",4,0},{70,nil})
function BagBankF.SetListF.suofang:PIGDownMenu_Update_But(self)
	local info = {}
	info.func = self.PIGDownMenu_SetValue
	for i=1,#BAGsuofangbili,1 do
	    info.text, info.arg1 = BAGsuofangbili[i], BAGsuofangbili[i]
	    info.checked = BAGsuofangbili[i]==PIG["BagBank"]["BAGsuofangBili"]
		BagBankF.SetListF.suofang:PIGDownMenu_AddButton(info)
	end 
end
function BagBankF.SetListF.suofang:PIGDownMenu_SetValue(value,arg1,arg2)
	BagBankF.SetListF.suofang:PIGDownMenu_SetText(value)
	PIG["BagBank"]["BAGsuofangBili"] = arg1;
	if tocversion<100000 then
		BAGheji_UI.suofang=arg1
	else
		ContainerFrameCombinedBags:SetScale(arg1)
	end
	CloseAllBags()
	OpenAllBags()
	PIGCloseDropDownMenus()
end

BagBankF.CZpeizhi = PIGButton(BagBankF,{"BOTTOMLEFT",BagBankF,"BOTTOMLEFT",20,6},{150,24},"数据异常点此重置");
BagBankF.CZpeizhi:SetScript("OnClick", function(self, button)
	StaticPopup_Show ("HUIFU_DEFAULT_BEIBAOZHENGHE");
end)
StaticPopupDialogs["HUIFU_DEFAULT_BEIBAOZHENGHE"] = {
	text = "此操作将\124cffff0000重置\124r背包/银行整合所有数据和配置，\n需重载界面。确定重置?",
	button1 = "确定",
	button2 = "取消",
	OnAccept = function()
		PIG["BagBank"]=addonTable.Default["BagBank"]
		PIG["BagBank"]["Zhenghe"]=true
		PIG["BagBank"]["SortBag_Config"]=true
		ReloadUI()
	end,
	timeout = 0,
	whileDead = true,
	hideOnEscape = true,
}
BagBankF:HookScript("OnShow", function(self)
	self.Zhenghe:SetChecked(PIG["BagBank"]["Zhenghe"])
	if PIG["BagBank"]["Zhenghe"] then
		BagBankF.SetListF:Show()
	else
		BagBankF.SetListF:Hide()
	end
	self.BagKongyu:SetChecked(PIG["BagBank"]["BagKongyu"])
	for i=1,#BAG_SetList do
		if BAG_SetList[i][1]=="反向整理" then
			if tocversion<50000 then
				_G["BAG_SetList"..i]:SetChecked(not PIG["BagBank"][BAG_SetList[i][2]])
			else
				_G["BAG_SetList"..i]:SetChecked(not GetSortBagsRightToLeft())
			end
		else
			_G["BAG_SetList"..i]:SetChecked(PIG["BagBank"][BAG_SetList[i][2]])
		end
	end
	if tocversion<100000 then
		BagBankF.SetListF.hangNUM:PIGDownMenu_SetText(PIG["BagBank"]["BAGmeihangshu"])
	else
		BagBankF.SetListF.hangNUM:PIGDownMenu_SetText(PIG["BagBank"]["BAGmeihangshu_retail"])
	end
	BagBankF.SetListF.suofang:PIGDownMenu_SetText(PIG["BagBank"]["BAGsuofangBili"])
end)
--==================================
addonTable.BagBank = function()
	BagBankfun.Zhenghe(BagBankF,BagBankFTabBut)
end