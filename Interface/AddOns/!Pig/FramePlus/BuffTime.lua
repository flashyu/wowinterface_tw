local _, addonTable = ...;
local _, _, _, tocversion = GetBuildInfo()
---BUFF/DEBUFF框架精确时间========
local FramePlusfun=addonTable.FramePlusfun
local function Buff_OnUpdate(self,timeLeft)
	local Duration=self.Duration or self.duration
	local d, h, m, s = ChatFrame_TimeBreakDown(timeLeft);
	if( timeLeft <= 0 ) then
		Duration:SetText("");
	elseif( timeLeft < 30 ) then 
		--Duration:SetFormattedText("|c00FF8050%d|r", s); --小于30秒
		Duration:SetFormattedText("|c00FF8050%.1f|r", s);--秒带小数点
	elseif( timeLeft < 60 ) then
		Duration:SetFormattedText("|c00FFAF60%d|r", s); --30秒-1分钟			
	elseif( timeLeft < 600 ) then
		Duration:SetFormattedText("|c00FFFF40%d:%02d|r", m, s); --1-10分钟
	elseif( timeLeft <= 3600 ) then
		Duration:SetFormattedText("|c0000FF00%dm|r", m);--10分钟-60分钟
	elseif( timeLeft <= 86400 ) then 	
		Duration:SetFormattedText("|c0000FF00%1dH:%02d|r", h, m);--1小时-1天
	else
		Duration:SetFormattedText("|cff00FF00%dd%02dh|r",d,h);--大于一天
	end
end
local function Debuff_OnUpdate(self,timeLeft)
	local Duration=self.Duration or self.duration
	local d, h, m, s = ChatFrame_TimeBreakDown(timeLeft);
	if( timeLeft < 30 ) then
		Duration:SetFormattedText("|cffFF4500%.1f|r", s);--秒带小数点
		--Duration:SetFormattedText("|cffFF4500%d|r", s); --小于30秒
	elseif( timeLeft < 60 ) then
		Duration:SetFormattedText("|cffFF8050%d|r", s); --30秒-1分钟
	elseif( timeLeft < 600 ) then
		Duration:SetFormattedText("|cffFFAF60%d:%02d|r", m, s); --1-10分钟
	elseif( timeLeft <= 3600 ) then
		Duration:SetFormattedText("|cffFFFF40%dm|r", m);--10分钟-60分钟
	elseif( timeLeft <= 86400 ) then 
		Duration:SetFormattedText("|cffFFFF40%1dH:%02d|r", h, m);--1小时-1天
	else
		Duration:SetFormattedText("|cffFFFF40%dd%02dh|r",d,h);--大于一天
	end
end
function FramePlusfun.BuffTime()
	if not PIGA["FramePlus"]["BuffTime"] then return end
	if tocversion<100000 then
		hooksecurefunc("AuraButton_UpdateDuration", function(auraButton, timeLeft)
			Buff_OnUpdate(auraButton, timeLeft)
			Debuff_OnUpdate(auraButton, timeLeft)
		end);
		hooksecurefunc("AuraButton_Update",function(buttonName, index, filter)
			local name,_,_,_,_,expirationTime = UnitAura("player",index, filter)
			if name then
				local buffName = buttonName..index;
				local buff = _G[buffName];
				buff.duration:SetFormattedText("|cff00ff00N/A|r");
			    buff.duration:Show()
			end
		end);
	else
		local auras={BuffFrame.AuraContainer:GetChildren()}
		for i=1,#auras do
			hooksecurefunc(auras[i], "Update", function(self)
				if (self.buttonInfo.expirationTime == 0) then
			        self.Duration:SetFormattedText("|cff00ff00N/A|r");
			        self.Duration:Show()
			    end	
			end)
			hooksecurefunc(auras[i], "UpdateDuration", function(self,timeLeft)
			    Buff_OnUpdate(self,timeLeft)
			end)
			hooksecurefunc(auras[i], "OnUpdate", function(self)
				self.Duration:SetFontObject(DEFAULT_AURA_DURATION_FONT);
				self.Duration:ClearAllPoints();
				self.Duration:SetPoint("TOP", self.Icon, "BOTTOM");
			end)
		end
		--
		local auras={DebuffFrame.AuraContainer:GetChildren()}
		for i=1,#auras do
			hooksecurefunc(auras[i], "Update", function(self)
				if (self.buttonInfo.expirationTime == 0) then
			        self.Duration:SetFormattedText("|cff00ff00N/A|r");
			        self.Duration:Show()
			    end	
			end)
			hooksecurefunc(auras[i], "UpdateDuration", function(self,timeLeft)
			    Debuff_OnUpdate(self,timeLeft)
			end)
			hooksecurefunc(auras[i], "OnUpdate", function(self)
				self.Duration:SetFontObject(DEFAULT_AURA_DURATION_FONT);
				self.Duration:ClearAllPoints();
				self.Duration:SetPoint("TOP", self.Icon, "BOTTOM");
			end)
		end
	end
end
