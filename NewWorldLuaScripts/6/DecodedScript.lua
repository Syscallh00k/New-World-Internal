local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = g_Reflect
L1_1 = L0_1
L0_1 = L0_1.RequireReflectionCategory
L2_1 = eReflectionCategory_CrySystem
L0_1(L1_1, L2_1)
L0_1 = g_Reflect
L1_1 = L0_1
L0_1 = L0_1.RequireReflectionCategory
L2_1 = eReflectionCategory_LoadingScreen
L0_1(L1_1, L2_1)
L0_1 = RequireScript
L1_1 = "LyShineUI._Common.BaseScreen"
L0_1 = L0_1(L1_1)
L1_1 = RequireScript
L2_1 = "LyShineUI._Common.TimeHelperFunctions"
L1_1 = L1_1(L2_1)
L2_1 = RequireScript
L3_1 = "LyShineUI._Common.ControllerCommon"
L2_1 = L2_1(L3_1)
L3_1 = RequireScript
L4_1 = "LyShineUI.Controller.VirtualCursorTransitionData"
L3_1 = L3_1(L4_1)
L4_1 = RequireScript
L5_1 = "LyShineUI.Controller.VirtualCursorFrictionData"
L4_1 = L4_1(L5_1)
L5_1 = RequireScript
L6_1 = "LyShineUI._Common.CanvasCommon"
L5_1 = L5_1(L6_1)
L6_1 = {}
L7_1 = {}
L8_1 = {}
L9_1 = EntityId
L9_1 = L9_1()
L8_1.default = L9_1
L7_1.CursorImage = L8_1
L8_1 = {}
L9_1 = EntityId
L9_1 = L9_1()
L8_1.default = L9_1
L7_1.CursorHoverImage = L8_1
L8_1 = {}
L9_1 = EntityId
L9_1 = L9_1()
L8_1.default = L9_1
L7_1.CursorActiveImage = L8_1
L8_1 = {}
L9_1 = EntityId
L9_1 = L9_1()
L8_1.default = L9_1
L7_1.IsMagnetizedDebugImage = L8_1
L8_1 = {}
L9_1 = EntityId
L9_1 = L9_1()
L8_1.default = L9_1
L7_1.IsFrictionDebugImage = L8_1
L8_1 = {}
L9_1 = EntityId
L9_1 = L9_1()
L8_1.default = L9_1
L7_1.DebugPositionText = L8_1
L8_1 = {}
L9_1 = EntityId
L9_1 = L9_1()
L8_1.default = L9_1
L7_1.DebugBindImage = L8_1
L8_1 = {}
L9_1 = EntityId
L9_1 = L9_1()
L8_1.default = L9_1
L7_1.DebugCenterImage = L8_1
L8_1 = {}
L9_1 = EntityId
L9_1 = L9_1()
L8_1.default = L9_1
L7_1.EffectorNameDebugText = L8_1
L8_1 = {}
L9_1 = EntityId
L9_1 = L9_1()
L8_1.default = L9_1
L7_1.EffectorNameDebugTextBackground = L8_1
L8_1 = {}
L9_1 = EntityId
L9_1 = L9_1()
L8_1.default = L9_1
L7_1.CursorDebugInfoText = L8_1
L6_1.Properties = L7_1
L6_1.VIRTUAL_CURSOR_ACTION_MAP_NAME = "ui_virtual_cursor"
L6_1.PAN_X_AXIS = "ui_virtual_cursor_movex"
L6_1.PAN_Y_AXIS = "ui_virtual_cursor_movey"
L6_1.VIRTUAL_CURSOR_SELECT = "ui_virtual_cursor_click"
L6_1.VIRTUAL_CURSOR_SELECT_RELEASE = "ui_virtual_cursor_click_release"
L6_1.HOVER_FADE_TIME = 0.3
L6_1.HOVER_INVERSE_ROTATION_SPEED = 5
L6_1.DEFAULT_ICON_SCALE = 1
L6_1.SHRUNK_ICON_SCALE = 0.8
L6_1.EXPANDED_ICON_SCALE = 1.2
L6_1.CLICK_ACTIVE_TIME = 0.15
L6_1.DEADZONE_MIN_VALUE = 0.05
L6_1.DEADZONE_MAX_VALUE = 1
L6_1.hoverVisualEnabled = false
L6_1.clickVisualEnabled = false
L6_1.virtualCursorEnabled = false
L7_1 = Vector2
L8_1 = 0
L9_1 = 0
L7_1 = L7_1(L8_1, L9_1)
L6_1.controllerAxis = L7_1
L6_1.controllerStickIdle = false
L6_1.checkForMagnetismStart = false
L7_1 = EntityId
L7_1 = L7_1()
L6_1.magnetismEntityId = L7_1
L6_1.lastCompletedMagnetismEntityId = false
L7_1 = Vector2
L8_1 = 0
L9_1 = 0
L7_1 = L7_1(L8_1, L9_1)
L6_1.adjustedControllerInput = L7_1
L7_1 = Vector2
L8_1 = 0
L9_1 = 0
L7_1 = L7_1(L8_1, L9_1)
L6_1.virtualCursorPosition = L7_1
L6_1.currentCursorSpeed = 0
L7_1 = Vector2
L8_1 = 0
L9_1 = 0
L7_1 = L7_1(L8_1, L9_1)
L6_1.viewportBounds = L7_1
L6_1.virtualMouseHeld = false
L6_1.canvasEnabled = false
L6_1.isTicking = false
L6_1.controlsEnabled = true
L6_1.isMouseEnabled = true
L6_1.isWindowFocused = false
L6_1.isVirtualKeyboardEnabled = false
L7_1 = Vector2
L8_1 = 0
L9_1 = 0
L7_1 = L7_1(L8_1, L9_1)
L6_1.oldFocusPoint = L7_1
L7_1 = {}
L7_1[0] = true
L6_1.mScreenStatesToDisable = L7_1
L6_1.DISABLE_MAGNETISM = false
L6_1.DISABLE_FRICTION = false
L6_1.DEBUGGING_EFFECTORS_WITH_MOUSE = false
L6_1.DEBUGGING_SHOW_EFFECTOR_ICONS = false
L6_1.DEBUG_KEY = "ui_debugKey"
L6_1.DEBUGGING_DEAD_ZONES = false
L6_1.DEBUGGING_STICK_CURVE = false
L6_1.DEBUGGING_GREYBOX = false
L8_1 = L0_1
L7_1 = L0_1.CreateNewScreen
L9_1 = L6_1
L7_1(L8_1, L9_1)

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1
  L1_2 = L1_2.OnInit
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = _UPVALUE1_
  L2_2 = L1_2
  L1_2 = L1_2.Initialize
  L1_2(L2_2)
  L1_2 = DynamicBus
  L1_2 = L1_2.VirtualCursor
  L1_2 = L1_2.Connect
  L2_2 = A0_2.entityId
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = GetEpsilon
  L1_2 = L1_2()
  A0_2.EPSILON = L1_2
  A0_2.SQRT_2 = 1.4142
  L1_2 = {}
  A0_2.optionsData = L1_2
  L1_2 = A0_2.dataLayer
  L2_2 = L1_2
  L1_2 = L1_2.RegisterAndExecuteDataObserver
  L3_2 = A0_2
  L4_2 = "Hud.LocalPlayer.Options.Controls.VirtualCursor.Sensitivity"
  
  function L5_2(A0_3, A1_3)
    local L2_3
    L2_3 = A0_3.optionsData
    L2_3.sensitivity = A1_3
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.dataLayer
  L2_2 = L1_2
  L1_2 = L1_2.RegisterAndExecuteDataObserver
  L3_2 = A0_2
  L4_2 = "Hud.LocalPlayer.Options.Controls.VirtualCursor.MenuVibration"
  
  function L5_2(A0_3, A1_3)
    local L2_3
    L2_3 = A0_3.optionsData
    L2_3.menuVibration = A1_3
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.dataLayer
  L2_2 = L1_2
  L1_2 = L1_2.RegisterAndExecuteDataObserver
  L3_2 = A0_2
  L4_2 = "Hud.LocalPlayer.Options.Controls.VirtualCursor.DeadzoneMultiplier"
  
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.optionsData
    L2_3.deadzoneMultiplier = A1_3
    L3_3 = A0_3
    L2_3 = A0_3.CacheDeadzoneValues
    L2_3(L3_3)
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.dataLayer
  L2_2 = L1_2
  L1_2 = L1_2.RegisterAndExecuteDataObserver
  L3_2 = A0_2
  L4_2 = "Hud.LocalPlayer.Options.Controls.VirtualCursor.Magnetism.Enabled"
  
  function L5_2(A0_3, A1_3)
    local L2_3
    L2_3 = A0_3.optionsData
    L2_3.magnetismEnabled = A1_3
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.dataLayer
  L2_2 = L1_2
  L1_2 = L1_2.RegisterAndExecuteDataObserver
  L3_2 = A0_2
  L4_2 = "Hud.LocalPlayer.Options.Controls.VirtualCursor.Friction.Enabled"
  
  function L5_2(A0_3, A1_3)
    local L2_3
    L2_3 = A0_3.optionsData
    L2_3.frictionEnabled = A1_3
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.dataLayer
  L2_2 = L1_2
  L1_2 = L1_2.RegisterAndExecuteDataObserver
  L3_2 = A0_2
  L4_2 = "Hud.LocalPlayer.Options.Controls.VirtualCursor.Friction.SpeedModifier"
  
  function L5_2(A0_3, A1_3)
    local L2_3
    L2_3 = A0_3.optionsData
    L2_3.frictionSpeedModifer = A1_3
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = {}
  A0_2.stackConfig = L1_2
  L1_2 = A0_2.dataLayer
  L2_2 = L1_2
  L1_2 = L1_2.RegisterAndExecuteDataObserver
  L3_2 = A0_2
  L4_2 = "javelin.enable-menu-vibration"
  
  function L5_2(A0_3, A1_3)
    local L2_3
    L2_3 = A0_3.stackConfig
    L2_3.enableMenuVibration = A1_3
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2.SetIsTicking
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.BusConnect
  L3_2 = VirtualKeyboardNotificationBus
  L4_2 = A0_2.entityId
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.BusConnect
  L3_2 = UiCanvasSizeNotificationBus
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.BusConnect
  L3_2 = LastInputDeviceNotificationBus
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.OnLastInputDeviceChanged
  L3_2 = LyShineManagerBus
  L3_2 = L3_2.Broadcast
  L3_2 = L3_2.GetLastActionInputDevice
  L3_2, L4_2, L5_2, L6_2 = L3_2()
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2.BusConnect
  L3_2 = VirtualCursorNotificationBus
  L1_2(L2_2, L3_2)
  L1_2 = LyShineManagerBus
  L1_2 = L1_2.Broadcast
  L1_2 = L1_2.HasWindowFocusCallbacks
  L1_2 = L1_2()
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.BusConnect
    L3_2 = RawInputNotificationBusWin
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.OnWindowFocusChanged
  L3_2 = LyShineManagerBus
  L3_2 = L3_2.Broadcast
  L3_2 = L3_2.GetWindowFocus
  L3_2, L4_2, L5_2, L6_2 = L3_2()
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2.SetCanvasEnabled
  L3_2 = UiCanvasBus
  L3_2 = L3_2.Event
  L3_2 = L3_2.GetEnabled
  L4_2 = A0_2.canvasId
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2.BusConnect
  L3_2 = UiInputNotificationBus
  L1_2(L2_2, L3_2)
  L1_2 = UIInputRequestsBus
  L1_2 = L1_2.Broadcast
  L1_2 = L1_2.SetActionMapEnabled
  L2_2 = A0_2.VIRTUAL_CURSOR_ACTION_MAP_NAME
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.BusConnect
  L3_2 = LoadScreenNotificationBus
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.SetVirtualCursorConfigValues
  L3_2 = LyShineManagerBus
  L3_2 = L3_2.Broadcast
  L3_2 = L3_2.GetVirtualCursor
  L3_2, L4_2, L5_2, L6_2 = L3_2()
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = LyShineManagerBus
  L1_2 = L1_2.Broadcast
  L1_2 = L1_2.GetMouseEnabled
  L1_2 = L1_2()
  A0_2.isMouseEnabled = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.CheckIfVirtualCursorShouldBeEnabled
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.BusConnect
  L3_2 = CryActionNotificationsBus
  L4_2 = A0_2.DEBUG_KEY
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.registeredDebugKey = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.ForceVisualReset
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.CenterCursor
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.DEBUGGING_GREYBOX
  if L1_2 then
    L1_2 = LyShineScriptBindRequestBus
    L1_2 = L1_2.Broadcast
    L1_2 = L1_2.ScriptLoadCanvas
    L2_2 = "LyShineUI/Controller/VirtualCursorGreybox"
    L3_2 = false
    L4_2 = _UPVALUE2_
    L4_2 = L4_2.POPUP_DRAW_ORDER
    L4_2 = L4_2 - 1
    L5_2 = false
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
  L1_2 = _UPVALUE3_
  L2_2 = L1_2
  L1_2 = L1_2.Validate
  L1_2(L2_2)
