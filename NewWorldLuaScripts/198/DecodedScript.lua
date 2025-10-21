local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.CloseButtonIcon = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.CloseButtonIconFocus = L2_1
L0_1.Properties = L1_1
L0_1.BUTTON_STYLE_DIAMOND = 1
L0_1.BUTTON_STYLE_REGULAR = 2
L0_1.BUTTON_STYLE_DIAMOND_BACK = 3
L0_1.BUTTON_STYLE_DIAMOND_FORWARD = 4
L0_1.BUTTON_STYLE_DIAMOND_ICON_FOCUS = "LyShineUI/Images/slices/ButtonCloseDiamond/buttoncloseDiamond_focus.dds"
L0_1.BUTTON_STYLE_DIAMOND_ICON_UNFOCUS = "LyShineUI/Images/slices/ButtonCloseDiamond/buttoncloseDiamond.dds"
L0_1.BUTTON_STYLE_DIAMOND_ICON_DISABLED = "LyShineUI/Images/slices/ButtonCloseDiamond/buttoncloseDiamondDisabled.dds"
L0_1.BUTTON_STYLE_REGULAR_ICON = "LyShineUI/Images/Icons/Misc/icon_close.dds"
L0_1.BUTTON_STYLE_DIAMOND_BACK_ICON_FOCUS = "LyShineUI/Images/slices/ButtonCloseDiamond/buttonDiamondBackFocused.dds"
L0_1.BUTTON_STYLE_DIAMOND_BACK_ICON_UNFOCUS = "LyShineUI/Images/slices/ButtonCloseDiamond/buttonDiamondBackUnfocused.dds"
L0_1.BUTTON_STYLE_DIAMOND_BACK_ICON_DISABLED = "LyShineUI/Images/slices/ButtonCloseDiamond/buttonDiamondBackDisabled.dds"
L0_1.buttonStyle = nil
L0_1.isEnabled = true
L1_1 = RequireScript
L2_1 = "LyShineUI._Common.BaseElement"
L1_1 = L1_1(L2_1)
L3_1 = L1_1
L2_1 = L1_1.CreateNewElement
L4_1 = L0_1
L2_1(L3_1, L4_1)

function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = _UPVALUE0_
  L1_2 = L1_2.OnInit
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = {}
  L2_2 = A0_2.BUTTON_STYLE_DIAMOND_BACK
  L1_2[L2_2] = true
  L2_2 = A0_2.BUTTON_STYLE_DIAMOND_FORWARD
  L1_2[L2_2] = true
  A0_2.controllerAllowedStyles = L1_2
  L1_2 = UiElementBus
  L1_2 = L1_2.Event
  L1_2 = L1_2.IsEnabled
  L2_2 = A0_2.entityId
  L1_2 = L1_2(L2_2)
  A0_2.isElementEnabled = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.SetButtonStyle
  L3_2 = A0_2.BUTTON_STYLE_DIAMOND
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.BusConnect
  L3_2 = LastInputDeviceNotificationBus
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.RefreshInputDeviceUI
  L3_2 = LyShineManagerBus
  L3_2 = L3_2.Broadcast
  L3_2 = L3_2.GetLastActionInputDevice
  L3_2 = L3_2()
  L1_2(L2_2, L3_2)
end

L0_1.OnInit = L2_1

function L2_1(A0_2, A1_2, A2_2)
  A0_2.callback = A1_2
  A0_2.callbackTable = A2_2
end

