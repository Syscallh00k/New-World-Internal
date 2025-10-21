local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = g_Reflect
L1_1 = L0_1
L0_1 = L0_1.RequireReflectionCategory
L2_1 = eReflectionCategory_FtueRequest
L0_1(L1_1, L2_1)
L0_1 = g_Reflect
L1_1 = L0_1
L0_1 = L0_1.RequireReflectionCategory
L2_1 = eReflectionCategory_Territory_Objectives
L0_1(L1_1, L2_1)
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.Checkbox = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.Checkmark = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.Shadow = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.TaskDescription = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.ProgressText = L2_1
L2_1 = {}
L2_1.default = false
L1_1.IsOnHUD = L2_1
L0_1.Properties = L1_1
L0_1.progressString = ""
L0_1.progressNumerator = ""
L0_1.progressDenominator = ""
L0_1.PRIMARY_BOX_IMAGE = "lyshineui/images/objectives/hud/taskBoxPrimary.png"
L0_1.SECONDARY_BOX_IMAGE = "lyshineui/images/objectives/hud/taskBoxSecondary.png"
L0_1.TIMEOUT_FORMAT = "  <font color=%s>%s</font>"
L0_1.TIMEOUT_WARN_TIME = 60
L0_1.TIMEOUT_ALERT_TIME = 30
L0_1.height = 24
L0_1.isFtue = false
L1_1 = RequireScript
L2_1 = "LyShineUI._Common.BaseElement"
L1_1 = L1_1(L2_1)
L3_1 = L1_1
L2_1 = L1_1.CreateNewElement
L4_1 = L0_1
L2_1(L3_1, L4_1)
L2_1 = RequireScript
L3_1 = "LyShineUI._Common.ScriptedEntityTweenerCommon"
L2_1 = L2_1(L3_1)
L3_1 = RequireScript
L4_1 = "LyShineUI._Common.ScriptActionQueue"
L3_1 = L3_1(L4_1)
L4_1 = RequireScript
L5_1 = "LyShineUI._Common.ObjectivesDataHandler"
L4_1 = L4_1(L5_1)
L5_1 = RequireScript
L6_1 = "LyShineUI._Common.TimeHelperFunctions"
L5_1 = L5_1(L6_1)

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = _UPVALUE0_
  L1_2 = L1_2.OnInit
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = _UPVALUE1_
  L2_2 = L1_2
  L1_2 = L1_2.QueueCreate
  L1_2 = L1_2(L2_2)
  A0_2.actionQueue = L1_2
  L1_2 = A0_2.UIStyle
  L1_2 = L1_2.COLOR_GRAY_80
  A0_2.boxColor = L1_2
  L1_2 = UiImageBus
  L1_2 = L1_2.Event
  L1_2 = L1_2.SetColor
  L2_2 = A0_2.Properties
  L2_2 = L2_2.Checkbox
  L3_2 = A0_2.boxColor
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.UIStyle
  L1_2 = L1_2.COLOR_GRAY_100
  A0_2.progressColor = L1_2
  L1_2 = {}
  L2_2 = A0_2.UIStyle
  L2_2 = L2_2.FONT_FAMILY_NIMBUS_MEDIUM
  L1_2.fontFamily = L2_2
  L2_2 = A0_2.UIStyle
  L2_2 = L2_2.FONT_SIZE_CORE_BODY_MD
  L1_2.fontSize = L2_2
  L2_2 = A0_2.COLOR_GRAY_95
  L1_2.fontColor = L2_2
  L1_2.characterSpacing = 10
  L1_2.lineSpacing = 0
  L2_2 = {}
  L3_2 = A0_2.UIStyle
  L3_2 = L3_2.FONT_FAMILY_NIMBUS_BOLD
  L2_2.fontFamily = L3_2
  L3_2 = A0_2.UIStyle
  L3_2 = L3_2.FONT_SIZE_CORE_BODY_MD
  L2_2.fontSize = L3_2
  L3_2 = A0_2.COLOR_GRAY_95
  L2_2.fontColor = L3_2
  L2_2.characterSpacing = 10
  L3_2 = A0_2.Properties
  L3_2 = L3_2.IsOnHUD
  if L3_2 then
    L3_2 = A0_2.UIStyle
    L1_2 = L3_2.FONT_STYLE_PINNED_OBJECTIVE_BODY
    L3_2 = A0_2.UIStyle
    L2_2 = L3_2.FONT_STYLE_PINNED_OBJECTIVE_PROGRESS
    L3_2 = UiTransformBus
    L3_2 = L3_2.Event
    L3_2 = L3_2.SetScale
    L4_2 = A0_2.Properties
    L4_2 = L4_2.Checkbox
    L5_2 = Vector2
    L6_2 = 1.4
    L7_2 = 1.4
    L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = UiTransformBus
    L3_2 = L3_2.Event
    L3_2 = L3_2.SetLocalPositionX
    L4_2 = A0_2.Properties
    L4_2 = L4_2.Checkbox
    L5_2 = UiTransformBus
    L5_2 = L5_2.Event
    L5_2 = L5_2.GetLocalPositionX
    L6_2 = A0_2.Properties
    L6_2 = L6_2.Checkbox
    L5_2 = L5_2(L6_2)
    L5_2 = L5_2 - 2
    L3_2(L4_2, L5_2)
  end
  L3_2 = SetTextStyle
  L4_2 = A0_2.Properties
  L4_2 = L4_2.TaskDescription
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = SetTextStyle
  L4_2 = A0_2.Properties
  L4_2 = L4_2.ProgressText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = UiTextBus
  L3_2 = L3_2.Event
  L3_2 = L3_2.SetText
  L4_2 = A0_2.Properties
  L4_2 = L4_2.ProgressText
  L5_2 = ""
  L3_2(L4_2, L5_2)
  L3_2 = ColorRgbaToHexString
  L4_2 = A0_2.UIStyle
  L4_2 = L4_2.COLOR_WHITE
  L3_2 = L3_2(L4_2)
  A0_2.timerColorNormal = L3_2
  L3_2 = ColorRgbaToHexString
  L4_2 = A0_2.UIStyle
  L4_2 = L4_2.COLOR_YELLOW
  L3_2 = L3_2(L4_2)
  A0_2.timerColorWarn = L3_2
  L3_2 = ColorRgbaToHexString
  L4_2 = A0_2.UIStyle
  L4_2 = L4_2.COLOR_RED
  L3_2 = L3_2(L4_2)
  A0_2.timerColorAlert = L3_2
  L4_2 = A0_2
  L3_2 = A0_2.SetTaskStyle
  L5_2 = A0_2.TASK_STYLE_NORMAL
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.BusConnect
  L5_2 = UiElementNotificationBus
  L6_2 = A0_2.entityId
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = FtueSystemRequestBus
  L3_2 = L3_2.Broadcast
  L3_2 = L3_2.IsFtue
  L3_2 = L3_2()
  A0_2.isFtue = L3_2