end

L6_1.OnInit = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.virtualCursorEnabled
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.SetVirtualCursorEnabled
    L3_2 = false
    L4_2 = nil
    L5_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  L1_2 = A0_2.cursorActiveTimeline
  if L1_2 then
    L1_2 = A0_2.ScriptedEntityTweener
    L2_2 = L1_2
    L1_2 = L1_2.TimelineDestroy
    L3_2 = A0_2.cursorActiveTimeline
    L1_2(L2_2, L3_2)
    A0_2.cursorActiveTimeline = nil
  end
  L1_2 = DynamicBus
  L1_2 = L1_2.VirtualCursor
  L1_2 = L1_2.Disconnect
  L2_2 = A0_2.entityId
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end

L6_1.OnShutdown = L7_1

function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2.DEBUG_KEY
  if A1_2 == L3_2 then
    L3_2 = CursorBus
    L3_2 = L3_2.Broadcast
    L3_2 = L3_2.GetCursorPosition
    L3_2 = L3_2()
    L4_2 = UiCanvasManagerBus
    L4_2 = L4_2.Broadcast
    L4_2 = L4_2.GatherVirtualCursorEffectorData
    L5_2 = Vector2
    L6_2 = L3_2.x
    L7_2 = L3_2.y
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = A0_2.virtualCursorMagnetismRange
    L4_2(L5_2, L6_2)
  end
  L3_2 = A0_2.virtualCursorEnabled
  if L3_2 then
    L3_2 = A0_2.PAN_X_AXIS
    if A1_2 == L3_2 then
      L3_2 = Vector2
      L4_2 = A2_2
      L5_2 = A0_2.controllerAxis
      L5_2 = L5_2.y
      L3_2 = L3_2(L4_2, L5_2)
      A0_2.controllerAxis = L3_2
    else
      L3_2 = A0_2.PAN_Y_AXIS
      if A1_2 == L3_2 then
        L3_2 = Vector2
        L4_2 = A0_2.controllerAxis
        L4_2 = L4_2.x
        L5_2 = -A2_2
        L3_2 = L3_2(L4_2, L5_2)
        A0_2.controllerAxis = L3_2
      else
        L3_2 = A0_2.VIRTUAL_CURSOR_SELECT
        if A1_2 == L3_2 then
          L4_2 = A0_2
          L3_2 = A0_2.SendVirtualMouseClick
          L5_2 = true
          L3_2(L4_2, L5_2)
        else
          L3_2 = A0_2.VIRTUAL_CURSOR_SELECT_RELEASE
          if A1_2 == L3_2 then
            L4_2 = A0_2
            L3_2 = A0_2.SendVirtualMouseClick
            L5_2 = false
            L3_2(L4_2, L5_2)
          end
        end
      end
    end
  end
end

L6_1.OnCryAction = L7_1

function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2.ProcessInputAndTestDeadzone
  L3_2 = L3_2(L4_2)
  if L3_2 then
    A0_2.checkForMagnetismStart = false
    A0_2.controllerStickIdle = false
    L3_2 = A0_2.virtualCursorSpeed
    L5_2 = A0_2
    L4_2 = A0_2.GetInputCurveValue
    L4_2 = L4_2(L5_2)
    L3_2 = L3_2 * L4_2
    A0_2.currentCursorSpeed = L3_2
  else
    L3_2 = A0_2.controllerStickIdle
    if not L3_2 then
      A0_2.checkForMagnetismStart = true
      L3_2 = EntityId
      L3_2 = L3_2()
      A0_2.magnetismEntityId = L3_2
    end
    A0_2.controllerStickIdle = true
  end
  L4_2 = A0_2
  L3_2 = A0_2.UpdateVirtualCursorPositionFromMousePosition
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.UpdateVirtualCursorPosition
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.UpdateVirtualCursorVisual
  L3_2(L4_2)
end

L6_1.ProcessVirtualCursor = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CursorBus
  L1_2 = L1_2.Broadcast
  L1_2 = L1_2.GetCursorPosition
  L1_2 = L1_2()
  L3_2 = L1_2
  L2_2 = L1_2.GetDistance
  L4_2 = A0_2.virtualCursorPosition
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2.SQRT_2
  if L2_2 > L3_2 then
    A0_2.virtualCursorPosition = L1_2
  end
end

L6_1.UpdateVirtualCursorPositionFromMousePosition = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.controllerAxis
  L2_2 = L1_2
  L1_2 = L1_2.GetLength
  L1_2 = L1_2(L2_2)
  if 1 < L1_2 then
    L2_2 = A0_2.controllerAxis
    L3_2 = L2_2
    L2_2 = L2_2.GetNormalized
    L2_2 = L2_2(L3_2)
    A0_2.adjustedControllerInput = L2_2
    L1_2 = 1
  else
    L2_2 = A0_2.controllerAxis
    A0_2.adjustedControllerInput = L2_2
  end
  L2_2 = A0_2.deadzoneValue
  if L2_2 then
    L2_2 = A0_2.deadzoneValue
    if L1_2 > L2_2 then
      L2_2 = A0_2.virtualCursorRemapInputForDeadzone
      if L2_2 then
        L2_2 = A0_2.deadzoneValue
        L2_2 = L1_2 - L2_2
        L3_2 = A0_2.adjustedControllerInput
        L4_2 = A0_2.oneMinusDeadzoneRaw
        L4_2 = L2_2 / L4_2
        L3_2 = L3_2 * L4_2
        L3_2 = L3_2 / L1_2
        A0_2.adjustedControllerInput = L3_2
      end
      L2_2 = true
      return L2_2
  end
  else
    L2_2 = false
    return L2_2
  end
end

L6_1.ProcessInputAndTestDeadzone = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = {}
  A0_2.processedEffectorData = L2_2
  L2_2 = IsPlatformPC
  L3_2 = Platform
  L3_2 = L3_2.Current
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = A0_2.inputDevice
    L3_2 = eAID_AzPad
    if L2_2 ~= L3_2 then
      goto lbl_27
    end
  end
  L2_2 = UiCanvasManagerBus
  L2_2 = L2_2.Broadcast
  L2_2 = L2_2.GatherVirtualCursorEffectorData
  L3_2 = A0_2.virtualCursorPosition
  L4_2 = A0_2.virtualCursorMagnetismRange
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.currentFrameEffectorInfo = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.ProcessEffectorData
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.ApplyMagnetismForce
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.ApplyFrictionForce
  L2_2(L3_2)
  ::lbl_27::
  L3_2 = A0_2
  L2_2 = A0_2.ApplyControllerInputForce
  L2_2(L3_2)
  L2_2 = A0_2.DEBUGGING_EFFECTORS_WITH_MOUSE
  if not L2_2 then
    L2_2 = A0_2.virtualCursorPosition
    L3_2 = Clamp
    L4_2 = A0_2.virtualCursorPosition
    L4_2 = L4_2.x
    L5_2 = 0
    L6_2 = A0_2.viewportBounds
    L6_2 = L6_2.x
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2.x = L3_2
    L2_2 = A0_2.virtualCursorPosition
    L3_2 = Clamp
    L4_2 = A0_2.virtualCursorPosition
    L4_2 = L4_2.y
    L5_2 = 0
    L6_2 = A0_2.viewportBounds
    L6_2 = L6_2.y
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2.y = L3_2
  end
  L2_2 = LyShineManagerBus
  L2_2 = L2_2.Broadcast
  L2_2 = L2_2.SetMousePositionNormalized
  L3_2 = Vector2
  L4_2 = A0_2.virtualCursorPosition
  L4_2 = L4_2.x
  L5_2 = A0_2.viewportBounds
  L5_2 = L5_2.x
  L4_2 = L4_2 / L5_2
  L5_2 = A0_2.virtualCursorPosition
  L5_2 = L5_2.y
  L6_2 = A0_2.viewportBounds
  L6_2 = L6_2.y
  L5_2 = L5_2 / L6_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = UiTransformBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetLocalPositionX
  L3_2 = A0_2.Properties
  L3_2 = L3_2.CursorImage
  L4_2 = A0_2.virtualCursorPosition
  L4_2 = L4_2.x
  L2_2(L3_2, L4_2)
  L2_2 = UiTransformBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetLocalPositionY
  L3_2 = A0_2.Properties
  L3_2 = L3_2.CursorImage
  L4_2 = A0_2.virtualCursorPosition
  L4_2 = L4_2.y
  L2_2(L3_2, L4_2)
