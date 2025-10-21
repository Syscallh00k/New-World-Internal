local L0_1, L1_1, L2_1, L3_1, L4_1
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
L1_1.ShowLine = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.WarTitleText = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.WarGuildsText = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.WarGuildsTextContainer = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.WarDetailText = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.WarDurationText = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.MessageText = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.Glow = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.SequenceFogLoop = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.SequenceLight = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.SequenceLightBlue = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.GuildCrestsContainer = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.AttackerCrest = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.DefenderCrest = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.IconContainer = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.InvasionIcon = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.AttackerIcon = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.DefenderIcon = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.CustomIcon = L2_1
L0_1.Properties = L1_1
L0_1.playedAnimation = false
L0_1.timer = 0
L0_1.timerTick = 1
L0_1.warTimeRemainingSeconds = 0
L0_1.swapTimerFont = false
L1_1 = RequireScript
L2_1 = "LyShineUI._Common.BaseElement"
L1_1 = L1_1(L2_1)
L3_1 = L1_1
L2_1 = L1_1.CreateNewElement
L4_1 = L0_1
L2_1(L3_1, L4_1)
L2_1 = RequireScript
L3_1 = "LyShineUI._Common.TimeHelperFunctions"
L2_1 = L2_1(L3_1)
L3_1 = RequireScript
L4_1 = "LyShineUI._Common.ScriptedEntityTweenerCommon"
L3_1 = L3_1(L4_1)

function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = _UPVALUE0_
  L1_2 = L1_2.OnInit
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = {}
  L1_2.opacity = 1
  L1_2.scaleX = 1
  L1_2.scaleY = 1
  A0_2.propertyReset = L1_2
  L1_2 = UiTransformBus
  L1_2 = L1_2.Event
  L1_2 = L1_2.GetLocalPositionY
  L2_2 = A0_2.entityId
  L1_2 = L1_2(L2_2)
  A0_2.defaultY = L1_2
  L1_2 = _UPVALUE1_
  A0_2.timeHelpers = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.CacheAnimations
  L1_2(L2_2)
  L1_2 = A0_2.unloader
  L2_2 = L1_2
  L1_2 = L1_2.AddElement
  L3_2 = A0_2.Properties
  L3_2 = L3_2.SequenceLight
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.unloader
  L2_2 = L1_2
  L1_2 = L1_2.AddElement
  L3_2 = A0_2.Properties
  L3_2 = L3_2.SequenceLightBlue
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.unloader
  L2_2 = L1_2
  L1_2 = L1_2.UnloadSprites
  L1_2(L2_2)
end

L0_1.OnInit = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.anim
  if not L1_2 then
    L1_2 = {}
    A0_2.anim = L1_2
    L1_2 = A0_2.anim
    L2_2 = A0_2.ScriptedEntityTweener
    L3_2 = L2_2
    L2_2 = L2_2.CacheAnimation
    L4_2 = 0.2
    L5_2 = {}
    L5_2.opacity = 1
    L5_2.scaleX = 1
    L5_2.scaleY = 1
    L5_2.ease = "QuadInOut"
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L1_2.opacityAndScaleTo1QuadInOut = L2_2
    L1_2 = A0_2.anim
    L2_2 = A0_2.ScriptedEntityTweener
    L3_2 = L2_2
    L2_2 = L2_2.CacheAnimation
    L4_2 = 0.2
    L5_2 = {}
    L5_2.textCharacterSpace = 300
    L5_2.ease = "QuadOut"
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L1_2.textCharacterSpaceTo300 = L2_2
    L1_2 = A0_2.anim
    L2_2 = A0_2.ScriptedEntityTweener
    L3_2 = L2_2
    L2_2 = L2_2.CacheAnimation
    L4_2 = 0.2
    L5_2 = {}
    L5_2.textCharacterSpace = 700
    L5_2.opacity = 0
    L5_2.ease = "QuadOut"
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L1_2.textCharacterSpaceTo700 = L2_2
  end
end

L0_1.CacheAnimations = L4_1