L0_1.SetCallback = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2.buttonStyle = A1_2
  L2_2 = A0_2.buttonStyle
  L3_2 = A0_2.BUTTON_STYLE_DIAMOND
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2.SetBackgroundColor
    L4_2 = A0_2.UIStyle
    L4_2 = L4_2.COLOR_WHITE
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.SetBackgroundFocusColor
    L4_2 = A0_2.UIStyle
    L4_2 = L4_2.COLOR_WHITE
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.SetBackground
    L4_2 = A0_2.BUTTON_STYLE_DIAMOND_ICON_UNFOCUS
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.SetBackgroundFocus
    L4_2 = A0_2.BUTTON_STYLE_DIAMOND_ICON_FOCUS
    L2_2(L3_2, L4_2)
    L2_2 = A0_2.ScriptedEntityTweener
    L3_2 = L2_2
    L2_2 = L2_2.Set
    L4_2 = A0_2.entityId
    L5_2 = {}
    L5_2.rotation = 45
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = A0_2.buttonStyle
    L3_2 = A0_2.BUTTON_STYLE_REGULAR
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2.SetBackgroundColor
      L4_2 = A0_2.UIStyle
      L4_2 = L4_2.COLOR_TAN
      L2_2(L3_2, L4_2)
      L3_2 = A0_2
      L2_2 = A0_2.SetBackground
      L4_2 = A0_2.BUTTON_STYLE_REGULAR_ICON
      L2_2(L3_2, L4_2)
      L2_2 = A0_2.ScriptedEntityTweener
      L3_2 = L2_2
      L2_2 = L2_2.Set
      L4_2 = A0_2.entityId
      L5_2 = {}
      L5_2.rotation = 0
      L2_2(L3_2, L4_2, L5_2)
    else
      L2_2 = A0_2.buttonStyle
      L3_2 = A0_2.BUTTON_STYLE_DIAMOND_BACK
      if L2_2 == L3_2 then
        L3_2 = A0_2
        L2_2 = A0_2.SetBackgroundColor
        L4_2 = A0_2.UIStyle
        L4_2 = L4_2.COLOR_WHITE
        L2_2(L3_2, L4_2)
        L3_2 = A0_2
        L2_2 = A0_2.SetBackgroundFocusColor
        L4_2 = A0_2.UIStyle
        L4_2 = L4_2.COLOR_WHITE
        L2_2(L3_2, L4_2)
        L3_2 = A0_2
        L2_2 = A0_2.SetBackground
        L4_2 = A0_2.BUTTON_STYLE_DIAMOND_BACK_ICON_UNFOCUS
        L2_2(L3_2, L4_2)
        L3_2 = A0_2
        L2_2 = A0_2.SetBackgroundFocus
        L4_2 = A0_2.BUTTON_STYLE_DIAMOND_BACK_ICON_FOCUS
        L2_2(L3_2, L4_2)
        L2_2 = A0_2.ScriptedEntityTweener
        L3_2 = L2_2
        L2_2 = L2_2.Set
        L4_2 = A0_2.entityId
        L5_2 = {}
        L5_2.rotation = 0
        L2_2(L3_2, L4_2, L5_2)
      else
        L2_2 = A0_2.buttonStyle
        L3_2 = A0_2.BUTTON_STYLE_DIAMOND_FORWARD
        if L2_2 == L3_2 then
          L2_2 = A0_2.ScriptedEntityTweener
          L3_2 = L2_2
          L2_2 = L2_2.Set
          L4_2 = A0_2.Properties
          L4_2 = L4_2.CloseButtonIcon
          L5_2 = {}
          L5_2.scaleX = -1
          L2_2(L3_2, L4_2, L5_2)
          L2_2 = A0_2.ScriptedEntityTweener
          L3_2 = L2_2
          L2_2 = L2_2.Set
          L4_2 = A0_2.Properties
          L4_2 = L4_2.CloseButtonIconFocus
          L5_2 = {}
          L5_2.scaleX = -1
          L2_2(L3_2, L4_2, L5_2)
          L3_2 = A0_2
          L2_2 = A0_2.SetBackgroundColor
          L4_2 = A0_2.UIStyle
          L4_2 = L4_2.COLOR_WHITE
          L2_2(L3_2, L4_2)
          L3_2 = A0_2
          L2_2 = A0_2.SetBackgroundFocusColor
          L4_2 = A0_2.UIStyle
          L4_2 = L4_2.COLOR_WHITE
          L2_2(L3_2, L4_2)
          L3_2 = A0_2
          L2_2 = A0_2.SetBackground
          L4_2 = A0_2.BUTTON_STYLE_DIAMOND_BACK_ICON_UNFOCUS
          L2_2(L3_2, L4_2)
          L3_2 = A0_2
          L2_2 = A0_2.SetBackgroundFocus
          L4_2 = A0_2.BUTTON_STYLE_DIAMOND_BACK_ICON_FOCUS
          L2_2(L3_2, L4_2)
          L2_2 = A0_2.ScriptedEntityTweener
          L3_2 = L2_2
          L2_2 = L2_2.Set
          L4_2 = A0_2.entityId
          L5_2 = {}
          L5_2.rotation = 0
          L2_2(L3_2, L4_2, L5_2)
        end
      end
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.UpdateVisibility
  L2_2(L3_2)
end

L0_1.SetButtonStyle = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = UiImageBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetSpritePathname
  L3_2 = A0_2.Properties
  L3_2 = L3_2.CloseButtonIcon
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

L0_1.SetBackground = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = UiImageBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetSpritePathname
  L3_2 = A0_2.Properties
  L3_2 = L3_2.CloseButtonIconFocus
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

