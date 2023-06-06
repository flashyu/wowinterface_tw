local addonName, addonTable = ...;
local L=addonTable.locale
local Create = addonTable.Create
local PIGFrame=Create.PIGFrame
local PIGLine=Create.PIGLine
local PIGButton = Create.PIGButton
local PIGOptionsList=Create.PIGOptionsList
local PIGFontString=Create.PIGFontString

--载入默认配置-------
local function Config_Default()
	local moren=addonTable.Default;
	PIGA = PIGA or moren;
	for k,v in pairs(moren) do
		if PIGA[k]==nil then
			PIGA[k] = moren[k]
		end
		if PIGA[k]=="OFF" then 
			PIGA[k]=false
		elseif PIGA[k]=="ON" then 
			PIGA[k]=true
		elseif type(v)=="table" then
			if type(PIGA[k])~="table" then
				PIGA[k] = moren[k]
			end
			for kk,vv in pairs(v) do
				if PIGA[k][kk]==nil then
					PIGA[k][kk] = moren[k][kk]
				end
				if PIGA[k][kk]=="OFF" then 
					PIGA[k][kk]=false
				elseif PIGA[k][kk]=="ON" then 
					PIGA[k][kk]=true
				elseif type(vv)=="table" then
					if type(PIGA[k][kk])~="table" then
						PIGA[k][kk] = moren[k][kk]
					end
					for kkk,vvv in pairs(vv) do
						if PIGA[k][kk][kkk]==nil then
							PIGA[k][kk][kkk] = moren[k][kk][kkk]
						end
						if PIGA[k][kk][kkk]=="OFF" then 
							PIGA[k][kk][kkk]=false
						elseif PIGA[k][kk][kkk]=="ON" then 
							PIGA[k][kk][kkk]=true
						elseif type(vvv)=="table" then
							if type(PIGA[k][kk][kkk])~="table" then
								PIGA[k][kk][kkk] = moren[k][kk][kkk]
							end
						end
					end
				end
			end
		end
	end
	local moren_Per=addonTable.Default_Per;
	PIG_PerA = PIG_PerA or moren_Per;
	for k,v in pairs(moren_Per) do
		if PIG_PerA[k]==nil then
			PIG_PerA[k] = moren_Per[k]
		end
		if PIG_PerA[k]=="OFF" then 
			PIG_PerA[k]=false
		elseif PIG_PerA[k]=="ON" then 
			PIG_PerA[k]=true
		elseif type(v)=="table" then
			if type(PIG_PerA[k])~="table" then
				PIG_PerA[k] = moren_Per[k]
			end
			for kk,vv in pairs(v) do
				if PIG_PerA[k][kk]==nil then
					PIG_PerA[k][kk] = moren_Per[k][kk]
				end
				if PIG_PerA[k][kk]=="OFF" then 
					PIG_PerA[k][kk]=false
				elseif PIG_PerA[k][kk]=="ON" then 
					PIG_PerA[k][kk]=true
				elseif type(vv)=="table" then
					if type(PIG_PerA[k][kk])~="table" then
						PIG_PerA[k][kk] = moren_Per[k][kk]
					end
					for kkk,vvv in pairs(vv) do
						if PIG_PerA[k][kk][kkk]==nil then
							PIG_PerA[k][kk][kkk] = moren_Per[k][kk][kkk]
						end
						if PIG_PerA[k][kk][kkk]=="OFF" then 
							PIG_PerA[k][kk][kkk]=false
						elseif PIG_PerA[k][kk][kkk]=="ON" then 
							PIG_PerA[k][kk][kkk]=true
						elseif type(vvv)=="table" then
							if type(PIG_PerA[k][kk][kkk])~="table" then
								PIG_PerA[k][kk][kkk] = moren_Per[k][kk][kkk]
							end
						end
					end
				end
			end
		end
	end
end
addonTable.Config_Default=Config_Default
--------------
local Config_ID ={"Default","AllON","AllOFF"};
local Config_Name ={L["CONFIG_DEFAULT"],L["CONFIG_ALLON"],L["CONFIG_ALLOFF"]};
local Config_SM ={L["CONFIG_DEFAULTTIPS"],L["CONFIG_ALLONTIPS"],L["CONFIG_ALLOFFTIPS"]};
---------
local fuFrame = PIGOptionsList(L["CONFIG_TABNAME"])
local function add_Configbut(Config_Name,UIname,Config_SM)
	local But = PIGButton(fuFrame,nil,{120,26},Config_Name,UIname,Config_SM)
	But.title = PIGFontString(But,{"LEFT", But, "RIGHT", 6, 0},Config_SM)
	But.title:SetTextColor(0, 1, 0, 1);
	But.title:SetJustifyH("LEFT");
	PIGLine(But,"BOT",-20,{1,-20,484})
	return But
