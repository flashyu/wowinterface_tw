local _, addonTable = ...;
local _, _, _, tocversion = GetBuildInfo()
--================================
local Create = addonTable.Create
local PIGFrame=Create.PIGFrame
local PIGButton = Create.PIGButton
local PIGEnter=Create.PIGEnter
local PIGLine=Create.PIGLine
local PIGCloseBut=Create.PIGCloseBut
local PIGModbutton=Create.PIGModbutton
local PIGCheckbutton=Create.PIGCheckbutton
local PIGModCheckbutton=Create.PIGModCheckbutton
local PIGOptionsList_RF=Create.PIGOptionsList_RF
local PIGOptionsList_R=Create.PIGOptionsList_R
local Show_TabBut_R=Create.Show_TabBut_R
--
local CommonFun=addonTable.CommonFun
--
function CommonFun.AutoBuy()
	local fujiF,fujiTabBut=PIGOptionsList_R(AutoSellBuy_UI.F,"购",60,"Left")
	local Width = fujiF:GetWidth()-20;
	CommonFun.ADDScroll(fujiF,"购买","Buy",17,PIG_Per["AutoSellBuy"]["Buy_List"],{true,"AutoSellBuy","Buy_List"})
	--------------
	local function goumaihanshu(i, ii,xuyaogoumaishu,dataY)
		if xuyaogoumaishu>dataY[i][5] then
			BuyMerchantItem(ii,dataY[i][5])
			xuyaogoumaishu=xuyaogoumaishu-dataY[i][5]
			if xuyaogoumaishu>0 then
				goumaihanshu(i,ii,xuyaogoumaishu,dataY)
			end
		else
			BuyMerchantItem(ii, xuyaogoumaishu)
		end
	end
	--------------------------------
	local function jisuanBAGshuliang(QitemID)
		local zongjiBAGitemCount=0
		if tocversion<30000 then
			for bag = 0, 4 do
				for slot = 1, GetContainerNumSlots(bag) do
					local icon, itemCount, locked, quality, readable, lootable, itemLink, isFiltered, noValue, itemID= GetContainerItemInfo(bag, slot);
					if itemID then
						if QitemID==itemID then
							zongjiBAGitemCount=zongjiBAGitemCount+itemCount
						end
					end
				end
			end
		else
			for bag = 0, 5 do
				for slot = 1, C_Container.GetContainerNumSlots(bag) do
					local ItemInfo= C_Container.GetContainerItemInfo(bag, slot);
					if ItemInfo then
						if QitemID==ItemInfo.itemID then
							zongjiBAGitemCount=zongjiBAGitemCount+ItemInfo.stackCount
						end
					end
				end
			end
		end
		return zongjiBAGitemCount
	end
	---------------------------------
	local function Buy_item()
		if ( MerchantFrame:IsVisible() and MerchantFrame.selectedTab == 1 ) then
			local dataY = PIG_Per["AutoSellBuy"]["Buy_List"]
			for i=1,#dataY do
				BUGINFO_itemCount=0
				local goumaiItem=dataY[i][1]
				local xuyaogoumaishu=dataY[i][4];--预设购买数
				local yiyoushuliang=jisuanBAGshuliang(goumaiItem);--已有数量
				local shijigoumai=xuyaogoumaishu-yiyoushuliang;--实际需要补货数量
				--print(shijigoumai)
				if shijigoumai>0 then
					local numItems = GetMerchantNumItems();
					for ii=1,numItems do
						if goumaiItem==GetMerchantItemID(ii) then
							local NPCshuliang = select(5, GetMerchantItemInfo(ii))
							if NPCshuliang==(-1) then
								goumaihanshu(i,ii,shijigoumai,dataY)
								if PIG["AutoSellBuy"]["Buy_Tishi"] then
									print("|cFF00ffff!Pig|r |cFF00ff00执行自动补货:|r "..PIG_Per["AutoSellBuy"]["Buy_List"][i][2].." |cFF00ff00补货数量:|r"..shijigoumai);
								end
							else
								if shijigoumai>NPCshuliang then
									BuyMerchantItem(ii,NPCshuliang)
									if PIG["AutoSellBuy"]["Buy_Tishi"] then
										print("|cFF00ffff!Pig|r |cFF00ff00商家物品限购:|r "..PIG_Per["AutoSellBuy"]["Buy_List"][i][2].." |cFF00ff00抢购数量:|r"..NPCshuliang);
									end
								else
									goumaihanshu(i,ii,shijigoumai,dataY)
									if PIG["AutoSellBuy"]["Buy_Tishi"] then
										print("|cFF00ffff!Pig|r |cFF00ff00执行自动补货:|r "..PIG_Per["AutoSellBuy"]["Buy_List"][i][2].." |cFF00ff00补货数量:|r"..shijigoumai);
									end
								end
							end	
						end
					end
				end		
			end
		end
	end
	----
	local function Buy_Open()
		MerchantFrame:HookScript("OnShow",function (self)
			if fujiF.Buy_Open:GetChecked() then
				Buy_item()
			end
		end);
	end
	fujiF.Buy_Open = PIGCheckbutton(fujiF,{"TOPLEFT",fujiF,"TOPLEFT",20,-10},{"自动购买下方列表物品|cffFFFF00(角色独享)|r", "打开商人界面自动购买下方列表物品"})
	fujiF.Buy_Open:SetScript("OnClick", function (self)
		if self:GetChecked() then
			PIG["AutoSellBuy"]["Buy_Open"]=true;
			Buy_Open()
		else
			PIG["AutoSellBuy"]["Buy_Open"]=false;
		end
	end);
	if PIG["AutoSellBuy"]["Buy_Open"] then
		fujiF.Buy_Open:SetChecked(true)
		Buy_Open()
	end
	--
	local function Buy_But_Open()
		if MerchantFrame.Buy then
			if PIG["AutoSellBuy"]["Buy_But"] then
				MerchantFrame.Buy:Show()
			else
				MerchantFrame.Buy:Hide()
			end
		else
			MerchantFrame.Buy = PIGButton(MerchantFrame,{"TOPLEFT",MerchantFrame,"TOPLEFT",160,-28},{80,24},"购买物资")
			PIGEnter(MerchantFrame.Buy,"左键-购买预设物资\n右键-设置购买清单")
			MerchantFrame.Buy:SetScript("OnClick", function (self,button)
				if button=="LeftButton" then
					Buy_item()
				else
					AutoSellBuy_UI:Show()
					Show_TabBut_R(AutoSellBuy_UI.F,fujiF,fujiTabBut)
				end
			end)
			hooksecurefunc("PanelTemplates_SetTab", function(frame, id)
				if id==1 then
					MerchantFrame.Buy:Show()
				else
					MerchantFrame.Buy:Hide()
				end
			end)
		end
	end
	fujiF.Buy_But = PIGCheckbutton(fujiF,{"TOPLEFT",fujiF,"TOPLEFT",20,-44},{"购买按钮", "在商人界面增加一个购买按钮(可以点击购买下方列表内的物品)"})
	fujiF.Buy_But:SetScript("OnClick", function (self)
		if self:GetChecked() then
			PIG["AutoSellBuy"]["Buy_But"]=true;	
		else
			PIG["AutoSellBuy"]["Buy_But"]=false;
		end
		Buy_But_Open();	
	end);
	if PIG["AutoSellBuy"]["Buy_But"] then
		fujiF.Buy_But:SetChecked(true);
		Buy_But_Open();
	end
	---
	fujiF.Buy_Tishi = PIGCheckbutton(fujiF,{"TOPLEFT",fujiF,"TOPLEFT",140,-44},{"聊天栏购买记录", "在聊天栏显示购买记录"})
	fujiF.Buy_Tishi:SetScript("OnClick", function (self)
		if self:GetChecked() then
			PIG["AutoSellBuy"]["Buy_Tishi"]=true;
		else
			PIG["AutoSellBuy"]["Buy_Tishi"]=false;
		end
	end);
	fujiF.Buy_Tishi:SetChecked(PIG["AutoSellBuy"]["Buy_Tishi"])
end