end

L0_1.OnInit = L6_1

function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.SetTaskState
  L3_2 = eObjectiveTaskState_Active
  L1_2(L2_2, L3_2)
end

L0_1.CanvasLoaded = L6_1

function L6_1(A0_2)
  local L1_2
end

L0_1.OnShutdown = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = UiOffsets
  L3_2 = 19
  L4_2 = 0
  L5_2 = 10
  L6_2 = 20
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2.descriptionOffsets = L2_2
  A0_2.style = A1_2
end

L0_1.SetTaskStyle = L6_1

function L6_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 == nil then
    return
  end
  L4_2 = A0_2.taskId
  if A1_2 ~= L4_2 then
    A0_2.targetTime = nil
  end
  A0_2.taskId = A1_2
  A0_2.level = A2_2
  A0_2.index = A3_2
  L4_2 = A3_2 ~= nil
  A0_2.isConsecutiveTask = L4_2
  L4_2 = A0_2.tickBusHandler
  if L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2.BusDisconnect
    L6_2 = A0_2.tickBusHandler
    L4_2(L5_2, L6_2)
    A0_2.tickBusHandler = nil
  end
  L5_2 = A0_2
  L4_2 = A0_2.BusDisconnect
  L6_2 = A0_2.objectiveTaskNotificationBusHandler
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.BusConnect
  L6_2 = ObjectiveTaskNotificationBus
  L7_2 = A0_2.taskId
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2.objectiveTaskNotificationBusHandler = L4_2
  L5_2 = A0_2
  L4_2 = A0_2.UpdateIndent
  L4_2(L5_2)
  L4_2 = UiTextBus
  L4_2 = L4_2.Event
  L4_2 = L4_2.SetIsMarkupEnabled
  L5_2 = A0_2.Properties
  L5_2 = L5_2.TaskDescription
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = UiImageBus
  L4_2 = L4_2.Event
  L4_2 = L4_2.SetSpritePathname
  L5_2 = A0_2.Properties
  L5_2 = L5_2.Checkbox
  if A2_2 == 0 then
    L6_2 = A0_2.PRIMARY_BOX_IMAGE
    if L6_2 then
      goto lbl_51
    end
  end
  L6_2 = A0_2.SECONDARY_BOX_IMAGE
  ::lbl_51::
  L4_2(L5_2, L6_2)
  L4_2 = ObjectiveTaskRequestBus
  L4_2 = L4_2.Event
  L4_2 = L4_2.GetTasks
  L5_2 = A0_2.taskId
  L4_2 = L4_2(L5_2)
  L5_2 = ObjectiveTaskRequestBus
  L5_2 = L5_2.Event
  L5_2 = L5_2.GetTarget
  L6_2 = A0_2.taskId
  L5_2 = L5_2(L6_2)
  A0_2.targetNumber = L5_2
  L5_2 = #L4_2
  L5_2 = L5_2 == 0
  A0_2.hasProgress = L5_2
  L5_2 = A0_2.hasProgress
  if not L5_2 then
    A0_2.progressString = ""
  end
  L5_2 = UiTransform2dBus
  L5_2 = L5_2.Event
  L5_2 = L5_2.SetOffsets
  L6_2 = A0_2.Properties
  L6_2 = L6_2.TaskDescription
  L7_2 = A0_2.descriptionOffsets
  L5_2(L6_2, L7_2)
  L5_2 = ObjectiveTaskRequestBus
  L5_2 = L5_2.Event
  L5_2 = L5_2.GetHideProgress
  L6_2 = A0_2.taskId
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2.hasProgress
  if L6_2 and not L5_2 then
    L6_2 = tostring
    L7_2 = A0_2.targetNumber
    L6_2 = L6_2(L7_2)
    A0_2.progressDenominator = L6_2
    L6_2 = tostring
    L8_2 = A0_2
    L7_2 = A0_2.GetProgressNumber
    L7_2, L8_2 = L7_2(L8_2)
    L6_2 = L6_2(L7_2, L8_2)
    A0_2.progressNumerator = L6_2
    L6_2 = A0_2.progressNumerator
    L7_2 = " / "
    L8_2 = A0_2.progressDenominator
    L6_2 = L6_2 .. L7_2 .. L8_2
    A0_2.progressString = L6_2
  end
  L7_2 = A0_2
  L6_2 = A0_2.UpdateProgress
  L8_2 = true
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2.RefreshDescription
  L6_2(L7_2)
