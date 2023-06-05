local addonName, addonTable = ...;
local L=addonTable.locale
if GetLocale() == "zhTW" then
L["ADDON_NAME"] = "豬豬加油";
--error
L["ERROR_CLEAR"] = "清空";
L["ERROR_PREVIOUS"] = "上一條";
L["ERROR_NEXT"] = "下一條";
L["ERROR_EMPTY"] = "沒有錯誤髮生";
L["ERROR_CURRENT"] = "本次錯誤";
L["ERROR_OLD"] = "之前錯誤";
L["ERROR_ADDON"] = "插件";
L["ERROR_ERROR1"] = "嚐試調用保護功能";
L["ERROR_ERROR2"] = "宏嚐試調用保護功能";
L["ERROR_EXTEND_NULL"] = "沒有檢測到【%s】模塊";
--lib
L["LIB_MOD_OFF"] = "尚未啟用，請在模塊內啟用";
L["LIB_PARTY"] = "地下城";
L["LIB_RAID"] = "團隊副本";
L["LIB_FREE"] = "免費;";
L["LIB_MACROERR"] = "你的宏數量已達最大值120，請删除一些再嘗試";
L["LIB_YES"] = "是";
L["LIB_NO"] = "否";
L["LIB_ENT"] = "確定";
L["LIB_CEL"] = "取消";
L["LIB_TIPS"] = "提示：";
--OptionsUI
L["OPTUI_SET"] = "設定";
L["OPTUI_RLUI"] = "重載UI";
L["OPTUI_RLUITIPS"] = "***配寘已更改，請重載UI介面以應用新配寘***";
L["OPTUI_ERRORTIPS"] = "***插件加載失敗，請重新嘗試***";
--Debug
L["DEBUG_TABNAME"] = "調試";
L["DEBUG_BUTNAME"] = "記憶體CPU使用率";
L["DEBUG_CPUUSAGE"] = "CPU使用率";
L["DEBUG_CPUUSAGETIPS"] = "開啟CPU使用率監控，請只在需要時候開啟，此功能需要消耗一些系統性能";
L["DEBUG_REFRESH"] = "刷新";
L["DEBUG_RESET"] = "重置";
L["DEBUG_COLLECT"] = "回收";
L["DEBUG_COLLECTTIPS"] = "|cff00FFff此功能會導致挿件所有執行都停止，直到收回過程完成\n挿件過多情况下可能超過幾秒，這會令遊戲暫時凍結（卡住）\n除開挿件開發調試，大多數情况不需要手動調用，LUA自動記憶體管理機制會定期運作|r";
L["DEBUG_ADDNUM"] = "個挿件";
L["DEBUG_ADD"] = "挿件";
L["DEBUG_MEMORY"] = "記憶體";
L["DEBUG_ERRORLOG"] = "錯誤日誌";
L["DEBUG_OPENERRORLOGCMD"] = "打開日誌指令：";
L["DEBUG_ERRORCHECK"] = "小地圖按鈕提示錯誤";
L["DEBUG_ERRORTOOLTIP"] = "發生錯誤時在小地圖按鈕提示（顯示一個紅X）";
L["DEBUG_SCRIPTCHECK"] = "遊戲自帶LUA錯誤提示";
L["DEBUG_SCRIPTTOOLTIP"] = "打開遊戲自帶的LUA錯誤提示功能，非調試挿件情况下請不要開啟";
L["DEBUG_TAINTLOG"] = "污染日誌";
L["DEBUG_TAINT0"] = "不記錄任何內容";
L["DEBUG_TAINT1"] = "記錄被封鎖的操作";
L["DEBUG_TAINT2"] = "記錄被封鎖的操作/全域變數";
L["DEBUG_TAINT11"] = "記錄被封鎖的操作/全域變數/條目(PTR/Beta)";
L["DEBUG_GETGUIDBUT"] = "獲取目標GUID";
---About
L["ABOUT_TABNAME"] = "關於";
L["ABOUT_VERSION"] = "版本";
L["ABOUT_UPDATETIPS"] = "挿件已過期，請在插件關於內查看更新地址";
L["ABOUT_LOAD"] = "載入成功 /pig或小地圖按鈕設置";
L["ABOUT_REMINDER"]="|cffFF0000*本插件完全免費，網絡購物平臺出售的皆為騙子*|r"--"|cffFF0000*本挿件完全免費，網絡購物平臺出售的皆為騙子*|r"
L["ABOUT_URL"]="https://www.curseforge.com/wow/addons/pig"
L["ABOUT_UPDATEADD"]="更新網址: "
L["ABOUT_MAIL"]="|cffffff00願意提供本地語言支持請發送郵件:|r xdfxjf1004@hotmail.com"
L["ABOUT_BILI"]="|cff00ff00Twitter：|r|cff00FFFF***|r       |cff00ff00Curseforge：|r|cff00ffffgeligasi|r"
L["ABOUT_YY"]=" "
L["ABOUT_QQ"]=" "
L["ABOUT_THANKS"]="特別鳴謝"
L["ABOUT_THANKS_TXT"]={
	["C60"]={
		"經典舊世:",
		" ",
	},
	["WLK"]={
		"巫妖王之怒:",
		" ",
	},
	["RETAIL"]={
		"正式服",
		" ",
	},
}
--Config
L["CONFIG_TABNAME"] = "配寘";
L["CONFIG_DEFAULT"] = "默認"..L["CONFIG_TABNAME"];
L["CONFIG_DEFAULTTIPS"] = "開啟常用功能";
L["CONFIG_ALLON"] = "全部開啟";
L["CONFIG_ALLONTIPS"] = "開啟所有功能，不需要的功能請自行關閉";
L["CONFIG_ALLOFF"] = "調試配寘";
L["CONFIG_ALLOFFTIPS"] = "此配寘默認關閉所有功能，供調試挿件使用";
L["CONFIG_DIY"] = "定制配置";
L["CONFIG_DIYTXT"]="聯繫作者定制你的私人配置";
L["CONFIG_DIYTIPS"] = L["CONFIG_DIYTXT"].."，在任何地方一鍵載入你的設置";
L["CONFIG_LOADTIPS"] = "此操作將|cff00ff00載入|r\n|cff00ff00<%s>|r的設定。\n已保存的數據將被|cffff0000清空|r。\n是否載入?";
L["CONFIG_ERRTIPS"] = "1、如遇到問題，請在此載入挿件默認配寘。\n|cffFFff002、如問題仍未解决請通過關於內的迴響管道提交問題。|r";
L["CONFIG_IMPORT"] = "請在下方輸入要導入的字串，並點擊導入按鈕";
L["CONFIG_DERIVE"] = "請複製下方字串，粘貼到需要導入位置";
L["CONFIG_DERIVERL"] = "導入並重載";
L["CONFIG_DERIVEERROR"] = "導入失敗，無法識別的字串";
--常用
L["COMMON_TABNAME"] = "常規";
L["COMMON_TABNAME1"] = "商業";
L["COMMON_TABNAME2"] = "交互";
L["COMMON_TABNAME3"] = "智能跟隨";
L["COMMON_TABNAME4"] = "其他";
--Chat
L["CHAT_TABNAME"] = "聊天";
L["CHAT_TABNAME1"] = "常用";
L["CHAT_QUKBUT"] = "快捷切換頻道按鈕";
L["CHAT_QUKBUTTIPS"]="在聊天欄增加一排頻道快捷切換按鈕，可快速切換頻道"
L["CHAT_QUKBUTNAME"] = {"說","喊","隊","會","團","通","戰","綜","組","P","世"};
L["CHAT_BENDIFANGWU"] = "本地防務";
L["CHAT_WORLDFANGWU"] = "世界防務";
L["CHAT_QUKBUT_UP"] = "敷著於聊天欄上方";
L["CHAT_QUKBUT_DOWN"] = "敷著於聊天欄下方";
L["CHAT_QUKBUT_STYLE"]= "樣式";
L["CHAT_MINMAXB"]= "顯示放大縮小字體按鈕";
L["CHAT_MINMAXBTIPS"]= "在聊天欄添加放大縮小字體按鈕";
L["CHAT_SHOWZB"]= "顯示查看裝備圖標";
L["CHAT_SHOWZBTIPS"]= "在聊天欄玩家名後顯示一個查看裝備圖標，此功能需要開啟交互內的右鍵增強";
L["CHAT_ALTEX"]= "輸入框光標優化";
L["CHAT_ALTEXTIPS"]= "只按方向鍵即可控制輸入框光標，正常系統需要按住ALT鍵才可移動光標";
L["CHAT_JIANYIN"]= "關閉聊天欄文字漸隱"
L["CHAT_JIANYINTIPS"]= "移除聊天欄的文字漸隱效果";
L["CHAT_ZHIXIANGSHOW"]= "滑鼠指向鏈接直接預覽物品屬性"
L["CHAT_ZHIXIANGSHOWTIPS"]= "滑鼠指向聊天欄物品時直接預覽属性，正常需要點擊鏈接";
L["CHAT_COLORCLASS"]= "聊天欄顯示職業顏色";
L["CHAT_JINGJIAN"]= "精簡頻道名";
L["CHAT_JINGJIANTIPS"]= L["CHAT_JINGJIAN"].."例：["..LOOK_FOR_GROUP.."]→[組]";
L["CHAT_JOINPIG"]= "自動加入"..LOOK_FOR_GROUP.."/PIG頻道"
L["CHAT_JOINPIGTIPS"]= "進入遊戲後自動加入"..LOOK_FOR_GROUP.."/PIG頻道";
L["CHAT_FONTSIZE"]= "自動設置聊天框字體:"
L["CHAT_FONTSIZETIPS"]= "開啟後將在每次登陸時恢復聊天框字體大小為設定值，如果需要自定義單獨聊天框字體請關閉此功能"
L["CHAT_DAYINZIDINGYI"]= "打印自定義頻道所有者"
L["CHAT_TABNAME2"] = "TAB切換頻道";
L["CHAT_TABNAME2TIPS"] = L["CHAT_TABNAME2"].."|cff00ff00(激活輸入框時會在下方選中頻道之間切換)|r"
L["CHAT_BN_WHISPER"] = "戰網密語"
L["CHAT_TABCKBTIPS"] ="勾選以後TAB鍵將可以切換到【%s】頻道"
L["CHAT_TABNAME3"] = "頻道粘連";
L["CHAT_TABNAME3TIPS"] ="粘連回車|cff00ff00(取消粘連回車的頻道，發言後回車不會返回此頻道)|r";
L["CHAT_ZLCKBTIPS"] ="勾選粘連【%s】頻道到回車，取消勾選解除粘連";
L["CHAT_TABNAME4"] = "聊天框佈局";
L["CHAT_BIANJU"]= "移除聊天窗口的邊距"
L["CHAT_BIANJUTIPS"]= "移除聊天窗口系統的默認邊距，使之可以移動到屏幕最邊緣";
L["CHAT_ZHUCHATF"]= "主聊天窗口";
L["CHAT_ZHUCHATFW"]= L["OPTUI_SET"].."寬度"
L["CHAT_ZHUCHATFWTIPS"]= L["OPTUI_SET"]..L["CHAT_ZHUCHATF"].."的寬度";
L["CHAT_ZHUCHATFH"]= L["OPTUI_SET"].."高度"
L["CHAT_ZHUCHATFHTIPS"]= L["OPTUI_SET"]..L["CHAT_ZHUCHATF"].."的高度";
L["CHAT_ZHUCHATFXY"]= L["OPTUI_SET"].."坐標位置"
L["CHAT_ZHUCHATFXYTIPS"]= L["OPTUI_SET"]..L["CHAT_ZHUCHATF"].."的坐標位置";
L["CHAT_LOOTFADD"]= "创建独立拾取窗口";
L["CHAT_LOOTFYES"]= "已创建独立拾取窗口";
L["CHAT_LOOTFNAME"]="拾取/其他";
L["CHAT_LOOTFW"]= L["OPTUI_SET"].."寬度"
L["CHAT_LOOTFWTIPS"]= L["OPTUI_SET"]..L["CHAT_LOOTFNAME"].."的寬度";
L["CHAT_LOOTFH"]= L["OPTUI_SET"].."高度"
L["CHAT_LOOTFHTIPS"]= L["OPTUI_SET"]..L["CHAT_LOOTFNAME"].."的高度";
L["CHAT_LOOTFXY"]= L["OPTUI_SET"].."坐標位置"
L["CHAT_LOOTFXYTIPS"]= L["OPTUI_SET"]..L["CHAT_LOOTFNAME"].."的坐標位置";
L["CHAT_LOOTFTIPS"]="\124cffffff00創建一個顯示拾取物品信息的單獨聊天窗口\124r\n\124cff00ff00下方選項在創建獨立拾取窗口後方可使用\n不需要獨立拾取窗口時請手動移除\124r";
L["CHAT_LOOTFNRSET"]="重設窗口顯示內容";
L["CHAT_LOOTFFENLI"]="分離顯示拾取窗口";
L["CHAT_LOOTFNRSETTIPS"]="啟用獨立拾取窗口後，建議打開此選項。\n重新設置窗口顯示內容，綜合頻道將取消經驗榮譽以及拾取信息的顯示，拾取窗口添加拾取/經驗/榮譽等的顯示！\n修改"..COMBAT_LOG.."為"..COMBAT_LABEL;
L["CHAT_LOOTFADDERR1"]="創建失敗，當前屏幕分辨率過小";
L["CHAT_LOOTFADDERR2"]="創建失敗，系統允許最大聊天窗口數：10，當前："..FCF_GetNumActiveChatFrames();
L["CHAT_RECHATBUT"]= "重置聊天"..L["OPTUI_SET"];
L["CHAT_TABNAME5"] = "頻道順序";
L["CHAT_TABNAME5_XULIE"] = "序列";
L["CHAT_TABNAME6"] = "頻道過濾";
--动作条
L["ACTION_TABNAME"] = "動作條";
L["ACTION_TABNAME1"] = "常規";
L["ACTION_TABNAME2"] = "功能動作條";
L["ACTION_TABNAME3"] = "額外動作條";
--背包
L["BAGBANK_TABNAME"] = "背包/銀行";
--界面优化
L["FRAMEP_TABNAME"] = "界面優化";
L["FRAMEP_TABNAME1"] = "暴雪界面";
L["FRAMEP_TABNAME2"] = "滑鼠提示";
--头像框架
L["UNIT_TABNAME"] = "頭像框架";
L["UNIT_TABNAME1"] = "自身頭像";
L["UNIT_TABNAME2"] = "隊友頭像";
L["UNIT_TABNAME3"] = "目標頭像";
--战斗辅助
L["COMBAT_TABNAME"] = "戰鬥輔助";
L["COMBAT_TABNAME1"] = "標記按鈕";
L["COMBAT_TABNAME2"] = "戰鬥時間";
L["COMBAT_TABNAME3"] = "個人資源條";
--地图
L["MAP_TABNAME"] = "地圖";
L["MAP_TABNAME1"] = "小地圖";
L["MAP_NIMIBUT"] = "顯示小地圖按鈕";
L["MAP_NIMIBUTTIPS"] = "顯示插件的小地圖按鈕";
L["MAP_NIMIBUT_BS"] = "允許被收納";
L["MAP_NIMIBUT_BSTIPS"] = "開啟後小地圖按鈕將可以被其他插件收納|cffFF0000(注意和下方收納小地圖按鈕功能只能選一)|r";
L["MAP_NIMIBUT_SN"] = "收納其他插件的小地圖按鈕";
L["MAP_NIMIBUT_SNTIPS"] = "開啟後將收納其他插件的小地圖按鈕到單獨界面，左鍵點擊本插件小地圖按鈕可查看已收納按鈕|cffFF0000(注意和上方允許被收納只能選一)|r";
L["MAP_NIMIBUT_HANGNUM"]="每行按鈕數:"
L["MAP_NIMIBUT_NOSN"]="禁止收納的小地圖按鈕"
L["MAP_NIMIBUT_DELTIPS"]="刪除後小地圖按鈕將被正常收納\n確定刪除？"
L["MAP_NIMIBUT_ADDTIPS"]="添加禁止收納小地圖按鈕\n|cffFFFF00注意是插件小地圖按鈕名\n不是插件名/fstack查看按鈕名|r"
L["MAP_NIMIBUT_ADD"]="添加"
L["MAP_NIMIBUT_ADDERR1"]="添加失敗：插件按鈕名稱不能為空"
L["MAP_NIMIBUT_ADDERR2"]="添加失敗：已存在同名插件按鈕"
L["MAP_NIMIBUT_TIPS1"]="左擊-|cff00FFFF展開小地圖按鈕|r\r右击-|cff00FFFF設定|r\rShift+左擊-|cff00FFFF重載界面|r\rCtrl+左擊-|cff00FFFF打開錯誤日誌|r"
L["MAP_NIMIBUT_TIPS2"]="點擊-|cff00FFFF設定|r\rShift+左擊-|cff00FFFF重載界面|r\rCtrl+左擊-|cff00FFFF打開錯誤日誌|r"
L["MAP_NIMIBUT_TIPS3"]="|cff00FF00此界面為其他插件按鈕收納筐,當前未啟用收納功能！\r|r|cff00FFFF右鍵打開插件-設定|r"
L["MAP_TABNAME2"] = "世界地圖";
L["MAP_WORDXY"] = "顯示玩家坐標";
L["MAP_WORDXYTIPS"] = "顯示玩家在地圖的坐標";
L["MAP_WORDWIND"] = "窗口化世界地圖";
L["MAP_WORDWINDTIPS"] = "窗口化世界地圖並使其可以移動";
L["MAP_WORDLV"] = "顯示等級範圍";
L["MAP_WORDLVTIPS"] = "顯示地圖的等級範圍";
L["MAP_WORDSKILL"] = "顯示釣魚技能點數要求";
L["MAP_WORDSKILLTIPS"] = "顯示地圖的釣魚技能點數最低要求";
L["MAP_WORDMIWU"] = "去除戰爭迷霧";
L["MAP_WORDMIWUTIPS"] = "去除世界地圖的戰爭迷霧";
--Cvar
L["CVAR_TABNAME"] = "遊戲設定(CVar)";
L["CVAR_TABNAME1"] = "常規";
L["CVAR_TABNAME2"] = "姓名版";
L["CVAR_TABNAME3"] = "自身高亮";
L["CVAR_TABNAME4"] = "高級";
--Invite
L["INVITE_NAME"] = "時空之門";
L["INVITE_LEISURE"] = "候車";
L["INVITE_CHEDUI"] = "車隊";
L["INVITE_PLANE"] = "位麵";
L["INVITE_RECEIVEDATA"] = "正在接收數據...";
L["INVITE_WARNING"] = "***請勿在非中國大陸服務器使用***";
L["INVITE_LFG_JOIN"] = "加入PIG頻道";
L["INVITE_LFG_LEAVE"] = "已加入PIG頻道";
end