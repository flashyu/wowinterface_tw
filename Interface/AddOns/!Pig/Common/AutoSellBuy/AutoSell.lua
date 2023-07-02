local _, addonTable = ...;
local _, _, _, tocversion = GetBuildInfo()
---------------------------------
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
function CommonFun.AutoSell()
	local fujiF,fujiTabBut=PIGOptionsList_R(AutoSellBuy_UI.F,"卖",60,"Left")
	local Width = fujiF:GetWidth()-20;
	CommonFun.ADDScroll(fujiF,"卖出","Sell",17,PIGA["AutoSellBuy"]["Sell_List"],{false,"AutoSellBuy","Sell_List"})
	local function shoumailaji()
		if ( MerchantFrame:IsVisible() and MerchantFrame.selectedTab == 1 ) then
			fujiF.shoumaiG = 0;
			fujiF.shoumaiShuliang = 0;
			if tocversion<30000 then
				for bag = 0, 4 do
					for slot = 1, GetContainerNumSlots(bag) do
						local icon, itemCount, locked, quality, readable, lootable, itemLink, isFiltered, noValue, itemID= GetContainerItemInfo(bag, slot);
						if itemID then
							if noValue==false then
									if quality==0 then
										local shifouzaipaichumuluYN=true
										if shifouzaipaichumuluYN then
											local name, link, rarity, level, minLevel, itemtype, subType, stackCount, equipLoc, icon, sellPrice = GetItemInfo(itemID);
											fujiF.shoumaiG = sellPrice*itemCount+fujiF.shoumaiG;
											UseContainerItem(bag, slot);
											if PIGA["AutoSellBuy"]["Sell_Tishi"] then print("|cFF7FFFAA出售|r: " ..link) end
											fujiF.shoumaiShuliang = fujiF.shoumaiShuliang+1
										end
									end
								--非灰
									for i=1,#PIGA["AutoSellBuy"]["Sell_List"] do
										local itemLink=PIG_ItemLink(itemLink)
										local itemLink2=PIG_ItemLink(PIGA["AutoSellBuy"]["Sell_List"][i][2])
										if itemLink==itemLink2 then
											local name, link, rarity, level, minLevel, itemtype, subType, stackCount, equipLoc, icon, sellPrice = GetItemInfo(itemID);
											fujiF.shoumaiG = sellPrice*itemCount+fujiF.shoumaiG;
											UseContainerItem(bag, slot);
											if PIGA["AutoSellBuy"]["Sell_Tishi"] then print("|cFF7FFFAA出售|r: " ..link) end
											fujiF.shoumaiShuliang = fujiF.shoumaiShuliang+1
										end
									end
							end
						end
					end
				end
			else
				for bag = 0, 5 do
					for slot = 1, C_Container.GetContainerNumSlots(bag) do
						local ItemInfo= C_Container.GetContainerItemInfo(bag, slot);
						if ItemInfo then
							if ItemInfo.hasNoValue==false then
									if ItemInfo.quality==0 then
										local shifouzaipaichumuluYN=true
										if shifouzaipaichumuluYN then
											local name, link, rarity, level, minLevel, itemtype, subType, stackCount, equipLoc, icon, sellPrice = GetItemInfo(ItemInfo.hyperlink);
											fujiF.shoumaiG = sellPrice*ItemInfo.stackCount+fujiF.shoumaiG;
											C_Container.UseContainerItem(bag, slot);
											if PIGA["AutoSellBuy"]["Sell_Tishi"] then print("|cFF7FFFAA出售|r: " ..link) end
											fujiF.shoumaiShuliang = fujiF.shoumaiShuliang+1
										end
									end
								--非灰
									for i=1,#PIGA["AutoSellBuy"]["Sell_List"] do
										local itemLink=PIG_ItemLink(ItemInfo.hyperlink)
										local itemLink2=PIG_ItemLink(PIGA["AutoSellBuy"]["Sell_List"][i][2])
										if itemLink==itemLink2 then
											local name, link, rarity, level, minLevel, itemtype, subType, stackCount, equipLoc, icon, sellPrice = GetItemInfo(ItemInfo.hyperlink);
											fujiF.shoumaiG = sellPrice*ItemInfo.stackCount+fujiF.shoumaiG;
											C_Container.UseContainerItem(bag, slot);
											if PIGA["AutoSellBuy"]["Sell_Tishi"] then print("|cFF7FFFAA出售|r: " ..link) end
											fujiF.shoumaiShuliang = fujiF.shoumaiShuliang+1
										end
									end
							end
						end
					end
				end
			end
			if fujiF.shoumaiG > 0 then
				if PIGA["AutoSellBuy"]["Sell_Tishi"] then
					PIG_print("|cFF7FFFAA本次售卖获得:|r " .. GetCoinTextureString(fujiF.shoumaiG));
				end
			end
			if fujiF.shoumaiShuliang>=12 then 
				C_Timer.After(1,shoumailaji) 
			end
		end
	end
	--自动卖垃圾
	local function Sell_Open()
		MerchantFrame:HookScript("OnShow",function (self,event)
			if fujiF.Sell_Open:GetChecked() then
				shoumailaji()
			end
		end);
	end
	fujiF.Sell_Open = PIGCheckbutton(fujiF,{"TOPLEFT",fujiF,"TOPLEFT",20,-10},{"自动卖垃圾和下方列表物品", "打开商人界面自动售卖垃圾(灰色)物品和下方列表内的物品"})
	fujiF.Sell_Open:SetScript("OnClick", function (self)
		if self:GetChecked() then
			PIGA["AutoSellBuy"]["Sell_Open"]=true;
			Sell_Open()
		else
			PIGA["AutoSellBuy"]["Sell_Open"]=false;
		end
	end);
	if PIGA["AutoSellBuy"]["Sell_Open"] then
		fujiF.Sell_Open:SetChecked(true)
		Sell_Open()
	end
	---出售按钮
	local function Sell_But_Open()
		if MerchantFrame.Sell then
			if PIGA["AutoSellBuy"]["Sell_But"] then
				MerchantFrame.Sell:Show()
			else
				MerchantFrame.Sell:Hide()
			end
		else
			MerchantFrame.Sell = PIGButton(MerchantFrame,{"TOPLEFT",MerchantFrame,"TOPLEFT",60,-28},{70,24},"卖垃圾");
			PIGEnter(MerchantFrame.Sell,"左键-卖垃圾和预设卖出物品\n右键-设置卖出清单")  
			MerchantFrame.Sell:SetScript("OnClick", function (self,button)
				if button=="LeftButton" then
					shoumailaji()
				else
					AutoSellBuy_UI:Show()
					Show_TabBut_R(AutoSellBuy_UI.F,fujiF,fujiTabBut)
				end
			end)
			hooksecurefunc("PanelTemplates_SetTab", function(frame, id)
				if id==1 then
					MerchantFrame.Sell:Show()
				else
					MerchantFrame.Sell:Hide()
				end
			end)
		end
	end
	fujiF.Sell_But = PIGCheckbutton(fujiF,{"TOPLEFT",fujiF,"TOPLEFT",20,-44},{"出售按钮", "在商人界面增加一个卖东西按钮(可以点击卖出灰色物品和下方列表内的物品)"})
	fujiF.Sell_But:SetScript("OnClick", function (self)
		if self:GetChecked() then
			PIGA["AutoSellBuy"]["Sell_But"]=true;	
		else
			PIGA["AutoSellBuy"]["Sell_But"]=false;
		end
		Sell_But_Open();	
	end);
	if PIGA["AutoSellBuy"]["Sell_But"] then
		fujiF.Sell_But:SetChecked(true);
		Sell_But_Open();
	end
	--
	fujiF.Sell_Tishi = PIGCheckbutton(fujiF,{"TOPLEFT",fujiF,"TOPLEFT",140,-44},{"聊天栏卖出记录", "在聊天栏显示卖出记录"})
	fujiF.Sell_Tishi:SetScript("OnClick", function (self)
		if self:GetChecked() then
			PIGA["AutoSellBuy"]["Sell_Tishi"]=true;
		else
			PIGA["AutoSellBuy"]["Sell_Tishi"]=false;
		end
	end);
	fujiF.Sell_Tishi:SetChecked(PIGA["AutoSellBuy"]["Sell_Tishi"])
end