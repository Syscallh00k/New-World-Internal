local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = g_Reflect
L1_1 = L0_1
L0_1 = L0_1.RequireReflectionCategory
L2_1 = eReflectionCategory_CrySystem
L0_1(L1_1, L2_1)
L0_1 = g_Reflect
L1_1 = L0_1
L0_1 = L0_1.RequireReflectionCategory
L2_1 = eReflectionCategory_Factions_GameModes
L0_1(L1_1, L2_1)
L0_1 = g_Reflect
L1_1 = L0_1
L0_1 = L0_1.RequireReflectionCategory
L2_1 = eReflectionCategory_Fishing
L0_1(L1_1, L2_1)
L0_1 = g_Reflect
L1_1 = L0_1
L0_1 = L0_1.RequireReflectionCategory
L2_1 = eReflectionCategory_FtueRequest
L0_1(L1_1, L2_1)
L0_1 = g_Reflect
L1_1 = L0_1
L0_1 = L0_1.RequireReflectionCategory
L2_1 = eReflectionCategory_IGC_Cinematics_Conversations
L0_1(L1_1, L2_1)
L0_1 = g_Reflect
L1_1 = L0_1
L0_1 = L0_1.RequireReflectionCategory
L2_1 = eReflectionCategory_Items_Crafting_Trade
L0_1(L1_1, L2_1)
L0_1 = g_Reflect
L1_1 = L0_1
L0_1 = L0_1.RequireReflectionCategory
L2_1 = eReflectionCategory_Journal_Lore
L0_1(L1_1, L2_1)
L0_1 = g_Reflect
L1_1 = L0_1
L0_1 = L0_1.RequireReflectionCategory
L2_1 = eReflectionCategory_LocalPlayerCharacter_Progression
L0_1(L1_1, L2_1)
L0_1 = g_Reflect
L1_1 = L0_1
L0_1 = L0_1.RequireReflectionCategory
L2_1 = eReflectionCategory_Territory_Objectives
L0_1(L1_1, L2_1)
L0_1 = g_Reflect
L1_1 = L0_1
L0_1 = L0_1.RequireReflectionCategory
L2_1 = eReflectionCategory_UnifiedInteract
L0_1(L1_1, L2_1)
L0_1 = g_Reflect
L1_1 = L0_1
L0_1 = L0_1.RequireReflectionCategory
L2_1 = eReflectionCategory_Factions_GameModes
L0_1(L1_1, L2_1)
L0_1 = g_Reflect
L1_1 = L0_1
L0_1 = L0_1.RequireReflectionCategory
L2_1 = eReflectionCategory_Seasons
L0_1(L1_1, L2_1)
L0_1 = g_Reflect
L1_1 = L0_1
L0_1 = L0_1.RequireReflectionCategory
L2_1 = eReflectionCategory_Markers
L0_1(L1_1, L2_1)
L0_1 = RequireScript
L1_1 = "LyShineUI._Common.CanvasCommon"
L0_1 = L0_1(L1_1)
L1_1 = RequireScript
L2_1 = "LyShineUI._Common.TimingUtils"
L1_1 = L1_1(L2_1)
L2_1 = RequireScript
L3_1 = "LyShineUI._Common.GameModeCommon"
L2_1 = L2_1(L3_1)
L3_1 = RequireScript
L4_1 = "LyShineUI.WarDeclaration.WarDeclarationPopupHelper"
L3_1 = L3_1(L4_1)
L4_1 = RequireScript
L5_1 = "LyShineUI.PUGFinder.PUGFinderCommon"
L4_1 = L4_1(L5_1)
L5_1 = {}
L6_1 = {}
L7_1 = {}
L8_1 = EntityId
L8_1 = L8_1()
L7_1.default = L8_1
L6_1.StatusText = L7_1
L5_1.Properties = L6_1
L5_1.canvasLoadRequestCount = 0
L5_1.fileType = ".uicanvas"
L5_1.enableAsyncCanvasLoading = true
L5_1.MEMORY_CHECK_DELAY = 1
L5_1.UNLOAD_CANVAS_THRESHOLD = 5
L5_1.HYSTERESIS_BUFFER = 1000
L5_1.MAX_ACTIVE_NOTIFICATIONS = 1
L5_1.TIMEOUT_FOR_TRANSITION_CANVAS_LOAD = 15
L5_1.UNLOAD_DELAY_AFTER_POPUP_DISMISSED = 1
L5_1.ACHIEVEMENT_UNLOCKED = 0
L5_1.ACHIEVEMENT_LOCKED = 1
L5_1.CANVAS_PRIORITY_CONSTANT = 0
L5_1.CANVAS_PRIORITY_HUD = 1
L5_1.CANVAS_PRIORITY_FREQUENT = 2
L5_1.CANVAS_PRIORITY_INTERACT = 3
L5_1.CANVAS_PRIORITY_GAMEMODE = 4
L6_1 = {}
L6_1.isInOutpost = false
L6_1.isInSettlement = false
L6_1.isInRaid = false
L6_1.isWithinAPlot = false
L6_1.isInDungeon = false
L6_1.isInCatacombs = false
L6_1.isInDuel = false
L6_1.isAtWar = false
L6_1.isFishing = false
L6_1.isInPvpArena = false
L6_1.isAtSiegeWarfare = false
L6_1.isInOutpostRush = false
L6_1.isInCaptureTheFlag = false
L6_1.isInBattleRoyale = false
L6_1.isInFcpArea = false
L6_1.isInfluenceRaceActive = false
L6_1.isInGroupFinderGroup = false
L6_1.requireQueueHUD = false
L6_1.isInWarDeclaration = false
L6_1.isUsingControlHints = false
L5_1.flags = L6_1
L6_1 = RequireScript
L7_1 = "LyShineUI._Common.BaseScreen"
L6_1 = L6_1(L7_1)
L7_1 = RequireScript
L8_1 = "LyShineUI._Common.ContractsDataHandler"
L7_1 = L7_1(L8_1)
L9_1 = L6_1
L8_1 = L6_1.CreateNewScreen
L10_1 = L5_1
L8_1(L9_1, L10_1)
L8_1 = RequireScript
L9_1 = "LyShineUI._Common.NotificationResponseHandler"
L8_1 = L8_1(L9_1)
L10_1 = L8_1
L9_1 = L8_1.AttachNotificationResponseHandler
L11_1 = L5_1
L9_1(L10_1, L11_1)

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2
  L1_2 = _UPVALUE0_
  L1_2 = L1_2.OnInit
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = UiCanvasBus
  L1_2 = L1_2.Event
  L1_2 = L1_2.SetDrawOrder
  L2_2 = A0_2.canvasId
  L3_2 = 1000
  L1_2(L2_2, L3_2)
  A0_2.popupCanvasId = nil
  L1_2 = WallClockTimePoint
  L2_2 = L1_2
  L1_2 = L1_2.Now
  L1_2 = L1_2(L2_2)
  A0_2.lastPopupVisibleTime = L1_2
  L1_2 = {}
  A0_2.expectedCanvases = L1_2
  L1_2 = {}
  A0_2.failedCanvases = L1_2
  L1_2 = {}
  A0_2.pendingCanvasCallbacks = L1_2
  L1_2 = {}
  L2_2 = {}
  L2_2.name = "TerritoryInfoScreen"
  L2_2.path = "LyShineUI/Territory/TerritoryInfo/TerritoryInfoScreen"
  L3_2 = {}
  L4_2 = 3211015753
  L3_2[1] = L4_2
  L2_2.states = L3_2
  L3_2 = {}
  L2_2.triggerStates = L3_2
  L3_2 = {}
  L2_2.keepStates = L3_2
  L3_2 = {}
  L2_2.flags = L3_2
  L2_2.canvasId = 0
  L2_2.autohide = true
  L3_2 = L0_1
  L3_2 = L3_2.FULLSCREEN_DRAW_ORDER
  L2_2.drawOrder = L3_2
  L3_2 = {}
  L4_2 = 3324118819
  L3_2[1] = L4_2
  L2_2.interactCards = L3_2
  L3_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L2_2.priority = L3_2
  L3_2 = {}
  L3_2.name = "TownProjects"
  L3_2.path = "LyShineUI/Territory/TerritoryPlanning/TownProjects"
  L4_2 = {}
  L5_2 = 640726528
  L4_2[1] = L5_2
  L3_2.states = L4_2
  L4_2 = {}
  L3_2.triggerStates = L4_2
  L4_2 = {}
  L3_2.keepStates = L4_2
  L4_2 = {}
  L3_2.flags = L4_2
  L3_2.canvasId = 0
  L3_2.autohide = true
  L4_2 = L0_1
  L4_2 = L4_2.FULLSCREEN_DRAW_ORDER
  L3_2.drawOrder = L4_2
  L4_2 = {}
  L5_2 = 4108105018
  L4_2[1] = L5_2
  L3_2.interactCards = L4_2
  L4_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L3_2.priority = L4_2
  L4_2 = {}
  L4_2.name = "TerritoryPlanning"
  L4_2.path = "LyShineUI/Territory/TerritoryPlanning/TerritoryPlanning"
  L5_2 = {}
  L6_2 = 3370453353
  L5_2[1] = L6_2
  L4_2.states = L5_2
  L5_2 = {}
  L4_2.triggerStates = L5_2
  L5_2 = {}
  L4_2.keepStates = L5_2
  L5_2 = {}
  L4_2.flags = L5_2
  L4_2.canvasId = 0
  L4_2.autohide = true
  L5_2 = L0_1
  L5_2 = L5_2.FULLSCREEN_DRAW_ORDER
  L4_2.drawOrder = L5_2
  L5_2 = {}
  L6_2 = 3215960279
  L5_2[1] = L6_2
  L4_2.interactCards = L5_2
  L5_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L4_2.priority = L5_2
  L5_2 = {}
  L5_2.name = "CraftingScreenV4"
  L5_2.path = "LyShineUI/Crafting/CraftingScreenV4"
  L6_2 = {}
  L7_2 = 3024636726
  L6_2[1] = L7_2
  L5_2.states = L6_2
  L6_2 = {}
  L5_2.triggerStates = L6_2
  L6_2 = {}
  L5_2.keepStates = L6_2
  L6_2 = {}
  L5_2.flags = L6_2
  L5_2.canvasId = 0
  L5_2.autohide = true
  L6_2 = L0_1
  L6_2 = L6_2.FULLSCREEN_DRAW_ORDER
  L5_2.drawOrder = L6_2
  L6_2 = {}
  L7_2 = 262866100
  L8_2 = 2016794180
  L9_2 = 3817904683
  L10_2 = 2533913508
  L11_2 = 212680651
  L12_2 = 440771808
  L13_2 = 1843099152
  L14_2 = 4135467647
  L15_2 = 2196165616
  L16_2 = 423862175
  L17_2 = 1547475292
  L18_2 = 732056492
  L19_2 = 2953250755
  L20_2 = 3298815564
  L21_2 = 1597678115
  L22_2 = 2995005735
  L23_2 = 3306879959
  L24_2 = 1589622712
  L25_2 = 707223095
  L26_2 = 2978091608
  L27_2 = 3951571650
  L28_2 = 2618744882
  L29_2 = 129215581
  L30_2 = 1932215762
  L31_2 = 3901622717
  L32_2 = 2278907134
  L33_2 = 4031483406
  L34_2 = 1810809441
  L35_2 = 527838190
  L36_2 = 2228447105
  L37_2 = 3126353416
  L38_2 = 3452341496
  L39_2 = 1449377943
  L40_2 = 586885400
  L41_2 = 3109971319
  L42_2 = 1210658576
  L43_2 = 1069022688
  L44_2 = 2752688527
  L45_2 = 3498727424
  L46_2 = 1261376623
  L47_2 = 3899131416
  L48_2 = 2683753704
  L49_2 = 72587399
  L50_2 = 1892380936
  L51_2 = 3949870439
  L52_2 = 165027251
  L53_2 = 2118700867
  L54_2 = 3857548076
  L55_2 = 2440391331
  L56_2 = 181413580
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L6_2[4] = L10_2
  L6_2[5] = L11_2
  L6_2[6] = L12_2
  L6_2[7] = L13_2
  L6_2[8] = L14_2
  L6_2[9] = L15_2
  L6_2[10] = L16_2
  L6_2[11] = L17_2
  L6_2[12] = L18_2
  L6_2[13] = L19_2
  L6_2[14] = L20_2
  L6_2[15] = L21_2
  L6_2[16] = L22_2
  L6_2[17] = L23_2
  L6_2[18] = L24_2
  L6_2[19] = L25_2
  L6_2[20] = L26_2
  L6_2[21] = L27_2
  L6_2[22] = L28_2
  L6_2[23] = L29_2
  L6_2[24] = L30_2
  L6_2[25] = L31_2
  L6_2[26] = L32_2
  L6_2[27] = L33_2
  L6_2[28] = L34_2
  L6_2[29] = L35_2
  L6_2[30] = L36_2
  L6_2[31] = L37_2
  L6_2[32] = L38_2
  L6_2[33] = L39_2
  L6_2[34] = L40_2
  L6_2[35] = L41_2
  L6_2[36] = L42_2
  L6_2[37] = L43_2
  L6_2[38] = L44_2
  L6_2[39] = L45_2
  L6_2[40] = L46_2
  L6_2[41] = L47_2
  L6_2[42] = L48_2
  L6_2[43] = L49_2
  L6_2[44] = L50_2
  L6_2[45] = L51_2
  L6_2[46] = L52_2
  L6_2[47] = L53_2
  L6_2[48] = L54_2
  L6_2[49] = L55_2
  L6_2[50] = L56_2
  L7_2 = 3517815472
  L8_2 = 2788378688
  L9_2 = 1033241647
  L10_2 = 1225715104
  L11_2 = 3534463439
  L12_2 = 1235226115
  L6_2[51] = L7_2
  L6_2[52] = L8_2
  L6_2[53] = L9_2
  L6_2[54] = L10_2
  L6_2[55] = L11_2
  L6_2[56] = L12_2
  L5_2.interactCards = L6_2
  L6_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L5_2.priority = L6_2
  L6_2 = {}
  L6_2.name = "ContractBrowser"
  L6_2.path = "LyShineUI/Contracts/ContractBrowser"
  L7_2 = {}
  L8_2 = 156281203
  L7_2[1] = L8_2
  L6_2.states = L7_2
  L7_2 = {}
  L6_2.triggerStates = L7_2
  L7_2 = {}
  L6_2.keepStates = L7_2
  L7_2 = {}
  L6_2.flags = L7_2
  L6_2.canvasId = 0
  L6_2.autohide = true
  L7_2 = L0_1
  L7_2 = L7_2.FULLSCREEN_DRAW_ORDER
  L6_2.drawOrder = L7_2
  L7_2 = {}
  L8_2 = 3533312489
  L9_2 = 1228889478
  L10_2 = 1034400777
  L11_2 = 2785212518
  L12_2 = 2080383237
  L13_2 = 2711025792
  L14_2 = 3706060504
  L15_2 = 24323933
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L7_2[4] = L11_2
  L7_2[5] = L12_2
  L7_2[6] = L13_2
  L7_2[7] = L14_2
  L7_2[8] = L15_2
  L6_2.interactCards = L7_2
  L7_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L6_2.priority = L7_2
  L7_2 = {}
  L7_2.name = "Guild"
  L7_2.path = "LyShineUI/GuildMenu/Guild"
  L8_2 = {}
  L9_2 = 1967160747
  L8_2[1] = L9_2
  L7_2.states = L8_2
  L8_2 = {}
  L7_2.triggerStates = L8_2
  L8_2 = {}
  L7_2.keepStates = L8_2
  L8_2 = {}
  L7_2.flags = L8_2
  L7_2.canvasId = 0
  L7_2.autohide = true
  L8_2 = L0_1
  L8_2 = L8_2.FULLSCREEN_DRAW_ORDER
  L7_2.drawOrder = L8_2
  L8_2 = {}
  L7_2.interactCards = L8_2
  L8_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L7_2.priority = L8_2
  L8_2 = {}
  L8_2.name = "Raid"
  L8_2.path = "LyShineUI/Raid/Raid"
  L9_2 = {}
  L10_2 = 1468490675
  L11_2 = 1319313135
  L9_2[1] = L10_2
  L9_2[2] = L11_2
  L8_2.states = L9_2
  L9_2 = {}
  L10_2 = 2477632187
  L9_2[1] = L10_2
  L8_2.triggerStates = L9_2
  L9_2 = {}
  L8_2.keepStates = L9_2
  L9_2 = {}
  L10_2 = "isInRaid"
  L9_2[1] = L10_2
  L8_2.flags = L9_2
  L8_2.canvasId = 0
  L8_2.autohide = true
  L9_2 = L0_1
  L9_2 = L9_2.FULLSCREEN_DRAW_ORDER
  L8_2.drawOrder = L9_2
  L9_2 = {}
  L10_2 = 1246470170
  L9_2[1] = L10_2
  L8_2.interactCards = L9_2
  L9_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L8_2.priority = L9_2
  L9_2 = {}
  L9_2.name = "SignUp"
  L9_2.path = "LyShineUI/Raid/SignUp"
  L10_2 = {}
  L11_2 = 1468490675
  L12_2 = 1319313135
  L10_2[1] = L11_2
  L10_2[2] = L12_2
  L9_2.states = L10_2
  L10_2 = {}
  L11_2 = 2477632187
  L10_2[1] = L11_2
  L9_2.triggerStates = L10_2
  L10_2 = {}
  L9_2.keepStates = L10_2
  L10_2 = {}
  L11_2 = "isInRaid"
  L10_2[1] = L11_2
  L9_2.flags = L10_2
  L9_2.canvasId = 0
  L9_2.autohide = true
  L10_2 = L0_1
  L10_2 = L10_2.FULLSCREEN_DRAW_ORDER
  L9_2.drawOrder = L10_2
  L10_2 = {}
  L11_2 = 1246470170
  L10_2[1] = L11_2
  L9_2.interactCards = L10_2
  L10_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L9_2.priority = L10_2
  L10_2 = {}
  L10_2.name = "HousingEnter"
  L10_2.path = "LyShineUI/Housing/HousingEnter"
  L11_2 = {}
  L12_2 = 828869394
  L11_2[1] = L12_2
  L10_2.states = L11_2
  L11_2 = {}
  L10_2.triggerStates = L11_2
  L11_2 = {}
  L10_2.keepStates = L11_2
  L11_2 = {}
  L10_2.flags = L11_2
  L10_2.canvasId = 0
  L10_2.autohide = true
  L11_2 = L0_1
  L11_2 = L11_2.FULLSCREEN_DRAW_ORDER
  L10_2.drawOrder = L11_2
  L11_2 = {}
  L12_2 = 3078925815
  L11_2[1] = L12_2
  L10_2.interactCards = L11_2
  L11_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L10_2.priority = L11_2
  L11_2 = {}
  L11_2.name = "HomePurchase"
  L11_2.path = "LyShineUI/Housing/HomePurchase"
  L12_2 = {}
  L13_2 = 2896319374
  L12_2[1] = L13_2
  L11_2.states = L12_2
  L12_2 = {}
  L11_2.triggerStates = L12_2
  L12_2 = {}
  L11_2.keepStates = L12_2
  L12_2 = {}
  L11_2.flags = L12_2
  L11_2.canvasId = 0
  L11_2.autohide = true
  L12_2 = L0_1
  L12_2 = L12_2.FULLSCREEN_DRAW_ORDER
  L11_2.drawOrder = L12_2
  L12_2 = {}
  L13_2 = 3078925815
  L12_2[1] = L13_2
  L11_2.interactCards = L12_2
  L12_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L11_2.priority = L12_2
  L12_2 = {}
  L12_2.name = "HousingDecoration"
  L12_2.path = "LyShineUI/Housing/HousingDecoration"
  L13_2 = {}
  L14_2 = 2640373987
  L13_2[1] = L14_2
  L12_2.states = L13_2
  L13_2 = {}
  L12_2.triggerStates = L13_2
  L13_2 = {}
  L12_2.keepStates = L13_2
  L13_2 = {}
  L12_2.flags = L13_2
  L12_2.canvasId = 0
  L12_2.autohide = true
  L13_2 = L0_1
  L13_2 = L13_2.FULLSCREEN_DRAW_ORDER
  L12_2.drawOrder = L13_2
  L13_2 = {}
  L12_2.interactCards = L13_2
  L13_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L12_2.priority = L13_2
  L13_2 = {}
  L13_2.name = "HousingManagement"
  L13_2.path = "LyShineUI/Housing/HousingManagement"
  L14_2 = {}
  L15_2 = 2437603339
  L14_2[1] = L15_2
  L13_2.states = L14_2
  L14_2 = {}
  L13_2.triggerStates = L14_2
  L14_2 = {}
  L13_2.keepStates = L14_2
  L14_2 = {}
  L13_2.flags = L14_2
  L13_2.canvasId = 0
  L13_2.autohide = true
  L14_2 = L0_1
  L14_2 = L14_2.FULLSCREEN_DRAW_ORDER
  L13_2.drawOrder = L14_2
  L14_2 = {}
  L13_2.interactCards = L14_2
  L14_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L13_2.priority = L14_2
  L14_2 = {}
  L14_2.name = "HousingHUD"
  L14_2.path = "LyShineUI/Housing/HousingHUD"
  L15_2 = {}
  L14_2.states = L15_2
  L15_2 = {}
  L14_2.triggerStates = L15_2
  L15_2 = {}
  L14_2.keepStates = L15_2
  L15_2 = {}
  L16_2 = "isWithinAPlot"
  L15_2[1] = L16_2
  L14_2.flags = L15_2
  L14_2.canvasId = 0
  L14_2.autohide = false
  L15_2 = L0_1
  L15_2 = L15_2.HUD_DRAW_ORDER
  L14_2.drawOrder = L15_2
  L15_2 = {}
  L14_2.interactCards = L15_2
  L15_2 = A0_2.CANVAS_PRIORITY_GAMEMODE
  L14_2.priority = L15_2
  L15_2 = {}
  L15_2.name = "SeasonsRewardsScreen"
  L15_2.path = "LyShineUI/SeasonsRewards/SeasonsRewardsScreen"
  L16_2 = {}
  L17_2 = 1652736112
  L16_2[1] = L17_2
  L15_2.states = L16_2
  L16_2 = {}
  L15_2.triggerStates = L16_2
  L16_2 = {}
  L15_2.keepStates = L16_2
  L16_2 = {}
  L15_2.flags = L16_2
  L15_2.canvasId = 0
  L15_2.autohide = true
  L16_2 = L0_1
  L16_2 = L16_2.IN_GAME_MENU_DRAW_ORDER
  L15_2.drawOrder = L16_2
  L16_2 = {}
  L15_2.interactCards = L16_2
  L16_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L15_2.priority = L16_2
  L16_2 = {}
  L16_2.name = "InnInteractMenu"
  L16_2.path = "LyShineUI/Inn/InnInteractMenu"
  L17_2 = {}
  L18_2 = 319051850
  L17_2[1] = L18_2
  L16_2.states = L17_2
  L17_2 = {}
  L16_2.triggerStates = L17_2
  L17_2 = {}
  L16_2.keepStates = L17_2
  L17_2 = {}
  L16_2.flags = L17_2
  L16_2.canvasId = 0
  L16_2.autohide = true
  L17_2 = L0_1
  L17_2 = L17_2.FULLSCREEN_DRAW_ORDER
  L16_2.drawOrder = L17_2
  L17_2 = {}
  L16_2.interactCards = L17_2
  L17_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L16_2.priority = L17_2
  L17_2 = {}
  L17_2.name = "JournalScreen"
  L17_2.path = "LyShineUI/Objectives/Journal/JournalScreen"
  L18_2 = {}
  L19_2 = 1823500652
  L18_2[1] = L19_2
  L17_2.states = L18_2
  L18_2 = {}
  L17_2.triggerStates = L18_2
  L18_2 = {}
  L17_2.keepStates = L18_2
  L18_2 = {}
  L17_2.flags = L18_2
  L17_2.canvasId = 0
  L17_2.autohide = true
  L18_2 = L0_1
  L18_2 = L18_2.FULLSCREEN_DRAW_ORDER
  L17_2.drawOrder = L18_2
  L18_2 = {}
  L17_2.interactCards = L18_2
  L18_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L17_2.priority = L18_2
  L18_2 = {}
  L18_2.name = "DungeonEnterScreen"
  L18_2.path = "LyShineUI/Dungeons/DungeonEnterScreen"
  L19_2 = {}
  L20_2 = 4119896358
  L21_2 = 2952085792
  L22_2 = 1676079637
  L19_2[1] = L20_2
  L19_2[2] = L21_2
  L19_2[3] = L22_2
  L18_2.states = L19_2
  L19_2 = {}
  L20_2 = 2477632187
  L19_2[1] = L20_2
  L18_2.triggerStates = L19_2
  L19_2 = {}
  L18_2.keepStates = L19_2
  L19_2 = {}
  L20_2 = "isInGroupFinderGroup"
  L19_2[1] = L20_2
  L18_2.flags = L19_2
  L18_2.canvasId = 0
  L18_2.autohide = true
  L19_2 = L0_1
  L19_2 = L19_2.FULLSCREEN_DRAW_ORDER
  L18_2.drawOrder = L19_2
  L19_2 = {}
  L20_2 = 464118406
  L19_2[1] = L20_2
  L18_2.interactCards = L19_2
  L19_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L18_2.priority = L19_2
  L19_2 = {}
  L19_2.name = "DungeonHud"
  L19_2.path = "LyShineUI/HUD/Dungeon/DungeonHud"
  L20_2 = {}
  L19_2.states = L20_2
  L20_2 = {}
  L19_2.triggerStates = L20_2
  L20_2 = {}
  L19_2.keepStates = L20_2
  L20_2 = {}
  L21_2 = "isInDungeon"
  L22_2 = "isInCatacombs"
  L20_2[1] = L21_2
  L20_2[2] = L22_2
  L19_2.flags = L20_2
  L19_2.canvasId = 0
  L19_2.autohide = false
  L20_2 = L0_1
  L20_2 = L20_2.HUD_DRAW_ORDER
  L19_2.drawOrder = L20_2
  L20_2 = {}
  L19_2.interactCards = L20_2
  L20_2 = A0_2.CANVAS_PRIORITY_GAMEMODE
  L19_2.priority = L20_2
  L20_2 = {}
  L20_2.name = "GameModeStatus"
  L20_2.path = "LyShineUI/HUD2024/GameModes/GameModeStatus"
  L21_2 = {}
  L22_2 = 2627649632
  L21_2[1] = L22_2
  L20_2.states = L21_2
  L21_2 = {}
  L20_2.triggerStates = L21_2
  L21_2 = {}
  L20_2.keepStates = L21_2
  L21_2 = {}
  L22_2 = "isInCatacombs"
  L21_2[1] = L22_2
  L20_2.flags = L21_2
  L20_2.canvasId = 0
  L20_2.autohide = true
  L21_2 = L0_1
  L21_2 = L21_2.POPUP_DRAW_ORDER
  L20_2.drawOrder = L21_2
  L21_2 = {}
  L20_2.interactCards = L21_2
  L21_2 = A0_2.CANVAS_PRIORITY_GAMEMODE
  L20_2.priority = L21_2
  L21_2 = {}
  L21_2.name = "DuelHud"
  L21_2.path = "LyShineUI/HUD/Duel/DuelHud"
  L22_2 = {}
  L23_2 = 2612307810
  L22_2[1] = L23_2
  L21_2.states = L22_2
  L22_2 = {}
  L21_2.triggerStates = L22_2
  L22_2 = {}
  L21_2.keepStates = L22_2
  L22_2 = {}
  L23_2 = "isInDuel"
  L22_2[1] = L23_2
  L21_2.flags = L22_2
  L21_2.canvasId = 0
  L21_2.autohide = false
  L22_2 = L0_1
  L22_2 = L22_2.HUD_DRAW_ORDER
  L21_2.drawOrder = L22_2
  L22_2 = {}
  L21_2.interactCards = L22_2
  L22_2 = A0_2.CANVAS_PRIORITY_GAMEMODE
  L21_2.priority = L22_2
  L22_2 = {}
  L22_2.name = "WarHUD"
  L22_2.path = "LyShineUI/HUD/WarHUD/WarHUD"
  L23_2 = {}
  L22_2.states = L23_2
  L23_2 = {}
  L22_2.triggerStates = L23_2
  L23_2 = {}
  L22_2.keepStates = L23_2
  L23_2 = {}
  L24_2 = "isAtWar"
  L23_2[1] = L24_2
  L22_2.flags = L23_2
  L22_2.canvasId = 0
  L22_2.autohide = false
  L23_2 = L0_1
  L23_2 = L23_2.HUD_DRAW_ORDER
  L22_2.drawOrder = L23_2
  L23_2 = {}
  L22_2.interactCards = L23_2
  L23_2 = A0_2.CANVAS_PRIORITY_GAMEMODE
  L22_2.priority = L23_2
  L23_2 = {}
  L23_2.name = "WarboardEndOfMatch"
  L23_2.path = "LyShineUI/Warboard/WarboardEndOfMatch"
  L24_2 = {}
  L25_2 = 921202721
  L24_2[1] = L25_2
  L23_2.states = L24_2
  L24_2 = {}
  L23_2.triggerStates = L24_2
  L24_2 = {}
  L23_2.keepStates = L24_2
  L24_2 = {}
  L25_2 = "isInOutpostRush"
  L26_2 = "isAtWar"
  L27_2 = "isInCaptureTheFlag"
  L28_2 = "isInBattleRoyale"
  L24_2[1] = L25_2
  L24_2[2] = L26_2
  L24_2[3] = L27_2
  L24_2[4] = L28_2
  L23_2.flags = L24_2
  L23_2.canvasId = 0
  L23_2.autohide = true
  L24_2 = L0_1
  L24_2 = L24_2.IN_GAME_MENU_DRAW_ORDER
  L23_2.drawOrder = L24_2
  L24_2 = {}
  L23_2.interactCards = L24_2
  L24_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L23_2.priority = L24_2
  L24_2 = {}
  L24_2.name = "OutpostRushHud"
  L24_2.path = "LyShineUI/HUD/OutpostRush/OutpostRushHud"
  L25_2 = {}
  L24_2.states = L25_2
  L25_2 = {}
  L24_2.triggerStates = L25_2
  L25_2 = {}
  L24_2.keepStates = L25_2
  L25_2 = {}
  L26_2 = "isInOutpostRush"
  L25_2[1] = L26_2
  L24_2.flags = L25_2
  L24_2.canvasId = 0
  L24_2.autohide = false
  L25_2 = L0_1
  L25_2 = L25_2.HUD_DRAW_ORDER
  L24_2.drawOrder = L25_2
  L25_2 = {}
  L24_2.interactCards = L25_2
  L25_2 = A0_2.CANVAS_PRIORITY_GAMEMODE
  L24_2.priority = L25_2
  L25_2 = {}
  L25_2.name = "WarDeclarationPopup"
  L25_2.path = "LyShineUI/WarDeclaration/WarDeclarationPopup"
  L26_2 = {}
  L25_2.states = L26_2
  L26_2 = {}
  L25_2.triggerStates = L26_2
  L26_2 = {}
  L25_2.keepStates = L26_2
  L26_2 = {}
  L27_2 = "isInWarDeclaration"
  L26_2[1] = L27_2
  L25_2.flags = L26_2
  L25_2.canvasId = 0
  L25_2.autohide = true
  L26_2 = L0_1
  L26_2 = L26_2.IN_GAME_MENU_DRAW_ORDER
  L25_2.drawOrder = L26_2
  L26_2 = {}
  L25_2.interactCards = L26_2
  L26_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L25_2.priority = L26_2
  L26_2 = {}
  L26_2.name = "ArenaEnterMenu"
  L26_2.path = "LyShineUI/Arena/ArenaEnterMenu"
  L27_2 = {}
  L28_2 = 3664731564
  L27_2[1] = L28_2
  L26_2.states = L27_2
  L27_2 = {}
  L26_2.triggerStates = L27_2
  L27_2 = {}
  L26_2.keepStates = L27_2
  L27_2 = {}
  L26_2.flags = L27_2
  L26_2.canvasId = 0
  L26_2.autohide = true
  L27_2 = L0_1
  L27_2 = L27_2.FULLSCREEN_DRAW_ORDER
  L26_2.drawOrder = L27_2
  L27_2 = {}
  L28_2 = 2471566008
  L27_2[1] = L28_2
  L26_2.interactCards = L27_2
  L27_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L26_2.priority = L27_2
  L27_2 = {}
  L27_2.name = "Fishing"
  L27_2.path = "LyShineUI/HUD/Fishing/Fishing"
  L28_2 = {}
  L27_2.states = L28_2
  L28_2 = {}
  L27_2.triggerStates = L28_2
  L28_2 = {}
  L27_2.keepStates = L28_2
  L28_2 = {}
  L29_2 = "isFishing"
  L28_2[1] = L29_2
  L27_2.flags = L28_2
  L27_2.canvasId = 0
  L27_2.autohide = false
  L28_2 = L0_1
  L28_2 = L28_2.IN_GAME_MENU_DRAW_ORDER
  L27_2.drawOrder = L28_2
  L28_2 = {}
  L27_2.interactCards = L28_2
  L28_2 = A0_2.CANVAS_PRIORITY_GAMEMODE
  L27_2.priority = L28_2
  L28_2 = {}
  L28_2.name = "PvpArenaHud"
  L28_2.path = "LyShineUI/HUD/PvpArena/PvpArenaHud"
  L29_2 = {}
  L28_2.states = L29_2
  L29_2 = {}
  L28_2.triggerStates = L29_2
  L29_2 = {}
  L28_2.keepStates = L29_2
  L29_2 = {}
  L30_2 = "isInPvpArena"
  L29_2[1] = L30_2
  L28_2.flags = L29_2
  L28_2.canvasId = 0
  L28_2.autohide = false
  L29_2 = L0_1
  L29_2 = L29_2.IN_GAME_MENU_DRAW_ORDER
  L29_2 = L29_2 + 2
  L28_2.drawOrder = L29_2
  L29_2 = {}
  L28_2.interactCards = L29_2
  L29_2 = A0_2.CANVAS_PRIORITY_GAMEMODE
  L28_2.priority = L29_2
  L29_2 = {}
  L29_2.name = "CaptureTheFlagHud"
  L29_2.path = "LyShineUI/HUD2024/GameModes/CaptureTheFlag/CaptureTheFlagHud"
  L30_2 = {}
  L29_2.states = L30_2
  L30_2 = {}
  L29_2.triggerStates = L30_2
  L30_2 = {}
  L29_2.keepStates = L30_2
  L30_2 = {}
  L31_2 = "isInCaptureTheFlag"
  L30_2[1] = L31_2
  L29_2.flags = L30_2
  L29_2.canvasId = 0
  L29_2.autohide = false
  L30_2 = L0_1
  L30_2 = L30_2.HUD_DRAW_ORDER
  L29_2.drawOrder = L30_2
  L30_2 = {}
  L29_2.interactCards = L30_2
  L30_2 = A0_2.CANVAS_PRIORITY_GAMEMODE
  L29_2.priority = L30_2
  L30_2 = {}
  L30_2.name = "BattleRoyaleHud"
  L30_2.path = "LyShineUI/HUD2024/GameModes/BattleRoyale/BattleRoyaleHud"
  L31_2 = {}
  L30_2.states = L31_2
  L31_2 = {}
  L30_2.triggerStates = L31_2
  L31_2 = {}
  L30_2.keepStates = L31_2
  L31_2 = {}
  L32_2 = "isInBattleRoyale"
  L31_2[1] = L32_2
  L30_2.flags = L31_2
  L30_2.canvasId = 0
  L30_2.autohide = false
  L31_2 = L0_1
  L31_2 = L31_2.HUD_DRAW_ORDER
  L30_2.drawOrder = L31_2
  L31_2 = {}
  L30_2.interactCards = L31_2
  L31_2 = A0_2.CANVAS_PRIORITY_GAMEMODE
  L30_2.priority = L31_2
  L31_2 = {}
  L31_2.name = "ReadyUpPrompt"
  L31_2.path = "LyShineUI/ReadyUp/ReadyUpPrompt"
  L32_2 = {}
  L31_2.states = L32_2
  L32_2 = {}
  L31_2.triggerStates = L32_2
  L32_2 = {}
  L31_2.keepStates = L32_2
  L32_2 = {}
  L33_2 = "isInOutpostRush"
  L34_2 = "isInPvpArena"
  L35_2 = "isInCaptureTheFlag"
  L36_2 = "isInBattleRoyale"
  L32_2[1] = L33_2
  L32_2[2] = L34_2
  L32_2[3] = L35_2
  L32_2[4] = L36_2
  L31_2.flags = L32_2
  L31_2.canvasId = 0
  L31_2.autohide = false
  L32_2 = L0_1
  L32_2 = L32_2.VITALS_DRAW_ORDER
  L32_2 = L32_2 + 1
  L31_2.drawOrder = L32_2
  L32_2 = {}
  L31_2.interactCards = L32_2
  L32_2 = A0_2.CANVAS_PRIORITY_GAMEMODE
  L31_2.priority = L32_2
  L32_2 = {}
  L32_2.name = "PvpArenaScoreboard"
  L32_2.path = "LyShineUI/PvpArenas/PvpArenaScoreboard"
  L33_2 = {}
  L32_2.states = L33_2
  L33_2 = {}
  L32_2.triggerStates = L33_2
  L33_2 = {}
  L32_2.keepStates = L33_2
  L33_2 = {}
  L34_2 = "isInPvpArena"
  L33_2[1] = L34_2
  L32_2.flags = L33_2
  L32_2.canvasId = 0
  L32_2.autohide = false
  L33_2 = L0_1
  L33_2 = L33_2.IN_GAME_MENU_DRAW_ORDER
  L33_2 = L33_2 + 1
  L32_2.drawOrder = L33_2
  L33_2 = {}
  L32_2.interactCards = L33_2
  L33_2 = A0_2.CANVAS_PRIORITY_GAMEMODE
  L32_2.priority = L33_2
  L33_2 = {}
  L33_2.name = "FactionSelection"
  L33_2.path = "LyShineUI/ChangeFaction/FactionSelection"
  L34_2 = {}
  L35_2 = 1040880896
  L34_2[1] = L35_2
  L33_2.states = L34_2
  L34_2 = {}
  L33_2.triggerStates = L34_2
  L34_2 = {}
  L33_2.keepStates = L34_2
  L34_2 = {}
  L33_2.flags = L34_2
  L33_2.canvasId = 0
  L33_2.autohide = true
  L34_2 = L0_1
  L34_2 = L34_2.POPUP_DRAW_ORDER
  L33_2.drawOrder = L34_2
  L34_2 = {}
  L33_2.interactCards = L34_2
  L34_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L33_2.priority = L34_2
  L34_2 = {}
  L34_2.name = "FactionControlPointHUD"
  L34_2.path = "LyShineUI/HUD/FactionControlPoint/FactionControlPointHUD"
  L35_2 = {}
  L34_2.states = L35_2
  L35_2 = {}
  L34_2.triggerStates = L35_2
  L35_2 = {}
  L34_2.keepStates = L35_2
  L35_2 = {}
  L36_2 = "isInFcpArea"
  L35_2[1] = L36_2
  L34_2.flags = L35_2
  L34_2.canvasId = 0
  L34_2.autohide = false
  L35_2 = L0_1
  L35_2 = L35_2.HUD_DRAW_ORDER
  L34_2.drawOrder = L35_2
  L35_2 = {}
  L34_2.interactCards = L35_2
  L35_2 = A0_2.CANVAS_PRIORITY_GAMEMODE
  L34_2.priority = L35_2
  L35_2 = {}
  L35_2.name = "Compensations"
  L35_2.path = "LyShineUI/Contracts/Compensations"
  L36_2 = {}
  L37_2 = 2109352403
  L36_2[1] = L37_2
  L35_2.states = L36_2
  L36_2 = {}
  L35_2.triggerStates = L36_2
  L36_2 = {}
  L35_2.keepStates = L36_2
  L36_2 = {}
  L35_2.flags = L36_2
  L35_2.canvasId = 0
  L35_2.autohide = true
  L36_2 = L0_1
  L36_2 = L36_2.POPUP_DRAW_ORDER
  L36_2 = L36_2 - 1
  L35_2.drawOrder = L36_2
  L36_2 = {}
  L35_2.interactCards = L36_2
  L36_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L35_2.priority = L36_2
  L36_2 = {}
  L36_2.name = "StartClaim"
  L36_2.path = "LyShineUI/ClaimMarker/StartClaim"
  L37_2 = {}
  L38_2 = 2025666924
  L37_2[1] = L38_2
  L36_2.states = L37_2
  L37_2 = {}
  L36_2.triggerStates = L37_2
  L37_2 = {}
  L36_2.keepStates = L37_2
  L37_2 = {}
  L36_2.flags = L37_2
  L36_2.canvasId = 0
  L36_2.autohide = true
  L37_2 = L0_1
  L37_2 = L37_2.IN_GAME_MENU_DRAW_ORDER
  L36_2.drawOrder = L37_2
  L37_2 = {}
  L38_2 = 197136233
  L37_2[1] = L38_2
  L36_2.interactCards = L37_2
  L37_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L36_2.priority = L37_2
  L37_2 = {}
  L37_2.name = "TurretShop"
  L37_2.path = "LyShineUI/TurretShop/TurretShop"
  L38_2 = {}
  L39_2 = 3940276153
  L38_2[1] = L39_2
  L37_2.states = L38_2
  L38_2 = {}
  L37_2.triggerStates = L38_2
  L38_2 = {}
  L37_2.keepStates = L38_2
  L38_2 = {}
  L37_2.flags = L38_2
  L37_2.canvasId = 0
  L37_2.autohide = true
  L38_2 = L0_1
  L38_2 = L38_2.IN_GAME_MENU_DRAW_ORDER
  L37_2.drawOrder = L38_2
  L38_2 = {}
  L39_2 = 922665730
  L40_2 = 1573898729
  L41_2 = 2951604519
  L42_2 = 884539963
  L43_2 = 2443605906
  L44_2 = 677280375
  L38_2[1] = L39_2
  L38_2[2] = L40_2
  L38_2[3] = L41_2
  L38_2[4] = L42_2
  L38_2[5] = L43_2
  L38_2[6] = L44_2
  L37_2.interactCards = L38_2
  L38_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L37_2.priority = L38_2
  L38_2 = {}
  L38_2.name = "VendorShop"
  L38_2.path = "LyShineUI/Mounts/VendorShop"
  L39_2 = {}
  L40_2 = 1127161507
  L39_2[1] = L40_2
  L38_2.states = L39_2
  L39_2 = {}
  L38_2.triggerStates = L39_2
  L39_2 = {}
  L38_2.keepStates = L39_2
  L39_2 = {}
  L38_2.flags = L39_2
  L38_2.canvasId = 0
  L38_2.autohide = true
  L39_2 = L0_1
  L39_2 = L39_2.FULLSCREEN_DRAW_ORDER
  L38_2.drawOrder = L39_2
  L39_2 = {}
  L38_2.interactCards = L39_2
  L39_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L38_2.priority = L39_2
  L39_2 = {}
  L39_2.name = "ReusableScoreboard"
  L39_2.path = "LyShineUI/ReusableScoreboard/ReusableScoreboard"
  L40_2 = {}
  L41_2 = 565574971
  L40_2[1] = L41_2
  L39_2.states = L40_2
  L40_2 = {}
  L39_2.triggerStates = L40_2
  L40_2 = {}
  L39_2.keepStates = L40_2
  L40_2 = {}
  L41_2 = "isInCaptureTheFlag"
  L42_2 = "isInBattleRoyale"
  L40_2[1] = L41_2
  L40_2[2] = L42_2
  L39_2.flags = L40_2
  L39_2.canvasId = 0
  L39_2.autohide = true
  L40_2 = L0_1
  L40_2 = L40_2.IN_GAME_MENU_DRAW_ORDER
  L39_2.drawOrder = L40_2
  L40_2 = {}
  L39_2.interactCards = L40_2
  L40_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L39_2.priority = L40_2
  L40_2 = {}
  L40_2.name = "WarboardInGame"
  L40_2.path = "LyShineUI/Warboard/WarboardInGame"
  L41_2 = {}
  L42_2 = 3160088100
  L41_2[1] = L42_2
  L40_2.states = L41_2
  L41_2 = {}
  L40_2.triggerStates = L41_2
  L41_2 = {}
  L40_2.keepStates = L41_2
  L41_2 = {}
  L42_2 = "isInOutpostRush"
  L43_2 = "isAtWar"
  L44_2 = "isAtSiegeWarfare"
  L45_2 = "isInCaptureTheFlag"
  L41_2[1] = L42_2
  L41_2[2] = L43_2
  L41_2[3] = L44_2
  L41_2[4] = L45_2
  L40_2.flags = L41_2
  L40_2.canvasId = 0
  L40_2.autohide = true
  L41_2 = L0_1
  L41_2 = L41_2.IN_GAME_MENU_DRAW_ORDER
  L40_2.drawOrder = L41_2
  L41_2 = {}
  L40_2.interactCards = L41_2
  L41_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L40_2.priority = L41_2
  L41_2 = {}
  L41_2.name = "PUGFinderScreen"
  L41_2.path = "LyShineUI/PUGFinder/PUGFinderScreen"
  L42_2 = {}
  L43_2 = 1676079637
  L42_2[1] = L43_2
  L41_2.states = L42_2
  L42_2 = {}
  L43_2 = 4119896358
  L44_2 = 2952085792
  L42_2[1] = L43_2
  L42_2[2] = L44_2
  L41_2.triggerStates = L42_2
  L42_2 = {}
  L43_2 = 398837967
  L42_2[1] = L43_2
  L41_2.keepStates = L42_2
  L42_2 = {}
  L41_2.flags = L42_2
  L41_2.canvasId = 0
  L41_2.autohide = true
  L42_2 = L0_1
  L42_2 = L42_2.IN_GAME_MENU_DRAW_ORDER
  L41_2.drawOrder = L42_2
  L42_2 = {}
  L41_2.interactCards = L42_2
  L42_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L41_2.priority = L42_2
  L42_2 = {}
  L42_2.name = "WarboardLiteHUD"
  L42_2.path = "LyShineUI/Warboard/WarboardLiteHUD"
  L43_2 = {}
  L42_2.states = L43_2
  L43_2 = {}
  L42_2.triggerStates = L43_2
  L43_2 = {}
  L42_2.keepStates = L43_2
  L43_2 = {}
  L44_2 = "isAtSiegeWarfare"
  L43_2[1] = L44_2
  L42_2.flags = L43_2
  L42_2.canvasId = 0
  L42_2.autohide = false
  L43_2 = L0_1
  L43_2 = L43_2.HUD_DRAW_ORDER
  L42_2.drawOrder = L43_2
  L43_2 = {}
  L42_2.interactCards = L43_2
  L43_2 = A0_2.CANVAS_PRIORITY_GAMEMODE
  L42_2.priority = L43_2
  L43_2 = {}
  L43_2.name = "InfluenceRaceResults"
  L43_2.path = "LyShineUI/Influence/InfluenceRaceResults"
  L44_2 = {}
  L45_2 = 3751743402
  L44_2[1] = L45_2
  L43_2.states = L44_2
  L44_2 = {}
  L43_2.triggerStates = L44_2
  L44_2 = {}
  L43_2.keepStates = L44_2
  L44_2 = {}
  L45_2 = "isInfluenceRaceActive"
  L44_2[1] = L45_2
  L43_2.flags = L44_2
  L43_2.canvasId = 0
  L43_2.autohide = true
  L44_2 = L0_1
  L44_2 = L44_2.IN_GAME_MENU_DRAW_ORDER
  L43_2.drawOrder = L44_2
  L44_2 = {}
  L43_2.interactCards = L44_2
  L44_2 = A0_2.CANVAS_PRIORITY_GAMEMODE
  L43_2.priority = L44_2
  L44_2 = {}
  L44_2.name = "InGameSurvey"
  L44_2.path = "LyShineUI/InGameSurvey/InGameSurvey"
  L45_2 = {}
  L46_2 = 978471761
  L45_2[1] = L46_2
  L44_2.states = L45_2
  L45_2 = {}
  L44_2.triggerStates = L45_2
  L45_2 = {}
  L44_2.keepStates = L45_2
  L45_2 = {}
  L44_2.flags = L45_2
  L44_2.canvasId = 0
  L44_2.autohide = true
  L45_2 = L0_1
  L45_2 = L45_2.POPUP_DRAW_ORDER
  L44_2.drawOrder = L45_2
  L45_2 = {}
  L44_2.interactCards = L45_2
  L45_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L44_2.priority = L45_2
  L45_2 = {}
  L45_2.name = "ReportPlayer"
  L45_2.path = "LyShineUI/ReportPlayer/ReportPlayer"
  L46_2 = {}
  L47_2 = 943559040
  L46_2[1] = L47_2
  L45_2.states = L46_2
  L46_2 = {}
  L45_2.triggerStates = L46_2
  L46_2 = {}
  L45_2.keepStates = L46_2
  L46_2 = {}
  L45_2.flags = L46_2
  L45_2.canvasId = 0
  L45_2.autohide = true
  L46_2 = L0_1
  L46_2 = L46_2.POPUP_DRAW_ORDER
  L45_2.drawOrder = L46_2
  L46_2 = {}
  L45_2.interactCards = L46_2
  L46_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L45_2.priority = L46_2
  L46_2 = {}
  L46_2.name = "ChooseRolePopup"
  L46_2.path = "LyShineUI/GroupFinder/ChooseRolePopup"
  L47_2 = {}
  L48_2 = 398837967
  L47_2[1] = L48_2
  L46_2.states = L47_2
  L47_2 = {}
  L48_2 = 1676079637
  L49_2 = 4119896358
  L50_2 = 535050558
  L51_2 = 2150168038
  L47_2[1] = L48_2
  L47_2[2] = L49_2
  L47_2[3] = L50_2
  L47_2[4] = L51_2
  L46_2.triggerStates = L47_2
  L47_2 = {}
  L46_2.keepStates = L47_2
  L47_2 = {}
  L46_2.flags = L47_2
  L47_2 = 0
  L46_2.canvasId = L47_2
  L47_2 = true
  L46_2.autohide = L47_2
  L47_2 = L0_1
  L47_2 = L47_2.POPUP_DRAW_ORDER
  L48_2 = 1
  L47_2 = L47_2 - L48_2
  L46_2.drawOrder = L47_2
  L47_2 = {}
  L46_2.interactCards = L47_2
  L47_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L46_2.priority = L47_2
  L47_2 = {}
  L48_2 = "Armory"
  L47_2.name = L48_2
  L48_2 = "LyShineUI/Armory/Armory"
  L47_2.path = L48_2
  L48_2 = {}
  L49_2 = 1332723676
  L48_2[1] = L49_2
  L47_2.states = L48_2
  L48_2 = {}
  L47_2.triggerStates = L48_2
  L48_2 = {}
  L47_2.keepStates = L48_2
  L48_2 = {}
  L47_2.flags = L48_2
  L48_2 = 0
  L47_2.canvasId = L48_2
  L48_2 = true
  L47_2.autohide = L48_2
  L48_2 = L0_1
  L48_2 = L48_2.FULLSCREEN_DRAW_ORDER
  L47_2.drawOrder = L48_2
  L48_2 = {}
  L49_2 = 1825707602
  L48_2[1] = L49_2
  L47_2.interactCards = L48_2
  L48_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L47_2.priority = L48_2
  L48_2 = {}
  L49_2 = "EventShop"
  L48_2.name = L49_2
  L49_2 = "LyShineUI/EventShop/EventShop"
  L48_2.path = L49_2
  L49_2 = {}
  L50_2 = 4040069259
  L49_2[1] = L50_2
  L48_2.states = L49_2
  L49_2 = {}
  L48_2.triggerStates = L49_2
  L49_2 = {}
  L48_2.keepStates = L49_2
  L49_2 = {}
  L48_2.flags = L49_2
  L49_2 = 0
  L48_2.canvasId = L49_2
  L49_2 = true
  L48_2.autohide = L49_2
  L49_2 = L0_1
  L49_2 = L49_2.FULLSCREEN_DRAW_ORDER
  L48_2.drawOrder = L49_2
  L49_2 = {}
  L48_2.interactCards = L49_2
  L49_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L48_2.priority = L49_2
  L49_2 = {}
  L50_2 = "Shop"
  L49_2.name = L50_2
  L50_2 = "LyShineUI/Shop/Shop"
  L49_2.path = L50_2
  L50_2 = {}
  L51_2 = 2892647586
  L50_2[1] = L51_2
  L49_2.states = L50_2
  L50_2 = {}
  L49_2.triggerStates = L50_2
  L50_2 = {}
  L49_2.keepStates = L50_2
  L50_2 = {}
  L49_2.flags = L50_2
  L50_2 = 0
  L49_2.canvasId = L50_2
  L50_2 = true
  L49_2.autohide = L50_2
  L50_2 = L0_1
  L50_2 = L50_2.FULLSCREEN_DRAW_ORDER
  L49_2.drawOrder = L50_2
  L50_2 = {}
  L49_2.interactCards = L50_2
  L50_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L49_2.priority = L50_2
  L50_2 = {}
  L51_2 = "OutpostRushSummonPopup"
  L50_2.name = L51_2
  L51_2 = "LyShineUI/HUD/OutpostRush/OutpostRushSummonPopup"
  L50_2.path = L51_2
  L51_2 = {}
  L50_2.states = L51_2
  L51_2 = {}
  L50_2.triggerStates = L51_2
  L51_2 = {}
  L50_2.keepStates = L51_2
  L51_2 = {}
  L52_2 = "isInOutpostRush"
  L51_2[1] = L52_2
  L50_2.flags = L51_2
  L51_2 = 0
  L50_2.canvasId = L51_2
  L51_2 = true
  L50_2.autohide = L51_2
  L51_2 = L0_1
  L51_2 = L51_2.HUD_DRAW_ORDER
  L50_2.drawOrder = L51_2
  L51_2 = {}
  L50_2.interactCards = L51_2
  L51_2 = A0_2.CANVAS_PRIORITY_GAMEMODE
  L50_2.priority = L51_2
  L51_2 = {}
  L52_2 = "RewardScreen"
  L51_2.name = L52_2
  L52_2 = "LyShineUI/RewardScreen/RewardScreen"
  L51_2.path = L52_2
  L52_2 = {}
  L51_2.states = L52_2
  L52_2 = {}
  L51_2.triggerStates = L52_2
  L52_2 = {}
  L51_2.keepStates = L52_2
  L52_2 = {}
  L53_2 = "isInOutpostRush"
  L54_2 = "isAtWar"
  L55_2 = "isInDungeon"
  L56_2 = "isInPvpArena"
  L57_2 = "isInCatacombs"
  L58_2 = "isInCaptureTheFlag"
  L59_2 = "isInBattleRoyale"
  L52_2[1] = L53_2
  L52_2[2] = L54_2
  L52_2[3] = L55_2
  L52_2[4] = L56_2
  L52_2[5] = L57_2
  L52_2[6] = L58_2
  L52_2[7] = L59_2
  L51_2.flags = L52_2
  L52_2 = 0
  L51_2.canvasId = L52_2
  L52_2 = true
  L51_2.autohide = L52_2
  L52_2 = L0_1
  L52_2 = L52_2.IN_GAME_MENU_DRAW_ORDER
  L51_2.drawOrder = L52_2
  L52_2 = {}
  L51_2.interactCards = L52_2
  L52_2 = A0_2.CANVAS_PRIORITY_GAMEMODE
  L51_2.priority = L52_2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  L1_2[7] = L8_2
  L1_2[8] = L9_2
  L1_2[9] = L10_2
  L1_2[10] = L11_2
  L1_2[11] = L12_2
  L1_2[12] = L13_2
  L1_2[13] = L14_2
  L1_2[14] = L15_2
  L1_2[15] = L16_2
  L1_2[16] = L17_2
  L1_2[17] = L18_2
  L1_2[18] = L19_2
  L1_2[19] = L20_2
  L1_2[20] = L21_2
  L1_2[21] = L22_2
  L1_2[22] = L23_2
  L1_2[23] = L24_2
  L1_2[24] = L25_2
  L1_2[25] = L26_2
  L1_2[26] = L27_2
  L1_2[27] = L28_2
  L1_2[28] = L29_2
  L1_2[29] = L30_2
  L1_2[30] = L31_2
  L1_2[31] = L32_2
  L1_2[32] = L33_2
  L1_2[33] = L34_2
  L1_2[34] = L35_2
  L1_2[35] = L36_2
  L1_2[36] = L37_2
  L1_2[37] = L38_2
  L1_2[38] = L39_2
  L1_2[39] = L40_2
  L1_2[40] = L41_2
  L1_2[41] = L42_2
  L1_2[42] = L43_2
  L1_2[43] = L44_2
  L1_2[44] = L45_2
  L1_2[45] = L46_2
  L1_2[46] = L47_2
  L1_2[47] = L48_2
  L1_2[48] = L49_2
  L1_2[49] = L50_2
  L1_2[50] = L51_2
  L2_2 = {}
  L3_2 = "TerritoryBonusPopup"
  L2_2.name = L3_2
  L3_2 = "LyShineUI/Territory/TerritoryStanding/TerritoryBonusPopup"
  L2_2.path = L3_2
  L3_2 = {}
  L2_2.states = L3_2
  L3_2 = {}
  L4_2 = 2477632187
  L3_2[1] = L4_2
  L2_2.triggerStates = L3_2
  L3_2 = {}
  L2_2.keepStates = L3_2
  L3_2 = {}
  L2_2.flags = L3_2
  L3_2 = 0
  L2_2.canvasId = L3_2
  L3_2 = true
  L2_2.autohide = L3_2
  L3_2 = L0_1
  L3_2 = L3_2.POPUP_DRAW_ORDER
  L2_2.drawOrder = L3_2
  L3_2 = {}
  L2_2.interactCards = L3_2
  L3_2 = A0_2.CANVAS_PRIORITY_GAMEMODE
  L2_2.priority = L3_2
  L3_2 = {}
  L4_2 = "RewardCelebrationPopup"
  L3_2.name = L4_2
  L4_2 = "LyShineUI/Inventory/RewardCelebrationPopup"
  L3_2.path = L4_2
  L4_2 = {}
  L5_2 = 1000163614
  L4_2[1] = L5_2
  L3_2.states = L4_2
  L4_2 = {}
  L3_2.triggerStates = L4_2
  L4_2 = {}
  L5_2 = 2972535350
  L6_2 = 2027480548
  L7_2 = 849925872
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L3_2.keepStates = L4_2
  L4_2 = {}
  L3_2.flags = L4_2
  L4_2 = 0
  L3_2.canvasId = L4_2
  L4_2 = true
  L3_2.autohide = L4_2
  L4_2 = L0_1
  L4_2 = L4_2.POPUP_DRAW_ORDER
  L3_2.drawOrder = L4_2
  L4_2 = {}
  L3_2.interactCards = L4_2
  L4_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L3_2.priority = L4_2
  L4_2 = {}
  L5_2 = "SchematicOpeningPopup"
  L4_2.name = L5_2
  L5_2 = "LyShineUI/Inventory/SchematicOpeningPopup"
  L4_2.path = L5_2
  L5_2 = {}
  L6_2 = 3221402515
  L5_2[1] = L6_2
  L4_2.states = L5_2
  L5_2 = {}
  L4_2.triggerStates = L5_2
  L5_2 = {}
  L6_2 = 2972535350
  L5_2[1] = L6_2
  L4_2.keepStates = L5_2
  L5_2 = {}
  L4_2.flags = L5_2
  L5_2 = 0
  L4_2.canvasId = L5_2
  L5_2 = true
  L4_2.autohide = L5_2
  L5_2 = L0_1
  L5_2 = L5_2.POPUP_DRAW_ORDER
  L4_2.drawOrder = L5_2
  L5_2 = {}
  L4_2.interactCards = L5_2
  L5_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L4_2.priority = L5_2
  L5_2 = {}
  L6_2 = "CharmPopup"
  L5_2.name = L6_2
  L6_2 = "LyShineUI/CharmPopup/CharmPopup"
  L5_2.path = L6_2
  L6_2 = {}
  L7_2 = 1753917588
  L6_2[1] = L7_2
  L5_2.states = L6_2
  L6_2 = {}
  L5_2.triggerStates = L6_2
  L6_2 = {}
  L7_2 = 2972535350
  L6_2[1] = L7_2
  L5_2.keepStates = L6_2
  L6_2 = {}
  L5_2.flags = L6_2
  L6_2 = 0
  L5_2.canvasId = L6_2
  L6_2 = true
  L5_2.autohide = L6_2
  L6_2 = L0_1
  L6_2 = L6_2.POPUP_DRAW_ORDER
  L5_2.drawOrder = L6_2
  L6_2 = {}
  L5_2.interactCards = L6_2
  L6_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L5_2.priority = L6_2
  L6_2 = {}
  L7_2 = "GroupFinderScreen"
  L6_2.name = L7_2
  L7_2 = "LyShineUI/GroupFinder/GroupFinderScreen"
  L6_2.path = L7_2
  L7_2 = {}
  L8_2 = 2952085792
  L7_2[1] = L8_2
  L6_2.states = L7_2
  L7_2 = {}
  L8_2 = 4119896358
  L9_2 = 2477632187
  L10_2 = 1676079637
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L6_2.triggerStates = L7_2
  L7_2 = {}
  L6_2.keepStates = L7_2
  L7_2 = {}
  L8_2 = "isInGroupFinderGroup"
  L9_2 = "requireQueueHUD"
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L6_2.flags = L7_2
  L7_2 = 0
  L6_2.canvasId = L7_2
  L7_2 = true
  L6_2.autohide = L7_2
  L7_2 = L0_1
  L7_2 = L7_2.FULLSCREEN_DRAW_ORDER
  L6_2.drawOrder = L7_2
  L7_2 = {}
  L8_2 = 464118406
  L7_2[1] = L8_2
  L6_2.interactCards = L7_2
  L7_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L6_2.priority = L7_2
  L7_2 = {}
  L8_2 = "NewsScreen"
  L7_2.name = L8_2
  L8_2 = "LyShineUI/Main Menu/NewsModal/NewsScreen"
  L7_2.path = L8_2
  L8_2 = {}
  L9_2 = 801835762
  L10_2 = 3387687426
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L7_2.states = L8_2
  L8_2 = {}
  L9_2 = 1643432462
  L10_2 = 2907552185
  L11_2 = 3766762380
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L7_2.triggerStates = L8_2
  L8_2 = {}
  L7_2.keepStates = L8_2
  L8_2 = {}
  L7_2.flags = L8_2
  L8_2 = 0
  L7_2.canvasId = L8_2
  L8_2 = true
  L7_2.autohide = L8_2
  L8_2 = L0_1
  L8_2 = L8_2.POPUP_DRAW_ORDER
  L9_2 = 1
  L8_2 = L8_2 - L9_2
  L7_2.drawOrder = L8_2
  L8_2 = {}
  L7_2.interactCards = L8_2
  L8_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L7_2.priority = L8_2
  L8_2 = {}
  L9_2 = "SelectionScreen"
  L8_2.name = L9_2
  L9_2 = "LyShineUI/Mounts/SelectionScreen"
  L8_2.path = L9_2
  L9_2 = {}
  L10_2 = 2527890899
  L9_2[1] = L10_2
  L8_2.states = L9_2
  L9_2 = {}
  L8_2.triggerStates = L9_2
  L9_2 = {}
  L8_2.keepStates = L9_2
  L9_2 = {}
  L8_2.flags = L9_2
  L9_2 = 0
  L8_2.canvasId = L9_2
  L9_2 = true
  L8_2.autohide = L9_2
  L9_2 = L0_1
  L9_2 = L9_2.FULLSCREEN_DRAW_ORDER
  L8_2.drawOrder = L9_2
  L9_2 = {}
  L8_2.interactCards = L9_2
  L9_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L8_2.priority = L9_2
  L9_2 = {}
  L10_2 = "OWMissionBoard"
  L9_2.name = L10_2
  L10_2 = "LyShineUI/OldWorldGuilds/OWMissionBoard"
  L9_2.path = L10_2
  L10_2 = {}
  L11_2 = 2609973752
  L10_2[1] = L11_2
  L9_2.states = L10_2
  L10_2 = {}
  L11_2 = 3537282420
  L10_2[1] = L11_2
  L9_2.triggerStates = L10_2
  L10_2 = {}
  L9_2.keepStates = L10_2
  L10_2 = {}
  L9_2.flags = L10_2
  L10_2 = 0
  L9_2.canvasId = L10_2
  L10_2 = true
  L9_2.autohide = L10_2
  L10_2 = L0_1
  L10_2 = L10_2.FULLSCREEN_DRAW_ORDER
  L9_2.drawOrder = L10_2
  L10_2 = {}
  L9_2.interactCards = L10_2
  L10_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L9_2.priority = L10_2
  L10_2 = {}
  L11_2 = "MissionBoard"
  L10_2.name = L11_2
  L11_2 = "LyShineUI/MissionBoard/MissionBoard"
  L10_2.path = L11_2
  L11_2 = {}
  L12_2 = 741472083
  L11_2[1] = L12_2
  L10_2.states = L11_2
  L11_2 = {}
  L12_2 = 3537282420
  L11_2[1] = L12_2
  L10_2.triggerStates = L11_2
  L11_2 = {}
  L10_2.keepStates = L11_2
  L11_2 = {}
  L10_2.flags = L11_2
  L11_2 = 0
  L10_2.canvasId = L11_2
  L11_2 = true
  L10_2.autohide = L11_2
  L11_2 = L0_1
  L11_2 = L11_2.FULLSCREEN_DRAW_ORDER
  L10_2.drawOrder = L11_2
  L11_2 = {}
  L10_2.interactCards = L11_2
  L11_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L10_2.priority = L11_2
  L11_2 = {}
  L12_2 = "QueueHud"
  L11_2.name = L12_2
  L12_2 = "LyShineUI/HUD/Queue/QueueHud"
  L11_2.path = L12_2
  L12_2 = {}
  L11_2.states = L12_2
  L12_2 = {}
  L13_2 = 1676079637
  L14_2 = 4119896358
  L15_2 = 398837967
  L16_2 = 2952085792
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L12_2[3] = L15_2
  L12_2[4] = L16_2
  L11_2.triggerStates = L12_2
  L12_2 = {}
  L13_2 = "requireQueueHUD"
  L14_2 = "isInDungeon"
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L11_2.flags = L12_2
  L12_2 = 0
  L11_2.canvasId = L12_2
  L12_2 = false
  L11_2.autohide = L12_2
  L12_2 = L0_1
  L12_2 = L12_2.HUD_DRAW_ORDER
  L11_2.drawOrder = L12_2
  L12_2 = {}
  L11_2.interactCards = L12_2
  L12_2 = A0_2.CANVAS_PRIORITY_GAMEMODE
  L11_2.priority = L12_2
  L12_2 = {}
  L13_2 = "spectatorHUD"
  L12_2.name = L13_2
  L13_2 = "LyShineUI/SpectatorHUD/SpectatorHUD"
  L12_2.path = L13_2
  L13_2 = {}
  L14_2 = 4143822268
  L13_2[1] = L14_2
  L12_2.states = L13_2
  L13_2 = {}
  L12_2.triggerStates = L13_2
  L13_2 = {}
  L12_2.flags = L13_2
  L13_2 = 0
  L12_2.canvasId = L13_2
  L13_2 = true
  L12_2.autohide = L13_2
  L13_2 = L0_1
  L13_2 = L13_2.IN_GAME_MENU_DRAW_ORDER
  L12_2.drawOrder = L13_2
  L13_2 = {}
  L12_2.interactCards = L13_2
  L13_2 = A0_2.CANVAS_PRIORITY_GAMEMODE
  L12_2.priority = L13_2
  L13_2 = {}
  L14_2 = "TradeScreen"
  L13_2.name = L14_2
  L14_2 = "LyShineUI/Trade/TradeScreen"
  L13_2.path = L14_2
  L14_2 = {}
  L15_2 = 2552344588
  L14_2[1] = L15_2
  L13_2.states = L14_2
  L14_2 = {}
  L13_2.triggerStates = L14_2
  L14_2 = {}
  L13_2.flags = L14_2
  L14_2 = 0
  L13_2.canvasId = L14_2
  L14_2 = true
  L13_2.autohide = L14_2
  L14_2 = L0_1
  L15_2 = "INVENTORY_DRAW_ORDER"
  L14_2 = L14_2[L15_2]
  L13_2.drawOrder = L14_2
  L14_2 = {}
  L13_2.interactCards = L14_2
  L14_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L13_2.priority = L14_2
  L14_2 = {}
  L15_2 = "Barbershop"
  L14_2.name = L15_2
  L15_2 = "LyShineUI/Barbershop/Barbershop"
  L14_2.path = L15_2
  L15_2 = {}
  L16_2 = 3654900741
  L15_2[1] = L16_2
  L14_2.states = L15_2
  L15_2 = {}
  L16_2 = 3537282420
  L15_2[1] = L16_2
  L14_2.triggerStates = L15_2
  L15_2 = {}
  L14_2.keepStates = L15_2
  L15_2 = {}
  L14_2.flags = L15_2
  L15_2 = 0
  L14_2.canvasId = L15_2
  L15_2 = true
  L14_2.autohide = L15_2
  L15_2 = L0_1
  L15_2 = L15_2.FULLSCREEN_DRAW_ORDER
  L14_2.drawOrder = L15_2
  L15_2 = {}
  L14_2.interactCards = L15_2
  L15_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L14_2.priority = L15_2
  L15_2 = {}
  L16_2 = "ControlHintsScreen"
  L15_2.name = L16_2
  L16_2 = "LyShineUI/ControlHintsScreen/ControlHintsScreen"
  L15_2.path = L16_2
  L16_2 = {}
  L15_2.states = L16_2
  L16_2 = {}
  L15_2.triggerStates = L16_2
  L16_2 = {}
  L15_2.keepStates = L16_2
  L16_2 = {}
  L17_2 = "isUsingControlHints"
  L16_2[1] = L17_2
  L15_2.flags = L16_2
  L16_2 = 0
  L15_2.canvasId = L16_2
  L16_2 = false
  L15_2.autohide = L16_2
  L16_2 = L0_1
  L17_2 = "CHAT_DRAW_ORDER"
  L16_2 = L16_2[L17_2]
  L17_2 = 1
  L16_2 = L16_2 + L17_2
  L15_2.drawOrder = L16_2
  L16_2 = {}
  L15_2.interactCards = L16_2
  L16_2 = A0_2.CANVAS_PRIORITY_GAMEMODE
  L15_2.priority = L16_2
  L16_2 = "spinnerBGOpacity"
  L17_2 = 0
  L15_2[L16_2] = L17_2
  L16_2 = "hideSpinner"
  L17_2 = true
  L15_2[L16_2] = L17_2
  L16_2 = {}
  L17_2 = "CatacombsMap"
  L16_2.name = L17_2
  L17_2 = "LyShineUI/CatacombsMap/CatacombsMap"
  L16_2.path = L17_2
  L17_2 = {}
  L16_2.states = L17_2
  L17_2 = {}
  L16_2.triggerStates = L17_2
  L17_2 = {}
  L16_2.keepStates = L17_2
  L17_2 = {}
  L18_2 = "isInCatacombs"
  L17_2[1] = L18_2
  L16_2.flags = L17_2
  L17_2 = 0
  L16_2.canvasId = L17_2
  L17_2 = false
  L16_2.autohide = L17_2
  L17_2 = L0_1
  L18_2 = "MAP_DRAW_ORDER"
  L17_2 = L17_2[L18_2]
  L18_2 = 1
  L17_2 = L17_2 + L18_2
  L16_2.drawOrder = L17_2
  L17_2 = {}
  L16_2.interactCards = L17_2
  L17_2 = A0_2.CANVAS_PRIORITY_GAMEMODE
  L16_2.priority = L17_2
  L1_2[51] = L2_2
  L1_2[52] = L3_2
  L1_2[53] = L4_2
  L1_2[54] = L5_2
  L1_2[55] = L6_2
  L1_2[56] = L7_2
  L1_2[57] = L8_2
  L1_2[58] = L9_2
  L1_2[59] = L10_2
  L1_2[60] = L11_2
  L1_2[61] = L12_2
  L1_2[62] = L13_2
  L1_2[63] = L14_2
  L1_2[64] = L15_2
  L1_2[65] = L16_2
  A0_2.canvasInfos = L1_2
  L1_2 = "dataLayer"
  L1_2 = A0_2[L1_2]
  L3_2 = "GetDataNode"
  L2_2 = L1_2
  L1_2 = L1_2[L3_2]
  L3_2 = "UIFeatures.housingImprovements"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L4_2 = "GetData"
    L3_2 = L1_2
    L2_2 = L1_2[L4_2]
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = table
      L3_2 = "insert"
      L2_2 = L2_2[L3_2]
      L3_2 = A0_2.canvasInfos
      L4_2 = {}
      L5_2 = "HousingTips"
      L4_2.name = L5_2
      L5_2 = "LyShineUI/Housing/HousingTips"
      L4_2.path = L5_2
      L5_2 = {}
      L6_2 = 2067651536
      L5_2[1] = L6_2
      L4_2.states = L5_2
      L5_2 = {}
      L4_2.triggerStates = L5_2
      L5_2 = {}
      L4_2.keepStates = L5_2
      L5_2 = {}
      L4_2.flags = L5_2
      L5_2 = 0
      L4_2.canvasId = L5_2
      L5_2 = true
      L4_2.autohide = L5_2
      L5_2 = L0_1
      L5_2 = L5_2.FULLSCREEN_DRAW_ORDER
      L4_2.drawOrder = L5_2
      L5_2 = {}
      L4_2.interactCards = L5_2
      L5_2 = A0_2.CANVAS_PRIORITY_INTERACT
      L4_2.priority = L5_2
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = ConfigProviderEventBus
  L3_2 = "Broadcast"
  L2_2 = L2_2[L3_2]
  L3_2 = "GetBool"
  L2_2 = L2_2[L3_2]
  L3_2 = "UIFeatures.enable-enhanced-dialogue"
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = table
    L4_2 = "insert"
    L3_2 = L3_2[L4_2]
    L4_2 = A0_2.canvasInfos
    L5_2 = {}
    L6_2 = "ConversationScreenV2"
    L5_2.name = L6_2
    L6_2 = "LyShineUI/Conversation/ConversationScreenV2"
    L5_2.path = L6_2
    L6_2 = {}
    L7_2 = 4203137545
    L6_2[1] = L7_2
    L5_2.states = L6_2
    L6_2 = {}
    L5_2.triggerStates = L6_2
    L6_2 = {}
    L7_2 = 2609973752
    L8_2 = 741472083
    L9_2 = 319051850
    L10_2 = 4040069259
    L11_2 = 1127161507
    L12_2 = 2892647586
    L6_2[1] = L7_2
    L6_2[2] = L8_2
    L6_2[3] = L9_2
    L6_2[4] = L10_2
    L6_2[5] = L11_2
    L6_2[6] = L12_2
    L5_2.keepStates = L6_2
    L6_2 = {}
    L5_2.flags = L6_2
    L6_2 = 0
    L5_2.canvasId = L6_2
    L6_2 = true
    L5_2.autohide = L6_2
    L6_2 = L0_1
    L6_2 = L6_2.FULLSCREEN_DRAW_ORDER
    L5_2.drawOrder = L6_2
    L6_2 = {}
    L5_2.interactCards = L6_2
    L6_2 = A0_2.CANVAS_PRIORITY_INTERACT
    L5_2.priority = L6_2
    L6_2 = "spinnerBGOpacity"
    L7_2 = 1
    L5_2[L6_2] = L7_2
    L6_2 = "hideSpinner"
    L7_2 = true
    L5_2[L6_2] = L7_2
    L6_2 = "keepUntilLevel"
    L7_2 = 99
    L5_2[L6_2] = L7_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = {}
  L4_2 = {}
  L5_2 = 4283914359
  L4_2[1] = L5_2
  L3_2.states = L4_2
  L4_2 = {}
  L3_2.triggerStates = L4_2
  L4_2 = {}
  L3_2.keepStates = L4_2
  L4_2 = {}
  L3_2.flags = L4_2
  L4_2 = 0
  L3_2.canvasId = L4_2
  L4_2 = true
  L3_2.autohide = L4_2
  L4_2 = L0_1
  L4_2 = L4_2.FULLSCREEN_DRAW_ORDER
  L3_2.drawOrder = L4_2
  L4_2 = A0_2.CANVAS_PRIORITY_INTERACT
  L3_2.priority = L4_2
  L4_2 = ConfigProviderEventBus
  L5_2 = "Broadcast"
  L4_2 = L4_2[L5_2]
  L5_2 = "GetBool"
  L4_2 = L4_2[L5_2]
  L5_2 = "javelin.enable-mtx-storeV2"
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L5_2 = "StoreScreenV2"
    L3_2.name = L5_2
    L5_2 = "LyShineUI/Store/StoreScreenV2"
    L3_2.path = L5_2
  else
    L5_2 = "StoreScreen"
    L3_2.name = L5_2
    L5_2 = "LyShineUI/Store/StoreScreen"
    L3_2.path = L5_2
  end
  L5_2 = table
  L6_2 = "insert"
  L5_2 = L5_2[L6_2]
  L6_2 = A0_2.canvasInfos
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  L5_2 = "stateToCanvasInfos"
  L6_2 = {}
  A0_2[L5_2] = L6_2
  L5_2 = "stateToOptionalCanvasInfos"
  L6_2 = {}
  A0_2[L5_2] = L6_2
  L5_2 = "canvasNameToCanvasInfo"
  L6_2 = {}
  A0_2[L5_2] = L6_2
  L5_2 = "interactCardToCanvasInfos"
  L6_2 = {}
  A0_2[L5_2] = L6_2
  L5_2 = "bypassedCanvases"
  L6_2 = {}
  A0_2[L5_2] = L6_2
  L5_2 = "flagsToCanvases"
  L6_2 = {}
  A0_2[L5_2] = L6_2
  L5_2 = "watchedAchievements"
  L6_2 = {}
  A0_2[L5_2] = L6_2
  L5_2 = ipairs
  L6_2 = A0_2.canvasInfos
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = "canvasNameToCanvasInfo"
    L10_2 = A0_2[L10_2]
    L11_2 = L9_2.name
    L10_2[L11_2] = L9_2
    L10_2 = ipairs
    L11_2 = L9_2.states
    L10_2, L11_2, L12_2 = L10_2(L11_2)
    for L13_2, L14_2 in L10_2, L11_2, L12_2 do
      L15_2 = "stateToCanvasInfos"
      L15_2 = A0_2[L15_2]
      L15_2 = L15_2[L14_2]
      if not L15_2 then
        L15_2 = "stateToCanvasInfos"
        L15_2 = A0_2[L15_2]
        L16_2 = {}
        L15_2[L14_2] = L16_2
      end
      L15_2 = table
      L16_2 = "insert"
      L15_2 = L15_2[L16_2]
      L16_2 = "stateToCanvasInfos"
      L16_2 = A0_2[L16_2]
      L16_2 = L16_2[L14_2]
      L17_2 = L9_2
      L15_2(L16_2, L17_2)
    end
    L10_2 = ipairs
    L11_2 = L9_2.triggerStates
    L10_2, L11_2, L12_2 = L10_2(L11_2)
    for L13_2, L14_2 in L10_2, L11_2, L12_2 do
      L15_2 = "stateToOptionalCanvasInfos"
      L15_2 = A0_2[L15_2]
      L15_2 = L15_2[L14_2]
      if not L15_2 then
        L15_2 = "stateToOptionalCanvasInfos"
        L15_2 = A0_2[L15_2]
        L16_2 = {}
        L15_2[L14_2] = L16_2
      end
      L15_2 = table
      L16_2 = "insert"
      L15_2 = L15_2[L16_2]
      L16_2 = "stateToOptionalCanvasInfos"
      L16_2 = A0_2[L16_2]
      L16_2 = L16_2[L14_2]
      L17_2 = L9_2
      L15_2(L16_2, L17_2)
    end
    L10_2 = L9_2.interactCards
    if L10_2 then
      L10_2 = ipairs
      L11_2 = L9_2.interactCards
      L10_2, L11_2, L12_2 = L10_2(L11_2)
      for L13_2, L14_2 in L10_2, L11_2, L12_2 do
        L15_2 = "interactCardToCanvasInfos"
        L15_2 = A0_2[L15_2]
        L15_2 = L15_2[L14_2]
        if not L15_2 then
          L15_2 = "interactCardToCanvasInfos"
          L15_2 = A0_2[L15_2]
          L16_2 = {}
          L15_2[L14_2] = L16_2
        end
        L15_2 = table
        L16_2 = "insert"
        L15_2 = L15_2[L16_2]
        L16_2 = "interactCardToCanvasInfos"
        L16_2 = A0_2[L16_2]
        L16_2 = L16_2[L14_2]
        L17_2 = L9_2
        L15_2(L16_2, L17_2)
      end
    end
    L10_2 = L9_2.flags
    if L10_2 then
      L10_2 = ipairs
      L11_2 = L9_2.flags
      L10_2, L11_2, L12_2 = L10_2(L11_2)
      for L13_2, L14_2 in L10_2, L11_2, L12_2 do
        L15_2 = "flagsToCanvases"
        L15_2 = A0_2[L15_2]
        L15_2 = L15_2[L14_2]
        if not L15_2 then
          L15_2 = "flagsToCanvases"
          L15_2 = A0_2[L15_2]
          L16_2 = {}
          L15_2[L14_2] = L16_2
        end
        L15_2 = table
        L16_2 = "insert"
        L15_2 = L15_2[L16_2]
        L16_2 = "flagsToCanvases"
        L16_2 = A0_2[L16_2]
        L16_2 = L16_2[L14_2]
        L17_2 = L9_2
        L15_2(L16_2, L17_2)
      end
    end
  end
  L5_2 = "dataLayer"
  L5_2 = A0_2[L5_2]
  L7_2 = "RegisterAndExecuteDataCallback"
  L6_2 = L5_2
  L5_2 = L5_2[L7_2]
  L7_2 = A0_2
  L8_2 = "Hud.LocalPlayer.HudComponent.PlayerEntityId"
  
  function L9_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    if not A1_3 then
      return
    end
    L2_3 = ipairs
    L3_3 = A0_3.canvasInfos
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    for L5_3, L6_3 in L2_3, L3_3, L4_3 do
      L7_3 = L6_3.keepUntilAchievementUnlocked
      if L7_3 then
        L7_3 = AchievementRequestBus
        L7_3 = L7_3.Event
        L7_3 = L7_3.IsAchievementUnlocked
        L8_3 = A1_3
        L9_3 = L6_3.keepUntilAchievementUnlocked
        L7_3 = L7_3(L8_3, L9_3)
        L8_3 = A0_3.watchedAchievements
        L9_3 = L6_3.keepUntilAchievementUnlocked
        if L7_3 then
          L10_3 = A0_3.ACHIEVEMENT_UNLOCKED
          if L10_3 then
            goto lbl_25
          end
        end
        L10_3 = A0_3.ACHIEVEMENT_LOCKED
        ::lbl_25::
        L8_3[L9_3] = L10_3
      end
    end
    L2_3 = A0_3.p2pTradeHandler
    if L2_3 then
      L3_3 = A0_3
      L2_3 = A0_3.BusDisconnect
      L4_3 = A0_3.p2pTradeHandler
      L2_3(L3_3, L4_3)
      A0_3.p2pTradeHandler = nil
    end
    L3_3 = A0_3
    L2_3 = A0_3.BusConnect
    L4_3 = P2PTradeComponentNotificationBus
    L5_3 = A1_3
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    A0_3.p2pTradeHandler = L2_3
    L2_3 = A0_3.SeasonsRewardsActivitiesNotificationHandler
    if L2_3 then
      L3_3 = A0_3
      L2_3 = A0_3.BusDisconnect
      L4_3 = A0_3.SeasonsRewardsActivitiesNotificationHandler
      L2_3(L3_3, L4_3)
      A0_3.SeasonsRewardsActivitiesNotificationHandler = nil
    end
    L3_3 = A0_3
    L2_3 = A0_3.BusConnect
    L4_3 = SeasonsRewardsActivitiesNotificationBus
    L5_3 = A1_3
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    A0_3.SeasonsRewardsActivitiesNotificationHandler = L2_3
  end
  
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = "dataLayer"
  L5_2 = A0_2[L5_2]
  L7_2 = "RegisterAndExecuteDataObserver"
  L6_2 = L5_2
  L5_2 = L5_2[L7_2]
  L7_2 = A0_2
  L8_2 = "Hud.LocalPlayer.Group.Id"
  
  function L9_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    if not A1_3 then
      return
    end
    L2_3 = A0_3.groupDataEventHandler
    if L2_3 then
      L3_3 = A0_3
      L2_3 = A0_3.BusDisconnect
      L4_3 = A0_3.groupDataEventHandler
      L2_3(L3_3, L4_3)
      A0_3.groupDataEventHandler = nil
    end
    A0_3.groupId = A1_3
    L2_3 = A0_3.groupId
    if L2_3 then
      L2_3 = A0_3.groupId
      L3_3 = L2_3
      L2_3 = L2_3.IsValid
      L2_3 = L2_3(L3_3)
      if L2_3 then
        L3_3 = A0_3
        L2_3 = A0_3.BusConnect
        L4_3 = GroupDataNotificationBus
        L5_3 = A0_3.groupId
        L2_3 = L2_3(L3_3, L4_3, L5_3)
        A0_3.groupDataEventHandler = L2_3
      end
    end
  end
  
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L7_2 = "BusConnect"
  L6_2 = A0_2
  L5_2 = A0_2[L7_2]
  L7_2 = UiTriggerAreaEventNotificationBus
  L5_2(L6_2, L7_2)
  L5_2 = DynamicBus
  L6_2 = "DynamicCanvasLoaderBus"
  L5_2 = L5_2[L6_2]
  L6_2 = "Connect"
  L5_2 = L5_2[L6_2]
  L6_2 = "entityId"
  L6_2 = A0_2[L6_2]
  L7_2 = A0_2
  L5_2(L6_2, L7_2)
  L5_2 = DynamicBus
  L6_2 = "StoreScreenProxyBus"
  L5_2 = L5_2[L6_2]
  L6_2 = "Connect"
  L5_2 = L5_2[L6_2]
  L6_2 = "entityId"
  L6_2 = A0_2[L6_2]
  L7_2 = A0_2
  L5_2(L6_2, L7_2)
  L5_2 = DynamicBus
  L6_2 = "JournalScreenProxyBus"
  L5_2 = L5_2[L6_2]
  L6_2 = "Connect"
  L5_2 = L5_2[L6_2]
  L6_2 = "entityId"
  L6_2 = A0_2[L6_2]
  L7_2 = A0_2
  L5_2(L6_2, L7_2)
  L5_2 = DynamicBus
  L6_2 = "EndgameGuide"
  L5_2 = L5_2[L6_2]
  L6_2 = "Connect"
  L5_2 = L5_2[L6_2]
  L6_2 = "entityId"
  L6_2 = A0_2[L6_2]
  L7_2 = A0_2
  L5_2(L6_2, L7_2)
  L5_2 = DynamicBus
  L6_2 = "InGameSurveyProxyBus"
  L5_2 = L5_2[L6_2]
  L6_2 = "Connect"
  L5_2 = L5_2[L6_2]
  L6_2 = "entityId"
  L6_2 = A0_2[L6_2]
  L7_2 = A0_2
  L5_2(L6_2, L7_2)
  L5_2 = DynamicBus
  L6_2 = "ReusableScoreboardProxyBus"
  L5_2 = L5_2[L6_2]
  L6_2 = "Connect"
  L5_2 = L5_2[L6_2]
  L6_2 = "entityId"
  L6_2 = A0_2[L6_2]
  L7_2 = A0_2
  L5_2(L6_2, L7_2)
  L5_2 = DynamicBus
  L6_2 = "WarboardInGameProxyBus"
  L5_2 = L5_2[L6_2]
  L6_2 = "Connect"
  L5_2 = L5_2[L6_2]
  L6_2 = "entityId"
  L6_2 = A0_2[L6_2]
  L7_2 = A0_2
  L5_2(L6_2, L7_2)
  L5_2 = DynamicBus
  L6_2 = "WarboardEndOfMatchProxyBus"
  L5_2 = L5_2[L6_2]
  L6_2 = "Connect"
  L5_2 = L5_2[L6_2]
  L6_2 = "entityId"
  L6_2 = A0_2[L6_2]
  L7_2 = A0_2
  L5_2(L6_2, L7_2)
  L5_2 = DynamicBus
  L6_2 = "ReportPlayerProxyBus"
  L5_2 = L5_2[L6_2]
  L6_2 = "Connect"
  L5_2 = L5_2[L6_2]
  L6_2 = "entityId"
  L6_2 = A0_2[L6_2]
  L7_2 = A0_2
  L5_2(L6_2, L7_2)
  L5_2 = DynamicBus
  L6_2 = "HousingManagementProxyBus"
  L5_2 = L5_2[L6_2]
  L6_2 = "Connect"
  L5_2 = L5_2[L6_2]
  L6_2 = "entityId"
  L6_2 = A0_2[L6_2]
  L7_2 = A0_2
  L5_2(L6_2, L7_2)
  L5_2 = DynamicBus
  L6_2 = "ControlHintsScreenProxyBus"
  L5_2 = L5_2[L6_2]
  L6_2 = "Connect"
  L5_2 = L5_2[L6_2]
  L6_2 = "entityId"
  L6_2 = A0_2[L6_2]
  L7_2 = A0_2
  L5_2(L6_2, L7_2)
  L7_2 = "BusConnect"
  L6_2 = A0_2
  L5_2 = A0_2[L7_2]
  L7_2 = GroupsUINotificationBus
  L5_2(L6_2, L7_2)
  L7_2 = "BusConnect"
  L6_2 = A0_2
  L5_2 = A0_2[L7_2]
  L7_2 = ConversationEventsBus
  L8_2 = A0_2.canvasId
  L5_2(L6_2, L7_2, L8_2)
  L7_2 = "BusConnect"
  L6_2 = A0_2
  L5_2 = A0_2[L7_2]
  L7_2 = LoreReaderNotificationsBus
  L8_2 = A0_2.canvasId
  L5_2(L6_2, L7_2, L8_2)
  L7_2 = "BusConnect"
  L6_2 = A0_2
  L5_2 = A0_2[L7_2]
  L7_2 = WarDataNotificationBus
  L5_2(L6_2, L7_2)
  L7_2 = "BusConnect"
  L6_2 = A0_2
  L5_2 = A0_2[L7_2]
  L7_2 = UIArenaAndDungeonEventBus
  L5_2(L6_2, L7_2)
  L5_2 = Platform
  L6_2 = "Current"
  L5_2 = L5_2[L6_2]
  L6_2 = Platform
  L7_2 = "Prospero"
  L6_2 = L6_2[L7_2]
  if L5_2 == L6_2 then
    L7_2 = "BusConnect"
    L6_2 = A0_2
    L5_2 = A0_2[L7_2]
    L7_2 = GameActivityUIRequestBus
    L5_2(L6_2, L7_2)
  end
  L5_2 = "dataLayer"
  L5_2 = A0_2[L5_2]
  L7_2 = "RegisterAndExecuteDataCallback"
  L6_2 = L5_2
  L5_2 = L5_2[L7_2]
  L7_2 = A0_2
  L8_2 = "Hud.LocalPlayer.CurrentAreaTerritory.SmallestContainingId"
  
  function L9_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    if A1_3 then
      L2_3 = A0_3.currentTerritoryId
      if A1_3 ~= L2_3 then
        A0_3.currentTerritoryId = A1_3
        L3_3 = A0_3
        L2_3 = A0_3.SetTerritoryData
        L4_3 = A0_3.currentTerritoryId
        L2_3(L3_3, L4_3)
      end
    end
  end
  
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = "dataLayer"
  L5_2 = A0_2[L5_2]
  L7_2 = "RegisterAndExecuteDataCallback"
  L6_2 = L5_2
  L5_2 = L5_2[L7_2]
  L7_2 = A0_2
  L8_2 = "Hud.LocalPlayer.Raid.Id"
  
  function L9_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    A0_3.raidId = A1_3
    L2_3 = A1_3 or L2_3
    if A1_3 then
      L3_3 = A1_3
      L2_3 = A1_3.IsValid
      L2_3 = L2_3(L3_3)
    end
    L4_3 = A0_3
    L3_3 = A0_3.SetFlag
    L5_3 = "isInRaid"
    L6_3 = L2_3
    L3_3(L4_3, L5_3, L6_3)
    L4_3 = A0_3
    L3_3 = A0_3.UpdateIsAtWarFlag
    L3_3(L4_3)
  end
  
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = "dataLayer"
  L5_2 = A0_2[L5_2]
  L7_2 = "RegisterAndExecuteDataCallback"
  L6_2 = L5_2
  L5_2 = L5_2[L7_2]
  L7_2 = A0_2
  L8_2 = "Hud.LocalPlayer.IsWarDataServiceAvailable"
  
  function L9_2(A0_3, A1_3)
    local L2_3, L3_3
    L3_3 = A0_3
    L2_3 = A0_3.UpdateIsAtWarFlag
    L2_3(L3_3)
  end
  
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = "dataLayer"
  L5_2 = A0_2[L5_2]
  L7_2 = "RegisterAndExecuteDataCallback"
  L6_2 = L5_2
  L5_2 = L5_2[L7_2]
  L7_2 = A0_2
  L8_2 = "Hud.LocalPlayer.WarDataBeenReplicated"
  
  function L9_2(A0_3, A1_3)
    local L2_3, L3_3
    L3_3 = A0_3
    L2_3 = A0_3.UpdateIsAtWarFlag
    L2_3(L3_3)
  end
  
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = "dataLayer"
  L5_2 = A0_2[L5_2]
  L7_2 = "RegisterAndExecuteDataObserver"
  L6_2 = L5_2
  L5_2 = L5_2[L7_2]
  L7_2 = A0_2
  L8_2 = "Hud.LocalPlayer.HudComponent.GDERootEntityId"
  
  function L9_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    if A1_3 then
      L3_3 = A0_3
      L2_3 = A0_3.BusDisconnect
      L4_3 = A0_3.participantBusHandler
      L2_3(L3_3, L4_3)
      L3_3 = A0_3
      L2_3 = A0_3.BusConnect
      L4_3 = GameModeParticipantComponentNotificationBus
      L5_3 = A1_3
      L2_3 = L2_3(L3_3, L4_3, L5_3)
      A0_3.participantBusHandler = L2_3
    end
  end
  
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = "dataLayer"
  L5_2 = A0_2[L5_2]
  L7_2 = "RegisterAndExecuteDataCallback"
  L6_2 = L5_2
  L5_2 = L5_2[L7_2]
  L7_2 = A0_2
  L8_2 = "Hud.LocalPlayer.Guild.LastModifiedGuildWarId"
  
  function L9_2(A0_3, A1_3)
    local L2_3, L3_3
    L3_3 = A0_3
    L2_3 = A0_3.UpdateIsAtWarFlag
    L2_3(L3_3)
  end
  
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = "dataLayer"
  L5_2 = A0_2[L5_2]
  L7_2 = "RegisterAndExecuteDataObserver"
  L6_2 = L5_2
  L5_2 = L5_2[L7_2]
  L7_2 = A0_2
  L8_2 = "Hud.LocalPlayer.fishing.state"
  
  function L9_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    if A1_3 then
      L3_3 = A0_3
      L2_3 = A0_3.SetFlag
      L4_3 = "isFishing"
      L5_3 = eFishingState_Unequipped
      L5_3 = A1_3 ~= L5_3
      L2_3(L3_3, L4_3, L5_3)
    end
  end
  
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = "dataLayer"
  L5_2 = A0_2[L5_2]
  L7_2 = "RegisterAndExecuteDataObserver"
  L6_2 = L5_2
  L5_2 = L5_2[L7_2]
  L7_2 = A0_2
  L8_2 = "javelin.enable-in-game-survey"
  
  function L9_2(A0_3, A1_3)
    A0_3.inGameSurveyEnabled = A1_3
  end
  
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = "fishingModeActionHandler"
  L5_2 = A0_2[L5_2]
  if L5_2 then
    L7_2 = "BusDisconnect"
    L6_2 = A0_2
    L5_2 = A0_2[L7_2]
    L7_2 = "fishingModeActionHandler"
    L7_2 = A0_2[L7_2]
    L8_2 = "fishing_activate"
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = "fishingModeActionHandler"
    L6_2 = nil
    A0_2[L5_2] = L6_2
  end
  L5_2 = "fishingModeActionHandler"
  L8_2 = "BusConnect"
  L7_2 = A0_2
  L6_2 = A0_2[L8_2]
  L8_2 = CryActionNotificationsBus
  L9_2 = "fishing_activate"
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  A0_2[L5_2] = L6_2
  L5_2 = ConfigProviderEventBus
  L6_2 = "Broadcast"
  L5_2 = L5_2[L6_2]
  L6_2 = "GetBool"
  L5_2 = L5_2[L6_2]
  L6_2 = "javelin.enable-make-good-notification"
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L6_2 = DynamicBus
    L7_2 = "CompensationsProxyBus"
    L6_2 = L6_2[L7_2]
    L7_2 = "Connect"
    L6_2 = L6_2[L7_2]
    L7_2 = "entityId"
    L7_2 = A0_2[L7_2]
    L8_2 = A0_2
    L6_2(L7_2, L8_2)
    L8_2 = "CreateMakeGoodList"
    L7_2 = A0_2
    L6_2 = A0_2[L8_2]
    L6_2(L7_2)
  end
  L6_2 = "dataLayer"
  L6_2 = A0_2[L6_2]
  L8_2 = "RegisterAndExecuteDataCallback"
  L7_2 = L6_2
  L6_2 = L6_2[L8_2]
  L8_2 = A0_2
  L9_2 = "Hud.LocalPlayer.GroupFinder.GroupId"
  
  function L10_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = A1_3 or nil
    if A1_3 then
      L3_3 = A1_3
      L2_3 = A1_3.IsNull
      L2_3 = L2_3(L3_3)
      L2_3 = not L2_3
    end
    L4_3 = A0_3
    L3_3 = A0_3.SetFlag
    L5_3 = "isInGroupFinderGroup"
    L6_3 = L2_3
    L3_3(L4_3, L5_3, L6_3)
    L4_3 = A0_3
    L3_3 = A0_3.SetFlag
    L5_3 = "requireQueueHUD"
    L6_3 = L2_3
    L3_3(L4_3, L5_3, L6_3)
  end
  
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = "playerLevel"
  L7_2 = 0
  A0_2[L6_2] = L7_2
  L6_2 = "dataLayer"
  L6_2 = A0_2[L6_2]
  L8_2 = "RegisterAndExecuteDataCallback"
  L7_2 = L6_2
  L6_2 = L6_2[L8_2]
  L8_2 = A0_2
  L9_2 = "Hud.LocalPlayer.Progression.Level"
  
  function L10_2(A0_3, A1_3)
    if A1_3 then
      A0_3.playerLevel = A1_3
    end
  end
  
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = "dataLayer"
  L6_2 = A0_2[L6_2]
  L8_2 = "RegisterAndExecuteDataCallback"
  L7_2 = L6_2
  L6_2 = L6_2[L8_2]
  L8_2 = A0_2
  L9_2 = "Queue.ClientLeftQueue"
  
  function L10_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    if A1_3 ~= nil then
      L3_3 = A0_3
      L2_3 = A0_3.SetFlag
      L4_3 = "requireQueueHUD"
      L5_3 = not A1_3
      L2_3(L3_3, L4_3, L5_3)
    end
  end
  
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = "dataLayer"
  L6_2 = A0_2[L6_2]
  L8_2 = "RegisterAndExecuteDataObserver"
  L7_2 = L6_2
  L6_2 = L6_2[L8_2]
  L8_2 = A0_2
  L9_2 = "Hud.LocalPlayer.IsSpectating"
  
  function L10_2(A0_3, A1_3)
    local L2_3, L3_3
    if A1_3 == nil then
      return
    end
    A0_3.isSpectating = A1_3
    L3_3 = A0_3
    L2_3 = A0_3.UpdateSpectatorControls
    L2_3(L3_3)
  end
  
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = "dataLayer"
  L6_2 = A0_2[L6_2]
  L8_2 = "RegisterAndExecuteDataObserver"
  L7_2 = L6_2
  L6_2 = L6_2[L8_2]
  L8_2 = A0_2
  L9_2 = "Hud.LocalPlayer.Options.Localization.Language"
  
  function L10_2(A0_3, A1_3)
    local L2_3, L3_3
    if not A1_3 then
      return
    end
    L3_3 = A0_3
    L2_3 = A0_3.UpdateSpectatorControls
    L2_3(L3_3)
  end
  
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = "uiLoaderHandler"
  L6_2 = A0_2[L6_2]
  if L6_2 then
    L6_2 = DynamicBus
    L7_2 = "UiLoader"
    L6_2 = L6_2[L7_2]
    L7_2 = "Disconnect"
    L6_2 = L6_2[L7_2]
    L7_2 = "entityId"
    L7_2 = A0_2[L7_2]
    L8_2 = A0_2
    L6_2(L7_2, L8_2)
  end
  L6_2 = "uiLoaderHandler"
  L7_2 = DynamicBus
  L8_2 = "UiLoader"
  L7_2 = L7_2[L8_2]
  L8_2 = "Connect"
  L7_2 = L7_2[L8_2]
  L8_2 = "entityId"
  L8_2 = A0_2[L8_2]
  L9_2 = A0_2
  L7_2 = L7_2(L8_2, L9_2)
  A0_2[L6_2] = L7_2
  L6_2 = _UPVALUE2_
  L8_2 = "Delay"
  L7_2 = L6_2
  L6_2 = L6_2[L8_2]
  L8_2 = "MEMORY_CHECK_DELAY"
  L8_2 = A0_2[L8_2]
  L9_2 = A0_2
  L10_2 = "UpdateCanvases"
  L10_2 = A0_2[L10_2]
  L6_2(L7_2, L8_2, L9_2, L10_2)