function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A2_2.warTitleText
  if L3_2 then
    L3_2 = UiTextBus
    L3_2 = L3_2.Event
    L3_2 = L3_2.SetTextWithFlags
    L4_2 = A0_2.Properties
    L4_2 = L4_2.WarTitleText
    L5_2 = A2_2.warTitleText
    L6_2 = eUiTextSet_SetLocalized
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = A2_2.warDetailText
  if L3_2 then
    L3_2 = UiTextBus
    L3_2 = L3_2.Event
    L3_2 = L3_2.SetTextWithFlags
    L4_2 = A0_2.Properties
    L4_2 = L4_2.WarDetailText
    L5_2 = A2_2.warDetailText
    L6_2 = eUiTextSet_SetLocalized
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = UiTextBus
    L3_2 = L3_2.Event
    L3_2 = L3_2.SetTextWithFlags
    L4_2 = A0_2.Properties
    L4_2 = L4_2.WarDetailText
    L5_2 = "@owg_time_remaining"
    L6_2 = eUiTextSet_SetLocalized
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = A0_2.swapTimerFont
  if L3_2 then
    L3_2 = UiTextBus
    L3_2 = L3_2.Event
    L3_2 = L3_2.SetFont
    L4_2 = A0_2.Properties
    L4_2 = L4_2.WarDurationText
    L5_2 = A0_2.UIStyle
    L5_2 = L5_2.FONT_FAMILY_CASLON
    L3_2(L4_2, L5_2)
  end
  L3_2 = A2_2.isAttacking
  A0_2.isAttacking = L3_2
  L3_2 = A2_2.bannerColor
  A0_2.bannerColor = L3_2
  L3_2 = A2_2.phaseEndTime
  A0_2.phaseEndTime = L3_2
  L3_2 = A2_2.isInvasion
  A0_2.isInvasion = L3_2
  L3_2 = A2_2.isSiegeState
  if not L3_2 then
    L3_2 = false
  end
  A0_2.isSiegeState = L3_2
  L3_2 = UiElementBus
  L3_2 = L3_2.Event
  L3_2 = L3_2.SetIsEnabled
  L4_2 = A0_2.Properties
  L4_2 = L4_2.WarDurationText
  L5_2 = A0_2.phaseEndTime
  L5_2 = L5_2 ~= nil
  L3_2(L4_2, L5_2)
  L3_2 = UiImageBus
  L3_2 = L3_2.Event
  L3_2 = L3_2.SetColor
  L4_2 = A0_2.Properties
  L4_2 = L4_2.CustomIcon
  L5_2 = A2_2.customIconColor
  if not L5_2 then
    L5_2 = ColorRgba
    L6_2 = 255
    L7_2 = 255
    L8_2 = 255
    L9_2 = 1
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  end
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.isInvasion
  if L3_2 then
    L3_2 = UiElementBus
    L3_2 = L3_2.Event
    L3_2 = L3_2.SetIsEnabled
    L4_2 = A0_2.Properties
    L4_2 = L4_2.GuildCrestsContainer
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = UiElementBus
    L3_2 = L3_2.Event
    L3_2 = L3_2.SetIsEnabled
    L4_2 = A0_2.Properties
    L4_2 = L4_2.InvasionIcon
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = UiElementBus
    L3_2 = L3_2.Event
    L3_2 = L3_2.SetIsEnabled
    L4_2 = A0_2.Properties
    L4_2 = L4_2.CustomIcon
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = UiElementBus
    L3_2 = L3_2.Event
    L3_2 = L3_2.SetIsEnabled
    L4_2 = A0_2.Properties
    L4_2 = L4_2.AttackerIcon
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = UiElementBus
    L3_2 = L3_2.Event
    L3_2 = L3_2.SetIsEnabled
    L4_2 = A0_2.Properties
    L4_2 = L4_2.DefenderIcon
    L5_2 = false
    L3_2(L4_2, L5_2)
  else
    L3_2 = UiElementBus
    L3_2 = L3_2.Event
    L3_2 = L3_2.SetIsEnabled
    L4_2 = A0_2.Properties
    L4_2 = L4_2.InvasionIcon
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A2_2.offsetY
    if L3_2 then
      L3_2 = UiTransformBus
      L3_2 = L3_2.Event
      L3_2 = L3_2.SetLocalPositionY
      L4_2 = A0_2.entityId
      L5_2 = A2_2.offsetY
      L3_2(L4_2, L5_2)
    else
      L3_2 = UiTransformBus
      L3_2 = L3_2.Event
      L3_2 = L3_2.SetLocalPositionY
      L4_2 = A0_2.entityId
      L5_2 = A0_2.defaultY
      L3_2(L4_2, L5_2)
    end
    L3_2 = A2_2.noIcons
    if L3_2 then
      L3_2 = UiElementBus
      L3_2 = L3_2.Event
      L3_2 = L3_2.SetIsEnabled
      L4_2 = A0_2.Properties
      L4_2 = L4_2.GuildCrestsContainer
      L5_2 = false
      L3_2(L4_2, L5_2)
      L3_2 = UiElementBus
      L3_2 = L3_2.Event
      L3_2 = L3_2.SetIsEnabled
      L4_2 = A0_2.Properties
      L4_2 = L4_2.IconContainer
      L5_2 = false
      L3_2(L4_2, L5_2)
    else
      L3_2 = A2_2.customIcon
      if L3_2 then
        L3_2 = UiElementBus
        L3_2 = L3_2.Event
        L3_2 = L3_2.SetIsEnabled
        L4_2 = A0_2.Properties
        L4_2 = L4_2.GuildCrestsContainer
        L5_2 = false
        L3_2(L4_2, L5_2)
        L3_2 = UiElementBus
        L3_2 = L3_2.Event
        L3_2 = L3_2.SetIsEnabled
        L4_2 = A0_2.Properties
        L4_2 = L4_2.IconContainer
        L5_2 = true
        L3_2(L4_2, L5_2)
        L3_2 = UiElementBus
        L3_2 = L3_2.Event
        L3_2 = L3_2.SetIsEnabled
        L4_2 = A0_2.Properties
        L4_2 = L4_2.AttackerIcon
        L5_2 = false
        L3_2(L4_2, L5_2)
        L3_2 = UiElementBus
        L3_2 = L3_2.Event
        L3_2 = L3_2.SetIsEnabled
        L4_2 = A0_2.Properties
        L4_2 = L4_2.DefenderIcon
        L5_2 = false
        L3_2(L4_2, L5_2)
        L3_2 = UiImageBus
        L3_2 = L3_2.Event
        L3_2 = L3_2.SetSpritePathname
        L4_2 = A0_2.Properties
        L4_2 = L4_2.CustomIcon
        L5_2 = A2_2.customIcon
        L3_2(L4_2, L5_2)
        L3_2 = UiElementBus
        L3_2 = L3_2.Event
        L3_2 = L3_2.SetIsEnabled
        L4_2 = A0_2.Properties
        L4_2 = L4_2.CustomIcon
        L5_2 = true
        L3_2(L4_2, L5_2)
      else
        L3_2 = A0_2.AttackerCrest
        L4_2 = L3_2
        L3_2 = L3_2.SetIcon
        L5_2 = A2_2.attackingGuildCrest
        L3_2(L4_2, L5_2)
        L3_2 = A0_2.DefenderCrest
        L4_2 = L3_2
        L3_2 = L3_2.SetIcon
        L5_2 = A2_2.defendingGuildCrest
        L3_2(L4_2, L5_2)
        L3_2 = A0_2.isSiegeState
        if L3_2 then
          L3_2 = UiElementBus
          L3_2 = L3_2.Event
          L3_2 = L3_2.SetIsEnabled
          L4_2 = A0_2.Properties
          L4_2 = L4_2.GuildCrestsContainer
          L5_2 = false
          L3_2(L4_2, L5_2)
          L3_2 = UiElementBus
          L3_2 = L3_2.Event
          L3_2 = L3_2.SetIsEnabled
          L4_2 = A0_2.Properties
          L4_2 = L4_2.IconContainer
          L5_2 = true
          L3_2(L4_2, L5_2)
          L3_2 = UiElementBus
          L3_2 = L3_2.Event
          L3_2 = L3_2.SetIsEnabled
          L4_2 = A0_2.Properties
          L4_2 = L4_2.AttackerIcon
          L5_2 = A0_2.isAttacking
          L3_2(L4_2, L5_2)
          L3_2 = UiElementBus
          L3_2 = L3_2.Event
          L3_2 = L3_2.SetIsEnabled
          L4_2 = A0_2.Properties
          L4_2 = L4_2.DefenderIcon
          L5_2 = A0_2.isAttacking
          L5_2 = not L5_2
          L3_2(L4_2, L5_2)
          L3_2 = UiElementBus
          L3_2 = L3_2.Event
          L3_2 = L3_2.SetIsEnabled
          L4_2 = A0_2.Properties
          L4_2 = L4_2.CustomIcon
          L5_2 = false
          L3_2(L4_2, L5_2)
        else
          L3_2 = UiElementBus
          L3_2 = L3_2.Event
          L3_2 = L3_2.SetIsEnabled
          L4_2 = A0_2.Properties
          L4_2 = L4_2.GuildCrestsContainer
          L5_2 = true
          L3_2(L4_2, L5_2)
          L3_2 = UiElementBus
          L3_2 = L3_2.Event
          L3_2 = L3_2.SetIsEnabled
          L4_2 = A0_2.Properties
          L4_2 = L4_2.IconContainer
          L5_2 = false
          L3_2(L4_2, L5_2)
          L3_2 = UiElementBus
          L3_2 = L3_2.Event
          L3_2 = L3_2.SetIsEnabled
          L4_2 = A0_2.Properties
          L4_2 = L4_2.AttackerCrest
          L5_2 = A0_2.isAttacking
          L3_2(L4_2, L5_2)
          L3_2 = UiElementBus
          L3_2 = L3_2.Event
          L3_2 = L3_2.SetIsEnabled
          L4_2 = A0_2.Properties
          L4_2 = L4_2.DefenderCrest
          L5_2 = A0_2.isAttacking
          L5_2 = not L5_2
          L3_2(L4_2, L5_2)
        end
      end
    end
  end