end

for id=1,#Config_ID do
	local Default_But = add_Configbut(Config_Name[id],"Default_But_"..id,Config_SM[id])
	if id==1 then
		Default_But:SetPoint("TOPLEFT",fuFrame,"TOPLEFT",20,-20);
	else
		Default_But:SetPoint("TOPLEFT",_G["Default_But_"..(id-1)],"BOTTOMLEFT",0,-40);
	end
end

for id=1,#Config_ID do
	_G["Default_But_"..id]:SetScript("OnClick", function ()
		StaticPopup_Show("PEIZHI_"..Config_ID[id],Config_Name[id]);
	end);
	StaticPopupDialogs["PEIZHI_"..Config_ID[id]] = {
		text = L["CONFIG_LOADTIPS"],
		button1 = L["LIB_YES"],
		button2 = L["LIB_NO"],
		OnAccept = function()
			PIGA = addonTable[Config_ID[id]];
			PIG_PerA = addonTable[Config_ID[id].."_Per"];
			Pig_Options_RLtishi_UI:Show()
		end,
		timeout = 0,
		whileDead = true,
		hideOnEscape = true,
	}
end
fuFrame.DIYDefault = add_Configbut(L["CONFIG_DIY"],nil,L["CONFIG_DIYTIPS"])
fuFrame.DIYDefault:SetPoint("TOPLEFT",fuFrame,"TOPLEFT",20,-220);
fuFrame.DIYDefault:SetScript("OnClick", function (self)
	Pig_OptionsUI:ShowAuthor()
end);

---提示-----------------------------------
fuFrame.tishi = PIGFontString(fuFrame,{"TOPLEFT", fuFrame, "TOPLEFT", 20, -300},L["LIB_TIPS"])
fuFrame.tishi:SetTextColor(1, 1, 0, 1);
fuFrame.tishi1 = PIGFontString(fuFrame,{"TOPLEFT", fuFrame.tishi, "TOPRIGHT", 10, -2},L["CONFIG_ERRTIPS"])
fuFrame.tishi1:SetTextColor(0.6, 1, 0, 1);
fuFrame.tishi1:SetJustifyH("LEFT");

--配置导出/导入页面-----------------
local ConfigWWW,ConfigHHH = 800, 600
local Config_Transfer=PIGFrame(UIParent,{"CENTER",UIParent,"CENTER",0,0},{ConfigWWW,ConfigHHH})
Config_Transfer:PIGSetBackdrop(1)
Config_Transfer:PIGSetMovable()
Config_Transfer:PIGClose()
Config_Transfer:SetFrameLevel(999);
Config_Transfer:Hide()
Config_Transfer.biaoti=PIGFontString(Config_Transfer,{"TOP", Config_Transfer, "TOP", 0, -4})
PIGLine(Config_Transfer,"TOP",-20,{1,1,-1,-20})
---
local julidi,daoruTXT,daochuTXT = -26,L["CONFIG_IMPORT"],L["CONFIG_DERIVE"]
Config_Transfer.tishitxt = PIGFontString(Config_Transfer,{"TOPLEFT",Config_Transfer,"TOPLEFT",6,julidi-4},daoruTXT)
Config_Transfer.tishitxt:SetTextColor(0, 1, 0, 1);
Config_Transfer.daoruBut = PIGButton(Config_Transfer,{"TOPRIGHT",Config_Transfer,"TOPRIGHT",-40,julidi},{140,20},L["CONFIG_DERIVERL"])
Config_Transfer.daoruBut:Hide();
Config_Transfer.Line2 =PIGLine(Config_Transfer,"TOP",-50,{1,1,-1,-50})
--
Config_Transfer.NR=PIGFrame(Config_Transfer)
Config_Transfer.NR:SetPoint("TOPLEFT", Config_Transfer.Line2, "TOPLEFT", 4, -4)
Config_Transfer.NR:SetPoint("BOTTOMRIGHT", Config_Transfer, "BOTTOMRIGHT", -4, 4)
Config_Transfer.NR:PIGSetBackdrop()
Config_Transfer.NR.scroll = CreateFrame("ScrollFrame", nil, Config_Transfer.NR, "UIPanelScrollFrameTemplate")
Config_Transfer.NR.scroll:SetPoint("TOPLEFT", Config_Transfer.NR, "TOPLEFT", 6, -6)
Config_Transfer.NR.scroll:SetPoint("BOTTOMRIGHT", Config_Transfer.NR, "BOTTOMRIGHT", -26, 6)

