local _, addonTable = ...;
local _, _, _, tocversion = GetBuildInfo()
--===============================
local Create = addonTable.Create
local PIGFrame=Create.PIGFrame
local PIGButton = Create.PIGButton
local PIGCloseBut=Create.PIGCloseBut
local PIGLine=Create.PIGLine
local PIGModbutton=Create.PIGModbutton
local PIGCheckbutton=Create.PIGCheckbutton
local PIGModCheckbutton=Create.PIGModCheckbutton
local PIGOptionsList_RF=Create.PIGOptionsList_RF
local PIGOptionsList_R=Create.PIGOptionsList_R
local PIGFontString=Create.PIGFontString
--
local GetContainerNumSlots=C_Container and C_Container.GetContainerNumSlots or GetContainerNumSlots
local CommonFun=addonTable.CommonFun
---
local GnName,GnUI,GnIcon,FrameLevel = "售卖助手","AutoSellBuy_UI",134409,20
CommonFun.FrameLevel=FrameLevel
CommonFun.GnName=GnName
local Tooltip = "开启"..GnName..",包含一键丢弃/自动卖出/自动购买/自动开箱盒蚌/使用物品";
local Checkbut = PIGModCheckbutton(CommonFun.CommonF,{GnName,Tooltip},{"TOP",CommonFun.CommonF,"TOP",0,-200})
Checkbut:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["AutoSellBuy"]["Open"]=true;
		CommonFun.AutoSellBuy()
	else
		PIGA["AutoSellBuy"]["Open"]=false;
		Pig_Options_RLtishi_UI:Show()
	end
	QuickButUI.AutoSellBuy()
end);
Checkbut.QKBut:SetScript("OnClick", function (self)
	if self:GetChecked() then
		PIGA["AutoSellBuy"]["AddBut"]=true
		QuickButUI.AutoSellBuy()
	else
		PIGA["AutoSellBuy"]["AddBut"]=false
		Pig_Options_RLtishi_UI:Show();
	end
end);
Checkbut:HookScript("OnShow", function (self)
	self:SetChecked(PIGA["AutoSellBuy"]["Open"])
	self.QKBut:SetChecked(PIGA["AutoSellBuy"]["AddBut"])
end);
------------------------------------------------
local Width,Height,biaotiH  = 300, 550, 21;
--父框架
function CommonFun.AutoSellBuy()
	if not PIGA["AutoSellBuy"]["Open"] then return end
	if _G[GnUI] then return end	
	local ModBut = PIGModbutton(GnName,GnIcon,GnUI,FrameLevel,1)

	local SellBuy=PIGFrame(UIParent,{"CENTER",UIParent,"CENTER",0,100},{Width, Height},GnUI,true)
	SellBuy:PIGSetBackdrop()
	SellBuy:PIGClose()
	SellBuy:PIGSetMovable()
	SellBuy:SetFrameLevel(FrameLevel)
	--标题
	SellBuy.biaoti = PIGFontString(SellBuy,{"TOP", SellBuy, "TOP", 0, -4},GnName)
	PIGLine(SellBuy,"TOP",-biaotiH)
	--内容显示
	SellBuy.F=PIGOptionsList_RF(SellBuy,biaotiH,"Left")
	--
	CommonFun.FastDiuqi()
	CommonFun.AutoSell()
	CommonFun.AutoBuy()
	CommonFun.FastOpen()
	CommonFun.FastFen()