L0_1.SetBackgroundFocus = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = UiImageBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetColor
  L3_2 = A0_2.Properties
  L3_2 = L3_2.CloseButtonIcon
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

L0_1.SetBackgroundColor = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = UiImageBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetColor
  L3_2 = A0_2.Properties
  L3_2 = L3_2.CloseButtonIconFocus
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

L0_1.SetBackgroundFocusColor = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.isEnabled
  if not L1_2 then
    return
  end
  L1_2 = A0_2.UIStyle
  L1_2 = L1_2.DURATION_BUTTON_FADE_IN
  L2_2 = A0_2.buttonStyle
  L3_2 = A0_2.BUTTON_STYLE_DIAMOND
  if L2_2 == L3_2 then
    L2_2 = A0_2.ScriptedEntityTweener
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = A0_2.Properties
    L4_2 = L4_2.CloseButtonIconFocus
    L5_2 = L1_2
    L6_2 = {}
    L6_2.opacity = 1
    L6_2.ease = "QuadOut"
    L2_2(L3_2, L4_2, L5_2, L6_2)
  else
    L2_2 = A0_2.buttonStyle
    L3_2 = A0_2.BUTTON_STYLE_REGULAR
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2.SetBackgroundColor
      L4_2 = A0_2.UIStyle
      L4_2 = L4_2.COLOR_WHITE
      L2_2(L3_2, L4_2)
      L2_2 = A0_2.ScriptedEntityTweener
      L3_2 = L2_2
      L2_2 = L2_2.Play
      L4_2 = A0_2.entityId
      L5_2 = L1_2
      L6_2 = {}
      L6_2.scaleX = 1.1
      L6_2.scaleY = 1.1
      L6_2.ease = "QuadOut"
      L2_2(L3_2, L4_2, L5_2, L6_2)
    else
      L2_2 = A0_2.buttonStyle
      L3_2 = A0_2.BUTTON_STYLE_DIAMOND_BACK
      if L2_2 == L3_2 then
        L2_2 = A0_2.ScriptedEntityTweener
        L3_2 = L2_2
        L2_2 = L2_2.Play
        L4_2 = A0_2.Properties
        L4_2 = L4_2.CloseButtonIconFocus
        L5_2 = L1_2
        L6_2 = {}
        L6_2.opacity = 1
        L6_2.ease = "QuadOut"
        L2_2(L3_2, L4_2, L5_2, L6_2)
      else
        L2_2 = A0_2.buttonStyle
        L3_2 = A0_2.BUTTON_STYLE_DIAMOND_FORWARD
        if L2_2 == L3_2 then
          L2_2 = A0_2.ScriptedEntityTweener
          L3_2 = L2_2
          L2_2 = L2_2.Play
          L4_2 = A0_2.Properties
          L4_2 = L4_2.CloseButtonIconFocus
          L5_2 = L1_2
          L6_2 = {}
          L6_2.opacity = 1
          L6_2.ease = "QuadOut"
          L2_2(L3_2, L4_2, L5_2, L6_2)
        end
      end
    end
  end
  L2_2 = A0_2.audioHelper
  L3_2 = L2_2
  L2_2 = L2_2.PlaySound
  L4_2 = A0_2.audioHelper
  L4_2 = L4_2.OnHover_ButtonSimpleText
  L2_2(L3_2, L4_2)
end

