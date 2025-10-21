local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L2_1.order = 1
L1_1.Bg = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L2_1.order = 2
L1_1.UnderFill = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L2_1.order = 3
L1_1.MainFill = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L2_1.order = 4
L1_1.WarningCover = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L2_1.order = 5
L1_1.RefillCover = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L2_1.order = 6
L1_1.Frame = L2_1
L2_1 = {}
L2_1.default = 0
L2_1.order = 99
L1_1.MinBarImgFill = L2_1
L2_1 = {}
L2_1.default = 1
L2_1.order = 99
L1_1.MaxBarImgFill = L2_1
L0_1.Properties = L1_1
L0_1.currentPercent = 0
L0_1.fillAnimTime = 0.3
L0_1.decreaseDelay = 0.6
L0_1.fadeOutDelay = 1.5
L0_1.isWarningPulsing = false
L0_1.warningPulseThreshold = 0.25
L0_1.warnOnHighValue = false
L0_1.pulseOnRefill = true
L0_1.isRefillTimelinePlaying = false
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

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = _UPVALUE0_
  L1_2 = L1_2.OnInit
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = {}
  L2_2 = A0_2.UIStyle
  L2_2 = L2_2.COLOR_WHITE
  L1_2[0] = L2_2
  A0_2.colorThresholds = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.SetDecreaseColor
  L3_2 = A0_2.UIStyle
  L3_2 = L3_2.COLOR_RED
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.SetFrameColor
  L3_2 = A0_2.UIStyle
  L3_2 = L3_2.COLOR_TAN_NEW
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.SetWarningColor
  L3_2 = A0_2.UIStyle
  L3_2 = L3_2.COLOR_RED_NEW
  L4_2 = A0_2.UIStyle
  L4_2 = L4_2.COLOR_RED_DARK
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.SetRefillColor
  L3_2 = A0_2.UIStyle
  L3_2 = L3_2.COLOR_WHITE
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.CreatePulseTimelines
  L1_2(L2_2)
end

L0_1.OnInit = L3_1

function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.DestroyPulseTimelines
  L1_2(L2_2)
end

L0_1.OnShutdown = L3_1

function L3_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.colorThresholds
  L3_2[A1_2] = A2_2
end

L0_1.SetColorThreshold = L3_1

function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = UiImageBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetColor
  L3_2 = A0_2.Properties
  L3_2 = L3_2.UnderFill
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

L0_1.SetDecreaseColor = L3_1

function L3_1(A0_2, A1_2)
  A0_2.fillAnimTime = A1_2
end

L0_1.SetFillAnimTime = L3_1

function L3_1(A0_2, A1_2)
  A0_2.decreaseDelay = A1_2
end

L0_1.SetDecreaseDelay = L3_1

function L3_1(A0_2, A1_2)
  A0_2.fadeOutDelay = A1_2
end

L0_1.SetFadeOutDelay = L3_1

function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.Properties
  L2_2.MinBarImgFill = A1_2
end

L0_1.SetMinBarImgFill = L3_1

function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.Properties
  L2_2.MaxBarImgFill = A1_2
end

L0_1.SetMaxBarImgFill = L3_1

function L3_1(A0_2, A1_2, A2_2)
  local L3_2
  A0_2.warningPulseThreshold = A1_2
  L3_2 = A2_2 or L3_2
  if not A2_2 then
    L3_2 = false
  end
  A0_2.warnOnHighValue = L3_2
end

L0_1.SetWarningPulseThreshold = L3_1

function L3_1(A0_2, A1_2)
  A0_2.warningPulseControlledExternally = A1_2
end

L0_1.SetWarningPulseControlledExternally = L3_1

function L3_1(A0_2, A1_2, A2_2)
  A0_2.enterWarningSound = A1_2
  A0_2.exitWarningSound = A2_2
end

L0_1.SetWarningSounds = L3_1

function L3_1(A0_2, A1_2)
  A0_2.fullSound = A1_2
end

L0_1.SetFullSound = L3_1

function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2.pulseOnRefill = A1_2
  L2_2 = A0_2.pulseOnRefill
  if not L2_2 then
    L2_2 = UiElementBus
    L2_2 = L2_2.Event
    L2_2 = L2_2.SetIsEnabled
    L3_2 = A0_2.Properties
    L3_2 = L3_2.RefillCover
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2.ScriptedEntityTweener
    L3_2 = L2_2
    L2_2 = L2_2.Stop
    L4_2 = A0_2.Properties
    L4_2 = L4_2.RefillCover
    L2_2(L3_2, L4_2)
    A0_2.isRefillTimelinePlaying = false
  end
