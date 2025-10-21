local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.Fill = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.NameText = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.Frame = L2_1
L0_1.Properties = L1_1
L0_1.elementName = ""
L0_1.elementDataNodePath = ""
L0_1.controlledEntityId = nil
L0_1.canvasDrawOrder = 0
L0_1.draggingDrawOrder = 999
L0_1.snapInterval = 12
L1_1 = RequireScript
L2_1 = "LyShineUI._Common.BaseElement"
L1_1 = L1_1(L2_1)
L3_1 = L1_1
L2_1 = L1_1.CreateNewElement
L4_1 = L0_1
L2_1(L3_1, L4_1)
L2_1 = RequireScript
L3_1 = "LyShineUI._Common.StyleHelpers"
L2_1 = L2_1(L3_1)
L3_1 = RequireScript
L4_1 = "LyShineUI._Common.ScriptedEntityTweenerCommon"
L3_1 = L3_1(L4_1)
L4_1 = RequireScript
L5_1 = "LyShineUI.Hud2024.HudLayoutData.HudLayoutCommon"
L4_1 = L4_1(L5_1)

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = UiElementBus
  L1_2 = L1_2.Event
  L1_2 = L1_2.GetParent
  L2_2 = A0_2.entityId
  L1_2 = L1_2(L2_2)
  A0_2.controlledEntityId = L1_2
  L1_2 = UiElementBus
  L1_2 = L1_2.Event
  L1_2 = L1_2.GetCanvas
  L2_2 = A0_2.entityId
  L1_2 = L1_2(L2_2)
  A0_2.canvasId = L1_2
  L1_2 = A0_2.dataLayer
  L2_2 = L1_2
  L1_2 = L1_2.RegisterAndExecuteDataCallback
  L3_2 = A0_2
  L4_2 = _UPVALUE0_
  L4_2 = L4_2.editModeEnabledDataNodePath
  L5_2 = A0_2.OnHudEditModeEnabledChanged
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.dataLayer
  L2_2 = L1_2
  L1_2 = L1_2.RegisterAndExecuteDataCallback
  L3_2 = A0_2
  L4_2 = _UPVALUE0_
  L4_2 = L4_2.editModeSelectedElementDataNodePath
  L5_2 = A0_2.OnSelectedElementChanged
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.dataLayer
  L2_2 = L1_2
  L1_2 = L1_2.RegisterAndExecuteDataCallback
  L3_2 = A0_2
  L4_2 = _UPVALUE0_
  L4_2 = L4_2.editModeGridSnappingDataNodePath
  L5_2 = A0_2.OnGridSnappingChanged
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.dataLayer
  L2_2 = L1_2
  L1_2 = L1_2.RegisterAndExecuteDataCallback
  L3_2 = A0_2
  L4_2 = _UPVALUE0_
  L4_2 = L4_2.editModeDirectionSnappingDataNodePath
  L5_2 = A0_2.OnDirectionSnappingChanged
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2.BusConnect
  L3_2 = UiDraggableNotificationBus
  L4_2 = A0_2.entityId
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.draggableHandler = L1_2
  L1_2 = _UPVALUE1_
  L2_2 = L1_2
  L1_2 = L1_2.ModifyStyle
  L3_2 = A0_2.UIStyle
  L3_2 = L3_2.FONT_STYLE_NIMBUS_MEDIUM_NORERENDER
  L4_2 = {}
  L5_2 = A0_2.UIStyle
  L5_2 = L5_2.FONT_EFFECT_OUTLINE
  L4_2.fontEffect = L5_2
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = SetTextStyle
  L3_2 = A0_2.Properties
  L3_2 = L3_2.NameText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = UiImageBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetColor
  L3_2 = A0_2.Properties
  L3_2 = L3_2.Fill
  L4_2 = A0_2.UIStyle
  L4_2 = L4_2.COLOR_TEAL
  L2_2(L3_2, L4_2)
  L2_2 = UiElementBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetIsEnabled
  L3_2 = A0_2.entityId
  L4_2 = false
  L2_2(L3_2, L4_2)
end

L0_1.OnInit = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if not A1_2 then
    return
  end
  A0_2.elementName = A1_2
  L2_2 = _UPVALUE0_
  L2_2 = L2_2.activeLayoutDataNodePath
  L3_2 = "."
  L4_2 = tostring
  L5_2 = A0_2.elementName
  L4_2 = L4_2(L5_2)
  L2_2 = L2_2 .. L3_2 .. L4_2
  A0_2.elementDataNodePath = L2_2
  L2_2 = _UPVALUE0_
  L3_2 = L2_2
  L2_2 = L2_2.GetLocTagFromElementName
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = UiTextBus
  L3_2 = L3_2.Event
  L3_2 = L3_2.SetTextWithFlags
  L4_2 = A0_2.Properties
  L4_2 = L4_2.NameText
  L5_2 = L2_2
  L6_2 = eUiTextSet_SetLocalized
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.SetElementName = L5_1