end

L5_1.OnInit = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.BusConnect
  L3_2 = FactionControlClientBroadcastNotificationBus
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.dataLayer
  L2_2 = L1_2
  L1_2 = L1_2.RegisterAndExecuteDataObserver
  L3_2 = A0_2
  L4_2 = "Hud.LocalPlayer.IsWarDataServiceAvailable"
  
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3
    A0_3.isWarDataServiceAvailable = A1_3
    L3_3 = A0_3
    L2_3 = A0_3.CheckInitialFCPConditions
    L2_3(L3_3)
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.dataLayer
  L2_2 = L1_2
  L1_2 = L1_2.RegisterAndExecuteDataObserver
  L3_2 = A0_2
  L4_2 = "Hud.LocalPlayer.IsLandClaimManagerAvailable"
  
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3
    A0_3.isLandClaimManagerAvailable = A1_3
    L3_3 = A0_3
    L2_3 = A0_3.CheckInitialFCPConditions
    L2_3(L3_3)
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.dataLayer
  L2_2 = L1_2
  L1_2 = L1_2.RegisterDataCallback
  L3_2 = A0_2
  L4_2 = "Hud.Housing.RequestExitPlot"
  
  function L5_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.canvasNameToCanvasInfo
    L1_3 = L1_3.HousingHUD
    L2_3 = L1_3.isLoaded
    if L2_3 then
      L2_3 = DynamicBus
      L2_3 = L2_3.HousingHUD
      L2_3 = L2_3.Broadcast
      L2_3 = L2_3.RequestExitPlot
      L2_3()
    else
      L2_3 = PlayerHousingClientRequestBus
      L2_3 = L2_3.Broadcast
      L2_3 = L2_3.RequestExitPlot
      L2_3()
    end
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.dataLayer
  L2_2 = L1_2
  L1_2 = L1_2.RegisterAndExecuteDataObserver
  L3_2 = A0_2
  L4_2 = "Hud.LocalPlayer.IsInCutscene"
  
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3
    if A1_3 == nil then
      return
    end
    A0_3.isInCutscene = A1_3
    L3_3 = A0_3
    L2_3 = A0_3.UpdateSpectatorControls
    L2_3(L3_3)
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2.BusConnect
  L3_2 = LocalPlayerEventsBus
  L1_2(L2_2, L3_2)