end

L0_1.SetPulseOnRefill = L3_1

function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L6_2 = UiImageBus
  L6_2 = L6_2.Event
  L6_2 = L6_2.SetSpritePathname
  L7_2 = A0_2.Properties
  L7_2 = L7_2.Frame
  L8_2 = A1_2
  L6_2(L7_2, L8_2)
  if A2_2 or A3_2 or A4_2 or A5_2 then
    L6_2 = UiTransform2dBus
    L6_2 = L6_2.Event
    L6_2 = L6_2.SetOffsets
    L7_2 = A0_2.Properties
    L7_2 = L7_2.Frame
    L8_2 = UiOffsets
    L9_2 = A2_2
    L10_2 = A3_2
    L11_2 = A4_2
    L12_2 = A5_2
    L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  end
end

L0_1.SetFrame = L3_1

function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2.frameColor = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.RefreshFramePulseTimeline
  L2_2(L3_2)
end

L0_1.SetFrameColor = L3_1

function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2.frameWarningColor = A1_2
  L3_2 = UiImageBus
  L3_2 = L3_2.Event
  L3_2 = L3_2.SetColor
  L4_2 = A0_2.Properties
  L4_2 = L4_2.WarningCover
  L5_2 = A2_2 or L5_2
  if not A2_2 then
    L5_2 = A1_2
  end
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.RefreshFramePulseTimeline
  L3_2(L4_2)
end

L0_1.SetWarningColor = L3_1

function L3_1(A0_2, A1_2)
  A0_2.refillCoverColor = A1_2
end

L0_1.SetRefillColor = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.warningPulseFrameTimeline
  if L1_2 then
    L1_2 = A0_2.warningPulseFrameTimeline
    L2_2 = L1_2
    L1_2 = L1_2.Stop
    L1_2(L2_2)
    L1_2 = A0_2.ScriptedEntityTweener
    L2_2 = L1_2
    L1_2 = L1_2.TimelineDestroy
    L3_2 = A0_2.warningPulseFrameTimeline
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2.fullFrameTimeline
  if L1_2 then
    L1_2 = A0_2.fullFrameTimeline
    L2_2 = L1_2
    L1_2 = L1_2.Stop
    L1_2(L2_2)
    L1_2 = A0_2.ScriptedEntityTweener
    L2_2 = L1_2
    L1_2 = L1_2.TimelineDestroy
    L3_2 = A0_2.fullFrameTimeline
    L1_2(L2_2, L3_2)
  end
  L1_2 = CreatePulse
  L2_2 = A0_2
  L3_2 = A0_2.Properties
  L3_2 = L3_2.Frame
  L4_2 = {}
  L5_2 = A0_2.frameWarningColor
  L4_2.pulseLow = L5_2
  L5_2 = A0_2.frameColor
  L4_2.pulseHigh = L5_2
  L5_2 = {}
  L5_2.duration = 0.15
  L5_2.order = 1
  L4_2.fadeOut = L5_2
  L5_2 = {}
  L5_2.duration = 0.85
  L5_2.order = 2
  L4_2.fadeIn = L5_2
  L5_2 = {}
  L5_2.duration = 0.25
  L5_2.order = 3
  L4_2.hold = L5_2
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L0_3 = L0_3.isWarningPulsing
    if L0_3 then
      L0_3 = A0_2
      L0_3 = L0_3.warningPulseFrameTimeline
      L1_3 = L0_3
      L0_3 = L0_3.Play
      L0_3(L1_3)
    end
  end
  
  L4_2.onComplete = L5_2
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.warningPulseFrameTimeline = L1_2
  L1_2 = CreatePulse
  L2_2 = A0_2
  L3_2 = A0_2.Properties
  L3_2 = L3_2.Frame
  L4_2 = {}
  L5_2 = A0_2.UIStyle
  L5_2 = L5_2.COLOR_WHITE
  L4_2.pulseHigh = L5_2
  L5_2 = A0_2.frameColor
  L4_2.pulseLow = L5_2
  L5_2 = {}
  L5_2.duration = 0.15
  L5_2.order = 1
  L4_2.fadeIn = L5_2
  L5_2 = {}
  L5_2.duration = 0.25
  L5_2.order = 2
  L4_2.hold = L5_2
  L5_2 = {}
  L5_2.duration = 0.85
  L5_2.order = 3
  L4_2.fadeOut = L5_2
  L4_2.playOnce = true
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.fullFrameTimeline = L1_2
end