function L5_1(A0_2, A1_2)
  A0_2.controlledEntityId = A1_2
end

L0_1.SetControlledEntity = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    return
  end
  L2_2 = UiElementBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetIsEnabled
  L3_2 = A0_2.entityId
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

L0_1.OnHudEditModeEnabledChanged = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2 or nil
  if A1_2 then
    L2_2 = A0_2.elementName
    L2_2 = A1_2 == L2_2
  end
  A0_2.isSelected = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.UpdateVisuals
  L2_2(L3_2)
end

L0_1.OnSelectedElementChanged = L5_1

function L5_1(A0_2, A1_2)
  A0_2.isGridSnappingEnabled = A1_2
end

L0_1.OnGridSnappingChanged = L5_1

function L5_1(A0_2, A1_2)
  A0_2.isDirectionSnappingEnabled = A1_2
end

L0_1.OnDirectionSnappingChanged = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = Vector2
  L3_2 = A1_2.x
  L4_2 = A0_2.dragOffset
  L4_2 = L4_2.x
  L3_2 = L3_2 - L4_2
  L4_2 = A1_2.y
  L5_2 = A0_2.dragOffset
  L5_2 = L5_2.y
  L4_2 = L4_2 - L5_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2.isGridSnappingEnabled
  if L3_2 then
    L3_2 = A0_2.snapInterval
    if L3_2 then
      L3_2 = A0_2.snapInterval
      if 0 < L3_2 then
        L3_2 = Math
        L3_2 = L3_2.Round
        L4_2 = L2_2.x
        L5_2 = A0_2.snapInterval
        L4_2 = L4_2 / L5_2
        L3_2 = L3_2(L4_2)
        L4_2 = A0_2.snapInterval
        L3_2 = L3_2 * L4_2
        L2_2.x = L3_2
        L3_2 = Math
        L3_2 = L3_2.Round
        L4_2 = L2_2.y
        L5_2 = A0_2.snapInterval
        L4_2 = L4_2 / L5_2
        L3_2 = L3_2(L4_2)
        L4_2 = A0_2.snapInterval
        L3_2 = L3_2 * L4_2
        L2_2.y = L3_2
      end
    end
  end
  L3_2 = A0_2.isDirectionSnappingEnabled
  if L3_2 then
    L3_2 = A0_2.dragStartPos
    if L3_2 then
      L3_2 = math
      L3_2 = L3_2.abs
      L4_2 = L2_2.x
      L5_2 = A0_2.dragStartPos
      L5_2 = L5_2.x
      L4_2 = L4_2 - L5_2
      L3_2 = L3_2(L4_2)
      L4_2 = math
      L4_2 = L4_2.abs
      L5_2 = L2_2.y
      L6_2 = A0_2.dragStartPos
      L6_2 = L6_2.y
      L5_2 = L5_2 - L6_2
      L4_2 = L4_2(L5_2)
      if L3_2 < L4_2 then
        L5_2 = A0_2.dragStartPos
        L5_2 = L5_2.x
        L2_2.x = L5_2
      else
        L5_2 = A0_2.dragStartPos
        L5_2 = L5_2.y
        L2_2.y = L5_2
      end
    end
  end
  L3_2 = UiTransformBus
  L3_2 = L3_2.Event
  L3_2 = L3_2.SetViewportPosition
  L4_2 = A0_2.controlledEntityId
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end

L0_1.OnDrag = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2.isDragging = false
  A0_2.dragStartPos = nil
  L2_2 = {}
  L3_2 = UiTransformBus
  L3_2 = L3_2.Event
  L3_2 = L3_2.GetLocalPositionX
  L4_2 = A0_2.controlledEntityId
  L3_2 = L3_2(L4_2)
  L2_2.x = L3_2
  L3_2 = UiTransformBus
  L3_2 = L3_2.Event
  L3_2 = L3_2.GetLocalPositionY
  L4_2 = A0_2.controlledEntityId
  L3_2 = L3_2(L4_2)
  L2_2.y = L3_2
  L3_2 = A0_2.dataLayer
  L4_2 = L3_2
  L3_2 = L3_2.SetDataWithTable
  L5_2 = A0_2.elementDataNodePath
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = UiCanvasBus
  L3_2 = L3_2.Event
  L3_2 = L3_2.SetDrawOrder
  L4_2 = A0_2.canvasId
  L5_2 = A0_2.canvasDrawOrder
  L3_2(L4_2, L5_2)
  L3_2 = DynamicBus
  L3_2 = L3_2.HudEditMode
  L3_2 = L3_2.Broadcast
  L3_2 = L3_2.SetIsElementBeingDragged
  L4_2 = false
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.UpdateVisuals
  L3_2(L4_2)
end

