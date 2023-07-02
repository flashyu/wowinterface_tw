local _, addonTable = ...;
local _, _, _, tocversion = GetBuildInfo()
----=============================
local Create = addonTable.Create
local PIGButton = Create.PIGButton
local PIGOptionsList_R=Create.PIGOptionsList_R
local PIGEnter=Create.PIGEnter
local PIGQuickBut=Create.PIGQuickBut
local PIGCheckbutton=Create.PIGCheckbutton
local Show_TabBut_R=Create.Show_TabBut_R
--
local GetContainerNumSlots=C_Container and C_Container.GetContainerNumSlots or GetContainerNumSlots
local GetContainerItemLink=C_Container and C_Container.GetContainerItemLink or GetContainerItemLink
local CommonFun=addonTable.CommonFun
-- 
local hang_Height,hang_NUM  = 24, 17;
CommonFun.buticon=132853
if tocversion<20000 then
	CommonFun.buticon=135952
end
function QuickButUI.FastFen() end
function CommonFun.FastFen()
	local fujiF,fujiTabBut=PIGOptionsList_R(AutoSellBuy_UI.F,"分",60,"Left")
	CommonFun.ADDScroll(fujiF,"分解","Fen",18,PIGA["AutoSellBuy"]["Fen_List"],{false,"AutoSellBuy","Fen_List"})
	---
	local QkButUI = "QkBut_FastFen"
	function QuickButUI.FastFen()
		if PIGA["QuickBut"]["Open"] and PIGA["AutoSellBuy"]["Open"] and PIGA["AutoSellBuy"]["Fen_QkBut"] then
			if _G[QkButUI] then return end
			local QuickTooltip = "左击-|cff00FFFF分解指定物品|r\n右击-|cff00FFFF打开"..CommonFun.GnName.."|r"
			local QkBut=PIGQuickBut(QkButUI,QuickTooltip,CommonFun.buticon,nil,CommonFun.FrameLevel,"SecureActionButtonTemplate")
			QkBut:SetAttribute("type", "macro")
			local MassDestroyMacro = "/cast %1$s \n/run C_TradeSkillUI.CraftRecipe(%2$d, 1);\n/cast %1$s";
			local DestroyMacro = "/cast %s\n/use %d %d"
			local fenspellID = 13262
			QkBut:HookScript("PreClick",  function (self,button)
				if button=="LeftButton" then
					if not IsPlayerSpell(fenspellID) then PIG_print("你尚未学会分解技能") return end
					if InCombatLockdown() then
						PIG_print("请在脱战后使用")
					else
						self:SetAttribute("macrotext", " ")
						local shujuy =PIGA["AutoSellBuy"]["Fen_List"]
						if #shujuy>0 then
							for bag=0,4 do			
								local xx=GetContainerNumSlots(bag)
								for k=1,xx do	
									local itemLink = GetContainerItemLink(bag, k);
									for i=1,#shujuy do
										local itemLink=PIG_ItemLink(itemLink)
										local itemLink2=PIG_ItemLink(shujuy[i][2])
										if itemLink==itemLink2 then
											local fenspellname = GetSpellInfo(fenspellID)
											self:SetAttribute("macrotext", string.format(DestroyMacro, fenspellname, bag, k))
											return
										end
									end
								end
							end
							PIG_print("没有需分解物品")
						else
							PIG_print("分解目录为空,右键设置")
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
			PIGA["AutoSellBuy"]["Fen_QkBut"]=true;
			QuickButUI.FastFen()
			self.RL:Hide()
		else
			PIGA["AutoSellBuy"]["Fen_QkBut"]=false;
			self.RL:Show()
		end
	end);
	fujiF.QkBut.RL = PIGButton(fujiF.QkBut,{"LEFT",fujiF.QkBut.Text,"RIGHT",4,0},{60,20},"重载UI")
	fujiF.QkBut.RL:Hide()
	fujiF.QkBut.RL:SetScript("OnClick", function (self)
		ReloadUI()
	end)
	if PIGA["AutoSellBuy"]["Fen_QkBut"] then
		fujiF.QkBut:SetChecked(true)
	end

	fujiF.fuzhiCDM = PIGButton(fujiF,{"TOPLEFT",fujiF,"TOPLEFT",60,-32},{90,22},"创建分解宏");
	PIGEnter(fujiF.fuzhiCDM,"注意:","|cffFF0000当你更改<按下按键时施法>请更新一次宏|r")
	local hongName = "PIGFen"
	fujiF.fuzhiCDM:HookScript("OnShow", function (self)
		local macroSlot = GetMacroIndexByName(hongName)
		if macroSlot>0 then
			self:SetText("更新分解宏");
		else
			self:SetText("创建分解宏");
		end
	end)
	local function ADD_kaiqiHong()
		local hongNR = [=[/click FenItemKey]=]
		local UseKeyDown =GetCVar("ActionButtonUseKeyDown")
		if UseKeyDown=="0" then
			hongNR = [=[/click FenItemKey nil 0]=]
		elseif UseKeyDown=="1" then
			hongNR = [=[/click FenItemKey nil 1]=]
		end
		local macroSlot = GetMacroIndexByName(hongName)
		if macroSlot>0 then
			EditMacro(macroSlot, nil, CommonFun.buticon, hongNR)
			PIG_print("已更新分解宏");
		else
			local global, perChar = GetNumMacros()
			if global<120 then
				CreateMacro(hongName, CommonFun.buticon, hongNR, nil)
				fujiF.fuzhiCDM:SetText("更新分解宏");
			else
				PIG_print(L["LIB_MACROERR"]);
				return
			end
		end
	end
	fujiF.fuzhiCDM:SetScript("OnClick",  function (self)
		if self:GetText()=="创建分解宏" then
			StaticPopup_Show("ADD_FEN_HONG");
		else
			ADD_kaiqiHong()
		end	
	end)
	StaticPopupDialogs["ADD_FEN_HONG"] = {
		text = "将创建一个分解宏，请拖拽到动作条使用\n\n确定创建吗？\n\n|cffFF0000当你更改<按下按键时施法>请更新一次宏|r",
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