end

L6_1.UpdateVirtualCursorPosition = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.processedEffectorData
  L2_2.deltaTime = A1_2
  L2_2 = A0_2.processedEffectorData
  L3_2 = A0_2.virtualCursorPosition
  L2_2.positionAtStartOfFrame = L3_2
  L2_2 = A0_2.processedEffectorData
  L2_2.frictionForce = 0
  L2_2 = A0_2.currentFrameEffectorInfo
  if L2_2 ~= nil then
    L2_2 = A0_2.currentFrameEffectorInfo
    L2_2 = L2_2.valid
    if L2_2 then
      goto lbl_18
    end
  end
  L2_2 = A0_2.processedEffectorData
  L2_2.hasEffector = false
  do return end
  ::lbl_18::
  L2_2 = A0_2.processedEffectorData
  L2_2.hasEffector = true
  L2_2 = A0_2.processedEffectorData
  L3_2 = A0_2.currentFrameEffectorInfo
  L3_2 = L3_2.magnetismMode
  L2_2.componentMagnetismMode = L3_2
  L2_2 = A0_2.processedEffectorData
  L3_2 = A0_2.currentFrameEffectorInfo
  L3_2 = L3_2.magnetismMode
  L4_2 = eMagnetismEffectorMode_Disabled
  L3_2 = L3_2 ~= L4_2
  L2_2.componentMagnetismEnabled = L3_2
  L2_2 = A0_2.processedEffectorData
  L3_2 = A0_2.currentFrameEffectorInfo
  L3_2 = L3_2.magnetismRangeMultiplier
  L2_2.componentMagnetismRangeMultiplier = L3_2
  L2_2 = A0_2.processedEffectorData
  L3_2 = A0_2.currentFrameEffectorInfo
  L3_2 = L3_2.frictionEnabled
  L2_2.componentFrictionEnabled = L3_2
  L2_2 = A0_2.currentFrameEffectorInfo
  L2_2 = L2_2.frictionOverrideValue
  if 0 <= L2_2 then
    L2_2 = A0_2.processedEffectorData
    L3_2 = A0_2.currentFrameEffectorInfo
    L3_2 = L3_2.frictionOverrideValue
    L2_2.frictionForceOverride = L3_2
  else
    L2_2 = _UPVALUE0_
    L3_2 = L2_2
    L2_2 = L2_2.GetFrictionValueForSize
    L4_2 = A0_2.currentFrameEffectorInfo
    L4_2 = L4_2.scaledComponentSize
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L3_2 = L2_2.frictionForceOverride
      if L3_2 then
        L3_2 = A0_2.processedEffectorData
        L4_2 = L2_2.frictionForceOverride
        L3_2.frictionForceOverride = L4_2
      else
        L3_2 = A0_2.processedEffectorData
        L4_2 = A0_2.virtualCursorGlobalFrictionValue
        L5_2 = L2_2.frictionForceMultiplier
        L4_2 = L4_2 * L5_2
        L3_2.frictionForceOverride = L4_2
      end
      L3_2 = A0_2.processedEffectorData
      L4_2 = L2_2.name
      L3_2.componentFrictionTypeName = L4_2
    else
      L3_2 = A0_2.processedEffectorData
      L3_2.frictionForceOverride = nil
      L3_2 = A0_2.processedEffectorData
      L3_2.componentFrictionTypeName = "NONE"
    end
  end
  L2_2 = A0_2.processedEffectorData
  L3_2 = A0_2.currentFrameEffectorInfo
  L3_2 = L3_2.screenSpaceBindPoint
  L2_2.bindPoint = L3_2
  L2_2 = A0_2.processedEffectorData
  L3_2 = A0_2.currentFrameEffectorInfo
  L3_2 = L3_2.screenSpaceCenterPoint
  L2_2.centerPoint = L3_2
  L2_2 = A0_2.processedEffectorData
  L3_2 = A0_2.currentFrameEffectorInfo
  L3_2 = L3_2.screenSpaceBindPoint
  L4_2 = L3_2
  L3_2 = L3_2.GetDistance
  L5_2 = A0_2.processedEffectorData
  L5_2 = L5_2.positionAtStartOfFrame
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.distanceFromBindPoint = L3_2
  L2_2 = A0_2.processedEffectorData
  L3_2 = A0_2.currentFrameEffectorInfo
  L3_2 = L3_2.screenSpaceCenterPoint
  L4_2 = L3_2
  L3_2 = L3_2.GetDistance
  L5_2 = A0_2.processedEffectorData
  L5_2 = L5_2.positionAtStartOfFrame
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.distanceFromCenterPoint = L3_2
  L2_2 = A0_2.processedEffectorData
  L3_2 = A0_2.processedEffectorData
  L3_2 = L3_2.distanceFromBindPoint
  L4_2 = A0_2.EPSILON
  L3_2 = L3_2 < L4_2
  L2_2.isHoveringInteractable = L3_2
  L2_2 = A0_2.processedEffectorData
  L3_2 = A0_2.currentFrameEffectorInfo
  L3_2 = L3_2.effectorComponentId
  L2_2.effectorComponentId = L3_2
end

L6_1.ProcessEffectorData = L7_1

function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.checkForMagnetismStart
  if L1_2 then
    A0_2.checkForMagnetismStart = false
    L1_2 = A0_2.processedEffectorData
    L1_2 = L1_2.effectorComponentId
    L2_2 = L1_2
    L1_2 = L1_2.IsValid
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = A0_2.processedEffectorData
      L1_2 = L1_2.effectorComponentId
      A0_2.magnetismEntityId = L1_2
      L1_2 = A0_2.processedEffectorData
      L1_2 = L1_2.effectorComponentId
      L2_2 = A0_2.lastCompletedMagnetismEntityId
      if L1_2 ~= L2_2 then
        L1_2 = EntityId
        L1_2 = L1_2()
        A0_2.lastCompletedMagnetismEntityId = L1_2
      end
    end
  end
end

L6_1.LookForMagnetismTarget = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.DISABLE_MAGNETISM
  if not L1_2 then
    L1_2 = A0_2.optionsData
    L1_2 = L1_2.magnetismEnabled
    L1_2 = not L1_2
  end
  if not L1_2 then
    L2_2 = A0_2.processedEffectorData
    L2_2 = L2_2.componentMagnetismEnabled
    L2_2 = A0_2.processedEffectorData
    L2_2 = L2_2.hasEffector
    L1_2 = not L2_2 or L1_2
  end
  if not L1_2 then
    L2_2 = A0_2.controllerStickIdle
    if L2_2 then
      goto lbl_37
    end
  end
  L2_2 = A0_2.virtualCursorMagnetismRetrigger
  if L2_2 or L1_2 then
    L2_2 = EntityId
    L2_2 = L2_2()
    A0_2.lastCompletedMagnetismEntityId = L2_2
  end
  L2_2 = EntityId
  L2_2 = L2_2()
  A0_2.magnetismEntityId = L2_2
  A0_2.checkForMagnetismStart = false
  do return end
  ::lbl_37::
  L3_2 = A0_2
  L2_2 = A0_2.LookForMagnetismTarget
  L2_2(L3_2)
  L2_2 = A0_2.magnetismEntityId
  L3_2 = L2_2
  L2_2 = L2_2.IsValid
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2.magnetismEntityId
    L3_2 = A0_2.processedEffectorData
    L3_2 = L3_2.effectorComponentId
    if L2_2 == L3_2 then
      L2_2 = A0_2.lastCompletedMagnetismEntityId
      L3_2 = L2_2
      L2_2 = L2_2.IsValid
      L2_2 = L2_2(L3_2)
      if not L2_2 then
        goto lbl_55
      end
    end
  end
  do return end
  ::lbl_55::
  L2_2 = A0_2.processedEffectorData
  L2_2 = L2_2.componentMagnetismMode
  L3_2 = eMagnetismEffectorMode_Default
  if L2_2 == L3_2 then
    L2_2 = A0_2.virtualCursorDefaultMagnetismType
  end
  L3_2 = eMagnetismEffectorMode_Edge
  if L2_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.ApplyEdgeMagnetism
    L3_2(L4_2)
  else
    L3_2 = eMagnetismEffectorMode_Center
    if L2_2 == L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2.ApplyCenterMagnetism
      L3_2(L4_2)
    end
  end
end

L6_1.ApplyMagnetismForce = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.processedEffectorData
  L1_2 = L1_2.distanceFromBindPoint
  L2_2 = A0_2.EPSILON
  if L1_2 < L2_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.CalcMagnetismSpeed
  L3_2 = A0_2.processedEffectorData
  L3_2 = L3_2.bindPoint
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  L4_2 = A0_2
  L3_2 = A0_2.MoveCursorForMagnetism
  L5_2 = A0_2.processedEffectorData
  L5_2 = L5_2.bindPoint
  L6_2 = L1_2
  L7_2 = L2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end

L6_1.ApplyEdgeMagnetism = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.processedEffectorData
  L1_2 = L1_2.distanceFromCenterPoint
  L2_2 = A0_2.EPSILON
  if L1_2 < L2_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.CalcMagnetismSpeed
  L3_2 = A0_2.processedEffectorData
  L3_2 = L3_2.centerPoint
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  L4_2 = A0_2
  L3_2 = A0_2.MoveCursorForMagnetism
  L5_2 = A0_2.processedEffectorData
  L5_2 = L5_2.centerPoint
  L6_2 = L1_2
  L7_2 = L2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end