end

L5_1.CanvasLoaded = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = _UPVALUE0_
  L1_2 = L1_2.OnShutdown
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = DynamicBus
  L1_2 = L1_2.DynamicCanvasLoaderBus
  L1_2 = L1_2.Disconnect
  L2_2 = A0_2.entityId
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = DynamicBus
  L1_2 = L1_2.StoreScreenProxyBus
  L1_2 = L1_2.Disconnect
  L2_2 = A0_2.entityId
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = DynamicBus
  L1_2 = L1_2.JournalScreenProxyBus
  L1_2 = L1_2.Disconnect
  L2_2 = A0_2.entityId
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = DynamicBus
  L1_2 = L1_2.EndgameGuide
  L1_2 = L1_2.Disconnect
  L2_2 = A0_2.entityId
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = DynamicBus
  L1_2 = L1_2.CompensationsProxyBus
  L1_2 = L1_2.Disconnect
  L2_2 = A0_2.entityId
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = DynamicBus
  L1_2 = L1_2.ReusableScoreboardProxyBus
  L1_2 = L1_2.Disconnect
  L2_2 = A0_2.entityId
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = DynamicBus
  L1_2 = L1_2.WarboardInGameProxyBus
  L1_2 = L1_2.Disconnect
  L2_2 = A0_2.entityId
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = DynamicBus
  L1_2 = L1_2.WarboardEndOfMatchProxyBus
  L1_2 = L1_2.Disconnect
  L2_2 = A0_2.entityId
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = DynamicBus
  L1_2 = L1_2.InGameSurveyProxyBus
  L1_2 = L1_2.Disconnect
  L2_2 = A0_2.entityId
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = DynamicBus
  L1_2 = L1_2.ReportPlayerProxyBus
  L1_2 = L1_2.Disconnect
  L2_2 = A0_2.entityId
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = DynamicBus
  L1_2 = L1_2.HousingManagementProxyBus
  L1_2 = L1_2.Disconnect
  L2_2 = A0_2.entityId
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = DynamicBus
  L1_2 = L1_2.ControlHintsScreenProxyBus
  L1_2 = L1_2.Disconnect
  L2_2 = A0_2.entityId
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.uiLoaderHandler
  if L1_2 then
    A0_2.uiLoaderHandler = nil
    L1_2 = DynamicBus
    L1_2 = L1_2.UiLoader
    L1_2 = L1_2.Disconnect
    L2_2 = A0_2.entityId
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
  L1_2 = _UPVALUE1_
  L2_2 = L1_2
  L1_2 = L1_2.StopDelay
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end