L0_1.RefreshFramePulseTimeline = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.DestroyPulseTimelines
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.RefreshFramePulseTimeline
  L1_2(L2_2)
  L1_2 = CreatePulse
  L2_2 = A0_2
  L3_2 = A0_2.Properties
  L3_2 = L3_2.WarningCover
  L4_2 = {}
  L4_2.pulseLow = 0.6
  L4_2.pulseHigh = 0.2
  L5_2 = {}
  L5_2.duration = 0.15
  L5_2.order = 1
  L4_2.fadeOut = L5_2
  L5_2 = {}
  L5_2.duration = 0.85
  L5_2.order = 2
  L4_2.fadeIn = L5_2
  L5_2 = {}
  L5_2.duration = 0.25
  L5_2.order = 3
  L4_2.hold = L5_2
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.warningPulseCoverTimeline = L1_2
  L1_2 = CreatePulse
  L2_2 = A0_2
  L3_2 = A0_2.Properties
  L3_2 = L3_2.Bg
  L4_2 = {}
  L5_2 = A0_2.UIStyle
  L5_2 = L5_2.COLOR_RED_DARK
  L4_2.pulseLow = L5_2
  L5_2 = A0_2.UIStyle
  L5_2 = L5_2.COLOR_GRAY_40
  L4_2.pulseHigh = L5_2
  L5_2 = {}
  L5_2.duration = 0.15
  L5_2.order = 1
  L4_2.fadeOut = L5_2
  L5_2 = {}
  L5_2.duration = 0.45
  L5_2.order = 2
  L4_2.fadeIn = L5_2
  L5_2 = {}
  L5_2.duration = 0.25
  L5_2.order = 3
  L4_2.hold = L5_2
  L4_2.playOnce = true
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.errorBgTimeline = L1_2
  L1_2 = CreatePulse
  L2_2 = A0_2
  L3_2 = A0_2.Properties
  L3_2 = L3_2.RefillCover
  L4_2 = {}
  L4_2.pulseLow = 0.8
  L4_2.pulseHigh = 0
  L5_2 = {}
  L5_2.duration = 0.15
  L5_2.order = 1
  L4_2.fadeOut = L5_2
  L5_2 = {}
  L5_2.duration = 0.45
  L5_2.order = 2
  L4_2.fadeIn = L5_2
  L5_2 = {}
  L5_2.duration = 0.25
  L5_2.order = 3
  L4_2.hold = L5_2
  L4_2.playOnce = true
  
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = UiElementBus
    L0_3 = L0_3.Event
    L0_3 = L0_3.SetIsEnabled
    L1_3 = A0_2
    L1_3 = L1_3.Properties
    L1_3 = L1_3.RefillCover
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L0_3.isErrorFgTimelinePlaying = true
  end
  
  L4_2.onComplete = L5_2
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.errorFgTimeline = L1_2
  L1_2 = CreatePulse
  L2_2 = A0_2
  L3_2 = A0_2.Properties
  L3_2 = L3_2.RefillCover
  L4_2 = {}
  L4_2.pulseLow = 0.25
  L4_2.pulseHigh = 0
  L5_2 = {}
  L5_2.duration = 0.15
  L5_2.order = 1
  L4_2.fadeOut = L5_2
  L5_2 = {}
  L5_2.duration = 0.85
  L5_2.order = 2
  L4_2.fadeIn = L5_2
  L5_2 = {}
  L5_2.duration = 0.5
  L5_2.order = 3
  L4_2.hold = L5_2
  
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = UiElementBus
    L0_3 = L0_3.Event
    L0_3 = L0_3.SetIsEnabled
    L1_3 = A0_2
    L1_3 = L1_3.Properties
    L1_3 = L1_3.RefillCover
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L0_3.isRefillTimelinePlaying = false
  end
  
  L4_2.onComplete = L5_2
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.refillTimeline = L1_2
  L1_2 = CreatePulse
  L2_2 = A0_2
  L3_2 = A0_2.Properties
  L3_2 = L3_2.RefillCover
  L4_2 = {}
  L4_2.pulseLow = 0
  L4_2.pulseHigh = 0.8
  L5_2 = {}
  L5_2.duration = 0.15
  L5_2.order = 1
  L4_2.fadeOut = L5_2
  L5_2 = {}
  L5_2.duration = 0.85
  L5_2.order = 2
  L4_2.fadeIn = L5_2
  L5_2 = {}
  L5_2.duration = 0.25
  L5_2.order = 3
  L4_2.hold = L5_2
  L4_2.playOnce = true
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.fullRefillTimeline = L1_2
end