L6_1.ApplyCenterMagnetism = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.oldFocusPoint
  if A1_2 ~= L2_2 then
    L2_2 = A1_2.x
    L3_2 = A0_2.oldFocusPoint
    L3_2 = L3_2.x
    L2_2 = L2_2 - L3_2
    L3_2 = A1_2.x
    L4_2 = A0_2.oldFocusPoint
    L4_2 = L4_2.x
    L3_2 = L3_2 - L4_2
    L2_2 = L2_2 * L3_2
    L3_2 = A1_2.y
    L4_2 = A0_2.oldFocusPoint
    L4_2 = L4_2.y
    L3_2 = L3_2 - L4_2
    L4_2 = A1_2.y
    L5_2 = A0_2.oldFocusPoint
    L5_2 = L5_2.y
    L4_2 = L4_2 - L5_2
    L3_2 = L3_2 * L4_2
    L4_2 = math
    L4_2 = L4_2.sqrt
    L5_2 = L2_2 + L3_2
    L4_2 = L4_2(L5_2)
    L5_2 = 8
    A0_2.oldFocusPoint = A1_2
    if L4_2 > L5_2 then
      L6_2 = EntityId
      L6_2 = L6_2()
      A0_2.lastCompletedMagnetismEntityId = L6_2
    end
  end
  L2_2 = A0_2.processedEffectorData
  L2_2 = L2_2.positionAtStartOfFrame
  L2_2 = A1_2 - L2_2
  L3_2 = L2_2
  L2_2 = L2_2.GetNormalized
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.virtualCursorMagnetismSpeed
  L4_2 = A0_2.controllerStickIdle
  if L4_2 then
    L4_2 = A0_2.virtualCursorMagnetismIdleSpeedMultiplier
    if L4_2 then
      goto lbl_46
    end
  end
  L4_2 = 1
  ::lbl_46::
  L3_2 = L3_2 * L4_2
  L4_2 = A0_2.processedEffectorData
  L4_2 = L4_2.distanceFromBindPoint
  L5_2 = A0_2.virtualCursorMagnetismRange
  L6_2 = A0_2.processedEffectorData
  L6_2 = L6_2.componentMagnetismRangeMultiplier
  L5_2 = L5_2 * L6_2
  L4_2 = L4_2 / L5_2
  L4_2 = 1 - L4_2
  L5_2 = Clamp
  L6_2 = L4_2
  L7_2 = 0.1
  L8_2 = 1
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L4_2 = L4_2 - 1
  L5_2 = L4_2 * L4_2
  L4_2 = -L5_2
  L4_2 = L4_2 + 1
  L5_2 = L2_2
  L6_2 = L3_2 * L4_2
  return L5_2, L6_2
end

L6_1.CalcMagnetismSpeed = L7_1