end
function CommonFun.ADDScroll(fuFrame,text,hangName,hang_NUM,Config0,Config1)
	local Width = fuFrame:GetWidth()-12;
	local hang_Height = 24
	fuFrame.List = PIGFrame(fuFrame,{"BOTTOM", fuFrame, "BOTTOM", 0, 6},{Width, hang_Height*hang_NUM+6})
	fuFrame.List:PIGSetBackdrop()
	fuFrame.List.chu = PIGButton(fuFrame,{"BOTTOMLEFT",fuFrame.List,"TOPLEFT",0,4},{44,20},"导出");
	local Config_CHU=addonTable.Config_CHU
	fuFrame.List.chu:SetScript("OnClick", function(self)
		Config_CHU(self,Config0)
	end)
	fuFrame.List.ru = PIGButton(fuFrame,{"LEFT",fuFrame.List.chu,"RIGHT",4,0},{44,20},"导入");
	local Config_RU=addonTable.Config_RU
	fuFrame.List.ru:SetScript("OnClick", function(self)
		Config_RU(self,Config1)
	end)
	fuFrame.List.biaoti = PIGFontString(fuFrame.List,{"LEFT", fuFrame.List.ru, "RIGHT", 4, 0},"\124cffFFFF00"..text.."列表\124r\124cff00FF00(拖拽到此)\124r")
	fuFrame.List.bagbut = PIGButton(fuFrame,{"BOTTOMRIGHT",fuFrame.List,"TOPRIGHT",0,4},{44,20},"添加");
	fuFrame.List.bagbut:HookScript("OnClick",  function (self)
		if self.List:IsShown() then
			self.List:Hide()
		else
			self.List:Show()
		end	
	end)
	local addBag_W,addBag_hang_NUM = 240,19
	fuFrame.List.bagbut.List = PIGFrame(fuFrame.List.bagbut,{"TOPLEFT", fuFrame, "TOPRIGHT", 2, biaotiH})
	fuFrame.List.bagbut.List:SetPoint("BOTTOMRIGHT", fuFrame, "BOTTOMRIGHT", addBag_W, 0);
	fuFrame.List.bagbut.List:PIGSetBackdrop()
	fuFrame.List.bagbut.List:PIGClose()
	fuFrame.List.bagbut.List:Hide()
	fuFrame.List.bagbut.List.biaoti = PIGFontString(fuFrame.List.bagbut.List,{"TOP", fuFrame.List.bagbut.List, "TOP", 0, -4},"添加背包物品")

	PIGLine(fuFrame.List.bagbut.List,"TOP",-biaotiH)
	--
	local function gengxinHang(self)
		for id = 1, hang_NUM do
			_G[hangName.."hang"..id]:Hide();
	    end
	    local shujuy =Config0
	    local ItemsNum = #shujuy;
		if ItemsNum>0 then
		    FauxScrollFrame_Update(self, ItemsNum, hang_NUM, hang_Height);
		    local offset = FauxScrollFrame_GetOffset(self);
		    for id = 1, hang_NUM do
		    	local dangqianH = id+offset;
		    	if shujuy[dangqianH] then
		    		local hang = _G[hangName.."hang"..id]
		    		hang:Show();
			    	hang.item.icon:SetTexture(shujuy[dangqianH][3]);
					hang.item.link:SetText(shujuy[dangqianH][2]);
					hang.item:SetScript("OnMouseDown", function (self)
						GameTooltip:ClearLines();
						GameTooltip:SetOwner(self, "ANCHOR_CURSOR");
						GameTooltip:SetHyperlink(shujuy[dangqianH][2])
					end);
					hang.item:SetScript("OnMouseUp", function ()
						GameTooltip:ClearLines();
						GameTooltip:Hide() 
					end);
					hang.del:SetID(dangqianH);
					if hangName=="Buy" then
						if shujuy[dangqianH][5]==1 then
							hang.Cont:Disable();
						else
							hang.Cont:Enable();
						end
						hang.Cont:Show();
						hang.Cont:SetText(shujuy[dangqianH][4]);
					end
				end
			end
		end
	end
	local function gengxin_addBag(self)
		if not fuFrame.List.bagbut.List:IsShown() then return end
		for id = 1, addBag_hang_NUM do
			_G[hangName.."addbaghang"..id]:Hide();
	    end
	    local bagshujuy = {}
	    if tocversion<30000 then
			for bag=0,4 do			
				local xx=GetContainerNumSlots(bag)
				for k=1,xx do
					local icon, itemCount, locked, quality, readable, lootable, itemLink, isFiltered, noValue, itemID = GetContainerItemInfo(bag, k)
					if icon then
						if itemID~=6948 then
							local itemStackCount= select(8, GetItemInfo(itemLink))
							table.insert(bagshujuy,{itemID,itemLink,icon,itemStackCount,itemStackCount,false})
						end
					end
				end
			end
		else
			for bag=0,5 do			
				local xx=GetContainerNumSlots(bag)
				for k=1,xx do
					local ItemInfo = C_Container.GetContainerItemInfo(bag, k)
					if ItemInfo then
						if ItemInfo.itemID~=6948 then
							if fuFrame.List.bagbut.List.xuanzhong[ItemInfo.quality] then
								local itemStackCount= select(8, GetItemInfo(ItemInfo.hyperlink))
								table.insert(bagshujuy,{ItemInfo.itemID,ItemInfo.hyperlink,ItemInfo.iconFileID,itemStackCount,itemStackCount,false})
							end
						end
					end
				end
			end
		end
		local ItemsNum = #bagshujuy;
		local shujuy =Config0
		for i=1,ItemsNum do
			for ii=1,#shujuy do
				if shujuy[ii][2]==bagshujuy[i][2] then	
					bagshujuy[i][6]=true
				end
			end
		end	
	    FauxScrollFrame_Update(self, ItemsNum, addBag_hang_NUM, hang_Height);
	    local offset = FauxScrollFrame_GetOffset(self);
	    for id = 1, hang_NUM do
	    	local dangqianH = id+offset;
	    	if bagshujuy[dangqianH] then
	    		local hang = _G[hangName.."addbaghang"..id]
	    		hang:Show();
		    	hang.icon:SetTexture(bagshujuy[dangqianH][3]);
				hang.link:SetText(bagshujuy[dangqianH][2]);
				if bagshujuy[dangqianH][6] then
					hang.check:Show()
				else
					hang.check:Hide()
				end
				hang:SetScript("OnMouseDown", function (self)
					GameTooltip:ClearLines();
					GameTooltip:SetOwner(self, "ANCHOR_CURSOR");
					GameTooltip:SetHyperlink(bagshujuy[dangqianH][2])
				end);
				hang:SetScript("OnMouseUp", function (self)
					GameTooltip:ClearLines();
					GameTooltip:Hide() 
					local itemName, itemLink, itemQuality, itemLevel, itemMinLevel, itemType, itemSubType,itemStackCount, itemEquipLoc, itemTexture,sellPrice,classID= GetItemInfo(bagshujuy[dangqianH][2]) 
					if hangName=="Sell" then
						if sellPrice==0 then
							PIG_print("物品无法售卖") 
							ClearCursor();
							return 
						end
					end
					if hangName=="Fen" then
						if itemQuality<2 or classID~=2 and classID~=4 then
							PIG_print("物品无法分解")
							ClearCursor();
							return 
						end
					end
					for g=1,#Config0 do
						if bagshujuy[dangqianH][2]==Config0[g][2] then
							table.remove(Config0, g);
							gengxinHang(fuFrame.List.Scroll);
							gengxin_addBag(fuFrame.List.bagbut.List.NR.Scroll)
							return
						end
					end
					table.insert(Config0, {bagshujuy[dangqianH][1],bagshujuy[dangqianH][2],bagshujuy[dangqianH][3],bagshujuy[dangqianH][4],bagshujuy[dangqianH][5]});
					gengxinHang(fuFrame.List.Scroll);
					gengxin_addBag(fuFrame.List.bagbut.List.NR.Scroll)
				end);
	    	end
	    end
	end
	---
	fuFrame.List.bagbut.List.xuanzhong={}
	local Quality = addonTable.Data.Quality
	for i=0,4 do
		fuFrame.List.bagbut.List.xuanzhong[i]=true
		local text ={Quality[i]["Name"],Quality[i]["Name"]}
		local Checkbut =PIGCheckbutton(fuFrame.List.bagbut.List,nil,text,{26,26})
		if i<3 then
			if i==0 then
				Checkbut:SetPoint("TOPLEFT", fuFrame.List.bagbut.List, "TOPLEFT", 6, -22);
			else
				Checkbut:SetPoint("TOPLEFT", fuFrame.List.bagbut.List, "TOPLEFT", 6+i*70, -22);
			end
		else
			if i==3 then
				Checkbut:SetPoint("TOPLEFT", fuFrame.List.bagbut.List, "TOPLEFT", 6, -50);
			else
				Checkbut:SetPoint("TOPLEFT", fuFrame.List.bagbut.List, "TOPLEFT", 6+(i-3)*70, -50);
			end
		end
		Checkbut:SetChecked(true)
		Checkbut:SetScript("OnClick", function (self)
			if self:GetChecked() then
				fuFrame.List.bagbut.List.xuanzhong[i]=true
			else
				fuFrame.List.bagbut.List.xuanzhong[i]=false
			end
			gengxin_addBag(fuFrame.List.bagbut.List.NR.Scroll)
		end);
	end
	fuFrame.List.bagbut.List.NR = PIGFrame(fuFrame.List.bagbut.List,{"TOPLEFT", fuFrame.List.bagbut.List, "TOPLEFT", 6, -80})
	fuFrame.List.bagbut.List.NR:SetPoint("BOTTOMRIGHT", fuFrame.List.bagbut.List, "BOTTOMRIGHT", -6, 6);
	fuFrame.List.bagbut.List.NR:PIGSetBackdrop()
	fuFrame.List.bagbut.List.NR.Scroll = CreateFrame("ScrollFrame",nil,fuFrame.List.bagbut.List.NR, "FauxScrollFrameTemplate");  
	fuFrame.List.bagbut.List.NR.Scroll:SetPoint("TOPLEFT",fuFrame.List.bagbut.List.NR,"TOPLEFT",0,-2);
	fuFrame.List.bagbut.List.NR.Scroll:SetPoint("BOTTOMRIGHT",fuFrame.List.bagbut.List.NR,"BOTTOMRIGHT",-25,2);
	fuFrame.List.bagbut.List.NR.Scroll:SetScript("OnVerticalScroll", function(self, offset)
	    FauxScrollFrame_OnVerticalScroll(self, offset, hang_Height, gengxin_addBag)
	end)
	for id = 1, addBag_hang_NUM do
		local hang = CreateFrame("Frame", hangName.."addbaghang"..id, fuFrame.List.bagbut.List.NR);
		hang:SetSize(addBag_W-40, hang_Height);
		if id==1 then
			hang:SetPoint("TOP",fuFrame.List.bagbut.List.NR.Scroll,"TOP",0,-2);
		else
			hang:SetPoint("TOP",_G[hangName.."addbaghang"..(id-1)],"BOTTOM",0,0);
		end
		if id~=addBag_hang_NUM then
			PIGLine(hang,"BOT")
		end
		hang.check = hang:CreateTexture()
		hang.check:SetTexture("interface/buttons/ui-checkbox-check.bl");
		hang.check:SetSize(hang_Height,hang_Height);
		hang.check:SetPoint("LEFT", hang, "LEFT", 0,0);
		hang.icon = hang:CreateTexture(nil, "BORDER");
		hang.icon:SetSize(hang_Height,hang_Height);
		hang.icon:SetPoint("LEFT", hang.check, "RIGHT", 0,0);
		hang.link = PIGFontString(hang,{"LEFT", hang.icon, "RIGHT", 4,0})
	end
	fuFrame:HookScript("OnHide", function (self)
		self.List.bagbut.List:Hide()
	end)
	fuFrame.List.bagbut.List:HookScript("OnShow", function (self)
		gengxin_addBag(self.NR.Scroll)
	end)
	--
	fuFrame.List.Scroll = CreateFrame("ScrollFrame",nil,fuFrame.List, "FauxScrollFrameTemplate");  
	fuFrame.List.Scroll:SetPoint("TOPLEFT",fuFrame.List,"TOPLEFT",0,-2);
	fuFrame.List.Scroll:SetPoint("BOTTOMRIGHT",fuFrame.List,"BOTTOMRIGHT",-25,2);
	fuFrame.List.Scroll:SetScript("OnVerticalScroll", function(self, offset)
	    FauxScrollFrame_OnVerticalScroll(self, offset, hang_Height, gengxinHang)
	end)

	for id = 1, hang_NUM do
		local hang = CreateFrame("Frame", hangName.."hang"..id, fuFrame.List);
		hang:SetSize(Width-36, hang_Height);
		if id==1 then
			hang:SetPoint("TOP",fuFrame.List.Scroll,"TOP",0,-2);
		else
			hang:SetPoint("TOP",_G[hangName.."hang"..(id-1)],"BOTTOM",0,0);
		end
		if id~=hang_NUM then
			PIGLine(hang,"BOT")
		end
		hang.del = PIGCloseBut(hang,{"LEFT", hang, "LEFT", 0,0});
		hang.del:SetScript("OnClick", function (self)
			table.remove(Config0, self:GetID());
			gengxinHang(fuFrame.List.Scroll);
			gengxin_addBag(fuFrame.List.bagbut.List.NR.Scroll)
		end);
		hang.item = CreateFrame("Frame", nil, hang);
		hang.item:SetSize(Width-70,hang_Height);
		hang.item:SetPoint("LEFT",hang,"LEFT",hang_Height,0);
		hang.item.icon = hang.item:CreateTexture(nil, "BORDER");
		hang.item.icon:SetSize(26,26);
		hang.item.icon:SetPoint("LEFT", hang.item, "LEFT", 0,0);
		hang.item.link = PIGFontString(hang,{"LEFT", hang.item, "LEFT", hang_Height+4,0})
		if hangName=="Buy" then
			hang.item:SetWidth(Width-70-36);
			hang.Cont = CreateFrame('EditBox', nil, hang,"InputBoxInstructionsTemplate");
			hang.Cont:SetSize(36,28);
			hang.Cont:SetPoint("RIGHT", hang, "RIGHT", 0,0);
			hang.Cont:SetFontObject(ChatFontNormal);
			hang.Cont:SetAutoFocus(false);
			hang.Cont:SetMaxLetters(4)
			hang.Cont:SetNumeric()
			hang.Cont:SetScript("OnEscapePressed", function(self) 
				self:ClearFocus() 
			end);
			hang.Cont:SetScript("OnEnterPressed", function(self) 
				self:ClearFocus() 
			end);
			hang.Cont:SetScript("OnEditFocusLost", function(self)
				local NWEdanjiaV=self:GetNumber();
		 		self:SetText(NWEdanjiaV);
		 		local bianjiID=self:GetParent().del:GetID()
				Config0[bianjiID][4]=NWEdanjiaV;
				gengxinHang(fuFrame.List.Scroll);
			end);
		end
	end
	--
	fuFrame.List.ADD = CreateFrame("Frame",nil,fuFrame.List);  
	fuFrame.List.ADD:SetPoint("TOPLEFT",fuFrame.List,"TOPLEFT",0,0);
	fuFrame.List.ADD:SetPoint("BOTTOMRIGHT",fuFrame.List,"BOTTOMRIGHT",0,0);
	---
	local FrameLevel=CommonFun.FrameLevel
	fuFrame.List:RegisterEvent("ITEM_LOCK_CHANGED");
	fuFrame.List:RegisterEvent("ITEM_UNLOCKED");
	fuFrame.List:SetScript("OnEvent",function (self,event)
		if event=="ITEM_LOCK_CHANGED" then
			if self:IsShown() then
				self.ADD:SetFrameLevel(FrameLevel+8);
			end
		end
		if event=="ITEM_UNLOCKED" then
			if self:IsShown() then
				self.ADD:SetFrameLevel(FrameLevel);
			end
		end
	end);
	local function zhixingbaocun(self)
		if CursorHasItem() then
			local NewType, itemID, Itemlink= GetCursorInfo()
			local itemName, itemLink, itemQuality, itemLevel, itemMinLevel, itemType, itemSubType,itemStackCount, itemEquipLoc, itemTexture,sellPrice,classID,subclassID= GetItemInfo(Itemlink) 
			if hangName=="Sell" then
				if sellPrice==0 then
					PIG_print("物品无法售卖") 
					ClearCursor();
					return 
				end
			end
			if hangName=="Fen" then
				if itemQuality<2 or classID~=2 and classID~=4 then
					PIG_print("物品无法分解")
					ClearCursor();
					return 
				end
			end
			for i=1,#Config0 do
				if Itemlink==Config0[i][2] then
					PIG_print("物品已在目录内");
					ClearCursor();
					return
				end			
			end
			table.insert(Config0, {itemID,Itemlink,itemTexture,itemStackCount,itemStackCount});
			ClearCursor();
			gengxinHang(fuFrame.List.Scroll);
			gengxin_addBag(fuFrame.List.bagbut.List.NR.Scroll)
		end
	end
	fuFrame.List:SetScript("OnHide", function (self)
		self.ADD:SetFrameLevel(FrameLevel)
	end)
	fuFrame.List.ADD:SetScript("OnReceiveDrag", function (self)
		zhixingbaocun(self)
	end)
	fuFrame.List.ADD:SetScript("OnMouseUp", function (self)
		zhixingbaocun(self)
	end);
	fuFrame.List:SetScript("OnShow", function()
		gengxinHang(fuFrame.List.Scroll);
	end)
end