L0_1.OnHover = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.isEnabled
  if not L1_2 then
    return
  end
  L1_2 = A0_2.UIStyle
  L1_2 = L1_2.DURATION_BUTTON_FADE_OUT
  L2_2 = A0_2.buttonStyle
  L3_2 = A0_2.BUTTON_STYLE_DIAMOND
  if L2_2 == L3_2 then
    L2_2 = A0_2.ScriptedEntityTweener
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = A0_2.Properties
    L4_2 = L4_2.CloseButtonIconFocus
    L5_2 = L1_2
    L6_2 = {}
    L6_2.opacity = 0
    L6_2.ease = "QuadOut"
    L2_2(L3_2, L4_2, L5_2, L6_2)
  else
    L2_2 = A0_2.buttonStyle
    L3_2 = A0_2.BUTTON_STYLE_REGULAR
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2.SetBackgroundColor
      L4_2 = A0_2.UIStyle
      L4_2 = L4_2.COLOR_TAN
      L2_2(L3_2, L4_2)
      L2_2 = A0_2.ScriptedEntityTweener
      L3_2 = L2_2
      L2_2 = L2_2.Play
      L4_2 = A0_2.entityId
      L5_2 = L1_2
      L6_2 = {}
      L6_2.scaleX = 1
      L6_2.scaleY = 1
      L2_2(L3_2, L4_2, L5_2, L6_2)
    else
      L2_2 = A0_2.buttonStyle
      L3_2 = A0_2.BUTTON_STYLE_DIAMOND_BACK
      if L2_2 == L3_2 then
        L2_2 = A0_2.ScriptedEntityTweener
        L3_2 = L2_2
        L2_2 = L2_2.Play
        L4_2 = A0_2.Properties
        L4_2 = L4_2.CloseButtonIconFocus
        L5_2 = L1_2
        L6_2 = {}
        L6_2.opacity = 0
        L6_2.ease = "QuadOut"
        L2_2(L3_2, L4_2, L5_2, L6_2)
      else
        L2_2 = A0_2.buttonStyle
        L3_2 = A0_2.BUTTON_STYLE_DIAMOND_FORWARD
        if L2_2 == L3_2 then
          L2_2 = A0_2.ScriptedEntityTweener
          L3_2 = L2_2
          L2_2 = L2_2.Play
          L4_2 = A0_2.Properties
          L4_2 = L4_2.CloseButtonIconFocus
          L5_2 = L1_2
          L6_2 = {}
          L6_2.opacity = 0
          L6_2.ease = "QuadOut"
          L2_2(L3_2, L4_2, L5_2, L6_2)
        end
      end
    end
  end
end

L0_1.OnUnhover = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.isEnabled
  if L2_2 == A1_2 then
    return
  end
  A0_2.isEnabled = A1_2
  L2_2 = A0_2.buttonStyle
  L3_2 = A0_2.BUTTON_STYLE_DIAMOND
  if L2_2 == L3_2 then
    L2_2 = A0_2.isEnabled
    if L2_2 == false then
      L3_2 = A0_2
      L2_2 = A0_2.SetBackground
      L4_2 = A0_2.BUTTON_STYLE_DIAMOND_ICON_DISABLED
      L2_2(L3_2, L4_2)
      L2_2 = A0_2.ScriptedEntityTweener
      L3_2 = L2_2
      L2_2 = L2_2.Stop
      L4_2 = A0_2.Properties
      L4_2 = L4_2.CloseButtonIconFocus
      L2_2(L3_2, L4_2)
      L2_2 = A0_2.ScriptedEntityTweener
      L3_2 = L2_2
      L2_2 = L2_2.Set
      L4_2 = A0_2.Properties
      L4_2 = L4_2.CloseButtonIconFocus
      L5_2 = {}
      L5_2.opacity = 0
      L2_2(L3_2, L4_2, L5_2)
    else
      L3_2 = A0_2
      L2_2 = A0_2.SetBackground
      L4_2 = A0_2.BUTTON_STYLE_DIAMOND_ICON_UNFOCUS
      L2_2(L3_2, L4_2)
    end
  else
    L2_2 = A0_2.buttonStyle
    L3_2 = A0_2.BUTTON_STYLE_REGULAR
    if L2_2 == L3_2 then
      L2_2 = A0_2.isEnabled
      if L2_2 == false then
        L3_2 = A0_2
        L2_2 = A0_2.SetBackgroundColor
        L4_2 = A0_2.UIStyle
        L4_2 = L4_2.COLOR_GRAY_60
        L2_2(L3_2, L4_2)
      else
        L3_2 = A0_2
        L2_2 = A0_2.SetBackgroundColor
        L4_2 = A0_2.UIStyle
        L4_2 = L4_2.COLOR_TAN
        L2_2(L3_2, L4_2)
      end
    else
      L2_2 = A0_2.buttonStyle
      L3_2 = A0_2.BUTTON_STYLE_DIAMOND_BACK
      if L2_2 == L3_2 then
        L2_2 = A0_2.isEnabled
        if L2_2 == false then
          L3_2 = A0_2
          L2_2 = A0_2.SetBackground
          L4_2 = A0_2.BUTTON_STYLE_DIAMOND_BACK_ICON_DISABLED
          L2_2(L3_2, L4_2)
          L2_2 = A0_2.ScriptedEntityTweener
          L3_2 = L2_2
          L2_2 = L2_2.Stop
          L4_2 = A0_2.Properties
          L4_2 = L4_2.CloseButtonIconFocus
          L2_2(L3_2, L4_2)
          L2_2 = A0_2.ScriptedEntityTweener
          L3_2 = L2_2
          L2_2 = L2_2.Set
          L4_2 = A0_2.Properties
          L4_2 = L4_2.CloseButtonIconFocus
          L5_2 = {}
          L5_2.opacity = 0
          L2_2(L3_2, L4_2, L5_2)
        else
          L3_2 = A0_2
          L2_2 = A0_2.SetBackground
          L4_2 = A0_2.BUTTON_STYLE_DIAMOND_BACK_ICON_UNFOCUS
          L2_2(L3_2, L4_2)
        end
      else
        L2_2 = A0_2.buttonStyle
        L3_2 = A0_2.BUTTON_STYLE_DIAMOND_FORWARD
        if L2_2 == L3_2 then
          L2_2 = A0_2.isEnabled
          if L2_2 == false then
            L3_2 = A0_2
            L2_2 = A0_2.SetBackground
            L4_2 = A0_2.BUTTON_STYLE_DIAMOND_BACK_ICON_DISABLED
            L2_2(L3_2, L4_2)
            L2_2 = A0_2.ScriptedEntityTweener
            L3_2 = L2_2
            L2_2 = L2_2.Stop
            L4_2 = A0_2.Properties
            L4_2 = L4_2.CloseButtonIconFocus
            L2_2(L3_2, L4_2)
            L2_2 = A0_2.ScriptedEntityTweener
            L3_2 = L2_2
            L2_2 = L2_2.Set
            L4_2 = A0_2.Properties
            L4_2 = L4_2.CloseButtonIconFocus
            L5_2 = {}
            L5_2.opacity = 0
            L2_2(L3_2, L4_2, L5_2)
          else
            L3_2 = A0_2
            L2_2 = A0_2.SetBackground
            L4_2 = A0_2.BUTTON_STYLE_DIAMOND_BACK_ICON_UNFOCUS
            L2_2(L3_2, L4_2)
          end
        end
      end
    end
  end
