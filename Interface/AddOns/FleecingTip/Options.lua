
local addon, private = ...

local version = GetAddOnMetadata(addon, "Version");
local classicOnly = select(4, GetBuildInfo()) < 20000;

local Options = CreateFrame("Frame", "FleecingTipUIOptions", InterfaceOptionsFramePanelContainer);
Options.name = addon;
InterfaceOptions_AddCategory(Options);

function private.ShowOptions()
	InterfaceOptionsFrame_OpenToCategory(Options);
end;

Options:Hide();
Options:SetScript("OnShow", function(self)

	local function makeSlider(name)
		local Slider = CreateFrame("Slider", name, self, "OptionsSliderTemplate");
		Slider:SetWidth(200);

		Slider.low = _G[Slider:GetName().."Low"];
		Slider.low:SetPoint("TOPLEFT", Slider, "BOTTOMLEFT", 0, 0);
		Slider.low:SetFontObject(GameFontNormalSmall);
		Slider.low:Hide();

		Slider.high = _G[Slider:GetName().."High"];
		Slider.high:SetPoint("TOPRIGHT", Slider, "BOTTOMRIGHT", 0, 0);
		Slider.high:SetFontObject(GameFontNormalSmall);
		Slider.high:Hide();

		Slider.value = Slider:CreateFontString(nil, "ARTWORK", "GameFontHighlight");
		Slider.value:SetPoint("LEFT", Slider, "RIGHT", 4, 0);

		Slider.text = _G[Slider:GetName().."Text"];
		Slider.text:SetFontObject(GameFontNormal);
		Slider.text:ClearAllPoints();
		Slider.text:SetPoint("BOTTOMLEFT", Slider, "TOPLEFT", -4, 2);
		Slider.text:SetPoint("BOTTOMRIGHT", Slider.value, "BOTTOMLEFT", -4, 0);
		Slider.text:SetJustifyH("LEFT");

		return Slider;
	end;
	
	local function makeCheckbox(label, description, onClick)
		local check = CreateFrame("CheckButton", "FleecingTipCheckbox_"..label, self, "InterfaceOptionsCheckButtonTemplate");
		check:SetScript("OnClick", function(self)
			-- 856 = igMainMenuOptionCheckBoxOn
			-- 857 = igMainMenuOptionCheckBoxOff
			local click = self:GetChecked() and 856 or 857
			PlaySound(click)
			onClick(self, self:GetChecked() and true or false)
		end);
		check.label = _G[check:GetName().."Text"];
		check.label:SetText(label);
		check.tooltipText = label;
		check.tooltipRequirement = description;
		return check;
	end;
	
	-- version
	local VersionOptions = self:CreateFontString("$parentTitleOptions", "ARTWORK", "GameFontNormalSmall");
	VersionOptions:SetPoint("TOPRIGHT", -16, -17);
	VersionOptions:SetJustifyH("RIGHT");
	VersionOptions:SetText("|cff999999Version "..version.."|r");
	
	if (classicOnly) then
		-- Title
		local TitleOptions = self:CreateFontString("$parentTitleOptions", "ARTWORK", "GameFontNormalLarge");
		TitleOptions:SetPoint("TOPLEFT", 16, -16);
		TitleOptions:SetText("|cff3399ff"..addon.." |cffa330c9(Classic Edition)|r");
		
		-- Display On/Off
		local DisplayLock = makeCheckbox(
			"Enabled",									-- label
			"Display FleecingTip on items tooltip.",	-- description
			function(self, value)
				FleecingTipDB.NoDisplay = not value
			end);	-- onClick
		DisplayLock:SetChecked(not FleecingTipDB.NoDisplay);
		DisplayLock:SetPoint("TOPLEFT", TitleOptions, "BOTTOMLEFT", 0, -12);
		
		-- Sound On/Off
		local SoundLock = makeCheckbox(
			"Sound On",							-- label
			"Give Fleecing Tip some sound.",	-- description
			function(self, value)
				FleecingTipDB.NoSound = not value
			end);	-- onClick
		SoundLock:SetChecked(not FleecingTipDB.NoSound);
		SoundLock:SetPoint("TOPLEFT", TitleOptions, "BOTTOMLEFT", 0, -40);
		
		-- Money Format Label
		local MoneyLabel = self:CreateFontString("$parentMoneyLabelOptions", "ARTWORK", "GameFontNormal");
		MoneyLabel:SetPoint("TOPLEFT", TitleOptions, "BOTTOMLEFT", -1, -78);
		MoneyLabel:SetText("Money Format");
		
		-- Money Icon Display
		local MoneyIconOptions = self:CreateFontString("$parentMoneyIconOptions", "ARTWORK", "GameFontNormal");
		local moneyRefresh = function() -- also needed else where!
			MoneyIconOptions:SetText(FTUtils.GSC(999999));
		end;
		
		-- Scale Displacement
		local ScaleDisplacement = makeSlider("$parentSliderOptions");
		ScaleDisplacement:SetPoint("TOPLEFT", TitleOptions, "BOTTOMLEFT", 2, -150);
		ScaleDisplacement:SetMinMaxValues(-2, 2);
		ScaleDisplacement:SetValueStep(1.0);
		ScaleDisplacement.low:SetText("-2");
		ScaleDisplacement.high:SetText("2");
		ScaleDisplacement.text:SetText("Coin Displacement");
--		ScaleDisplacement.tooltipText = "Adjusts coin displacement.";
		ScaleDisplacement:SetScript("OnValueChanged", function(self, value)
			if (FleecingTipDB.CoinFormat ~= FT.ICON) then
				ScaleDisplacement:SetValue(FleecingTipDB.Displacement);
				return;
			end;
			value = floor(value);
			self.value:SetText(value);
			FleecingTipDB.Displacement = value;
			moneyRefresh();
		end);
		
		-- Icon Format
		local info = {};
		local IconFormatDropdown = CreateFrame("Frame", addon.."Dropdown", self, "UIDropDownMenuTemplate");
		IconFormatDropdown:SetPoint("TOPLEFT", TitleOptions, "BOTTOMLEFT", -15, -94);
		IconFormatDropdown.initialize = function()
			wipe(info);
			local values = {FT.ICON, FT.SHORT, FT.LONG};
			local names = {FT.ICON, FT.SHORT, FT.LONG};
			for i, val in next, values do
				info.text = names[i];
				info.value = val;
				info.func = function(self)
					FleecingTipDB.CoinFormat = self.value;
					FleecingTipDropdownText:SetText(self:GetText());
					moneyRefresh();
					if (FleecingTipDB.CoinFormat == FT.ICON) then
						ScaleDisplacement:SetAlpha(1);
					else
						ScaleDisplacement:SetAlpha(.25);
					end;
				end;
				info.checked = val == FleecingTipDB.CoinFormat;
				UIDropDownMenu_AddButton(info);
			end;
		end;
		FleecingTipDropdownText:SetText(FleecingTipDB.CoinFormat);
		
		MoneyIconOptions:SetPoint("LEFT", IconFormatDropdown, "RIGHT", 118, 2);
		moneyRefresh();
		
		function self:refresh()
			if (FleecingTipDB.CoinFormat == FT.ICON) then
				ScaleDisplacement:SetAlpha(1);
			else
				ScaleDisplacement:SetAlpha(.25);
			end;
			ScaleDisplacement:SetValue(FleecingTipDB.Displacement);
		end;
		self:refresh();
		
	else
		
		-- Title
		local TitleOptions = self:CreateFontString("$parentTitleOptions", "ARTWORK", "GameFontNormalLarge");
		TitleOptions:SetPoint("TOPLEFT", 16, -16);
		TitleOptions:SetText("|cff3399ff"..addon.." |cffff0000(Incompatible Version)|r");
	
	end;
	
	self:SetScript("OnShow", nil);
	
end);

-- end