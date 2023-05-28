local addonName, addonTable = ...;
local L=addonTable.locale
local _, _, _, tocversion = GetBuildInfo()
local Create = addonTable.Create
local PIGFontString=Create.PIGFontString
-----------
local Mapfun=addonTable.Mapfun
----------------------------------------
local paichulist = {
	"MiniMapTrackingFrame",
	"MiniMapMeetingStoneFrame",
	"MiniMapMailFrame",
	"MiniMapBattlefieldFrame",
	"MiniMapWorldMapButton",
	"MiniMapPing",
	"MinimapBackdrop",
	"MinimapZoomIn",
	"MinimapZoomOut",
	"BookOfTracksFrame",
	"GatherNote",
	"FishingExtravaganzaMini",
	"MiniNotePOI",
	"RecipeRadarMinimapIcon",
	"FWGMinimapPOI",
	"CartographerNotesPOI",
	"MBB_MinimapButtonFrame",
	"EnhancedFrameMinimapButton",
	"GFW_TrackMenuFrame",
	"GFW_TrackMenuButton",
	"TDial_TrackingIcon",
	"TDial_TrackButton",
	"MiniMapTracking",
	"GatherMatePin",
	"HandyNotesPin",
	"TimeManagerClockButton",
	"GameTimeFrame",
	"DA_Minimap",
	"ElvConfigToggle",
	"MiniMapInstanceDifficulty",
	"MinimapZoneTextButton",
	"GuildInstanceDifficulty",
	"MiniMapVoiceChatFrame",
	"MiniMapRecordingButton",
	"QueueStatusMinimapButton",
	"GatherArchNote",
	"ZGVMarker",
	"QuestPointerPOI",
	"poiMinimap",
	"MiniMapLFGFrame",
	"PremadeFilter_MinimapButton",
	"QuestieFrame",
	"Guidelime",
	"MiniMapBattlefieldFrame",
	"LibDBIcon10_BugSack",
	"MinimapButton_PigUI",
	"MinimapLayerFrame",
	"NWBNaxxMarkerMini",
	"NWBMini",
	"SexyMapCustomBackdrop",
	"SexyMapCoordFrame",
	"SexyMapPingFrame",
	"SexyMapZoneTextButton",
	"ElvUI_MinimapHolder",
	"QueueStatusButton",
	"MinimapPanel",
	"RecycleBinToggleButton",
}
local ShouNaButHeji={};
local function gengxinMBweizhi(newValue)
	local meipaishu=newValue or PIGA["Map"]["MinimapShouNa_hang"];--每排按钮数
	MinimapButton_PigUI.Snf:SetSize(meipaishu*35+30, math.ceil(#ShouNaButHeji/meipaishu)*35+30)
	for i=1, #ShouNaButHeji,1 do
		_G[ShouNaButHeji[i]]:SetParent(MinimapButton_PigUI.Snf)
		_G[ShouNaButHeji[i]]:HookScript("OnEnter", function()
			MinimapButton_PigUI.Snf.zhengzaixianshi = nil;
		end)
		_G[ShouNaButHeji[i]]:HookScript("OnLeave", function()
			MinimapButton_PigUI.Snf.xiaoshidaojishi = 1.5;
			MinimapButton_PigUI.Snf.zhengzaixianshi = true;
		end)
		-- _G[ShouNaButHeji[i]]:HookScript("PostClick", function ()
		-- 	MinimapButton_PigUI.Snf:Hide();
		-- end);
	end	
	for iiii=1, math.ceil(#ShouNaButHeji/meipaishu),1 do
		if iiii==1 then
			for xxxx=1, iiii*meipaishu, 1 do
				if xxxx==1 then
					_G[ShouNaButHeji[xxxx]]:ClearAllPoints();
					_G[ShouNaButHeji[xxxx]]:SetPoint("TOPLEFT", MinimapButton_PigUI.Snf, "TOPLEFT", 15, -15)
				else
					if _G[ShouNaButHeji[xxxx]] then
						_G[ShouNaButHeji[xxxx]]:ClearAllPoints();
						_G[ShouNaButHeji[xxxx]]:SetPoint("TOPLEFT", MinimapButton_PigUI.Snf, "TOPLEFT", 35*(xxxx-1)+15, -15)
					end
				end
			end
		else
			for xxxx=(iiii-1)*meipaishu+1, iiii*meipaishu, 1 do
				if xxxx-(iiii-1)*meipaishu==1 then
					_G[ShouNaButHeji[xxxx]]:ClearAllPoints();
					_G[ShouNaButHeji[xxxx]]:SetPoint("TOPLEFT", MinimapButton_PigUI.Snf, "TOPLEFT", 15, -35*(iiii-1)-15)
				else
					if _G[ShouNaButHeji[xxxx]] then
						_G[ShouNaButHeji[xxxx]]:ClearAllPoints();
						_G[ShouNaButHeji[xxxx]]:SetPoint("TOPLEFT", MinimapButton_PigUI.Snf, "TOPLEFT", 35*(xxxx-(iiii-1)*meipaishu-1)+15, -35*(iiii-1)-15)
					end
				end
				
			end
		end
	end
end
local function Map_MiniButSN()
	local children = { Minimap:GetChildren() };
	local NewPaichulist = {}
	for i=1,10 do
		table.insert(NewPaichulist,"Spy_MapNoteList_mini"..i)
	end
	for i=1,#paichulist do
		table.insert(NewPaichulist,paichulist[i])
	end
	local data = PIGA["Map"]["MinimapBpaichu"]
	for i=1,#data do
		table.insert(NewPaichulist,data[i])
	end
	for i=1,#children do
		if children[i]:GetName() then
			--print(children[i]:GetName())
			local shifouzaiguolvliebiao = true;
			for ii=1,#NewPaichulist do
					local cunzai=string.match(children[i]:GetName(),NewPaichulist[ii])
					if cunzai then
						shifouzaiguolvliebiao = false;
					end
			end
			if shifouzaiguolvliebiao then
				table.insert(ShouNaButHeji,children[i]:GetName())
			end
		end
	end
	gengxinMBweizhi(newValue)
end
function Mapfun.ShouNaMiniBut()
	if PIGA["Map"]["MinimapBut"] and PIGA["Map"]["MinimapShouNa"] then
		Map_MiniButSN();
		C_Timer.After(3, Map_MiniButSN);
		C_Timer.After(8, Map_MiniButSN);
		C_Timer.After(14, Map_MiniButSN);
	end
end
--小地图按钮--==============================
local www,hhh = 33,33
function Mapfun.ADD_MinimapBut()
	if PIGA["Map"]["MinimapBut"] then
		if not MinimapButton_PigUI then
			local fujikname = UIParent
			if NDui or PIGA["Map"]["MinimapShouNa_BS"] then
				fujikname = Minimap
			end
			local MinimapButton_Pig = CreateFrame("Button","MinimapButton_PigUI",fujikname); 
			MinimapButton_Pig:SetSize(www,hhh);
			MinimapButton_Pig:SetPoint("TOPLEFT", Minimap, "TOPLEFT", 0, 0);
			MinimapButton_Pig:SetMovable(true)
			MinimapButton_Pig:EnableMouse(true)
			MinimapButton_Pig:RegisterForClicks("LeftButtonUp","RightButtonUp")
			MinimapButton_Pig:RegisterForDrag("LeftButton")
			MinimapButton_Pig:SetHighlightTexture("Interface/Minimap/UI-Minimap-ZoomButton-Highlight");
			MinimapButton_Pig:SetFrameStrata("MEDIUM")
			MinimapButton_Pig:SetFrameLevel(MinimapButton_Pig:GetFrameLevel()+10);
			MinimapButton_Pig.Border = MinimapButton_Pig:CreateTexture(nil,"BORDER");
			MinimapButton_Pig.Border:SetTexture("Interface/Minimap/MiniMap-TrackingBorder");
			MinimapButton_Pig.Border:SetSize(56,56);
			MinimapButton_Pig.Border:SetPoint("TOPLEFT", 0, 0);
			MinimapButton_Pig.Icon = MinimapButton_Pig:CreateTexture(nil, "BACKGROUND");
			MinimapButton_Pig.Icon:SetTexture("interface/icons/ability_seal.blp");
			if tocversion<100000 then
				MinimapButton_Pig.Icon:SetSize(www-10,hhh-10);
				MinimapButton_Pig.Icon:SetPoint("CENTER", 0, 1);
			else
				MinimapButton_Pig.Icon:SetSize(www-11,hhh-11);
				MinimapButton_Pig.Icon:SetPoint("CENTER", 0.94, -0.4);
			end
			MinimapButton_Pig.error = MinimapButton_Pig:CreateTexture(nil, "BORDER");
			MinimapButton_Pig.error:SetTexture("interface/common/voicechat-muted.blp");
			MinimapButton_Pig.error:SetSize(18,18);
			MinimapButton_Pig.error:SetAlpha(0.7);
			MinimapButton_Pig.error:SetPoint("CENTER", 0, 0);
			MinimapButton_Pig.error:Hide();
			local function zhixingEnter(self,ccc)
				GameTooltip:ClearLines();
				if ccc then
					GameTooltip:SetOwner(self, "ANCHOR_LEFT",-14,0);
				else
					GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT",-24,0);
				end
				GameTooltip:AddLine("|cffFF00FF!Pig|r-"..GetAddOnMetadata(addonName, "Version"))
				if NDui then
					GameTooltip:AddLine(L["MAP_NIMIBUT_TIPS2"])
				else
					GameTooltip:AddLine(L["MAP_NIMIBUT_TIPS1"])
				end
				GameTooltip:Show();
			end
			MinimapButton_Pig:SetScript("OnEnter", function(self)
				zhixingEnter(self)				
			end);
			MinimapButton_Pig:SetScript("OnLeave", function()
				GameTooltip:ClearLines();
				GameTooltip:Hide() 
			end);
			
			local function YDButtonP(weizhiXY)
				local banjing = MinimapButton_Pig.banjing
				local pianyi =MinimapButton_Pig.pianyi
				MinimapButton_Pig:ClearAllPoints();
				MinimapButton_Pig:SetPoint("TOPLEFT",Minimap,"TOPLEFT",pianyi-2-(banjing*cos(weizhiXY)),(banjing*sin(weizhiXY))-pianyi)
				PIGA["Map"]["MinimapPos"]=weizhiXY
			end
			local function YDButtonP_ElvUI(xpos,ypos)
				MinimapButton_Pig:ClearAllPoints();	
				MinimapButton_Pig:SetPoint("TOPLEFT",Minimap,"TOPLEFT",xpos,ypos)
				PIGA["Map"]["MinimapPos_ElvUI"]={xpos,ypos}
			end
			local function YDButtonP_OnUpdate()	
				local banjing = MinimapButton_Pig.banjing
				local xpos,ypos = GetCursorPosition()
				local UIScale = UIParent:GetScale()
				local xmin,ymin = Minimap:GetLeft(), Minimap:GetBottom()
				if ElvUI then
					local xpos = xpos/UIScale-xmin
					local ypos = ypos/UIScale-ymin
					local MinimapWidth = MinimapButton_Pig:GetWidth()
					local wwwvvv = -MinimapWidth*0.5+11		
					if xpos<wwwvvv then
						xpos=wwwvvv
					end
					local banjingX = banjing-MinimapWidth*0.5-12
					if xpos>banjingX then
						xpos=banjingX
					end
					local MinimapHeight = MinimapButton_Pig:GetHeight()
					local hhhvvv = MinimapHeight*0.5+10
					if ypos<hhhvvv then
						ypos=hhhvvv
					end
					local banjingY = banjing-MinimapHeight*0.5+10
					if ypos>banjingY then
						ypos=banjingY
					end
					local ypos = ypos-banjing
					YDButtonP_ElvUI(xpos,ypos)
				else
					local xpos = xmin-xpos/UIScale+banjing
					local ypos = ypos/UIScale-ymin-banjing
					YDButtonP(math.deg(math.atan2(ypos,xpos)))
				end
			end
			local function zhixingClick(button)
				GameTooltip:Hide()
				if button=="LeftButton" then
					if IsControlKeyDown() then
						Bugcollect_UI:Show()
						MinimapButton_PigUI.error:Hide();
					elseif IsShiftKeyDown() then
						ReloadUI()
					else
						if NDui then 
							if Pig_OptionsUI:IsShown() then	
								Pig_OptionsUI:Hide();
							else
								MinimapButton_Pig.Snf:Hide();
								Pig_OptionsUI:Show();
							end 
						else
							if PIGA["Map"]["MinimapShouNa"] then
								MinimapButton_Pig.Snf.tishi:Hide();
								if MinimapButton_Pig.Snf:IsShown() then	
									MinimapButton_Pig.Snf:Hide();
								else
									Pig_OptionsUI:Hide();
									MinimapButton_Pig.Snf:Show();
									MinimapButton_Pig.Snf.xiaoshidaojishi = 1.5;
									MinimapButton_Pig.Snf.zhengzaixianshi = true;
								end
							else
								MinimapButton_Pig.Snf.tishi:Show();
								if MinimapButton_Pig.Snf:IsShown() then
									MinimapButton_Pig.Snf:Hide();
								else
									MinimapButton_Pig.Snf:Show();
								end
							end
						end
					end
				else
					if Pig_OptionsUI:IsShown() then	
						Pig_OptionsUI:Hide();
					else
						MinimapButton_Pig.Snf:Hide();
						Pig_OptionsUI:Show();
					end
				end
			end
			local MinimapButton_PigYD = CreateFrame("Frame", nil);
			MinimapButton_PigYD:Hide();
			MinimapButton_Pig:SetScript("OnClick", function(event, button)
				zhixingClick(button)
			end)
			function PIGCompartmentEnter(self,button)
				zhixingEnter(button,true)
			end
			function PIGCompartmentLeave()
				GameTooltip:ClearLines();
				GameTooltip:Hide() 
			end
			function PIGCompartmentClick(self,button)
				zhixingClick(button)
			end

			local function zhucetuodong()
				MinimapButton_PigYD:SetScript("OnUpdate",YDButtonP_OnUpdate)
				MinimapButton_Pig:SetScript("OnDragStart", function()
					MinimapButton_Pig:LockHighlight();MinimapButton_PigYD:Show();
				end)
				MinimapButton_Pig:SetScript("OnDragStop", function()
					MinimapButton_Pig:UnlockHighlight();MinimapButton_PigYD:Hide();
				end)
			end
			local function MinimapButton_Pig_Point()
				if ElvUI then
					MinimapButton_Pig:SetHighlightTexture("Interface/Buttons/ButtonHilight-Square");
					MinimapButton_Pig.Border:Hide()
					MinimapButton_Pig.Icon:SetTexCoord(0.08,0.92,0.08,0.92)
					local mode = 1
					if mode == 1 then--固定位置
						local function ElvUIPoint()
							if MinimapPanel then
								MinimapButton_Pig:ClearAllPoints();	
								MinimapButton_Pig:SetPoint("TOPLEFT",MinimapPanel,"TOPLEFT",0.8,-0.6)
								MinimapButton_Pig:SetPoint("BOTTOMLEFT",MinimapPanel,"BOTTOMLEFT",0,0.6)
								local hhhh = MinimapPanel:GetHeight()	
								MinimapButton_Pig:SetWidth(hhhh-1.2);
								MinimapButton_Pig.Icon:SetAllPoints(MinimapButton_Pig)
								local wwww = MinimapPanel:GetWidth()	
								local DataTextwww = (wwww-hhhh-2)*0.5
								if MinimapPanel_DataText1 then
									MinimapPanel_DataText1:SetWidth(DataTextwww)
									MinimapPanel_DataText1:SetPoint("LEFT",MinimapPanel,"LEFT",hhhh,0)
									MinimapPanel_DataText2:SetWidth(DataTextwww)
								end
							end
						end
						C_Timer.After(0.1,ElvUIPoint)
						C_Timer.After(1,ElvUIPoint)
					elseif mode == 2 then--拖动模式
						zhucetuodong()
						MinimapButton_Pig:SetSize(www-10,hhh-10);
						MinimapButton_Pig.Icon:SetSize(www-10,hhh-10);	
						if tocversion<20000 then
							PIGA["Map"]["MinimapPos_ElvUI"]=PIGA["Map"]["MinimapPos_ElvUI"] or {32.63,-152}
						elseif tocversion<40000 then
							PIGA["Map"]["MinimapPos_ElvUI"]=PIGA["Map"]["MinimapPos_ElvUI"] or {32.63,-197.76}
						else
							PIGA["Map"]["MinimapPos_ElvUI"]=PIGA["Map"]["MinimapPos_ElvUI"] or {32.63,-152}
						end
						local banjing = Minimap:GetWidth()
						MinimapButton_Pig.banjing=banjing
						YDButtonP_ElvUI(PIGA["Map"]["MinimapPos_ElvUI"][1],PIGA["Map"]["MinimapPos_ElvUI"][2])
					end
				else
					zhucetuodong()
					if tocversion<100000 then
						MinimapButton_Pig.pianyi = 56
					else
						MinimapButton_Pig.pianyi = 82
					end
					local banjing = Minimap:GetWidth()*0.5+8
					MinimapButton_Pig.banjing=banjing
					YDButtonP(PIGA["Map"]["MinimapPos"]);
				end
			end
			MinimapButton_Pig_Point()

			--Collect Button
			local Backdropinfo={bgFile = "interface/chatframe/chatframebackground.blp",
				edgeFile = "Interface/Buttons/WHITE8X8", edgeSize = 1,}
			MinimapButton_Pig.Snf = CreateFrame("Frame", nil, MinimapButton_Pig,"BackdropTemplate");
			MinimapButton_Pig.Snf:SetBackdrop(Backdropinfo)
			MinimapButton_Pig.Snf:SetBackdropColor(0.2, 0.2, 0.2, 1);
			MinimapButton_Pig.Snf:SetBackdropBorderColor(0, 0, 0, 1);
			MinimapButton_Pig.Snf:SetSize(200, 100)
			MinimapButton_Pig.Snf:SetPoint("TOPRIGHT", MinimapButton_PigUI, "BOTTOMLEFT", -2, 25)
			MinimapButton_Pig.Snf:Hide();
			MinimapButton_Pig.Snf:SetFrameLevel(1)

			MinimapButton_Pig.Snf.tishi = PIGFontString(MinimapButton_Pig.Snf,nil,L["MAP_NIMIBUT_TIPS3"])
			MinimapButton_Pig.Snf.tishi:SetPoint("TOPLEFT", MinimapButton_Pig.Snf, "TOPLEFT", 6, -6);
			MinimapButton_Pig.Snf.tishi:SetPoint("BOTTOMRIGHT", MinimapButton_Pig.Snf, "BOTTOMRIGHT", -6, 6);
			MinimapButton_Pig.Snf.tishi:Hide();

			MinimapButton_Pig.Snf:SetScript("OnUpdate", function(self, ssss)
				if self.zhengzaixianshi==nil then
					return;
				else
					if self.zhengzaixianshi==true then
						if self.xiaoshidaojishi<= 0 then
							self:Hide();
							self.zhengzaixianshi = nil;
						else
							self.xiaoshidaojishi = self.xiaoshidaojishi - ssss;	
						end
					end
				end
			end)
			MinimapButton_Pig.Snf:SetScript("OnEnter", function(self)
				self.zhengzaixianshi = nil;
			end)
			MinimapButton_Pig.Snf:SetScript("OnLeave", function(self)
				self.xiaoshidaojishi = 1.5;
				self.zhengzaixianshi = true;
			end)
		end
	end
end