L0_1.CreatePulseTimelines = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.warningPulseFrameTimeline
  if L1_2 then
    L1_2 = A0_2.warningPulseFrameTimeline
    L2_2 = L1_2
    L1_2 = L1_2.Stop
    L1_2(L2_2)
    L1_2 = A0_2.ScriptedEntityTweener
    L2_2 = L1_2
    L1_2 = L1_2.TimelineDestroy
    L3_2 = A0_2.warningPulseFrameTimeline
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2.fullFrameTimeline
  if L1_2 then
    L1_2 = A0_2.fullFrameTimeline
    L2_2 = L1_2
    L1_2 = L1_2.Stop
    L1_2(L2_2)
    L1_2 = A0_2.ScriptedEntityTweener
    L2_2 = L1_2
    L1_2 = L1_2.TimelineDestroy
    L3_2 = A0_2.fullFrameTimeline
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2.warningPulseCoverTimeline
  if L1_2 then
    L1_2 = A0_2.warningPulseCoverTimeline
    L2_2 = L1_2
    L1_2 = L1_2.Stop
    L1_2(L2_2)
    L1_2 = A0_2.ScriptedEntityTweener
    L2_2 = L1_2
    L1_2 = L1_2.TimelineDestroy
    L3_2 = A0_2.warningPulseCoverTimeline
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2.errorBgTimeline
  if L1_2 then
    L1_2 = A0_2.errorBgTimeline
    L2_2 = L1_2
    L1_2 = L1_2.Stop
    L1_2(L2_2)
    L1_2 = A0_2.ScriptedEntityTweener
    L2_2 = L1_2
    L1_2 = L1_2.TimelineDestroy
    L3_2 = A0_2.errorBgTimeline
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2.refillTimeline
  if L1_2 then
    L1_2 = A0_2.refillTimeline
    L2_2 = L1_2
    L1_2 = L1_2.Stop
    L1_2(L2_2)
    L1_2 = A0_2.ScriptedEntityTweener
    L2_2 = L1_2
    L1_2 = L1_2.TimelineDestroy
    L3_2 = A0_2.refillTimeline
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2.fullRefillTimeline
  if L1_2 then
    L1_2 = A0_2.fullRefillTimeline
    L2_2 = L1_2
    L1_2 = L1_2.Stop
    L1_2(L2_2)
    L1_2 = A0_2.ScriptedEntityTweener
    L2_2 = L1_2
    L1_2 = L1_2.TimelineDestroy
    L3_2 = A0_2.fullRefillTimeline
    L1_2(L2_2, L3_2)
  end
end

L0_1.DestroyPulseTimelines = L3_1

