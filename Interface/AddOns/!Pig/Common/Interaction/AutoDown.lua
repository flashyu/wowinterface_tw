local _, addonTable = ...;
local InteractionFun=addonTable.CommonFun.Interaction
--------------
local errList1 = {
	[ERR_CANTATTACK_NOTSTANDING] = true,-- "你必须处于站立状态下才能进行攻击！";
	[ERR_LOOT_NOTSTANDING] = true,--"你必须处于站立状态下才能进行搜索！";
	[SPELL_FAILED_NOT_STANDING]= true,--"你必须处于站立状态下才能那么做"
}
local errList2 = {
	[ERR_ATTACK_MOUNTED] = true,--"无法在骑乘时攻击。"
	[ERR_NOT_WHILE_MOUNTED] = true,--"你不能在骑乘状态下那么做。";
	[SPELL_FAILED_NOT_MOUNTED] = true,--"你正在骑乘状态。"
	[ERR_TAXIPLAYERALREADYMOUNTED] = true,--"你已经上了坐骑！请先下来。"
}

local zidongxiama = CreateFrame("Frame")
zidongxiama:SetScript("OnEvent", function(self,event,key,state)
	--print(key,state);
	if errList1[state] then
		DoEmote("stand")--站立
	elseif errList2[state] then
		Dismount()	--下马
	--elseif state == '你不能在变形状态下使用空中运输服务！' then
	-- 	CancelShapeshiftForm()--取消变形
	end
end)
--------------------
InteractionFun.AutoDown = function()
	if PIG['Interaction']['AutoDown'] then
		zidongxiama:RegisterEvent("UI_ERROR_MESSAGE")
	else
		zidongxiama:UnregisterEvent("UI_ERROR_MESSAGE")
	end
end