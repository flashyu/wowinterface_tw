
BugGrabberDB = {
	["session"] = 2,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "...ace/AddOns/AdvancedInterfaceOptions/basicOptions.lua:351: attempt to index field 'CustomVars' (a nil value)",
			["time"] = "2023/06/22 17:47:57",
			["locals"] = "self = InterfaceOptionsCameraPanelMaxDistanceSlider {\n BottomLeftCorner = Texture {\n }\n Enable = <function> defined @Interface/FrameXML/OptionsPanelTemplates.lua:39\n OnBackdropLoaded = <function> defined @Interface/SharedXML/Backdrop.lua:152\n GetBackdropColor = <function> defined @Interface/SharedXML/Backdrop.lua:390\n value = 1\n TopLeftCorner = Texture {\n }\n RightEdge = Texture {\n }\n ApplyBackdrop = <function> defined @Interface/SharedXML/Backdrop.lua:294\n SetBackdrop = <function> defined @Interface/SharedXML/Backdrop.lua:329\n ClearBackdrop = <function> defined @Interface/SharedXML/Backdrop.lua:282\n GetBackdropBorderColor = <function> defined @Interface/SharedXML/Backdrop.lua:409\n GetBackdrop = <function> defined @Interface/SharedXML/Backdrop.lua:347\n Disable = <function> defined @Interface/FrameXML/OptionsPanelTemplates.lua:27\n SetBorderBlendMode = <function> defined @Interface/SharedXML/Backdrop.lua:266\n defaultValue = 1\n event = \"MAX_FOLLOW_DIST\"\n High = InterfaceOptionsCameraPanelMaxDistanceSliderHigh {\n }\n SetDisplayValue = <function> defined =[C]:-1\n tooltipText = \"调节最大跟随距离。\"\n SetupTextureCoordinates = <function> defined @Interface/SharedXML/Backdrop.lua:214\n OnBackdropSizeChanged = <function> defined @Interface/SharedXML/Backdrop.lua:182\n TopRightCorner = Texture {\n }\n backdrop = Frame {\n }\n GetEdgeSize = <function> defined @Interface/SharedXML/Backdrop.lua:188\n 0 = <userdata>\n cvar = \"cameraDistanceMaxZoomFactor\"\n type = 3\n Center = Texture {\n }\n BottomRightCorner = Texture {\n }\n TopEdge = Texture {\n }\n Text = InterfaceOptionsCameraPanelMaxDistanceSliderText {\n }\n BottomEdge = Texture {\n }\n Low = InterfaceOptionsCameraPanelMaxDistanceSliderLow {\n }\n HasBackdropInfo = <function> defined @Interface/SharedXML/Backdrop.lua:278\n SetBackdropBorderColor = <function> defined @Interface/SharedXML/Backdrop.lua:422\n Thumb = InterfaceOptionsCameraPanelMaxDistanceSliderThumb {\n }\n SetupPieceVisuals = <function> defined @Interface/SharedXML/Backdrop.lua:246\n SetBackdropColor = <function> defined @Interface/SharedXML/Backdrop.lua:399\n LeftEdge = Texture {\n }\n SetValue = <function> defined *InterfaceOptionsPanels.xml:2362_OnLoad:6\n}\n(*temporary) = nil\n(*temporary) = \"cameraDistanceMaxZoomFactor\"\n(*temporary) = \"attempt to index field 'CustomVars' (a nil value)\"\n",
			["stack"] = "[string \"@Interface/AddOns/AdvancedInterfaceOptions/basicOptions.lua\"]:351: in function <...ace/AddOns/AdvancedInterfaceOptions/basicOptions.lua:350>\n[string \"@Interface/AddOns/AdvancedInterfaceOptions/basicOptions.lua\"]:451: in function <...ace/AddOns/AdvancedInterfaceOptions/basicOptions.lua:449>\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `securecall'\n[string \"@Interface/FrameXML/OptionsPanelTemplates.lua\"]:401: in function <Interface/FrameXML/OptionsPanelTemplates.lua:357>",
			["session"] = 1,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "Interface/AddOns/GTFO/GTFO.lua:2079: attempt to index a nil value",
			["time"] = "2023/06/22 17:48:01",
			["locals"] = "(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"\"\n(*temporary) = \"\"\n(*temporary) = \"\"\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index a nil value\"\n",
			["stack"] = "[string \"@Interface/AddOns/GTFO/GTFO.lua\"]:2079: in function `GTFO_SaveSettings'\n[string \"@Interface/AddOns/GTFO/GTFO.lua\"]:2155: in function `GTFO_SetDefaults'\n[string \"@Interface/AddOns/GTFO/GTFO.lua\"]:174: in function `GTFO_OnEvent'\n[string \"*GTFO.xml:60_OnEvent\"]:1: in function <[string \"*GTFO.xml:60_OnEvent\"]:1>",
			["session"] = 1,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = ".../Modules/Nameplates/Elements/RaidTargetIndicator.lua:31: attempt to call method 'IsElementEnabled' (a nil value)",
			["time"] = "2023/06/22 17:48:10",
			["locals"] = "self = <table> {\n UnitSelectionType = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Nameplates.lua:56\n BORDER = 1\n SetNamePlateEnemyClickThrough = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Nameplates.lua:507\n modules = <table> {\n }\n CancelTimer = <function> defined @Interface/AddOns/ElvUI_Libraries/Core/Ace3/AceTimer-3.0/AceTimer-3.0.lua:147\n SecureHook = <function> defined @Interface/AddOns/ElvUI_Libraries/Core/Ace3/AceHook-3.0/AceHook-3.0.lua:335\n Update_Castbar = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Elements/CastBar.lua:199\n PlateGUID = <table> {\n }\n StyleFilterRemoveCustomCheck = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/StyleFilter.lua:1727\n ThreatIndicator_PreUpdate = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Elements/Threat.lua:16\n Construct_TagText = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Elements/Tags.lua:5\n StyleFilterBorderLock = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/StyleFilter.lua:519\n Health_SetColors = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Elements/Health.lua:89\n SetDefaultModulePrototype = <function> defined @Interface/AddOns/ElvUI_Libraries/Core/Ace3/AceAddon-3.0/AceAddon-3.0.lua:405\n BossMods_DisableHostile = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Elements/BossMods.lua:237\n ConfigureAll = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Nameplates.lua:611\n StyleFilterTargetFunction = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/StyleFilter.lua:1274\n Update_PortraitBackdrop = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Elements/Portraits.lua:27\n NewModule = <function> defined @Interface/AddOns/ElvUI_Libraries/Core/Ace3/AceAddon-3.0/AceAddon-3.0.lua:231\n IsEnabled = <function> defined @Interface/AddOns/ElvUI_Libraries/Core/Ace3/AceAddon-3.0/AceAddon-3.0.lua:447\n Update_BossMods = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Elements/BossMods.lua:271\n ScheduleTimer = <function> defined @Interface/AddOns/ElvUI_Libraries/Core/Ace3/AceTimer-3.0/AceTimer-3.0.lua:94\n PlayerNamePlateAnchor = ElvUIPlayerNamePlateAnchor {\n }\n StyleFilterAuraWait = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/StyleFilter.lua:326\n StyleFilterDefaultEvents = <table> {\n }\n StyleFilterEventWatch = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/StyleFilter.lua:1669\n multiplier = 0.350000\n RegisterMessage = <function> defined @Interface/AddOns/ElvUI_Libraries/Core/CallbackHandler-1.0/CallbackHandler-1.0.lua:80\n ResetSettings = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Nameplates.lua:78\n SetNamePlateClickThrough = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Nameplates.lua:490\n StyleFilterClearVisibility = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/StyleFilter.lua:658\n hooks = <table> {\n }\n GroupRoles = <table> {\n }\n UnregisterMessage = <function> defined @Interface/AddOns/ElvUI_Libraries/Core/CallbackHandler-1.0/CallbackHandler-1.0.lua:143\n ThreatIndicator_PostUpdate = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Elements/Threat.lua:33\n UpdateAuraSettings = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Elements/Auras.lua:171\n SPACING = 0\n Update_QuestIcons = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Elements/Plugins.lua:33\n StyleFilterTickerCreate = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/StyleFilter.lua:322\n SetEnabledState = <function> defined @Interface/AddOns/ElvUI_Libraries/Core/Ace3/AceAddon-3.0/AceAddon-3.0.lua:420\n Hook = <function> defined @Interface/AddOns/ElvUI_Libraries/Core/Ace3/AceHook-3.0/AceHook-3.0.lua:273\n UpdatePlateType = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Nameplates.lua:658\n Update_PvPIndicator = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates",
			["stack"] = "[string \"@Interface/AddOns/ElvUI/Core/Modules/Nameplates/Elements/RaidTargetIndicator.lua\"]:31: in function `Update_RaidTargetIndicator'\n[string \"@Interface/AddOns/ElvUI/Core/Modules/Nameplates/Nameplates.lua\"]:338: in function `UpdatePlate'\n[string \"@Interface/AddOns/ElvUI/Core/Modules/Nameplates/Nameplates.lua\"]:700: in function `UpdatePlateBase'\n[string \"@Interface/AddOns/ElvUI/Core/Modules/Nameplates/Nameplates.lua\"]:721: in function `NamePlateCallBack'\n[string \"@Interface/AddOns/ElvUI/Core/Modules/Nameplates/Nameplates.lua\"]:967: in function <.../AddOns/ElvUI/Core/Modules/Nameplates/Nameplates.lua:966>\n[string \"@Interface/AddOns/ElvUI_Libraries/Core/oUF/ouf.lua\"]:844: in function <Interface/AddOns/ElvUI_Libraries/Core/oUF/ouf.lua:821>",
			["session"] = 1,
			["counter"] = 4,
		}, -- [3]
		{
			["message"] = "Interface/AddOns/Plater/libs/DF/panel.lua:8414: attempt to call method 'Hide' (a nil value)",
			["time"] = "2023/06/22 17:48:11",
			["locals"] = "self = NamePlate3PlaterUnitFrame {\n UpdateUnitFrame = <function> defined @Interface/AddOns/Plater/libs/DF/panel.lua:8602\n Plater = true\n ActorType = \"enemynpc\"\n HasHideHookRegistered = true\n ExtraAuraCache = <table> {\n }\n GetBackdropColor = <function> defined @Interface/SharedXML/Backdrop.lua:390\n IsTarget = false\n IsUIParent = true\n TargetNeonDown = Texture {\n }\n powerBar = NamePlate3PlaterUnitFramePowerBar {\n }\n isSoftInteract = false\n CanCheckAggro = true\n ClearBackdrop = <function> defined @Interface/SharedXML/Backdrop.lua:282\n classFile = \"WARRIOR\"\n ScriptRunInitialization = <function> defined @Interface/AddOns/Plater/Plater.lua:11298\n namePlateUnitToken = \"nameplate3\"\n aggroGlowUpper = Texture {\n }\n GhostAuraCache = <table> {\n }\n ScriptRunOnShow = <function> defined @Interface/AddOns/Plater/Plater.lua:11259\n widgetsOnly = false\n namePlateNpcId = 20295\n softInteractIcon = NamePlate3PlaterUnitFramesoftInteractIconFrameIcon {\n }\n unit = \"nameplate3\"\n UnregisterEvents = <function> defined @Interface/AddOns/Plater/libs/DF/panel.lua:8342\n HasBackdropInfo = <function> defined @Interface/SharedXML/Backdrop.lua:278\n widgetSet = false\n RegisterEvents = <function> defined @Interface/AddOns/Plater/libs/DF/panel.lua:8316\n IsUnitNameplate = true\n ExtraIconFrame = NamePlate3PlaterUnitFrameExtraIconRow {\n }\n RefreshID = 6\n reaction = 2\n namePlateUnitName = \"泥沼重壳龙虾人\"\n ScriptRunNoAttach = <function> defined @Interface/AddOns/Plater/Plater.lua:11332\n SetHealthBarColor = <function> defined @Interface/AddOns/Plater/libs/DF/panel.lua:8311\n HasHooksRegistered = true\n IsUnitEvent = <table> {\n }\n namePlateThreatPercent = 0\n UNIT_ENTERED_VEHICLE = <function> defined @Interface/AddOns/Plater/libs/DF/panel.lua:8634\n CheckVehiclePossession = <function> defined @Interface/AddOns/Plater/libs/DF/panel.lua:8430\n HighlightFrame = NamePlate3PlaterUnitFrameHealthBarHighlightOverlay {\n }\n ScriptRunOnHide = <function> defined @Interface/AddOns/Plater/Plater.lua:11282\n UNIT_PET = <function> defined @Interface/AddOns/Plater/libs/DF/panel.lua:8642\n ScriptHotReload = <function> defined @Interface/AddOns/Plater/Plater.lua:11217\n ScriptRunOnUpdate = <function> defined @Interface/AddOns/Plater/Plater.lua:11239\n castBar2 = NamePlate3PlaterUnitFrameCastBar2 {\n }\n isPVPSanctuary = false\n nameplateScaleAdjust = 1\n healthBar = NamePlate3PlaterUnitFrameHealthBar {\n }\n UNIT_NAME_UPDATE = <function> defined @Interface/AddOns/Plater/libs/DF/panel.lua:8622\n BossModIconFrame = NamePlate3PlaterUnitFrameHealthBarBossModIconRow {\n }\n BodyFlashFrame = Frame {\n }\n npcID = \"20295\"\n IsNeutralOrHostile = true\n SetBorderBlendMode = <function> defined @Interface/SharedXML/Backdrop.lua:266\n ActorTitleSpecial = FontString {\n }\n actorType = \"enemynpc\"\n namePlateClassification = \"normal\"\n ScriptRunCommMessageHook = <function> defined @Interface/AddOns/Plater/Plater.lua:11309\n OnBackdropSizeChanged = <function> defined @Interface/SharedXML/Backdrop.lua:182\n PLAYER_TARGET_CHANGED = <function> defined @Interface/AddOns/Plater/libs/DF/panel.lua:8617\n namePlateInRange = false\n aggroGlowLower = Texture {\n }\n BuffFrame = NamePlate3PlaterUnitFrameBuffFrame1 {\n }\n isBattlePet = false\n SetupPieceVisuals = <function> defined @Interface/SharedXML/Backdrop.lua:246\n unitNameInternal = \"泥沼重壳龙虾人\"\n UnitFrameEvents = <table> {\n }\n InExecuteRange = false\n namePlateThreatOffTankIsTanking = false\n OnBackdropLoaded = <function> defined @Interface/SharedXML/Backdrop.lua:152\n namePlateUnitReaction = 3\n castBar = NamePlate3PlaterUnitFrameCastBar {\n }\n IsProtected = <function> defined @Interface/AddOns/Plater/Plater.lua:11420\n SetUnit = <function> defined @Interface/AddOns/Plater/libs/DF/panel.lua:8381\n unitName = \"泥沼重壳龙虾人\"\n Top3DFrame = NamePlate33DFrame {\n }\n CustomIndicators = <table> {\n }\n namePlateUnitNameLower = \"泥沼重壳龙虾人\"\n TargetTextures4Sides = <table> {\n }\n targetOverlay = Texture {\n }\n PlaterRaidTargetFrame = Frame {\n }\n ScriptGetContainer = <function> defined @Interface/AddOns/Plater/Plater.lua:11130\n PlayerCannotAttack = false\n softInteractIc",
			["stack"] = "[string \"@Interface/AddOns/Plater/libs/DF/panel.lua\"]:8414: in function `SetUnit'\n[string \"@Interface/AddOns/Plater/Plater.lua\"]:4070: in function `func'\n[string \"@Interface/AddOns/Plater/Plater.lua\"]:4571: in function `EventHandler'\n[string \"@Interface/AddOns/Plater/Plater.lua\"]:4582: in function `RunFunctionForEvent'\n[string \"@Interface/AddOns/Plater/Plater.lua\"]:2067: in function <Interface/AddOns/Plater/Plater.lua:2045>",
			["session"] = 1,
			["counter"] = 8,
		}, -- [4]
		{
			["message"] = ".../AddOns/ElvUI/Core/Modules/Nameplates/Nameplates.lua:780: attempt to index field 'RaisedElement' (a nil value)",
			["time"] = "2023/06/22 17:48:10",
			["locals"] = "self = <table> {\n UnitSelectionType = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Nameplates.lua:56\n BORDER = 1\n SetNamePlateEnemyClickThrough = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Nameplates.lua:507\n modules = <table> {\n }\n CancelTimer = <function> defined @Interface/AddOns/ElvUI_Libraries/Core/Ace3/AceTimer-3.0/AceTimer-3.0.lua:147\n SecureHook = <function> defined @Interface/AddOns/ElvUI_Libraries/Core/Ace3/AceHook-3.0/AceHook-3.0.lua:335\n Update_Castbar = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Elements/CastBar.lua:199\n PlateGUID = <table> {\n }\n StyleFilterRemoveCustomCheck = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/StyleFilter.lua:1727\n ThreatIndicator_PreUpdate = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Elements/Threat.lua:16\n Construct_TagText = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Elements/Tags.lua:5\n StyleFilterBorderLock = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/StyleFilter.lua:519\n Health_SetColors = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Elements/Health.lua:89\n SetDefaultModulePrototype = <function> defined @Interface/AddOns/ElvUI_Libraries/Core/Ace3/AceAddon-3.0/AceAddon-3.0.lua:405\n BossMods_DisableHostile = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Elements/BossMods.lua:237\n ConfigureAll = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Nameplates.lua:611\n StyleFilterTargetFunction = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/StyleFilter.lua:1274\n Update_PortraitBackdrop = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Elements/Portraits.lua:27\n NewModule = <function> defined @Interface/AddOns/ElvUI_Libraries/Core/Ace3/AceAddon-3.0/AceAddon-3.0.lua:231\n IsEnabled = <function> defined @Interface/AddOns/ElvUI_Libraries/Core/Ace3/AceAddon-3.0/AceAddon-3.0.lua:447\n Update_BossMods = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Elements/BossMods.lua:271\n ScheduleTimer = <function> defined @Interface/AddOns/ElvUI_Libraries/Core/Ace3/AceTimer-3.0/AceTimer-3.0.lua:94\n PlayerNamePlateAnchor = ElvUIPlayerNamePlateAnchor {\n }\n StyleFilterAuraWait = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/StyleFilter.lua:326\n StyleFilterDefaultEvents = <table> {\n }\n StyleFilterEventWatch = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/StyleFilter.lua:1669\n multiplier = 0.350000\n RegisterMessage = <function> defined @Interface/AddOns/ElvUI_Libraries/Core/CallbackHandler-1.0/CallbackHandler-1.0.lua:80\n ResetSettings = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Nameplates.lua:78\n SetNamePlateClickThrough = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Nameplates.lua:490\n StyleFilterClearVisibility = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/StyleFilter.lua:658\n hooks = <table> {\n }\n GroupRoles = <table> {\n }\n UnregisterMessage = <function> defined @Interface/AddOns/ElvUI_Libraries/Core/CallbackHandler-1.0/CallbackHandler-1.0.lua:143\n ThreatIndicator_PostUpdate = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Elements/Threat.lua:33\n UpdateAuraSettings = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Elements/Auras.lua:171\n SPACING = 0\n Update_QuestIcons = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Elements/Plugins.lua:33\n StyleFilterTickerCreate = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/StyleFilter.lua:322\n SetEnabledState = <function> defined @Interface/AddOns/ElvUI_Libraries/Core/Ace3/AceAddon-3.0/AceAddon-3.0.lua:420\n Hook = <function> defined @Interface/AddOns/ElvUI_Libraries/Core/Ace3/AceHook-3.0/AceHook-3.0.lua:273\n UpdatePlateType = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Nameplates.lua:658\n Update_PvPIndicator = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates",
			["stack"] = "[string \"@Interface/AddOns/ElvUI/Core/Modules/Nameplates/Nameplates.lua\"]:780: in function `NamePlateCallBack'\n[string \"@Interface/AddOns/ElvUI/Core/Modules/Nameplates/Nameplates.lua\"]:967: in function <.../AddOns/ElvUI/Core/Modules/Nameplates/Nameplates.lua:966>\n[string \"@Interface/AddOns/ElvUI_Libraries/Core/oUF/ouf.lua\"]:867: in function <Interface/AddOns/ElvUI_Libraries/Core/oUF/ouf.lua:821>",
			["session"] = 1,
			["counter"] = 8,
		}, -- [5]
		{
			["message"] = ".../AddOns/ElvUI/Core/Modules/Nameplates/Nameplates.lua:834: attempt to index field 'Health' (a nil value)",
			["time"] = "2023/06/22 17:48:14",
			["locals"] = "self = <table> {\n UnitSelectionType = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Nameplates.lua:56\n BORDER = 1\n SetNamePlateEnemyClickThrough = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Nameplates.lua:507\n modules = <table> {\n }\n CancelTimer = <function> defined @Interface/AddOns/ElvUI_Libraries/Core/Ace3/AceTimer-3.0/AceTimer-3.0.lua:147\n SecureHook = <function> defined @Interface/AddOns/ElvUI_Libraries/Core/Ace3/AceHook-3.0/AceHook-3.0.lua:335\n Update_Castbar = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Elements/CastBar.lua:199\n PlateGUID = <table> {\n }\n StyleFilterRemoveCustomCheck = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/StyleFilter.lua:1727\n ThreatIndicator_PreUpdate = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Elements/Threat.lua:16\n Construct_TagText = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Elements/Tags.lua:5\n StyleFilterBorderLock = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/StyleFilter.lua:519\n Health_SetColors = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Elements/Health.lua:89\n SetDefaultModulePrototype = <function> defined @Interface/AddOns/ElvUI_Libraries/Core/Ace3/AceAddon-3.0/AceAddon-3.0.lua:405\n BossMods_DisableHostile = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Elements/BossMods.lua:237\n ConfigureAll = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Nameplates.lua:611\n StyleFilterTargetFunction = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/StyleFilter.lua:1274\n Update_PortraitBackdrop = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Elements/Portraits.lua:27\n NewModule = <function> defined @Interface/AddOns/ElvUI_Libraries/Core/Ace3/AceAddon-3.0/AceAddon-3.0.lua:231\n IsEnabled = <function> defined @Interface/AddOns/ElvUI_Libraries/Core/Ace3/AceAddon-3.0/AceAddon-3.0.lua:447\n Update_BossMods = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Elements/BossMods.lua:271\n ScheduleTimer = <function> defined @Interface/AddOns/ElvUI_Libraries/Core/Ace3/AceTimer-3.0/AceTimer-3.0.lua:94\n PlayerNamePlateAnchor = ElvUIPlayerNamePlateAnchor {\n }\n StyleFilterAuraWait = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/StyleFilter.lua:326\n StyleFilterDefaultEvents = <table> {\n }\n StyleFilterEventWatch = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/StyleFilter.lua:1669\n multiplier = 0.350000\n RegisterMessage = <function> defined @Interface/AddOns/ElvUI_Libraries/Core/CallbackHandler-1.0/CallbackHandler-1.0.lua:80\n ResetSettings = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Nameplates.lua:78\n SetNamePlateClickThrough = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Nameplates.lua:490\n StyleFilterClearVisibility = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/StyleFilter.lua:658\n hooks = <table> {\n }\n GroupRoles = <table> {\n }\n UnregisterMessage = <function> defined @Interface/AddOns/ElvUI_Libraries/Core/CallbackHandler-1.0/CallbackHandler-1.0.lua:143\n ThreatIndicator_PostUpdate = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Elements/Threat.lua:33\n UpdateAuraSettings = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Elements/Auras.lua:171\n SPACING = 0\n Update_QuestIcons = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Elements/Plugins.lua:33\n StyleFilterTickerCreate = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/StyleFilter.lua:322\n SetEnabledState = <function> defined @Interface/AddOns/ElvUI_Libraries/Core/Ace3/AceAddon-3.0/AceAddon-3.0.lua:420\n Hook = <function> defined @Interface/AddOns/ElvUI_Libraries/Core/Ace3/AceHook-3.0/AceHook-3.0.lua:273\n UpdatePlateType = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates/Nameplates.lua:658\n Update_PvPIndicator = <function> defined @Interface/AddOns/ElvUI/Core/Modules/Nameplates",
			["stack"] = "[string \"@Interface/AddOns/ElvUI/Core/Modules/Nameplates/Nameplates.lua\"]:834: in function `NamePlateCallBack'\n[string \"@Interface/AddOns/ElvUI/Core/Modules/Nameplates/Nameplates.lua\"]:967: in function <.../AddOns/ElvUI/Core/Modules/Nameplates/Nameplates.lua:966>\n[string \"@Interface/AddOns/ElvUI_Libraries/Core/oUF/ouf.lua\"]:880: in function <Interface/AddOns/ElvUI_Libraries/Core/oUF/ouf.lua:821>",
			["session"] = 1,
			["counter"] = 8,
		}, -- [6]
		{
			["message"] = "...erface/AddOns/ElvUI/Core/Modules/Tooltip/Tooltip.lua:1034: Usage: SecureHook([object], method, [handler]): Attempting to hook a non existing target",
			["time"] = "2023/06/22 17:47:53",
			["locals"] = "(*temporary) = \"Usage: SecureHook([object], method, [handler]): Attempting to hook a non existing target\"\n",
			["stack"] = "[string \"=[C]\"]: ?\n[string \"@Interface/AddOns/ElvUI_Libraries/Core/Ace3/AceHook-3.0-9/AceHook-3.0.lua\"]:210: in function <...lvUI_Libraries/Core/Ace3/AceHook-3.0/AceHook-3.0.lua:118>\n[string \"@Interface/AddOns/ElvUI_Libraries/Core/Ace3/AceHook-3.0-9/AceHook-3.0.lua\"]:340: in function `SecureHook'\n[string \"@Interface/AddOns/ElvUI/Core/Modules/Tooltip/Tooltip.lua\"]:1034: in function <...erface/AddOns/ElvUI/Core/Modules/Tooltip/Tooltip.lua:998>\n[string \"=[C]\"]: ?\n[string \"@Interface/AddOns/ElvUI/Core/General/Core.lua\"]:1813: in function `CallLoadFunc'\n[string \"@Interface/AddOns/ElvUI/Core/General/Core.lua\"]:1828: in function `CallLoadedModule'\n[string \"@Interface/AddOns/ElvUI/Core/General/Core.lua\"]:1854: in function `InitializeModules'\n[string \"@Interface/AddOns/ElvUI/Core/General/Core.lua\"]:1964: in function `Initialize'\n[string \"@Interface/AddOns/ElvUI/Core/init.lua\"]:265: in function <Interface/AddOns/ElvUI/Core/init.lua:264>\n[string \"=[C]\"]: ?\n[string \"@Interface/AddOns/ElvUI_Libraries/Core/Ace3/AceAddon-3.0-13/AceAddon-3.0.lua\"]:66: in function <...UI_Libraries/Core/Ace3/AceAddon-3.0/AceAddon-3.0.lua:61>\n[string \"@Interface/AddOns/ElvUI_Libraries/Core/Ace3/AceAddon-3.0-13/AceAddon-3.0.lua\"]:523: in function `EnableAddon'\n[string \"@Interface/AddOns/ElvUI_Libraries/Core/Ace3/AceAddon-3.0-13/AceAddon-3.0.lua\"]:626: in function <...UI_Libraries/Core/Ace3/AceAddon-3.0/AceAddon-3.0.lua:611>",
			["session"] = 2,
			["counter"] = 2,
		}, -- [7]
		{
			["message"] = "...AddOns/ElvUI/Wrath/Modules/Skins/BlizzardOptions.lua:293: attempt to index field 'EnableTwitter' (a nil value)",
			["time"] = "2023/06/22 17:47:55",
			["locals"] = "self = nil\nChatConfigFrame = ChatConfigFrame {\n BottomLeftCorner = Texture {\n }\n SetScript = <function> defined =[C]:-1\n SetHeight = <function> defined =[C]:-1\n OnBackdropLoaded = <function> defined @Interface/SharedXML/Backdrop.lua:152\n ChatTabManager = ChatConfigFrameChatTabManager {\n }\n TopLeftCorner = Texture {\n }\n RightEdge = Texture {\n }\n template = \"Transparent\"\n ToggleChatButton = Button {\n }\n ApplyBackdrop = <function> defined @Interface/SharedXML/Backdrop.lua:294\n SetBackdrop = <function> defined @Interface/SharedXML/Backdrop.lua:329\n ClearBackdrop = <function> defined @Interface/SharedXML/Backdrop.lua:282\n GetBackdropBorderColor = <function> defined @Interface/SharedXML/Backdrop.lua:409\n GetBackdrop = <function> defined @Interface/SharedXML/Backdrop.lua:347\n SetBorderBlendMode = <function> defined @Interface/SharedXML/Backdrop.lua:266\n RedockButton = ChatConfigFrameRedockButton {\n }\n DefaultButton = ChatConfigFrameDefaultButton {\n }\n SetupTextureCoordinates = <function> defined @Interface/SharedXML/Backdrop.lua:214\n OnBackdropSizeChanged = <function> defined @Interface/SharedXML/Backdrop.lua:182\n TopRightCorner = Texture {\n }\n SetPoint = <function> defined =[C]:-1\n SetWidth = <function> defined =[C]:-1\n GetEdgeSize = <function> defined @Interface/SharedXML/Backdrop.lua:188\n backdropInfo = <table> {\n }\n TopEdge = Texture {\n }\n 0 = <userdata>\n Center = Texture {\n }\n BottomEdge = Texture {\n }\n GetBackdropColor = <function> defined @Interface/SharedXML/Backdrop.lua:390\n HasBackdropInfo = <function> defined @Interface/SharedXML/Backdrop.lua:278\n SetBackdropBorderColor = <function> defined @Interface/SharedXML/Backdrop.lua:422\n SetupPieceVisuals = <function> defined @Interface/SharedXML/Backdrop.lua:246\n SetBackdropColor = <function> defined @Interface/SharedXML/Backdrop.lua:399\n LeftEdge = Texture {\n }\n BottomRightCorner = Texture {\n }\n}\nChatFrames = <table> {\n 1 = ChatConfigFrame {\n }\n 2 = ChatConfigCategoryFrame {\n }\n 3 = ChatConfigBackgroundFrame {\n }\n 4 = ChatConfigCombatSettingsFilters {\n }\n 5 = ChatConfigCombatSettingsFiltersScrollFrame {\n }\n 6 = CombatConfigColorsHighlighting {\n }\n 7 = CombatConfigColorsColorizeUnitName {\n }\n 8 = CombatConfigColorsColorizeSpellNames {\n }\n 9 = CombatConfigColorsColorizeDamageNumber {\n }\n 10 = CombatConfigColorsColorizeDamageSchool {\n }\n 11 = CombatConfigColorsColorizeEntireLine {\n }\n 12 = ChatConfigChatSettingsLeft {\n }\n 13 = ChatConfigOtherSettingsCombat {\n }\n 14 = ChatConfigOtherSettingsPVP {\n }\n 15 = ChatConfigOtherSettingsSystem {\n }\n 16 = ChatConfigOtherSettingsCreature {\n }\n 17 = ChatConfigChannelSettingsAvailable {\n }\n 19 = ChatConfigChannelSettingsLeft {\n }\n 20 = CombatConfigMessageSourcesDoneBy {\n }\n 21 = CombatConfigColorsUnitColors {\n }\n 22 = CombatConfigMessageSourcesDoneTo {\n }\n}\nChatButtons = <table> {\n 1 = ChatConfigFrameDefaultButton {\n }\n 2 = ChatConfigFrameRedockButton {\n }\n 3 = ChatConfigFrameOkayButton {\n }\n 4 = Button {\n }\n 5 = ChatConfigCombatSettingsFiltersDeleteButton {\n }\n 6 = ChatConfigCombatSettingsFiltersAddFilterButton {\n }\n 7 = ChatConfigCombatSettingsFiltersCopyFilterButton {\n }\n 8 = CombatConfigSettingsSaveButton {\n }\n 9 = CombatLogDefaultButton {\n }\n}\nChatCheckBoxs = <table> {\n 1 = CombatConfigColorsHighlightingLine {\n }\n 2 = CombatConfigColorsHighlightingAbility {\n }\n 3 = CombatConfigColorsHighlightingDamage {\n }\n 4 = CombatConfigColorsHighlightingSchool {\n }\n 5 = CombatConfigColorsColorizeUnitNameCheck {\n }\n 6 = CombatConfigColorsColorizeSpellNamesCheck {\n }\n 7 = CombatConfigColorsColorizeSpellNamesSchoolColoring {\n }\n 8 = CombatConfigColorsColorizeDamageNumberCheck {\n }\n 9 = CombatConfigColorsColorizeDamageNumberSchoolColoring {\n }\n 10 = CombatConfigColorsColorizeDamageSchoolCheck {\n }\n 11 = CombatConfigColorsColorizeEntireLineCheck {\n }\n 12 = CombatConfigFormattingShowTimeStamp {\n }\n 13 = CombatConfigFormattingShowBraces {\n }\n 14 = CombatConfigFormattingUnitNames {\n }\n 15 = CombatConfigFormattingSpellNames {\n }\n 16 = CombatConfigFormattingItemNames {\n }\n 17 = CombatConfigFormattingFullText {\n }\n 18 = CombatConfigSettingsShowQuickButton {\n",
			["stack"] = "[string \"@Interface/AddOns/ElvUI/Wrath/Modules/Skins/BlizzardOptions.lua\"]:293: in function <...AddOns/ElvUI/Wrath/Modules/Skins/BlizzardOptions.lua:43>\n[string \"=[C]\"]: ?\n[string \"@Interface/AddOns/ElvUI/Core/Modules/Skins/Skins.lua\"]:1868: in function <Interface/AddOns/ElvUI/Core/Modules/Skins/Skins.lua:1863>\n[string \"=[C]\"]: ?\n[string \"@Interface/AddOns/ElvUI/Core/General/Core.lua\"]:1813: in function `CallLoadFunc'\n[string \"@Interface/AddOns/ElvUI/Core/General/Core.lua\"]:1828: in function `CallLoadedModule'\n[string \"@Interface/AddOns/ElvUI/Core/General/Core.lua\"]:1854: in function `InitializeModules'\n[string \"@Interface/AddOns/ElvUI/Core/General/Core.lua\"]:1964: in function `Initialize'\n[string \"@Interface/AddOns/ElvUI/Core/init.lua\"]:265: in function <Interface/AddOns/ElvUI/Core/init.lua:264>\n[string \"=[C]\"]: ?\n[string \"@Interface/AddOns/ElvUI_Libraries/Core/Ace3/AceAddon-3.0-13/AceAddon-3.0.lua\"]:66: in function <...UI_Libraries/Core/Ace3/AceAddon-3.0/AceAddon-3.0.lua:61>\n[string \"@Interface/AddOns/ElvUI_Libraries/Core/Ace3/AceAddon-3.0-13/AceAddon-3.0.lua\"]:523: in function `EnableAddon'\n[string \"@Interface/AddOns/ElvUI_Libraries/Core/Ace3/AceAddon-3.0-13/AceAddon-3.0.lua\"]:626: in function <...UI_Libraries/Core/Ace3/AceAddon-3.0/AceAddon-3.0.lua:611>",
			["session"] = 2,
			["counter"] = 2,
		}, -- [8]
	},
}
