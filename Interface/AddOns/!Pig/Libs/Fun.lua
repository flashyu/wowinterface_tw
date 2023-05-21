local addonName, addonTable = ...;
local _, _, _, tocversion = GetBuildInfo()
local Fun = {}
-------------
function table.removekey(table, key)
    local element = table[key]
    table[key] = nil
    return element
end
function PIG_print(msg)
	print("|cff00FFFF!Pig:|r|cffFFFF00"..msg.."!|r");
end
----
function PIGEnable(self)
	self:Enable() self.Text:SetTextColor(1, 1, 1, 1) 
end
function PIGDisable(self)
	self:Disable() self.Text:SetTextColor(0.4, 0.4, 0.4, 1) 
end
--根据等级计算单价
function Fun.Get_LvDanjia(lv,fbName,danjiaList)
	if fbName~="无" then
		for id = 1, 4, 1 do
			if danjiaList[id][1]>0 then
				if lv>=danjiaList[id][1] and lv<=danjiaList[id][2] then
					return danjiaList[id][3]
				end
			end
		end
	end
	return 0
end
--获取队伍等级文本
function Fun.Get_GroupLV(MsgNr)
	local MsgNr=""
	if IsInGroup() then
		local numgroup = GetNumSubgroupMembers()
		if numgroup>0 then
			for id=1,numgroup do
				local dengjiKk = UnitLevel("Party"..id);
				if id==numgroup then
					MsgNr=MsgNr..dengjiKk;
				else
					MsgNr=MsgNr..dengjiKk..",";
				end
			end
			MsgNr=MsgNr;
		end
	end
	return MsgNr
end
--获取所带副本级别单价文本
function Fun.Get_LvDanjiaTxt(MsgNr)
	local MsgNr = ""
	local fbName=PIG_Per.daiben.fubenName
	local danjiaList=PIG_Per.daiben.LV_danjia[fbName]
	for id = 1, 4, 1 do
		local kaishiLV =danjiaList[id][1]
		local jieshuLV =danjiaList[id][2]
		local jiageG =danjiaList[id][3]
		if kaishiLV>0 and jieshuLV>0 then
			if jiageG>0 then
				MsgNr=MsgNr.."<"..kaishiLV.."-"..jieshuLV..">"..jiageG.."G;"
			else
				MsgNr=MsgNr.."<"..kaishiLV.."-"..jieshuLV..">"..L["LIB_FREE"]
			end
		end
	end
	return MsgNr
end
--获取设置的最小和最大级别
function Fun.Get_LVminmax(fbName,danjiaList)
	local min,max = nil,nil
	for id = 1, 4, 1 do
		local kaishiLV =danjiaList[id][1]
		local jieshuLV =danjiaList[id][2]
		if kaishiLV>0 and jieshuLV>0 then
			if min then
				if kaishiLV<min then
					min=kaishiLV
				end
			else
				min=kaishiLV
			end
			if max then
				if jieshuLV>max then
					max=jieshuLV
				end
			else
				max=jieshuLV
			end
		end
	end
	local min,max = min or 0,max or 0
	return min,max
end
------------------
addonTable.Fun=Fun