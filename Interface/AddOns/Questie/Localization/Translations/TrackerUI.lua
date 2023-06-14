---@type l10n
local l10n = QuestieLoader:ImportModule("l10n")

local trackerUILocales = {
    ["Questie Tracker"] = {
        ["ptBR"] = "Missões ativas",
        ["ruRU"] = "Активные задания",
        ["deDE"] = "Aktive Quests",
        ["koKR"] = "활성 퀘스트",
        ["esMX"] = "Misiones Activas",
        ["enUS"] = true,
        ["zhCN"] = "当前任务",
        ["zhTW"] = "目前的任務",
        ["esES"] = "Misiones Activas",
        ["frFR"] = "Quêtes actives",
    },
    ---------------------------------------------------------
    -- Sizer
    ["Sizer Mode"] = {
        ["ptBR"] = "Modo do Medidor",
        ["ruRU"] = "Режим сайзера",
        ["deDE"] = "Sizer-Modus",
        ["koKR"] = "사이저 모드",
        ["esMX"] = "Modo de calibrador",
        ["enUS"] = true,
        ["zhCN"] = "分级器模式",
        ["zhTW"] = "分级器模式",
        ["esES"] = "Modo de calibrador",
        ["frFR"] = "Mode Sizer",
    },
    ["Resize Tracker (Manual)"] = {
        ["ptBR"] = "Redimensionar rastreador (manual)",
        ["ruRU"] = "Изменить размера трекера (режим 'Вручную')",
        ["deDE"] = "Größe des Trackers ändern (manuell)",
        ["koKR"] = "트래커 크기 조정(수동)",
        ["esMX"] = "Cambiar el tamaño del rastreador (Manual)",
        ["enUS"] = true,
        ["zhCN"] = "调整跟踪器（手动）",
        ["zhTW"] = "调整跟踪器（手动）",
        ["esES"] = "Cambiar el tamaño del rastreador (Manual)",
        ["frFR"] = "Suivi de redimensionnement (manuel)",
    },
    ["Reset Sizer (Auto)"] = {
        ["ptBR"] = "Redefinir dimensionador (automático)",
        ["ruRU"] = "Сбросить сайзер (режим 'Авто')",
        ["deDE"] = "Sizer zurücksetzen (Auto)",
        ["koKR"] = "Sizer 재설정(자동)",
        ["esMX"] = "Restablecer calibrador (automático)",
        ["enUS"] = true,
        ["zhCN"] = "重置 Sizer（自动）",
        ["zhTW"] = "重置 Sizer（自动）",
        ["esES"] = "Restablecer calibrador (automático)",
        ["frFR"] = "Réinitialiser le calibreur (Auto)",
    },
    ["Resize while Locked"] = {
        ["ptBR"] = "Redimensionar enquanto bloqueado",
        ["ruRU"] = "Изменение размера при заблокированном трекере",
        ["deDE"] = "Größe im gesperrten Zustand ändern",
        ["koKR"] = "잠겨 있는 동안 크기 조정",
        ["esMX"] = "Cambiar el tamaño mientras está bloqueado",
        ["enUS"] = true,
        ["zhCN"] = "锁定时调整大小",
        ["zhTW"] = "锁定时调整大小",
        ["esES"] = "Cambiar el tamaño mientras está bloqueado",
        ["frFR"] = "Redimensionner pendant le verrouillage",
    },
    ["Reset while Locked"] = {
        ["ptBR"] = "Redefinir enquanto bloqueado",
        ["ruRU"] = "Сброс при заблокированном трекере",
        ["deDE"] = "Im gesperrten Zustand zurücksetzen",
        ["koKR"] = "잠겨 있는 동안 재설정",
        ["esMX"] = "Restablecer mientras está bloqueado",
        ["enUS"] = true,
        ["zhCN"] = "锁定时重置",
        ["zhTW"] = "锁定时重置",
        ["esES"] = "Restablecer mientras está bloqueado",
        ["frFR"] = "Réinitialiser pendant le verrouillage",
    },
    ["NOTE"] = {
        ["ptBR"] = "OBSERVAÇÃO",
        ["ruRU"] = "ПРИМЕЧАНИЕ",
        ["deDE"] = "NOTIZ",
        ["koKR"] = "메모",
        ["esMX"] = "NOTA",
        ["enUS"] = true,
        ["zhCN"] = "笔记",
        ["zhTW"] = "笔记",
        ["esES"] = "NOTA",
        ["frFR"] = "NOTE",
    },
    ["The Tracker Height Ratio\nis ignored while in Manual mode"] = {
        ["ptBR"] = "A relação de altura do\nrastreador é ignorada no modo manual",
        ["ruRU"] = "Соотношение высоты трекера игнорируется в ручном режиме",
        ["deDE"] = "Das Tracker-Höhenverhältnis\nwird im manuellen Modus ignoriert",
        ["koKR"] = "수동 모드에서는 추적기 높이 비율이 무시됩니다.",
        ["esMX"] = "La relación de altura del rastreador\nse ignora mientras está en modo manual",
        ["enUS"] = true,
        ["zhCN"] = "在手動模式下忽略跟踪器高度比",
        ["zhTW"] = "在手動模式下忽略跟踪器高度比",
        ["esES"] = "La relación de altura del rastreador\nse ignora mientras está en modo manual",
        ["frFR"] = "Le rapport de hauteur du\ntracker est ignoré en mode manuel",
    },
    ---------------------------------------------------------
    -- Questie Icon (Active Quest Header)
    ["Toggle Options"] = {
        ["ptBR"] = "Mostrar / Ocultar opções",
        ["ruRU"] = "Открыть/закрыть настройки",
        ["deDE"] = "Einstellungen anzeigen/verstecken",
        ["koKR"] = "설정 열기",
        ["esMX"] = "Mostrar Opciones",
        ["enUS"] = true,
        ["zhCN"] = "打开设置",
        ["zhTW"] = "設定",
        ["esES"] = "Mostrar opciones",
        ["frFR"] = "Panneau de configuration",
    },
    -- "Toggle My Journey" is in MinimapIcon.lua
    ["Drag while Unlocked"] = {
        ["ptBR"] = "Arraste enquanto desbloqueado",
        ["ruRU"] = "Перетаскивать, если разблокирован",
        ["deDE"] = "Ziehen, während entsperrt",
        ["koKR"] = "잠금 해제 상태에서 드래그",
        ["esMX"] = "Arrastre mientras está desbloqueado",
        ["enUS"] = true,
        ["zhCN"] = "解锁时拖动",
        ["zhTW"] = "解鎖時拖動",
        ["esES"] = "Arrastre mientras está desbloqueado",
        ["frFR"] = "Glisser pendant le déverrouillage",
    },
    ["Drag while Locked"] = {
        ["ptBR"] = "Arraste enquanto estiver bloqueado",
        ["ruRU"] = "Перетаскивать, если заблокирован",
        ["deDE"] = "Ziehen, während gesperrt",
        ["koKR"] = "잠금 상태에서 드래그",
        ["esMX"] = "Arrastra mientras está bloqueado",
        ["enUS"] = true,
        ["zhCN"] = "锁定时拖动",
        ["zhTW"] = "鎖定時拖動",
        ["esES"] = "Arrastra mientras está bloqueado",
        ["frFR"] = "Glisser pendant le verrouillage",
    },
    ["Questie Tracker Integrations"] = {
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["zhCN"] = false,
        ["zhTW"] = false,
        ["esES"] = false,
        ["frFR"] = false,
    },
    -- VoiceOver Integration
    ["VoiceOver"] = {
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["zhCN"] = false,
        ["zhTW"] = false,
        ["esES"] = false,
        ["frFR"] = false,
    },
    ["Hold shift to see PlayButtons"] = {
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["zhCN"] = false,
        ["zhTW"] = false,
        ["esES"] = false,
        ["frFR"] = false,
    },
    -- TomTom Integration
    ["TomTom"] = {
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["zhCN"] = false,
        ["zhTW"] = false,
        ["esES"] = false,
        ["frFR"] = false,
    },
    ["Ctrl + Left Click or Right Click a Quest Title"] = {
        ["ptBR"] = false,
        ["ruRU"] = false,
        ["deDE"] = false,
        ["koKR"] = false,
        ["esMX"] = false,
        ["enUS"] = true,
        ["zhCN"] = false,
        ["zhTW"] = false,
        ["esES"] = false,
        ["frFR"] = false,
    },
    ---------------------------------------------------------
    -- Quest/Achievement Right Click Menu
    ["Focus Quest"] = {
        ["ptBR"] = "Focar missão",
        ["ruRU"] = "Фокусировка на задании",
        ["deDE"] = "Quest fokussieren",
        ["koKR"] = "관심 퀘스트",
        ["esMX"] = "Enfocar Misión",
        ["enUS"] = true,
        ["zhCN"] = "关注任务",
        ["zhTW"] = "關注任務",
        ["esES"] = "Enfocar Misión",
        ["frFR"] = "Prioriser cette quête",
    },
    ["Focus Objective"] = {
        ["ptBR"] = "Focar objetivo",
        ["ruRU"] = "Фокусировка на цели",
        ["deDE"] = "Questziel fokussieren",
        ["koKR"] = "관심 목표",
        ["esMX"] = "Enfocar Objetivo",
        ["enUS"] = true,
        ["zhCN"] = "关注目标",
        ["zhTW"] = "關注目標",
        ["esES"] = "Enfocar Objetivo",
        ["frFR"] = "Objectif prioritaire",
    },
    ["Unfocus"] = {
        ["ptBR"] = "Desfocar",
        ["ruRU"] = "Сбросить фокусировку",
        ["deDE"] = "Fokus entfernen",
        ["koKR"] = "관심 퀘스트 해제",
        ["esMX"] = "Desenfocar",
        ["enUS"] = true,
        ["zhCN"] = "停止关注",
        ["zhTW"] = "停止關注",
        ["esES"] = "Desenfocar",
        ["frFR"] = "Ne plus prioriser cette quête",
    },
    -- "Set TomTom Target" is in the Tracker.lua inside the Translations/Options directory
    ["Minimize Quest"] = {
        ["ptBR"] = "Minimizar missão",
        ["ruRU"] = "Свернуть задание",
        ["deDE"] = "Suche minimieren",
        ["koKR"] = "퀘스트 최소화",
        ["esMX"] = "Minimizar misión",
        ["enUS"] = true,
        ["zhCN"] = "最小化任务",
        ["zhTW"] = "最小化任务",
        ["esES"] = "Minimizar misión",
        ["frFR"] = "Minimiser la quête",
    },
    ["Hide Icons"] = {
        ["ptBR"] = "Ocultar ícones",
        ["ruRU"] = "Скрыть значки",
        ["deDE"] = "Icons verstecken",
        ["koKR"] = "아이콘 가리기",
        ["esMX"] = "Esconder iconos",
        ["enUS"] = true,
        ["zhCN"] = "隐藏标记",
        ["zhTW"] = "隱藏標記",
        ["esES"] = "Esconder iconos",
        ["frFR"] = "Masquer les icônes",
    },
    ["Show Icons"] = {
        ["ptBR"] = "Mostrar ícones",
        ["ruRU"] = "Показать значки",
        ["deDE"] = "Icons anzeigen",
        ["koKR"] = "아이콘 표시",
        ["esMX"] = "Mostrar íconos",
        ["enUS"] = true,
        ["zhCN"] = "显示标记",
        ["zhTW"] = "顯示標記",
        ["esES"] = "Mostrar íconos",
        ["frFR"] = "Afficher les icônes",
    },
    ["Show on Map"] = {
        ["ptBR"] = "Mostrar no mapa",
        ["ruRU"] = "Показать на карте",
        ["deDE"] = "Auf der Karte zeigen",
        ["koKR"] = "지도에 표시",
        ["esMX"] = "Mostrar en Mapa",
        ["enUS"] = true,
        ["zhCN"] = "地图上显示",
        ["zhTW"] = "在地圖上顯示",
        ["esES"] = "Mostrar en mapa",
        ["frFR"] = "Afficher sur la carte",
    },
    ["Show in Quest Log"] = {
        ["ptBR"] = "Mostrar no registro de missões",
        ["ruRU"] = "Показать в журнале заданий",
        ["deDE"] = "In Questlog anzeigen",
        ["koKR"] = "퀘스트 목록에서 열기",
        ["esMX"] = "Mostrar en registro de misiones",
        ["enUS"] = true,
        ["zhCN"] = "开启任务日志",
        ["zhTW"] = "開啟任務日誌",
        ["esES"] = "Mostrar en registro de misiones",
        ["frFR"] = "Afficher dans le journal de quête",
    },
    ["Show in Achievements Log"] = {
        ["ptBR"] = "Mostrar no Registro de Conquistas",
        ["ruRU"] = "Показать в журнале достижений",
        ["deDE"] = "Im Erfolgsprotokoll anzeigen",
        ["koKR"] = "업적 로그에 표시",
        ["esMX"] = "Mostrar en registro de logros",
        ["enUS"] = true,
        ["zhCN"] = "在成就日志中显示",
        ["zhTW"] = "在成就日志中显示",
        ["esES"] = "Mostrar en registro de logros",
        ["frFR"] = "Afficher dans le journal des réalisations",
    },
    ["Link Quest to chat"] = {
        ["ptBR"] = "Enviar missão para o chat",
        ["ruRU"] = "Ссылка на задание в чат",
        ["deDE"] = "Quest in Chat verlinken",
        ["koKR"] = "채팅창에 퀘스트 링크",
        ["esMX"] = "Vincular misión al chat",
        ["enUS"] = true,
        ["zhCN"] = "将任务连接到聊天框",
        ["zhTW"] = "將任務連結貼到對話",
        ["esES"] = "Vincular misión al chat",
        ["frFR"] = "Linker la quêter dans la discussion",
    },
    ["Link Achievement to chat"] = {
        ["ptBR"] = "Conquista de link para bate-papo",
        ["ruRU"] = "Ссылка на достижение в чат",
        ["deDE"] = "Verknüpfen Sie den Erfolg mit dem Chat",
        ["koKR"] = "업적을 채팅에 연결",
        ["esMX"] = "Vincular logro para chatear",
        ["enUS"] = true,
        ["zhCN"] = "将成就链接到聊天",
        ["zhTW"] = "将成就链接到聊天",
        ["esES"] = "Vincular logro para chatear",
        ["frFR"] = "Lier la réussite au chat",
    },
    ["Untrack Quest"] = {
        ["ptBR"] = "Não rastrear a missão",
        ["ruRU"] = "Не отслеживать задание",
        ["deDE"] = "Questfokussieren entfernen",
        ["koKR"] = "퀘스트 추적해제",
        ["esMX"] = "No rastrear misión",
        ["enUS"] = true,
        ["zhCN"] = "停止追踪",
        ["zhTW"] = "停止追蹤",
        ["esES"] = "No rastrear misión",
        ["frFR"] = "Annuler le suivi",
    },
    ["Untrack Achievement"] = {
        ["ptBR"] = "Descompactar conquista",
        ["ruRU"] = "Не отслеживать достижение",
        ["deDE"] = "Erfolg aufheben",
        ["koKR"] = "업적 추적 해제",
        ["esMX"] = "Logro sin seguimiento",
        ["enUS"] = true,
        ["zhCN"] = "取消跟踪成就",
        ["zhTW"] = "取消跟踪成就",
        ["esES"] = "Logro sin seguimiento",
        ["frFR"] = "Annuler le suivi des réalisations",
    },
    ["Abandon Quest"] = {
        ["ptBR"] = "Abandonar Missão",
        ["ruRU"] = "Отменить задание",
        ["deDE"] = "Suche aufgeben",
        ["koKR"] = "퀘스트 포기",
        ["esMX"] = "Abandonar misión",
        ["enUS"] = true,
        ["zhCN"] = "放弃任务",
        ["zhTW"] = "放弃任务",
        ["esES"] = "Abandonar misión",
        ["frFR"] = "Abandonner la quête",
    },
    -- "Lock Tracker" is in the Tracker.lua inside the Translations/Options directory
    ["Unlock Tracker"] = {
        ["ptBR"] = "Desbloquear rastreador",
        ["ruRU"] = "Разблокировать трекер",
        ["deDE"] = "Tracker entsperren",
        ["koKR"] = "추적기 잠금해제",
        ["esMX"] = "Desbloquear Rastreador",
        ["enUS"] = true,
        ["zhCN"] = "解锁框体",
        ["zhTW"] = "解鎖框架",
        ["esES"] = "Desbloquear rastreador",
        ["frFR"] = "Déverrouiller la fenêtre du suivi",
    },
    ---------------------------------------------------------
    -- Misc Translations
    ["Quest Complete"] = {
        ["ptBR"] = "Missão concluída",
        ["ruRU"] = "Задание выполнено",
        ["deDE"] = "Quest abgeschlossen",
        ["koKR"] = "퀘스트 완료",
        ["esMX"] = "¡Misión completada",
        ["enUS"] = true,
        ["zhCN"] = "任务完成",
        ["zhTW"] = "任務完成",
        ["esES"] = "¡Misión completada",
        ["frFR"] = "Quête terminée",
    },
    ["Quest Failed"] = {
        ["ptBR"] = "A missão falhou",
        ["ruRU"] = "Выполнить задание не удалось",
        ["deDE"] = "Quest fehlgeschlagen",
        ["koKR"] = "퀘스트 실패",
        ["esMX"] = "¡La misión ha fracasado",
        ["enUS"] = true,
        ["zhCN"] = "任务失败",
        ["zhTW"] = "任務失敗",
        ["esES"] = "¡La misión ha fracasado",
        ["frFR"] = "Échec de la quête",
    },
    ["Can't open Quest Log while in combat. Open it manually."] = {
        ["ptBR"] = "Não é possível abrir o registro de missões durante o combate. Abra-o manualmente.",
        ["ruRU"] = "Невозможно автоматически открыть журнал заданий, находясь в бою. Откройте его вручную.",
        ["deDE"] = "Das Quest Log kann nicht im Kampf geöffnet werden. Bitte öffne es manuell.",
        ["koKR"] = "전투 중에는 퀘스트 목록을 열 수 없습니다. 수동으로 열어주세요.",
        ["esMX"] = "No se puede abrir el registro de misiones durante el combate. Ábrelo manualmente.",
        ["enUS"] = true,
        ["zhCN"] = "战斗中无法打开任务日志，需要手动打开.",
        ["zhTW"] = false,
        ["esES"] = "No se puede abrir el registro de misiones durante el combate. Ábrelo manualmente.",
        ["frFR"] = "Impossible d'ouvrir le journal des quêtes en combat. Ouvrez-le manuellement.",
    },
}

for k, v in pairs(trackerUILocales) do
    l10n.translations[k] = v
end