function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = Math
  L4_2 = L4_2.Clamp
  L5_2 = A1_2
  L6_2 = 0
  L7_2 = 1
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A1_2 = L4_2
  if A1_2 < 1 then
    A0_2.atCapacity = false
    A0_2.debounce = false
  end
  L4_2 = A0_2.currentPercent
  if (A1_2 ~= L4_2 or A3_2) and A1_2 ~= nil then
    L4_2 = A0_2.atCapacity
    if not L4_2 then
      L4_2 = A0_2.debounce
      if not L4_2 then
        goto lbl_26
      end
    end
  end
  do return end
  ::lbl_26::
  L4_2 = A1_2 == 1
  A0_2.atCapacity = L4_2
  L4_2 = A0_2.atCapacity
  if L4_2 then
    L4_2 = A0_2.warnOnHighValue
    if not L4_2 then
      A0_2.debounce = true
      L5_2 = A0_2
      L4_2 = A0_2.PlayFullTimeline
      L4_2(L5_2)
      L4_2 = A0_2.fullSound
      if L4_2 then
        L4_2 = A0_2.audioHelper
        L5_2 = L4_2
        L4_2 = L4_2.PlaySound
        L6_2 = A0_2.fullSound
        L4_2(L5_2, L6_2)
      end
    end
  end
  L4_2 = GetThresholdValue
  L5_2 = A0_2.colorThresholds
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = Lerp
  L6_2 = A0_2.Properties
  L6_2 = L6_2.MinBarImgFill
  L7_2 = A0_2.Properties
  L7_2 = L7_2.MaxBarImgFill
  L8_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = A0_2.warningPulseControlledExternally
  if not L6_2 then
    L6_2 = A0_2.warnOnHighValue
    if L6_2 then
      L7_2 = A0_2
      L6_2 = A0_2.SetIsWarningPulsing
      L8_2 = A0_2.warningPulseThreshold
      L8_2 = A1_2 >= L8_2
      L6_2(L7_2, L8_2)
    else
      L7_2 = A0_2
      L6_2 = A0_2.SetIsWarningPulsing
      L8_2 = A0_2.warningPulseThreshold
      L8_2 = A1_2 <= L8_2
      L6_2(L7_2, L8_2)
    end
  end
  L6_2 = A0_2.currentPercent
  L6_2 = A1_2 > L6_2
  if L6_2 then
    L7_2 = A0_2.pulseOnRefill
    if L7_2 then
      L8_2 = A0_2
      L7_2 = A0_2.PlayRefillTimeline
      L7_2(L8_2)
    end
  end
  L7_2 = A0_2.ScriptedEntityTweener
  L8_2 = L7_2
  L7_2 = L7_2.Stop
  L9_2 = A0_2.Properties
  L9_2 = L9_2.UnderFill
  L7_2(L8_2, L9_2)
  L7_2 = A0_2.ScriptedEntityTweener
  L8_2 = L7_2
  L7_2 = L7_2.Stop
  L9_2 = A0_2.Properties
  L9_2 = L9_2.MainFill
  L7_2(L8_2, L9_2)
  if A2_2 then
    L7_2 = UiImageBus
    L7_2 = L7_2.Event
    L7_2 = L7_2.SetFillAmount
    L8_2 = A0_2.Properties
    L8_2 = L8_2.MainFill
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L7_2 = UiImageBus
    L7_2 = L7_2.Event
    L7_2 = L7_2.SetColor
    L8_2 = A0_2.Properties
    L8_2 = L8_2.MainFill
    L9_2 = L4_2
    L7_2(L8_2, L9_2)
    L7_2 = UiImageBus
    L7_2 = L7_2.Event
    L7_2 = L7_2.SetFillAmount
    L8_2 = A0_2.Properties
    L8_2 = L8_2.UnderFill
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    A0_2.currentPercent = A1_2
    return
  end
  L7_2 = A0_2.ScriptedEntityTweener
  L8_2 = L7_2
  L7_2 = L7_2.Play
  L9_2 = A0_2.Properties
  L9_2 = L9_2.UnderFill
  L10_2 = A0_2.fillAnimTime
  L11_2 = {}
  L11_2.imgFill = L5_2
  if L6_2 then
    L12_2 = 0
    if L12_2 then
      goto lbl_139
    end
  end
  L12_2 = A0_2.decreaseDelay
  ::lbl_139::
  L11_2.delay = L12_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = A0_2.ScriptedEntityTweener
  L8_2 = L7_2
  L7_2 = L7_2.Play
  L9_2 = A0_2.Properties
  L9_2 = L9_2.MainFill
  L10_2 = A0_2.fillAnimTime
  L11_2 = {}
  L11_2.imgFill = L5_2
  L11_2.imgColor = L4_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
  A0_2.currentPercent = A1_2
end

L0_1.SetPercentFill = L3_1

