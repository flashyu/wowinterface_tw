local _, addonTable = ...;
local _, _, _, tocversion = GetBuildInfo()
--=============================
local Create = addonTable.Create
local PIGButton = Create.PIGButton
local PIGOptionsList_R=Create.PIGOptionsList_R
local PIGEnter=Create.PIGEnter
local PIGQuickBut=Create.PIGQuickBut
local Show_TabBut_R=Create.Show_TabBut_R
local PIGCheckbutton=Create.PIGCheckbutton
--
local GetContainerNumSlots=C_Container and C_Container.GetContainerNumSlots or GetContainerNumSlots
local GetContainerItemLink=C_Container and C_Container.GetContainerItemLink or GetContainerItemLink
local CommonFun=addonTable.CommonFun
-- 
local buticon=136058
function QuickButUI.FastOpen() end
function CommonFun.FastOpen()
	local fujiF,fujiTabBut=PIGOptionsList_R(AutoSellBuy_UI.F,"开",60,"Left")
	CommonFun.ADDScroll(fujiF,"开启","Open",18,PIGA["AutoSellBuy"]["Open_List"],{false,"AutoSellBuy","Open_List"})
	---
	function QuickButUI.FastOpen()
		if PIGA["QuickBut"]["Open"] and PIGA["AutoSellBuy"]["Open"] and PIGA["AutoSellBuy"]["Open_QkBut"] then
			local QkButUI = "QkBut_FastOpen"
			if _G[QkButUI] then return end
			local QuickTooltip = "左击-|cff00FFFF开启指定物品|r\n右击-|cff00FFFF打开"..CommonFun.GnName.."|r"
			local QkBut=PIGQuickBut(QkButUI,QuickTooltip,buticon,nil,CommonFun.FrameLevel,"SecureActionButtonTemplate")
			QkBut:SetAttribute("type", "item")
			QkBut:HookScript("PreClick",  function (self,button)
				if button=="LeftButton" then
					if InCombatLockdown() then
						PIG_print("请在脱战后使用")
					else
						local shujuy =PIGA["AutoSellBuy"]["Open_List"]
						if #shujuy>0 then
							for bag=0,4 do			
								local bganum=GetContainerNumSlots(bag)
								for k=1,bganum do	
									local itemLink = GetContainerItemLink(bag, k);
									if itemLink then
										for i=1,#shujuy do
											if itemLink==shujuy[i][2] then
												self:SetAttribute("item", itemLink)
												return
											end
										end
									end
								end
							end
							PIG_print("没有需打开物品")
						else
							PIG_print("打开目录为空,右键设置")
						end	
					end
				end
			end);
			QkBut:HookScript("OnClick", function(self,button)
				if button=="RightButton" then
					if AutoSellBuy_UI:IsShown() then
						AutoSellBuy_UI:Hide();
					else
						AutoSellBuy_UI:Show();
						Show_TabBut_R(AutoSellBuy_UI.F,fujiF,fujiTabBut)
					end
				end
			end);
		end
	end
	fujiF.QkBut = PIGCheckbutton(fujiF,{"TOPLEFT",fujiF,"TOPLEFT",10,-6},{"添加到功能动作条", "在功能动作条增加一个快捷使用按钮"})
	fujiF.QkBut:SetScript("OnClick", function (self)
		if self:GetChecked() then
			PIGA["AutoSellBuy"]["Open_QkBut"]=true;
			QuickButUI.FastOpen()
			self.RL:Hide()
		else
			PIGA["AutoSellBuy"]["Open_QkBut"]=false;
			self.RL:Show()
		end
	end);
	fujiF.QkBut.RL = PIGButton(fujiF.QkBut,{"LEFT",fujiF.QkBut.Text,"RIGHT",4,0},{60,20},"重载UI")
	fujiF.QkBut.RL:Hide()
	fujiF.QkBut.RL:SetScript("OnClick", function (self)
		ReloadUI()
	end)
	if PIGA["AutoSellBuy"]["Open_QkBut"] then
		fujiF.QkBut:SetChecked(true)
	end
	--
	fujiF.fuzhiCDM = PIGButton(fujiF,{"TOPLEFT",fujiF,"TOPLEFT",60,-32},{90,22},"创建开启宏");
	PIGEnter(fujiF.fuzhiCDM,"注意:","|cffFF0000当你更改<按下按键时施法>请更新一次宏|r")
	local hongName = "PIGOpen"
	fujiF.fuzhiCDM:HookScript("OnShow", function (self)
		local macroSlot = GetMacroIndexByName(hongName)
		if macroSlot>0 then
			self:SetText("更新开启宏");
		else
			self:SetText("创建开启宏");
		end
	end)
	local function ADD_kaiqiHong()
		local hongNR = [=[/click OpenItemKey]=]
		local UseKeyDown =GetCVar("ActionButtonUseKeyDown")
		if UseKeyDown=="0" then
			hongNR = [=[/click OpenItemKey nil 0]=]
		elseif UseKeyDown=="1" then
			hongNR = [=[/click OpenItemKey nil 1]=]
		end
		local macroSlot = GetMacroIndexByName(hongName)
		if macroSlot>0 then
			EditMacro(macroSlot, nil, buticon, hongNR)
			PIG_print("已更新开启宏");
		else
			local global, perChar = GetNumMacros()
			if global<120 then
				CreateMacro(hongName, buticon, hongNR, nil)
				fujiF.fuzhiCDM:SetText("更新开启宏");
			else
				PIG_print(L["LIB_MACROERR"]);
				return
			end
		end
	end
	fujiF.fuzhiCDM:HookScript("OnClick",  function (self)
		if self:GetText()=="创建开启宏" then
			StaticPopup_Show("ADD_OPEN_HONG");
		else
			ADD_kaiqiHong()
		end	
	end)
	StaticPopupDialogs["ADD_OPEN_HONG"] = {
		text = "将创建一个开启宏，请拖拽到动作条使用\n\n确定创建吗？\n\n|cffFF0000当你更改<按下按键时施法>请更新一次宏|r",
		button1 = "确定",
		button2 = "取消",
		OnAccept = function()
			ADD_kaiqiHong()
		end,
		timeout = 0,
		whileDead = true,
		hideOnEscape = true,
	}
end