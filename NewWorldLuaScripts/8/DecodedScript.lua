local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = {}
L0_1.screenHandler = nil
L1_1 = RequireScript
L2_1 = "LyShineUI._Common.BaseElement"
L1_1 = L1_1(L2_1)
L3_1 = L1_1
L2_1 = L1_1.CreateNewElement
L4_1 = L0_1
L2_1(L3_1, L4_1)

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  A0_2.isAScreen = true
  L1_2 = _UPVALUE0_
  L1_2 = L1_2.OnInit
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = UiElementBus
  L1_2 = L1_2.Event
  L1_2 = L1_2.GetCanvas
  L2_2 = A0_2.entityId
  L1_2 = L1_2(L2_2)
  A0_2.canvasId = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.BusConnect
  L3_2 = UiCanvasNotificationBus
  L4_2 = A0_2.canvasId
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.BusConnect
  L3_2 = LyShineManagerNotificationBus
  L4_2 = A0_2.canvasId
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = UiCanvasBus
  L1_2 = L1_2.Event
  L1_2 = L1_2.GetCanvasName
  L2_2 = A0_2.canvasId
  L1_2 = L1_2(L2_2)
  A0_2.name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.OnConfigChanged
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.BusConnect
  L3_2 = ConfigSystemEventBus
  L1_2(L2_2, L3_2)
  L1_2 = LyShineScriptBindRequestBus
  L1_2 = L1_2.Broadcast
  L1_2 = L1_2.GetCVar
  L2_2 = "sys_DeactivateConsole"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 == 0
  if L1_2 then
    L2_2 = tostring
    L3_2 = A0_2.canvasId
    L2_2 = L2_2(L3_2)
    L3_2 = g_baseScreenTracking
    L3_2 = L3_2[L2_2]
    if L3_2 then
      L3_2 = Entity
      L4_2 = A0_2.entityId
      L3_2 = L3_2(L4_2)
      L5_2 = L3_2
      L4_2 = L3_2.GetName
      L4_2 = L4_2(L5_2)
      L5_2 = "ERROR: BASE SCREEN Multiple base screens in canvas "
      L6_2 = tostring
      L7_2 = A0_2.name
      L6_2 = L6_2(L7_2)
      L7_2 = " on entity "
      L8_2 = L4_2
      L9_2 = " - Previous entities:"
      L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
      L6_2 = ipairs
      L7_2 = g_baseScreenTracking
      L7_2 = L7_2[L2_2]
      L6_2, L7_2, L8_2 = L6_2(L7_2)
      for L9_2, L10_2 in L6_2, L7_2, L8_2 do
        L11_2 = L5_2
        L12_2 = " "
        L13_2 = L10_2
        L5_2 = L11_2 .. L12_2 .. L13_2
      end
      L6_2 = Debug
      L6_2 = L6_2.Log
      L7_2 = L5_2
      L6_2(L7_2)
      L6_2 = Debug
      L6_2 = L6_2.Log
      L7_2 = debug
      L7_2 = L7_2.traceback
      L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2()
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = g_baseScreenTracking
      L7_2 = L7_2[L2_2]
      L8_2 = L4_2
      L6_2(L7_2, L8_2)
    else
      L3_2 = g_baseScreenTracking
      L3_2 = L3_2[L2_2]
      if not L3_2 then
        L3_2 = g_baseScreenTracking
        L4_2 = {}
        L3_2[L2_2] = L4_2
      end
      L3_2 = Entity
      L4_2 = A0_2.entityId
      L3_2 = L3_2(L4_2)
      L5_2 = L3_2
      L4_2 = L3_2.GetName
      L4_2 = L4_2(L5_2)
      L5_2 = table
      L5_2 = L5_2.insert
      L6_2 = g_baseScreenTracking
      L6_2 = L6_2[L2_2]
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
    end
  end
end

L0_1.OnInit = L2_1

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = ConfigProviderEventBus
  L1_2 = L1_2.Broadcast
  L1_2 = L1_2.GetBool
  L2_2 = "UIFeatures.enable-automation"
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2.screenHandler
    if not L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.ConnectDynamicScreenBus
      L1_2(L2_2)
    end
  end