function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.isWarningPulsing
  if A1_2 == L2_2 then
    return
  end
  if A1_2 then
    L2_2 = UiElementBus
    L2_2 = L2_2.Event
    L2_2 = L2_2.SetIsEnabled
    L3_2 = A0_2.Properties
    L3_2 = L3_2.WarningCover
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2.warningPulseFrameTimeline
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L2_2(L3_2)
    L2_2 = A0_2.warningPulseCoverTimeline
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L2_2(L3_2)
    L2_2 = A0_2.enterWarningSound
    if L2_2 then
      L2_2 = A0_2.audioHelper
      L3_2 = L2_2
      L2_2 = L2_2.PlaySound
      L4_2 = A0_2.enterWarningSound
      L2_2(L3_2, L4_2)
    end
  else
    L2_2 = A0_2.warningPulseFrameTimeline
    L3_2 = L2_2
    L2_2 = L2_2.Stop
    L2_2(L3_2)
    L2_2 = A0_2.warningPulseCoverTimeline
    L3_2 = L2_2
    L2_2 = L2_2.Stop
    L2_2(L3_2)
    L2_2 = A0_2.ScriptedEntityTweener
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = A0_2.Properties
    L4_2 = L4_2.Frame
    L5_2 = 0.3
    L6_2 = {}
    L7_2 = A0_2.frameColor
    L6_2.imgColor = L7_2
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = A0_2.ScriptedEntityTweener
    L3_2 = L2_2
    L2_2 = L2_2.PlayC
    L4_2 = A0_2.Properties
    L4_2 = L4_2.WarningCover
    L5_2 = 0.3
    L6_2 = _UPVALUE0_
    L6_2 = L6_2.fadeOutQuadOut
    L7_2 = 0
    
    function L8_2()
      local L0_3, L1_3, L2_3
      L0_3 = UiElementBus
      L0_3 = L0_3.Event
      L0_3 = L0_3.SetIsEnabled
      L1_3 = A0_2
      L1_3 = L1_3.Properties
      L1_3 = L1_3.WarningCover
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
    
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    L2_2 = A0_2.exitWarningSound
    if L2_2 then
      L2_2 = A0_2.audioHelper
      L3_2 = L2_2
      L2_2 = L2_2.PlaySound
      L4_2 = A0_2.exitWarningSound
      L2_2(L3_2, L4_2)
    end
  end
  A0_2.isWarningPulsing = A1_2
end

L0_1.SetIsWarningPulsing = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.isRefillTimelinePlaying
  if not L1_2 then
    L1_2 = A0_2.isErrorFgTimelinePlaying
    if not L1_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  A0_2.isRefillTimelinePlaying = true
  L1_2 = UiElementBus
  L1_2 = L1_2.Event
  L1_2 = L1_2.SetIsEnabled
  L2_2 = A0_2.Properties
  L2_2 = L2_2.RefillCover
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = UiImageBus
  L1_2 = L1_2.Event
  L1_2 = L1_2.SetColor
  L2_2 = A0_2.Properties
  L2_2 = L2_2.RefillCover
  L3_2 = A0_2.refillCoverColor
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.refillTimeline
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L1_2(L2_2)
end

L0_1.PlayRefillTimeline = L3_1

function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.refillTimeline
  L2_2 = L1_2
  L1_2 = L1_2.Stop
  L1_2(L2_2)
  A0_2.isRefillTimelinePlaying = false
  L1_2 = A0_2.fullFrameTimeline
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L1_2(L2_2)
  L1_2 = A0_2.isErrorFgTimelinePlaying
  if not L1_2 then
    L1_2 = A0_2.fullRefillTimeline
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L1_2(L2_2)
  end
end

L0_1.PlayFullTimeline = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.isWarningPulsing
  if not L1_2 then
    L1_2 = A0_2.warningPulseFrameTimeline
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L1_2(L2_2)
  end
  L1_2 = A0_2.errorBgTimeline
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L1_2(L2_2)
  A0_2.isRefillTimelinePlaying = false
  L1_2 = A0_2.refillTimeline
  L2_2 = L1_2
  L1_2 = L1_2.Stop
  L1_2(L2_2)
  A0_2.isErrorFgTimelinePlaying = true
  L1_2 = UiElementBus
  L1_2 = L1_2.Event
  L1_2 = L1_2.SetIsEnabled
  L2_2 = A0_2.Properties
  L2_2 = L2_2.RefillCover
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = UiImageBus
  L1_2 = L1_2.Event
  L1_2 = L1_2.SetColor
  L2_2 = A0_2.Properties
  L2_2 = L2_2.RefillCover
  L3_2 = A0_2.UIStyle
  L3_2 = L3_2.COLOR_RED_NEW
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.errorFgTimeline
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L1_2(L2_2)
end

L0_1.PlayErrorFlash = L3_1

function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = UiImageBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetSpritePathname
  L3_2 = A0_2.Properties
  L3_2 = L3_2.MainFill
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = UiImageBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetSpritePathname
  L3_2 = A0_2.Properties
  L3_2 = L3_2.UnderFill
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

L0_1.SetFillSpritePathname = L3_1
return L0_1