L0_1.OnDragEnd = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2.isDragging = true
  L2_2 = UiTransformBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.GetViewportPosition
  L3_2 = A0_2.controlledEntityId
  L2_2 = L2_2(L3_2)
  A0_2.dragStartPos = L2_2
  L2_2 = Vector2
  L3_2 = A1_2.x
  L4_2 = A0_2.dragStartPos
  L4_2 = L4_2.x
  L3_2 = L3_2 - L4_2
  L4_2 = A1_2.y
  L5_2 = A0_2.dragStartPos
  L5_2 = L5_2.y
  L4_2 = L4_2 - L5_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.dragOffset = L2_2
  L2_2 = UiCanvasBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.GetDrawOrder
  L3_2 = A0_2.canvasId
  L2_2 = L2_2(L3_2)
  A0_2.canvasDrawOrder = L2_2
  L2_2 = UiCanvasBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetDrawOrder
  L3_2 = A0_2.canvasId
  L4_2 = A0_2.draggingDrawOrder
  L2_2(L3_2, L4_2)
  L2_2 = DynamicBus
  L2_2 = L2_2.HudEditMode
  L2_2 = L2_2.Broadcast
  L2_2 = L2_2.SetIsElementBeingDragged
  L3_2 = true
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.UpdateVisuals
  L2_2(L3_2)
end

L0_1.OnDragStart = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  A0_2.isFocused = true
  L1_2 = A0_2.ScriptedEntityTweener
  L2_2 = L1_2
  L1_2 = L1_2.PlayC
  L3_2 = A0_2.Properties
  L3_2 = L3_2.Fill
  L4_2 = 0.3
  L5_2 = _UPVALUE0_
  L5_2 = L5_2.fadeInQuadOut
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2.UpdateVisuals
  L1_2(L2_2)
end

L0_1.OnFocus = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  A0_2.isFocused = false
  L1_2 = A0_2.ScriptedEntityTweener
  L2_2 = L1_2
  L1_2 = L1_2.PlayC
  L3_2 = A0_2.Properties
  L3_2 = L3_2.Fill
  L4_2 = 0.3
  L5_2 = _UPVALUE0_
  L5_2 = L5_2.opacityTo50
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2.UpdateVisuals
  L1_2(L2_2)
end

L0_1.OnUnfocus = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = LyShineDataLayerBus
  L1_2 = L1_2.Broadcast
  L1_2 = L1_2.SetData
  L2_2 = _UPVALUE0_
  L2_2 = L2_2.editModeSelectedElementDataNodePath
  L3_2 = A0_2.elementName
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.UpdateVisuals
  L1_2(L2_2)
end

L0_1.OnPress = L5_1

function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.UpdateVisuals
  L1_2(L2_2)
end

L0_1.OnRelease = L5_1

function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.UpdateFrame
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.UpdateText
  L1_2(L2_2)
end

L0_1.UpdateVisuals = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 0
  L2_2 = A0_2.isDragging
  if L2_2 then
    L1_2 = 0.8
  else
    L2_2 = A0_2.isSelected
    if L2_2 then
      L1_2 = 0.5
    else
      L2_2 = A0_2.isFocused
      if L2_2 then
        L1_2 = 0.25
      end
    end
  end
  L2_2 = A0_2.frameOpacity
  if L1_2 == L2_2 then
    return
  end
  A0_2.frameOpacity = L1_2
  L2_2 = A0_2.ScriptedEntityTweener
  L3_2 = L2_2
  L2_2 = L2_2.Stop
  L4_2 = A0_2.Properties
  L4_2 = L4_2.Frame
  L2_2(L3_2, L4_2)
  if L1_2 == 0 then
    L2_2 = FadeAndSetIsEnabled
    L3_2 = A0_2
    L4_2 = A0_2.Properties
    L4_2 = L4_2.Frame
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
    return
  end
  L2_2 = UiElementBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetIsEnabled
  L3_2 = A0_2.Properties
  L3_2 = L3_2.Frame
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.ScriptedEntityTweener
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = A0_2.Properties
  L4_2 = L4_2.Frame
  L5_2 = 0.3
  L6_2 = {}
  L6_2.opacity = L1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end

L0_1.UpdateFrame = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.isSelected
  if not L1_2 then
    L1_2 = A0_2.isFocused
    if not L1_2 then
      goto lbl_11
    end
  end
  L1_2 = A0_2.UIStyle
  L1_2 = L1_2.COLOR_WHITE
  ::lbl_11::
  if not L1_2 then
    L1_2 = A0_2.UIStyle
    L1_2 = L1_2.COLOR_TAN_WARM
  end
  L2_2 = A0_2.textColor
  if L1_2 == L2_2 then
    return
  end
  A0_2.textColor = L1_2
  L2_2 = A0_2.ScriptedEntityTweener
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = A0_2.Properties
  L4_2 = L4_2.NameText
  L5_2 = 0.3
  L6_2 = {}
  L6_2.color = L1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end

L0_1.UpdateText = L5_1
return L0_1
