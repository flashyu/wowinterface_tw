local _, addonTable = ...;
local gsub = _G.string.gsub
local _, _, _, tocversion = GetBuildInfo()
----
local Create = addonTable.Create
local PIGFrame=Create.PIGFrame
local PIGButton = Create.PIGButton
local PIGDownMenu=Create.PIGDownMenu
local PIGLine=Create.PIGLine
local PIGEnter=Create.PIGEnter
local PIGSlider = Create.PIGSlider
local PIGCloseBut=Create.PIGCloseBut
local PIGModbutton=Create.PIGModbutton
local PIGCheckbutton=Create.PIGCheckbutton
local PIGModCheckbutton=Create.PIGModCheckbutton
local PIGOptionsList_RF=Create.PIGOptionsList_RF
local PIGOptionsList_R=Create.PIGOptionsList_R
local PIGQuickBut=Create.PIGQuickBut
local Show_TabBut_R=Create.Show_TabBut_R
local PIGFontString=Create.PIGFontString
local PIGCloseBut=Create.PIGCloseBut
local PIGSetFont=Create.PIGSetFont
----------
local RaidRFun=addonTable.RaidRFun
local iconWH,hang_Height,hang_NUM,lineTOP  = RaidRFun.iconWH,RaidRFun.hang_Height,RaidRFun.hang_NUM,RaidRFun.lineTOP