L5_1.OnShutdown = L9_1

function L9_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L5_2 = UiCanvasBus
  L5_2 = L5_2.Event
  L5_2 = L5_2.SetEnabled
  L6_2 = A0_2.canvasId
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = A0_2.stateToCanvasInfos
  L5_2 = L5_2[A3_2]
  L6_2 = A0_2.stateToOptionalCanvasInfos
  L6_2 = L6_2[A3_2]
  L7_2 = false
  L8_2 = nil
  L9_2 = nil
  if L5_2 then
    L10_2 = ipairs
    L11_2 = L5_2
    L10_2, L11_2, L12_2 = L10_2(L11_2)
    for L13_2, L14_2 in L10_2, L11_2, L12_2 do
      L15_2 = L14_2.isLoaded
      if not L15_2 then
        L16_2 = A0_2
        L15_2 = A0_2.StartCanvasLoading
        L17_2 = L14_2
        L15_2(L16_2, L17_2)
        L7_2 = true
        if not L8_2 then
          L8_2 = L14_2.spinnerBGOpacity
        end
        if not L9_2 then
          L9_2 = L14_2.hideSpinner
        end
      end
    end
  end
  if L6_2 then
    L10_2 = ipairs
    L11_2 = L6_2
    L10_2, L11_2, L12_2 = L10_2(L11_2)
    for L13_2, L14_2 in L10_2, L11_2, L12_2 do
      L15_2 = L14_2.isLoaded
      if not L15_2 then
        L16_2 = A0_2
        L15_2 = A0_2.StartCanvasLoading
        L17_2 = L14_2
        L15_2(L16_2, L17_2)
      end
    end
  end
  if not L7_2 then
    return
  end
  L10_2 = LyShineManagerBus
  L10_2 = L10_2.Broadcast
  L10_2 = L10_2.SetState
  L11_2 = 3090408
  L10_2(L11_2)
  L10_2 = DynamicBus
  L10_2 = L10_2.FullScreenSpinner
  L10_2 = L10_2.Broadcast
  L10_2 = L10_2.SetFullscreenSpinnerVisible
  L11_2 = true
  L12_2 = A0_2.TIMEOUT_FOR_TRANSITION_CANVAS_LOAD
  L13_2 = nil
  L14_2 = nil
  L15_2 = L8_2
  L16_2 = L8_2
  L17_2 = L9_2
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  A0_2.fullScreenSpinnerShown = true
  L10_2 = A0_2.pendingStateTransition
  if not L10_2 then
    L10_2 = {}
    L10_2.fromStateId = A1_2
    L10_2.fromLevel = A2_2
    L10_2.toStateId = A3_2
    L10_2.toLevel = A4_2
    A0_2.pendingStateTransition = L10_2
  end
  L11_2 = A0_2
  L10_2 = A0_2.UpdateStatusText
  L10_2(L11_2)
