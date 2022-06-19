
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 115,
	["errors"] = {
		{
			["message"] = "...e\\AddOns\\TradeSkillMaster\\LibTSM\\Util\\ItemString.lua:261: bad argument #1 to 'strmatch' (string expected, got nil)",
			["time"] = "2022/04/03 20:52:59",
			["locals"] = "(*temporary) = nil\n(*temporary) = \"^i:[%-:0-9%+i]+$\"\n(*temporary) = \"string expected, got nil\"\n",
			["stack"] = "[string \"=[C]\"]: in function `strmatch'\n[string \"@Interface\\AddOns\\TradeSkillMaster\\LibTSM\\Util\\ItemString.lua\"]:261: in function `IsItem'\n[string \"@Interface\\AddOns\\TradeSkillMaster\\LibTSM\\Util\\ItemString.lua\"]:163: in function `ToLevel'\n[string \"@Interface\\AddOns\\TradeSkillMaster\\LibTSM\\Service\\Inventory.lua\"]:136: in function <...AddOns\\TradeSkillMaster\\LibTSM\\Service\\Inventory.lua:135>\n[string \"=(tail call)\"]: ?\n[string \"@Interface\\AddOns\\TradeSkillMaster\\Core\\UI\\Elements\\CraftingMatList.lua\"]:161: in function <...radeSkillMaster\\Core\\UI\\Elements\\CraftingMatList.lua:151>\n[string \"=(tail call)\"]: ?\n[string \"=(tail call)\"]: ?\n[string \"=(tail call)\"]: ?\n[string \"=(tail call)\"]: ?\n[string \"@Interface\\AddOns\\TradeSkillMaster\\Core\\UI\\Util\\TableRow.lua\"]:190: in function <...ce\\AddOns\\TradeSkillMaster\\Core\\UI\\Util\\TableRow.lua:180>\n[string \"=(tail call)\"]: ?\n...\n[string \"@Interface\\AddOns\\TradeSkillMaster\\External\\LibTSMClass\\LibTSMClass-1.lua\"]:208: in function `Draw'\n[string \"@Interface\\AddOns\\TradeSkillMaster\\Core\\UI\\Elements\\Frame.lua\"]:364: in function <...e\\AddOns\\TradeSkillMaster\\Core\\UI\\Elements\\Frame.lua:234>\n[string \"@Interface\\AddOns\\TradeSkillMaster\\External\\LibTSMClass\\LibTSMClass-1.lua\"]:208: in function `Draw'\n[string \"@Interface\\AddOns\\TradeSkillMaster\\Core\\UI\\Elements\\ApplicationFrame.lua\"]:429: in function <...adeSkillMaster\\Core\\UI\\Elements\\ApplicationFrame.lua:390>\n[string \"@Interface\\AddOns\\TradeSkillMaster\\External\\LibTSMClass\\LibTSMClass-1.lua\"]:208: in function `Draw'\n[string \"@Interface\\AddOns\\TradeSkillMaster\\Core\\UI\\Elements\\LargeApplicationFrame.lua\"]:141: in function <...illMaster\\Core\\UI\\Elements\\LargeApplicationFrame.lua:140>\n[string \"@Interface\\AddOns\\TradeSkillMaster\\External\\LibTSMClass\\LibTSMClass-1.lua\"]:208: in function `Draw'\n[string \"@Interface\\AddOns\\TradeSkillMaster\\Core\\UI\\Elements\\ApplicationFrame.lua\"]:550: in function `?'\n[string \"@Interface\\AddOns\\TradeSkillMaster\\LibTSM\\Util\\ScriptWrapper.lua\"]:86: in function `ScriptHandlerCommon'\n[string \"@Interface\\AddOns\\TradeSkillMaster\\LibTSM\\Util\\ScriptWrapper.lua\"]:37: in function <...ddOns\\TradeSkillMaster\\LibTSM\\Util\\ScriptWrapper.lua:36>",
			["session"] = 4,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] 插件 'ItemRack' 嘗試調用保護功能 'AutoEquipCursorItem()'。",
			["time"] = "2022/04/05 01:52:27",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `AutoEquipCursorItem'\n[string \"*:OnMouseUp\"]:4: in function `oldCharacterModelFrame_OnMouseUp'\n[string \"@Interface\\AddOns\\ItemRack\\ItemRackButtons.lua\"]:105: in function <Interface\\AddOns\\ItemRack\\ItemRackButtons.lua:101>",
			["session"] = 7,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "Interface\\AddOns\\weizPVP\\Modules\\PlayerData.lua:87: attempt to index field '?' (a nil value)",
			["time"] = "2022/04/05 01:38:00",
			["stack"] = "[string \"@Interface\\AddOns\\weizPVP\\Modules\\PlayerData.lua\"]:87: in function `UpdatePlayerActiveCache'\n[string \"@Interface\\AddOns\\weizPVP\\Modules\\CombatLog.lua\"]:142: in function <Interface\\AddOns\\weizPVP\\Modules\\CombatLog.lua:139>\n[string \"@Interface\\AddOns\\weizPVP\\Modules\\CombatLog.lua\"]:223: in function <Interface\\AddOns\\weizPVP\\Modules\\CombatLog.lua:221>\n[string \"@Interface\\AddOns\\weizPVP\\Modules\\CombatLog.lua\"]:230: in function <Interface\\AddOns\\weizPVP\\Modules\\CombatLog.lua:228>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\ElvUI\\Libraries\\Core\\Ace\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:29: in function <...Core\\Ace\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n[string \"@Interface\\AddOns\\ElvUI\\Libraries\\Core\\Ace\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:64: in function `Fire'\n[string \"@Interface\\AddOns\\ElvUI\\Libraries\\Core\\Ace\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:120: in function <...vUI\\Libraries\\Core\\Ace\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 7,
			["counter"] = 2,
		}, -- [3]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] 插件 'Questie' 嘗試調用保護功能 'Questie_TrackedQuests:ClearAllPoints()'。",
			["time"] = "2022/04/05 15:10:31",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `ClearAllPoints'\n[string \"@Interface\\AddOns\\Questie\\Modules\\Tracker\\QuestieTracker.lua\"]:610: in function `Update'\n[string \"@Interface\\AddOns\\Questie\\Modules\\Tracker\\QuestieTracker.lua\"]:1243: in function `Update'\n[string \"@Interface\\AddOns\\Questie\\Modules\\Tracker\\QuestieTracker.lua\"]:198: in function <...ce\\AddOns\\Questie\\Modules\\Tracker\\QuestieTracker.lua:162>",
			["session"] = 8,
			["counter"] = 1,
		}, -- [4]
		{
			["message"] = "[string \"Error in: 2.6/2.6 同速\"]:5: attempt to perform arithmetic on field 'expirationTime' (a nil value)",
			["time"] = "2022/04/03 15:56:05",
			["stack"] = "[string \"=[C]\"]: in function `xpcall'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:611: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:537>\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:747: in function `ScanEventsInternal'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:708: in function `ScanEvents'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:1433: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:1431>",
			["session"] = 9,
			["counter"] = 1388,
		}, -- [5]
		{
			["message"] = "C stack overflow",
			["time"] = "2022/04/05 23:49:35",
			["locals"] = "(*temporary) = ARKINV_Frame1SearchClear {\n 0 = <userdata>\n Center = <unnamed> {\n }\n RightEdge = <unnamed> {\n }\n Left = <unnamed> {\n }\n PixelSnapDisabled = true\n Right = <unnamed> {\n }\n OnBackdropLoaded = <function> defined @Interface\\SharedXML\\Backdrop.lua:144\n BottomEdge = <unnamed> {\n }\n TopLeftCorner = <unnamed> {\n }\n GetBackdropColor = <function> defined @Interface\\SharedXML\\Backdrop.lua:382\n SetupTextureCoordinates = <function> defined @Interface\\SharedXML\\Backdrop.lua:206\n OnBackdropSizeChanged = <function> defined @Interface\\SharedXML\\Backdrop.lua:174\n HasBackdropInfo = <function> defined @Interface\\SharedXML\\Backdrop.lua:270\n SetBackdropBorderColor = <function> defined @Interface\\SharedXML\\Backdrop.lua:414\n Middle = <unnamed> {\n }\n BottomRightCorner = <unnamed> {\n }\n BottomLeftCorner = <unnamed> {\n }\n GetEdgeSize = <function> defined @Interface\\SharedXML\\Backdrop.lua:180\n template = \"Default\"\n TopRightCorner = <unnamed> {\n }\n TopEdge = <unnamed> {\n }\n Text = ARKINV_Frame1SearchClearText {\n }\n SetBackdrop = <function> defined @Interface\\SharedXML\\Backdrop.lua:321\n ClearBackdrop = <function> defined @Interface\\SharedXML\\Backdrop.lua:274\n backdropInfo = <table> {\n }\n GetBackdropBorderColor = <function> defined @Interface\\SharedXML\\Backdrop.lua:401\n GetBackdrop = <function> defined @Interface\\SharedXML\\Backdrop.lua:339\n SetBorderBlendMode = <function> defined @Interface\\SharedXML\\Backdrop.lua:258\n SetupPieceVisuals = <function> defined @Interface\\SharedXML\\Backdrop.lua:238\n SetBackdropColor = <function> defined @Interface\\SharedXML\\Backdrop.lua:391\n LeftEdge = <unnamed> {\n }\n ApplyBackdrop = <function> defined @Interface\\SharedXML\\Backdrop.lua:286\n}\n(*temporary) = true\n(*temporary) = <function> defined =[C]:-1\n(*temporary) = ARKINV_Frame1SearchClear {\n 0 = <userdata>\n Center = <unnamed> {\n }\n RightEdge = <unnamed> {\n }\n Left = <unnamed> {\n }\n PixelSnapDisabled = true\n Right = <unnamed> {\n }\n OnBackdropLoaded = <function> defined @Interface\\SharedXML\\Backdrop.lua:144\n BottomEdge = <unnamed> {\n }\n TopLeftCorner = <unnamed> {\n }\n GetBackdropColor = <function> defined @Interface\\SharedXML\\Backdrop.lua:382\n SetupTextureCoordinates = <function> defined @Interface\\SharedXML\\Backdrop.lua:206\n OnBackdropSizeChanged = <function> defined @Interface\\SharedXML\\Backdrop.lua:174\n HasBackdropInfo = <function> defined @Interface\\SharedXML\\Backdrop.lua:270\n SetBackdropBorderColor = <function> defined @Interface\\SharedXML\\Backdrop.lua:414\n Middle = <unnamed> {\n }\n BottomRightCorner = <unnamed> {\n }\n BottomLeftCorner = <unnamed> {\n }\n GetEdgeSize = <function> defined @Interface\\SharedXML\\Backdrop.lua:180\n template = \"Default\"\n TopRightCorner = <unnamed> {\n }\n TopEdge = <unnamed> {\n }\n Text = ARKINV_Frame1SearchClearText {\n }\n SetBackdrop = <function> defined @Interface\\SharedXML\\Backdrop.lua:321\n ClearBackdrop = <function> defined @Interface\\SharedXML\\Backdrop.lua:274\n backdropInfo = <table> {\n }\n GetBackdropBorderColor = <function> defined @Interface\\SharedXML\\Backdrop.lua:401\n GetBackdrop = <function> defined @Interface\\SharedXML\\Backdrop.lua:339\n SetBorderBlendMode = <function> defined @Interface\\SharedXML\\Backdrop.lua:258\n SetupPieceVisuals = <function> defined @Interface\\SharedXML\\Backdrop.lua:238\n SetBackdropColor = <function> defined @Interface\\SharedXML\\Backdrop.lua:391\n LeftEdge = <unnamed> {\n }\n ApplyBackdrop = <function> defined @Interface\\SharedXML\\Backdrop.lua:286\n}\n(*temporary) = true\n = <function> defined =[C]:-1\n = <function> defined @Interface\\AddOns\\AddOnSkins\\Core\\API.lua:438\n",
			["stack"] = "[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n...\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?",
			["session"] = 9,
			["counter"] = 2,
		}, -- [6]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] 插件 'ElvUI' 嘗試調用保護功能 'VerticalMultiBarsContainer:SetSize()'。",
			["time"] = "2022/04/09 20:41:54",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `SetSize'\n[string \"@Interface\\FrameXML\\MultiActionBars.lua\"]:104: in function `MultiActionBar_Update'\n[string \"@Interface_TBC\\FrameXML\\InterfaceOptionsPanels.lua\"]:1179: in function `setFunc'\n[string \"@Interface_TBC\\FrameXML\\InterfaceOptionsPanels.lua\"]:87: in function <Interface_TBC\\FrameXML\\InterfaceOptionsPanels.lua:83>\n[string \"=[C]\"]: in function `pcall'\n[string \"@Interface\\FrameXML\\InterfaceOptionsFrame.lua\"]:216: in function <Interface\\FrameXML\\InterfaceOptionsFrame.lua:215>\n[string \"=[C]\"]: ?\n[string \"@Interface\\FrameXML\\InterfaceOptionsFrame.lua\"]:251: in function <Interface\\FrameXML\\InterfaceOptionsFrame.lua:247>\n[string \"=[C]\"]: in function `Click'\n[string \"@Interface_TBC\\FrameXML\\UIParent.lua\"]:3439: in function `ToggleGameMenu'\n[string \"TOGGLEGAMEMENU\"]:1: in function <[string \"TOGGLEGAMEMENU\"]:1>",
			["session"] = 20,
			["counter"] = 1,
		}, -- [7]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] 插件 'ElvUI' 嘗試調用保護功能 'UNKNOWN()'。",
			["time"] = "2022/04/13 01:54:43",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `SetCVar'\n[string \"@Interface\\SharedXML\\CvarUtil.lua\"]:13: in function <Interface\\SharedXML\\CvarUtil.lua:9>\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `SetCVar'\n[string \"@Interface\\FrameXML\\InterfaceOptionsFrame.lua\"]:361: in function `InterfaceOptionsFrame_LoadUVars'\n[string \"@Interface\\FrameXML\\InterfaceOptionsFrame.lua\"]:385: in function <Interface\\FrameXML\\InterfaceOptionsFrame.lua:383>",
			["session"] = 26,
			["counter"] = 1,
		}, -- [8]
		{
			["message"] = "...TBC\\AddOns\\Blizzard_AuctionUI\\Blizzard_AuctionUI.lua:1793: attempt to compare number with nil",
			["time"] = "2022/04/21 00:04:34",
			["locals"] = "tooltip = GameTooltip {\n 0 = <userdata>\n SetQuestLogRewardSpell = <function> defined @Interface\\AddOns\\LoonBestInSlot\\libs\\LibExtraTip\\LibExtraTip.lua:402\n SetScript = <function> defined =[C]:-1\n SetText = <function> defined =[C]:-1\n GetBackdropColor = <function> defined @Interface\\SharedXML\\SharedTooltipTemplates.lua:182\n SetHyperlink = <function> defined =[C]:-1\n SetTradeSkillItem = <function> defined =[C]:-1\n _owner = QuestieFrame299 {\n }\n SetVoidDepositItem = <function> defined =[C]:-1\n SetVoidWithdrawalItem = <function> defined =[C]:-1\n questOrder = <table> {\n }\n SetSocketGem = <function> defined =[C]:-1\n ARKTTD = <table> {\n }\n Show = <function> defined =[C]:-1\n SetPetAction = <function> defined @Interface\\AddOns\\LoonBestInSlot\\libs\\LibExtraTip\\LibExtraTip.lua:402\n SetLootItem = <function> defined @Interface\\AddOns\\LoonBestInSlot\\libs\\LibExtraTip\\LibExtraTip.lua:402\n FadeOut = <function> defined =[C]:-1\n numMoneyFrames = 2\n SetRecipeReagentItem = <function> defined @Interface\\AddOns\\LoonBestInSlot\\libs\\LibExtraTip\\LibExtraTip.lua:402\n SetBuybackItem = <function> defined @Interface\\AddOns\\LoonBestInSlot\\libs\\LibExtraTip\\LibExtraTip.lua:402\n SetMerchantItem = <function> defined @Interface\\AddOns\\LoonBestInSlot\\libs\\LibExtraTip\\LibExtraTip.lua:402\n SetMerchantCostItem = <function> defined =[C]:-1\n BottomOverlay = <unnamed> {\n }\n SetTalent = <function> defined @Interface\\AddOns\\LoonBestInSlot\\libs\\LibExtraTip\\LibExtraTip.lua:402\n updateTooltip = 0.065000\n SetInventoryItem = <function> defined @Interface\\AddOns\\LoonBestInSlot\\libs\\LibExtraTip\\LibExtraTip.lua:402\n TooltipBackdropOnLoad = <function> defined @Interface\\SharedXML\\SharedTooltipTemplates.lua:163\n SetAuctionSellItem = <function> defined @Interface\\AddOns\\LoonBestInSlot\\libs\\LibExtraTip\\LibExtraTip.lua:402\n SetBagItem = <function> defined @Interface\\AddOns\\LoonBestInSlot\\libs\\LibExtraTip\\LibExtraTip.lua:402\n SetAction = <function> defined =[C]:-1\n SetBackdropColor = <function> defined @Interface\\SharedXML\\SharedTooltipTemplates.lua:178\n SetAuctionItem = <function> defined @Interface\\AddOns\\LoonBestInSlot\\libs\\LibExtraTip\\LibExtraTip.lua:402\n SetSpellBookItem = <function> defined =[C]:-1\n SetGuildBankItem = <function> defined @Interface\\AddOns\\LoonBestInSlot\\libs\\LibExtraTip\\LibExtraTip.lua:402\n SetVoidItem = <function> defined =[C]:-1\n SetBackdropBorderColor = <function> defined @Interface\\SharedXML\\SharedTooltipTemplates.lua:186\n miniMapIcon = false\n Hide = <function> defined =[C]:-1\n manualOrder = <table> {\n }\n SetCraftItem = <function> defined =[C]:-1\n SetQuestRewardSpell = <function> defined @Interface\\AddOns\\LoonBestInSlot\\libs\\LibExtraTip\\LibExtraTip.lua:402\n ClearLines = <function> defined =[C]:-1\n TopOverlay = <unnamed> {\n }\n GetBackdropBorderColor = <function> defined @Interface\\SharedXML\\SharedTooltipTemplates.lua:190\n npcOrder = <table> {\n }\n SetUnitDebuff = <function> defined =[C]:-1\n SetItemByID = <function> defined =[C]:-1\n SetQuestItem = <function> defined @Interface\\AddOns\\LoonBestInSlot\\libs\\LibExtraTip\\LibExtraTip.lua:402\n SetBorderBlendMode = <function> defined @Interface\\SharedXML\\SharedTooltipTemplates.lua:194\n SetTrainerService = <function> defined @Interface\\AddOns\\LoonBestInSlot\\libs\\LibExtraTip\\LibExtraTip.lua:402\n SetInboxItem = <function> defined @Interface\\AddOns\\LoonBestInSlot\\libs\\LibExtraTip\\LibExtraTip.lua:402\n layoutType = \"TooltipDefaultLayout\"\n shoppingTooltips = <table> {\n }\n LibExtraTipLeft = <table> {\n }\n SetQuestLogItem = <function> defined @Interface\\AddOns\\LoonBestInSlot\\libs\\LibExtraTip\\LibExtraTip.lua:402\n SetTradeTargetItem = <function> defined @Interface\\AddOns\\LoonBestInSlot\\libs\\LibExtraTip\\LibExtraTip.lua:402\n SetCraftSpell = <function> defined =[C]:-1\n LibExtraTipRight = <table> {\n }\n SetSendMailItem = <function> defined @Interface\\AddOns\\LoonBestInSlot\\libs\\LibExtraTip\\LibExtraTip.lua:402\n SetSpellByID = <function> defined =[C]:-1\n SetShapeshift = <function> defined @Interface\\AddOns\\LoonBestInSlot\\libs\\LibExtraTip\\LibExtraTip.lua:402\n comparing = false\n StatusBar = GameTooltipStatusBar {\n }\n SetUnitAura = <func",
			["stack"] = "[string \"@Interface_TBC\\AddOns\\Blizzard_AuctionUI\\Blizzard_AuctionUI.lua\"]:1793: in function <...TBC\\AddOns\\Blizzard_AuctionUI\\Blizzard_AuctionUI.lua:1792>\n[string \"@Interface_TBC\\AddOns\\Blizzard_AuctionUI\\Blizzard_AuctionUI.lua\"]:1842: in function <...TBC\\AddOns\\Blizzard_AuctionUI\\Blizzard_AuctionUI.lua:1836>",
			["session"] = 41,
			["counter"] = 2,
		}, -- [9]
		{
			["message"] = "...lizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:428: attempt to index local 'layers' (a nil value)",
			["time"] = "2022/04/24 21:38:22",
			["locals"] = "self = <unnamed> {\n 0 = <userdata>\n MarkCanvasDirty = <function> defined @Interface\\AddOns\\Blizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:384\n GetMinZoomViewRect = <function> defined @Interface\\AddOns\\Blizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:547\n GetNormalizedHorizontalScroll = <function> defined @Interface\\AddOns\\Blizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:703\n SetPanTarget = <function> defined @Interface\\AddOns\\Blizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:580\n DenormalizeVerticalSize = <function> defined @Interface\\AddOns\\Blizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:728\n IsAtMaxZoom = <function> defined @Interface\\AddOns\\Blizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:647\n AccumulateMouseDeltas = <function> defined @Interface\\AddOns\\Blizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:248\n currentScale = 1.000000\n ScalingMode = <function> defined @Interface\\AddOns\\Blizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:293\n GetMap = <function> defined @Interface\\AddOns\\Blizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:659\n IsZoomingIn = <function> defined @Interface\\AddOns\\Blizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:639\n currentScrollY = 0.500000\n ZoomOut = <function> defined @Interface\\AddOns\\Blizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:601\n ShouldZoomInstantly = <function> defined @Interface\\AddOns\\Blizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:539\n SetScalingMode = <function> defined @Interface\\AddOns\\Blizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:289\n targetScale = 1.000000\n GetNormalizedCursorPosition = <function> defined @Interface\\AddOns\\Blizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:752\n TryPanOrZoomOnClick = <function> defined @Interface\\AddOns\\Blizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:87\n shouldPanOnClick = false\n SetZoomTarget = <function> defined @Interface\\AddOns\\Blizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:585\n normalizedPanXLerpAmount = 0.150000\n NormalizeUIPosition = <function> defined @Interface\\AddOns\\Blizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:747\n OnMouseUp = <function> defined @Interface\\AddOns\\Blizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:105\n MarkAreaTriggersDirty = <function> defined @Interface\\AddOns\\Blizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:376\n CalculateViewRect = <function> defined @Interface\\AddOns\\Blizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:551\n ResetZoom = <function> defined @Interface\\AddOns\\Blizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:613\n NormalizeHorizontalSize = <function> defined @Interface\\AddOns\\Blizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:716\n SetNormalizedHorizontalScroll = <function> defined @Interface\\AddOns\\Blizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:698\n OnLoad = <function> defined @Interface\\AddOns\\Blizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:7\n Child = <unnamed> {\n }\n zoomLevels = <table> {\n }\n SetShouldPanOnClick = <function> defined @Interface\\AddOns\\Blizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:527\n currentScrollX = 0.500000\n scrollYExtentsMin = 0.500000\n areaTriggersDirty = true\n scrollXExtentsMin = 0.500000\n SetCanvasSize = <function> defined @Interface\\AddOns\\Blizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:217\n normalizedZoomLerpAmount = 0.150000\n zoomAmountPerMouseWheelDelta = 0.075000\n GetScaleForMaxZoom = <function> defined @Interface\\AddOns\\Blizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:663\n CalculateLerpScaling = <function> defined @Interface\\AddOns\\Blizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:264\n GetCanvasScale = <function> defined @Interface\\AddOns\\Blizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:682\n FindBestLocationForClick = <function> defined @Interface\\AddOns\\Blizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:58\n OnMouseDown = <function> defined @Interface\\AddOns\\Blizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:26\n ShouldZoomInOnClick = <function> defined @Interface\\AddOns\\Blizzard_MapCanvas\\MapCanvas_ScrollContainerMix",
			["stack"] = "[string \"@Interface\\AddOns\\Blizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua\"]:428: in function `CreateZoomLevels'\n[string \"@Interface\\AddOns\\Blizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua\"]:415: in function `OnCanvasSizeChanged'\n[string \"@Interface\\AddOns\\Blizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua\"]:407: in function `SetMapID'\n[string \"@Interface\\AddOns\\Blizzard_MapCanvas\\Blizzard_MapCanvas.lua\"]:35: in function `SetMapID'\n[string \"@Interface\\AddOns\\ClassicCodex\\map.lua\"]:197: in function `ShowMapId'\n[string \"@Interface\\AddOns\\ClassicCodex\\quest.lua\"]:302: in function `ShowCurrentQuest'\n[string \"@Interface\\AddOns\\ClassicCodex\\quest.lua\"]:330: in function <Interface\\AddOns\\ClassicCodex\\quest.lua:329>",
			["session"] = 48,
			["counter"] = 2,
		}, -- [10]
		{
			["message"] = "Interface\\AddOns\\GearScoreLite\\GearScoreLite-0.1 (based on 3x04y05).lua:235: attempt to compare number with nil",
			["time"] = "2022/05/02 23:47:41",
			["locals"] = "ItemScore = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to compare number with nil\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\GearScoreLite\\GearScoreLite-0.1 (based on 3x04y05).lua\"]:235: in function `GearScore_GetQuality'\n[string \"@Interface\\AddOns\\GearScoreLite\\GearScoreLite-0.1 (based on 3x04y05).lua\"]:448: in function `GearScore_SetTargetData'\n[string \"@Interface\\AddOns\\GearScoreLite\\GearScoreLite-0.1 (based on 3x04y05).lua\"]:328: in function <Interface\\AddOns\\GearScoreLite\\GearScoreLite.lua:326>",
			["session"] = 51,
			["counter"] = 21,
		}, -- [11]
		{
			["message"] = "...ce\\AddOns\\Questie\\Modules\\Tracker\\QuestieTracker.lua:1114: bad argument #1 to 'unpack' (table expected, got nil)",
			["time"] = "2022/05/07 00:03:25",
			["locals"] = "(*temporary) = nil\n(*temporary) = \"table expected, got nil\"\n",
			["stack"] = "[string \"=[C]\"]: in function `unpack'\n[string \"@Interface\\AddOns\\Questie\\Modules\\Tracker\\QuestieTracker.lua\"]:1114: in function `ResetDurabilityFrame'\n[string \"@Interface\\AddOns\\Questie\\Modules\\Tracker\\QuestieTracker.lua\"]:1177: in function `Disable'\n[string \"@Interface\\AddOns\\DBM-Core\\DBM-Core-7661e31.lua\"]:4866: in function `StartCombat'\n[string \"@Interface\\AddOns\\DBM-Core\\DBM-Core-7661e31.lua\"]:4444: in function `handler'\n[string \"@Interface\\AddOns\\DBM-Core\\DBM-Core-7661e31.lua\"]:899: in function <Interface\\AddOns\\DBM-Core\\DBM-Core.lua:886>",
			["session"] = 62,
			["counter"] = 1,
		}, -- [12]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] 插件 'ElvUI' 嘗試調用保護功能 'PartyMemberFrame1:Hide()'。",
			["time"] = "2022/04/03 19:47:38",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\AddOns\\ElvUI\\Core\\Modules\\UnitFrames\\UnitFrames.lua\"]:1267: in function <...\\AddOns\\ElvUI\\Core\\Modules\\UnitFrames\\UnitFrames.lua:1257>\n[string \"@Interface\\AddOns\\ElvUI\\Core\\Modules\\UnitFrames\\UnitFrames.lua\"]:1343: in function `DisableBlizzard'\n[string \"@Interface\\AddOns\\ElvUI\\Core\\Modules\\UnitFrames\\UnitFrames.lua\"]:1180: in function `UpdateAllHeaders'\n[string \"@Interface\\AddOns\\ElvUI\\Core\\Modules\\UnitFrames\\UnitFrames.lua\"]:961: in function `HandleSmartVisibility'\n[string \"@Interface\\AddOns\\ElvUI\\Core\\Modules\\UnitFrames\\UnitFrames.lua\"]:966: in function `?'\n[string \"@Interface\\AddOns\\ElvUI\\Libraries\\Core\\Ace\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:119: in function <...Core\\Ace\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\ElvUI\\Libraries\\Core\\Ace\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:29: in function <...Core\\Ace\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n[string \"@Interface\\AddOns\\ElvUI\\Libraries\\Core\\Ace\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:64: in function `Fire'\n[string \"@Interface\\AddOns\\ElvUI\\Libraries\\Core\\Ace\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:120: in function <...vUI\\Libraries\\Core\\Ace\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 68,
			["counter"] = 8,
		}, -- [13]
		{
			["message"] = "Interface\\AddOns\\DBM-Sunwell\\KalecgosFrame.lua:14: attempt to index field 'Options' (a nil value)",
			["time"] = "2022/05/14 23:48:41",
			["locals"] = "Skipped (In Encounter)",
			["stack"] = "[string \"@Interface\\AddOns\\DBM-Sunwell\\KalecgosFrame.lua\"]:14: in function `initFunction'\n[string \"@Interface\\FrameXML\\UIDropDownMenu.lua\"]:79: in function `UIDropDownMenu_Initialize'\n[string \"*:OnMouseUp\"]:5: in function <[string \"*:OnMouseUp\"]:1>",
			["session"] = 78,
			["counter"] = 2,
		}, -- [14]
		{
			["message"] = "Interface\\AddOns\\SpellReplay\\SpellReplay.lua:89: attempt to index field '?' (a nil value)",
			["time"] = "2022/05/07 00:04:00",
			["locals"] = "Skipped (In Encounter)",
			["stack"] = "[string \"@Interface\\AddOns\\SpellReplay\\SpellReplay.lua\"]:89: in function <Interface\\AddOns\\SpellReplay\\SpellReplay.lua:87>\n[string \"=[C]\"]: in function `SetUIVisibility'\n[string \"TOGGLEUI\"]:7: in function <[string \"TOGGLEUI\"]:1>",
			["session"] = 80,
			["counter"] = 6,
		}, -- [15]
		{
			["message"] = "Interface\\AddOns\\SpellReplay\\SpellReplay.lua:67: attempt to index field '?' (a nil value)",
			["time"] = "2022/05/07 00:04:00",
			["locals"] = "Skipped (In Encounter)",
			["stack"] = "[string \"@Interface\\AddOns\\SpellReplay\\SpellReplay.lua\"]:67: in function <Interface\\AddOns\\SpellReplay\\SpellReplay.lua:65>\n[string \"=[C]\"]: in function `SetUIVisibility'\n[string \"TOGGLEUI\"]:7: in function <[string \"TOGGLEUI\"]:1>",
			["session"] = 80,
			["counter"] = 6,
		}, -- [16]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] 插件 'ClassicCodex-loader' 尝试调用保护功能 'CompactRaidFrame9:Hide()'。",
			["time"] = "2022/05/22 01:17:11",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:361: in function `CompactUnitFrame_UpdateVisible'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:292: in function `CompactUnitFrame_UpdateAll'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:187: in function <Interface\\FrameXML\\CompactUnitFrame.lua:187>",
			["session"] = 81,
			["counter"] = 1,
		}, -- [17]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] 插件 'ClassicCodex-loader' 尝试调用保护功能 'CompactRaidFrame3:Show()'。",
			["time"] = "2022/05/21 20:46:40",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:359: in function `CompactUnitFrame_UpdateVisible'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:292: in function `CompactUnitFrame_UpdateAll'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:187: in function <Interface\\FrameXML\\CompactUnitFrame.lua:187>",
			["session"] = 83,
			["counter"] = 2,
		}, -- [18]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] 插件 'ClassicCodex-loader' 尝试调用保护功能 'CompactRaidFrame5:Show()'。",
			["time"] = "2022/05/24 00:04:29",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:359: in function `CompactUnitFrame_UpdateVisible'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:292: in function `CompactUnitFrame_UpdateAll'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:56: in function <Interface\\FrameXML\\CompactUnitFrame.lua:53>",
			["session"] = 88,
			["counter"] = 1,
		}, -- [19]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] 插件 'ElvUI' 尝试调用保护功能 'CreateFrame()'。",
			["time"] = "2022/05/22 20:24:54",
			["locals"] = "Skipped (In Encounter)",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `CreateFrame'\n[string \"@Interface\\FrameXML\\SecureGroupHeaders.lua\"]:171: in function <Interface\\FrameXML\\SecureGroupHeaders.lua:130>\n[string \"@Interface\\FrameXML\\SecureGroupHeaders.lua\"]:495: in function `SecureGroupHeader_Update'\n[string \"@Interface\\FrameXML\\SecureGroupHeaders.lua\"]:62: in function <Interface\\FrameXML\\SecureGroupHeaders.lua:60>",
			["session"] = 94,
			["counter"] = 2,
		}, -- [20]
		{
			["message"] = "Interface\\AddOns\\LootMonitor\\LootMonitor-3.30.lua:1163: attempt to index field '?' (a nil value)",
			["time"] = "2022/04/16 20:50:27",
			["locals"] = "self = <unnamed> {\n 0 = <userdata>\n CHAT_MSG_ADDON = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:761\n COMBAT_LOG_EVENT_UNFILTERED = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:1209\n PLAYER_ENTERING_WORLD = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:710\n GROUP_ROSTER_UPDATE = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:1041\n UNIT_FLAGS = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:1072\n PLAYER_LOGOUT = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:727\n LOOT_OPENED = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:1143\n ADDON_LOADED = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:644\n}\nLoots = <table> {\n 2 = <table> {\n }\n 3 = <table> {\n }\n 4 = <table> {\n }\n}\nLootLink = <table> {\n}\nTargetGUID = nil\n(for index) = 1\n(for limit) = 4\n(for step) = 1\ni = 1\n(*temporary) = nil\n(*temporary) = 1\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index field '?' (a nil value)\"\nUnitInBattleground = <function> defined =[C]:-1\nIsInGroup = <function> defined =[C]:-1\nIsFishingLoot = <function> defined =[C]:-1\nGetLootInfo = <function> defined =[C]:-1\nGetLootSourceInfo = <function> defined =[C]:-1\nConfig = <table> {\n Enabled = true\n ExpireDay = 14\n EnteringCheck = true\n OutputPos = <table> {\n }\n SetWindowPos = <table> {\n }\n MinimapIconAngle = 310\n ShowMinimapIcon = true\n BossOnly = false\n Quality = 3\n OutputToRaidWarning = false\n}\nt_insert = <function> defined =[C]:-1\nGetLootSlotLink = <function> defined =[C]:-1\nUnitExists = <function> defined =[C]:-1\nUnitGUID = <function> defined =[C]:-1\nUnitName = <function> defined =[C]:-1\nAddon = <table> {\n SetWindow = <table> {\n }\n UpdatePosition = <function> defined @Interface\\AddOns\\LootMonitor\\MinimapIcon.lua:81\n LDBIcon = <table> {\n }\n LDB = <table> {\n }\n GetMobNameFromGUID = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:189\n InitGroupInfo = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:349\n CleanLootLogs = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:555\n NewLoots = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:225\n GroupState = <table> {\n }\n PrintLootLog = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:498\n InitGroupFlags = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:272\n DoShowState = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:473\n MinimapIcon = <table> {\n }\n UpdateGroupInfo = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:404\n DoUpdateCheck = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:238\n NewRaid = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:210\n RaidInstanceID = <table> {\n }\n DoReply = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:260\n Output = <table> {\n }\n DoCheck = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:246\n Config = <table> {\n }\n Version = \"3.30\"\n GetUnitPartyUnit = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:177\n IsRaidBoss = <table> {\n }\n Frame = <unnamed> {\n }\n UpdateTable = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:162\n L = <table> {\n }\n}\nCorpseInfo = <table> {\n Creature-0-4490-564-4749-22883-00005AB4F2 = <table> {\n }\n Creature-0-4490-564-4749-1964-00005ABAB6 = <table> {\n }\n Creature-0-4490-564-4749-22954-00005AA9C5 = <table> {\n }\n Creature-0-4490-564-4749-1964-00015AB9FE = <table> {\n }\n Creature-0-4490-564-4749-22877-00035AA9C5 = <table> {\n }\n Creature-0-4490-564-4749-22963-00085AA9C6 = <table> {\n }\n Creature-0-4490-564-4749-1964-0000DAB753 = <table> {\n }\n Creature-0-4490-564-4749-23028-0002DAA9C6 = <table> {\n }\n Creature-0-4490-564-4749-22869-0002DAA9C5 = <table> {\n }\n Creature-0-4490-564-4749-22883-00025AA9C5 = <table> {\n }\n Creature-0-4490-564-4749-22883-000EDAA9C5 = <table> {\n }\n Creature-0-4490-564-4749-22873-0000DAA9C5 = <table> {\n }\n Creature-0-4490-564-4749-23087-00005AA9C5 = <table> ",
			["stack"] = "[string \"@Interface\\AddOns\\LootMonitor\\LootMonitor-3.30.lua\"]:1163: in function <Interface\\AddOns\\LootMonitor\\LootMonitor.lua:1143>\n[string \"=(tail call)\"]: ?",
			["session"] = 94,
			["counter"] = 3,
		}, -- [21]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] 插件 'ClassicCodex-loader' 尝试调用保护功能 'CompactRaidFrame9:SetAttribute()'。",
			["time"] = "2022/06/02 22:21:51",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `SetAttribute'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:163: in function `CompactUnitFrame_SetUnit'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameContainer.lua\"]:318: in function `CompactRaidFrameContainer_AddUnitFrame'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameContainer.lua\"]:254: in function `CompactRaidFrameContainer_AddPlayers'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameContainer.lua\"]:176: in function `CompactRaidFrameContainer_LayoutFrames'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameContainer.lua\"]:130: in function `CompactRaidFrameContainer_TryUpdate'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameContainer.lua\"]:57: in function `CompactRaidFrameContainer_OnEvent'\n[string \"*:OnEvent\"]:1: in function <[string \"*:OnEvent\"]:1>",
			["session"] = 96,
			["counter"] = 1,
		}, -- [22]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] 插件 'ItemRack' 尝试调用保护功能 'AutoEquipCursorItem()'。",
			["time"] = "2022/06/03 02:46:18",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `AutoEquipCursorItem'\n[string \"*:OnMouseUp\"]:4: in function `oldCharacterModelFrame_OnMouseUp'\n[string \"@Interface\\AddOns\\ItemRack\\ItemRackButtons.lua\"]:105: in function <Interface\\AddOns\\ItemRack\\ItemRackButtons.lua:101>",
			["session"] = 99,
			["counter"] = 1,
		}, -- [23]
		{
			["message"] = "...erface\\AddOns\\TradeSkillMaster\\LibTSM\\Util\\Event.lua:97: assertion failed!",
			["time"] = "2022/06/04 00:02:20",
			["locals"] = "(*temporary) = false\n",
			["stack"] = "[string \"=[C]\"]: in function `assert'\n[string \"@Interface\\AddOns\\TradeSkillMaster\\LibTSM\\Util\\Event.lua\"]:97: in function <...erface\\AddOns\\TradeSkillMaster\\LibTSM\\Util\\Event.lua:93>",
			["session"] = 100,
			["counter"] = 51,
		}, -- [24]
		{
			["message"] = "...Master\\LibTSM\\Service\\ItemTooltipClasses\\Builder.lua:228: assertion failed!",
			["time"] = "2022/06/04 00:04:37",
			["locals"] = "(*temporary) = false\n",
			["stack"] = "[string \"=[C]\"]: in function `assert'\n[string \"@Interface\\AddOns\\TradeSkillMaster\\LibTSM\\Service\\ItemTooltipClasses\\Builder.lua\"]:228: in function <...Master\\LibTSM\\Service\\ItemTooltipClasses\\Builder.lua:227>\n[string \"=(tail call)\"]: ?\n[string \"@Interface\\AddOns\\TradeSkillMaster\\LibTSM\\Service\\ItemTooltipClasses\\Wrapper.lua\"]:202: in function `SetTooltipItem'\n[string \"@Interface\\AddOns\\TradeSkillMaster\\LibTSM\\Service\\ItemTooltipClasses\\Wrapper.lua\"]:142: in function <...Master\\LibTSM\\Service\\ItemTooltipClasses\\Wrapper.lua:122>\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\LoonBestInSlot\\libs\\LibExtraTip\\LibExtraTip.lua\"]:482: in function <...dOns\\LoonBestInSlot\\libs\\LibExtraTip\\LibExtraTip.lua:476>\n...\n[string \"@Interface\\AddOns\\TradeSkillMaster\\LibTSM\\Service\\ItemTooltipClasses\\Wrapper.lua\"]:107: in function <...Master\\LibTSM\\Service\\ItemTooltipClasses\\Wrapper.lua:105>\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\LoonBestInSlot\\libs\\LibExtraTip\\LibExtraTip.lua\"]:408: in function `SetInventoryItem'\n[string \"@Interface_TBC\\FrameXML\\PaperDollFrame.lua\"]:1516: in function `UpdateTooltip'\n[string \"@Interface\\FrameXML\\GameTooltip.lua\"]:429: in function <Interface\\FrameXML\\GameTooltip.lua:408>\n[string \"=[C]\"]: ?",
			["session"] = 100,
			["counter"] = 380,
		}, -- [25]
		{
			["message"] = "...ce\\AddOns\\TradeSkillMaster\\LibTSM\\Util\\TempTable.lua:41: Could not acquire temp table",
			["time"] = "2022/06/04 00:04:14",
			["locals"] = "(*temporary) = nil\n(*temporary) = \"Could not acquire temp table\"\n",
			["stack"] = "[string \"=[C]\"]: in function `assert'\n[string \"@Interface\\AddOns\\TradeSkillMaster\\LibTSM\\Util\\TempTable.lua\"]:41: in function `Acquire'\n[string \"@Interface\\AddOns\\TradeSkillMaster\\LibTSM\\Util\\Event.lua\"]:96: in function <...erface\\AddOns\\TradeSkillMaster\\LibTSM\\Util\\Event.lua:93>",
			["session"] = 100,
			["counter"] = 1127,
		}, -- [26]
		{
			["message"] = "...e\\AddOns\\TradeSkillMaster\\Core\\UI\\AuctionUI\\Core.lua:232: assertion failed!",
			["time"] = "2022/05/23 00:10:57",
			["locals"] = "(*temporary) = false\n",
			["stack"] = "[string \"=[C]\"]: in function `assert'\n[string \"@Interface\\AddOns\\TradeSkillMaster\\Core\\UI\\AuctionUI\\Core.lua\"]:232: in function `callback'\n[string \"@Interface\\AddOns\\TradeSkillMaster\\LibTSM\\Util\\Event.lua\"]:85: in function `ProcessEvent'\n[string \"@Interface\\AddOns\\TradeSkillMaster\\LibTSM\\Util\\Event.lua\"]:101: in function <...erface\\AddOns\\TradeSkillMaster\\LibTSM\\Util\\Event.lua:93>\n[string \"=[C]\"]: in function `CloseAuctionHouse'\n[string \"@Interface\\AddOns\\aux-addon\\frame.lua\"]:29: in function <Interface\\AddOns\\aux-addon\\frame.lua:29>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\AddOns\\aux-addon\\frame.lua\"]:54: in function <Interface\\AddOns\\aux-addon\\frame.lua:54>",
			["session"] = 101,
			["counter"] = 3,
		}, -- [27]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] 插件 'ClassicCodex-loader' 尝试调用保护功能 'CompactRaidFrame34:Show()'。",
			["time"] = "2022/05/21 22:43:27",
			["locals"] = "Skipped (In Encounter)",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:359: in function `CompactUnitFrame_UpdateVisible'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:292: in function `CompactUnitFrame_UpdateAll'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:187: in function <Interface\\FrameXML\\CompactUnitFrame.lua:187>",
			["session"] = 104,
			["counter"] = 3,
		}, -- [28]
		{
			["message"] = "...TBC\\AddOns\\Blizzard_AuctionUI\\Blizzard_AuctionUI.lua:751: attempt to index local 'color' (a nil value)",
			["time"] = "2022/04/09 01:12:48",
			["locals"] = "numBatchAuctions = 23328\ntotalAuctions = 23328\nbutton = BrowseButton2 {\n 0 = <userdata>\n itemCount = 1\n bidAmount = 47500\n buyoutPrice = 50000\n itemIndex = 2\n PriceTooltipFrame = <unnamed> {\n }\n}\nbuttonName = \"BrowseButton2\"\nbuttonHighlight = BrowseButton2Highlight {\n 0 = <userdata>\n PixelSnapDisabled = true\n}\niconTexture = BrowseButton1ItemIconTexture {\n 0 = <userdata>\n PixelSnapDisabled = true\n}\nitemName = BrowseButton2Name {\n SetVertexColor = <function> defined =[C]:-1\n PixelSnapDisabled = true\n 0 = <userdata>\n Hide = <function> defined =[C]:-1\n}\ncolor = nil\nitemCount = BrowseButton1ItemCount {\n 0 = <userdata>\n}\nmoneyFrame = BrowseButton1MoneyFrame {\n 0 = <userdata>\n vadjust = 1\n trialErrorButton = BrowseButton1MoneyFrameTrialErrorButton {\n }\n moneyType = \"AUCTION\"\n info = <table> {\n }\n small = 1\n staticMoney = 469680\n maxDisplayWidth = 146\n}\nyourBidText = BrowseButton1YourBidText {\n 0 = <userdata>\n}\nbuyoutFrame = BrowseButton1BuyoutFrame {\n 0 = <userdata>\n}\nbuyoutMoney = BrowseButton1BuyoutFrameMoney {\n 0 = <userdata>\n vadjust = 1\n trialErrorButton = BrowseButton1BuyoutFrameMoneyTrialErrorButton {\n }\n moneyType = \"AUCTION\"\n info = <table> {\n }\n small = 1\n staticMoney = 494400\n maxDisplayWidth = 146\n}\noffset = 0\nindex = 2\nisLastSlotEmpty = nil\nname = \"\"\ntexture = 135616\ncount = 1\nquality = -1\ncanUse = false\nlevel = 990722560\nlevelColHeader = nil\nminBid = 295419\nminIncrement = 0\nbuyoutPrice = 310968\nduration = 2\nbidAmount = 0\nhighBidder = false\nbidderFullName = nil\nowner = nil\nownerFullName = nil\nsaleStatus = 0\nitemId = 4369\nhasAllInfo = true\ndisplayedPrice = 469680\nrequiredBid = 469680\n(for index) = 2\n(for limit) = 8\n(for step) = 1\ni = 2\nshouldHide = false\n(*temporary) = <function> defined =[C]:-1\n(*temporary) = BrowseButton2Name {\n SetVertexColor = <function> defined =[C]:-1\n PixelSnapDisabled = true\n 0 = <userdata>\n Hide = <function> defined =[C]:-1\n}\n(*temporary) = \"\"\n(*temporary) = <userdata>\n(*temporary) = false\n(*temporary) = 990722560\n(*temporary) = nil\n(*temporary) = 295419\n(*temporary) = 0\n(*temporary) = 310968\n(*temporary) = 0\n(*temporary) = false\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = 0\n(*temporary) = 4369\n(*temporary) = true\n(*temporary) = \"attempt to index local 'color' (a nil value)\"\n",
			["stack"] = "[string \"@Interface_TBC\\AddOns\\Blizzard_AuctionUI\\Blizzard_AuctionUI.lua\"]:751: in function <...TBC\\AddOns\\Blizzard_AuctionUI\\Blizzard_AuctionUI.lua:684>\n[string \"=(tail call)\"]: ?\n[string \"@Interface_TBC\\AddOns\\Blizzard_AuctionUI\\Blizzard_AuctionUI.lua\"]:277: in function <...TBC\\AddOns\\Blizzard_AuctionUI\\Blizzard_AuctionUI.lua:275>",
			["session"] = 106,
			["counter"] = 8,
		}, -- [29]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] 插件 'ClassicCodex-loader' 尝试调用保护功能 'CompactRaidFrame6:Show()'。",
			["time"] = "2022/05/28 23:52:24",
			["locals"] = "Skipped (In Encounter)",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:359: in function `CompactUnitFrame_UpdateVisible'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:292: in function `CompactUnitFrame_UpdateAll'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:187: in function <Interface\\FrameXML\\CompactUnitFrame.lua:187>",
			["session"] = 108,
			["counter"] = 2,
		}, -- [30]
		{
			["message"] = "Interface\\AddOns\\LootMonitor\\LootMonitor-3.30.lua:909: attempt to index field '?' (a nil value)",
			["time"] = "2022/05/28 23:29:45",
			["locals"] = "self = <unnamed> {\n 0 = <userdata>\n CHAT_MSG_ADDON = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:761\n COMBAT_LOG_EVENT_UNFILTERED = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:1209\n PLAYER_ENTERING_WORLD = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:710\n GROUP_ROSTER_UPDATE = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:1041\n UNIT_FLAGS = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:1072\n PLAYER_LOGOUT = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:727\n LOOT_OPENED = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:1143\n ADDON_LOADED = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:644\n}\narg = <table> {\n 1 = \"LMPX\"\n 2 = \"looter Creature-0-5580-580-1098-25483-0001923B45 阿梨的聖騎士\"\n 3 = \"RAID\"\n 4 = \"不死夜空-伊弗斯\"\n 5 = \"不死夜空\"\n 6 = 0\n 7 = 0\n 8 = \"\"\n 9 = 0\n}\nCMD = \"looter\"\nREST = \"Creature-0-5580-580-1098-25483-0001923B45 阿梨的聖騎士\"\nOutputChannel = \"raid\"\nTargetGUID = \"Creature-0-5580-580-1098-25483-0001923B45\"\nLooter = \"阿梨的聖騎士\"\n(*temporary) = \"不死夜空\"\n(*temporary) = nil\n(*temporary) = \"阿梨的聖騎士\"\n(*temporary) = 0\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index field '?' (a nil value)\"\nUnitInBattleground = <function> defined =[C]:-1\nIsInGroup = <function> defined =[C]:-1\nPrefixLM = \"LMPX\"\nIsInRaid = <function> defined =[C]:-1\nUnitIsGroupLeader = <function> defined =[C]:-1\nUnitIsGroupAssistant = <function> defined =[C]:-1\nConfig = <table> {\n Enabled = true\n ExpireDay = 14\n EnteringCheck = true\n OutputPos = <table> {\n }\n SetWindowPos = <table> {\n }\n MinimapIconAngle = 310\n ShowMinimapIcon = true\n BossOnly = false\n Quality = 3\n OutputToRaidWarning = false\n}\nAddon = <table> {\n SetWindow = <table> {\n }\n UpdatePosition = <function> defined @Interface\\AddOns\\LootMonitor\\MinimapIcon.lua:81\n LDBIcon = <table> {\n }\n LDB = <table> {\n }\n GetMobNameFromGUID = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:189\n InitGroupInfo = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:349\n CleanLootLogs = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:555\n NewLoots = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:225\n GroupState = <table> {\n }\n PrintLootLog = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:498\n InitGroupFlags = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:272\n DoShowState = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:473\n MinimapIcon = <table> {\n }\n UpdateGroupInfo = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:404\n DoUpdateCheck = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:238\n NewRaid = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:210\n RaidInstanceID = <table> {\n }\n DoReply = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:260\n Output = <table> {\n }\n DoCheck = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:246\n Config = <table> {\n }\n Version = \"3.30\"\n GetUnitPartyUnit = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:177\n IsRaidBoss = <table> {\n }\n Frame = <unnamed> {\n }\n UpdateTable = <function> defined @Interface\\AddOns\\LootMonitor\\LootMonitor.lua:162\n L = <table> {\n }\n}\nAnnounce = <table> {\n Index = 0\n Rank = \"NONE\"\n}\nCorpseInfo = <table> {\n}\nGetTime = <function> defined =[C]:-1\nGroupMemberStates = <table> {\n 1 = <table> {\n }\n 2 = <table> {\n }\n 3 = <table> {\n }\n 4 = <table> {\n }\n 5 = <table> {\n }\n 6 = <table> {\n }\n 7 = <table> {\n }\n 8 = <table> {\n }\n 9 = <table> {\n }\n 10 = <table> {\n }\n 11 = <table> {\n }\n 12 = <table> {\n }\n 13 = <table> {\n }\n 14 = <table> {\n }\n 15 = <table> {\n }\n 16 = <table> {\n }\n 17 = <table> {\n }\n 18 = <table> {\n }\n 19 = <table> {\n }\n 20 = <table> {\n }\n 21 = <table> {\n }\n 22 = <tabl",
			["stack"] = "[string \"@Interface\\AddOns\\LootMonitor\\LootMonitor-3.30.lua\"]:909: in function <Interface\\AddOns\\LootMonitor\\LootMonitor.lua:761>\n[string \"=(tail call)\"]: ?",
			["session"] = 110,
			["counter"] = 3,
		}, -- [31]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] 插件 'ClassicCodex-loader' 尝试调用保护功能 'CompactRaidFrame9:Show()'。",
			["time"] = "2022/06/05 21:19:55",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:359: in function `CompactUnitFrame_UpdateVisible'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:292: in function `CompactUnitFrame_UpdateAll'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:187: in function <Interface\\FrameXML\\CompactUnitFrame.lua:187>",
			["session"] = 110,
			["counter"] = 1,
		}, -- [32]
		{
			["message"] = "...ies\\Core\\Ace\\AceSerializer-3.0\\AceSerializer-3.0-5.lua:247: bad argument #1 to 'gsub' (string expected, got nil)",
			["time"] = "2022/06/05 21:37:15",
			["stack"] = "[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\ElvUI\\Libraries\\Core\\Ace\\AceSerializer-3.0\\AceSerializer-3.0-5.lua\"]:247: in function `Deserialize'\n[string \"@Interface\\AddOns\\Details\\core\\network.lua\"]:404: in function `func'\n[string \"@Interface\\AddOns\\Details\\core\\network.lua\"]:650: in function `?'\n[string \"@Interface\\AddOns\\ElvUI\\Libraries\\Core\\Ace\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:119: in function <...Core\\Ace\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\ElvUI\\Libraries\\Core\\Ace\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:29: in function <...Core\\Ace\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n[string \"@Interface\\AddOns\\ElvUI\\Libraries\\Core\\Ace\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:64: in function `Fire'\n[string \"@Interface\\AddOns\\ElvUI\\Libraries\\Core\\Ace\\AceComm-3.0\\AceComm-3.0-12.lua\"]:222: in function `OnReceiveMultipartLast'\n[string \"@Interface\\AddOns\\ElvUI\\Libraries\\Core\\Ace\\AceComm-3.0\\AceComm-3.0-12.lua\"]:256: in function <...ElvUI\\Libraries\\Core\\Ace\\AceComm-3.0\\AceComm-3.0.lua:246>",
			["session"] = 110,
			["counter"] = 1,
		}, -- [33]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] 插件 'ClassicCodex-loader' 尝试调用保护功能 'CompactRaidFrame6:Hide()'。",
			["time"] = "2022/06/04 21:46:13",
			["locals"] = "Skipped (In Encounter)",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:361: in function `CompactUnitFrame_UpdateVisible'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:292: in function `CompactUnitFrame_UpdateAll'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:187: in function <Interface\\FrameXML\\CompactUnitFrame.lua:187>",
			["session"] = 112,
			["counter"] = 3,
		}, -- [34]
		{
			["message"] = "[string \"Error in: 2.6/2.6 同速 2\"]:5: attempt to perform arithmetic on field 'expirationTime' (a nil value)",
			["time"] = "2022/04/07 01:14:35",
			["stack"] = "[string \"=[C]\"]: in function `xpcall'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:611: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:537>\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:747: in function `ScanEventsInternal'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:708: in function `ScanEvents'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:1433: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:1431>",
			["session"] = 112,
			["counter"] = 82126,
		}, -- [35]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] 插件 'ClassicCodex-loader' 尝试调用保护功能 'CompactRaidFrame3:Hide()'。",
			["time"] = "2022/06/12 20:25:55",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:361: in function `CompactUnitFrame_UpdateVisible'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:292: in function `CompactUnitFrame_UpdateAll'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:187: in function <Interface\\FrameXML\\CompactUnitFrame.lua:187>",
			["session"] = 114,
			["counter"] = 1,
		}, -- [36]
		{
			["message"] = "Interface\\AddOns\\ItemRack\\ItemRack-3.69.nil.lua:1943: Usage: SaveBindings(1||2)",
			["time"] = "2022/04/09 00:42:49",
			["locals"] = "(*temporary) = 0\n",
			["stack"] = "[string \"=[C]\"]: in function `SaveBindings'\n[string \"@Interface\\AddOns\\ItemRack\\ItemRack-3.69.nil.lua\"]:1943: in function `SetSetBindings'\n[string \"@Interface\\AddOns\\ItemRack\\ItemRack-3.69.nil.lua\"]:233: in function `?'\n[string \"@Interface\\AddOns\\ItemRack\\ItemRack-3.69.nil.lua\"]:198: in function `OnEvent'\n[string \"*:OnEvent\"]:1: in function <[string \"*:OnEvent\"]:1>",
			["session"] = 115,
			["counter"] = 5,
		}, -- [37]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] 插件 'ElvUI' 尝试调用保护功能 'PartyMemberFrame1:Hide()'。",
			["time"] = "2022/05/28 22:23:14",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\AddOns\\ElvUI\\Core\\Modules\\UnitFrames\\UnitFrames.lua\"]:1272: in function <...\\AddOns\\ElvUI\\Core\\Modules\\UnitFrames\\UnitFrames.lua:1262>\n[string \"@Interface\\AddOns\\ElvUI\\Core\\Modules\\UnitFrames\\UnitFrames.lua\"]:1348: in function `DisableBlizzard'\n[string \"@Interface\\AddOns\\ElvUI\\Core\\Modules\\UnitFrames\\UnitFrames.lua\"]:1185: in function `UpdateAllHeaders'\n[string \"@Interface\\AddOns\\ElvUI\\Core\\Modules\\UnitFrames\\UnitFrames.lua\"]:966: in function `HandleSmartVisibility'\n[string \"@Interface\\AddOns\\ElvUI\\Core\\Modules\\UnitFrames\\UnitFrames.lua\"]:971: in function `?'\n[string \"@Interface\\AddOns\\ElvUI\\Libraries\\Core\\Ace\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:119: in function <...Core\\Ace\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\ElvUI\\Libraries\\Core\\Ace\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:29: in function <...Core\\Ace\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n[string \"@Interface\\AddOns\\ElvUI\\Libraries\\Core\\Ace\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:64: in function `Fire'\n[string \"@Interface\\AddOns\\ElvUI\\Libraries\\Core\\Ace\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:120: in function <...vUI\\Libraries\\Core\\Ace\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 115,
			["counter"] = 5,
		}, -- [38]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] 插件 'ClassicCodex-loader' 尝试调用保护功能 'CompactRaidFrame10:Show()'。",
			["time"] = "2022/06/19 19:51:24",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:359: in function `CompactUnitFrame_UpdateVisible'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:292: in function `CompactUnitFrame_UpdateAll'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:125: in function <Interface\\FrameXML\\CompactUnitFrame.lua:53>",
			["session"] = 115,
			["counter"] = 1,
		}, -- [39]
		{
			["message"] = "Interface\\AddOns\\GearScoreLite\\GearScoreLite-0.1 (based on 3x04y05).lua:300: attempt to index a nil value",
			["time"] = "2022/04/03 15:14:50",
			["locals"] = "GearScore = 2966\nItemLevel = 117\nRed = 0.004080\nBlue = 0.966000\nGreen = 0.517000\ni = 0\nTooltipFound = 0\n(for index) = 4\n(for limit) = 4\n(for step) = 1\ni = 4\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"\"\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index a nil value\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\GearScoreLite\\GearScoreLite-0.1 (based on 3x04y05).lua\"]:300: in function `GearScore_UpdateGTData'\n[string \"@Interface\\AddOns\\GearScoreLite\\GearScoreLite-0.1 (based on 3x04y05).lua\"]:276: in function <Interface\\AddOns\\GearScoreLite\\GearScoreLite.lua:269>",
			["session"] = 115,
			["counter"] = 6563,
		}, -- [40]
	},
}