end

L0_1.SetTaskById = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 == nil then
    return
  end
  A0_2.handInTaskId = A1_2
  A0_2.taskState = nil
  A0_2.taskId = nil
  A0_2.level = nil
  A0_2.index = nil
  L2_2 = UiImageBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetSpritePathname
  L3_2 = A0_2.Properties
  L3_2 = L3_2.Checkbox
  L4_2 = A0_2.PRIMARY_BOX_IMAGE
  L2_2(L3_2, L4_2)
  L2_2 = ObjectiveRequestBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.GetNpcDestinationGenericName
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetLocalizedReplacementText
  L4_2 = "@objective_hand_in_destination"
  L5_2 = {}
  L5_2.npcName = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.hasProgress = false
  A0_2.progressString = ""
  L4_2 = UiTransform2dBus
  L4_2 = L4_2.Event
  L4_2 = L4_2.SetOffsets
  L5_2 = A0_2.Properties
  L5_2 = L5_2.TaskDescription
  L6_2 = A0_2.descriptionOffsets
  L4_2(L5_2, L6_2)
  L4_2 = UiElementBus
  L4_2 = L4_2.Event
  L4_2 = L4_2.SetIsEnabled
  L5_2 = A0_2.Properties
  L5_2 = L5_2.Checkmark
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = A0_2.ScriptedEntityTweener
  L5_2 = L4_2
  L4_2 = L4_2.PlayC
  L6_2 = A0_2.Properties
  L6_2 = L6_2.TaskDescription
  L7_2 = 0
  L8_2 = _UPVALUE0_
  L8_2 = L8_2.textToWhite
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2.ScriptedEntityTweener
  L5_2 = L4_2
  L4_2 = L4_2.PlayC
  L6_2 = A0_2.Properties
  L6_2 = L6_2.Checkbox
  L7_2 = 0
  L8_2 = _UPVALUE0_
  L8_2 = L8_2.imgFillTo1Instant
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2.ScriptedEntityTweener
  L5_2 = L4_2
  L4_2 = L4_2.PlayC
  L6_2 = A0_2.Properties
  L6_2 = L6_2.Checkbox
  L7_2 = 0
  L8_2 = _UPVALUE0_
  L8_2 = L8_2.imgToGray90
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = A0_2
  L4_2 = A0_2.SetDescription
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.UpdateIndent
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.UpdateSize
  L4_2(L5_2)
end