end

L5_1.OnTransitionIn = L9_1

function L9_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  L5_2 = UiCanvasBus
  L5_2 = L5_2.Event
  L5_2 = L5_2.SetEnabled
  L6_2 = A0_2.canvasId
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = LyShineManagerBus
  L5_2 = L5_2.Broadcast
  L5_2 = L5_2.TransitionOutComplete
  L5_2()
end

L5_1.OnTransitionOut = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A1_2.isLoaded
  if not L2_2 then
    L2_2 = A0_2.expectedCanvases
    L3_2 = A1_2.name
    L2_2 = L2_2[L3_2]
    if not L2_2 then
      goto lbl_17
    end
  end
  L2_2 = A1_2.isLoaded
  if L2_2 then
    L2_2 = A1_2.isUnloading
    if L2_2 then
      A1_2.reloadAfterUnload = true
    end
  end
  do return end
  ::lbl_17::
  L2_2 = WallClockTimePoint
  L3_2 = L2_2
  L2_2 = L2_2.Now
  L2_2 = L2_2(L3_2)
  A1_2.lastRequest = L2_2
  L2_2 = WallClockTimePoint
  L3_2 = L2_2
  L2_2 = L2_2.Now
  L2_2 = L2_2(L3_2)
  A1_2.startedLoading = L2_2
  L2_2 = A0_2.canvasLoadRequestCount
  A1_2.requestNumber = L2_2
  L2_2 = UiCanvasManagerBus
  L2_2 = L2_2.Broadcast
  L2_2 = L2_2.GetTotalElementCount
  L2_2 = L2_2()
  A1_2.elementCountAtRequest = L2_2
  A1_2.isExpectedCount = 0
  A1_2.reloadAfterUnload = false
  L2_2 = A0_2.canvasLoadRequestCount
  L2_2 = L2_2 + 1
  A0_2.canvasLoadRequestCount = L2_2
  L2_2 = A0_2.expectedCanvases
  L3_2 = A1_2.name
  L2_2[L3_2] = A1_2
  L2_2 = A0_2.failedCanvases
  L3_2 = A1_2.name
  L2_2[L3_2] = nil
  L2_2 = A1_2.path
  L3_2 = A0_2.fileType
  L2_2 = L2_2 .. L3_2
  L3_2 = LyShineScriptBindRequestBus
  L3_2 = L3_2.Broadcast
  L3_2 = L3_2.ScriptLoadCanvas
  L4_2 = L2_2
  L5_2 = A1_2.autohide
  L6_2 = A1_2.drawOrder
  L7_2 = A0_2.enableAsyncCanvasLoading
  L8_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2
  L3_2 = A0_2.UpdateStatusText
  L3_2(L4_2)
end

L5_1.StartCanvasLoading = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.uiLoaderHandler
  if L1_2 then
    L1_2 = DynamicBus
    L1_2 = L1_2.UiLoader
    L1_2 = L1_2.Disconnect
    L2_2 = A0_2.entityId
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
    A0_2.uiLoaderHandler = nil
  end
  A0_2.uiLoadingComplete = true
end

L5_1.OnUiLoadingComplete = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A1_2 then
    L3_2 = A1_2
    L2_2 = A1_2.IsValid
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_16
    end
  end
  L2_2 = Debug
  L2_2 = L2_2.Log
  L3_2 = "ERROR - DynamicCanvasLoader:OnCanvasLoaded - invalid canvasId: "
  L4_2 = tostring
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
  do return end
  ::lbl_16::
  L2_2 = A0_2.dataLayer
  L3_2 = L2_2
  L2_2 = L2_2.RegisterAndExecuteDataObserver
  L4_2 = A0_2
  L5_2 = "Hud.Housing.IsWithinAPlot"
  
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L3_3 = A0_3
    L2_3 = A0_3.SetFlag
    L4_3 = "isWithinAPlot"
    L5_3 = A1_3
    L2_3(L3_3, L4_3, L5_3)
  end
  
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = UiCanvasBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.GetCanvasName
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.canvasNameToCanvasInfo
  L3_2 = L3_2[L2_2]
  if not L3_2 then
    return
  end
  L3_2.canvasId = A1_2
  L3_2.isLoaded = true
  L4_2 = L3_2.requestNumber
  if L4_2 then
    L4_2 = A0_2.canvasLoadRequestCount
    L5_2 = L3_2.requestNumber
    L4_2 = L4_2 - L5_2
    L5_2 = UiCanvasManagerBus
    L5_2 = L5_2.Broadcast
    L5_2 = L5_2.GetTotalElementCount
    L5_2 = L5_2()
    L6_2 = L3_2.elementCountAtRequest
    L5_2 = L5_2 - L6_2
    L6_2 = math
    L6_2 = L6_2.max
    L7_2 = A0_2.HYSTERESIS_BUFFER
    L8_2 = L5_2 / L4_2
    L6_2 = L6_2(L7_2, L8_2)
    L3_2.approximateElementCount = L6_2
  end
  L3_2.startedLoading = nil
  L3_2.requestNumber = nil
  L3_2.elementCountAtRequest = nil
  L4_2 = A0_2.expectedCanvases
  L4_2[L2_2] = nil
  L4_2 = A0_2.pendingCanvasCallbacks
  L5_2 = L3_2.name
  L4_2 = L4_2[L5_2]
  if L4_2 then
    L4_2 = pairs
    L5_2 = A0_2.pendingCanvasCallbacks
    L6_2 = L3_2.name
    L5_2 = L5_2[L6_2]
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L9_2 = L8_2
      L10_2 = A0_2
      L9_2(L10_2)
    end
    L4_2 = A0_2.pendingCanvasCallbacks
    L5_2 = L3_2.name
    L4_2[L5_2] = nil
  end
  L4_2 = A0_2.pendingStateTransition
  if L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2.IsStateReady
    L6_2 = A0_2.pendingStateTransition
    L6_2 = L6_2.toStateId
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L4_2 = LyShineManagerBus
      L4_2 = L4_2.Broadcast
      L4_2 = L4_2.ExitState
      L5_2 = 3090408
      L4_2(L5_2)
      L4_2 = A0_2.pendingStateTransition
      L4_2 = L4_2.toStateId
      L5_2 = LyShineManagerBus
      L5_2 = L5_2.Broadcast
      L5_2 = L5_2.GetCurrentState
      L5_2 = L5_2()
      if L4_2 ~= L5_2 then
        L4_2 = LyShineManagerBus
        L4_2 = L4_2.Broadcast
        L4_2 = L4_2.SetState
        L5_2 = A0_2.pendingStateTransition
        L5_2 = L5_2.toStateId
        L4_2(L5_2)
      end
      A0_2.pendingStateTransition = nil
    end
  end
  L4_2 = false
  L5_2 = pairs
  L6_2 = A0_2.expectedCanvases
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = A0_2.pendingCanvasCallbacks
    L10_2 = L10_2[L8_2]
    if L10_2 then
      L4_2 = true
      break
    end
  end
  L5_2 = A0_2.fullScreenSpinnerShown
  if L5_2 and not L4_2 then
    L5_2 = A0_2.pendingStateTransition
    if not L5_2 then
      L5_2 = DynamicBus
      L5_2 = L5_2.FullScreenSpinner
      L5_2 = L5_2.Broadcast
      L5_2 = L5_2.SetFullscreenSpinnerVisible
      L6_2 = false
      L5_2(L6_2)
      A0_2.fullScreenSpinnerShown = false
    end
  end
end

L5_1.OnCanvasLoaded = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = ipairs
  L3_2 = A0_2.canvasInfos
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.canvasId
    if L7_2 == A1_2 then
      L6_2.isLoaded = false
      L6_2.isUnloading = false
      L6_2.canvasId = 0
      L6_2.unloadStartTime = nil
      L7_2 = L6_2.reloadAfterUnload
      if L7_2 then
        L8_2 = A0_2
        L7_2 = A0_2.StartCanvasLoading
        L9_2 = L6_2
        L7_2(L8_2, L9_2)
      end
      return
    end
  end
end

L5_1.OnCanvasUnloadComplete = L9_1

function L9_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.failedCanvases
  L2_2[A1_2] = true
end

L5_1.OnCanvasLoadingFailed = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = UiCanvasManagerBus
  L1_2 = L1_2.Broadcast
  L1_2 = L1_2.GetTotalElementCount
  L1_2 = L1_2()
  L2_2 = UiCanvasManagerBus
  L2_2 = L2_2.Broadcast
  L2_2 = L2_2.GetElementThreshold
  L2_2 = L2_2()
  L3_2 = L1_2 > L2_2
  return L3_2
end

L5_1.IsOverBudget = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = UiCanvasManagerBus
  L2_2 = L2_2.Broadcast
  L2_2 = L2_2.GetTotalElementCount
  L2_2 = L2_2()
  L3_2 = A1_2.approximateElementCount
  if not L3_2 then
    L3_2 = A0_2.HYSTERESIS_BUFFER
  end
  L3_2 = L3_2 + L2_2
  L4_2 = UiCanvasManagerBus
  L4_2 = L4_2.Broadcast
  L4_2 = L4_2.GetElementThreshold
  L4_2 = L4_2()
  L3_2 = L3_2 < L4_2
  return L3_2
end

L5_1.CanLoadCanvasUnderBudget = L9_1

function L9_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.CANVAS_PRIORITY_GAMEMODE
  L2_2 = A1_2 == L2_2
  return L2_2
end

