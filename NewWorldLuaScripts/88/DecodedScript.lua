local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = g_Reflect
L1_1 = L0_1
L0_1 = L0_1.RequireReflectionCategory
L2_1 = eReflectionCategory_LocalPlayerCharacter_Progression
L0_1(L1_1, L2_1)
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.Icon = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.Duration = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.TooltipSetter = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.StackCountText = L2_1
L0_1.Properties = L1_1
L1_1 = RequireScript
L2_1 = "LyShineUI._Common.TimingUtils"
L1_1 = L1_1(L2_1)
L2_1 = RequireScript
L3_1 = "LyShineUI._Common.TimeHelperFunctions"
L2_1 = L2_1(L3_1)
L3_1 = RequireScript
L4_1 = "LyShineUI._Common.BaseElement"
L3_1 = L3_1(L4_1)
L5_1 = L3_1
L4_1 = L3_1.CreateNewElement
L6_1 = L0_1
L4_1(L5_1, L6_1)
L4_1 = RequireScript
L5_1 = "LyShineUI._Common.ScriptedEntityTweenerCommon"
L4_1 = L4_1(L5_1)

function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = _UPVALUE0_
  L1_2 = L1_2.OnInit
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.OnInit = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.description
  if L1_2 then
    L1_2 = string
    L1_2 = L1_2.len
    L2_2 = A0_2.description
    L1_2 = L1_2(L2_2)
    L1_2 = 0 < L1_2
  end
  L2_2 = UiInteractableBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetIsHandlingEvents
  L3_2 = A0_2.Properties
  L3_2 = L3_2.TooltipSetter
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = nil
  if L1_2 then
    L3_2 = GetLocalizedReplacementText
    L4_2 = A0_2.description
    L5_2 = {}
    L6_2 = tostring
    L7_2 = A0_2.potency
    L6_2 = L6_2(L7_2)
    L5_2.ConsumablePotency = L6_2
    L6_2 = tostring
    L7_2 = A0_2.potency
    L6_2 = L6_2(L7_2)
    L5_2.Potency = L6_2
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
  end
  L3_2 = A0_2.TooltipSetter
  L4_2 = L3_2
  L3_2 = L3_2.SetSimpleTooltip
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end

L0_1.ProcessDescription = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.name
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.ProcessDescription
  L1_2(L2_2)
  L1_2 = _UPVALUE0_
  L2_2 = L1_2
  L1_2 = L1_2.StopDelay
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.UpdateDuration
  L1_2(L2_2)
end

L0_1.UpdateText = L5_1

function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2
  A0_2.name = A1_2
  A0_2.description = A2_2
  A0_2.icon = A3_2
  A0_2.endTime = A4_2
  L6_2 = A0_2
  L5_2 = A0_2.UpdateText
  L5_2(L6_2)
end

L0_1.SetStatusEffectInfo = L5_1