L0_1.SetHandInTask = L6_1

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = UiTextBus
  L1_2 = L1_2.Event
  L1_2 = L1_2.GetTextHeight
  L2_2 = A0_2.Properties
  L2_2 = L2_2.TaskDescription
  L1_2 = L1_2(L2_2)
  A0_2.height = L1_2
  L2_2 = UiTransform2dBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetLocalHeight
  L3_2 = A0_2.entityId
  L4_2 = A0_2.height
  L2_2(L3_2, L4_2)
  L2_2 = type
  L3_2 = A0_2.updateTaskPositions
  L2_2 = L2_2(L3_2)
  if L2_2 == "function" then
    L2_2 = A0_2.updateTaskPositionsTable
    if L2_2 then
      L2_2 = A0_2.updateTaskPositions
      L3_2 = A0_2.updateTaskPositionsTable
      L4_2 = A0_2
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = type
  L3_2 = A0_2.objectiveUpdateCallback
  L2_2 = L2_2(L3_2)
  if L2_2 == "function" then
    L2_2 = A0_2.objectiveUpdatePositionsCallbackTable
    if L2_2 then
      L2_2 = A0_2.objectiveUpdateCallback
      L3_2 = A0_2.objectiveUpdatePositionsCallbackTable
      L4_2 = A0_2
      L2_2(L3_2, L4_2)
    end
  end
end

L0_1.UpdateSize = L6_1

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = 24
  L2_2 = A0_2.level
  if L2_2 == nil then
    A0_2.level = 0
  end
  L2_2 = UiTransform2dBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.GetOffsets
  L3_2 = A0_2.entityId
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.level
  L3_2 = L1_2 * L3_2
  L2_2.left = L3_2
  L3_2 = UiTransform2dBus
  L3_2 = L3_2.Event
  L3_2 = L3_2.SetOffsets
  L4_2 = A0_2.entityId
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end

L0_1.UpdateIndent = L6_1

function L6_1(A0_2, A1_2, A2_2)
  A0_2.updatedCallback = A1_2
  A0_2.updatedCallbackTable = A2_2
end

L0_1.SetUpdatedCallback = L6_1

function L6_1(A0_2, A1_2, A2_2)
  A0_2.updateTaskPositions = A1_2
  A0_2.updateTaskPositionsTable = A2_2
end

L0_1.SetUpdateTaskPositionsCallback = L6_1

function L6_1(A0_2, A1_2, A2_2)
  A0_2.objectiveUpdateCallback = A1_2
  A0_2.objectiveUpdatePositionsCallbackTable = A2_2
end

L0_1.SetObjectivePositionsCallback = L6_1