L5_1.DoesPriorityUseTimeThreshold = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = ConfigProviderEventBus
  L1_2 = L1_2.Broadcast
  L1_2 = L1_2.GetBool
  L2_2 = "UIFeatures.debug-show-dcl-state"
  L1_2 = L1_2(L2_2)
  L2_2 = UiElementBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetIsEnabled
  L3_2 = A0_2.Properties
  L3_2 = L3_2.StatusText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if not L1_2 then
    return
  end
  L2_2 = LyShineManagerBus
  L2_2 = L2_2.Broadcast
  L2_2 = L2_2.GetCurrentState
  L2_2 = L2_2()
  L3_2 = UiCanvasBus
  L3_2 = L3_2.Event
  L3_2 = L3_2.SetEnabled
  L4_2 = A0_2.canvasId
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.canvasNameToCanvasInfo
  L3_2 = L3_2.RewardCelebrationPopup
  L4_2 = string
  L4_2 = L4_2.format
  L5_2 = "UIState = %s.\n"
  L6_2 = tostring
  L7_2 = L2_2
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2(L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L5_2 = A0_2.pendingStateTransition
  if L5_2 then
    L5_2 = L4_2
    L6_2 = string
    L6_2 = L6_2.format
    L7_2 = "Pending UI State = %s\n"
    L8_2 = tostring
    L9_2 = A0_2.pendingStateTransition
    L9_2 = L9_2.toStateId
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2(L9_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L4_2 = L5_2 .. L6_2
  end
  if L3_2 then
    L5_2 = L3_2.canvasId
    if L5_2 then
      L5_2 = L3_2.isLoaded
      if L5_2 then
        L5_2 = L4_2
        L6_2 = string
        L6_2 = L6_2.format
        L7_2 = "RewardCelebrationPopup is LOADED and %s\n"
        L8_2 = UiCanvasBus
        L8_2 = L8_2.Event
        L8_2 = L8_2.GetEnabled
        L9_2 = L3_2.canvasId
        L8_2 = L8_2(L9_2)
        if L8_2 then
          L8_2 = "ENABLED"
          if L8_2 then
            goto lbl_71
          end
        end
        L8_2 = "NOT enabled"
        ::lbl_71::
        L6_2 = L6_2(L7_2, L8_2)
        L4_2 = L5_2 .. L6_2
    end
  end
  else
    L5_2 = L4_2
    L6_2 = "RewardCelebrationPopup is NOT loaded.\n"
    L4_2 = L5_2 .. L6_2
  end
  L5_2 = A0_2.expectedCanvases
  if L5_2 then
    L5_2 = "["
    L6_2 = pairs
    L7_2 = A0_2.expectedCanvases
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      L11_2 = L5_2
      L12_2 = L9_2
      L13_2 = ", "
      L5_2 = L11_2 .. L12_2 .. L13_2
    end
    L6_2 = L5_2
    L7_2 = "]"
    L5_2 = L6_2 .. L7_2
    L6_2 = string
    L6_2 = L6_2.len
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if not (2 < L6_2) then
      L6_2 = A0_2.lastEct
      if L5_2 == L6_2 then
        goto lbl_107
      end
    end
    L6_2 = L4_2
    L7_2 = "Expected Canvases:\n"
    L8_2 = L5_2
    L4_2 = L6_2 .. L7_2 .. L8_2
    ::lbl_107::
    A0_2.lastEct = L5_2
  end
  L5_2 = UiTextBus
  L5_2 = L5_2.Event
  L5_2 = L5_2.SetText
  L6_2 = A0_2.Properties
  L6_2 = L6_2.StatusText
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end

L5_1.UpdateStatusText = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = A0_2
  L1_2 = A0_2.UpdateStatusText
  L1_2(L2_2)
  L1_2 = ConfigProviderEventBus
  L1_2 = L1_2.Broadcast
  L1_2 = L1_2.GetString
  L2_2 = "javelin.bypass-on-demand-canvas-list"
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2.lastBypassList
  if L1_2 ~= L2_2 then
    A0_2.lastBypassList = L1_2
    L2_2 = ClearTable
    L3_2 = A0_2.bypassedCanvases
    L2_2(L3_2)
    L2_2 = string
    L2_2 = L2_2.len
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if 0 < L2_2 then
      L2_2 = string
      L2_2 = L2_2.sub
      L3_2 = L1_2
      L4_2 = 1
      L5_2 = 1
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      if L2_2 == "*" then
        A0_2.bypassAllCanvases = true
    end
    else
      A0_2.bypassAllCanvases = false
      L2_2 = string
      L2_2 = L2_2.gmatch
      L3_2 = L1_2
      L4_2 = "([^,]+)"
      L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
      for L5_2 in L2_2, L3_2, L4_2 do
        L7_2 = L5_2
        L6_2 = L5_2.match
        L8_2 = "^%s*(.*%S)"
        L6_2 = L6_2(L7_2, L8_2)
        L5_2 = L6_2 or L5_2
        if not L6_2 then
          L5_2 = ""
        end
        L6_2 = A0_2.canvasNameToCanvasInfo
        L6_2 = L6_2[L5_2]
        if L6_2 then
          L6_2 = A0_2.bypassedCanvases
          L6_2[L5_2] = true
        else
          L6_2 = Log
          L7_2 = "Warning: No canvas found for bypass-on-demand-canvas '%s'"
          L8_2 = L5_2
          L6_2(L7_2, L8_2)
        end
      end
    end
  end
  L2_2 = WallClockTimePoint
  L3_2 = L2_2
  L2_2 = L2_2.Now
  L2_2 = L2_2(L3_2)
  L3_2 = LyShineManagerBus
  L3_2 = L3_2.Broadcast
  L3_2 = L3_2.GetCurrentState
  L3_2 = L3_2()
  L4_2 = pairs
  L5_2 = A0_2.expectedCanvases
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L10_2 = L2_2
    L9_2 = L2_2.Subtract
    L11_2 = L8_2.startedLoading
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = L9_2
    L9_2 = L9_2.ToSeconds
    L9_2 = L9_2(L10_2)
    L10_2 = A0_2.TIMEOUT_FOR_TRANSITION_CANVAS_LOAD
    if not (L9_2 > L10_2) then
      L10_2 = A0_2.failedCanvases
      L10_2 = L10_2[L7_2]
      if not L10_2 then
        goto lbl_175
      end
    end
    L10_2 = A0_2.failedCanvases
    L10_2 = L10_2[L7_2]
    if L10_2 then
      L10_2 = A0_2.failedCanvases
      L10_2[L7_2] = nil
      L10_2 = A0_2.expectedCanvases
      L10_2[L7_2] = nil
    end
    L10_2 = A0_2.fullScreenSpinnerShown
    if L10_2 then
      L10_2 = false
      L11_2 = A0_2.pendingStateTransition
      if L11_2 then
        L12_2 = A0_2
        L11_2 = A0_2.StateRequiresCanvas
        L13_2 = A0_2.pendingStateTransition
        L13_2 = L13_2.toStateId
        L14_2 = L7_2
        L11_2 = L11_2(L12_2, L13_2, L14_2)
        if L11_2 then
          L11_2 = Math
          L11_2 = L11_2.GetDebugString
          L12_2 = A0_2.pendingStateTransition
          L12_2 = L12_2.toStateId
          L11_2 = L11_2(L12_2)
          L12_2 = Log
          L13_2 = "Warning: Timeout callback from FullScreenSpinner, pending transition to [%s]. Waiting for [%s]. Returning to %s"
          L14_2 = L11_2
          L15_2 = L8_2.name
          L16_2 = Math
          L16_2 = L16_2.GetDebugString
          L17_2 = A0_2.pendingStateTransition
          L17_2 = L17_2.fromStateId
          L16_2, L17_2 = L16_2(L17_2)
          L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
          L12_2 = LyShineManagerBus
          L12_2 = L12_2.Broadcast
          L12_2 = L12_2.GetCurrentState
          L12_2 = L12_2()
          L13_2 = A0_2.pendingStateTransition
          L13_2 = L13_2.fromStateId
          if L12_2 ~= L13_2 then
            L12_2 = LyShineManagerBus
            L12_2 = L12_2.Broadcast
            L12_2 = L12_2.SetState
            L13_2 = A0_2.pendingStateTransition
            L13_2 = L13_2.fromStateId
            L12_2(L13_2)
          end
          L10_2 = true
        end
      end
      L11_2 = A0_2.pendingCanvasCallbacks
      L11_2 = L11_2[L7_2]
      if L11_2 then
        L10_2 = true
      end
      if L10_2 then
        L11_2 = A0_2.pendingCanvasCallbacks
        L11_2[L7_2] = nil
        A0_2.pendingStateTransition = nil
        L11_2 = NotificationData
        L11_2 = L11_2()
        L11_2.type = "Minor"
        L11_2.text = "@ui_screen_unavailable"
        L12_2 = UiNotificationsBus
        L12_2 = L12_2.Broadcast
        L12_2 = L12_2.EnqueueNotification
        L13_2 = L11_2
        L12_2(L13_2)
        L12_2 = DynamicBus
        L12_2 = L12_2.FullScreenSpinner
        L12_2 = L12_2.Broadcast
        L12_2 = L12_2.SetFullscreenSpinnerVisible
        L13_2 = false
        L12_2(L13_2)
        A0_2.fullScreenSpinnerShown = false
        L12_2 = A0_2.dataLayer
        L13_2 = L12_2
        L12_2 = L12_2.GetDataNode
        L14_2 = "Hud.LocalPlayer.HudComponent.InteractorEntityId"
        L12_2 = L12_2(L13_2, L14_2)
        if L12_2 then
          L14_2 = L12_2
          L13_2 = L12_2.GetData
          L13_2 = L13_2(L14_2)
          L14_2 = UiInteractorComponentRequestsBus
          L14_2 = L14_2.Event
          L14_2 = L14_2.RequestCancelCommittedInteraction
          L15_2 = L13_2
          L14_2(L15_2)
        end
      end
      break
    else
      L10_2 = A0_2.pendingCanvasCallbacks
      L10_2[L7_2] = nil
    end
    ::lbl_175::
  end
  L4_2 = 0
  L5_2 = nil
  L6_2 = ipairs
  L7_2 = A0_2.canvasInfos
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L11_2 = L10_2.isUnloading
    if L11_2 then
    else
      L11_2 = L10_2.isLoaded
      if L11_2 then
        L11_2 = true
        L12_2 = A0_2.bypassAllCanvases
        if not L12_2 then
          L12_2 = A0_2.bypassedCanvases
          L13_2 = L10_2.name
          L12_2 = L12_2[L13_2]
          if not L12_2 then
            goto lbl_201
          end
        end
        L10_2.lastRequest = L2_2
        L11_2 = false
        ::lbl_201::
        if L11_2 then
          L12_2 = UiCanvasBus
          L12_2 = L12_2.Event
          L12_2 = L12_2.GetEnabled
          L13_2 = L10_2.canvasId
          L12_2 = L12_2(L13_2)
          L13_2 = L10_2.priority
          L14_2 = A0_2.CANVAS_PRIORITY_INTERACT
          if L13_2 ~= L14_2 or not L12_2 then
            L13_2 = L10_2.uicVisible
            if not L13_2 then
              goto lbl_219
            end
          end
          L10_2.lastRequest = L2_2
          L11_2 = false
        end
        ::lbl_219::
        if L11_2 then
          L12_2 = L10_2.keepUntilAchievementUnlocked
          if L12_2 then
            L12_2 = A0_2.watchedAchievements
            L13_2 = L10_2.keepUntilAchievementUnlocked
            L12_2 = L12_2[L13_2]
            L13_2 = A0_2.ACHIEVEMENT_LOCKED
            if L12_2 == L13_2 then
              L10_2.lastRequest = L2_2
              L11_2 = false
            end
          end
        end
        if L11_2 then
          L12_2 = L10_2.keepUntilLevel
          if L12_2 then
            L12_2 = A0_2.playerLevel
            L13_2 = L10_2.keepUntilLevel
            if L12_2 < L13_2 then
              L10_2.lastRequest = L2_2
              L11_2 = false
            end
          end
        end
        if L11_2 then
          L12_2 = ipairs
          L13_2 = L10_2.flags
          L12_2, L13_2, L14_2 = L12_2(L13_2)
          for L15_2, L16_2 in L12_2, L13_2, L14_2 do
            L17_2 = A0_2.flags
            L17_2 = L17_2[L16_2]
            if L17_2 then
              L10_2.lastRequest = L2_2
              L11_2 = false
            end
          end
        end
        if L11_2 then
          L12_2 = ipairs
          L13_2 = L10_2.states
          L12_2, L13_2, L14_2 = L12_2(L13_2)
          for L15_2, L16_2 in L12_2, L13_2, L14_2 do
            if L3_2 == L16_2 then
              L10_2.lastRequest = L2_2
              L11_2 = false
              break
            end
          end
        end
        if L11_2 then
          L12_2 = L10_2.triggerStates
          if L12_2 then
            L12_2 = ipairs
            L13_2 = L10_2.triggerStates
            L12_2, L13_2, L14_2 = L12_2(L13_2)
            for L15_2, L16_2 in L12_2, L13_2, L14_2 do
              if L3_2 == L16_2 then
                L10_2.lastRequest = L2_2
                L11_2 = false
                break
              end
            end
          end
        end
        if L11_2 then
          L12_2 = L10_2.keepStates
          if L12_2 then
            L12_2 = ipairs
            L13_2 = L10_2.keepStates
            L12_2, L13_2, L14_2 = L12_2(L13_2)
            for L15_2, L16_2 in L12_2, L13_2, L14_2 do
              if L3_2 == L16_2 then
                L10_2.lastRequest = L2_2
                L11_2 = false
                break
              end
            end
          end
        end
        L12_2 = LyShineManagerBus
        L12_2 = L12_2.Broadcast
        L12_2 = L12_2.GetCurrentState
        L12_2 = L12_2()
        if L12_2 ~= 3090408 then
          L13_2 = L2_2
          L12_2 = L2_2.Subtract
          L14_2 = L10_2.lastRequest
          L12_2 = L12_2(L13_2, L14_2)
          L13_2 = L12_2
          L12_2 = L12_2.ToSeconds
          L12_2 = L12_2(L13_2)
          L14_2 = A0_2
          L13_2 = A0_2.DoesPriorityUseTimeThreshold
          L15_2 = L10_2.priority
          L13_2 = L13_2(L14_2, L15_2)
          if L13_2 then
            L13_2 = A0_2.UNLOAD_CANVAS_THRESHOLD
            if L12_2 > L13_2 then
              L5_2 = L10_2
              L4_2 = L12_2
              break
            end
          end
          L14_2 = A0_2
          L13_2 = A0_2.IsOverBudget
          L13_2 = L13_2(L14_2)
          if L13_2 then
            if L12_2 > L4_2 then
              L5_2 = L10_2
              L4_2 = L12_2
            end
            L13_2 = L10_2.priority
            L14_2 = A0_2.CANVAS_PRIORITY_HUD
            if L13_2 == L14_2 and not L5_2 then
              L5_2 = L10_2
              L4_2 = 0
            end
          end
        end
      else
        L11_2 = A0_2.bypassAllCanvases
        if not L11_2 then
          L11_2 = A0_2.bypassedCanvases
          L12_2 = L10_2.name
          L11_2 = L11_2[L12_2]
          if not L11_2 then
            goto lbl_353
          end
        end
        L12_2 = A0_2
        L11_2 = A0_2.StartCanvasLoading
        L13_2 = L10_2
        L11_2(L12_2, L13_2)
        goto lbl_392
        ::lbl_353::
        L11_2 = L10_2.keepUntilAchievementUnlocked
        if L11_2 then
          L11_2 = A0_2.watchedAchievements
          L12_2 = L10_2.keepUntilAchievementUnlocked
          L11_2 = L11_2[L12_2]
          L12_2 = A0_2.ACHIEVEMENT_LOCKED
          if L11_2 == L12_2 then
            L12_2 = A0_2
            L11_2 = A0_2.StartCanvasLoading
            L13_2 = L10_2
            L11_2(L12_2, L13_2)
        end
        else
          L11_2 = L10_2.keepUntilLevel
          if L11_2 then
            L11_2 = A0_2.playerLevel
            L12_2 = L10_2.keepUntilLevel
            if L11_2 < L12_2 then
              L12_2 = A0_2
              L11_2 = A0_2.StartCanvasLoading
              L13_2 = L10_2
              L11_2(L12_2, L13_2)
          end
          else
            L11_2 = L10_2.priority
            L12_2 = A0_2.CANVAS_PRIORITY_HUD
            if L11_2 == L12_2 then
              L11_2 = L10_2.isLoaded
              if not L11_2 then
                L12_2 = A0_2
                L11_2 = A0_2.CanLoadCanvasUnderBudget
                L13_2 = L10_2
                L11_2 = L11_2(L12_2, L13_2)
                if L11_2 then
                  L12_2 = A0_2
                  L11_2 = A0_2.StartCanvasLoading
                  L13_2 = L10_2
                  L11_2(L12_2, L13_2)
                end
              end
            end
          end
        end
      end
    end
    ::lbl_392::
  end
  L6_2 = A0_2.popupCanvasId
  if not L6_2 then
    L6_2 = DynamicBus
    L6_2 = L6_2.PopupScreenRequestsBus
    L6_2 = L6_2.Broadcast
    L6_2 = L6_2.GetCanvasId
    L6_2 = L6_2()
    A0_2.popupCanvasId = L6_2
  end
  L6_2 = A0_2.UNLOAD_DELAY_AFTER_POPUP_DISMISSED
  L6_2 = L6_2 + 1
  L7_2 = A0_2.popupCanvasId
  if L7_2 then
    L7_2 = UiCanvasBus
    L7_2 = L7_2.Event
    L7_2 = L7_2.GetEnabled
    L8_2 = A0_2.popupCanvasId
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = WallClockTimePoint
      L8_2 = L7_2
      L7_2 = L7_2.Now
      L7_2 = L7_2(L8_2)
      A0_2.lastPopupVisibleTime = L7_2
    end
    L8_2 = L2_2
    L7_2 = L2_2.Subtract
    L9_2 = A0_2.lastPopupVisibleTime
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L7_2
    L7_2 = L7_2.ToSecondsUnrounded
    L7_2 = L7_2(L8_2)
    L6_2 = L7_2
  end
  L7_2 = A0_2.UNLOAD_DELAY_AFTER_POPUP_DISMISSED
  if L6_2 > L7_2 and L5_2 then
    L7_2 = L5_2.isUnloading
    if not L7_2 then
      L5_2.isUnloading = true
      L7_2 = WallClockTimePoint
      L8_2 = L7_2
      L7_2 = L7_2.Now
      L7_2 = L7_2(L8_2)
      L5_2.unloadStartTime = L7_2
      L7_2 = LyShineManagerBus
      L7_2 = L7_2.Broadcast
      L7_2 = L7_2.DeregisterScreen
      L8_2 = L5_2.canvasId
      L7_2(L8_2)
      L7_2 = UiCanvasManagerBus
      L7_2 = L7_2.Broadcast
      L7_2 = L7_2.UnloadCanvas
      L8_2 = L5_2.canvasId
      L7_2(L8_2)
    end
  end
  L7_2 = _UPVALUE0_
  L8_2 = L7_2
  L7_2 = L7_2.Delay
  L9_2 = A0_2.MEMORY_CHECK_DELAY
  L10_2 = A0_2
  L11_2 = A0_2.UpdateCanvases
  L7_2(L8_2, L9_2, L10_2, L11_2)
end

L5_1.UpdateCanvases = L9_1

function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A0_2.flags
  L3_2 = L3_2[A1_2]
  if L3_2 == nil then
    return
  end
  L3_2 = A0_2.flags
  L3_2[A1_2] = A2_2
  if not A2_2 then
    return
  end
  L3_2 = A0_2.flagsToCanvases
  L3_2 = L3_2[A1_2]
  if L3_2 then
    L4_2 = ipairs
    L5_2 = L3_2
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L9_2 = L8_2.isLoaded
      if not L9_2 then
        L10_2 = A0_2
        L9_2 = A0_2.StartCanvasLoading
        L11_2 = L8_2
        L9_2(L10_2, L11_2)
      end
    end
  end
end

L5_1.SetFlag = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = true
  L3_2 = A0_2.stateToCanvasInfos
  L3_2 = L3_2[A1_2]
  if L3_2 then
    L4_2 = ipairs
    L5_2 = L3_2
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L9_2 = L8_2.isLoaded
      if not L9_2 then
        L10_2 = A0_2
        L9_2 = A0_2.StartCanvasLoading
        L11_2 = L8_2
        L9_2(L10_2, L11_2)
        L2_2 = false
      end
      L9_2 = L8_2.isUnloading
      if L9_2 then
        L2_2 = false
        L8_2.reloadAfterUnload = true
      end
    end
  end
  return L2_2
end

L5_1.PrepareState = L9_1

function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2.stateToCanvasInfos
  L3_2 = L3_2[A1_2]
  if L3_2 then
    L4_2 = ipairs
    L5_2 = L3_2
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L9_2 = L8_2.name
      if L9_2 == A2_2 then
        L9_2 = true
        return L9_2
      end
    end
  end
  L4_2 = false
  return L4_2
end

L5_1.StateRequiresCanvas = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.stateToCanvasInfos
  L2_2 = L2_2[A1_2]
  if L2_2 then
    L3_2 = ipairs
    L4_2 = L2_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = L7_2.isLoaded
      if L8_2 then
        L8_2 = L7_2.isUnloading
        if not L8_2 then
          goto lbl_17
        end
      end
      L8_2 = false
      do return L8_2 end
      ::lbl_17::
    end
  end
  L3_2 = true
  return L3_2
end

L5_1.IsStateReady = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = ipairs
  L2_2 = A0_2.canvasInfos
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L5_2.uicVisible = false
  end
end

L5_1.ClearUICVisibleFlags = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2
  L2_2 = A0_2.ClearUICVisibleFlags
  L2_2(L3_2)
  L2_2 = A0_2.interactCardToCanvasInfos
  L3_2 = Math
  L3_2 = L3_2.CreateCrc32
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2[L3_2]
  if not L2_2 then
    return
  end
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L7_2.uicVisible = true
    L8_2 = WallClockTimePoint
    L9_2 = L8_2
    L8_2 = L8_2.Now
    L8_2 = L8_2(L9_2)
    L7_2.lastRequest = L8_2
    L8_2 = L7_2.isLoaded
    if not L8_2 then
      L9_2 = A0_2
      L8_2 = A0_2.StartCanvasLoading
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
end

L5_1.OnUICSetInteractName = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.ClearUICVisibleFlags
  L2_2(L3_2)
end

L5_1.OnUICHidden = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if not A1_2 then
    return
  end
  L2_2 = UiCanvasBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.GetCanvasName
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = A0_2.canvasNameToCanvasInfo
  L3_2 = L3_2[L2_2]
  if L3_2 then
    L4_2 = L3_2.canvasId
    if L4_2 == A1_2 then
      L3_2.isUnloading = true
      L4_2 = WallClockTimePoint
      L5_2 = L4_2
      L4_2 = L4_2.Now
      L4_2 = L4_2(L5_2)
      L3_2.unloadStartTime = L4_2
    end
  end
end

L5_1.OnUnloadCanvas = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 == 0 then
    L3_2 = A0_2
    L2_2 = A0_2.SetFlag
    L4_2 = "isInOutpost"
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
    return
  end
  L2_2 = nil
  L3_2 = TerritoryDefinitionsDataManagerBus
  L3_2 = L3_2.Broadcast
  L3_2 = L3_2.GetTerritoryDefinition
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L2_2 = L3_2.outpostId
  end
  L5_2 = A0_2
  L4_2 = A0_2.SetFlag
  L6_2 = "isInOutpost"
  L7_2 = L2_2 ~= nil
  L4_2(L5_2, L6_2, L7_2)
end

L5_1.SetTerritoryData = L9_1

function L9_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2
  L5_2 = A0_2.watchedAchievements
  L5_2 = L5_2[A1_2]
  if L5_2 then
    L5_2 = A0_2.watchedAchievements
    if A3_2 then
      L6_2 = A0_2.ACHIEVEMENT_UNLOCKED
      if L6_2 then
        goto lbl_12
      end
    end
    L6_2 = A0_2.ACHIEVEMENT_LOCKED
    ::lbl_12::
    L5_2[A1_2] = L6_2
  end
end

L5_1.OnAchievementChanged = L9_1

function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if not A2_2 then
    L3_2 = MarkerRequestBus
    L3_2 = L3_2.Event
    L3_2 = L3_2.GetPlayerId
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_11
    end
  end
  L3_2 = nil
  ::lbl_11::
  A0_2.spectatedPlayerId = L3_2
  L4_2 = A0_2
  L3_2 = A0_2.UpdateSpectatorControls
  L3_2(L4_2)
end

L5_1.OnSpectatedPlayerChanged = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.isSpectating
  if L1_2 then
    L1_2 = {}
    L2_2 = A0_2.spectatedPlayerId
    if L2_2 then
      L2_2 = A0_2.isInCutscene
      if not L2_2 then
        L2_2 = A0_2.audioHelper
        L3_2 = L2_2
        L2_2 = L2_2.PlaySound
        L4_2 = A0_2.audioHelper
        L4_2 = L4_2.Accept
        L2_2(L3_2, L4_2)
        L2_2 = A0_2.spectatingPlayerWidgetShowing
        if L2_2 then
          L3_2 = A0_2
          L2_2 = A0_2.UpdateControlHintsFeedBackText
          L4_2 = A0_2.spectatedPlayerId
          L4_2 = L4_2.playerName
          L2_2(L3_2, L4_2)
          return
        end
        L2_2 = {}
        L2_2.feedbackHeader = "@ui_spectate_heading"
        L3_2 = A0_2.spectatedPlayerId
        L3_2 = L3_2.playerName
        L2_2.feedbackText = L3_2
        L3_2 = A0_2.UIStyle
        L3_2 = L3_2.COLOR_YELLOW_NEW
        L2_2.feedbackTextColor = L3_2
        L3_2 = {}
        L4_2 = {}
        L5_2 = {}
        L5_2.action = "pvp_spectatorcam_prev_target"
        L5_2.label = "@ui_pvp_spectate_prevplayer"
        L5_2.actionMap = "spectatorcamera_pvp"
        L4_2.primary = L5_2
        L5_2 = {}
        L6_2 = {}
        L6_2.action = "pvp_spectatorcam_next_target"
        L6_2.label = "@ui_pvp_spectate_nextplayer"
        L6_2.actionMap = "spectatorcamera_pvp"
        L5_2.primary = L6_2
        L6_2 = {}
        L7_2 = {}
        L7_2.action = "pvp_spectatorcam_return_to_self"
        L7_2.label = "@ui_pvp_spectate_exit"
        L7_2.actionMap = "spectatorcamera_pvp"
        L6_2.primary = L7_2
        L3_2[1] = L4_2
        L3_2[2] = L5_2
        L3_2[3] = L6_2
        L2_2.hintsList = L3_2
        L1_2 = L2_2
        A0_2.spectatingPlayerWidgetShowing = true
    end
    else
      L2_2 = A0_2.spectatingPlayerWidgetShowing
      if L2_2 then
        L2_2 = A0_2.audioHelper
        L3_2 = L2_2
        L2_2 = L2_2.PlaySound
        L4_2 = A0_2.audioHelper
        L4_2 = L4_2.Cancel
        L2_2(L3_2, L4_2)
      else
        L2_2 = A0_2.audioHelper
        L3_2 = L2_2
        L2_2 = L2_2.PlaySound
        L4_2 = A0_2.audioHelper
        L4_2 = L4_2.Accept
        L2_2(L3_2, L4_2)
      end
      A0_2.spectatingPlayerWidgetShowing = false
      L2_2 = A0_2.isInCutscene
      if L2_2 then
        L2_2 = {}
        L2_2.hintsHeaderText = "@ui_spectate_heading"
        L3_2 = {}
        L4_2 = {}
        L5_2 = {}
        L5_2.action = "rotate_character_start_hold"
        L5_2.label = "@ui_housing_rotate_camera_hint"
        L5_2.actionMap = "ui"
        L4_2.primary = L5_2
        L3_2[1] = L4_2
        L2_2.hintsList = L3_2
        L1_2 = L2_2
      else
        L2_2 = {}
        L3_2 = {}
        L4_2 = {}
        L5_2 = {}
        L5_2.action = "pvp_spectatorcam_next_target"
        L5_2.label = "@ui_spectate"
        L5_2.actionMap = "spectatorcamera_pvp"
        L4_2.primary = L5_2
        L5_2 = {}
        L5_2.action = "pvp_spectatorcam_prev_target"
        L5_2.actionMap = "spectatorcamera_pvp"
        L4_2.secondary = L5_2
        L3_2[1] = L4_2
        L2_2.hintsList = L3_2
        L1_2 = L2_2
      end
    end
    L3_2 = A0_2
    L2_2 = A0_2.SetControlHintsData
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  else
    A0_2.spectatedPlayerId = nil
    A0_2.spectatingPlayerWidgetShowing = false
    L2_2 = A0_2
    L1_2 = A0_2.ClearControlHintsData
    L1_2(L2_2)
  end
end

L5_1.UpdateSpectatorControls = L9_1

function L9_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  if A3_2 == 3718191953 then
    L6_2 = A0_2
    L5_2 = A0_2.SetFlag
    L7_2 = "isInSettlement"
    L8_2 = true
    L5_2(L6_2, L7_2, L8_2)
  end
end

L5_1.OnUiTriggerAreaEventEntered = L9_1

function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A2_2 == 3718191953 then
    L4_2 = A0_2
    L3_2 = A0_2.SetFlag
    L5_2 = "isInSettlement"
    L6_2 = false
    L3_2(L4_2, L5_2, L6_2)
  end
end

L5_1.OnUiTriggerAreaEventExited = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.dataLayer
  L2_2 = L1_2
  L1_2 = L1_2.GetDataFromNode
  L3_2 = "Hud.LocalPlayer.HudComponent.PlayerEntityId"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = PlayerComponentRequestsBus
    L2_2 = L2_2.Event
    L2_2 = L2_2.IsBlockedFromEnteringStore
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    return L2_2
  end
  L2_2 = false
  return L2_2
end

L5_1.IsStoreBlocked = L9_1

function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A1_2 then
    return
  end
  L3_2 = A1_2.isLoaded
  if L3_2 then
    L3_2 = A2_2
    L4_2 = A0_2
    L3_2(L4_2)
    return
  end
  L3_2 = Log
  L4_2 = "[INFO]: DynamicCanvasLoader forwarding event to unloaded canvas %s"
  L5_2 = A1_2.name
  L3_2(L4_2, L5_2)
  L3_2 = DynamicBus
  L3_2 = L3_2.FullScreenSpinner
  L3_2 = L3_2.Broadcast
  L3_2 = L3_2.SetFullscreenSpinnerVisible
  L4_2 = true
  L5_2 = A0_2.TIMEOUT_FOR_TRANSITION_CANVAS_LOAD
  L6_2 = nil
  L7_2 = nil
  L8_2 = A1_2.spinnerBGOpacity
  L9_2 = A1_2.spinnerBGOpacity
  L10_2 = A1_2.hideSpinner
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  A0_2.fullScreenSpinnerShown = true
  L3_2 = A0_2.pendingCanvasCallbacks
  L4_2 = A1_2.name
  L3_2 = L3_2[L4_2]
  if not L3_2 then
    L3_2 = A0_2.pendingCanvasCallbacks
    L4_2 = A1_2.name
    L5_2 = {}
    L3_2[L4_2] = L5_2
  end
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2.pendingCanvasCallbacks
  L5_2 = A1_2.name
  L4_2 = L4_2[L5_2]
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.StartCanvasLoading
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end

L5_1.ForwardToCanvas = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.canvasNameToCanvasInfo
  L2_2 = L2_2.StoreScreen
  if not L2_2 then
    L2_2 = A0_2.canvasNameToCanvasInfo
    L2_2 = L2_2.StoreScreenV2
  end
  L4_2 = A0_2
  L3_2 = A0_2.ForwardToCanvas
  L5_2 = L2_2
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
end

L5_1.ForwardToStoreCanvas = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.raidId
  if L1_2 then
    L1_2 = A0_2.raidId
    L2_2 = L1_2
    L1_2 = L1_2.IsValid
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = WarDataServiceBus
      L1_2 = L1_2.Broadcast
      L1_2 = L1_2.GetWarForRaid
      L2_2 = A0_2.raidId
      L1_2 = L1_2(L2_2)
      L3_2 = L1_2
      L2_2 = L1_2.IsValid
      L2_2 = L1_2 ~= nil and L2_2
      L4_2 = A0_2
      L3_2 = A0_2.SetFlag
      L5_2 = "isAtWar"
      L6_2 = L2_2
      L3_2(L4_2, L5_2, L6_2)
  end
  else
    L2_2 = A0_2
    L1_2 = A0_2.SetFlag
    L3_2 = "isAtWar"
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
  end
end

L5_1.UpdateIsAtWarFlag = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.ForwardToStoreCanvas
  
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = DynamicBus
    L1_3 = L1_3.StoreScreenBus
    L1_3 = L1_3.Broadcast
    L1_3 = L1_3.InvokeStoreToTab
    L2_3 = _UPVALUE0_
    L1_3(L2_3)
  end
  
  L2_2(L3_2, L4_2)
end

L5_1.InvokeStoreToTab = L9_1

function L9_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  L6_2 = A0_2
  L5_2 = A0_2.ForwardToStoreCanvas
  
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = DynamicBus
    L1_3 = L1_3.StoreScreenBus
    L1_3 = L1_3.Broadcast
    L1_3 = L1_3.InvokeStoreWithOffer
    L2_3 = _UPVALUE0_
    L3_3 = _UPVALUE1_
    L4_3 = _UPVALUE2_
    L5_3 = _UPVALUE3_
    L1_3(L2_3, L3_3, L4_3, L5_3)
  end
  
  L5_2(L6_2, L7_2)
end

L5_1.InvokeStoreWithOffer = L9_1

function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2.ForwardToStoreCanvas
  
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = DynamicBus
    L1_3 = L1_3.StoreScreenBus
    L1_3 = L1_3.Broadcast
    L1_3 = L1_3.InvokeStoreWithEntitlements
    L2_3 = _UPVALUE0_
    L3_3 = _UPVALUE1_
    L1_3(L2_3, L3_3)
  end
  
  L3_2(L4_2, L5_2)
end

L5_1.InvokeStoreWithEntitlements = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.ForwardToStoreCanvas
  
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = DynamicBus
    L1_3 = L1_3.StoreScreenBus
    L1_3 = L1_3.Broadcast
    L1_3 = L1_3.AddPurchaseCelebration
    L2_3 = _UPVALUE0_
    L1_3(L2_3)
  end
  
  L2_2(L3_2, L4_2)
end

L5_1.AddPurchaseCelebration = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.IsStoreBlocked
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = FtueSystemRequestBus
  L2_2 = L2_2.Broadcast
  L2_2 = L2_2.IsFtue
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = false
    return L2_2
  end
  L3_2 = A0_2
  L2_2 = A0_2.ForwardToStoreCanvas
  
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = DynamicBus
    L1_3 = L1_3.StoreScreenBus
    L1_3 = L1_3.Broadcast
    L1_3 = L1_3.InvokeStoreFromButton
    L2_3 = _UPVALUE0_
    L1_3(L2_3)
  end
  
  L2_2(L3_2, L4_2)
  L2_2 = true
  return L2_2
end

L5_1.InvokeStoreFromButton = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.canvasNameToCanvasInfo
  L2_2 = L2_2.JournalScreen
  L4_2 = A0_2
  L3_2 = A0_2.ForwardToCanvas
  L5_2 = L2_2
  
  function L6_2(A0_3)
    local L1_3, L2_3
    L1_3 = DynamicBus
    L1_3 = L1_3.JournalScreen
    L1_3 = L1_3.Broadcast
    L1_3 = L1_3.OpenToObjectiveId
    L2_3 = _UPVALUE0_
    L1_3(L2_3)
  end
  
  L3_2(L4_2, L5_2, L6_2)
end

L5_1.OpenToObjectiveId = L9_1

function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2.canvasNameToCanvasInfo
  L3_2 = L3_2.JournalScreen
  L5_2 = A0_2
  L4_2 = A0_2.ForwardToCanvas
  L6_2 = L3_2
  
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = DynamicBus
    L1_3 = L1_3.JournalScreen
    L1_3 = L1_3.Broadcast
    L1_3 = L1_3.ShowTutorial
    L2_3 = _UPVALUE0_
    L3_3 = _UPVALUE1_
    L1_3(L2_3, L3_3)
  end
  
  L4_2(L5_2, L6_2, L7_2)
end

L5_1.ShowTutorial = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.canvasNameToCanvasInfo
  L2_2 = L2_2.WarboardInGame
  L4_2 = A0_2
  L3_2 = A0_2.ForwardToCanvas
  L5_2 = L2_2
  
  function L6_2(A0_3)
    local L1_3, L2_3
    L1_3 = DynamicBus
    L1_3 = L1_3.WarboardInGameBus
    L1_3 = L1_3.Broadcast
    L1_3 = L1_3.SetInGameWarboardGameMode
    L2_3 = _UPVALUE0_
    L1_3(L2_3)
  end
  
  L3_2(L4_2, L5_2, L6_2)
end

L5_1.SetInGameWarboardGameMode = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.canvasNameToCanvasInfo
  L2_2 = L2_2.WarboardInGame
  L4_2 = A0_2
  L3_2 = A0_2.ForwardToCanvas
  L5_2 = L2_2
  
  function L6_2(A0_3)
    local L1_3, L2_3
    L1_3 = DynamicBus
    L1_3 = L1_3.WarboardInGameBus
    L1_3 = L1_3.Broadcast
    L1_3 = L1_3.SetGameModeEntityId
    L2_3 = _UPVALUE0_
    L1_3(L2_3)
  end
  
  L3_2(L4_2, L5_2, L6_2)
end

L5_1.SetGameModeEntityId = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.canvasNameToCanvasInfo
  L2_2 = L2_2.WarboardInGame
  L4_2 = A0_2
  L3_2 = A0_2.ForwardToCanvas
  L5_2 = L2_2
  
  function L6_2(A0_3)
    local L1_3, L2_3
    L1_3 = DynamicBus
    L1_3 = L1_3.WarboardInGameBus
    L1_3 = L1_3.Broadcast
    L1_3 = L1_3.SetPlayerTeamIndex
    L2_3 = _UPVALUE0_
    L1_3(L2_3)
  end
  
  L3_2(L4_2, L5_2, L6_2)
end

L5_1.SetPlayerTeamIndex = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.canvasNameToCanvasInfo
  L2_2 = L2_2.WarboardInGame
  L4_2 = A0_2
  L3_2 = A0_2.ForwardToCanvas
  L5_2 = L2_2
  
  function L6_2(A0_3)
    local L1_3, L2_3
    L1_3 = DynamicBus
    L1_3 = L1_3.WarboardInGameBus
    L1_3 = L1_3.Broadcast
    L1_3 = L1_3.SetInvasionMode
    L2_3 = _UPVALUE0_
    L1_3(L2_3)
  end
  
  L3_2(L4_2, L5_2, L6_2)
end

L5_1.SetInvasionMode = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.canvasNameToCanvasInfo
  L2_2 = L2_2.WarboardEndOfMatch
  L4_2 = A0_2
  L3_2 = A0_2.ForwardToCanvas
  L5_2 = L2_2
  
  function L6_2(A0_3)
    local L1_3, L2_3
    L1_3 = DynamicBus
    L1_3 = L1_3.WarboardEndOfMatch
    L1_3 = L1_3.Broadcast
    L1_3 = L1_3.SetWarboardEndOfMatchGameMode
    L2_3 = _UPVALUE0_
    L1_3(L2_3)
  end
  
  L3_2(L4_2, L5_2, L6_2)
end

L5_1.SetWarboardEndOfMatchGameMode = L9_1

function L9_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2.canvasNameToCanvasInfo
  L4_2 = L4_2.WarboardEndOfMatch
  L6_2 = A0_2
  L5_2 = A0_2.ForwardToCanvas
  L7_2 = L4_2
  
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = DynamicBus
    L1_3 = L1_3.WarboardEndOfMatch
    L1_3 = L1_3.Broadcast
    L1_3 = L1_3.OnGameModeMatchEnded
    L2_3 = _UPVALUE0_
    L3_3 = _UPVALUE1_
    L4_3 = _UPVALUE2_
    L1_3(L2_3, L3_3, L4_3)
  end
  
  L5_2(L6_2, L7_2, L8_2)
end

L5_1.OnGameModeMatchEnded = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.canvasNameToCanvasInfo
  L1_2 = L1_2.JournalScreen
  L3_2 = A0_2
  L2_2 = A0_2.ForwardToCanvas
  L4_2 = L1_2
  
  function L5_2(A0_3)
    local L1_3
    L1_3 = DynamicBus
    L1_3 = L1_3.JournalScreen
    L1_3 = L1_3.Broadcast
    L1_3 = L1_3.ShowFreeWeekendGuide
    L1_3()
  end
  
  L2_2(L3_2, L4_2, L5_2)
end

L5_1.ShowFreeWeekendGuide = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.canvasNameToCanvasInfo
  L2_2 = L2_2.JournalScreen
  L4_2 = A0_2
  L3_2 = A0_2.ForwardToCanvas
  L5_2 = L2_2
  
  function L6_2(A0_3)
    local L1_3, L2_3
    L1_3 = DynamicBus
    L1_3 = L1_3.JournalScreen
    L1_3 = L1_3.Broadcast
    L1_3 = L1_3.OnShowLoreReader
    L2_3 = _UPVALUE0_
    L1_3(L2_3)
  end
  
  L3_2(L4_2, L5_2, L6_2)
end

L5_1.OnShowLoreReader = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.IsStateReady
  L4_2 = 1823500652
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = DynamicBus
    L2_2 = L2_2.JournalScreen
    L2_2 = L2_2.Broadcast
    L2_2 = L2_2.OnAddLoreToJournal
    L3_2 = A1_2
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.PrepareState
    L4_2 = 1823500652
    L2_2(L3_2, L4_2)
    L2_2 = _UPVALUE0_
    L3_2 = L2_2
    L2_2 = L2_2.Delay
    L4_2 = 0.5
    L5_2 = A0_2
    
    function L6_2(A0_3)
      local L1_3, L2_3, L3_3
      L2_3 = A0_3
      L1_3 = A0_3.OnAddLoreToJournal
      L3_3 = _UPVALUE0_
      L1_3(L2_3, L3_3)
    end
    
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end

L5_1.OnAddLoreToJournal = L9_1

function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = GameModeDataManagerBus
  L3_2 = L3_2.Broadcast
  L3_2 = L3_2.GetGameModeStaticData
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2.SetFlag
  L6_2 = "isInDungeon"
  L7_2 = L3_2 or L7_2
  if L3_2 then
    L7_2 = L3_2.isDungeon
  end
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = _UPVALUE0_
  L4_2 = L4_2.GAMEMODE_CATACOMBS
  if A2_2 == L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2.SetFlag
    L6_2 = "isInCatacombs"
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = _UPVALUE0_
  L4_2 = L4_2.GAMEMODE_DUEL
  if A2_2 == L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2.SetFlag
    L6_2 = "isInDuel"
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = _UPVALUE0_
  L4_2 = L4_2.GAMEMODE_ARENA_3v3
  if A2_2 ~= L4_2 then
    L4_2 = _UPVALUE0_
    L4_2 = L4_2.GAMEMODE_ARENA_3v3_02
    if A2_2 ~= L4_2 then
      goto lbl_40
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2.SetFlag
  L6_2 = "isInPvpArena"
  L7_2 = true
  L4_2(L5_2, L6_2, L7_2)
  ::lbl_40::
  L4_2 = _UPVALUE0_
  L5_2 = L4_2
  L4_2 = L4_2.IsOutpostRushMode
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2.SetFlag
    L6_2 = "isInOutpostRush"
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = _UPVALUE0_
  L4_2 = L4_2.GAMEMODE_CAPTURE_THE_FLAG
  if A2_2 == L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2.SetFlag
    L6_2 = "isInCaptureTheFlag"
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = _UPVALUE0_
  L4_2 = L4_2.GAMEMODE_BATTLE_ROYALE
  if A2_2 == L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2.SetFlag
    L6_2 = "isInBattleRoyale"
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
  end
end

L5_1.OnEnteredGameMode = L9_1

function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = GameModeDataManagerBus
  L3_2 = L3_2.Broadcast
  L3_2 = L3_2.GetGameModeStaticData
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.isDungeon
  if L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2.SetFlag
    L6_2 = "isInDungeon"
    L7_2 = false
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = _UPVALUE0_
  L4_2 = L4_2.GAMEMODE_CATACOMBS
  if A2_2 == L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2.SetFlag
    L6_2 = "isInCatacombs"
    L7_2 = false
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = _UPVALUE0_
  L4_2 = L4_2.GAMEMODE_ARENA_3v3
  if A2_2 ~= L4_2 then
    L4_2 = _UPVALUE0_
    L4_2 = L4_2.GAMEMODE_ARENA_3v3_02
    if A2_2 ~= L4_2 then
      goto lbl_33
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2.SetFlag
  L6_2 = "isInPvpArena"
  L7_2 = false
  L4_2(L5_2, L6_2, L7_2)
  ::lbl_33::
  L4_2 = _UPVALUE0_
  L4_2 = L4_2.GAMEMODE_DUEL
  if A2_2 == L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2.SetFlag
    L6_2 = "isInDuel"
    L7_2 = false
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = _UPVALUE0_
  L5_2 = L4_2
  L4_2 = L4_2.IsOutpostRushMode
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2.SetFlag
    L6_2 = "isInOutpostRush"
    L7_2 = false
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = _UPVALUE0_
  L4_2 = L4_2.GAMEMODE_CAPTURE_THE_FLAG
  if A2_2 == L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2.SetFlag
    L6_2 = "isInCaptureTheFlag"
    L7_2 = false
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = _UPVALUE0_
  L4_2 = L4_2.GAMEMODE_BATTLE_ROYALE
  if A2_2 == L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2.SetFlag
    L6_2 = "isInBattleRoyale"
    L7_2 = false
    L4_2(L5_2, L6_2, L7_2)
  end
end

L5_1.OnExitedGameMode = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.canvasNameToCanvasInfo
  L1_2 = L1_2.JournalScreen
  L3_2 = A0_2
  L2_2 = A0_2.ForwardToCanvas
  L4_2 = L1_2
  
  function L5_2(A0_3)
    local L1_3
    L1_3 = DynamicBus
    L1_3 = L1_3.JournalScreen
    L1_3 = L1_3.Broadcast
    L1_3 = L1_3.ShowEndgameGuild
    L1_3()
  end
  
  L2_2(L3_2, L4_2, L5_2)
end

L5_1.ShowEndgameGuide = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.canvasNameToCanvasInfo
  L1_2 = L1_2.JournalScreen
  L3_2 = A0_2
  L2_2 = A0_2.ForwardToCanvas
  L4_2 = L1_2
  
  function L5_2(A0_3)
    local L1_3
    L1_3 = DynamicBus
    L1_3 = L1_3.JournalScreen
    L1_3 = L1_3.Broadcast
    L1_3 = L1_3.ShowFastTravelGuide
    L1_3()
  end
  
  L2_2(L3_2, L4_2, L5_2)
end

L5_1.ShowFastTravelGuide = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.canvasNameToCanvasInfo
  L1_2 = L1_2.PUGFinderScreen
  L3_2 = A0_2
  L2_2 = A0_2.ForwardToCanvas
  L4_2 = L1_2
  
  function L5_2(A0_3)
    local L1_3
    L1_3 = DynamicBus
    L1_3 = L1_3.PUGFinderScreen
    L1_3 = L1_3.Broadcast
    L1_3 = L1_3.ShowOutpostRushSignUp
    L1_3()
  end
  
  L2_2(L3_2, L4_2, L5_2)
end

L5_1.ShowOutpostRushSignUp = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.canvasNameToCanvasInfo
  L1_2 = L1_2.JournalScreen
  L3_2 = A0_2
  L2_2 = A0_2.ForwardToCanvas
  L4_2 = L1_2
  
  function L5_2(A0_3)
    local L1_3
    L1_3 = DynamicBus
    L1_3 = L1_3.JournalScreen
    L1_3 = L1_3.Broadcast
    L1_3 = L1_3.ShowPvPGuide
    L1_3()
  end
  
  L2_2(L3_2, L4_2, L5_2)
end

L5_1.ShowPvPGuide = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.canvasNameToCanvasInfo
  L1_2 = L1_2.JournalScreen
  L3_2 = A0_2
  L2_2 = A0_2.ForwardToCanvas
  L4_2 = L1_2
  
  function L5_2(A0_3)
    local L1_3
    L1_3 = DynamicBus
    L1_3 = L1_3.JournalScreen
    L1_3 = L1_3.Broadcast
    L1_3 = L1_3.ShowFactionGuide
    L1_3()
  end
  
  L2_2(L3_2, L4_2, L5_2)
end

L5_1.ShowFactionGuide = L9_1

function L9_1(A0_2)
  local L1_2
  L1_2 = "ConversationScreenV2"
  return L1_2
end

L5_1.GetConversationCanvasName = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A0_2
  L2_2 = A0_2.GetConversationCanvasName
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.canvasNameToCanvasInfo
  L3_2 = L3_2[L2_2]
  L4_2 = {}
  L5_2 = {}
  L4_2.options = L5_2
  L5_2 = A1_2.title
  L4_2.title = L5_2
  L5_2 = A1_2.dialogue
  L4_2.dialogue = L5_2
  L5_2 = A1_2.responseType
  L4_2.responseType = L5_2
  L5_2 = A1_2.dialogueId
  L4_2.dialogueId = L5_2
  L5_2 = 1
  L6_2 = A1_2.options
  L6_2 = #L6_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L4_2.options
    L10_2 = {}
    L11_2 = A1_2.options
    L11_2 = L11_2[L8_2]
    L11_2 = L11_2.text
    L10_2.text = L11_2
    L11_2 = A1_2.options
    L11_2 = L11_2[L8_2]
    L11_2 = L11_2.optionType
    L10_2.optionType = L11_2
    L11_2 = A1_2.options
    L11_2 = L11_2[L8_2]
    L11_2 = L11_2.dataId
    L10_2.dataId = L11_2
    L9_2[L8_2] = L10_2
  end
  L5_2 = A1_2.responseType
  L6_2 = eConversationResponseType_Invalid
  if L5_2 ~= L6_2 then
    L5_2 = A1_2.options
    L5_2 = #L5_2
    if L5_2 ~= 0 then
      goto lbl_58
    end
    L5_2 = A1_2.title
    if L5_2 ~= "" then
      goto lbl_58
    end
    L5_2 = A1_2.dialogueId
    if L5_2 ~= 0 then
      goto lbl_58
    end
    L5_2 = A1_2.dialogue
    if L5_2 ~= "" then
      goto lbl_58
    end
  end
  L5_2 = L3_2.isLoaded
  if not L5_2 then
    return
  end
  ::lbl_58::
  L6_2 = A0_2
  L5_2 = A0_2.ForwardToCanvas
  L7_2 = L3_2
  
  function L8_2(A0_3)
    local L1_3, L2_3
    L1_3 = DynamicBus
    L2_3 = _UPVALUE0_
    L2_3 = L2_3.name
    L1_3 = L1_3[L2_3]
    L1_3 = L1_3.Broadcast
    L1_3 = L1_3.OnConversationStateChange
    L2_3 = _UPVALUE1_
    L1_3(L2_3)
  end
  
  L5_2(L6_2, L7_2, L8_2)
end

L5_1.OnConversationStateChange = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.GetConversationCanvasName
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2.canvasNameToCanvasInfo
  L2_2 = L2_2[L1_2]
  L4_2 = A0_2
  L3_2 = A0_2.ForwardToCanvas
  L5_2 = L2_2
  
  function L6_2(A0_3)
    local L1_3, L2_3
    L1_3 = DynamicBus
    L2_3 = _UPVALUE0_
    L2_3 = L2_3.name
    L1_3 = L1_3[L2_3]
    L1_3 = L1_3.Broadcast
    L1_3 = L1_3.ShowTransmogMenu
    L1_3()
  end
  
  L3_2(L4_2, L5_2, L6_2)
end

L5_1.ShowTransmogMenu = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.GetConversationCanvasName
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2.canvasNameToCanvasInfo
  L2_2 = L2_2[L1_2]
  L4_2 = A0_2
  L3_2 = A0_2.ForwardToCanvas
  L5_2 = L2_2
  
  function L6_2(A0_3)
    local L1_3, L2_3
    L1_3 = DynamicBus
    L2_3 = _UPVALUE0_
    L2_3 = L2_3.name
    L1_3 = L1_3[L2_3]
    L1_3 = L1_3.Broadcast
    L1_3 = L1_3.ShowBarbershopMenu
    L1_3()
  end
  
  L3_2(L4_2, L5_2, L6_2)
end

L5_1.ShowBarbershopMenu = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2.GetConversationCanvasName
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.canvasNameToCanvasInfo
  L3_2 = L3_2[L2_2]
  L5_2 = A0_2
  L4_2 = A0_2.ForwardToCanvas
  L6_2 = L3_2
  
  function L7_2(A0_3)
    local L1_3, L2_3
    L1_3 = DynamicBus
    L2_3 = _UPVALUE0_
    L2_3 = L2_3.name
    L1_3 = L1_3[L2_3]
    L1_3 = L1_3.Broadcast
    L1_3 = L1_3.ShowFactionSelection
    L2_3 = _UPVALUE1_
    L1_3(L2_3)
  end
  
  L4_2(L5_2, L6_2, L7_2)
end

L5_1.ShowFactionSelection = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.GetConversationCanvasName
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2.canvasNameToCanvasInfo
  L2_2 = L2_2[L1_2]
  L4_2 = A0_2
  L3_2 = A0_2.ForwardToCanvas
  L5_2 = L2_2
  
  function L6_2(A0_3)
    local L1_3, L2_3
    L1_3 = DynamicBus
    L2_3 = _UPVALUE0_
    L2_3 = L2_3.name
    L1_3 = L1_3[L2_3]
    L1_3 = L1_3.Broadcast
    L1_3 = L1_3.OnCinematicVideoStartFailed
    L1_3()
  end
  
  L3_2(L4_2, L5_2, L6_2)
end

L5_1.OnCinematicVideoStartFailed = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.canvasNameToCanvasInfo
  L2_2 = L2_2.Compensations
  L4_2 = A0_2
  L3_2 = A0_2.ForwardToCanvas
  L5_2 = L2_2
  
  function L6_2(A0_3)
    local L1_3, L2_3
    L1_3 = DynamicBus
    L1_3 = L1_3.Compensations
    L1_3 = L1_3.Broadcast
    L1_3 = L1_3.OnMyMakeGoodsUpdate
    L2_3 = _UPVALUE0_
    L1_3(L2_3)
  end
  
  L3_2(L4_2, L5_2, L6_2)
end

L5_1.OnMyMakeGoodsUpdate = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = _UPVALUE0_
  L3_2 = L2_2
  L2_2 = L2_2.GetPaginationData
  L4_2 = Contract
  L4_2 = L4_2.GetMaxOpenContractsPerPlayer
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = _UPVALUE0_
  L4_2 = L3_2
  L3_2 = L3_2.LookupMakeGoodsForLocalPlayer
  L5_2 = A0_2
  
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L2_3 = A1_3
    if not L2_3 then
      L3_3 = true
      return L3_3
    end
    L3_3 = _UPVALUE0_
    L4_3 = L3_3
    L3_3 = L3_3.ContractsVectorToTable
    L5_3 = L2_3
    L3_3 = L3_3(L4_3, L5_3)
    L4_3 = 1
    L5_3 = #L3_3
    L6_3 = 1
    for L7_3 = L4_3, L5_3, L6_3 do
      L8_3 = L3_3[L7_3]
      L8_3 = L8_3.statusEnum
      L9_3 = eContractStatus_Available
      if L8_3 == L9_3 then
        L8_3 = L3_3[L7_3]
        L8_3.status = "@ui_unclaimed_contract"
      else
        L8_3 = L3_3[L7_3]
        L8_3.status = "@ui_claimed"
      end
    end
    L5_3 = A0_3
    L4_3 = A0_3.CountUnclaimedCompensationsItems
    L6_3 = L3_3
    L4_3 = L4_3(L5_3, L6_3)
    L6_3 = A0_3
    L5_3 = A0_3.OnReceivePendingCompensations
    L7_3 = L4_3
    L5_3(L6_3, L7_3)
    L5_3 = true
    return L5_3
  end
  
  function L7_2(A0_3, A1_3)
    local L2_3
    L2_3 = false
    return L2_3
  end
  
  L8_2 = eContractEventOpenFilter_All
  L9_2 = eContractEventRoleFilter_All
  L10_2 = L2_2.contractsPerPage
  L11_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end

L5_1.CreateMakeGoodList = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 == nil then
    return
  end
  L2_2 = UiNotificationsBus
  L2_2 = L2_2.Broadcast
  L2_2 = L2_2.GetNumNotificationsByType
  L3_2 = "PendingCompensations"
  L2_2 = L2_2(L3_2)
  if A1_2 ~= 0 then
    L3_2 = FtueSystemRequestBus
    L3_2 = L3_2.Broadcast
    L3_2 = L3_2.IsFtue
    L3_2 = L3_2()
    if not L3_2 then
      L3_2 = A0_2.MAX_ACTIVE_NOTIFICATIONS
      if L2_2 < L3_2 then
        L3_2 = NotificationData
        L3_2 = L3_2()
        L3_2.type = "PendingCompensations"
        L3_2.title = "@compensations_notification_title"
        L3_2.hasChoice = true
        L4_2 = A0_2.entityId
        L3_2.contextId = L4_2
        L3_2.declineTextOverride = "@ui_dismiss"
        L3_2.acceptTextOverride = "@ui_view"
        L3_2.callbackName = "OnAcceptCompensationNotification"
        if A1_2 == 1 then
          L4_2 = GetLocalizedReplacementText
          L5_2 = "@ui_compensations_available_desc_one"
          L6_2 = {}
          L7_2 = ColorRgbaToHexString
          L8_2 = A0_2.UIStyle
          L8_2 = L8_2.COLOR_YELLOW
          L7_2 = L7_2(L8_2)
          L6_2.color = L7_2
          L4_2 = L4_2(L5_2, L6_2)
          L3_2.text = L4_2
        else
          L4_2 = GetLocalizedReplacementText
          L5_2 = "@ui_compensations_available_desc_mult"
          L6_2 = {}
          L7_2 = ColorRgbaToHexString
          L8_2 = A0_2.UIStyle
          L8_2 = L8_2.COLOR_YELLOW
          L7_2 = L7_2(L8_2)
          L6_2.color = L7_2
          L6_2.number = A1_2
          L4_2 = L4_2(L5_2, L6_2)
          L3_2.text = L4_2
        end
        L5_2 = A0_2
        L4_2 = A0_2.EnqueueNotificationWithCallback
        L6_2 = L3_2
        L7_2 = A0_2
        L8_2 = A0_2.OnAcceptCompensationNotification
        L4_2(L5_2, L6_2, L7_2, L8_2)
      end
    end
  end
end

L5_1.OnReceivePendingCompensations = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 0
  L3_2 = 1
  L4_2 = #A1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    L7_2 = L7_2.statusEnum
    L8_2 = eContractStatus_Available
    if L7_2 == L8_2 then
      L2_2 = L2_2 + 1
    end
  end
  L3_2 = LyShineDataLayerBus
  L3_2 = L3_2.Broadcast
  L3_2 = L3_2.SetData
  L4_2 = "Hud.LocalPlayer.Contracts.AvailableMakeGoods"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if 0 < L2_2 then
    L3_2 = UiAnalyticsEvent
    L4_2 = "PlayerHaveUnclaimedMakeGoodContract"
    L3_2 = L3_2(L4_2)
    L5_2 = L3_2
    L4_2 = L3_2.AddAttribute
    L6_2 = "UnclaimedCount"
    L7_2 = tostring
    L8_2 = L2_2
    L7_2, L8_2 = L7_2(L8_2)
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L5_2 = L3_2
    L4_2 = L3_2.Send
    L4_2(L5_2)
  end
  return L2_2
end

L5_1.CountUnclaimedCompensationsItems = L9_1

function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if A2_2 then
    L3_2 = LyShineManagerBus
    L3_2 = L3_2.Broadcast
    L3_2 = L3_2.SetState
    L4_2 = 2109352403
    L3_2(L4_2)
  end
end

L5_1.OnAcceptCompensationNotification = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.dataLayer
  L3_2 = L2_2
  L2_2 = L2_2.GetDataFromNode
  L4_2 = "Hud.LocalPlayer.Position"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = LandClaimRequestBus
  L3_2 = L3_2.Broadcast
  L3_2 = L3_2.GetNearestLandmarkByType
  L4_2 = A1_2
  L5_2 = eTerritoryLandmarkType_Fort
  L6_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = LandClaimRequestBus
  L4_2 = L4_2.Broadcast
  L4_2 = L4_2.GetNearestLandmarkByType
  L5_2 = A1_2
  L6_2 = eTerritoryLandmarkType_InfluenceTower
  L7_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = L3_2.worldPosition
  L6_2 = L5_2
  L5_2 = L5_2.GetDistanceSq
  L7_2 = L2_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L4_2.worldPosition
  L7_2 = L6_2
  L6_2 = L6_2.GetDistanceSq
  L8_2 = L2_2
  L6_2 = L6_2(L7_2, L8_2)
  if L5_2 > L6_2 then
    L7_2 = true
    L8_2 = L4_2
    return L7_2, L8_2
  end
  L7_2 = false
  L8_2 = L3_2
  return L7_2, L8_2
end

L5_1.GetClosestFCP = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.isWarDataServiceAvailable
  if L1_2 then
    L1_2 = A0_2.isLandClaimManagerAvailable
    if L1_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = A0_2.dataLayer
  L2_2 = L1_2
  L1_2 = L1_2.GetDataFromNode
  L3_2 = "Hud.LocalPlayer.CurrentAreaTerritory.ClaimKey"
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.GetClosestFCP
  L4_2 = L1_2
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = L3_2.actorId
    L5_2 = LandClaimRequestBus
    L5_2 = L5_2.Broadcast
    L5_2 = L5_2.GetLandmarkIndex
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if not L5_2 then
      return
    end
    L6_2 = LandClaimRequestBus
    L6_2 = L6_2.Broadcast
    L6_2 = L6_2.GetInfluenceTowerClaimKey
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    A0_2.landClaimDataKey = L6_2
  else
    A0_2.landClaimDataKey = L1_2
  end
  L4_2 = A0_2.landClaimDataKey
  if L4_2 ~= nil then
    L4_2 = A0_2.landClaimDataKey
    if L4_2 ~= 0 then
      L4_2 = FactionControlClientDataRequestBus
      L4_2 = L4_2.Broadcast
      L4_2 = L4_2.GetIsInTriggerArea
      L5_2 = A0_2.landClaimDataKey
      L4_2 = L4_2(L5_2)
      if L4_2 then
        L6_2 = A0_2
        L5_2 = A0_2.OnFactionControlLocalPlayerEntered
        L7_2 = nil
        L5_2(L6_2, L7_2)
      else
        L6_2 = A0_2
        L5_2 = A0_2.OnFactionControlLocalPlayerExited
        L7_2 = nil
        L5_2(L6_2, L7_2)
      end
    end
  end
end

L5_1.CheckInitialFCPConditions = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.SetFlag
  L4_2 = "isInFcpArea"
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
end

L5_1.OnFactionControlLocalPlayerEntered = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.SetFlag
  L4_2 = "isInFcpArea"
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
end

L5_1.OnFactionControlLocalPlayerExited = L9_1

function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A1_2 == "fishing_activate" then
    L3_2 = A0_2.dataLayer
    L4_2 = L3_2
    L3_2 = L3_2.GetDataFromNode
    L5_2 = "Hud.LocalPlayer.HudComponent.GatheringEntityId"
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = UiGatheringComponentRequestsBus
    L4_2 = L4_2.Event
    L4_2 = L4_2.GetValidGatheringToolList
    L5_2 = L3_2
    L6_2 = 1975517117
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L6_2 = L4_2
      L5_2 = L4_2.IsValid
      L5_2 = L5_2(L6_2)
      if L5_2 then
        goto lbl_53
      end
    end
    L5_2 = FtueSystemRequestBus
    L5_2 = L5_2.Broadcast
    L5_2 = L5_2.IsFtue
    L5_2 = L5_2()
    if not L5_2 then
      L6_2 = "@ui_no_pole_instruction"
      L7_2 = A0_2.dataLayer
      L8_2 = L7_2
      L7_2 = L7_2.GetDataFromNode
      L9_2 = "Hud.LocalPlayer.HudComponent.PaperdollEntityId"
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = PaperdollRequestBus
      L8_2 = L8_2.Event
      L8_2 = L8_2.GetSlot
      L9_2 = L7_2
      L10_2 = ePaperDollSlotTypes_Fishing
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 then
        L10_2 = L8_2
        L9_2 = L8_2.IsBroken
        L9_2 = L9_2(L10_2)
        if L9_2 then
          L6_2 = "@ui_pole_broken"
        end
      end
      L9_2 = NotificationData
      L9_2 = L9_2()
      L9_2.type = "Minor"
      L9_2.text = L6_2
      L9_2.allowDuplicates = false
      L10_2 = UiNotificationsBus
      L10_2 = L10_2.Broadcast
      L10_2 = L10_2.EnqueueNotification
      L11_2 = L9_2
      L10_2(L11_2)
    end
  end
  ::lbl_53::
end

L5_1.OnCryAction = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.SetFlag
  L4_2 = "isAtSiegeWarfare"
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2.canvasNameToCanvasInfo
  L2_2 = L2_2.WarboardLiteHUD
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2.ForwardToCanvas
    L5_2 = L2_2
    
    function L6_2(A0_3)
      local L1_3, L2_3
      L1_3 = DynamicBus
      L1_3 = L1_3.WarboardLiteHUDBus
      L1_3 = L1_3.Broadcast
      L1_3 = L1_3.OnSiegeWarfareStarted
      L2_3 = _UPVALUE0_
      L1_3(L2_3)
    end
    
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = A0_2.canvasNameToCanvasInfo
  L3_2 = L3_2.WarboardInGame
  if L3_2 then
    L5_2 = A0_2
    L4_2 = A0_2.ForwardToCanvas
    L6_2 = L3_2
    
    function L7_2(A0_3)
      local L1_3, L2_3
      L1_3 = DynamicBus
      L1_3 = L1_3.WarboardInGameBus
      L1_3 = L1_3.Broadcast
      L1_3 = L1_3.OnSiegeWarfareStarted
      L2_3 = _UPVALUE0_
      L1_3(L2_3)
    end
    
    L4_2(L5_2, L6_2, L7_2)
  end
end

L5_1.OnSiegeWarfareStarted = L9_1

function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2
  L3_2 = A0_2.SetFlag
  L5_2 = "isAtSiegeWarfare"
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2.canvasNameToCanvasInfo
  L3_2 = L3_2.WarboardLiteHUD
  if L3_2 then
    L5_2 = A0_2
    L4_2 = A0_2.ForwardToCanvas
    L6_2 = L3_2
    
    function L7_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = DynamicBus
      L1_3 = L1_3.WarboardLiteHUDBus
      L1_3 = L1_3.Broadcast
      L1_3 = L1_3.OnSiegeWarfareEnded
      L2_3 = _UPVALUE0_
      L3_3 = _UPVALUE1_
      L1_3(L2_3, L3_3)
    end
    
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = A0_2.canvasNameToCanvasInfo
  L4_2 = L4_2.WarboardInGame
  if L4_2 then
    L6_2 = A0_2
    L5_2 = A0_2.ForwardToCanvas
    L7_2 = L4_2
    
    function L8_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = DynamicBus
      L1_3 = L1_3.WarboardInGameBus
      L1_3 = L1_3.Broadcast
      L1_3 = L1_3.OnSiegeWarfareEnded
      L2_3 = _UPVALUE0_
      L3_3 = _UPVALUE1_
      L1_3(L2_3, L3_3)
    end
    
    L5_2(L6_2, L7_2, L8_2)
  end
end

L5_1.OnSiegeWarfareEnded = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.SetFlag
  L4_2 = "isInfluenceRaceActive"
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
end

L5_1.OnInfluenceRaceScheduled = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.SetFlag
  L4_2 = "isInfluenceRaceActive"
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
end

L5_1.OnInfluenceRaceStartingSoon = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.SetFlag
  L4_2 = "isInfluenceRaceActive"
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
end

L5_1.OnInfluenceRaceStartingNow = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2.SetFlag
  L4_2 = "isInfluenceRaceActive"
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2.canvasNameToCanvasInfo
  L2_2 = L2_2.InfluenceRaceResults
  if L2_2 then
    L3_2 = L2_2.isLoaded
    if L3_2 then
      return
    end
    L3_2 = {}
    L4_2 = 1
    L5_2 = #A1_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = A1_2[L7_2]
      L3_2[L7_2] = L8_2
    end
    L5_2 = A0_2
    L4_2 = A0_2.ForwardToCanvas
    L6_2 = L2_2
    
    function L7_2(A0_3)
      local L1_3, L2_3
      L1_3 = DynamicBus
      L1_3 = L1_3.InfluenceRaceResults
      L1_3 = L1_3.Broadcast
      L1_3 = L1_3.OnInfluenceRaceEnded
      L2_3 = _UPVALUE0_
      L1_3(L2_3)
    end
    
    L4_2(L5_2, L6_2, L7_2)
  end
end

L5_1.OnInfluenceRaceEnded = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.SetFlag
  L3_2 = "isInfluenceRaceActive"
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end

L5_1.OnInfluenceRaceButtonActive = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.SetFlag
  L3_2 = "isInfluenceRaceActive"
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end

L5_1.OnInfluenceRaceDismissed = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.inGameSurveyEnabled
  if not L1_2 then
    return
  end
  L1_2 = A0_2.canvasNameToCanvasInfo
  L1_2 = L1_2.InGameSurvey
  L2_2 = OptionsDataBus
  L2_2 = L2_2.Broadcast
  L2_2 = L2_2.ShouldShowInGameSurvey
  L2_2 = L2_2()
  L3_2 = L2_2.showSurvey
  if L3_2 then
    L3_2 = {}
    L4_2 = L2_2.playerAge
    L3_2.playerAge = L4_2
    L4_2 = L2_2.threshold
    L3_2.threshold = L4_2
    L5_2 = A0_2
    L4_2 = A0_2.ForwardToCanvas
    L6_2 = L1_2
    
    function L7_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = DynamicBus
      L1_3 = L1_3.InGameSurvey
      L1_3 = L1_3.Broadcast
      L1_3 = L1_3.ShowInGameSurvey
      L2_3 = _UPVALUE0_
      L2_3 = L2_3.playerAge
      L3_3 = _UPVALUE0_
      L3_3 = L3_3.threshold
      L1_3(L2_3, L3_3)
    end
    
    L4_2(L5_2, L6_2, L7_2)
  end
end

L5_1.TryShowInGameSurvey = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.canvasNameToCanvasInfo
  L2_2 = L2_2.ReportPlayer
  L4_2 = A0_2
  L3_2 = A0_2.ForwardToCanvas
  L5_2 = L2_2
  
  function L6_2(A0_3)
    local L1_3, L2_3
    L1_3 = DynamicBus
    L1_3 = L1_3.ReportPlayer
    L1_3 = L1_3.Broadcast
    L1_3 = L1_3.OpenReport
    L2_3 = _UPVALUE0_
    L1_3(L2_3)
  end
  
  L3_2(L4_2, L5_2, L6_2)
end

L5_1.OpenReport = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.canvasNameToCanvasInfo
  L2_2 = L2_2.TradeScreen
  L3_2 = L2_2.isLoaded
  if not L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.ForwardToCanvas
    L5_2 = L2_2
    
    function L6_2(A0_3)
      local L1_3, L2_3
      L1_3 = DynamicBus
      L1_3 = L1_3.TradeScreen
      L1_3 = L1_3.Broadcast
      L1_3 = L1_3.OnTradeSessionStarted
      L2_3 = _UPVALUE0_
      L1_3(L2_3)
    end
    
    L3_2(L4_2, L5_2, L6_2)
  end
end

L5_1.OnTradeSessionStarted = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.IsStateReady
  L4_2 = 1652736112
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = DynamicBus
    L2_2 = L2_2.SeasonsRewardsScreen
    L2_2 = L2_2.Broadcast
    L2_2 = L2_2.OnActivitiesTaskCompleted
    L3_2 = A1_2
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.PrepareState
    L4_2 = 1652736112
    L2_2(L3_2, L4_2)
    L2_2 = _UPVALUE0_
    L3_2 = L2_2
    L2_2 = L2_2.Delay
    L4_2 = 0.5
    L5_2 = A0_2
    
    function L6_2(A0_3)
      local L1_3, L2_3, L3_3
      L2_3 = A0_3
      L1_3 = A0_3.OnActivitiesTaskCompleted
      L3_3 = _UPVALUE0_
      L1_3(L2_3, L3_3)
    end
    
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end

L5_1.OnActivitiesTaskCompleted = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.SetFlag
  L4_2 = "requireQueueHUD"
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2.canvasNameToCanvasInfo
  L2_2 = L2_2.QueueHud
  L3_2 = L2_2.isLoaded
  if not L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.ForwardToCanvas
    L5_2 = L2_2
    
    function L6_2(A0_3)
      local L1_3, L2_3
      L1_3 = DynamicBus
      L1_3 = L1_3.QueueHUDRequestBus
      L1_3 = L1_3.Broadcast
      L1_3 = L1_3.OnStartMatchmakingRoleSelection
      L2_3 = _UPVALUE0_
      L1_3(L2_3)
    end
    
    L3_2(L4_2, L5_2, L6_2)
  end
end

L5_1.OnStartMatchmakingRoleSelection = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.SetFlag
  L3_2 = "requireQueueHUD"
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end

L5_1.OnMatchmakingRoleSelectionPhaseCanceled = L9_1

function L9_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L6_2 = A0_2
  L5_2 = A0_2.SetFlag
  L7_2 = "isInWarDeclaration"
  L8_2 = true
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = DynamicBus
  L5_2 = L5_2.WarDeclarationPopup
  L5_2 = L5_2.Broadcast
  L5_2 = L5_2.IsScreenLoaded
  L5_2 = L5_2()
  if L5_2 then
    L6_2 = _UPVALUE0_
    L7_2 = L6_2
    L6_2 = L6_2.ShowWarDeclarationPopup
    L8_2 = A1_2
    L9_2 = A2_2
    L10_2 = A3_2
    L11_2 = A4_2
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    return
  end
  L6_2 = A0_2.canvasNameToCanvasInfo
  L6_2 = L6_2.WarDeclarationPopup
  L8_2 = A0_2
  L7_2 = A0_2.ForwardToCanvas
  L9_2 = L6_2
  
  function L10_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = _UPVALUE0_
    L2_3 = L1_3
    L1_3 = L1_3.ShowWarDeclarationPopup
    L3_3 = _UPVALUE1_
    L4_3 = _UPVALUE2_
    L5_3 = _UPVALUE3_
    L6_3 = _UPVALUE4_
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
  end
  
  L7_2(L8_2, L9_2, L10_2)
end

L5_1.OnShowWarDeclaration = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.canvasNameToCanvasInfo
  L2_2 = L2_2.QueueHud
  L3_2 = L2_2.isLoaded
  if not L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.ForwardToCanvas
    L5_2 = L2_2
    
    function L6_2(A0_3)
      local L1_3, L2_3
      L1_3 = DynamicBus
      L1_3 = L1_3.QueueHUDRequestBus
      L1_3 = L1_3.Broadcast
      L1_3 = L1_3.OnEligibleForDungeonFastTravelChanged
      L2_3 = _UPVALUE0_
      L1_3(L2_3)
    end
    
    L3_2(L4_2, L5_2, L6_2)
  end
end

L5_1.OnEligibleForDungeonFastTravelChanged = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.canvasNameToCanvasInfo
  L1_2 = L1_2.QueueHud
  L2_2 = L1_2.isLoaded
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.ForwardToCanvas
    L4_2 = L1_2
    
    function L5_2(A0_3)
      local L1_3
      L1_3 = DynamicBus
      L1_3 = L1_3.QueueHUDRequestBus
      L1_3 = L1_3.Broadcast
      L1_3 = L1_3.OnExecuteExitDungeonInteractOption
      L1_3()
    end
    
    L2_2(L3_2, L4_2, L5_2)
  end
end

L5_1.OnExecuteExitDungeonInteractOption = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.canvasNameToCanvasInfo
  L2_2 = L2_2.QueueHud
  L4_2 = A0_2
  L3_2 = A0_2.ForwardToCanvas
  L5_2 = L2_2
  
  function L6_2(A0_3)
    local L1_3, L2_3
    L1_3 = DynamicBus
    L1_3 = L1_3.QueueHUDRequestBus
    L1_3 = L1_3.Broadcast
    L1_3 = L1_3.OnDungeonStateChanged
    L2_3 = _UPVALUE0_
    L1_3(L2_3)
  end
  
  L3_2(L4_2, L5_2, L6_2)
end

L5_1.OnDungeonStateChanged = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.canvasNameToCanvasInfo
  L2_2 = L2_2.QueueHud
  L4_2 = A0_2
  L3_2 = A0_2.ForwardToCanvas
  L5_2 = L2_2
  
  function L6_2(A0_3)
    local L1_3, L2_3
    L1_3 = DynamicBus
    L1_3 = L1_3.QueueHUDRequestBus
    L1_3 = L1_3.Broadcast
    L1_3 = L1_3.OnDungeonTimeChangedSeconds
    L2_3 = _UPVALUE0_
    L1_3(L2_3)
  end
  
  L3_2(L4_2, L5_2, L6_2)
end

L5_1.OnDungeonTimeChangedSeconds = L9_1

function L9_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = A0_2.canvasNameToCanvasInfo
  L5_2 = L5_2.HousingManagement
  L7_2 = A0_2
  L6_2 = A0_2.ForwardToCanvas
  L8_2 = L5_2
  
  function L9_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = DynamicBus
    L1_3 = L1_3.HousingManagement
    L1_3 = L1_3.Broadcast
    L1_3 = L1_3.OnRequestPayPropertyTaxPopup
    L2_3 = _UPVALUE0_
    L3_3 = _UPVALUE1_
    L4_3 = _UPVALUE2_
    L5_3 = _UPVALUE3_
    L1_3(L2_3, L3_3, L4_3, L5_3)
  end
  
  L6_2(L7_2, L8_2, L9_2)
end

L5_1.OnRequestPayPropertyTaxPopup = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.canvasNameToCanvasInfo
  L2_2 = L2_2.ControlHintsScreen
  L4_2 = A0_2
  L3_2 = A0_2.ForwardToCanvas
  L5_2 = L2_2
  
  function L6_2(A0_3)
    local L1_3, L2_3
    L1_3 = DynamicBus
    L1_3 = L1_3.ControlHintsScreen
    L1_3 = L1_3.Broadcast
    L1_3 = L1_3.UpdateFeedBackText
    L2_3 = _UPVALUE0_
    L1_3(L2_3)
  end
  
  L3_2(L4_2, L5_2, L6_2)
end

L5_1.UpdateControlHintsFeedBackText = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.SetFlag
  L4_2 = "isUsingControlHints"
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2.canvasNameToCanvasInfo
  L2_2 = L2_2.ControlHintsScreen
  L4_2 = A0_2
  L3_2 = A0_2.ForwardToCanvas
  L5_2 = L2_2
  
  function L6_2(A0_3)
    local L1_3, L2_3
    L1_3 = DynamicBus
    L1_3 = L1_3.ControlHintsScreen
    L1_3 = L1_3.Broadcast
    L1_3 = L1_3.SetControlHintsData
    L2_3 = _UPVALUE0_
    L1_3(L2_3)
  end
  
  L3_2(L4_2, L5_2, L6_2)
end

L5_1.SetControlHintsData = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.SetFlag
  L3_2 = "isUsingControlHints"
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2.canvasNameToCanvasInfo
  L1_2 = L1_2.ControlHintsScreen
  L3_2 = A0_2
  L2_2 = A0_2.ForwardToCanvas
  L4_2 = L1_2
  
  function L5_2(A0_3)
    local L1_3
    L1_3 = DynamicBus
    L1_3 = L1_3.ControlHintsScreen
    L1_3 = L1_3.Broadcast
    L1_3 = L1_3.ClearControlHintsData
    L1_3()
  end
  
  L2_2(L3_2, L4_2, L5_2)
end

L5_1.ClearControlHintsData = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    return
  end
  L2_2 = Platform
  L2_2 = L2_2.Current
  L3_2 = Platform
  L3_2 = L3_2.Prospero
  if L2_2 == L3_2 then
    L2_2 = FtueSystemRequestBus
    L2_2 = L2_2.Broadcast
    L2_2 = L2_2.IsFtue
    L2_2 = L2_2()
    if not L2_2 then
      L2_2 = _UPVALUE0_
      L3_2 = L2_2
      L2_2 = L2_2.OpenToActivity
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end

L5_1.RequestGameModeSignUpFromActivity = L9_1
return L5_1