function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2.owner = A2_2
  A0_2.activeStatusCallback = A3_2
  L4_2 = A0_2.dataLayer
  L5_2 = L4_2
  L4_2 = L4_2.RegisterAndExecuteDataObserver
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = ".EffectId"
  L7_2 = L7_2 .. L8_2
  
  function L8_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    A0_3.effectId = A1_3
    if A1_3 then
      L2_3 = #A1_3
      if L2_3 ~= 0 then
        goto lbl_18
      end
    end
    A0_3.icon = nil
    A0_3.name = nil
    L2_3 = _UPVALUE0_
    L3_3 = L2_3
    L2_3 = L2_3.StopDelay
    L4_3 = A0_3
    L2_3(L3_3, L4_3)
    L2_3 = A0_3.activeStatusCallback
    L3_3 = A0_3.owner
    L4_3 = false
    L2_3(L3_3, L4_3)
    goto lbl_20
    ::lbl_18::
    L3_3 = A0_3
    L2_3 = A0_3.SetStatusEffectData
    L2_3(L3_3)
    ::lbl_20::
  end
  
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2.dataLayer
  L5_2 = L4_2
  L4_2 = L4_2.RegisterAndExecuteDataObserver
  L6_2 = A0_2
  L7_2 = "Hud.LocalPlayer.HudComponent.PlayerEntityId"
  
  function L8_2(A0_3, A1_3)
    local L2_3, L3_3
    A0_3.playerEntityId = A1_3
    L3_3 = A0_3
    L2_3 = A0_3.SetStatusEffectData
    L2_3(L3_3)
  end
  
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2.dataLayer
  L5_2 = L4_2
  L4_2 = L4_2.RegisterAndExecuteDataObserver
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = ".Potency"
  L7_2 = L7_2 .. L8_2
  
  function L8_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A1_3 or L2_3
    if not A1_3 or not A1_3 then
      L2_3 = 1
    end
    A0_3.potency = L2_3
    L3_3 = A0_3
    L2_3 = A0_3.ProcessDescription
    L2_3(L3_3)
  end
  
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2.dataLayer
  L5_2 = L4_2
  L4_2 = L4_2.RegisterAndExecuteDataObserver
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = ".EndTime"
  L7_2 = L7_2 .. L8_2
  
  function L8_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    A0_3.endTime = A1_3
    if not A1_3 then
      return
    end
    L2_3 = _UPVALUE0_
    L3_3 = L2_3
    L2_3 = L2_3.StopDelay
    L4_3 = A0_3
    L2_3(L3_3, L4_3)
    L3_3 = A0_3
    L2_3 = A0_3.UpdateDuration
    L2_3(L3_3)
  end
  
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2.dataLayer
  L5_2 = L4_2
  L4_2 = L4_2.RegisterAndExecuteDataObserver
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = ".StackSize"
  L7_2 = L7_2 .. L8_2
  
  function L8_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = A1_3 or nil
    if not A1_3 then
      L2_3 = 1
    end
    A0_3.stackSize = L2_3
    L2_3 = UiElementBus
    L2_3 = L2_3.Event
    L2_3 = L2_3.SetIsEnabled
    L3_3 = A0_3.Properties
    L3_3 = L3_3.StackCountText
    L4_3 = A0_3.stackSize
    L4_3 = 1 < L4_3
    L2_3(L3_3, L4_3)
    L2_3 = A0_3.stackSize
    if 1 < L2_3 then
      L2_3 = UiTextBus
      L2_3 = L2_3.Event
      L2_3 = L2_3.SetText
      L3_3 = A0_3.Properties
      L3_3 = L3_3.StackCountText
      L4_3 = "\195\151"
      L5_3 = A0_3.stackSize
      L4_3 = L4_3 .. L5_3
      L2_3(L3_3, L4_3)
      L2_3 = A0_3.ScriptedEntityTweener
      L3_3 = L2_3
      L2_3 = L2_3.PlayFromC
      L4_3 = A0_3.Properties
      L4_3 = L4_3.StackCountText
      L5_3 = 0.3
      L6_3 = {}
      L6_3.scaleX = 1.2
      L6_3.scaleY = 1.2
      L7_3 = _UPVALUE0_
      L7_3 = L7_3.scaleTo1
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
    end
  end
  
  L4_2(L5_2, L6_2, L7_2, L8_2)
end