function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = A0_2.taskId
  if L3_2 == nil then
    return
  end
  L3_2 = A0_2.taskState
  if L3_2 == A1_2 then
    A2_2 = true
  end
  L3_2 = A0_2.taskState
  A0_2.prevTaskState = L3_2
  A0_2.taskState = A1_2
  L3_2 = eObjectiveTaskState_Complete
  if A1_2 ~= L3_2 then
    L3_2 = eObjectiveTaskState_CompleteActive
    if A1_2 ~= L3_2 then
      goto lbl_41
    end
  end
  L3_2 = A0_2.isComplete
  A0_2.isComplete = true
  L4_2 = eObjectiveTaskState_CompleteActive
  if A1_2 == L4_2 then
    L4_2 = A0_2.prevTaskState
    if not L4_2 then
      L4_2 = eObjectiveTaskState_Active
    end
    A0_2.prevTaskState = L4_2
  end
  L4_2 = type
  L5_2 = A0_2.updatedCallback
  L4_2 = L4_2(L5_2)
  if L4_2 == "function" then
    L4_2 = A0_2.updatedCallbackTable
    if L4_2 then
      L4_2 = A0_2.updatedCallback
      L5_2 = A0_2.updatedCallbackTable
      L6_2 = A0_2
      L4_2(L5_2, L6_2)
      goto lbl_42
      ::lbl_41::
      A0_2.isComplete = false
    end
  end
  ::lbl_42::
  L3_2 = 0.4
  if A2_2 then
    L3_2 = 0
  end
  L4_2 = _UPVALUE0_
  L4_2 = L4_2.textToWhite
  L5_2 = _UPVALUE0_
  L5_2 = L5_2.imgToGray90
  L6_2 = UiElementBus
  L6_2 = L6_2.Event
  L6_2 = L6_2.SetIsEnabled
  L7_2 = A0_2.Properties
  L7_2 = L7_2.Checkmark
  L8_2 = A0_2.isComplete
  L6_2(L7_2, L8_2)
  L6_2 = A0_2.isComplete
  if L6_2 then
    L6_2 = A0_2.ScriptedEntityTweener
    L7_2 = L6_2
    L6_2 = L6_2.PlayC
    L8_2 = A0_2.Properties
    L8_2 = L8_2.Checkbox
    L9_2 = 0
    L10_2 = _UPVALUE0_
    L10_2 = L10_2.imgFillTo0Instant
    L6_2(L7_2, L8_2, L9_2, L10_2)
  else
    L6_2 = A0_2.ScriptedEntityTweener
    L7_2 = L6_2
    L6_2 = L6_2.PlayC
    L8_2 = A0_2.Properties
    L8_2 = L8_2.Checkbox
    L9_2 = 0
    L10_2 = _UPVALUE0_
    L10_2 = L10_2.imgFillTo1Instant
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  L6_2 = A0_2.taskState
  L7_2 = eObjectiveTaskState_Active
  if L6_2 == L7_2 then
    L6_2 = A0_2.isFtue
    if not L6_2 then
      L6_2 = A0_2.taskId
      if L6_2 then
        L6_2 = A0_2.tickBusHandler
        if not L6_2 then
          L6_2 = A0_2.taskState
          L7_2 = eObjectiveTaskState_Active
          if L6_2 == L7_2 then
            L6_2 = ObjectiveTaskRequestBus
            L6_2 = L6_2.Event
            L6_2 = L6_2.GetRefreshDescriptionInterval
            L7_2 = A0_2.taskId
            L6_2 = L6_2(L7_2)
            if not L6_2 then
              L6_2 = 0
            end
            A0_2.tickInterval = L6_2
            L6_2 = A0_2.tickInterval
            L6_2 = 0 < L6_2
            L7_2 = ObjectiveTaskRequestBus
            L7_2 = L7_2.Event
            L7_2 = L7_2.GetUIData
            L8_2 = A0_2.taskId
            L9_2 = "TimeLimit"
            L7_2 = L7_2(L8_2, L9_2)
            if L7_2 and 0 < L7_2 then
              L8_2 = GetMaxInt
              L8_2 = L8_2()
              if L7_2 < L8_2 then
                L8_2 = A0_2.dataLayer
                L9_2 = L8_2
                L8_2 = L8_2.GetDataFromNode
                L10_2 = "Hud.LocalPlayer.HudComponent.PlayerEntityId"
                L8_2 = L8_2(L9_2, L10_2)
                L9_2 = ObjectivesComponentRequestBus
                L9_2 = L9_2.Event
                L9_2 = L9_2.GetTaskStartTime
                L10_2 = L8_2
                L11_2 = A0_2.taskId
                L9_2 = L9_2(L10_2, L11_2)
                L11_2 = L9_2
                L10_2 = L9_2.AddDuration
                L12_2 = Duration
                L12_2 = L12_2.FromSecondsUnrounded
                L13_2 = L7_2
                L12_2, L13_2 = L12_2(L13_2)
                L10_2 = L10_2(L11_2, L12_2, L13_2)
                A0_2.targetTime = L10_2
                L10_2 = UiTextBus
                L10_2 = L10_2.Event
                L10_2 = L10_2.SetIsMarkupEnabled
                L11_2 = A0_2.Properties
                L11_2 = L11_2.TaskDescription
                L12_2 = true
                L10_2(L11_2, L12_2)
                L6_2 = true
                A0_2.tickInterval = 1
              end
            end
            L9_2 = A0_2
            L8_2 = A0_2.SetIsTicking
            L10_2 = L6_2
            L8_2(L9_2, L10_2)
          end
        end
      end
    end
    L6_2 = A0_2.prevTaskState
    L7_2 = eObjectiveTaskState_CompleteActive
    if L6_2 == L7_2 then
      L6_2 = ObjectiveTaskRequestBus
      L6_2 = L6_2.Event
      L6_2 = L6_2.GetTasks
      L7_2 = A0_2.taskId
      L6_2 = L6_2(L7_2)
      L7_2 = #L6_2
      L7_2 = L7_2 == 0
      A0_2.hasProgress = L7_2
    end
  else
    L6_2 = A0_2.isComplete
    if L6_2 then
      L6_2 = _UPVALUE0_
      L4_2 = L6_2.textToGray60
      L6_2 = _UPVALUE0_
      L5_2 = L6_2.imgToGray60
      if not A2_2 then
        L6_2 = A0_2.ScriptedEntityTweener
        L7_2 = L6_2
        L6_2 = L6_2.Set
        L8_2 = A0_2.Properties
        L8_2 = L8_2.Checkmark
        L9_2 = {}
        L9_2.opacity = 0
        L6_2(L7_2, L8_2, L9_2)
        L6_2 = A0_2.ScriptedEntityTweener
        L7_2 = L6_2
        L6_2 = L6_2.PlayC
        L8_2 = A0_2.Properties
        L8_2 = L8_2.Checkmark
        L9_2 = 0.3
        L10_2 = _UPVALUE0_
        L10_2 = L10_2.fadeInQuadOut
        L6_2(L7_2, L8_2, L9_2, L10_2)
        L6_2 = A0_2.audioHelper
        L7_2 = L6_2
        L6_2 = L6_2.PlaySound
        L8_2 = A0_2.audioHelper
        L8_2 = L8_2.Objectives_CompletedPinnedTask
        L6_2(L7_2, L8_2)
      else
        L6_2 = UiTransformBus
        L6_2 = L6_2.Event
        L6_2 = L6_2.SetScale
        L7_2 = A0_2.Properties
        L7_2 = L7_2.Checkmark
        L8_2 = Vector2
        L9_2 = 1
        L10_2 = 1
        L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2(L9_2, L10_2)
        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      end
      L7_2 = A0_2
      L6_2 = A0_2.SetIsTicking
      L8_2 = false
      L6_2(L7_2, L8_2)
    else
      L6_2 = A0_2.taskState
      L7_2 = eObjectiveTaskState_Inactive
      if L6_2 == L7_2 then
        L7_2 = A0_2
        L6_2 = A0_2.SetIsTicking
        L8_2 = false
        L6_2(L7_2, L8_2)
      else
        L6_2 = _UPVALUE0_
        L4_2 = L6_2.textToGray60
        L6_2 = _UPVALUE0_
        L5_2 = L6_2.imgToGray60
        L7_2 = A0_2
        L6_2 = A0_2.SetIsTicking
        L8_2 = false
        L6_2(L7_2, L8_2)
      end
    end
  end
  L6_2 = A0_2.ScriptedEntityTweener
  L7_2 = L6_2
  L6_2 = L6_2.PlayC
  L8_2 = A0_2.Properties
  L8_2 = L8_2.TaskDescription
  L9_2 = L3_2
  L10_2 = L4_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = A0_2.ScriptedEntityTweener
  L7_2 = L6_2
  L6_2 = L6_2.PlayC
  L8_2 = A0_2.Properties
  L8_2 = L8_2.ProgressText
  L9_2 = L3_2
  L10_2 = L4_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = A0_2.ScriptedEntityTweener
  L7_2 = L6_2
  L6_2 = L6_2.PlayC
  L8_2 = A0_2.Properties
  L8_2 = L8_2.Checkbox
  L9_2 = L3_2
  L10_2 = L5_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