function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = A0_2.processedEffectorData
  L4_2.didMagnetismThisFrame = true
  L4_2 = A0_2.virtualCursorPosition
  L5_2 = A0_2.virtualCursorPosition
  L6_2 = A0_2.processedEffectorData
  L6_2 = L6_2.deltaTime
  L6_2 = A2_2 * L6_2
  L6_2 = L6_2 * A3_2
  L7_2 = A0_2.resolutionSpeedModifier
  L6_2 = L6_2 * L7_2
  L5_2 = L5_2 + L6_2
  L6_2 = L5_2.x
  L7_2 = L4_2.x
  if L6_2 <= L7_2 then
    L6_2 = L5_2.x
    L7_2 = A1_2.x
  end
  L6_2 = not (L6_2 >= L7_2)
  L7_2 = L5_2.y
  L8_2 = L4_2.y
  if L7_2 <= L8_2 then
    L7_2 = L5_2.y
    L8_2 = A1_2.y
  end
  L7_2 = not (L7_2 >= L8_2)
  A0_2.virtualCursorPosition = L5_2
  if L6_2 then
    L8_2 = A0_2.virtualCursorPosition
    L9_2 = A1_2.x
    L8_2.x = L9_2
  end
  if L7_2 then
    L8_2 = A0_2.virtualCursorPosition
    L9_2 = A1_2.y
    L8_2.y = L9_2
  end
  L8_2 = Vector2
  L9_2 = math
  L9_2 = L9_2.floor
  L10_2 = A1_2.x
  L9_2 = L9_2(L10_2)
  L10_2 = math
  L10_2 = L10_2.floor
  L11_2 = A1_2.y
  L10_2, L11_2, L12_2 = L10_2(L11_2)
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  L9_2 = Vector2
  L10_2 = math
  L10_2 = L10_2.floor
  L11_2 = A0_2.virtualCursorPosition
  L11_2 = L11_2.x
  L10_2 = L10_2(L11_2)
  L11_2 = math
  L11_2 = L11_2.floor
  L12_2 = A0_2.virtualCursorPosition
  L12_2 = L12_2.y
  L11_2, L12_2 = L11_2(L12_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  if L9_2 == L8_2 then
    L10_2 = A0_2.magnetismEntityId
    A0_2.lastCompletedMagnetismEntityId = L10_2
    L10_2 = EntityId
    L10_2 = L10_2()
    A0_2.magnetismEntityId = L10_2
  end
end

L6_1.MoveCursorForMagnetism = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.DISABLE_FRICTION
  if not L1_2 then
    L1_2 = A0_2.optionsData
    L1_2 = L1_2.frictionEnabled
    if L1_2 then
      L1_2 = A0_2.processedEffectorData
      L1_2 = L1_2.hasEffector
      if L1_2 then
        L1_2 = A0_2.processedEffectorData
        L1_2 = L1_2.componentFrictionEnabled
        if L1_2 then
          goto lbl_17
        end
      end
    end
  end
  do return end
  ::lbl_17::
  L1_2 = A0_2.processedEffectorData
  L1_2 = L1_2.isHoveringInteractable
  if L1_2 then
    L1_2 = A0_2.virtualCursorGlobalFrictionValue
    L2_2 = A0_2.processedEffectorData
    L2_2 = L2_2.frictionForceOverride
    if L2_2 then
      L2_2 = A0_2.processedEffectorData
      L1_2 = L2_2.frictionForceOverride
    end
    L2_2 = A0_2.processedEffectorData
    L3_2 = A0_2.optionsData
    L3_2 = L3_2.frictionSpeedModifer
    L3_2 = L1_2 * L3_2
    L2_2.frictionForce = L3_2
    L2_2 = A0_2.processedEffectorData
    L3_2 = Clamp
    L4_2 = A0_2.processedEffectorData
    L4_2 = L4_2.frictionForce
    L5_2 = 0
    L6_2 = 0.9
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2.frictionForce = L3_2
    L2_2 = A0_2.processedEffectorData
    L2_2.didFrictionThisFrame = true
  end
end

L6_1.ApplyFrictionForce = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.adjustedControllerInput
  L2_2 = L1_2
  L1_2 = L1_2.GetLength
  L1_2 = L1_2(L2_2)
  L2_2 = Clamp
  L3_2 = L1_2 ^ 5
  L3_2 = 0.7 * L3_2
  L3_2 = 0.3 + L3_2
  L4_2 = 0
  L5_2 = 1
  return L2_2(L3_2, L4_2, L5_2)
end

L6_1.GetInputCurveValue = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.controllerStickIdle
  if L1_2 then
    return
  end
  L1_2 = A0_2.processedEffectorData
  L1_2 = L1_2.deltaTime
  L2_2 = A0_2.adjustedControllerInput
  L3_2 = A0_2.currentCursorSpeed
  L4_2 = A0_2.optionsData
  L4_2 = L4_2.sensitivity
  L3_2 = L3_2 * L4_2
  L4_2 = A0_2.resolutionSpeedModifier
  L3_2 = L3_2 * L4_2
  L4_2 = A0_2.processedEffectorData
  L4_2 = L4_2.frictionForce
  L4_2 = 1 - L4_2
  L5_2 = A0_2.virtualCursorPosition
  L6_2 = L2_2 * L3_2
  L6_2 = L6_2 * L1_2
  L6_2 = L6_2 * L4_2
  L5_2 = L5_2 + L6_2
  A0_2.virtualCursorPosition = L5_2
end

L6_1.ApplyControllerInputForce = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.virtualMouseHeld
  if L2_2 ~= A1_2 then
    A0_2.virtualMouseHeld = A1_2
    L3_2 = A0_2
    L2_2 = A0_2.SetClickVisualEnabled
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    if A1_2 then
      L2_2 = LyShineManagerBus
      L2_2 = L2_2.Broadcast
      L2_2 = L2_2.SetInputDeviceChangeEventsEnabled
      L3_2 = false
      L2_2(L3_2)
      L2_2 = LyShineManagerBus
      L2_2 = L2_2.Broadcast
      L2_2 = L2_2.SendVirtualMouseClick
      L3_2 = true
      L2_2(L3_2)
    else
      L2_2 = LyShineManagerBus
      L2_2 = L2_2.Broadcast
      L2_2 = L2_2.SendVirtualMouseClick
      L3_2 = false
      L2_2(L3_2)
      L2_2 = LyShineManagerBus
      L2_2 = L2_2.Broadcast
      L2_2 = L2_2.SetInputDeviceChangeEventsEnabled
      L3_2 = true
      L2_2(L3_2)
    end
  end
end

L6_1.SendVirtualMouseClick = L7_1

function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2.pendingTransition
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.HandlePendingTransition
    L3_2(L4_2)
    return
  end
  A0_2.currentFrameEffectorInfo = nil
  L3_2 = A0_2.virtualCursorEnabled
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.ProcessVirtualCursor
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = A0_2.DEBUGGING_DEAD_ZONES
  if L3_2 then
    L3_2 = A0_2.controllerStickIdle
    if L3_2 then
      L3_2 = A0_2.DEBUGGING_EFFECTORS_WITH_MOUSE
      if not L3_2 then
        L3_2 = math
        L3_2 = L3_2.abs
        L4_2 = A0_2.controllerAxis
        L4_2 = L4_2.x
        L3_2 = L3_2(L4_2)
        L4_2 = A0_2.EPSILON
        if not (L3_2 > L4_2) then
          L3_2 = math
          L3_2 = L3_2.abs
          L4_2 = A0_2.controllerAxis
          L4_2 = L4_2.y
          L3_2 = L3_2(L4_2)
          L4_2 = A0_2.EPSILON
          if not (L3_2 > L4_2) then
            goto lbl_49
          end
        end
        L3_2 = UiImageBus
        L3_2 = L3_2.Event
        L3_2 = L3_2.SetColor
        L4_2 = A0_2.Properties
        L4_2 = L4_2.CursorImage
        L5_2 = A0_2.UIStyle
        L5_2 = L5_2.COLOR_RED
        L3_2(L4_2, L5_2)
    end
    else
      ::lbl_49::
      L3_2 = UiImageBus
      L3_2 = L3_2.Event
      L3_2 = L3_2.SetColor
      L4_2 = A0_2.Properties
      L4_2 = L4_2.CursorImage
      L5_2 = A0_2.UIStyle
      L5_2 = L5_2.COLOR_WHITE
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = A0_2.DEBUGGING_STICK_CURVE
  if L3_2 then
    L3_2 = 0
    L4_2 = A0_2.controllerStickIdle
    if not L4_2 then
      L5_2 = A0_2
      L4_2 = A0_2.GetInputCurveValue
      L4_2 = L4_2(L5_2)
      L3_2 = 255 * L4_2
    end
    L4_2 = UiImageBus
    L4_2 = L4_2.Event
    L4_2 = L4_2.SetColor
    L5_2 = A0_2.Properties
    L5_2 = L5_2.CursorImage
    L6_2 = ColorRgba
    L7_2 = L3_2
    L8_2 = L3_2
    L9_2 = L3_2
    L10_2 = 1
    L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  end
  L3_2 = A0_2.DEBUGGING_EFFECTORS_WITH_MOUSE
  if L3_2 then
    L3_2 = A0_2.inputDevice
    L4_2 = eAID_KeyboardMouse
    if L3_2 == L4_2 then
      L4_2 = A0_2
      L3_2 = A0_2.UpdateVirtualCursorPositionFromMousePosition
      L3_2(L4_2)
      L3_2 = Vector2
      L4_2 = 0
      L5_2 = 0
      L3_2 = L3_2(L4_2, L5_2)
      A0_2.controllerAxis = L3_2
      A0_2.controllerStickIdle = true
      L3_2 = LyShineScriptBindRequestBus
      L3_2 = L3_2.Broadcast
      L3_2 = L3_2.GetViewportSize
      L3_2 = L3_2()
      A0_2.viewportBounds = L3_2
      L4_2 = A0_2
      L3_2 = A0_2.UpdateVirtualCursorPosition
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2.DrawEffectorDebug
  L3_2(L4_2)
end

L6_1.OnTick = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.virtualCursorEnabled
  if L1_2 then
    L1_2 = A0_2.processedEffectorData
    if L1_2 ~= nil then
      goto lbl_10
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.ForceVisualReset
  L1_2(L2_2)
  do return end
  ::lbl_10::
  L2_2 = A0_2
  L1_2 = A0_2.SetHoverVisualEnabled
  L3_2 = A0_2.processedEffectorData
  L3_2 = L3_2.isHoveringInteractable
  L1_2(L2_2, L3_2)
end

L6_1.UpdateVirtualCursorVisual = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 == nil then
    A1_2 = false
  end
  L2_2 = A0_2.hoverVisualEnabled
  if L2_2 == A1_2 then
    return
  end
  A0_2.hoverVisualEnabled = A1_2
  if A1_2 then
    L2_2 = A0_2.ScriptedEntityTweener
    L3_2 = L2_2
    L2_2 = L2_2.Set
    L4_2 = A0_2.Properties
    L4_2 = L4_2.CursorHoverImage
    L5_2 = {}
    L6_2 = A0_2.DEFAULT_ICON_SCALE
    L5_2.scaleX = L6_2
    L6_2 = A0_2.DEFAULT_ICON_SCALE
    L5_2.scaleY = L6_2
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = UiTransformBus
    L2_2 = L2_2.Event
    L2_2 = L2_2.GetZRotation
    L3_2 = A0_2.Properties
    L3_2 = L3_2.CursorHoverImage
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2 % 360
    L3_2 = A0_2.ScriptedEntityTweener
    L4_2 = L3_2
    L3_2 = L3_2.Play
    L5_2 = A0_2.Properties
    L5_2 = L5_2.CursorHoverImage
    L6_2 = A0_2.HOVER_INVERSE_ROTATION_SPEED
    L7_2 = {}
    L7_2.rotation = L2_2
    L8_2 = {}
    L8_2.timesToPlay = -1
    L9_2 = L2_2 + 359
    L8_2.rotation = L9_2
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L3_2 = A0_2.ScriptedEntityTweener
    L4_2 = L3_2
    L3_2 = L3_2.Play
    L5_2 = A0_2.Properties
    L5_2 = L5_2.CursorHoverImage
    L6_2 = A0_2.HOVER_FADE_TIME
    L7_2 = {}
    L7_2.opacity = 1
    L7_2.ease = "QuadOut"
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = A0_2.ScriptedEntityTweener
    L4_2 = L3_2
    L3_2 = L3_2.Play
    L5_2 = A0_2.Properties
    L5_2 = L5_2.CursorImage
    L6_2 = A0_2.HOVER_FADE_TIME
    L7_2 = {}
    L8_2 = A0_2.SHRUNK_ICON_SCALE
    L7_2.scaleX = L8_2
    L8_2 = A0_2.SHRUNK_ICON_SCALE
    L7_2.scaleY = L8_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = A0_2.optionsData
    L3_2 = L3_2.menuVibration
    if L3_2 then
      L3_2 = A0_2.stackConfig
      L3_2 = L3_2.enableMenuVibration
      if L3_2 then
        L3_2 = A0_2.audioHelper
        L4_2 = L3_2
        L3_2 = L3_2.PlaySound
        L5_2 = A0_2.audioHelper
        L5_2 = L5_2.OnHover_VirtualCursor
        L3_2(L4_2, L5_2)
      end
    end
  else
    L2_2 = A0_2.ScriptedEntityTweener
    L3_2 = L2_2
    L2_2 = L2_2.Stop
    L4_2 = A0_2.Properties
    L4_2 = L4_2.CursorHoverImage
    L2_2(L3_2, L4_2)
    L2_2 = A0_2.ScriptedEntityTweener
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = A0_2.Properties
    L4_2 = L4_2.CursorHoverImage
    L5_2 = A0_2.HOVER_FADE_TIME
    L6_2 = {}
    L6_2.opacity = 0
    L6_2.ease = "QuadOut"
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = A0_2.clickVisualEnabled
    if not L2_2 then
      L2_2 = A0_2.ScriptedEntityTweener
      L3_2 = L2_2
      L2_2 = L2_2.Play
      L4_2 = A0_2.Properties
      L4_2 = L4_2.CursorImage
      L5_2 = A0_2.HOVER_FADE_TIME
      L6_2 = {}
      L7_2 = A0_2.DEFAULT_ICON_SCALE
      L6_2.scaleX = L7_2
      L7_2 = A0_2.DEFAULT_ICON_SCALE
      L6_2.scaleY = L7_2
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
end

L6_1.SetHoverVisualEnabled = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 == nil then
    A1_2 = false
  end
  L2_2 = A0_2.clickVisualEnabled
  if L2_2 == A1_2 then
    return
  end
  A0_2.clickVisualEnabled = A1_2
  if A1_2 then
    L2_2 = A0_2.ScriptedEntityTweener
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = A0_2.Properties
    L4_2 = L4_2.CursorActiveImage
    L5_2 = A0_2.CLICK_ACTIVE_TIME
    L6_2 = {}
    L6_2.opacity = 1
    L6_2.ease = "QuadOut"
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = A0_2.ScriptedEntityTweener
    L3_2 = L2_2
    L2_2 = L2_2.TimelineCreate
    L2_2 = L2_2(L3_2)
    A0_2.cursorActiveTimeline = L2_2
    L2_2 = A0_2.cursorActiveTimeline
    L3_2 = L2_2
    L2_2 = L2_2.Add
    L4_2 = A0_2.Properties
    L4_2 = L4_2.CursorHoverImage
    L5_2 = A0_2.CLICK_ACTIVE_TIME
    L5_2 = L5_2 / 2
    L6_2 = {}
    L7_2 = A0_2.EXPANDED_ICON_SCALE
    L6_2.scaleX = L7_2
    L7_2 = A0_2.EXPANDED_ICON_SCALE
    L6_2.scaleY = L7_2
    L6_2.ease = "QuadOut"
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = A0_2.cursorActiveTimeline
    L3_2 = L2_2
    L2_2 = L2_2.Add
    L4_2 = A0_2.Properties
    L4_2 = L4_2.CursorHoverImage
    L5_2 = A0_2.CLICK_ACTIVE_TIME
    L5_2 = L5_2 / 2
    L6_2 = {}
    L7_2 = A0_2.DEFAULT_ICON_SCALE
    L6_2.scaleX = L7_2
    L7_2 = A0_2.DEFAULT_ICON_SCALE
    L6_2.scaleY = L7_2
    L6_2.ease = "QuadOut"
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = A0_2.cursorActiveTimeline
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L2_2(L3_2)
    L2_2 = A0_2.hoverVisualEnabled
    if not L2_2 then
      L2_2 = A0_2.ScriptedEntityTweener
      L3_2 = L2_2
      L2_2 = L2_2.Play
      L4_2 = A0_2.Properties
      L4_2 = L4_2.CursorImage
      L5_2 = A0_2.CLICK_ACTIVE_TIME
      L6_2 = {}
      L7_2 = A0_2.SHRUNK_ICON_SCALE
      L6_2.scaleX = L7_2
      L7_2 = A0_2.SHRUNK_ICON_SCALE
      L6_2.scaleY = L7_2
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  else
    L2_2 = A0_2.ScriptedEntityTweener
    L3_2 = L2_2
    L2_2 = L2_2.Stop
    L4_2 = A0_2.Properties
    L4_2 = L4_2.CursorActiveImage
    L2_2(L3_2, L4_2)
    L2_2 = A0_2.ScriptedEntityTweener
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = A0_2.Properties
    L4_2 = L4_2.CursorActiveImage
    L5_2 = A0_2.CLICK_ACTIVE_TIME
    L6_2 = {}
    L6_2.opacity = 0
    L6_2.ease = "QuadOut"
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = A0_2.cursorActiveTimeline
    L3_2 = L2_2
    L2_2 = L2_2.Stop
    L2_2(L3_2)
    L2_2 = UiTransformBus
    L2_2 = L2_2.Event
    L2_2 = L2_2.GetScale
    L3_2 = A0_2.Properties
    L3_2 = L3_2.CursorHoverImage
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2.x
    L3_2 = A0_2.DEFAULT_ICON_SCALE
    L2_2 = L2_2 - L3_2
    L3_2 = A0_2.EXPANDED_ICON_SCALE
    L4_2 = A0_2.DEFAULT_ICON_SCALE
    L3_2 = L3_2 - L4_2
    L2_2 = L2_2 / L3_2
    L3_2 = A0_2.ScriptedEntityTweener
    L4_2 = L3_2
    L3_2 = L3_2.Play
    L5_2 = A0_2.Properties
    L5_2 = L5_2.CursorHoverImage
    L6_2 = A0_2.CLICK_ACTIVE_TIME
    L6_2 = L6_2 * L2_2
    L7_2 = {}
    L8_2 = A0_2.DEFAULT_ICON_SCALE
    L7_2.scaleX = L8_2
    L8_2 = A0_2.DEFAULT_ICON_SCALE
    L7_2.scaleY = L8_2
    L7_2.ease = "QuadOut"
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = A0_2.hoverVisualEnabled
    if not L3_2 then
      L3_2 = A0_2.ScriptedEntityTweener
      L4_2 = L3_2
      L3_2 = L3_2.Play
      L5_2 = A0_2.Properties
      L5_2 = L5_2.CursorImage
      L6_2 = A0_2.CLICK_ACTIVE_TIME
      L7_2 = {}
      L8_2 = A0_2.DEFAULT_ICON_SCALE
      L7_2.scaleX = L8_2
      L8_2 = A0_2.DEFAULT_ICON_SCALE
      L7_2.scaleY = L8_2
      L3_2(L4_2, L5_2, L6_2, L7_2)
    end
  end
end

L6_1.SetClickVisualEnabled = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  A0_2.hoverVisualEnabled = false
  A0_2.clickVisualEnabled = false
  L1_2 = A0_2.ScriptedEntityTweener
  L2_2 = L1_2
  L1_2 = L1_2.Stop
  L3_2 = A0_2.Properties
  L3_2 = L3_2.CursorImage
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.ScriptedEntityTweener
  L2_2 = L1_2
  L1_2 = L1_2.Stop
  L3_2 = A0_2.Properties
  L3_2 = L3_2.CursorHoverImage
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.ScriptedEntityTweener
  L2_2 = L1_2
  L1_2 = L1_2.Stop
  L3_2 = A0_2.Properties
  L3_2 = L3_2.CursorActiveImage
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.ScriptedEntityTweener
  L2_2 = L1_2
  L1_2 = L1_2.Set
  L3_2 = A0_2.Properties
  L3_2 = L3_2.CursorImage
  L4_2 = {}
  L5_2 = A0_2.DEFAULT_ICON_SCALE
  L4_2.scaleX = L5_2
  L5_2 = A0_2.DEFAULT_ICON_SCALE
  L4_2.scaleY = L5_2
  L4_2.opacity = 1
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2.ScriptedEntityTweener
  L2_2 = L1_2
  L1_2 = L1_2.Set
  L3_2 = A0_2.Properties
  L3_2 = L3_2.CursorHoverImage
  L4_2 = {}
  L5_2 = A0_2.DEFAULT_ICON_SCALE
  L4_2.scaleX = L5_2
  L5_2 = A0_2.DEFAULT_ICON_SCALE
  L4_2.scaleY = L5_2
  L4_2.opacity = 0
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2.ScriptedEntityTweener
  L2_2 = L1_2
  L1_2 = L1_2.Set
  L3_2 = A0_2.Properties
  L3_2 = L3_2.CursorActiveImage
  L4_2 = {}
  L4_2.opacity = 0
  L1_2(L2_2, L3_2, L4_2)
end

L6_1.ForceVisualReset = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2.DEBUGGING_EFFECTORS_WITH_MOUSE
  if not L1_2 then
    L1_2 = A0_2.DEBUGGING_SHOW_EFFECTOR_ICONS
    if not L1_2 then
      L1_2 = A0_2.DEBUGGING_STICK_CURVE
      if not L1_2 then
        return
      end
    end
  end
  L1_2 = nil
  L2_2 = A0_2.DEBUGGING_EFFECTORS_WITH_MOUSE
  if L2_2 then
    L2_2 = CursorBus
    L2_2 = L2_2.Broadcast
    L2_2 = L2_2.GetCursorPosition
    L2_2 = L2_2()
    L1_2 = L2_2
  else
    L1_2 = A0_2.virtualCursorPosition
  end
  L2_2 = Vector2
  L3_2 = A0_2.virtualCursorPosition
  L3_2 = L3_2.x
  L4_2 = A0_2.viewportBounds
  L4_2 = L4_2.x
  L3_2 = L3_2 / L4_2
  L4_2 = A0_2.virtualCursorPosition
  L4_2 = L4_2.y
  L5_2 = A0_2.viewportBounds
  L5_2 = L5_2.y
  L4_2 = L4_2 / L5_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = [[
(%.2f,%.2f)
(%.2f, %.2f)]]
  L5_2 = L1_2.x
  L6_2 = L1_2.y
  L7_2 = L2_2.x
  L8_2 = L2_2.y
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2.DEBUGGING_STICK_CURVE
  if L4_2 then
    L4_2 = L3_2
    L5_2 = string
    L5_2 = L5_2.format
    L6_2 = [[

ACCEL:(%.2f%%->%.2f%%, %.1f)]]
    L7_2 = A0_2.adjustedControllerInput
    L8_2 = L7_2
    L7_2 = L7_2.GetLength
    L7_2 = L7_2(L8_2)
    L7_2 = L7_2 * 100
    L9_2 = A0_2
    L8_2 = A0_2.GetInputCurveValue
    L8_2 = L8_2(L9_2)
    L8_2 = L8_2 * 100
    L9_2 = A0_2.currentCursorSpeed
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L3_2 = L4_2 .. L5_2
  end
  L4_2 = UiTextBus
  L4_2 = L4_2.Event
  L4_2 = L4_2.SetText
  L5_2 = A0_2.Properties
  L5_2 = L5_2.DebugPositionText
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = UiElementBus
  L4_2 = L4_2.Event
  L4_2 = L4_2.SetIsEnabled
  L5_2 = A0_2.Properties
  L5_2 = L5_2.DebugPositionText
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2.currentFrameEffectorInfo
  if L4_2 == nil then
    return
  end
  L4_2 = A0_2.processedEffectorData
  L4_2 = L4_2.didFrictionThisFrame
  if L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2.DebugDrawImage
    L6_2 = A0_2.Properties
    L6_2 = L6_2.IsFrictionDebugImage
    L7_2 = A0_2.virtualCursorPosition
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2.processedEffectorData
    L4_2 = L4_2.componentFrictionTypeName
    if L4_2 then
      L4_2 = UiTextBus
      L4_2 = L4_2.Event
      L4_2 = L4_2.SetText
      L5_2 = A0_2.Properties
      L5_2 = L5_2.CursorDebugInfoText
      L6_2 = A0_2.processedEffectorData
      L6_2 = L6_2.componentFrictionTypeName
      L4_2(L5_2, L6_2)
      L4_2 = UiElementBus
      L4_2 = L4_2.Event
      L4_2 = L4_2.SetIsEnabled
      L5_2 = A0_2.Properties
      L5_2 = L5_2.CursorDebugInfoText
      L6_2 = true
      L4_2(L5_2, L6_2)
    end
  else
    L4_2 = UiElementBus
    L4_2 = L4_2.Event
    L4_2 = L4_2.SetIsEnabled
    L5_2 = A0_2.Properties
    L5_2 = L5_2.IsFrictionDebugImage
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = UiElementBus
    L4_2 = L4_2.Event
    L4_2 = L4_2.SetIsEnabled
    L5_2 = A0_2.Properties
    L5_2 = L5_2.CursorDebugInfoText
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2.processedEffectorData
  L4_2 = L4_2.didMagnetismThisFrame
  if L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2.DebugDrawImage
    L6_2 = A0_2.Properties
    L6_2 = L6_2.IsMagnetizedDebugImage
    L7_2 = A0_2.virtualCursorPosition
    L4_2(L5_2, L6_2, L7_2)
  else
    L4_2 = UiElementBus
    L4_2 = L4_2.Event
    L4_2 = L4_2.SetIsEnabled
    L5_2 = A0_2.Properties
    L5_2 = L5_2.IsMagnetizedDebugImage
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2.DebugDrawImage
  L6_2 = A0_2.Properties
  L6_2 = L6_2.DebugBindImage
  L7_2 = A0_2.currentFrameEffectorInfo
  L7_2 = L7_2.screenSpaceBindPoint
  L8_2 = L1_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = A0_2
  L4_2 = A0_2.DebugDrawImage
  L6_2 = A0_2.Properties
  L6_2 = L6_2.DebugCenterImage
  L7_2 = A0_2.currentFrameEffectorInfo
  L7_2 = L7_2.screenSpaceCenterPoint
  L8_2 = L1_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2.currentFrameEffectorInfo
  L4_2 = L4_2.debugEffectorName
  if L4_2 == "" then
    L5_2 = UiElementBus
    L5_2 = L5_2.Event
    L5_2 = L5_2.SetIsEnabled
    L6_2 = A0_2.Properties
    L6_2 = L6_2.EffectorNameDebugTextBackground
    L7_2 = false
    L5_2(L6_2, L7_2)
  else
    L5_2 = UiElementBus
    L5_2 = L5_2.Event
    L5_2 = L5_2.SetIsEnabled
    L6_2 = A0_2.Properties
    L6_2 = L6_2.EffectorNameDebugTextBackground
    L7_2 = true
    L5_2(L6_2, L7_2)
    L5_2 = UiTextBus
    L5_2 = L5_2.Event
    L5_2 = L5_2.SetText
    L6_2 = A0_2.Properties
    L6_2 = L6_2.EffectorNameDebugText
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
end

L6_1.DrawEffectorDebug = L7_1

function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = A2_2.x
  if 0 < L4_2 then
    L4_2 = A2_2.y
    if 0 < L4_2 then
      L4_2 = A2_2.x
      L5_2 = A0_2.viewportBounds
      L5_2 = L5_2.x
      if L4_2 < L5_2 then
        L4_2 = A2_2.y
        L5_2 = A0_2.viewportBounds
        L5_2 = L5_2.y
        if L4_2 < L5_2 then
          L4_2 = UiTransformBus
          L4_2 = L4_2.Event
          L4_2 = L4_2.SetLocalPosition
          L5_2 = A1_2
          L6_2 = A2_2
          L4_2(L5_2, L6_2)
          L4_2 = UiElementBus
          L4_2 = L4_2.Event
          L4_2 = L4_2.SetIsEnabled
          L5_2 = A1_2
          L6_2 = true
          L4_2(L5_2, L6_2)
          if A3_2 then
            L5_2 = A2_2
            L4_2 = A2_2.GetDistance
            L6_2 = A3_2
            L4_2 = L4_2(L5_2, L6_2)
            L5_2 = A0_2.EPSILON
            if L4_2 > L5_2 then
              L4_2 = UiImageBus
              L4_2 = L4_2.Event
              L4_2 = L4_2.SetColor
              L5_2 = A1_2
              L6_2 = A0_2.UIStyle
              L6_2 = L6_2.COLOR_RED
              L4_2(L5_2, L6_2)
            else
              L4_2 = UiImageBus
              L4_2 = L4_2.Event
              L4_2 = L4_2.SetColor
              L5_2 = A1_2
              L6_2 = A0_2.UIStyle
              L6_2 = L6_2.COLOR_WHITE
              L4_2(L5_2, L6_2)
            end
          end
      end
    end
  end
  else
    L4_2 = UiElementBus
    L4_2 = L4_2.Event
    L4_2 = L4_2.SetIsEnabled
    L5_2 = A1_2
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
end

L6_1.DebugDrawImage = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.DEBUGGING_EFFECTORS_WITH_MOUSE
  if L2_2 then
    A1_2 = true
  end
  L2_2 = A0_2.isTicking
  if A1_2 ~= L2_2 then
    A0_2.isTicking = A1_2
    L2_2 = A0_2.isTicking
    if L2_2 then
      L2_2 = A0_2.tickHandler
      if L2_2 == nil then
        L3_2 = A0_2
        L2_2 = A0_2.BusConnect
        L4_2 = DynamicBus
        L4_2 = L4_2.UITickBus
        L2_2 = L2_2(L3_2, L4_2)
        A0_2.tickHandler = L2_2
    end
    else
      L2_2 = A0_2.tickHandler
      if L2_2 ~= nil then
        L3_2 = A0_2
        L2_2 = A0_2.BusDisconnect
        L4_2 = A0_2.tickHandler
        L2_2(L3_2, L4_2)
        A0_2.tickHandler = nil
      end
    end
  end
end

L6_1.SetIsTicking = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = false
  L2_2 = IsPlatformPC
  L3_2 = Platform
  L3_2 = L3_2.Current
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2.inputDevice
    L3_2 = eAID_AzPad
    L1_2 = L2_2 == L3_2
  else
    L2_2 = A0_2.canvasEnabled
    L1_2 = L2_2 or L1_2
    if L2_2 then
      L2_2 = A0_2.isMouseEnabled
      L1_2 = L2_2 or L1_2
      if L2_2 then
        L1_2 = A0_2.isWindowFocused
      end
    end
  end
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L2_2 = A0_2.actionMapEnabled
    if L2_2 then
      L2_2 = A0_2.isVirtualKeyboardEnabled
      L2_2 = not L2_2
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2.SetVirtualCursorEnabled
  L5_2 = L2_2
  L6_2 = L1_2
  L3_2(L4_2, L5_2, L6_2)
end

L6_1.CheckIfVirtualCursorShouldBeEnabled = L7_1

function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  if A2_2 == nil then
    A2_2 = A1_2
  end
  L4_2 = UIInputRequestsBus
  L4_2 = L4_2.Broadcast
  L4_2 = L4_2.EnableInputFilter
  L5_2 = "LockForVirtualCursor"
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
  L4_2 = LyShineManagerBus
  L4_2 = L4_2.Broadcast
  L4_2 = L4_2.SetMouseHiddenForVirtualCursor
  L5_2 = A2_2
  L4_2(L5_2)
  L4_2 = A0_2.virtualCursorEnabled
  if A1_2 == L4_2 then
    return
  end
  A0_2.virtualCursorEnabled = A1_2
  L5_2 = A0_2
  L4_2 = A0_2.SetVisualEnabled
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.SetInputHandlers
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  if not A3_2 then
    L5_2 = A0_2
    L4_2 = A0_2.SetIsTicking
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
  end
  L4_2 = LyShineManagerBus
  L4_2 = L4_2.Broadcast
  L4_2 = L4_2.SetVirtualCursorEnabled
  L5_2 = A1_2
  L4_2(L5_2)
  if A1_2 then
    L5_2 = A0_2
    L4_2 = A0_2.UpdateVirtualCursorPositionFromMousePosition
    L4_2(L5_2)
    L5_2 = A0_2
    L4_2 = A0_2.OnCanvasSizeOrScaleChange
    L4_2(L5_2)
    L4_2 = Vector2
    L5_2 = 0
    L6_2 = 0
    L4_2 = L4_2(L5_2, L6_2)
    A0_2.controllerAxis = L4_2
    L4_2 = LyShineManagerBus
    L4_2 = L4_2.Broadcast
    L4_2 = L4_2.ResetVirtualCursorInputChannel
    L4_2()
    A0_2.virtualMouseHeld = false
    L5_2 = A0_2
    L4_2 = A0_2.ForceVisualReset
    L4_2(L5_2)
    L5_2 = A0_2
    L4_2 = A0_2.SetClickVisualEnabled
    L6_2 = false
    L4_2(L5_2, L6_2)
  else
    L4_2 = A0_2.virtualMouseHeld
    if L4_2 then
      L4_2 = LyShineManagerBus
      L4_2 = L4_2.Broadcast
      L4_2 = L4_2.SetInputDeviceChangeEventsEnabled
      L5_2 = true
      L4_2(L5_2)
    end
    A0_2.pendingTransition = nil
    L4_2 = EntityId
    L4_2 = L4_2()
    A0_2.magnetismEntityId = L4_2
    A0_2.checkForMagnetismStart = false
  end
end

L6_1.SetVirtualCursorEnabled = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = UiElementBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetIsEnabled
  L3_2 = A0_2.Properties
  L3_2 = L3_2.CursorImage
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if not A1_2 then
    L2_2 = UiElementBus
    L2_2 = L2_2.Event
    L2_2 = L2_2.SetIsEnabled
    L3_2 = A0_2.Properties
    L3_2 = L3_2.IsMagnetizedDebugImage
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = UiElementBus
    L2_2 = L2_2.Event
    L2_2 = L2_2.SetIsEnabled
    L3_2 = A0_2.Properties
    L3_2 = L3_2.IsFrictionDebugImage
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = UiElementBus
    L2_2 = L2_2.Event
    L2_2 = L2_2.SetIsEnabled
    L3_2 = A0_2.Properties
    L3_2 = L3_2.DebugPositionText
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = UiElementBus
    L2_2 = L2_2.Event
    L2_2 = L2_2.SetIsEnabled
    L3_2 = A0_2.Properties
    L3_2 = L3_2.DebugBindImage
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = UiElementBus
    L2_2 = L2_2.Event
    L2_2 = L2_2.SetIsEnabled
    L3_2 = A0_2.Properties
    L3_2 = L3_2.DebugCenterImage
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = UiElementBus
    L2_2 = L2_2.Event
    L2_2 = L2_2.SetIsEnabled
    L3_2 = A0_2.Properties
    L3_2 = L3_2.EffectorNameDebugTextBackground
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = UiElementBus
    L2_2 = L2_2.Event
    L2_2 = L2_2.SetIsEnabled
    L3_2 = A0_2.Properties
    L3_2 = L3_2.CursorDebugInfoText
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end

L6_1.SetVisualEnabled = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 then
    L2_2 = A0_2.controllerInputHandlers
    if not L2_2 then
      L2_2 = {}
      A0_2.controllerInputHandlers = L2_2
      L2_2 = A0_2.controllerInputHandlers
      L4_2 = A0_2
      L3_2 = A0_2.BusConnect
      L5_2 = CryActionNotificationsBus
      L6_2 = A0_2.PAN_X_AXIS
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      L2_2.lStickX = L3_2
      L2_2 = A0_2.controllerInputHandlers
      L4_2 = A0_2
      L3_2 = A0_2.BusConnect
      L5_2 = CryActionNotificationsBus
      L6_2 = A0_2.PAN_Y_AXIS
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      L2_2.lStickY = L3_2
      L2_2 = A0_2.controllerInputHandlers
      L4_2 = A0_2
      L3_2 = A0_2.BusConnect
      L5_2 = CryActionNotificationsBus
      L6_2 = A0_2.VIRTUAL_CURSOR_SELECT
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      L2_2.aPress = L3_2
      L2_2 = A0_2.controllerInputHandlers
      L4_2 = A0_2
      L3_2 = A0_2.BusConnect
      L5_2 = CryActionNotificationsBus
      L6_2 = A0_2.VIRTUAL_CURSOR_SELECT_RELEASE
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      L2_2.aRelease = L3_2
    end
  else
    L2_2 = A0_2.controllerInputHandlers
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.BusDisconnect
      L4_2 = A0_2.controllerInputHandlers
      L4_2 = L4_2.lStickX
      L2_2(L3_2, L4_2)
      L3_2 = A0_2
      L2_2 = A0_2.BusDisconnect
      L4_2 = A0_2.controllerInputHandlers
      L4_2 = L4_2.lStickY
      L2_2(L3_2, L4_2)
      L3_2 = A0_2
      L2_2 = A0_2.BusDisconnect
      L4_2 = A0_2.controllerInputHandlers
      L4_2 = L4_2.aPress
      L2_2(L3_2, L4_2)
      L3_2 = A0_2
      L2_2 = A0_2.BusDisconnect
      L4_2 = A0_2.controllerInputHandlers
      L4_2 = L4_2.aRelease
      L2_2(L3_2, L4_2)
      A0_2.controllerInputHandlers = nil
    end
  end
end

L6_1.SetInputHandlers = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = LyShineScriptBindRequestBus
  L1_2 = L1_2.Broadcast
  L1_2 = L1_2.GetViewportSize
  L1_2 = L1_2()
  A0_2.viewportBounds = L1_2
  L1_2 = A0_2.virtualCursorPosition
  L2_2 = Clamp
  L3_2 = A0_2.virtualCursorPosition
  L3_2 = L3_2.x
  L4_2 = 0
  L5_2 = A0_2.viewportBounds
  L5_2 = L5_2.x
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2.x = L2_2
  L1_2 = A0_2.virtualCursorPosition
  L2_2 = Clamp
  L3_2 = A0_2.virtualCursorPosition
  L3_2 = L3_2.y
  L4_2 = 0
  L5_2 = A0_2.viewportBounds
  L5_2 = L5_2.y
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2.y = L2_2
  L1_2 = A0_2.viewportBounds
  L1_2 = L1_2.y
  L2_2 = CanvasAuthoringSize
  L2_2 = L2_2.y
  L1_2 = L1_2 / L2_2
  A0_2.resolutionSpeedModifier = L1_2
end

L6_1.OnCanvasSizeOrScaleChange = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2.inputDevice = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.CheckIfVirtualCursorShouldBeEnabled
  L2_2(L3_2)
end

L6_1.OnLastInputDeviceChanged = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2.isWindowFocused = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.CheckIfVirtualCursorShouldBeEnabled
  L2_2(L3_2)
end

L6_1.OnWindowFocusChanged = L7_1

function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2.VIRTUAL_CURSOR_ACTION_MAP_NAME
  if A1_2 == L3_2 then
    A0_2.actionMapEnabled = A2_2
    L4_2 = A0_2
    L3_2 = A0_2.CheckIfVirtualCursorShouldBeEnabled
    L3_2(L4_2)
    if not A2_2 then
      L3_2 = A0_2.virtualMouseHeld
      if L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2.SendVirtualMouseClick
        L5_2 = false
        L3_2(L4_2, L5_2)
      end
    end
  end
end

L6_1.OnActionMapStatusChanged = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    return
  end
  A0_2.canvasEnabled = A1_2
  L2_2 = UiCanvasBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetEnabled
  L3_2 = A0_2.canvasId
  L4_2 = A0_2.canvasEnabled
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.CheckIfVirtualCursorShouldBeEnabled
  L2_2(L3_2)
end

L6_1.SetCanvasEnabled = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = Vector2
  L3_2 = A0_2.viewportBounds
  L3_2 = L3_2.x
  L3_2 = L3_2 / 2
  L4_2 = A0_2.viewportBounds
  L4_2 = L4_2.y
  L4_2 = L4_2 / 2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.virtualCursorPosition = L2_2
  L2_2 = A0_2.virtualCursorEnabled
  if L2_2 or A1_2 then
    L2_2 = LyShineManagerBus
    L2_2 = L2_2.Broadcast
    L2_2 = L2_2.SetMousePositionNormalized
    L3_2 = Vector2
    L4_2 = A0_2.virtualCursorPosition
    L4_2 = L4_2.x
    L5_2 = A0_2.viewportBounds
    L5_2 = L5_2.x
    L4_2 = L4_2 / L5_2
    L5_2 = A0_2.virtualCursorPosition
    L5_2 = L5_2.y
    L6_2 = A0_2.viewportBounds
    L6_2 = L6_2.y
    L5_2 = L5_2 / L6_2
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end

L6_1.CenterCursor = L7_1

function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.mScreenStatesToDisable
  L3_2 = L3_2[A2_2]
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.SetCanvasEnabled
    L5_2 = false
    L3_2(L4_2, L5_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2.SetCanvasEnabled
    L5_2 = true
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2.inputDevice
  L4_2 = eAID_AzPad
  if L3_2 == L4_2 then
    L3_2 = _UPVALUE0_
    L4_2 = L3_2
    L3_2 = L3_2.GetTransitionData
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    A0_2.pendingTransition = L3_2
  end
end

L6_1.CheckTransition = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.pendingTransition
  A0_2.pendingTransition = nil
  if L1_2 ~= nil then
    L2_2 = L1_2.type
    L3_2 = _UPVALUE0_
    L3_2 = L3_2.UNCHANGED_CURSOR
    if L2_2 ~= L3_2 then
      goto lbl_12
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_12::
  L3_2 = A0_2
  L2_2 = A0_2.OnCanvasSizeOrScaleChange
  L2_2(L3_2)
  L2_2 = L1_2.type
  L3_2 = _UPVALUE0_
  L3_2 = L3_2.CENTER_CURSOR
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2.CenterCursor
    L2_2(L3_2)
  else
    L2_2 = L1_2.type
    L3_2 = _UPVALUE0_
    L3_2 = L3_2.REPOSITION_CURSOR
    if L2_2 == L3_2 then
      L2_2 = L1_2.dataFunction
      L3_2 = L1_2.dataFunctionSelf
      L4_2 = A0_2.viewportBounds
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 ~= nil then
        A0_2.virtualCursorPosition = L2_2
        L3_2 = LyShineManagerBus
        L3_2 = L3_2.Broadcast
        L3_2 = L3_2.SetMousePositionNormalized
        L4_2 = Vector2
        L5_2 = A0_2.virtualCursorPosition
        L5_2 = L5_2.x
        L6_2 = A0_2.viewportBounds
        L6_2 = L6_2.x
        L5_2 = L5_2 / L6_2
        L6_2 = A0_2.virtualCursorPosition
        L6_2 = L6_2.y
        L7_2 = A0_2.viewportBounds
        L7_2 = L7_2.y
        L6_2 = L6_2 / L7_2
        L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2)
        L3_2(L4_2, L5_2, L6_2, L7_2)
      else
        L4_2 = A0_2
        L3_2 = A0_2.CenterCursor
        L3_2(L4_2)
      end
    else
      L2_2 = L1_2.type
      L3_2 = _UPVALUE0_
      L3_2 = L3_2.CENTER_CURSOR_STORE_RETURN
      if L2_2 == L3_2 then
        L2_2 = A0_2.virtualCursorPosition
        A0_2.virtualCursorPositionBeforeTransition = L2_2
        L3_2 = A0_2
        L2_2 = A0_2.CenterCursor
        L2_2(L3_2)
      else
        L2_2 = L1_2.type
        L3_2 = _UPVALUE0_
        L3_2 = L3_2.RETURN_TO_POSITION
        if L2_2 == L3_2 then
          L2_2 = A0_2.virtualCursorPositionBeforeTransition
          if L2_2 ~= nil then
            L2_2 = A0_2.virtualCursorPositionBeforeTransition
            A0_2.virtualCursorPosition = L2_2
            L2_2 = LyShineManagerBus
            L2_2 = L2_2.Broadcast
            L2_2 = L2_2.SetMousePositionNormalized
            L3_2 = Vector2
            L4_2 = A0_2.virtualCursorPosition
            L4_2 = L4_2.x
            L5_2 = A0_2.viewportBounds
            L5_2 = L5_2.x
            L4_2 = L4_2 / L5_2
            L5_2 = A0_2.virtualCursorPosition
            L5_2 = L5_2.y
            L6_2 = A0_2.viewportBounds
            L6_2 = L6_2.y
            L5_2 = L5_2 / L6_2
            L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2, L5_2)
            L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
            A0_2.virtualCursorPositionBeforeTransition = nil
          end
        end
      end
    end
  end
  L2_2 = true
  return L2_2
