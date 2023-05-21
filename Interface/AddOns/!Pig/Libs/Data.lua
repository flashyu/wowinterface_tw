local addonName, addonTable = ...;
local L=addonTable.locale
local _, _, _, tocversion = GetBuildInfo()
local Data = {}

--装备编号
Data.InvSlot = {
	["ID"]={1,2,3,5,6,7,8,9,10,11,12,13,14,15,16,17},
	["CID"] = {1,2,3,15,5,4,19,9,10,6,7,8,11,12,13,14,16,17},
	["Name"]={
		[0]={"AMMOSLOT",AMMOSLOT,"Ammo",false},[1]={"HEADSLOT",HEADSLOT,"Head",true},[2]={"NECKSLOT",NECKSLOT,"Neck",false},
		[3]={"SHOULDERSLOT",SHOULDERSLOT,"Shoulder",true},[4]={"SHIRTSLOT",SHIRTSLOT,"Shirt",false},[5]={"CHESTSLOT",CHESTSLOT,"Chest",true},
		[6]={"WAISTSLOT",WAISTSLOT,"Waist",true},[7]={"LEGSSLOT",LEGSSLOT,"Legs",true},[8]={"FEETSLOT",FEETSLOT,"Feet",true},
		[9]={"WRISTSLOT",WRISTSLOT,"Wrist",true},[10]={"HANDSSLOT",HANDSSLOT,"Hands",true},[11]={"FINGER0SLOT",FINGER0SLOT,"Finger0",false},
		[12]={"FINGER1SLOT",FINGER1SLOT,"Finger1",false},[13]={"TRINKET0SLOT",TRINKET0SLOT,"Trinket0",false},[14]={"TRINKET1SLOT",TRINKET1SLOT,"Trinket1",false},
		[15]={"BACKSLOT",BACKSLOT,"Back",false},[16]={"MAINHANDSLOT",MAINHANDSLOT,"MainHand",true},[17]={"SECONDARYHANDSLOT",SECONDARYHANDSLOT,"SecondaryHand",true},
		[18]={"RANGEDSLOT",RANGEDSLOT,"Ranged",true},[19]={"TABARDSLOT",TABARDSLOT,"Tabard",false},
	}
}
if tocversion<50000 then
	table.insert(Data.InvSlot["ID"],18)
	table.insert(Data.InvSlot["CID"],18)
end

--装备颜色
Data.Quality= {}
for k,v in pairs(Enum.ItemQuality) do
	Data.Quality[v]={["Name"]={},["RGB"]={},["HEX"]={}}
	local r, g, b, hex = GetItemQualityColor(v)
	Data.Quality[v]["Name"]='|c'..hex.._G["ITEM_QUALITY"..v.."_DESC"]..'|r'
	Data.Quality[v]["RGB"]={r, g, b}
	Data.Quality[v]["HEX"]=hex
end

--副本数据
local InstanceList = {}
local InstanceID_id = {
	["Party"]={
		["Vanilla"]={33,34,36,43,47,48,70,90,109,129,189,209,229,230,289,329,349,389,429,},
		["TBC"]={269,540,542,543,545,546,547,552,553,554,555,556,557,558,560,585,},
		["WLK"]={574,575,576,578,595,599,600,601,602,604,608,619,632,650,658,668,},
	},
	["Raid"] = {
		["Vanilla"]={309,409,469,509,531},
		["TBC"]={532,534,544,548,550,564,565,580},
		["WLK"]={603,615,616,624,631,649,724},
	},
}
if tocversion<20000 then
	table.insert(InstanceList,{L["LIB_PARTY"],"Party","Vanilla"})
	table.insert(InstanceList,{L["LIB_RAID"],"Raid","Vanilla"})
	table.insert(InstanceID_id["Raid"]["Vanilla"],249)--奥妮克希亚的巢穴
	table.insert(InstanceID_id["Raid"]["Vanilla"],533)--纳克萨玛斯
else
	table.insert(InstanceList,{L["LIB_PARTY"],"Party","Vanilla"})
	table.insert(InstanceList,{L["LIB_PARTY"].."(TBC)","Party","TBC"})
	table.insert(InstanceList,{L["LIB_RAID"],"Raid","Vanilla"})
	table.insert(InstanceList,{L["LIB_RAID"].."(TBC)","Raid","TBC"})
	if tocversion<30000 then
		table.insert(InstanceID_id["Raid"]["Vanilla"],249)
		table.insert(InstanceID_id["Raid"]["Vanilla"],533)
	else
		table.insert(InstanceList,3,{L["LIB_PARTY"].."(WLK)","Party","WLK"})
		table.insert(InstanceList,{L["LIB_RAID"].."(WLK)","Raid","WLK"})
		table.insert(InstanceID_id["Raid"]["WLK"],249)
		table.insert(InstanceID_id["Raid"]["WLK"],533)
	end
end
local InstanceID = {}
for k,v in pairs(InstanceID_id) do
	InstanceID[k]={}
	for kk,vv in pairs(v) do
		InstanceID[k][kk]={}
		for i=1,#vv do
			local fubenname = GetRealZoneText(vv[i])
			local _,_,_, fubennameXX =fubenname:find("(：(.+))");
			if fubennameXX then
				InstanceID[k][kk][i]=fubennameXX
			else
				InstanceID[k][kk][i]=fubenname
			end
		end
	end
end
Data.FBdata={InstanceList,InstanceID}
----------------
addonTable.Data=Data