end

L0_1.SetTaskState = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = UiTextBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetTextWithFlags
  L3_2 = A0_2.Properties
  L3_2 = L3_2.TaskDescription
  L4_2 = A1_2
  L5_2 = eUiTextSet_SetLocalized
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = UiTextBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetText
  L3_2 = A0_2.Properties
  L3_2 = L3_2.ProgressText
  L4_2 = A0_2.progressString
  L2_2(L3_2, L4_2)
  L2_2 = UiTextBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.GetTextWidth
  L3_2 = A0_2.Properties
  L3_2 = L3_2.TaskDescription
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.descriptionOffsets
  L3_2 = L3_2.left
  L3_2 = L3_2 + L2_2
  L3_2 = L3_2 * 1.3
  L4_2 = UiTransform2dBus
  L4_2 = L4_2.Event
  L4_2 = L4_2.SetLocalWidth
  L5_2 = A0_2.Properties
  L5_2 = L5_2.Shadow
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end

L0_1.SetDescription = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.isEnqueuing
  if L2_2 == A1_2 then
    return
  end
  A0_2.isEnqueuing = A1_2
  L2_2 = A0_2.actionQueue
  L3_2 = L2_2
  L2_2 = L2_2.SetIsEnqueuing
  L4_2 = A0_2.isEnqueuing
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.isEnqueuing
  if not L2_2 then
    L2_2 = A0_2.actionQueue
    L3_2 = L2_2
    L2_2 = L2_2.DoAll
    L2_2(L3_2)
  end
end