end

L0_1.OnConfigChanged = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.screenHandler
  if not L1_2 then
    L1_2 = DynamicBus
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.Connect
    L2_2 = A0_2.entityId
    L3_2 = A0_2
    L1_2 = L1_2(L2_2, L3_2)
    A0_2.screenHandler = L1_2
  end
end

L0_1.ConnectDynamicScreenBus = L2_1

function L2_1(A0_2)
  local L1_2
  return A0_2
end

L0_1.GetTable = L2_1

function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2.canvasId
  return L1_2
end

L0_1.GetCanvasId = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.screenHandler
  if L1_2 then
    L1_2 = DynamicBus
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.Disconnect
    L2_2 = A0_2.entityId
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
    A0_2.screenHandler = nil
  end
  L1_2 = A0_2.OnScreenShutdown
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2.OnScreenShutdown
    L1_2(L2_2)
  end
  L1_2 = LyShineScriptBindRequestBus
  L1_2 = L1_2.Broadcast
  L1_2 = L1_2.GetCVar
  L2_2 = "sys_DeactivateConsole"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 == 0
  if L1_2 then
    L2_2 = tostring
    L3_2 = A0_2.canvasId
    L2_2 = L2_2(L3_2)
    L3_2 = g_baseScreenTracking
    L3_2[L2_2] = nil
  end
  L2_2 = A0_2.canvasId
  if L2_2 then
    L2_2 = UiCanvasBus
    L2_2 = L2_2.Event
    L2_2 = L2_2.GetCanvasName
    L3_2 = A0_2.canvasId
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = string
      L3_2 = L3_2.len
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      if 0 < L3_2 then
        L3_2 = LyShineDataLayerBus
        L3_2 = L3_2.Broadcast
        L3_2 = L3_2.SetData
        L4_2 = A0_2.dataLayer
        L5_2 = L4_2
        L4_2 = L4_2.GetIsScreenOpenDatapath
        L6_2 = L2_2
        L4_2 = L4_2(L5_2, L6_2)
        L5_2 = false
        L3_2(L4_2, L5_2)
      end
    end
  else
    L2_2 = Log
    L3_2 = [[
[WARNING] BaseScreen.canvasId is nil and that should never happen. CALLSTACK:
%s]]
    L4_2 = debug
    L4_2 = L4_2.traceback
    L4_2, L5_2, L6_2 = L4_2()
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end

L0_1.OnShutdown = L2_1

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = UiCanvasBus
  L3_2 = L3_2.Event
  L3_2 = L3_2.GetCanvasName
  L4_2 = A0_2.canvasId
  L3_2 = L3_2(L4_2)
  L4_2 = UiElementBus
  L4_2 = L4_2.Event
  L4_2 = L4_2.GetName
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = LyShineManagerBus
  L5_2 = L5_2.Broadcast
  L5_2 = L5_2.PushMemoryContext
  L6_2 = string
  L6_2 = L6_2.format
  L7_2 = "Canvas:%s"
  L8_2 = L3_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2)
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = LyShineManagerBus
  L5_2 = L5_2.Broadcast
  L5_2 = L5_2.PushMemoryContext
  L6_2 = string
  L6_2 = L6_2.format
  L7_2 = "Entity:%s.onAction:%s"
  L8_2 = L4_2
  L9_2 = A2_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = L0_1
  L5_2 = L5_2.OnActionInternal
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = LyShineManagerBus
  L6_2 = L6_2.Broadcast
  L6_2 = L6_2.PopMemoryContext
  L6_2()
  L6_2 = LyShineManagerBus
  L6_2 = L6_2.Broadcast
  L6_2 = L6_2.PopMemoryContext
  L6_2()
  return L5_2
end