Config_Transfer.NR.textArea = CreateFrame("EditBox", nil, Config_Transfer.NR.scroll)
Config_Transfer.NR.textArea:SetFontObject(ChatFontNormal);
Config_Transfer.NR.textArea:SetWidth(ConfigWWW-40)
Config_Transfer.NR.textArea:SetMultiLine(true)
Config_Transfer.NR.textArea:SetMaxLetters(99999)
Config_Transfer.NR.textArea:EnableMouse(true)
Config_Transfer.NR.textArea:SetScript("OnEscapePressed", function(self)
	self:ClearFocus()
	Config_Transfer:Hide();
end)
Config_Transfer.NR.scroll:SetScrollChild(Config_Transfer.NR.textArea)

---以下部分来自ALA大神告诉的AEC3代码
local strbyte, strchar, gsub, gmatch, format = string.byte, string.char, string.gsub, string.gmatch, string.format
local assert, error, pcall = assert, function(msg) print("|cffFFFF00!Pig:|r|cffFF0000"..msg.."|r") end, pcall
local type, tostring, tonumber = type, tostring, tonumber
local pairs, select, frexp = pairs, select, math.frexp
local tconcat = table.concat
local function SerializeStringHelper(ch)
	local n = strbyte(ch)
	if n==30 then
		return "\126\122"
	elseif n<=32 then
		return "\126"..strchar(n+64)
	elseif n==94 then
		return "\126\125"
	elseif n==126 then
		return "\126\124"
	elseif n==127 then
		return "\126\123"
	else
		assert(false)
	end
end
--
local function SerializeValue(v, res, nres)
	local t=type(v)
	if t=="string" then
		v = gsub(v,"|", "P124")
		res[nres+1] = "^S"
		res[nres+2] = gsub(v,"[%c \94\126\127]", SerializeStringHelper)
		nres=nres+2
	elseif t=="number" then	
		local str = tostring(v)
		if tonumber(str)==v then
			res[nres+1] = "^N"
			res[nres+2] = str
			nres=nres+2
		elseif v == inf or v == -inf then
			res[nres+1] = "^N"
			res[nres+2] = v == inf and serInf or serNegInf
			nres=nres+2
		else
			local m,e = frexp(v)
			res[nres+1] = "^F"
			res[nres+2] = format("%.0f",m*2^53)	
			res[nres+4] = tostring(e-53)
			nres=nres+4
		end
	elseif t=="table" then
		nres=nres+1
		res[nres] = "^T"
		for k,v in pairs(v) do
			nres = SerializeValue(k, res, nres)
			nres = SerializeValue(v, res, nres)
		end
		nres=nres+1
		res[nres] = "^t"
	elseif t=="boolean" then
		nres=nres+1
		if v then
			res[nres] = "^B"
		else
			res[nres] = "^b"
		end
	elseif t=="nil" then
		nres=nres+1
		res[nres] = "^Z"

	else
		error("Unable to serialize the value of the type'"..t.."'")--无法序列化类型的值
	end
	return nres
end
---
local serializeTbl = { "^1" }
local tconcat = table.concat
local function Serialize(...)
	local nres = 1
	for i=1,select("#", ...) do
		local v = select(i, ...)
		nres = SerializeValue(v, serializeTbl, nres)
	end
	serializeTbl[nres+1] = "^^"	
	return tconcat(serializeTbl, "", 1, nres+1)
end
local function Config_CHU(self,peizhiInfo)
	Config_Transfer:Show()
	Config_Transfer.daoruBut:Hide();
	Config_Transfer.biaoti:SetText(self:GetText()..L["CONFIG_TABNAME"]);
	Config_Transfer.tishitxt:SetText(daochuTXT);
	local text = Serialize(peizhiInfo)
	Config_Transfer.NR.textArea:SetText(text)
	Config_Transfer.NR.textArea:HighlightText()
end
addonTable.Config_CHU=Config_CHU
--导入
local function DeserializeStringHelper(escape)
	if escape<"~\122" then
		return strchar(strbyte(escape,2,2)-64)
	elseif escape=="~\122" then
		return "\030"
	elseif escape=="~\123" then
		return "\127"
	elseif escape=="~\124" then
		return "\126"
	elseif escape=="~\125" then
		return "\94"
	end
	error("DeserializeStringHelper got called for '"..escape.."'?!?")