L0_1.SetStatusEffectDataPath = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.effectId
  if L1_2 then
    L1_2 = A0_2.effectId
    L1_2 = #L1_2
    if L1_2 ~= 0 then
      L1_2 = A0_2.playerEntityId
      if L1_2 then
        goto lbl_12
      end
    end
  end
  do return end
  ::lbl_12::
  L1_2 = StatusEffectsRequestBus
  L1_2 = L1_2.Event
  L1_2 = L1_2.GetStatusEffectDataByCrc
  L2_2 = A0_2.playerEntityId
  L3_2 = Math
  L3_2 = L3_2.CreateCrc32
  L4_2 = A0_2.effectId
  L3_2, L4_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if not L1_2 then
    return
  end
  L2_2 = L1_2.icon
  A0_2.icon = L2_2
  L2_2 = L1_2.name
  A0_2.name = L2_2
  L2_2 = L1_2.description
  A0_2.description = L2_2
  L2_2 = L1_2.isNegative
  A0_2.isNegative = L2_2
  L2_2 = UiImageBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetSpritePathname
  L3_2 = A0_2.Properties
  L3_2 = L3_2.Icon
  L4_2 = L1_2.icon
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.ProcessDescription
  L2_2(L3_2)
  L2_2 = UiImageBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetColor
  L3_2 = A0_2.entityId
  L4_2 = A0_2.isNegative
  if L4_2 then
    L4_2 = A0_2.UIStyle
    L4_2 = L4_2.COLOR_RED_DARK
    if L4_2 then
      goto lbl_54
    end
  end
  L4_2 = A0_2.UIStyle
  L4_2 = L4_2.COLOR_BLACK
  ::lbl_54::
  L2_2(L3_2, L4_2)
  L2_2 = UiTextBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetColor
  L3_2 = A0_2.Properties
  L3_2 = L3_2.Duration
  L4_2 = A0_2.isNegative
  if L4_2 then
    L4_2 = A0_2.UIStyle
    L4_2 = L4_2.COLOR_YELLOW
    if L4_2 then
      goto lbl_69
    end
  end
  L4_2 = A0_2.UIStyle
  L4_2 = L4_2.COLOR_WHITE
  ::lbl_69::
  L2_2(L3_2, L4_2)
  L2_2 = UiTextBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetColor
  L3_2 = A0_2.Properties
  L3_2 = L3_2.StackCountText
  L4_2 = A0_2.isNegative
  if L4_2 then
    L4_2 = A0_2.UIStyle
    L4_2 = L4_2.COLOR_YELLOW
    if L4_2 then
      goto lbl_84
    end
  end
  L4_2 = A0_2.UIStyle
  L4_2 = L4_2.COLOR_WHITE
  ::lbl_84::
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.activeStatusCallback
  L3_2 = A0_2.owner
  L4_2 = true
  L2_2(L3_2, L4_2)
end

L0_1.SetStatusEffectData = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = LocalPlayerComponentRequestBus
  L1_2 = L1_2.Broadcast
  L1_2 = L1_2.GetCurrentSyncedWallClockTime
  L1_2 = L1_2()
  if not L1_2 then
    L2_2 = _UPVALUE0_
    L3_2 = L2_2
    L2_2 = L2_2.Delay
    L4_2 = 1
    L5_2 = A0_2
    L6_2 = A0_2.UpdateDuration
    L2_2(L3_2, L4_2, L5_2, L6_2)
    return
  end
  L2_2 = A0_2.endTime
  L3_2 = L2_2
  L2_2 = L2_2.Subtract
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.ToSecondsUnrounded
  L2_2 = L2_2(L3_2)
  L3_2 = _UPVALUE1_
  L4_2 = L3_2
  L3_2 = L3_2.ConvertToShorthandString
  L5_2 = L2_2
  L6_2 = false
  L7_2 = true
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = 0
  if L2_2 <= 0 then
    L3_2 = "\226\128\148"
  elseif L2_2 <= 60 then
    L5_2 = _UPVALUE1_
    L6_2 = L5_2
    L5_2 = L5_2.ConvertToShorthandString
    L7_2 = math
    L7_2 = L7_2.max
    L8_2 = L2_2
    L9_2 = 1
    L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L3_2 = L5_2
    L4_2 = 0.5
  elseif L2_2 <= 120 then
    L4_2 = L2_2 - 60
  elseif L2_2 <= 3600 then
    L4_2 = 60
  elseif L2_2 < 7200 then
    L4_2 = L2_2 - 3600
  else
    L4_2 = 3600
  end
  L5_2 = UiTextBus
  L5_2 = L5_2.Event
  L5_2 = L5_2.SetTextWithFlags
  L6_2 = A0_2.Properties
  L6_2 = L6_2.Duration
  L7_2 = L3_2
  L8_2 = eUiTextSet_SetLocalized
  L5_2(L6_2, L7_2, L8_2)
  if 0 < L4_2 then
    L5_2 = _UPVALUE0_
    L6_2 = L5_2
    L5_2 = L5_2.Delay
    L7_2 = L4_2
    L8_2 = A0_2
    L9_2 = A0_2.UpdateDuration
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
end

L0_1.UpdateDuration = L5_1
return L0_1