end

L0_1.UpdateRow = L4_1

function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = A0_2.timer
  L3_2 = L3_2 + A1_2
  A0_2.timer = L3_2
  L3_2 = A0_2.timer
  L4_2 = A0_2.timerTick
  if L3_2 >= L4_2 then
    L3_2 = A0_2.timer
    L4_2 = A0_2.timerTick
    L3_2 = L3_2 - L4_2
    A0_2.timer = L3_2
    L3_2 = A0_2.phaseEndTime
    if L3_2 ~= nil then
      L3_2 = LocalPlayerComponentRequestBus
      L3_2 = L3_2.Broadcast
      L3_2 = L3_2.GetCurrentSyncedWallClockTime
      L3_2 = L3_2()
      L4_2 = A0_2.phaseEndTime
      L5_2 = L4_2
      L4_2 = L4_2.SubtractSeconds
      L6_2 = L3_2
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = L4_2
      L4_2 = L4_2.ToSeconds
      L4_2 = L4_2(L5_2)
      L5_2 = A0_2.warTimeRemainingSeconds
      if L5_2 ~= L4_2 then
        A0_2.warTimeRemainingSeconds = L4_2
        L5_2 = A0_2.warTimeRemainingSeconds
        L6_2 = A0_2.timeHelpers
        L6_2 = L6_2.secondsInHour
        if L5_2 < L6_2 then
          L5_2 = A0_2.timeHelpers
          L6_2 = L5_2
          L5_2 = L5_2.ConvertSecondsToDaysHoursMinutesSeconds
          L7_2 = L4_2
          L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2)
          L9_2 = string
          L9_2 = L9_2.format
          L10_2 = "%d:%02d"
          L11_2 = L7_2
          L12_2 = L8_2
          L9_2 = L9_2(L10_2, L11_2, L12_2)
          L10_2 = A0_2.swapTimerFont
          if not L10_2 then
            A0_2.swapTimerFont = true
          end
          L10_2 = UiTextBus
          L10_2 = L10_2.Event
          L10_2 = L10_2.SetTextWithFlags
          L11_2 = A0_2.Properties
          L11_2 = L11_2.WarDurationText
          L12_2 = L9_2
          L13_2 = eUiTextSet_SetAsIs
          L10_2(L11_2, L12_2, L13_2)
        else
          L5_2 = A0_2.phaseEndTime
          L6_2 = L5_2
          L5_2 = L5_2.SubtractSeconds
          L7_2 = WallClockTimePoint
          L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2()
          L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
          L6_2 = L5_2
          L5_2 = L5_2.ToSecondsRoundedUp
          L5_2 = L5_2(L6_2)
          L6_2 = GetLocalizedReplacementText
          L7_2 = "@ui_date_time_format"
          L8_2 = {}
          L9_2 = _UPVALUE0_
          L10_2 = L9_2
          L9_2 = L9_2.GetLocalizedLongDate
          L11_2 = L5_2
          L9_2 = L9_2(L10_2, L11_2)
          L8_2.date = L9_2
          L9_2 = _UPVALUE0_
          L10_2 = L9_2
          L9_2 = L9_2.GetLocalizedServerTime
          L11_2 = L5_2
          L9_2 = L9_2(L10_2, L11_2)
          L8_2.time = L9_2
          L6_2 = L6_2(L7_2, L8_2)
          A0_2.swapTimerFont = false
          L7_2 = UiTextBus
          L7_2 = L7_2.Event
          L7_2 = L7_2.SetTextWithFlags
          L8_2 = A0_2.Properties
          L8_2 = L8_2.WarDurationText
          L9_2 = L6_2
          L10_2 = eUiTextSet_SetAsIs
          L7_2(L8_2, L9_2, L10_2)
        end
      end
    end
  end