L0_1.OnAction = L2_1

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = UiCanvasBus
  L3_2 = L3_2.Event
  L3_2 = L3_2.GetCanvasName
  L4_2 = A0_2.canvasId
  L3_2 = L3_2(L4_2)
  L4_2 = UiElementBus
  L4_2 = L4_2.Event
  L4_2 = L4_2.GetName
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = string
  L5_2 = L5_2.format
  L6_2 = "%s, entity %s, onAction: %s"
  L7_2 = L3_2
  L8_2 = L4_2
  L9_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = A0_2.dataLayer
  L7_2 = L6_2
  L6_2 = L6_2.Call
  L8_2 = 1600008420
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = string
  L6_2 = L6_2.find
  L7_2 = A2_2
  L8_2 = ":"
  L6_2 = L6_2(L7_2, L8_2)
  if L6_2 ~= nil then
    L6_2 = StringSplit
    L7_2 = A2_2
    L8_2 = ":"
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = L6_2[1]
    L8_2 = L6_2[2]
    L9_2 = nil
    if L7_2 == "self" then
      L9_2 = A0_2
    elseif L7_2 == "entity" then
      L10_2 = A0_2.registrar
      L11_2 = L10_2
      L10_2 = L10_2.GetEntityTable
      L12_2 = A1_2
      L10_2 = L10_2(L11_2, L12_2)
      L9_2 = L10_2
    elseif L7_2 == "entityParent" then
      L10_2 = UiElementBus
      L10_2 = L10_2.Event
      L10_2 = L10_2.GetParent
      L11_2 = A1_2
      L10_2 = L10_2(L11_2)
      L11_2 = A0_2.registrar
      L12_2 = L11_2
      L11_2 = L11_2.GetEntityTable
      L13_2 = L10_2
      L11_2 = L11_2(L12_2, L13_2)
      L9_2 = L11_2
    elseif L7_2 == "ancestor" then
      L10_2 = A1_2
      while true do
        L12_2 = L10_2
        L11_2 = L10_2.IsValid
        L11_2 = L11_2(L12_2)
        if not L11_2 then
          break
        end
        L11_2 = A0_2.registrar
        L12_2 = L11_2
        L11_2 = L11_2.GetEntityTable
        L13_2 = L10_2
        L11_2 = L11_2(L12_2, L13_2)
        L9_2 = L11_2
        if L9_2 then
          L11_2 = type
          L12_2 = L9_2[L8_2]
          L11_2 = L11_2(L12_2)
          if L11_2 == "function" then
            break
          end
        end
        L11_2 = UiElementBus
        L11_2 = L11_2.Event
        L11_2 = L11_2.GetParent
        L12_2 = L10_2
        L11_2 = L11_2(L12_2)
        L10_2 = L11_2
      end
    else
      L10_2 = Log
      L11_2 = "BaseScreen.lua OnAction() ERROR - actionScope not found: "
      L12_2 = L7_2
      L11_2 = L11_2 .. L12_2
      L10_2(L11_2)
      L10_2 = false
      return L10_2
    end
    if L9_2 ~= nil then
      L10_2 = type
      L11_2 = L9_2[L8_2]
      L10_2 = L10_2(L11_2)
      if L10_2 == "function" then
        L10_2 = L9_2[L8_2]
        L11_2 = L9_2
        L12_2 = A1_2
        L10_2(L11_2, L12_2)
        L10_2 = true
        return L10_2
    end
    else
      L10_2 = UiElementBus
      L10_2 = L10_2.Event
      L10_2 = L10_2.GetName
      L11_2 = A1_2
      L10_2 = L10_2(L11_2)
      L11_2 = Log
      L12_2 = "BaseScreen.lua OnAction() ERROR - function not found: ["
      L13_2 = A2_2
      L14_2 = "], entityName: ["
      L15_2 = tostring
      L16_2 = L10_2
      L15_2 = L15_2(L16_2)
      L16_2 = "]"
      L12_2 = L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2
      L11_2(L12_2)
      L11_2 = false
      return L11_2
    end
  end
  L6_2 = false
  return L6_2
end

L0_1.OnActionInternal = L2_1

function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = CloneUiElement
  L5_2 = A0_2.canvasId
  L6_2 = A0_2.registrar
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  return L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end

L0_1.CloneElement = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Merge
  L3_2 = A1_2
  L4_2 = L0_1
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
end

L0_1.CreateNewScreen = L2_1
return L0_1
