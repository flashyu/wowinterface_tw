-- 변수 선언
local ls_msg = ""
local ls_errmsg = ""
local ls_tag = ""
local ls_reason = ""
local ls_money = ""
local ls_TradeItem = ""
local ls_targetName = ""
local ll_playerMoney = ""
local ll_targetMoney = ""
local playerItems = {}
local targetItems = {}

local very_long_test_string = "아들아, 네가 태어나던 날, 온 로데론이 네 이름을 속삭였단다. 아서스. 내 아들아, 정의의 수호자로 자라는 네가 얼마나 자랑스러웠는지 아느냐. 명심하거라. 우리 가문은 늘 힘과 지혜로 왕국을 다스렸음을. 또한 네가, 그 강한 힘을 신중하게 사용하리라 믿고 있음을. 하지만 아들아, 진정한 승리란 백성의 마음을 움직이는 것이란다. 기억하거라. 나의 시대가 끝나는 그날… 너는 왕이 되리니."

--https://github.com/kikito/utf8_validator.lua
--MIT LICENSE Copyright (c) 2013 Enrique García Cota
function validate_utf8(str)
  local i, len = 1, #str
  while i <= len do
    if     i == string.find(str, "[%z\1-\127]", i) then i = i + 1
    elseif i == string.find(str, "[\194-\223][\128-\191]", i) then i = i + 2
    elseif i == string.find(str,        "\224[\160-\191][\128-\191]", i)
        or i == string.find(str, "[\225-\236][\128-\191][\128-\191]", i)
        or i == string.find(str,        "\237[\128-\159][\128-\191]", i)
        or i == string.find(str, "[\238-\239][\128-\191][\128-\191]", i) then i = i + 3
    elseif i == string.find(str,        "\240[\144-\191][\128-\191][\128-\191]", i)
        or i == string.find(str, "[\241-\243][\128-\191][\128-\191][\128-\191]", i)
        or i == string.find(str,        "\244[\128-\143][\128-\191][\128-\191]", i) then i = i + 4
    else
      return false, i
    end
  end

  return true
end