end

L0_1.OnTick = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.tickHandler
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.BusConnect
    L3_2 = DynamicBus
    L3_2 = L3_2.UITickBus
    L1_2 = L1_2(L2_2, L3_2)
    A0_2.tickHandler = L1_2
  end
end

L0_1.StartTick = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.BusDisconnect
  L3_2 = A0_2.tickHandler
  L1_2(L2_2, L3_2)
  A0_2.tickHandler = nil
end

L0_1.StopTick = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.unloader
  L2_2 = L1_2
  L1_2 = L1_2.ReloadSprites
  L1_2(L2_2)
  L1_2 = A0_2.bannerColor
  if L1_2 == 1 then
    L1_2 = UiImageBus
    L1_2 = L1_2.Event
    L1_2 = L1_2.SetColor
    L2_2 = A0_2.Glow
    L3_2 = A0_2.UIStyle
    L3_2 = L3_2.COLOR_RED
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2.bannerColor
    if L1_2 == 2 then
      L1_2 = UiImageBus
      L1_2 = L1_2.Event
      L1_2 = L1_2.SetColor
      L2_2 = A0_2.Glow
      L3_2 = A0_2.UIStyle
      L3_2 = L3_2.COLOR_RED
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2.bannerColor
      if L1_2 == 3 then
        L1_2 = UiImageBus
        L1_2 = L1_2.Event
        L1_2 = L1_2.SetColor
        L2_2 = A0_2.Properties
        L2_2 = L2_2.Glow
        L3_2 = A0_2.UIStyle
        L3_2 = L3_2.COLOR_CERULEAN_MEDIUM
        L1_2(L2_2, L3_2)
      end
    end
  end
  L1_2 = UiElementBus
  L1_2 = L1_2.Event
  L1_2 = L1_2.SetIsEnabled
  L2_2 = A0_2.Properties
  L2_2 = L2_2.SequenceFogLoop
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = UiFlipbookAnimationBus
  L1_2 = L1_2.Event
  L1_2 = L1_2.SetCurrentFrame
  L2_2 = A0_2.Properties
  L2_2 = L2_2.SequenceFogLoop
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = UiFlipbookAnimationBus
  L1_2 = L1_2.Event
  L1_2 = L1_2.Start
  L2_2 = A0_2.Properties
  L2_2 = L2_2.SequenceFogLoop
  L1_2(L2_2)
  L1_2 = A0_2.bannerColor
  if L1_2 == 3 then
    L1_2 = A0_2.ScriptedEntityTweener
    L2_2 = L1_2
    L1_2 = L1_2.Set
    L3_2 = A0_2.Properties
    L3_2 = L3_2.SequenceLightBlue
    L4_2 = A0_2.propertyReset
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = UiElementBus
    L1_2 = L1_2.Event
    L1_2 = L1_2.SetIsEnabled
    L2_2 = A0_2.Properties
    L2_2 = L2_2.SequenceLight
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = UiElementBus
    L1_2 = L1_2.Event
    L1_2 = L1_2.SetIsEnabled
    L2_2 = A0_2.Properties
    L2_2 = L2_2.SequenceLightBlue
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = UiFlipbookAnimationBus
    L1_2 = L1_2.Event
    L1_2 = L1_2.SetCurrentFrame
    L2_2 = A0_2.Properties
    L2_2 = L2_2.SequenceLightBlue
    L3_2 = 0
    L1_2(L2_2, L3_2)
    L1_2 = UiFlipbookAnimationBus
    L1_2 = L1_2.Event
    L1_2 = L1_2.Start
    L2_2 = A0_2.Properties
    L2_2 = L2_2.SequenceLightBlue
    L1_2(L2_2)
    L1_2 = A0_2.ScriptedEntityTweener
    L2_2 = L1_2
    L1_2 = L1_2.PlayC
    L3_2 = A0_2.Properties
    L3_2 = L3_2.SequenceLightBlue
    L4_2 = 1
    L5_2 = _UPVALUE0_
    L5_2 = L5_2.fadeOutLinear
    L6_2 = 0.5
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  else
    L1_2 = A0_2.ScriptedEntityTweener
    L2_2 = L1_2
    L1_2 = L1_2.Set
    L3_2 = A0_2.Properties
    L3_2 = L3_2.SequenceLight
    L4_2 = A0_2.propertyReset
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = UiElementBus
    L1_2 = L1_2.Event
    L1_2 = L1_2.SetIsEnabled
    L2_2 = A0_2.Properties
    L2_2 = L2_2.SequenceLight
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = UiElementBus
    L1_2 = L1_2.Event
    L1_2 = L1_2.SetIsEnabled
    L2_2 = A0_2.Properties
    L2_2 = L2_2.SequenceLightBlue
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = UiFlipbookAnimationBus
    L1_2 = L1_2.Event
    L1_2 = L1_2.SetCurrentFrame
    L2_2 = A0_2.Properties
    L2_2 = L2_2.SequenceLight
    L3_2 = 0
    L1_2(L2_2, L3_2)
    L1_2 = UiFlipbookAnimationBus
    L1_2 = L1_2.Event
    L1_2 = L1_2.Start
    L2_2 = A0_2.Properties
    L2_2 = L2_2.SequenceLight
    L1_2(L2_2)
    L1_2 = A0_2.ScriptedEntityTweener
    L2_2 = L1_2
    L1_2 = L1_2.PlayC
    L3_2 = A0_2.Properties
    L3_2 = L3_2.SequenceLight
    L4_2 = 1
    L5_2 = _UPVALUE0_
    L5_2 = L5_2.fadeOutLinear
    L6_2 = 0.5
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
  L1_2 = A0_2.ScriptedEntityTweener
  L2_2 = L1_2
  L1_2 = L1_2.PlayC
  L3_2 = A0_2.Properties
  L3_2 = L3_2.Glow
  L4_2 = 1
  L5_2 = _UPVALUE0_
  L5_2 = L5_2.fadeInQuadOut
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.ScriptedEntityTweener
  L2_2 = L1_2
  L1_2 = L1_2.PlayC
  L3_2 = A0_2.Properties
  L3_2 = L3_2.Glow
  L4_2 = 2.5
  L5_2 = _UPVALUE0_
  L5_2 = L5_2.fadeOutQuadOut
  L6_2 = 3
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2.ScriptedEntityTweener
  L2_2 = L1_2
  L1_2 = L1_2.Set
  L3_2 = A0_2.Properties
  L3_2 = L3_2.ShowLine
  L4_2 = {}
  L4_2.opacity = 0
  L4_2.scaleX = 0
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2.ScriptedEntityTweener
  L2_2 = L1_2
  L1_2 = L1_2.PlayC
  L3_2 = A0_2.Properties
  L3_2 = L3_2.ShowLine
  L4_2 = 0.2
  L5_2 = A0_2.anim
  L5_2 = L5_2.opacityAndScaleTo1QuadInOut
  L6_2 = 0.5
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2.ScriptedEntityTweener
  L2_2 = L1_2
  L1_2 = L1_2.Set
  L3_2 = A0_2.Properties
  L3_2 = L3_2.WarTitleText
  L4_2 = {}
  L4_2.opacity = 0
  L4_2.textCharacterSpace = 100
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2.ScriptedEntityTweener
  L2_2 = L1_2
  L1_2 = L1_2.PlayC
  L3_2 = A0_2.Properties
  L3_2 = L3_2.WarTitleText
  L4_2 = 1
  L5_2 = _UPVALUE0_
  L5_2 = L5_2.fadeInQuadOut
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.ScriptedEntityTweener
  L2_2 = L1_2
  L1_2 = L1_2.PlayC
  L3_2 = A0_2.Properties
  L3_2 = L3_2.WarTitleText
  L4_2 = 2.5
  L5_2 = A0_2.anim
  L5_2 = L5_2.textCharacterSpaceTo300
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.audioHelper
  L2_2 = L1_2
  L1_2 = L1_2.PlaySound
  L3_2 = A0_2.audioHelper
  L3_2 = L3_2.Banner_LevelUp
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.ScriptedEntityTweener
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = A0_2.Properties
  L3_2 = L3_2.WarDurationText
  L4_2 = 0.5
  L5_2 = {}
  L5_2.opacity = 0
  L6_2 = {}
  L6_2.opacity = 1
  L6_2.delay = 1.5
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2.ScriptedEntityTweener
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = A0_2.Properties
  L3_2 = L3_2.WarDetailText
  L4_2 = 0.5
  L5_2 = {}
  L5_2.opacity = 0
  L6_2 = {}
  L6_2.opacity = 1
  L6_2.delay = 1.5
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2.StartTick
  L1_2(L2_2)
  A0_2.playedAnimation = true