L0_1.SetIsEnqueuing = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2
  L2_2 = A0_2.SetIsEnqueuing
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.taskId
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2.SetIsEnqueuing
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = ObjectiveTaskRequestBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.GetProgressPercent
  L3_2 = A0_2.taskId
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L2_2 = 1
  end
  L3_2 = ObjectiveTaskRequestBus
  L3_2 = L3_2.Event
  L3_2 = L3_2.GetState
  L4_2 = A0_2.taskId
  L3_2 = L3_2(L4_2)
  L4_2 = ObjectiveTaskRequestBus
  L4_2 = L4_2.Event
  L4_2 = L4_2.GetUIData
  L5_2 = A0_2.taskId
  L6_2 = "StayActive"
  L4_2 = L4_2(L5_2, L6_2)
  if 1 <= L2_2 then
    L5_2 = eObjectiveTaskState_CompleteActive
    if L3_2 ~= L5_2 and not L4_2 then
      L3_2 = eObjectiveTaskState_Complete
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.SetTaskState
  L7_2 = L3_2
  L8_2 = A1_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2.isComplete
  if not L5_2 then
    L5_2 = type
    L6_2 = A0_2.updatedCallback
    L5_2 = L5_2(L6_2)
    if L5_2 == "function" then
      L5_2 = A0_2.updatedCallbackTable
      if L5_2 then
        L5_2 = A0_2.updatedCallback
        L6_2 = A0_2.updatedCallbackTable
        L7_2 = A0_2
        L5_2(L6_2, L7_2)
      end
    end
    L5_2 = type
    L6_2 = A0_2.objectiveUpdateCallback
    L5_2 = L5_2(L6_2)
    if L5_2 == "function" then
      L5_2 = A0_2.objectiveUpdatePositionsCallbackTable
      if L5_2 then
        L5_2 = A0_2.objectiveUpdateCallback
        L6_2 = A0_2.objectiveUpdatePositionsCallbackTable
        L7_2 = A0_2
        L5_2(L6_2, L7_2)
      end
    end
  end
  L5_2 = A0_2.hasProgress
  if L5_2 then
    L5_2 = A0_2.progressPercent
    if L5_2 ~= L2_2 then
      goto lbl_79
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.SetIsEnqueuing
  L7_2 = false
  L5_2(L6_2, L7_2)
  do return end
  ::lbl_79::
  if A1_2 then
    L5_2 = 0
    if L5_2 then
      goto lbl_85
    end
  end
  L5_2 = 0.3
  ::lbl_85::
  L6_2 = ObjectiveTaskRequestBus
  L6_2 = L6_2.Event
  L6_2 = L6_2.GetHideProgress
  L7_2 = A0_2.taskId
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L7_2 = tostring
    L9_2 = A0_2
    L8_2 = A0_2.GetProgressNumber
    L8_2, L9_2 = L8_2(L9_2)
    L7_2 = L7_2(L8_2, L9_2)
    A0_2.progressNumerator = L7_2
    L7_2 = A0_2.progressNumerator
    L8_2 = " / "
    L9_2 = A0_2.progressDenominator
    L7_2 = L7_2 .. L8_2 .. L9_2
    A0_2.progressString = L7_2
  else
    A0_2.progressString = ""
  end
  A0_2.progressPercent = L2_2
  L8_2 = A0_2
  L7_2 = A0_2.RefreshDescription
  L7_2(L8_2)
  L8_2 = A0_2
  L7_2 = A0_2.SetIsEnqueuing
  L9_2 = false
  L7_2(L8_2, L9_2)
end

L0_1.UpdateProgress = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = UiTransformBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetLocalPositionX
  L3_2 = A0_2.entityId
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

L0_1.SetPositionX = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2.positionY = A1_2
  L2_2 = UiTransformBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetLocalPositionY
  L3_2 = A0_2.entityId
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

L0_1.SetPositionY = L6_1

function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2.positionY
  if not L1_2 then
    L1_2 = 0
  end
  return L1_2
end

L0_1.GetPositionY = L6_1

function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2.height
  return L1_2
end

L0_1.GetHeight = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.actionQueue
  L3_2 = L2_2
  L2_2 = L2_2.Add
  L4_2 = A0_2
  L5_2 = A0_2.UpdateProgress
  L2_2(L3_2, L4_2, L5_2)
end

L0_1.OnTaskChanged = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.actionQueue
  L3_2 = L2_2
  L2_2 = L2_2.Add
  L4_2 = A0_2
  L5_2 = A0_2.UpdateProgress
  L2_2(L3_2, L4_2, L5_2)
end

L0_1.OnTaskCompleted = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.actionQueue
  L3_2 = L2_2
  L2_2 = L2_2.Add
  L4_2 = A0_2
  L5_2 = A0_2.UpdateProgress
  L2_2(L3_2, L4_2, L5_2)
end

L0_1.OnTaskActivated = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.actionQueue
  L3_2 = L2_2
  L2_2 = L2_2.Add
  L4_2 = A0_2
  L5_2 = A0_2.UpdateProgress
  L2_2(L3_2, L4_2, L5_2)
end

L0_1.OnTaskDeactivated = L6_1

function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A0_2.currentTickInterval
  L3_2 = L3_2 - A1_2
  A0_2.currentTickInterval = L3_2
  L3_2 = A0_2.currentTickInterval
  if L3_2 <= 0 then
    L3_2 = A0_2.tickInterval
    A0_2.currentTickInterval = L3_2
    L4_2 = A0_2
    L3_2 = A0_2.RefreshDescription
    L3_2(L4_2)
  end
end

L0_1.OnTick = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.SetIsTicking
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end

L0_1.OnUiElementAndAncestorsEnabledChanged = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2.tickBusHandler
    if not L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.BusConnect
      L4_2 = DynamicBus
      L4_2 = L4_2.UITickBus
      L2_2 = L2_2(L3_2, L4_2)
      A0_2.tickBusHandler = L2_2
      L2_2 = A0_2.tickInterval
      A0_2.currentTickInterval = L2_2
    end
  else
    L2_2 = A0_2.tickBusHandler
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.BusDisconnect
      L4_2 = A0_2.tickBusHandler
      L2_2(L3_2, L4_2)
      A0_2.tickBusHandler = nil
    end
  end
end

