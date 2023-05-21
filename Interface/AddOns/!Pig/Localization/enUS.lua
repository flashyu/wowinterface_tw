local addonName, addonTable = ...;
local L =addonTable.locale
if GetLocale() == "enUS" then
L["ERROR_CLEAR"] = "clear";
L["ERROR_PREVIOUS"] = "previous";
L["ERROR_NEXT"] = "next";
L["ERROR_EMPTY"] = "No errors occur";
L["ERROR_CURRENT"] = "current";
L["ERROR_OLD"] = "old";
L["ERROR_ADDON"] = "addon";
L["ERROR_ERROR1"] = "Try to invoke the protection function";
L["ERROR_ERROR2"] = "The macro attempts to invoke the protection function";
---lib
L["LIB_MOD_OFF"] = "Not enabled, please enable it in the Modules";
L["LIB_PARTY"] = "party";
L["LIB_RAID"] = "raid";
L["LIB_FREE"] = "free;";
L["LIB_MACROERR"] = "The number of your macros has reached 120, please delete some and try again";
L["LIB_YES"] = "yes";
L["LIB_NO"] = "no";
L["LIB_ENT"] = "confirm";
L["LIB_CEL"] = "cancel";
L["LIB_TIPS"] = "Tips";
--OptionsUI
L["OPTUI_SET"] = "Setting";
L["OPTUI_RLUI"] = "ReloadUI";
L["OPTUI_RLUITIPS"] = "*The configuration has changed. \nReload the UI to apply the new configuration*";
L["OPTUI_ERRORTIPS"] = "***Addon loading failed. Please try again***";
--Debug
L["DEBUG_TABNAME"] = "Debug";
L["DEBUG_BUTNAME"] = "Memory CPU usage";
L["DEBUG_CPUUSAGE"] = "CPU usage";
L["DEBUG_CPUUSAGETIPS"] = "Enable CPU usage monitoring only when necessary. This function consumes system performance";
L["DEBUG_REFRESH"] = "refresh";
L["DEBUG_RESET"] = "reset";
L["DEBUG_COLLECT"] = "collect";
L["DEBUG_COLLECTTIPS"] = "|cff00FFffThis function causes all execution of the plug-in to stop until the recall process is complete\nToo many addons can take more than a few seconds, which causes the game to freeze temporarily\nWith the exception of plug-in development and debugging, manual calls are not required in most cases,\nand LUA's automatic memory management mechanism operates periodically|r";
L["DEBUG_ADDNUM"] = "AddOn";
L["DEBUG_ADD"] = "AddOn";
L["DEBUG_MEMORY"] = "memory";
L["DEBUG_ERRORLOG"] = "Error log";
L["DEBUG_OPENERRORLOGCMD"] = "Open log cmd：";
L["DEBUG_ERRORCHECK"] = "The minimap button displays an error";
L["DEBUG_ERRORTOOLTIP"] = "Button prompt in minimap when error occurs (shows a red X)";
L["DEBUG_SCRIPTCHECK"] = "The game comes with a LUA error message";
L["DEBUG_SCRIPTTOOLTIP"] = "Turn on the LUA error prompt function that comes with the game.  Do not turn it on unless you debug the AddOn";
L["DEBUG_TAINTLOG"] = "Taint log";
L["DEBUG_TAINT0"] = "Nothing is recorded";
L["DEBUG_TAINT1"] = "Records the blocked operations";
L["DEBUG_TAINT2"] = "Records blocked operations/global variables";
L["DEBUG_TAINT11"] = "Records blocked operations/global variables/entries(PTR/Beta)";
L["DEBUG_GETGUIDBUT"] = "Get Target GUID";
--About
L["ABOUT_TABNAME"] = "About";
L["ABOUT_VERSION"] = "Version";
L["ABOUT_UPDATETIPS"] = "The AddOn has expired. Please check the update address in AddOn About";
L["ABOUT_LOAD"] = "Loading succeeded /pig or mini map button setting";
L["ABOUT_REMINDER"]="|cffFF0000This AddOn is completely free, online shopping platform for sale are liars|r"
L["ABOUT_URL"]="https://www.curseforge.com/wow/addons/pig"
L["ABOUT_UPDATEADD"]="Update URL: "
L["ABOUT_MAIL"]="|cffffff00If you would like to provide local language support, \nplease email:|r xdfxjf1004@hotmail.com"
L["ABOUT_BILI"]="|cff00ff00Twitter：|r|cff00FFFF***|r       |cff00ff00Curseforge：|r|cff00ffffgeligasi|r"
L["ABOUT_YY"]=""
L["ABOUT_QQ"]=""
L["ABOUT_THANKS"]="Special thanks"
L["ABOUT_THANKS_TXT"]={
	["C60"]={
		"CLASSIC_ERA:",
		" ",
	},
	["WLK"]={
		"WLK:",
		" ",
	},
	["RETAIL"]={
		"RETAIL",
		" ",
	},
}
--Config
L["CONFIG_TABNAME"] = "Config";
L["CONFIG_DEFAULT"] = "Default "..L["CONFIG_TABNAME"];
L["CONFIG_DEFAULTTIPS"] = "Enable common functions";
L["CONFIG_ALLON"] = "Open all";
L["CONFIG_ALLONTIPS"] = "Enable all functions. Disable unnecessary functions";
L["CONFIG_ALLOFF"] = "Debug config";
L["CONFIG_ALLOFFTIPS"] = "This configuration disables all functions by default,\nFor debugging addons";
L["CONFIG_DIY"] = "DIYCONFIG";
L["CONFIG_DIYTXT"]="Contact the author to customize your private configuration";
L["CONFIG_DIYTIPS"] = L["CONFIG_DIYTXT"]..",To load your Settings anywhere with one click";
L["CONFIG_LOADTIPS"] = "This action |cff00ff00loads|r the Settings for |cff00ff00<%s>|r. The saved data will be |cffff0000cleared|r. Load or not?";
L["CONFIG_ERRTIPS"] = "1、If you run into problems, load the addon default configuration here.\n|cffFFff002、If the problem is still unresolved,\nPlease submit questions via the feedback on the about.|r";
L["CONFIG_IMPORT"] = "Enter the string you want to import below and click the Import button";
L["CONFIG_DERIVE"] = "Copy the bottom string and paste it to where you want to import it";
L["CONFIG_DERIVERL"] = "Import and reload";
L["CONFIG_DERIVEERROR"] = "Import failed, unrecognized string";
--
L["INVITE_NAME"] = "invite";
L["INVITE_LEISURE"] = "waiting";
L["INVITE_CHEDUI"] = "team";
L["INVITE_PLANE"] = "layer";
L["INVITE_RECEIVEDATA"] = "Receiving data...";
L["INVITE_WARNING"] = "***Do not use it on servers outside mainland China***";
L["INVITE_LFG_JOIN"] = "Join PIGCHANNEL";
L["INVITE_LFG_LEAVE"] = "Already joined PIGCHANNEL";
end