end

L0_1.SetEnabled = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.isEnabled
  if not L1_2 then
    return
  end
  L1_2 = A0_2.callbackTable
  if L1_2 then
    L1_2 = type
    L2_2 = A0_2.callback
    L1_2 = L1_2(L2_2)
    if L1_2 == "function" then
      L1_2 = A0_2.callback
      L2_2 = A0_2.callbackTable
      L1_2(L2_2)
    end
  end
  L1_2 = A0_2.buttonStyle
  L2_2 = A0_2.BUTTON_STYLE_REGULAR
  if L1_2 == L2_2 then
    L1_2 = A0_2.ScriptedEntityTweener
    L2_2 = L1_2
    L1_2 = L1_2.Stop
    L3_2 = A0_2.Properties
    L3_2 = L3_2.CloseButtonIcon
    L1_2(L2_2, L3_2)
    L1_2 = A0_2.ScriptedEntityTweener
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = A0_2.Properties
    L3_2 = L3_2.CloseButtonIcon
    L4_2 = 0.02
    L5_2 = {}
    L5_2.scaleX = 1
    L5_2.scaleY = 1
    L6_2 = {}
    L6_2.scaleX = 0.9
    L6_2.scaleY = 0.9
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = A0_2.ScriptedEntityTweener
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = A0_2.Properties
    L3_2 = L3_2.CloseButtonIcon
    L4_2 = 0.1
    L5_2 = {}
    L5_2.scaleX = 0.9
    L5_2.scaleY = 0.9
    L6_2 = {}
    L6_2.scaleX = 1
    L6_2.scaleY = 1
    L6_2.delay = 0.02
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
  L1_2 = A0_2.audioHelper
  L2_2 = L1_2
  L1_2 = L1_2.PlaySound
  L3_2 = A0_2.audioHelper
  L3_2 = L3_2.Accept
  L1_2(L2_2, L3_2)
end

L0_1.OnPress = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2.isElementEnabled = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.UpdateVisibility
  L2_2(L3_2)
end

L0_1.SetElementEnabled = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2.lastInputDevice = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.UpdateVisibility
  L2_2(L3_2)
end

L0_1.RefreshInputDeviceUI = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.controllerAllowedStyles
  L2_2 = A0_2.buttonStyle
  L1_2 = L1_2[L2_2]
  if not L1_2 then
    L1_2 = A0_2.lastInputDevice
    L2_2 = eAID_AzPad
    L1_2 = L1_2 ~= L2_2
  end
  L2_2 = UiElementBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetIsEnabled
  L3_2 = A0_2.entityId
  L4_2 = A0_2.isElementEnabled
  if L4_2 then
    L4_2 = L1_2
  end
  L2_2(L3_2, L4_2)
end

L0_1.UpdateVisibility = L2_1
return L0_1
