﻿--Localization.koKR.lua by friends

if ( GetLocale() == "koKR" ) then

TomTomLocals = {
  ["%d yards"] = "%d 미터",
  ["%s (%.2f, %.2f)"] = "%s (%.2f, %.2f)",
  ["%s yards away"] = "%s 미터 떨어짐",
  ["Accept waypoints from guild and party members"] = "길드나 파티원으로 부터 목표지점 수신 허용",
  ["Allow control-right clicking on map to create new waypoint"] = "맵에서 Ctrl+우클릭으로 목표지점을 생성할 수 있도록 합니다.",
  ["Alpha"] = "투명도",
  ["Announce new waypoints when they are added"] = "새로운 목표지점이 생성될때 알림.",
  ["Are you sure you would like to remove ALL TomTom waypoints?"] = "모든 목표지점을 삭제하겠습니까?",
  ["Arrow colors"] = "화살표 색상",
  ["Arrow display"] = "화살표 표시",
  ["Ask for confirmation on \"Remove All\""] = "'모든 목표지점 삭제'시 확인창 표시",
  ["Automatically set a waypoint when I die"] = "사망시 자동으로 시체의 위치를 표시합니다.",
  ["Automatically set to next closest waypoint"] = "자동으로 가장 가까운 다음 목표지점을 표시합니다.",
  ["Automatically set waypoint arrow"] = "자동으로 목표지점 화살표 표시",
  ["Background color"] = "배경 색상",
  ["Bad color"] = "목표의 반대 방향으로 진행시",
  ["Block height"] = "표시창 높이",
  ["Block width"] = "표시창 너비",
  ["Border color"] = "테두리 색상",
  ["Clear waypoint distance"] = "목표지점 해제 범위",
  ["Clear waypoint from crazy arrow"] = "안내 화살표에서 목표지점 해제",
  ["Controls the frequency of updates for the coordinate LDB feed."] = "LDB로의 좌표 자료의 갱신 주기를 설정합니다.",
  ["Controls the frequency of updates for the crazy arrow LDB feed."] = "LDB로의 안내 화살표 자료의 갱신 주기를 설정합니다. ",
  ["Coordinate Accuracy"] = "좌표 정확도",
  ["Coordinate Block"] = "좌표 표시창",
  ["Coordinates can be displayed as simple XX, YY coordinate, or as more precise XX.XX, YY.YY.  This setting allows you to control that precision"] = "이 설정에서 좌표값을 소수점 두자리 까지 표시할 수 있도록 지정할 수 있습니다.",
  ["Coordinate feed accuracy"] = "제공할 좌표 정확도",
  ["Coordinate feed throttle"] = "자료 갱신 주기",
  ["Crazy Arrow feed throttle"] = "자료 갱신 주기",
  ["Create note modifier"] = "목표지점 생성 단축키 조합 설정",
  ["Ctrl+Right Click To Add a Waypoint"] = "Ctrl+우클릭으로 목표지점 생성",
  ["Cursor Coordinates"] = "커서 좌표",
  ["Cursor coordinate accuracy"] = "커서 좌표 정확도(소수점)",
  ["Data Feed Options"] = "자료 공유 설정",
  ["Disable all mouse input"] = "마우스 입력 불가 설정",
  ["Disables the crazy taxi arrow for mouse input, allowing all clicks to pass through"] = "안내화살표 프레임의 마우스 입력을 중단시킵니다.",
  ["Display Settings"] = "좌표 표시창 설정",
  ["Display waypoints from other zones"] = "다른 지역의 목표지점 표시",
  ["Enable coordinate block"] = "좌표 표시창 사용",
  ["Enable floating waypoint arrow"] = "목표지점 안내 화살표 사용",
  ["Enable minimap waypoints"] = "미니맵에 목표지점 표시",
  ["Enable mouseover tooltips"] = "마우스 툴팁 사용",
  ["Enable showing cursor coordinates"] = "커서 좌표 표시",
  ["Enable showing player coordinates"] = "플레이어 좌표 표시",
  ["Enable the right-click contextual menu"] = "마우스 우클릭으로 메뉴 표시",
  ["Enable world map waypoints"] = "월드맵에 목표지점 표시",
  ["Enables a floating block that displays your current position in the current zone"] = "현재 위치를 표시하는 이동가능한 좌표 표시창을 사용합니다.",
  ["Enables a menu when right-clicking on a waypoint allowing you to clear or remove waypoints"] = "목표지점을 우클릭시 나타나는 메뉴(목표지점 해제 및 삭제 기능)를 사용합니다.",
  ["Enables a menu when right-clicking on the waypoint arrow allowing you to clear or remove waypoints"] = "목표지점 안내 화살표를 우클릭시 나타나는 메뉴(목표지점 해제 및 삭제 기능)를 사용합니다",
  ["Font size"] = "글자 크기",
  ["Found %d possible matches for zone %s.  Please be more specific"] = "%d 개의 가능한 지점이 존재합니다(%s 지역내).  좀더 정확하게 지정하십시요",
  ["Found multiple matches for zone '%s'.  Did you mean: %s"] = "'%s'지역에 다수의 동일지점이 발견되었습니다.  재확인 요망: %s",
  ["General Options"] = "일반 설정",
  ["Good color"] = "목표 방향대로 진행시",
  ["Lock coordinate block"] = "좌표 표시창 고정",
  ["Lock waypoint arrow"] = "목표지점 안내 화살표 고정",
  ["Locks the coordinate block so it can't be accidentally dragged to another location"] = "좌표 표시창 위치를 고정하여 실수로 옮겨지지 않도록 설정합니다.",
  ["Locks the waypoint arrow, so it can't be moved accidentally"] = "목표지점 안내 화살표 위치를 고정하여 실수로 옮겨지지 않도록 설정합니다.",
  ["Middle color"] = "목표와 다른 방향으로 진행시",
  ["Minimap"] = "미니맵",
  ["No"] = "아니오",
  ["Options profile"] = "설정 프로필",
  ["Options that alter the coordinate block"] = "좌표 표시창 사용자 설정",
  ["Player Coordinates"] = "플레이어 좌표",
  ["Player coordinate accuracy"] = "플레이어 좌표 정확도(소수점)",
  ["Profile Options"] = "프로필 설정",
  ["Prompt before accepting sent waypoints"] = "전송된 목표지점 수신시 확인함",
  ["Provide a LDB data source for coordinates"] = "LDB에 좌표 자료를 제공합니다.",
  ["Provide a LDB data source for the crazy-arrow"] = "LDB에 안내 화살표 자료를 제공합니다.",
  ["Quest Objectives"] = "퀘스트 수행지역",
  ["Options that alter quest objective integration"] = "퀘스트 수행지역을 표시합니다.",
  ["TomTom can be configured to set waypoints for the quest objectives that are shown in the watch frame and on the world map.  These options can be used to configure these options."] = "퀘스트 수행지역을 TomTom으로 표시합니다.",
  ["Enable quest objective integration"] = "기능 사용",
  ["Enables the setting of waypoints when modified-clicking on quest objectives"] = "지정한 조합키 사용시 퀘스트 수행지역을 TomTom으로 표시합니다.",
  ["set waypoint modifier"] = "사용할 키 설정",
  ["This setting changes the modifier used by TomTom when right-clicking on a quest objective POI to create a waypoint"] = "우클릭 버튼과 사용할 조합키를 설정합니다.",
  ["Remove all waypoints"] = "모든 목표지점 삭제",
  ["Remove all waypoints from this zone"] = "현재 지역의 모든 목표지점 삭제",
  ["Remove waypoint"] = "목표지점 삭제",
  ["Reset Position"] = "위치 초기화",
  ["Resets the position of the waypoint arrow if its been dragged off screen"] = "목표지점 안내 화살표의 위치를 초기화합니다.(실수로 화면밖으로 옮겨졌을때)",
  ["Save new waypoints until I remove them"] = "새로운 목표지점 저장",
  ["Save profile for TomTom waypoints"] = "TomTom 목표지점 프로필 저장",
  ["Save this waypoint between sessions"] = "이 목표지점 저장",
  ["Saved profile for TomTom options"] = "TomTom 설정 프로필 저장",
  ["Scale"] = "크기",
  ["Send to battleground"] = "전장에 전송",
  ["Send to guild"] = "길드에 전송",
  ["Send to party"] = "파티에 전송",
  ["Send to raid"] = "공격대에 전송",
  ["Send waypoint to"] = "목표지점 전송",
  ["Set as waypoint arrow"] = "목표지점 안내 화살표 표시",
  ["Show estimated time to arrival"] = "도착 예정 시간 표시",
  ["Shows an estimate of how long it will take you to reach the waypoint at your current speed"] = "현재 속도로 진행시 목표지점까지 도착 예정 시간을 표시합니다.",
  ["The color to be displayed when you are halfway between the direction of the active waypoint and the completely wrong direction"] = "목표지점과 많이 틀어진 방향으로 진행시 표시할 색상.",
  ["The color to be displayed when you are moving in the direction of the active waypoint"] = "목표지점과 같은 방향으로 진행시 표시할 색상",
  ["The color to be displayed when you are moving in the opposite direction of the active waypoint"] = "목표지점과 정반대 방향으로 진행시 표시할 색상",
  ["The display of the coordinate block can be customized by changing the options below."] = "좌표 표시창을 아래 설정을 통해 사용자 취향에 맞게 변경할 수 있습니다..",
  ["The floating waypoint arrow can change color depending on whether or nor you are facing your destination.  By default it will display green when you are facing it directly, and red when you are facing away from it.  These colors can be changed in this section.  Setting these options to the same color will cause the arrow to not change color at all"] = "목표지점 안내 화살표의 색상을 목표지점에 대한 진행방향에 따라 달리 표시할 수 있습니다. 기본적으로 같은 방향일때는 녹색, 반대방향일 경우 적색으로 표시합니다.  이 표시 색상을 여기에서 변경할 수 있습니다.  모두 같은 색상으로 지정할 경우 화살표의 색상은 변하지 않습니다.",
  ["There were no waypoints to remove in %s"] = "%s 에는 삭제할 목표지점이 없습니다.",
  ["These options let you customize the size and opacity of the waypoint arrow, making it larger or partially transparent, as well as limiting the size of the title display."] = "여기에서 목표지점 안내 화살표의 크기와 투명도, 제목의 표시 크기를 설정할 수 있습니다.",
  ["This option will not remove any waypoints that are currently set to persist, but only effects new waypoints that get set"] = "이 설정을 해제하더라도 이미 저장되어 있는 목표지점은 삭제되지 않으며, 이후 새로 추가된 목표지점에만 적용됩니다.",
  ["This option will toggle whether or not you are asked to confirm removing all waypoints.  If enabled, a dialog box will appear, requiring you to confirm removing the waypoints"] = "이 설정은 모든 목표지점 삭제시 다시 한 번 확인 한 후 삭제하게합니다.",
  ["This setting allows you to change the opacity of the title text, making it transparent or opaque"] = "이 설정은 제목 표시의 투명도를 조절합니다.",
  ["This setting allows you to change the opacity of the waypoint arrow, making it transparent or opaque"] = "이 설정은 목표지점 안내 화살표의 투명도를 조절합니다.",
  ["This setting allows you to change the scale of the waypoint arrow, making it larger or smaller"] = "이 설정은 목표지점 안내 화살표의 크기를 조절합니다.",
  ["This setting allows you to specify the maximum height of the title text.  Any titles that are longer than this height (in game pixels) will be truncated."] = "이 설정은 제목 표시줄의 최대 높이를 지정합니다.  설정값 보다 큰 제목은 제거됩니다.",
  ["This setting allows you to specify the maximum width of the title text.  Any titles that are longer than this width (in game pixels) will be wrapped to the next line."] = "이 설정은 제목 표시줄의 최대 너비를 지정합니다.  설정값 보다 길면 다음줄로 줄바꿈 됩니다.",
  ["This setting allows you to specify the scale of the title text."] = "이 설정은 제목 표시의 크기를 비율로 조절할 수 있게합니다.",
  ["This setting changes the modifier used by TomTom when right-clicking on the world map to create a waypoint"] = "월드맵에 우클릭으로 목표지점 설정시 함께 사용할 조합키를 지정합니다.",
  ["This setting will control the distance at which the waypoint arrow switches to a downwards arrow, indicating you have arrived at your destination"] = "이 설정은 목표지점과 어느 정도의 거리까지 접근했을 때 안내 화살표를 목표지점에 도착했음을 표시하는 아래화살표로 변경할지를 결정합니다.",
  ["Title Alpha"] = "제목 표시 투명도",
  ["Title Height"] = "제목 표시 높이",
  ["Title Scale"] = "제목 표시 스케일",
  ["Title Width"] = "제목 표시 너비",
  ["TomTom"] = "TomTom",
  ["TomTom is a simple navigation assistant"] = "TomTom은 간단한 길찾기 도우미입니다.",
  ["TomTom Waypoint Arrow"] = "TomTom 목표지점 안내 화살표",
  ["TomTom can announce new waypoints to the default chat frame when they are added"] = "새로운 목표지점이 추가되었을때 대화창에 출력합니다.",
  ["TomTom can automatically set a waypoint when you die, guiding you back to your corpse"] = "사망시 자동으로 시체의 위치를 목표지점으로 설정하고 안내 화살표를 표시합니다.",
  ["TomTom can display a tooltip containing information abouto waypoints, when they are moused over.  This setting toggles that functionality"] = "툴팁에 목표지점에 대한 정보를 표시할지를 결정합니다.",
  ["TomTom can display multiple waypoint arrows on the minimap.  These options control the display of these waypoints"] = "미니맵에 다수의 목표지점을 표시할지를 결정합니다.",
  ["TomTom can display multiple waypoints on the world map.  These options control the display of these waypoints"] = "월드맵에 다수의 목표지점을 표시할지를 결정합니다.",
  ["TomTom can hide waypoints in other zones, this setting toggles that functionality"] = "타지역의 목표지점도 표시할지를 결정합니다.",
  ["TomTom is capable of providing data sources via LibDataBroker, which allows them to be displayed in any LDB compatible display.  These options enable or disable the individual feeds, but will only take effect after a reboot."] = "TomTom은 LibDataBroker를 통해 이를 지원하는 다른 애드온들로 하여금 사용할 수 있도록 좌료 자료를 제공할 수 있습니다. 이 설정은 각각 사용여부를 지정할 수 있지만, UI 재시작을 해야만 적용됩니다.",
  ["TomTom provides an arrow that can be placed anywhere on the screen.  Similar to the arrow in \"Crazy Taxi\" it will point you towards your next waypoint"] = "TomTom 은 이동 가능한 화살표를 제공합니다.\n이 화살표는 목표지점 도착시 까지 진행 방향을 표시해 줍니다.",
  ["TomTom provides you with a floating coordinate display that can be used to determine your current position.  These options can be used to enable or disable this display, or customize the block's display."] = "TomTom은 현재 위치를 표시할 수 있는 이동가능한 좌표 표시창을 지원합니다. 이 설정은 이 표시창의 사용여부와 모양을 변경할 수 있게합니다.",
  ["TomTom waypoint"] = "TomTom 목표지점",
  ["TomTom's saved variables are organized so you can have shared options across all your characters, while having different sets of waypoints for each.  These options sections allow you to change the saved variable configurations so you can set up per-character options, or even share waypoints between characters"] = "TomTom의 저장된 값은 계정내 모든 캐릭터간에 공유할 수 있습니다. 이 설정은 저장된 값을 캐릭별로 각각 사용할건지, 모든 캐릭이 같이 공유할건지를 결정합니다.",
  ["Waypoint Arrow"] = "목표지점 안내 화살표",
  ["Waypoint Options"] = "목표지점 설정",
  ["Waypoint communication"] = "목표지점 공유",
  ["Waypoint from %s"] = "%s |1으로;로 부터 받은 목표지점",
  ["Waypoints can be automatically cleared when you reach them.  This slider allows you to customize the distance in yards that signals your \"arrival\" at the waypoint.  A setting of 0 turns off the auto-clearing feature\n\nChanging this setting only takes effect after reloading your interface."] = "목표지점은 그곳에 도착시 자동으로 해제됩니다.  이 슬라이더는 목표지점 도착점의 오차 범위를 지정합니다.  0 값으로 지정하면 자동 해제 기능을 사용하지 않습니다.\n이 설정의 변경은 애드온 재시작시 적용됩니다.",
  ["Waypoints profile"] = "목표지점 프로필",
  ["When a new waypoint is added, TomTom can automatically set the new waypoint as the \"Crazy Arrow\" waypoint."] = "새로운 목표지점이 생성되면, TomTom은 자동으로 이 목표지점에 대해 안내 화살표를 표시합니다.",
  ["When the current waypoint is cleared (either by the user or automatically) and this option is set, TomTom will automatically set the closest waypoint in the current zone as active waypoint."] = "현재의 목표지점이 제거되면 (사용자에 의하거나 자동으로 행해지던) 이 설정이 켜져있으면, TomTom 은 자동으로 현 지역에서 가장 가까운 다음 목표지점을, 표시할 새로운 목표지점으로 선택합니다.",
  ["World Map"] = "월드 맵",
  ["Yes"] = "네",
  ["\"Arrival Distance\""] = "\"도착점 오차 범위\"",
  ["|cffffff78/way <x> <y> [desc]|r - Adds a waypoint at x,y with descrtiption desc"] = "|cffffff78/way <x> <y> [표시할 제목]|r - x,y 좌표에 목표지점 지정(표시할 제목은 생략가능)",
  ["|cffffff78/way <zone> <x> <y> [desc]|r - Adds a waypoint at x,y in zone with description desc"] = "|cffffff78/way <지역명> <x> <y> [표시할 제목]|r - 지정한 지역의 x,y 좌표에 목표지점 지정(표시할 제목은 생략가능)",
  ["|cffffff78/way reset <zone>|r - Resets all waypoints in zone"] = "|cffffff78/way reset <지역명>|r - 해당 지역의 모든 목표지점 초기화",
  ["|cffffff78/way reset all|r - Resets all waypoints"] = "|cffffff78/way reset all|r - 모든 목표지점 초기화",
  ["|cffffff78TomTom |r/way |cffffff78Usage:|r"] = "|cffffff78TomTom |r/way |cffffff78사용법:|r",
  ["|cffffff78TomTom|r: Added '%s' (sent from %s) to zone %s"] = "|cffffff78TomTom|r: '%s'|1을;를; (%s |1으로;로 부터 전송받은)  %s 지역에 추가",
}

setmetatable(TomTomLocals, {__index=function(t,k) rawset(t, k, k); return k; end})

end