end

L6_1.HandlePendingTransition = L7_1

function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  L6_2 = A0_2
  L5_2 = A0_2.CheckTransition
  L7_2 = A1_2
  L8_2 = A3_2
  L5_2(L6_2, L7_2, L8_2)
end

L6_1.OnTransitionIn = L7_1

function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  L6_2 = A0_2
  L5_2 = A0_2.CheckTransition
  L7_2 = A1_2
  L8_2 = A3_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = LyShineManagerBus
  L5_2 = L5_2.Broadcast
  L5_2 = L5_2.TransitionOutComplete
  L5_2()
end

L6_1.OnTransitionOut = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.isMouseEnabled
  if L2_2 ~= A1_2 then
    A0_2.isMouseEnabled = A1_2
    L3_2 = A0_2
    L2_2 = A0_2.CheckIfVirtualCursorShouldBeEnabled
    L2_2(L3_2)
  end
end

L6_1.OnMouseStateChanged = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.virtualCursorSpeed
  A0_2.virtualCursorSpeed = L2_2
  L2_2 = A1_2.virtualCursorMagSpeed
  A0_2.virtualCursorMagnetismSpeed = L2_2
  L2_2 = A1_2.virtualCursorMagRange
  A0_2.virtualCursorMagnetismRange = L2_2
  L2_2 = A1_2.virtualCursorDeadzoneRaw
  A0_2.virtualCursorDeadzoneRaw = L2_2
  L2_2 = A1_2.virtualCursorRemapInputForDeadzone
  A0_2.virtualCursorRemapInputForDeadzone = L2_2
  L2_2 = A1_2.virtualCursorFrictionValue
  A0_2.virtualCursorGlobalFrictionValue = L2_2
  L2_2 = A1_2.virtualCursorMagnetismRetrigger
  A0_2.virtualCursorMagnetismRetrigger = L2_2
  L2_2 = A1_2.virtualCursorDefaultMagnetismTypeIndex
  L2_2 = L2_2 + 2
  A0_2.virtualCursorDefaultMagnetismType = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.CacheDeadzoneValues
  L2_2(L3_2)