end

local function DeserializeNumberHelper(number)
	if number == serNegInf or number == serNegInfMac then
		return -inf
	elseif number == serInf or number == serInfMac then
		return inf
	else
		return tonumber(number)
	end
end
local function DeserializeValue(iter,single,ctl,data)
	if not single then
		ctl,data = iter()
	end
	if not ctl then 
		error("Supplied data misses AceSerializer terminator ('^^')")
	end	
	if ctl=="^^" then
		return
	end
	local res
	if ctl=="^S" then
		res = gsub(data, "~.", DeserializeStringHelper)
	elseif ctl=="^N" then
		res = DeserializeNumberHelper(data)
		if not res then
			error("Number of invalid serializations: '"..tostring(data).."'")--无效的序列化的数量
		end
	elseif ctl=="^F" then
		local ctl2,e = iter()
		if ctl2~="^f" then
			error("Invalid serialized floating point number expected , not '^f'"..tostring(ctl2).."'")--预期无效的序列化浮点数  not'^f', 
		end
		local m=tonumber(data)
		e=tonumber(e)
		if not (m and e) then
			error("Invalid serialized floating-point number, expected mantissa, and exponent'"..tostring(m).."' and '"..tostring(e).."'")--无效的序列化浮点数，期望的尾数和指数
		end
		res = m*(2^e)
	elseif ctl=="^B" then
		res = true
	elseif ctl=="^b" then
		res = false
	elseif ctl=="^Z" then
		res = nil
	elseif ctl=="^T" then
		res = {}
		local k,v
		while true do
			ctl,data = iter()
			if ctl=="^t" then break end
			k = DeserializeValue(iter,true,ctl,data)
			if k==nil then 
				error("Invalid AceSerializer format (no end-of-table flag)")--无效的AceSerializer格式(没有表结束标记)
			end
			ctl,data = iter()
			v = DeserializeValue(iter,true,ctl,data)
			if v==nil then
				error("Invalid AceSerializer format (no end-of-table flag)")--无效的AceSerializer格式(没有表结束标记)
			end
			res[k]=v
		end
	else
		error("Invalid AceSerializer control code"..ctl.."'")--无效的AceSerializer控制代码
	end
	if not single then
		return res,DeserializeValue(iter)
	else
		return res
	end
end
local function Deserialize(str)
	str = gsub(str,"P124", "|")
	str = gsub(str, "[%c ]", "")
	local iter = gmatch(str, "(^.)([^^]*)")	
	local ctl,data = iter()
	if not ctl or ctl~="^1" then
		return false, "Unknown data" --未知数据
	end
	return pcall(DeserializeValue, iter)
end
Config_Transfer.daoruBut:SetScript("OnClick", function(self, button)
	local tttxt =Config_Transfer.NR.textArea:GetText()
	local OOKK,dataff =Deserialize(tttxt)
	if OOKK then
		local peizhiInfo =self.peizhiInfo
		local jueseYN, xininfo1, xininfo2, xininfo3, xininfo4 = peizhiInfo[1],peizhiInfo[2],peizhiInfo[3],peizhiInfo[4],peizhiInfo[5];
		if jueseYN then
			if xininfo4 then
				PIG_PerA[xininfo1][xininfo2][xininfo3][xininfo4]=dataff
			elseif xininfo3 then
				PIG_PerA[xininfo1][xininfo2][xininfo3]=dataff
			elseif xininfo2 then
				PIG_PerA[xininfo1][xininfo2]=dataff
			elseif xininfo1 then
				PIG_PerA[xininfo1]=dataff
			end
		else
			if xininfo4 then
				PIGA[xininfo1][xininfo2][xininfo3][xininfo4]=dataff
			elseif xininfo3 then
				PIGA[xininfo1][xininfo2][xininfo3]=dataff
			elseif xininfo2 then
				PIGA[xininfo1][xininfo2]=dataff
			elseif xininfo1 then
				PIGA[xininfo1]=dataff
			end
		end
		ReloadUI()
	else
		message(L["CONFIG_DERIVEERROR"]);
	end
end)
----
local function Config_RU(self,peizhiInfo)
	Config_Transfer:Show()
	Config_Transfer.daoruBut:Show();
	Config_Transfer.biaoti:SetText(self:GetText()..L["CONFIG_TABNAME"]);
	Config_Transfer.tishitxt:SetText(daoruTXT);
	Config_Transfer.NR.textArea:SetText("")
	Config_Transfer.daoruBut.peizhiInfo=peizhiInfo
end
addonTable.Config_RU=Config_RU