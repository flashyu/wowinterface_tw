local addonName, addonTable = ...;
local L ={}
--if GetLocale() == "zhCN" then
L["ADDON_NAME"] = "猪猪加油";
--error
L["ERROR_CLEAR"] = "清空";
L["ERROR_PREVIOUS"] = "上一条";
L["ERROR_NEXT"] = "下一条";
L["ERROR_EMPTY"] = "没有错误发生";
L["ERROR_CURRENT"] = "本次错误";
L["ERROR_OLD"] = "之前错误";
L["ERROR_ADDON"] = "插件";
L["ERROR_ERROR1"] = "尝试调用保护功能";
L["ERROR_ERROR2"] = "宏尝试调用保护功能";
--lib
L["LIB_MOD_OFF"] = "尚未启用，请在模块内启用";
L["LIB_PARTY"] = "地下城";
L["LIB_RAID"] = "团队副本";
L["LIB_FREE"] = "免费;";
L["LIB_MACROERR"] = "你的宏数量已达最大值120，请删除一些再尝试";
L["LIB_YES"] = "是";
L["LIB_NO"] = "否";
L["LIB_ENT"] = "确定";
L["LIB_CEL"] = "取消";
L["LIB_TIPS"] = "提示：";
--OptionsUI
L["OPTUI_SET"] = "设置";
L["OPTUI_RLUI"] = "重载UI";
L["OPTUI_RLUITIPS"] = "***配置已更改,请重载UI界面以应用新配置***";
L["OPTUI_ERRORTIPS"] = "***插件加载失败，请重新尝试***";
--Debug
L["DEBUG_TABNAME"] = "调试";
L["DEBUG_BUTNAME"] = "内存CPU使用率";
L["DEBUG_CPUUSAGE"] = "CPU使用率";
L["DEBUG_CPUUSAGETIPS"] = "开启CPU使用率监控,请只在需要时候开启，此功能需要消耗一些系统性能";
L["DEBUG_REFRESH"] = "刷新";
L["DEBUG_RESET"] = "重置";
L["DEBUG_COLLECT"] = "回收";
L["DEBUG_COLLECTTIPS"] = "|cff00FFff此功能会导致插件所有执行都停止，直到收回过程完成。\n插件过多情况下可能超过几秒，这会令游戏暂时冻结(卡住)。\n除开插件开发调试，大多数情况不需要手动调用，LUA自动内存管理机制会定期运作|r"
L["DEBUG_ADDNUM"] = "个插件";
L["DEBUG_ADD"] = "插件";
L["DEBUG_MEMORY"] = "内存";
L["DEBUG_ERRORLOG"] = "错误日志";
L["DEBUG_OPENERRORLOGCMD"] = "打开日志指令：";
L["DEBUG_ERRORCHECK"] = "小地图按钮提示错误";
L["DEBUG_ERRORTOOLTIP"] = "发生错误时在小地图按钮提示(显示一个红X)";
L["DEBUG_SCRIPTCHECK"] = "游戏自带LUA错误提示";
L["DEBUG_SCRIPTTOOLTIP"] = "打开游戏自带的LUA错误提示功能，非调试插件情况下请不要开启";
L["DEBUG_TAINTLOG"] = "污染日志";
L["DEBUG_TAINT0"] = "不记录任何内容";
L["DEBUG_TAINT1"] = "记录被阻止的操作";
L["DEBUG_TAINT2"] = "记录被阻止的操作/全局变量";
L["DEBUG_TAINT11"] = "记录被阻止的操作/全局变量/条目(PTR/Beta)";
L["DEBUG_GETGUIDBUT"] = "获取目标GUID";
--About
L["ABOUT_TABNAME"] = "关于";
L["ABOUT_VERSION"] = "版本";
L["ABOUT_UPDATETIPS"] = "插件已过期,请在插件关于内查看更新地址";
L["ABOUT_LOAD"] = "载入成功 /pig或小地图按钮设置";
L["ABOUT_REMINDER"]="|cffFF0000*本插件完全免费，网络购物平台出售的皆为骗子*|r"
L["ABOUT_URL"]="https://www.curseforge.com/wow/addons/pig"
L["ABOUT_UPDATEADD"]="更新网址: "
L["ABOUT_MAIL"]="|cffffff00愿意提供本地语言支持请发送邮件:|r xdfxjf1004@hotmail.com"
L["ABOUT_BILI"]="|cff00ff00作者哔哩哔哩账号：|r|cff00FFFFgeligasi|r       |cff00ff00作者抖音账号：|r|cff00ffffgeligasi|r"
L["ABOUT_YY"]="|cff00ff00YY频道|cff00FFFF113213|r"
L["ABOUT_QQ"]="|cff00ff00QQ群|r|cff00FFFF27397148|r, |cff00ff002群|r|cff00FFFF117883385|r"
L["ABOUT_THANKS"]="特别鸣谢"
L["ABOUT_THANKS_TXT"]={
	["C60"]={
		"经典旧世:",
		"|cff00FFFF剑与远征|r [服务器:艾隆纳亚-联盟]\n|cff00FFFF强悍的恋恋鱼|r [服务器:辛洛斯-联盟]",
	},
	["WLK"]={
		"巫妖王之怒:",
		"|cff00FFFF心灵迁徙|r [服务器:碧空之歌-部落]\n|cff00FFFF圣地法爷|r [服务器:碧空之歌-部落]\n|cff00FFFF哈老五|r [服务器:碧空之歌-部落]\n|cff00FFFF宁先生|r [服务器:哈霍兰-联盟]\n|cff00FFFF窟髅玩火|r [服务器:帕奇维克-部落]",
	},
	["RETAIL"]={
		"正式服",
		"|cff00FFFF心灵霜降|r [服务器:凤凰之神-部落]",
	},
}
--Config
L["CONFIG_TABNAME"] = "配置";
L["CONFIG_DEFAULT"] = "默认"..L["CONFIG_TABNAME"];
L["CONFIG_DEFAULTTIPS"] = "开启常用功能";
L["CONFIG_ALLON"] = "全部开启";
L["CONFIG_ALLONTIPS"] = "开启所有功能，不需要的功能请自行关闭";
L["CONFIG_ALLOFF"] = "调试配置";
L["CONFIG_ALLOFFTIPS"] = "此配置默认关闭所有功能，供调试插件使用";
L["CONFIG_DIY"] = "定制配置";
L["CONFIG_DIYTXT"]="联系作者定制你的私人配置";
L["CONFIG_DIYTIPS"] = L["CONFIG_DIYTXT"].."，在任何地方一键载入你的设置";
L["CONFIG_LOADTIPS"] = "此操作将|cff00ff00载入|r\n|cff00ff00<%s>|r的设置。\n已保存的数据将被|cffff0000清空|r。\n是否载入?";
L["CONFIG_ERRTIPS"] = "1、如遇到问题，请在此载入插件默认配置。\n|cffFFff002、如问题仍未解决请通过关于内的反馈方式提交问题。|r";
L["CONFIG_IMPORT"] = "请在下方输入要导入的字符串，并点击导入按钮";
L["CONFIG_DERIVE"] = "请复制下方字符串，粘贴到需要导入位置";
L["CONFIG_DERIVERL"] = "导入并重载";
L["CONFIG_DERIVEERROR"] = "导入失败，无法识别的字符串";
--常用
L["COMMON_TABNAME"] = "常规";
L["COMMON_TABNAME1"] = "商业";
L["COMMON_TABNAME2"] = "交互";
L["COMMON_TABNAME3"] = "智能跟随";
L["COMMON_TABNAME4"] = "其他";
--Chat
L["CHAT_TABNAME"] = "聊天";
L["CHAT_TABNAME1"] = "常用";
L["CHAT_QUKBUT"] = "快捷切换频道按钮";
L["CHAT_QUKBUTTIPS"]="在聊天栏增加一排频道快捷切换按钮，可快速切换频道"
L["CHAT_QUKBUTNAME"] = {"说","喊","队","会","团","通","战","综","组","P","世"};
L["CHAT_QUKBUT_UP"] = "附着于聊天栏上方";
L["CHAT_QUKBUT_DOWN"] = "附着于聊天栏下方";
L["CHAT_QUKBUT_STYLE"]= "样式";
L["CHAT_MINMAXB"]= "显示放大缩小字体按钮";
L["CHAT_MINMAXBTIPS"]= "在聊天栏右上方添加放大缩小字体按钮";
L["CHAT_SHOWZB"]= "显示查看装备图标";
L["CHAT_SHOWZBTIPS"]= "在聊天栏玩家名后显示一个查看装备图标,此功能需要开启交互内的右键增强";
L["CHAT_ALTEX"]= "输入框光标优化";
L["CHAT_ALTEXTIPS"]= "只按方向键即可控制输入框光标，正常系统是需要按住ALT键才可移动光标";
L["CHAT_JIANYIN"]= "关闭聊天栏文字渐隐"
L["CHAT_JIANYINTIPS"]= "移除聊天栏文字渐隐效果";
L["CHAT_ZHIXIANGSHOW"]= "鼠标指向链接直接预览物品属性";
L["CHAT_ZHIXIANGSHOWTIPS"]= "鼠标指向聊天栏物品链接直接显示属性框，正常需要点击链接";
L["CHAT_COLORCLASS"]= "聊天栏显示职业颜色";
L["CHAT_JINGJIAN"]= "精简频道名";
L["CHAT_JINGJIANTIPS"]= L["CHAT_JINGJIAN"].."例：["..LOOK_FOR_GROUP.."]→[组]";
L["CHAT_JOINPIG"]= "自动加入"..LOOK_FOR_GROUP.."/PIG频道"
L["CHAT_JOINPIGTIPS"]= "进入游戏后自动加入"..LOOK_FOR_GROUP.."/PIG频道";
L["CHAT_FONTSIZE"]= "自动设置聊天框字体:"
L["CHAT_FONTSIZETIPS"]= "开启后将在每次登录时恢复聊天框字体大小为设置值，如果想自定义单独聊天框窗字体大小请关闭此选项。"
L["CHAT_DAYINZIDINGYI"]= "打印自定义频道所有者"
L["CHAT_TABNAME2"] = "TAB切换频道";
L["CHAT_TABNAME2TIPS"] = L["CHAT_TABNAME2"].."|cff00ff00(激活输入框时会在下方选中的频道之间切换)|r"
L["CHAT_BN_WHISPER"] = "战网密语"
L["CHAT_TABCKBTIPS"] ="勾选以后TAB键将可以切换到【%s】频道"
L["CHAT_TABNAME3"] = "频道粘连";
L["CHAT_TABNAME3TIPS"] ="粘连回车|cff00ff00(取消粘连回车的频道，发言后回车不会返回此频道)|r";
L["CHAT_ZLCKBTIPS"] ="勾选粘连【%s】频道到回车，取消勾选解除粘连";
L["CHAT_TABNAME4"] = "聊天框布局";
L["CHAT_BIANJU"]= "移除聊天窗口的边距"
L["CHAT_BIANJUTIPS"]= "移除聊天窗口的系统默认边距，使之可以移动到屏幕最边缘";
L["CHAT_ZHUCHATF"]= "主聊天窗口";
L["CHAT_ZHUCHATFW"]= L["OPTUI_SET"].."宽度"
L["CHAT_ZHUCHATFWTIPS"]= L["OPTUI_SET"]..L["CHAT_ZHUCHATF"].."的宽度";
L["CHAT_ZHUCHATFH"]= L["OPTUI_SET"].."高度"
L["CHAT_ZHUCHATFHTIPS"]= L["OPTUI_SET"]..L["CHAT_ZHUCHATF"].."的高度";
L["CHAT_ZHUCHATFXY"]= L["OPTUI_SET"].."坐标位置"
L["CHAT_ZHUCHATFXYTIPS"]= L["OPTUI_SET"]..L["CHAT_ZHUCHATF"].."的坐标位置";
L["CHAT_LOOTFADD"]= "创建独立拾取窗口";
L["CHAT_LOOTFYES"]= "已创建独立拾取窗口";
L["CHAT_LOOTFNAME"]="拾取/其他";
L["CHAT_LOOTFW"]= L["OPTUI_SET"].."宽度"
L["CHAT_LOOTFWTIPS"]= L["OPTUI_SET"]..L["CHAT_LOOTFNAME"].."的宽度";
L["CHAT_LOOTFH"]= L["OPTUI_SET"].."高度"
L["CHAT_LOOTFHTIPS"]= L["OPTUI_SET"]..L["CHAT_LOOTFNAME"].."的高度";
L["CHAT_LOOTFXY"]= L["OPTUI_SET"].."坐标位置"
L["CHAT_LOOTFXYTIPS"]= L["OPTUI_SET"]..L["CHAT_LOOTFNAME"].."的坐标位置";
L["CHAT_LOOTFTIPS"]="\124cffffff00创建一个显示拾取物品信息的单独聊天窗口\124r\n\124cff00ff00下方选项在创建独立拾取窗口后方可启用\n不需要独立拾取窗口时请手动移除\124r";
L["CHAT_LOOTFNRSET"]="重设窗口显示内容";
L["CHAT_LOOTFFENLI"]="分离显示拾取窗口";
L["CHAT_LOOTFNRSETTIPS"]="启用独立拾取窗口后，建议打开此选项。\n重新设置窗口显示内容，综合频道将取消经验荣誉以及拾取信息的显示，拾取窗口添加拾取/经验/荣誉等的显示！\n修改战斗记录为记录以便缩短标签页长度。";
L["CHAT_LOOTFADDERR1"]="创建失败！当前屏幕分辨率过小";
L["CHAT_LOOTFADDERR2"]="创建失败！系统允许做大聊天窗口数：10，当前："..FCF_GetNumActiveChatFrames();
L["CHAT_RECHATBUT"]= "重置聊天"..L["OPTUI_SET"];
--动作条
L["ACTION_TABNAME"] = "动作条";
L["ACTION_TABNAME1"] = "常规";
L["ACTION_TABNAME2"] = "功能动作条";
L["ACTION_TABNAME3"] = "额外动作条";
--背包
L["BAGBANK_TABNAME"] = "背包/银行";
--界面优化
L["FRAMEP_TABNAME"] = "界面优化";
L["FRAMEP_TABNAME1"] = "暴雪界面";
L["FRAMEP_TABNAME2"] = "鼠标提示";
--头像框架
L["UNIT_TABNAME"] = "头像框架";
L["UNIT_TABNAME1"] = "自身头像";
L["UNIT_TABNAME2"] = "队友头像";
L["UNIT_TABNAME3"] = "目标头像";
--战斗辅助
L["COMBAT_TABNAME"] = "战斗辅助";
L["COMBAT_TABNAME1"] = "标记按钮";
L["COMBAT_TABNAME2"] = "战斗时间";
L["COMBAT_TABNAME3"] = "个人资源条";
--地图
L["MAP_TABNAME"] = "地图";
L["MAP_TABNAME1"] = "小地图";
L["MAP_NIMIBUT"] = "显示小地图按钮";
L["MAP_NIMIBUTTIPS"] = "显示插件的小地图按钮";
L["MAP_NIMIBUT_BS"] = "允许被收纳";
L["MAP_NIMIBUT_BSTIPS"] = "开启后小地图按钮将可以被其他插件收纳。|cffFF0000(注意和下方收纳小地图按钮功能只能选一)|r";
L["MAP_NIMIBUT_SN"] = "收纳其他插件小地图按钮";
L["MAP_NIMIBUT_SNTIPS"] = "开启后将收纳其他插件的小地图按钮到单独界面，左键点击本插件小地图按钮可查看已收纳按钮！|cffFF0000(注意和上方允许被收纳只能选一)|r";
L["MAP_NIMIBUT_HANGNUM"]="每行按钮数:"
L["MAP_NIMIBUT_NOSN"]="禁止收纳的小地图按钮"
L["MAP_NIMIBUT_DELTIPS"]="删除后小地图按钮将被正常收纳\n确定删除？"
L["MAP_NIMIBUT_ADDTIPS"]="添加禁止插件收纳的按钮\n|cffFFFF00注意是插件小地图按钮名\n不是插件名/fstack查看按钮名|r"
L["MAP_NIMIBUT_ADD"]="添加"
L["MAP_NIMIBUT_ADDERR1"]="添加失败：插件按钮名称不能为空"
L["MAP_NIMIBUT_ADDERR2"]="添加失败：已存在同名插件按钮"
L["MAP_NIMIBUT_TIPS1"]="左击-|cff00FFFF展开小地图按钮|r\r右击-|cff00FFFF设置|r\rShift+左击-|cff00FFFF重载界面|r\rCtrl+左击-|cff00FFFF打开错误日志|r"
L["MAP_NIMIBUT_TIPS2"]="点击-|cff00FFFF设置|r\rShift+左击-|cff00FFFF重载界面|r\rCtrl+左击-|cff00FFFF打开错误日志|r"
L["MAP_NIMIBUT_TIPS3"]="|cff00FF00此界面为其他插件按钮收纳框,当前未启用收纳功能！\r|r|cff00FFFF右键打开插件-设置|r"
L["MAP_TABNAME2"] = "世界地图";
L["MAP_WORDXY"] = "显示玩家坐标";
L["MAP_WORDXYTIPS"] = "显示玩家在地图坐标";
L["MAP_WORDWIND"] = "窗口化世界地图";
L["MAP_WORDWINDTIPS"] = "窗口化世界地图并使其可以拖动";
L["MAP_WORDLV"] = "显示等级范围";
L["MAP_WORDLVTIPS"] = "显示地图的等级范围";
L["MAP_WORDSKILL"] = "显示钓鱼技能要求";
L["MAP_WORDSKILLTIPS"] = "显示地图的钓鱼技能最低要求";
L["MAP_WORDMIWU"] = "去除战争迷雾";
L["MAP_WORDMIWUTIPS"] = "去除地图战争迷雾";
--Cvar
L["CVAR_TABNAME"] = "游戏设置(CVar)";
L["CVAR_TABNAME1"] = "常规";
L["CVAR_TABNAME2"] = "姓名版";
L["CVAR_TABNAME3"] = "自身高亮";
L["CVAR_TABNAME4"] = "高级";
--开团助手
L["RaidR_TABNAME"] = "开团助手";

--Invite
L["INVITE_NAME"] = "时空之门";
L["INVITE_LEISURE"] = "候车";
L["INVITE_CHEDUI"] = "车队";
L["INVITE_PLANE"] = "位面";
L["INVITE_RECEIVEDATA"] = "正在接收数据...";
L["INVITE_WARNING"] = "***请勿在非中国大陆服务器使用***";
L["INVITE_LFG_JOIN"] = "加入PIG频道";
L["INVITE_LFG_LEAVE"] = "已加入PIG频道"
-- 
addonTable.locale=L