end

L6_1.SetVirtualCursorConfigValues = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.virtualCursorDeadzoneRaw
  if L1_2 then
    L1_2 = A0_2.optionsData
    if L1_2 then
      L1_2 = A0_2.optionsData
      L1_2 = L1_2.deadzoneMultiplier
      if L1_2 then
        goto lbl_12
      end
    end
  end
  do return end
  ::lbl_12::
  L1_2 = A0_2.virtualCursorDeadzoneRaw
  L2_2 = A0_2.optionsData
  L2_2 = L2_2.deadzoneMultiplier
  L1_2 = L1_2 * L2_2
  A0_2.deadzoneValue = L1_2
  L1_2 = Clamp
  L2_2 = A0_2.deadzoneValue
  L3_2 = A0_2.DEADZONE_MIN_VALUE
  L4_2 = A0_2.DEADZONE_MAX_VALUE
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.deadzoneValue = L1_2
  L1_2 = A0_2.deadzoneValue
  L1_2 = 1 - L1_2
  A0_2.oneMinusDeadzoneRaw = L1_2
end

L6_1.CacheDeadzoneValues = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.SetVirtualCursorConfigValues
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

L6_1.OnVirtualCursorConfigChanged = L7_1

function L7_1(A0_2)
  local L1_2
  A0_2.checkForMagnetismStart = false
  L1_2 = EntityId
  L1_2 = L1_2()
  A0_2.magnetismEntityId = L1_2