end

L0_1.TransitionIn = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.playedAnimation
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.StopTick
    L1_2(L2_2)
    L1_2 = A0_2.ScriptedEntityTweener
    L2_2 = L1_2
    L1_2 = L1_2.PlayC
    L3_2 = A0_2.Properties
    L3_2 = L3_2.WarTitleText
    L4_2 = 0.3
    L5_2 = A0_2.anim
    L5_2 = L5_2.textCharacterSpaceTo700
    L6_2 = nil
    
    function L7_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L0_3.playedAnimation = false
    end
    
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  end
  L1_2 = A0_2.unloader
  L2_2 = L1_2
  L1_2 = L1_2.UnloadSprites
  L1_2(L2_2)
end

L0_1.TransitionOut = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.ScriptedEntityTweener
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = A0_2.Properties
  L3_2 = L3_2.MessageText
  L4_2 = 1
  L5_2 = {}
  L5_2.opacity = 1
  L6_2 = {}
  L6_2.opacity = 0
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2.ScriptedEntityTweener
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = A0_2.Properties
  L3_2 = L3_2.WarDurationText
  L4_2 = 1
  L5_2 = {}
  L5_2.opacity = 1
  L6_2 = {}
  L6_2.opacity = 0
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2.ScriptedEntityTweener
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = A0_2.Properties
  L3_2 = L3_2.WarDetailText
  L4_2 = 1
  L5_2 = {}
  L5_2.opacity = 1
  L6_2 = {}
  L6_2.opacity = 0
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2.ScriptedEntityTweener
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = A0_2.Properties
  L3_2 = L3_2.GuildCrestsContainer
  L4_2 = 0.3
  L5_2 = {}
  L5_2.opacity = 0
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.ScriptedEntityTweener
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = A0_2.Properties
  L3_2 = L3_2.WarGuildsText
  L4_2 = 0.3
  L5_2 = {}
  L5_2.opacity = 0
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.ScriptedEntityTweener
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = A0_2.Properties
  L3_2 = L3_2.WarTitleText
  L4_2 = 0.3
  L5_2 = {}
  L5_2.opacity = 0
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.ScriptedEntityTweener
  L2_2 = L1_2
  L1_2 = L1_2.PlayC
  L3_2 = A0_2.Properties
  L3_2 = L3_2.SequenceFogLoop
  L4_2 = 1
  L5_2 = _UPVALUE0_
  L5_2 = L5_2.fadeOutQuadOut
  L6_2 = 0.5
  
  function L7_2()
    local L0_3, L1_3, L2_3
    L0_3 = UiFlipbookAnimationBus
    L0_3 = L0_3.Event
    L0_3 = L0_3.Stop
    L1_3 = A0_2
    L1_3 = L1_3.Properties
    L1_3 = L1_3.SequenceFogLoop
    L0_3(L1_3)
    L0_3 = UiElementBus
    L0_3 = L0_3.Event
    L0_3 = L0_3.SetIsEnabled
    L1_3 = A0_2
    L1_3 = L1_3.entityId
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L0_3.playedAnimation = false
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end

L0_1.AnimateOut = L4_1
return L0_1