--https://stackoverflow.com/a/39481287
--영어는 되는데 한글은 멀티 바이트라 자르는 글자가 깨지므로 utf8 검사하며 자름
local function splitByChunk(text, chunkSize)
    local s = {}
    local prev_i = 1
    
    for i=1, #text do --1에서 text의 size까지
        i = prev_i
        local end_idx = i + chunkSize - 1
        if (end_idx > #text) then end_idx = #text end
        if (i > #text) then break end
        
        local chopped_text = text:sub(i, end_idx)

        --valid한 utf-8 text가 나올 때까지 마지막 인덱스 땡김
        while(validate_utf8(chopped_text)==false) do
            end_idx = end_idx - 1
            chopped_text = text:sub(i, end_idx)
        end
        --print (i, end_idx, chopped_text)
    
        s[#s+1] = chopped_text
        prev_i = end_idx + 1
    end
    return s
end

-- 메세지 실제 출력
local function TS_PrintImpl(msg)
    -- 거래알림 사용시
    
    -- 01.Raid / Warning 선택시
    if UnitInRaid("player") ~= nil then --내가 공대면 공대창 (상대가 공대인지는 고려X)
        local playerName = UnitName("player")
        local playerRank = 0
        for i = 1, MAX_RAID_MEMBERS do
            local name, rank = GetRaidRosterInfo(i)
            if name == playerName then
                playerRank = rank
                break 
            end
        end
        
        --내가 (부)공대장이고 warning 켜져 있을시
        if playerRank ~= 0 and TradeShoutOptions.Warning == true then
            SendChatMessage(msg, "Warning")
        --(부)공대장은 아니지만 warning 켜져 있거나, raid 켜져 있으면
        elseif TradeShoutOptions.Warning == true or TradeShoutOptions.Raid == true then
            SendChatMessage(msg, "RAID")
        end

    -- 02.PARTY 선택시 (Raid 선택시에는 PARTY Skip)
    elseif UnitInParty("player") ~= nil then
        if TradeShoutOptions.Party == true then
            SendChatMessage(msg, "PARTY")
        end
    end

    -- 03.귓말 알림
    if TradeShoutOptions.Whisper == true then
        SendChatMessage(msg, "WHISPER", nil, ls_targetName);
    end

    -- 04.자신만 볼수 있게 알림 (무조건)
    ChatFrame1:AddMessage(msg, 1.0, 1.0, 0.0);

    -- 물빵이나 생석 받으면 감사
    if TradeShoutOptions.Thank == true then
        if string.find(msg, "거래 완료") or string.find(msg, "Trade completed") then
            for i = 1, 6 do
                if targetItems[i] then
                    if 
                    string.find(targetItems[i].name, "생명석") or 
                    string.find(targetItems[i].name, "창조된") or
                    string.find(targetItems[i].name, "Healthstone") or 
                    string.find(targetItems[i].name, "Conjured") then
                        if ls_targetName ~= nil then
                            DoEmote("THANK", ls_targetName)
                            break
                        end
                    end
                end
            end
        end
    end
    
    if TradeShoutOptions.Say == true then
        SendChatMessage(msg, "SAY")
    end
    
end

local function TS_Print(msg)
  --msg는 "거래 취소 <"..ls_reason..">" 또는 "거래 완료 ("..ls_msg..")"
  local prefix = ""
  if ls_targetName ~= nil then
    prefix = "대상: "..ls_targetName.." ▶ "
  end
  local ls_SendMsg = prefix..msg

  --메세지가 너무 길면, 쪼개서 TS_PrintImpl 함수 반복 호출
  local st = splitByChunk(ls_SendMsg, 240)
  for i, split in ipairs(st) do
     --print(i, split)
     TS_PrintImpl(split)
  end
  
  --변수 초기화
  ls_errmsg = ""
  ls_tag = ""
  ls_reason = ""
  ls_money = ""
  ls_targetName =""
  ll_playerMoney = ""
  ll_targetMoney = ""
  playerItems = {}
  targetItems = {}
end

-- 골 실 코퍼 포맷
local function formatMoney(str)
  local ll_len = string.len(str)
  
  local ll_gold = 0
  local ll_silver = 0
  local ll_copper = 0
  
  if(ll_len>=5) then --골드
      ll_gold = tonumber(string.sub(str, 1, ll_len - 4))
      ll_silver = tonumber(string.sub(str, ll_len - 3, ll_len - 2))
      ll_copper = tonumber(string.sub(str, ll_len - 1, ll_len))
  elseif(ll_len>=3) then --실버
      ll_silver = tonumber(string.sub(str, ll_len - 3, ll_len - 2))
      ll_copper = tonumber(string.sub(str, ll_len - 1, ll_len))
  elseif(ll_len>=1) then --코퍼
      ll_copper = tonumber(string.sub(str, ll_len - 1, ll_len))
  end

  local money_string = ""

  if GetLocale() == "koKR" then
      if ll_gold ~= nil and ll_gold ~= 0 then
        money_string = money_string..ll_gold.."골 "
      end
      
      if ll_silver ~= nil and ll_silver ~= 0 then
        money_string = money_string..ll_silver.."실 "
      end
      
      if ll_copper ~= nil and ll_copper ~=0 then
        money_string = money_string..ll_copper.."코 "
      end
      
      if string.sub(money_string, -1) == " " then
        money_string = string.sub(money_string, 1, -2)
      end
  else
      if ll_gold ~= nil and ll_gold ~= 0 then
        money_string = money_string..ll_gold.."Gold "
      end
      
      if ll_silver ~= nil and ll_silver ~= 0 then
        money_string = money_string..ll_silver.."Silv "
      end
      
      if ll_copper ~= nil and ll_copper ~=0 then
        money_string = money_string..ll_copper.."Copp "
      end
      
      if string.sub(money_string, -1) == " " then
        money_string = string.sub(money_string, 1, -2)
      end
  end
  
  if money_string == "" then
    money_string = "없음"
  end
  
  return money_string
end

-- 골드확인
local function TS_UpdateMoney()
  ll_playerMoney = formatMoney(GetPlayerTradeMoney());  --- ggggsscc (format)
  ll_targetMoney = formatMoney(GetTargetTradeMoney());
end

-- 거래물품의 정보 처리
local function TS_UpdateItemInfo(id, unit, items)
  local funcInfo = getglobal("GetTrade"..unit.."ItemInfo");
  local funcLink = getglobal("GetTrade"..unit.."ItemLink");

  local name, texture, numItems, quality, isUsable, enchantment;

  if(unit=="Target") then
    name, texture, numItems, quality, isUsable, enchantment = funcInfo(id);
  else
    name, texture, numItems, quality, enchantment = funcInfo(id);
  end

  if(not name) then
    items[id] = nil;
    return;
  end
  
  if numItems == 1 then
    items[id] = {
      name = name,       -- itemName
      enchantment = enchantment, --  마부여부
    }
  else 
    items[id] = {
      name = name.."x"..numItems, -- 'itemName'x개수
      enchantment = enchantment,  --  마부여부
    }
  end  
end

-- 교환물품 수량 및 마부내역
local function TS_GetTradeList(msg, items, enchant)
  local ls_text = ""
  local count = 0
  
  for i = 1, 6 do
    if(items[i]) then
      count = count + 1
    end
  end
  
  if(count > 0) then
    if GetLocale() == "koKR" then
        ls_text = msg..string.gsub(" %d 개", "%%d", count)
    else
        ls_text = msg..string.gsub(" %d items", "%%d", count)
    end
  end
  
  for i = 1, 6 do
    if(items[i]) then
      if i == 1 then
        ls_text = ls_text.." : "
      else
        ls_text = ls_text.." / "
      end
      
      ls_text = ls_text..items[i].name
    end
  end

  if(enchant and enchant.name and enchant.enchantment) then
    ls_text = ls_text.."["..enchant.name.."-"..enchant.enchantment.."]"
  end
  return ls_text;
end

-- 사용할 ERR EVENT 설정
local ErrEvents = {}

ErrEvents[ERR_TRADE_BAG] = true;              ErrEvents[ERR_TRADE_BAG_FULL] = true;
ErrEvents[ERR_TRADE_BLOCKED_S] = true;        ErrEvents[ERR_TRADE_BOUND_ITEM] = true;
ErrEvents[ERR_TRADE_GROUND_ITEM] = true;      ErrEvents[ERR_TRADE_MAX_COUNT_EXCEEDED] = true;
ErrEvents[ERR_TRADE_QUEST_ITEM] = true;       ErrEvents[ERR_TRADE_REQUEST_S] = true;
ErrEvents[ERR_TRADE_TARGET_BAG_FULL] = true;  ErrEvents[ERR_TRADE_TARGET_DEAD] = true;
ErrEvents[ERR_TRADE_TOO_FAR] = true;          ErrEvents[ERR_TRADE_TARGET_MAX_COUNT_EXCEEDED] = true;

-- Event : OnLoad
--function TradeShout_OnLoad(self)
local function load(self)

  -- slash command
  SLASH_TRADESHOUT1 = "/거래알림"
  SLASH_TRADESHOUT2 = "/ts"
  SLASH_TRADESHOUT3 = "/ㅅㄴ"

  self:RegisterEvent("VARIABLES_LOADED");
  self:RegisterEvent("TRADE_SHOW");
  self:RegisterEvent("TRADE_CLOSED");
  self:RegisterEvent("TRADE_REQUEST_CANCEL");

  self:RegisterEvent("TRADE_TARGET_ITEM_CHANGED");
  self:RegisterEvent("TRADE_ACCEPT_UPDATE");
  self:RegisterEvent("UI_INFO_MESSAGE");
  self:RegisterEvent("UI_ERROR_MESSAGE");

  self:SetScript("OnEvent", TradeShout_OnEvent)

  TradeShoutConfig_Initialize();

end

-- Event : OnEvent
function TradeShout_OnEvent(self, event, ...)
  local arg1 = ...;

  if (event == "VARIABLES_LOADED") then

    if not TradeShoutOptions then
      TradeShoutConfig_Reset();
    end

    TradeShout_ConditionCheck();
  end

  if (event=="UI_ERROR_MESSAGE") and (ErrEvents[arg1]) then
    ls_errmsg = "거래가 실패했습니다.  ("..arg1..")"
    ls_targetName = nil;
    TS_Print(ls_errmsg);
  elseif (event=="UI_INFO_MESSAGE") then
	
	local messageType, message = ...;

	local errorName, soundKitID, voiceID = GetGameMessageInfo(messageType);

	if (errorName=="ERR_TRADE_CANCELLED" or errorName=="ERR_TRADE_COMPLETE") then

		local ll_len = string.len(ls_tag)
		local ll_start = ll_len - 2
        
        if GetLocale() == "koKR" then
            if string.sub(ls_tag,ll_start) == "112" then
              ls_reason = GetUnitName('player',true).." 님이 취소했습니다";
            elseif string.sub(ls_tag,ll_start) == "312" then
              ls_reason = "거래 상대와 멀어짐";
            elseif string.sub(ls_tag,ll_start) == "211" then
              ls_reason = ls_targetName.." 님이 취소했습니다";
            elseif string.sub(ls_tag,ll_start) == "132" then
              ls_reason = "거래창 UI가 숨겨짐";
            end
        else
            if string.sub(ls_tag,ll_start) == "112" then
              ls_reason = GetUnitName('player',true).." <- cancelled trade";
            elseif string.sub(ls_tag,ll_start) == "312" then
              ls_reason = "Traget is too far away";
            elseif string.sub(ls_tag,ll_start) == "211" then
              ls_reason = ls_targetName.." <- cancelled trade";
            elseif string.sub(ls_tag,ll_start) == "132" then
              ls_reason = "Trade UI is hidden";
            end
        end

		local ls_target = ""
		local ls_player = ""
		ls_TradeItem = ""

        if GetLocale() == "koKR" then
            ls_target = TS_GetTradeList("받은 물품", targetItems, targetItems[7]);
            ls_player = TS_GetTradeList("보낸 물품", playerItems, playerItems[7]);
        else
            ls_target = TS_GetTradeList("Received", targetItems, targetItems[7]);
            ls_player = TS_GetTradeList("Gave", playerItems, playerItems[7]);
        end

		if (string.len(ls_target) > 1) and (string.len(ls_player) > 1) then
		  ls_TradeItem = ls_target.." & "..ls_player
		else
		  if string.len(ls_target) > 1 then
			ls_TradeItem = ls_target;
		  elseif string.len(ls_player) > 1 then
			ls_TradeItem = ls_player;
		  end
		end

		ls_msg = "거래 품목이 없음"
		if (string.len(ls_money) > 1) and (string.len(ls_TradeItem) > 1) then
		  ls_msg = ls_money.." & "..ls_TradeItem
		else
		  if string.len(ls_money) > 1 then
			ls_msg = ls_money;
		  elseif string.len(ls_TradeItem) > 1 then
			ls_msg = ls_TradeItem;
		  end
		end
        
        if GetLocale() == "koKR" then
            if (errorName=="ERR_TRADE_CANCELLED") then
              ls_msg = "거래 취소 <"..ls_reason..">"
            else
              ls_msg = "거래 완료 ("..ls_msg..")"
            end
        else
            if (errorName=="ERR_TRADE_CANCELLED") then
              ls_msg = "Trade cancelled <"..ls_reason..">"
            else
              ls_msg = "Trade completed ("..ls_msg..")"
            end       
        end

		TS_Print(ls_msg)
	end

  elseif (event=="TRADE_CLOSED" or event=="TRADE_REQUEST_CANCEL" or event == "TRADE_SHOW") then
    if (event=="TRADE_CLOSED") then
      ls_tag = ls_tag.."1"
    elseif (event=="TRADE_REQUEST_CANCEL") then
      ls_tag = ls_tag.."2"
    elseif (event == "TRADE_SHOW") then
      ls_tag = ls_tag.."3"
      ls_targetName = GetUnitName('npc', true) -- 파라미터만 NPC고 실제 상호작용하는 PC도 적용됨
      level = UnitLevel("npc")
      localizedClass = UnitClass("npc")
      guildName = GetGuildInfo("npc")
      
      identityString = ""
      if GetLocale() == "koKR" then
          identityString = level.."레벨 "..localizedClass
          if (guildName) then
            identityString = identityString.." <"..guildName.."> 길드"
          end
      else
          identityString = "Lv. "..level.." "..localizedClass
          if (guildName) then
            identityString = identityString.." <"..guildName.."> Guild"
          end       
      end

      if GetLocale() == "koKR" then
        ChatFrame1:AddMessage("TradeShout: "..ls_targetName.." 님과 거래 시작 ("..identityString..")", 1.0, 1.0, 0.0);
      else
        ChatFrame1:AddMessage("TradeShout: "..ls_targetName.." started trade with ("..identityString..")", 1.0, 1.0, 0.0);         
      end
      
    elseif (event =="TRADE_REQUEST") then
      ChatFrame1:AddMessage("TradeShout: TRADE_REQUEST"..arg1, 1.0, 1.0, 0.0);
    end
  elseif (event=="TRADE_TARGET_ITEM_CHANGED") then
    TS_UpdateItemInfo(arg1, "Target", targetItems);
  elseif (event=="TRADE_ACCEPT_UPDATE") then
    local ll_i
    for ll_i = 1, 7 do
      TS_UpdateItemInfo(ll_i, "Player", playerItems);
      TS_UpdateItemInfo(ll_i, "Target", targetItems);
    end

    TS_UpdateMoney();

    if GetLocale() == "koKR" then
        if (ll_playerMoney ~= "없음") and (ll_targetMoney ~= "없음") then
          ls_money = "준 돈 : "..ll_playerMoney.." ▶ 받은 돈 : "..ll_targetMoney
        elseif (ll_playerMoney ~= "없음") then
          ls_money = "준 돈 : "..ll_playerMoney
        elseif (ll_targetMoney ~= "없음") then
          ls_money = "받은 돈 : "..ll_targetMoney
        else
          ls_money = "";
        end    
    else
        if (ll_playerMoney ~= "없음") and (ll_targetMoney ~= "없음") then
          ls_money = "Received Money : "..ll_playerMoney.." ▶ Gave Money : "..ll_targetMoney
        elseif (ll_playerMoney ~= "없음") then
          ls_money = "Gave Money : "..ll_playerMoney
        elseif (ll_targetMoney ~= "없음") then
          ls_money = "Received Money : "..ll_targetMoney
        else
          ls_money = "";
        end           
    end
  
  end

end

---------------------------------------------------------------------------------------------------
-- function name : SlashCmdList
-- desc          : 명령어
---------------------------------------------------------------------------------------------------
SlashCmdList["TRADESHOUT"] = function(cmd)

  if (cmd == 'reset') or (cmd == "초기화") then

    -- 환경 초기화
    TradeShoutConfig_Reset();
    TradeShoutConfig_Initialize();
    ReloadUI();

  elseif (TradeShoutOptFrame:IsVisible()) then
      HideUIPanel(TradeShoutOptFrame);
  else
      ShowUIPanel(TradeShoutOptFrame);
  end

end

------------------------------------------------------------
-- 프레임 활성화
------------------------------------------------------------
TradeShout_Frame = CreateFrame("Frame", "TradeShout")
TradeShout_Frame:RegisterEvent("ADDON_LOADED")
TradeShout_Frame:SetScript("OnEvent", function(this, event, ...)
  if event == "ADDON_LOADED" then
    load(this)
  end
end)