end

L6_1.OnMagnetismInterruption = L7_1

function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.OnCanvasSizeOrScaleChange
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.CenterCursor
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.CheckIfVirtualCursorShouldBeEnabled
  L1_2(L2_2)
end

L6_1.OnLoadingScreenDismissed = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = _UPVALUE0_
  L3_2 = L2_2
  L2_2 = L2_2.InsertTransitionDataFromObject
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

L6_1.RegisterTransitionDataFromObject = L7_1

function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = _UPVALUE0_
  L6_2 = L5_2
  L5_2 = L5_2.InsertTransitionDataFromParams
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L10_2 = A4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end

L6_1.RegisterTransitionDataFromParams = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = UiCanvasBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetDrawOrder
  L3_2 = A0_2.canvasId
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

L6_1.SetDrawOrder = L7_1

function L7_1(A0_2)
  local L1_2, L2_2
  A0_2.isVirtualKeyboardEnabled = true
  L2_2 = A0_2
  L1_2 = A0_2.CheckIfVirtualCursorShouldBeEnabled
  L1_2(L2_2)
end

L6_1.OnVirtualKeyboardOpened = L7_1

function L7_1(A0_2)
  local L1_2, L2_2
  A0_2.isVirtualKeyboardEnabled = false
  L2_2 = A0_2
  L1_2 = A0_2.CheckIfVirtualCursorShouldBeEnabled
  L1_2(L2_2)
end

L6_1.OnVirtualKeyboardClosed = L7_1
return L6_1