function RaidRFun.RaidRecord_Fakuan()
	local GnName,GnUI,GnIcon,FrameLevel = RaidRFun.GnName,RaidRFun.GnUI,RaidRFun.GnIcon,RaidRFun.FrameLevel
	local RaidR=_G[GnUI]
	local fujiF=PIGOptionsList_R(RaidR.F,"罚款/其他",80)
	----
	--fujiF.line = PIGLine(fujiF,"C",-1)
	fujiF.fakuan = PIGFrame(fujiF,{"TOPLEFT",fujiF,"TOPLEFT",0,0});  
	fujiF.fakuan:SetPoint("BOTTOMRIGHT",fujiF,"BOTTOMRIGHT",0,0);
	fujiF.fakuan.yedibuF = PIGLine(fujiF.fakuan,"BOT",lineTOP)
	fujiF.fakuan.guangbaoBut = CreateFrame("Button",nil,fujiF.fakuan);  
	fujiF.fakuan.guangbaoBut:SetSize(iconWH,iconWH);
	fujiF.fakuan.guangbaoBut:SetPoint("TOPLEFT", fujiF.fakuan, "TOPLEFT", 6,-4);
	fujiF.fakuan.guangbaoBut:SetHighlightTexture("interface/buttons/ui-common-mousehilight.blp");
	fujiF.fakuan.guangbaoBut.Tex = fujiF.fakuan.guangbaoBut:CreateTexture(nil, "BORDER");
	fujiF.fakuan.guangbaoBut.Tex:SetTexture(130979);
	fujiF.fakuan.guangbaoBut.Tex:SetPoint("CENTER",4,0);
	fujiF.fakuan.guangbaoBut.Tex:SetSize(iconWH,iconWH);
	PIGEnter(fujiF.fakuan.guangbaoBut,"播报罚款/其他明细")
	fujiF.fakuan.guangbaoBut:SetScript("OnMouseDown", function (self)
		self.Tex:SetPoint("CENTER",2.5,-1.5);
	end);
	fujiF.fakuan.guangbaoBut:SetScript("OnMouseUp", function (self)
		self.Tex:SetPoint("CENTER",4,0);
	end);
	fujiF.fakuan.guangbaoBut:SetScript("OnClick", function()
		local dataX = PIGA["RaidRecord"]["fakuan"]
    	for p=1,#dataX do
			if dataX[p][3]~="N/A" then
				if dataX[p][4]>0 then
					PIGSendChatRaidParty("["..dataX[p][1].."]收入"..dataX[p][2].."G<"..dataX[p][3]..">尚欠"..dataX[p][4].."G")
				else
					PIGSendChatRaidParty("["..dataX[p][1].."]收入"..dataX[p][2].."G<"..dataX[p][3]..">")
				end
			end
		end
	end)
	--标题
	local fakuanbiaoti = {{"罚款/其他项目",30},{"已收到/G",280},{"尚欠款/G",400},{"出资人",600}}
	for id = 1, #fakuanbiaoti, 1 do
		local biaoti = PIGFontString(fujiF.fakuan,{"TOPLEFT", fujiF.fakuan, "TOPLEFT", fakuanbiaoti[id][2],-7},fakuanbiaoti[id][1],nil,nil,"fakuan_biaoti_"..id);
		biaoti:SetTextColor(1, 1, 0, 1);
	end
	--添加项目-----
	fujiF.fakuan.Add = PIGButton(fujiF.fakuan, {"LEFT",fakuan_biaoti_1,"RIGHT",2,0},{20,20},"+");
	PIGSetFont(fujiF.fakuan.Add.Text,20,"OUTLINE")
	fujiF.fakuan.Add:SetScript("OnClick", function (self)
		if self.F:IsShown() then
			self.F:Hide();
		else
			self.F:Show();
		end
	end);
	fujiF.fakuan.Add.F = PIGFrame(fujiF.fakuan.Add,{"TOPLEFT",fujiF.fakuan,"TOPLEFT",80,-34});
	fujiF.fakuan.Add.F:SetPoint("BOTTOMRIGHT",fujiF.fakuan,"BOTTOMRIGHT",-6,36);
	fujiF.fakuan.Add.F:PIGSetBackdrop(1)
	fujiF.fakuan.Add.F:PIGClose()
	fujiF.fakuan.Add.F:SetFrameLevel(fujiF.fakuan.Add:GetFrameLevel()+10);
	fujiF.fakuan.Add.F:EnableMouse(true);
	fujiF.fakuan.Add.F:Hide();
	fujiF.fakuan:HookScript("OnHide", function (self)
		self.Add.F:Hide()
	end)
	fujiF.fakuan.Add.F.biaoti = PIGFontString(fujiF.fakuan.Add.F,{"TOP",fujiF.fakuan.Add.F,"TOP",0,-6},"添加罚款事件","OUTLINE",16);
	fujiF.fakuan.Add.F.shijianNameT = PIGFontString(fujiF.fakuan.Add.F,{"TOP",fujiF.fakuan.Add.F,"TOP",0,-50},"事件名称","OUTLINE",15);
	fujiF.fakuan.Add.F.shijianNameT:SetTextColor(0,1,0, 1);

	fujiF.fakuan.Add.F.shijianName = CreateFrame("EditBox", nil, fujiF.fakuan.Add.F, "InputBoxInstructionsTemplate");
	fujiF.fakuan.Add.F.shijianName:SetSize(200,34);
	fujiF.fakuan.Add.F.shijianName:SetPoint("TOP",fujiF.fakuan.Add.F.shijianNameT,"BOTTOM",0,-10);
	PIGSetFont(fujiF.fakuan.Add.F.shijianName,14,"OUTLINE")
	fujiF.fakuan.Add.F.shijianName:SetMaxLetters(30)
	fujiF.fakuan.Add.F.shijianName:SetAutoFocus(false);
	fujiF.fakuan.Add.F.shijianName:SetScript("OnEscapePressed", function(self) 
		self:ClearFocus() 
	end);
	fujiF.fakuan.Add.F.err = PIGFontString(fujiF.fakuan.Add.F,{"TOP",fujiF.fakuan.Add.F.shijianName,"BOTTOM",0,-10},"","OUTLINE",16);
	fujiF.fakuan.Add.F.err:SetTextColor(1,0,0, 1);
	fujiF.fakuan.Add.F.YES = PIGButton(fujiF.fakuan.Add.F, {"TOP",fujiF.fakuan.Add.F,"TOP",-60,-150},{80,24},"添加"); 
	fujiF.fakuan.Add.F.YES:SetScript("OnClick", function (self)
		local fuji = self:GetParent()
		local huoquV=fuji.shijianName:GetText();
		if huoquV==nil then
			fuji.err:SetText("添加失败：事件不能为空");
			return
		end
		local huoquV=huoquV:gsub(" ","")
		if  huoquV=="" or huoquV==" " then
			fuji.err:SetText("添加失败：事件不能为空");
			return
		end
			for i=1,#PIGA["RaidRecord"]["fakuan"] do
				if huoquV==PIGA["RaidRecord"]["fakuan"][i][1] then
					fuji.err:SetText("添加失败：已存在同名事件");
					return
				end
			end
			local qitashouruinfo={huoquV,0,"N/A",0};
			table.insert(PIGA["RaidRecord"]["fakuan"],qitashouruinfo);
			fuji:Hide();
			RaidR.Update_Fakuan()
	end);
	fujiF.fakuan.Add.F.NO = PIGButton(fujiF.fakuan.Add.F, {"TOP",fujiF.fakuan.Add.F,"TOP",60,-150},{80,24},"取消"); 
	fujiF.fakuan.Add.F.NO:SetScript("OnClick", function (self)
		local fuji = self:GetParent()
		fuji:Hide();
		fuji.err:SetText("");
	end);
	------
	local function shiqujiaodian(self,bianji)
		if bianji then
			self.V:Hide();
			self.B:Hide();
			self.Q:Show();
			self.E:Show();
		else
			self.V:Show();
			self.B:Show();
			self.Q:Hide();
			self.E:Hide();
		end
	end
	fujiF.fakuan.TOPline = PIGLine(fujiF.fakuan,"TOP",-lineTOP)
	fujiF.fakuan.Scroll = CreateFrame("ScrollFrame",nil,fujiF.fakuan, "FauxScrollFrameTemplate");  
	fujiF.fakuan.Scroll:SetPoint("TOPLEFT",fujiF.fakuan.TOPline,"BOTTOMLEFT",0,-1);
	fujiF.fakuan.Scroll:SetPoint("BOTTOMRIGHT",fujiF.fakuan,"BOTTOMRIGHT",-24,1);
	fujiF.fakuan.Scroll:SetScript("OnVerticalScroll", function(self, offset)
	    FauxScrollFrame_OnVerticalScroll(self, offset, hang_Height, RaidR.Update_Fakuan)
	end)
	function RaidR.Update_Fakuan()
		if not fujiF.fakuan:IsShown() then return end
		local self = fujiF.fakuan.Scroll
		for i = 1, hang_NUM do
			_G["fakuan_hang_"..i]:Hide()
	    end
		local dataX = PIGA["RaidRecord"]["fakuan"]
		local ItemsNum=#dataX
		FauxScrollFrame_Update(self, ItemsNum, hang_NUM, hang_Height);
		local offset = FauxScrollFrame_GetOffset(self);
		for i = 1, hang_NUM do
			local dangqian = i+offset;
			if dataX[dangqian] then
				local fameX = _G["fakuan_hang_"..i]
				fameX:Show();
				fameX.del:SetID(dangqian);
				fameX.jianglixiang:SetText(dataX[dangqian][1])
				fameX.G.E:SetID(dangqian);
				fameX.G.Q:SetID(dangqian);
				fameX.G.V:SetText(dataX[dangqian][2])
				shiqujiaodian(fameX.G)
				fameX.QKG.E:SetID(dangqian);
				fameX.QKG.Q:SetID(dangqian);
				fameX.QKG.V:SetText(dataX[dangqian][4])
				shiqujiaodian(fameX.QKG)
				fameX.JiangliRen:SetID(dangqian);
				local AllName = dataX[dangqian][3]
				if AllName=="N/A" then
						fameX.JiangliRen:SetText("");
				else
					local name,server = strsplit("-", AllName);
					if server then
						fameX.JiangliRen:SetText(name.."(*)")
					else
						fameX.JiangliRen:SetText(name);
					end
					-- local color = RAID_CLASS_COLORS[zhiyecc]
					-- fameX.JiangliRen:SetTextColor(color.r, color.g, color.b,1);
				end
			end
		end
		RaidR:UpdateGinfo()
	end
	for id = 1, hang_NUM do
		local hang = CreateFrame("Frame", "fakuan_hang_"..id, fujiF.fakuan);
		hang:SetSize(fujiF.fakuan:GetWidth()-25, hang_Height);
		if id==1 then
			hang:SetPoint("TOP",fujiF.fakuan.Scroll,"TOP",0,0);
		else
			hang:SetPoint("TOP",_G["fakuan_hang_"..(id-1)],"BOTTOM",0,0);
		end
		if id~=hang_NUM then PIGLine(hang,"BOT",nil,nil,{0.3,0.3,0.3,0.3}) end
		hang.del = PIGCloseBut(hang,{"LEFT", hang, "LEFT", 0,0},{hang_Height-8,hang_Height-8})
		hang.del:SetScript("OnClick", function (self)
			local dataX = PIGA["RaidRecord"]["fakuan"]
	    	for p=1,#dataX do
				table.remove(dataX,self:GetID())
				RaidR.Update_Fakuan()
				return
			end
		end);
		hang.jianglixiang = PIGFontString(hang,{"LEFT", hang.del, "RIGHT", 0,0});
		hang.jianglixiang:SetTextColor(0, 1, 1, 1);
		--
		hang.G = CreateFrame("Frame", nil, hang);
		hang.G:SetSize(58, hang_Height);
		hang.G:SetPoint("LEFT", hang, "LEFT", fakuanbiaoti[2][2]-8,0);
		hang.G.baifen = PIGFontString(hang.G,{"RIGHT", hang.G, "RIGHT", 0,0});
		hang.G.baifen:SetTextColor(1, 1, 1, 1);
		hang.G.V = PIGFontString(hang.G,{"RIGHT", hang.G.baifen, "LEFT", 0,0});
		hang.G.V:SetTextColor(1, 1, 1, 1);
		hang.G.E = CreateFrame("EditBox", nil, hang.G, "InputBoxInstructionsTemplate");
		hang.G.E:SetSize(54,hang_Height);
		hang.G.E:SetPoint("RIGHT", hang.G, "RIGHT", 0,0);
		PIGSetFont(hang.G.E,14,"OUTLINE")
		hang.G.E:SetMaxLetters(6)
		hang.G.E:SetNumeric(true)
		hang.G.E:SetScript("OnEscapePressed", function(self) 
			shiqujiaodian(self:GetParent())
		end);
		hang.G.E:SetScript("OnEnterPressed", function(self)
	 		PIGA["RaidRecord"]["fakuan"][self:GetID()][2]=self:GetNumber()
			RaidR.Update_Fakuan()
		end);
		hang.G.B = CreateFrame("Button",nil,hang.G, "TruncatedButtonTemplate");
		hang.G.B:SetHighlightTexture("interface/buttons/ui-common-mousehilight.blp");
		hang.G.B:SetSize(hang_Height-7,hang_Height-7);
		hang.G.B:SetPoint("LEFT", hang.G, "RIGHT", 0,0);
		hang.G.B.Texture = hang.G.B:CreateTexture(nil, "BORDER");
		hang.G.B.Texture:SetTexture("interface/buttons/ui-guildbutton-publicnote-up.blp");
		hang.G.B.Texture:SetPoint("CENTER");
		hang.G.B.Texture:SetSize(hang_Height-12,hang_Height-10);
		hang.G.B:SetScript("OnMouseDown", function (self)
			self.Texture:SetPoint("CENTER",-1.5,-1.5);
		end);
		hang.G.B:SetScript("OnMouseUp", function (self)
			self.Texture:SetPoint("CENTER");
		end);
		hang.G.B:SetScript("OnClick", function (self)
			for qq=1,hang_NUM do
				shiqujiaodian(_G["fakuan_hang_"..qq].G)
				shiqujiaodian(_G["fakuan_hang_"..qq].QKG)
			end
			local shangjiF=self:GetParent()
			shiqujiaodian(shangjiF,true)
			shangjiF.E:SetText(shangjiF.V:GetText());
		end);
		hang.G.Q = PIGButton(hang.G, {"LEFT", hang.G, "RIGHT", 1,0},{36,20},"确定");
		hang.G.Q:SetScale(0.88)
		hang.G.Q:Hide();
		hang.G.Q:SetScript("OnClick", function (self)
			local shangjiF=self:GetParent()
	 		PIGA["RaidRecord"]["fakuan"][self:GetID()][2]=shangjiF.E:GetNumber()
			RaidR.Update_Fakuan()
		end);
		--欠款
		hang.QKG = CreateFrame("Frame", nil, hang);
		hang.QKG:SetSize(58, hang_Height);
		hang.QKG:SetPoint("LEFT", hang, "LEFT", fakuanbiaoti[3][2]-8,0);
		hang.QKG.baifen = PIGFontString(hang.QKG,{"RIGHT", hang.QKG, "RIGHT", 0,0});
		hang.QKG.baifen:SetTextColor(1, 1, 1, 1);
		hang.QKG.V = PIGFontString(hang.QKG,{"RIGHT", hang.QKG.baifen, "LEFT", 0,0});
		hang.QKG.V:SetTextColor(1, 0, 0, 1);
		hang.QKG.E = CreateFrame("EditBox", nil, hang.QKG, "InputBoxInstructionsTemplate");
		hang.QKG.E:SetSize(54,hang_Height);
		hang.QKG.E:SetPoint("RIGHT", hang.QKG, "RIGHT", 0,0);
		PIGSetFont(hang.QKG.E,14,"OUTLINE")
		hang.QKG.E:SetMaxLetters(6)
		hang.QKG.E:SetNumeric(true)
		hang.QKG.E:SetScript("OnEscapePressed", function(self) 
			shiqujiaodian(self:GetParent())
		end);
		hang.QKG.E:SetScript("OnEnterPressed", function(self)
	 		PIGA["RaidRecord"]["fakuan"][self:GetID()][4]=self:GetNumber()
			RaidR.Update_Fakuan()
		end);
		hang.QKG.B = CreateFrame("Button",nil,hang.QKG, "TruncatedButtonTemplate");
		hang.QKG.B:SetHighlightTexture("interface/buttons/ui-common-mousehilight.blp");
		hang.QKG.B:SetSize(hang_Height-7,hang_Height-7);
		hang.QKG.B:SetPoint("LEFT", hang.QKG, "RIGHT", 0,0);
		hang.QKG.B.Texture = hang.QKG.B:CreateTexture(nil, "BORDER");
		hang.QKG.B.Texture:SetTexture("interface/buttons/ui-guildbutton-publicnote-up.blp");
		hang.QKG.B.Texture:SetPoint("CENTER");
		hang.QKG.B.Texture:SetSize(hang_Height-12,hang_Height-10);
		hang.QKG.B:SetScript("OnMouseDown", function (self)
			self.Texture:SetPoint("CENTER",-1.5,-1.5);
		end);
		hang.QKG.B:SetScript("OnMouseUp", function (self)
			self.Texture:SetPoint("CENTER");
		end);
		hang.QKG.B:SetScript("OnClick", function (self)
			for qq=1,hang_NUM do
				shiqujiaodian(_G["fakuan_hang_"..qq].G)
				shiqujiaodian(_G["fakuan_hang_"..qq].QKG)
			end
			local shangjiF=self:GetParent()
			shiqujiaodian(shangjiF,true)
			shangjiF.E:SetText(shangjiF.V:GetText());
		end);
		hang.QKG.Q = PIGButton(hang.QKG, {"LEFT", hang.QKG, "RIGHT", 1,0},{36,20},"确定");
		hang.QKG.Q:SetScale(0.88)
		hang.QKG.Q:Hide();
		hang.QKG.Q:SetScript("OnClick", function (self)
			local shangjiF=self:GetParent()
	 		PIGA["RaidRecord"]["fakuan"][self:GetID()][4]=shangjiF.E:GetNumber()
			RaidR.Update_Fakuan()
		end);
		hang.JiangliRen = CreateFrame("Button", nil, hang, "TruncatedButtonTemplate");
		hang.JiangliRen:SetHighlightTexture("interface/paperdollinfoframe/ui-character-tab-highlight.blp");
		hang.JiangliRen:SetSize(118,hang_Height);
		hang.JiangliRen:SetPoint("LEFT", hang, "LEFT", fakuanbiaoti[4][2]-20,0);
		PIGSetFont(hang.JiangliRen.Text,14,"OUTLINE")
		hang.JiangliRen.Text:SetJustifyH("LEFT")
		hang.JiangliRen.Text:SetTextColor(0,1,0, 1);
		hang.JiangliRen:SetScript("OnClick", function (self)
			if RaidR.PlayerList:IsShown() then
				RaidR.PlayerList:Hide() 
			else
				RaidR.PlayerList:Showtishi("FakuanRen",self:GetID())
			end
		end);
	end
	fujiF.fakuan:SetScript("OnShow", function (self)
		RaidR.Update_Fakuan()
	end)

	fujiF.fakuan.tishi = CreateFrame("Frame", nil, fujiF.fakuan);
	fujiF.fakuan.tishi:SetSize(iconWH,iconWH);
	fujiF.fakuan.tishi:SetPoint("TOPLEFT",fujiF.fakuan.yedibuF,"BOTTOMLEFT",6,-4);
	fujiF.fakuan.tishi.Tex = fujiF.fakuan.tishi:CreateTexture(nil, "BORDER");
	fujiF.fakuan.tishi.Tex:SetTexture("interface/common/help-i.blp");
	fujiF.fakuan.tishi.Tex:SetSize(iconWH+8,iconWH+8);
	fujiF.fakuan.tishi.Tex:SetPoint("CENTER");
	PIGEnter(fujiF.fakuan.tishi,"\124cff00ff00未设置出资人的项目不会计入罚款收入\124r")
	fujiF.fakuan.piliangBut = PIGButton(fujiF.fakuan,{"TOP",fujiF.fakuan.yedibuF,"BOTTOM",-10,-4},{72,22},"批量设置");
	fujiF.fakuan.piliangBut:SetScale(0.94)
	fujiF.fakuan.piliangBut:SetScript("OnClick", function (self)
		local BuzhuNewV = self.E:GetNumber();
		self.E:ClearFocus() 
		local dataX = PIGA["RaidRecord"]["fakuan"]
    	for p=1,#dataX do
			dataX[p][2]=BuzhuNewV
		end
		RaidR.Update_Fakuan()
	end);
	fujiF.fakuan.piliangBut.E = CreateFrame("EditBox", nil, fujiF.fakuan.piliangBut, "InputBoxInstructionsTemplate");
	fujiF.fakuan.piliangBut.E:SetSize(60,20);
	fujiF.fakuan.piliangBut.E:SetPoint("RIGHT",fujiF.fakuan.piliangBut,"LEFT",-4,0);
	PIGSetFont(fujiF.fakuan.piliangBut.E,14,"OUTLINE")
	fujiF.fakuan.piliangBut.E:SetMaxLetters(6)
	fujiF.fakuan.piliangBut.E:SetAutoFocus(false)
	fujiF.fakuan.piliangBut.E:SetNumeric(true)
	fujiF.fakuan.piliangBut.E:SetTextColor(0.6, 0.6, 0.6, 0.8); 
	fujiF.fakuan.piliangBut.E:SetText(100);
	fujiF.fakuan.piliangBut.E:SetScript("OnEscapePressed", function(self)
		self:ClearFocus() 
	end);
	fujiF.fakuan.piliangBut.E:SetScript("OnEditFocusGained", function(self)
		self:SetTextColor(1, 1, 1, 1); 
	end)
	fujiF.fakuan.piliangBut.E:SetScript("OnEnterPressed", function(self) 
		self:ClearFocus() 
	end);
	fujiF.fakuan.piliangBut.E:SetScript("OnEditFocusLost", function(self) 
		self:SetTextColor(0.5, 0.5, 0.5, 0.8);
	end)
end