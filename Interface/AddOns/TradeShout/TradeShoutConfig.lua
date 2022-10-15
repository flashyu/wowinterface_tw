local TradeShoutChkBox = {}
if GetLocale() == "koKR" then
    TradeShoutChkBox = {
        ["Whisper"] = "귓말 알림",
        ["Party"] = "파티말 알림",
        ["Raid"] = "레이드 알림",
        ["Warning"] = "레이드 경보 알림",
        ["Say"] = "일반챗 알림",
        ["Thank"] = "창조된 아이템 감사하기"
    };
else
    TradeShoutChkBox = {
        ["Whisper"] = "Inform via Whisper",
        ["Party"] = "Inform in Party Chat",
        ["Raid"] = "Inform in Raid Chat",
        ["Warning"] = "Inform by Raid Warning",
        ["Say"] = "Inform via Say",
        ["Thank"] = "Thank conjured items"
    };
end

--local SelectedText = 0;

function TradeShoutConfig_Reset()
  TradeShoutOptions = {};
  TradeShoutOptions.point = "TOPRIGHT"
  TradeShoutOptions.relativeTo = "MinimapCluster"
  TradeShoutOptions.relativePoint = "BOTTOMRIGHT"
  TradeShoutOptions.xOfs = "-0"
  TradeShoutOptions.yOfs = "20.00000028115454"

  TradeShoutOptions.Whisper = true
  TradeShoutOptions.Party = true
  TradeShoutOptions.Raid = true
  TradeShoutOptions.Warning = false
  TradeShoutOptions.Say = false
  TradeShoutOptions.Thank = true
end

function TradeShoutConfig_Initialize()
    if not TradeShoutOptions then
      TradeShoutConfig_Reset();
      print("TradeShout 초기화");
    end

    -- Register the options frame
    UIPanelWindows["TradeShoutOptFrame"] = {
        area = "center",
        pushable = true,
    };

  for i, v in pairs(TradeShoutChkBox) do
    local btn = getglobal("TradeShoutOptFrame"..i);
    print(v);
    getglobal(btn:GetName().."Text"):SetText(v);
    btn.value = i;
    btn:SetChecked(TradeShoutOptions[i]);
  end
end

function TradeShoutConfig_CheckClick(self)
  if (TradeShoutOptions[self.value] == true) then
    TradeShoutOptions[self.value] = false
  else
    TradeShoutOptions[self.value] = true
  end
end

function TradeShout_ConditionCheck()
    if GetLocale() == "koKR" then
        if TradeShoutOptions.Raid == true then
        ChatFrame1:AddMessage("TradeShout: 공대창 알림 사용중",  1.0, 1.0, 1.0);
        end

        if TradeShoutOptions.Party == true then
        ChatFrame1:AddMessage("TradeShout: 파티창 알림 사용중", 1.0, 1.0, 1.0);
        end

        if TradeShoutOptions.Whisper == true then
        ChatFrame1:AddMessage("TradeShout: 귓말 알림 사용중",  1.0, 1.0, 1.0);
        end

        if TradeShoutOptions.Warning == true then
        ChatFrame1:AddMessage("TradeShout: 레이드 경보 알림 사용중",  1.0, 1.0, 1.0);
        end

        if TradeShoutOptions.Say == true then
        ChatFrame1:AddMessage("TradeShout: 일반챗 알림 사용중",  1.0, 1.0, 1.0);
        end

        if TradeShoutOptions.Thank == true then
        ChatFrame1:AddMessage("TradeShout: 창조된 아이템 감사하기 사용중",  1.0, 1.0, 1.0);
        end
    else
        if TradeShoutOptions.Raid == true then
        ChatFrame1:AddMessage("TradeShout: Use Raid Chat",  1.0, 1.0, 1.0);
        end

        if TradeShoutOptions.Party == true then
        ChatFrame1:AddMessage("TradeShout: Use Party Chat", 1.0, 1.0, 1.0);
        end

        if TradeShoutOptions.Whisper == true then
        ChatFrame1:AddMessage("TradeShout: Use Whisper",  1.0, 1.0, 1.0);
        end

        if TradeShoutOptions.Warning == true then
        ChatFrame1:AddMessage("TradeShout: Use Raid Warning",  1.0, 1.0, 1.0);
        end

        if TradeShoutOptions.Say == true then
        ChatFrame1:AddMessage("TradeShout: Use Say",  1.0, 1.0, 1.0);
        end

        if TradeShoutOptions.Thank == true then
        ChatFrame1:AddMessage("TradeShout: Thank conjured items",  1.0, 1.0, 1.0);
        end
    end
end