L0_1.SetIsTicking = L6_1

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2.taskId
  if not L1_2 then
    L1_2 = A0_2.handInTaskId
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.SetHandInTask
      L3_2 = A0_2.handInTaskId
      L1_2(L2_2, L3_2)
    end
    return
  end
  L1_2 = ObjectiveTaskRequestBus
  L1_2 = L1_2.Event
  L1_2 = L1_2.GetDescription
  L2_2 = A0_2.taskId
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = ""
  end
  L2_2 = ObjectiveTaskRequestBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.GetObjectiveInstanceId
  L3_2 = A0_2.taskId
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = ObjectiveRequestBus
    L3_2 = L3_2.Event
    L3_2 = L3_2.GetCreationParams
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L4_2 = L3_2.missionId
      if L4_2 ~= 0 then
        L4_2 = _UPVALUE0_
        L5_2 = L4_2
        L4_2 = L4_2.GetLocalizedDescText
        L6_2 = L1_2
        L7_2 = L3_2
        L4_2 = L4_2(L5_2, L6_2, L7_2)
        L1_2 = L4_2
      end
    end
  end
  L3_2 = A0_2.targetTime
  if L3_2 then
    L3_2 = A0_2.targetTime
    L4_2 = L3_2
    L3_2 = L3_2.Subtract
    L5_2 = _UPVALUE1_
    L6_2 = L5_2
    L5_2 = L5_2.ServerNow
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L4_2 = L3_2
    L3_2 = L3_2.ToSeconds
    L3_2 = L3_2(L4_2)
    L4_2 = math
    L4_2 = L4_2.max
    L5_2 = L3_2
    L6_2 = 0
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
    L4_2 = _UPVALUE1_
    L5_2 = L4_2
    L4_2 = L4_2.ConvertSecondsToHrsMinSecString
    L6_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = A0_2.timerColorNormal
    L6_2 = A0_2.TIMEOUT_ALERT_TIME
    if L3_2 < L6_2 then
      L5_2 = A0_2.timerColorAlert
    else
      L6_2 = A0_2.TIMEOUT_WARN_TIME
      if L3_2 < L6_2 then
        L5_2 = A0_2.timerColorWarn
      end
    end
    L6_2 = L1_2
    L7_2 = string
    L7_2 = L7_2.format
    L8_2 = A0_2.TIMEOUT_FORMAT
    L9_2 = L5_2
    L10_2 = L4_2
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L1_2 = L6_2 .. L7_2
  end
  L3_2 = A0_2.progressString
  L3_2 = #L3_2
  L3_2 = L3_2 * 2
  L3_2 = L3_2 + 1
  if 1 < L3_2 then
    L4_2 = string
    L4_2 = L4_2.format
    L5_2 = "%+"
    L6_2 = L3_2
    L7_2 = "s%s"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L6_2 = " - "
    L7_2 = L1_2
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L1_2 = L4_2
  end
  L5_2 = A0_2
  L4_2 = A0_2.SetDescription
  L6_2 = L1_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.UpdateSize
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.SetTaskVisibility
  L6_2 = true
  L4_2(L5_2, L6_2)
end

L0_1.RefreshDescription = L6_1

function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = ObjectiveTaskRequestBus
  L1_2 = L1_2.Event
  L1_2 = L1_2.GetProgress
  L2_2 = A0_2.taskId
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = A0_2.targetNumber
    if not (L1_2 > L2_2) then
      goto lbl_12
    end
  end
  L1_2 = A0_2.targetNumber
  ::lbl_12::
  return L1_2
end

L0_1.GetProgressNumber = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 then
    L2_2 = 1
    if L2_2 then
      goto lbl_7
    end
  end
  L2_2 = 0
  ::lbl_7::
  L3_2 = A0_2.ScriptedEntityTweener
  L4_2 = L3_2
  L3_2 = L3_2.Set
  L5_2 = A0_2.Properties
  L5_2 = L5_2.Checkmark
  L6_2 = {}
  L6_2.opacity = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2.ScriptedEntityTweener
  L4_2 = L3_2
  L3_2 = L3_2.Set
  L5_2 = A0_2.Properties
  L5_2 = L5_2.TaskDescription
  L6_2 = {}
  L6_2.opacity = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2.ScriptedEntityTweener
  L4_2 = L3_2
  L3_2 = L3_2.Set
  L5_2 = A0_2.Properties
  L5_2 = L5_2.Checkbox
  L6_2 = {}
  L6_2.opacity = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2.ScriptedEntityTweener
  L4_2 = L3_2
  L3_2 = L3_2.Set
  L5_2 = A0_2.Properties
  L5_2 = L5_2.Shadow
  L6_2 = {}
  L6_2.opacity = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2.ScriptedEntityTweener
  L4_2 = L3_2
  L3_2 = L3_2.Set
  L5_2 = A0_2.Properties
  L5_2 = L5_2.ProgressText
  L6_2 = {}
  L6_2.opacity = L2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.SetTaskVisibility = L6_1
return L0_1
