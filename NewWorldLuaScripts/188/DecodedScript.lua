local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = g_Reflect
L1_1 = L0_1
L0_1 = L0_1.RequireReflectionCategory
L2_1 = eReflectionCategory_Territory_Objectives
L0_1(L1_1, L2_1)
L0_1 = RequireScript
L1_1 = "LyShineUI._Common.BaseElement"
L0_1 = L0_1(L1_1)
BaseElement = L0_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.Pulse = L2_1
L0_1.Properties = L1_1
L0_1.FLYOUT_CONTEXT = "GlobalMapEntityIcon"
L0_1.GROUP_SIZE_PREFIX = "@ui_groupsize_"
L0_1.RECOMMENDED_FORMAT = "<font color = \"#76ffd7\">%s</font>"
L0_1.NOT_RECOMMENDED_FORMAT = "<font color = \"#ff9393\">%s</font>"
L0_1.BEGIN_PULSE_RADIUS = 0
L0_1.END_PULSE_RADIUS = 35
L0_1.BEGIN_PULSE_ALPHA = 0.5
L0_1.END_PULSE_ALPHA = 0
L0_1.PULSE_PERIOD = 1
L0_1.currentZoom = -1
L1_1 = {}
L1_1.default = 1
L1_1[0] = 1.6
L1_1[1] = 1.6
L1_1[2] = 1.6
L1_1[3] = 1.4
L1_1[4] = 1.2
L1_1[5] = 1
L1_1[6] = 1
L1_1[7] = 0.9
L1_1[8] = 0.8
L0_1.scaleAtZoom = L1_1
L0_1.flyoutOnPressForGamepad = false
L0_1.flyoutOnPressForKBAM = false
L1_1 = BaseElement
L2_1 = L1_1
L1_1 = L1_1.CreateNewElement
L3_1 = L0_1
L1_1(L2_1, L3_1)
L1_1 = RequireScript
L2_1 = "LyShineUI.Popup.PopupRequestWrapper"
L1_1 = L1_1(L2_1)
L2_1 = RequireScript
L3_1 = "LyShineUI._Common.MapTypes"
L2_1 = L2_1(L3_1)
L3_1 = RequireScript
L4_1 = "LyShineUI._Common.EncounterDataHandler"
L3_1 = L3_1(L4_1)
L4_1 = RequireScript
L5_1 = "LyShineUI._Common.HoverIntentDetector"
L4_1 = L4_1(L5_1)
L5_1 = RequireScript
L6_1 = "LyShineUI._Common.TimeHelperFunctions"
L5_1 = L5_1(L6_1)
L6_1 = RequireScript
L7_1 = "LyShineUI._Common.StaticItemDataManager"
L6_1 = L6_1(L7_1)
L7_1 = RequireScript
L8_1 = "LyShineUI.WorldMap.MapClusteringCommon"
L7_1 = L7_1(L8_1)
L8_1 = RequireScript
L9_1 = "LyShineUI._Common.TimingUtils"
L8_1 = L8_1(L9_1)

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = BaseElement
  L1_2 = L1_2.OnInit
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = A0_2.dataLayer
  L2_2 = L1_2
  L1_2 = L1_2.RegisterAndExecuteDataObserver
  L3_2 = A0_2
  L4_2 = "UIFeatures.enable-map-flyout-click-behavior"
  
  function L5_2(A0_3, A1_3)
    if A1_3 ~= nil then
      A0_3.flyoutClickBehaviorEnabled = A1_3
    end
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.dataLayer
  L2_2 = L1_2
  L1_2 = L1_2.RegisterAndExecuteDataObserver
  L3_2 = A0_2
  L4_2 = "UIFeatures.map-icon-flyout-delay-in-seconds"
  
  function L5_2(A0_3, A1_3)
    A0_3.flyoutDelay = A1_3
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2.BusConnect
  L3_2 = UiElementNotificationBus
  L4_2 = A0_2.entityId
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.OnUiElementEnabledChanged
  L3_2 = UiElementBus
  L3_2 = L3_2.Event
  L3_2 = L3_2.IsEnabled
  L4_2 = A0_2.entityId
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = UiInteractableBus
  L1_2 = L1_2.Event
  L1_2 = L1_2.SetMagnetismMode
  L2_2 = A0_2.entityId
  L3_2 = eMagnetismEffectorMode_Center
  L1_2(L2_2, L3_2)
  L1_2 = UiButtonBus
  L1_2 = L1_2.Event
  L1_2 = L1_2.SetOnClickActionName
  L2_2 = A0_2.entityId
  L3_2 = "DummyForMagnetism"
  L1_2(L2_2, L3_2)
  L1_2 = UiInteractableBus
  L1_2 = L1_2.Event
  L1_2 = L1_2.SetFrictionOverrideValue
  L2_2 = A0_2.entityId
  L3_2 = 0.63
  L1_2(L2_2, L3_2)
end

L0_1.OnInit = L9_1

function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.RemoveIconFromMapClusteringData
  L1_2(L2_2)
end

L0_1.OnShutdown = L9_1

function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A0_2
  L3_2 = A0_2.IsEnabled
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = A0_2.iconData
    L3_2 = L3_2.isActive
    if L3_2 then
      L3_2 = A0_2.pulseProgress
      L3_2 = L3_2 + A1_2
      A0_2.pulseProgress = L3_2
      L3_2 = A0_2.pulseProgress
      L4_2 = A0_2.PULSE_PERIOD
      if L3_2 > L4_2 then
        L3_2 = A0_2.pulseProgress
        L4_2 = A0_2.PULSE_PERIOD
        L3_2 = L3_2 - L4_2
        A0_2.pulseProgress = L3_2
      end
      L3_2 = A0_2.pulseProgress
      L4_2 = A0_2.PULSE_PERIOD
      L3_2 = L3_2 / L4_2
      L4_2 = Color
      L4_2 = L4_2.Clone
      L5_2 = A0_2.pulseColor
      L4_2 = L4_2(L5_2)
      L5_2 = A0_2.BEGIN_PULSE_ALPHA
      L6_2 = A0_2.END_PULSE_ALPHA
      L7_2 = A0_2.BEGIN_PULSE_ALPHA
      L6_2 = L6_2 - L7_2
      L6_2 = L6_2 * L3_2
      L5_2 = L5_2 + L6_2
      L4_2.a = L5_2
      L5_2 = A0_2.BEGIN_PULSE_RADIUS
      L6_2 = A0_2.END_PULSE_RADIUS
      L7_2 = A0_2.BEGIN_PULSE_RADIUS
      L6_2 = L6_2 - L7_2
      L6_2 = L6_2 * L3_2
      L5_2 = L5_2 + L6_2
      L6_2 = UiOffsets
      L7_2 = -L5_2
      L8_2 = -L5_2
      L9_2 = L5_2
      L10_2 = L5_2
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
      L7_2 = UiTransform2dBus
      L7_2 = L7_2.Event
      L7_2 = L7_2.SetOffsets
      L8_2 = A0_2.Properties
      L8_2 = L8_2.Pulse
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
      L7_2 = UiImageBus
      L7_2 = L7_2.Event
      L7_2 = L7_2.SetColor
      L8_2 = A0_2.Properties
      L8_2 = L8_2.Pulse
      L9_2 = L4_2
      L7_2(L8_2, L9_2)
    end
  end
  L3_2 = A0_2.isChangingZoomLevel
  if L3_2 then
    L3_2 = DynamicBus
    L3_2 = L3_2.FlyoutMenuRequestsBus
    L3_2 = L3_2.Broadcast
    L3_2 = L3_2.ExitHover
    L3_2 = L3_2()
    if not L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2.StopListeningForFlyoutEvents
      L3_2(L4_2)
      L3_2 = LyShineDataLayerBus
      L3_2 = L3_2.Broadcast
      L3_2 = L3_2.SetData
      L4_2 = "Hud.LocalPlayer.Flyout.IsVisible"
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
  end
end

L0_1.OnTick = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.isVisible
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.IsEnabled
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = A0_2.iconData
  L1_2 = L1_2.isActive
  if L1_2 then
    L1_2 = A0_2.tickBus
    if not L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.BusConnect
      L3_2 = DynamicBus
      L3_2 = L3_2.UITickBus
      L1_2 = L1_2(L2_2, L3_2)
      A0_2.tickBus = L1_2
    end
  end
end

L0_1.StartTick = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.tickBus
  if L1_2 then
    L1_2 = A0_2.isChangingZoomLevel
    if not L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.BusDisconnect
      L3_2 = A0_2.tickBus
      L1_2(L2_2, L3_2)
      A0_2.tickBus = nil
    end
  end
end

L0_1.StopTick = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.iconData
  L1_2 = L1_2.isActive
  if L1_2 then
    A0_2.pulseProgress = 0
    L1_2 = UiElementBus
    L1_2 = L1_2.Event
    L1_2 = L1_2.SetIsEnabled
    L2_2 = A0_2.Properties
    L2_2 = L2_2.Pulse
    L3_2 = true
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.StartTick
    L1_2(L2_2)
  end
end

L0_1.CreatePulse = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = UiElementBus
  L1_2 = L1_2.Event
  L1_2 = L1_2.SetIsEnabled
  L2_2 = A0_2.Properties
  L2_2 = L2_2.Pulse
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.StopTick
  L1_2(L2_2)
end

L0_1.ClearPulse = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2.isVisible = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.UpdateMapClusteringHiddenStatus
  L2_2(L3_2)
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.StartTick
    L2_2(L3_2)
  else
    L2_2 = A0_2.isListeningForFlyoutVisibilityChanges
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.StopListeningForFlyoutEvents
      L2_2(L3_2)
      L2_2 = LyShineDataLayerBus
      L2_2 = L2_2.Broadcast
      L2_2 = L2_2.SetData
      L3_2 = "Hud.LocalPlayer.Flyout.IsVisible"
      L4_2 = false
      L2_2(L3_2, L4_2)
    end
    L3_2 = A0_2
    L2_2 = A0_2.StopTick
    L2_2(L3_2)
  end
end

L0_1.SetVisible = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.wasActivatedByTabBar
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.ShouldHoverAffectFlyoutVisibility
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      goto lbl_27
    end
  end
  L2_2 = A0_2.wasActivatedByTabBar
  if not L2_2 then
    L2_2 = A0_2.skipMapClusteringUpdate
    if not L2_2 then
      L2_2 = DynamicBus
      L2_2 = L2_2.MagicMap
      L2_2 = L2_2.Broadcast
      L2_2 = L2_2.UpdateMapClustering
      L3_2 = A0_2.entityId
      L2_2(L3_2)
  end
  else
    A0_2.skipMapClusteringUpdate = false
  end
  L2_2 = _UPVALUE0_
  L3_2 = L2_2
  L2_2 = L2_2.OnHoverDetected
  L4_2 = A0_2
  L5_2 = A0_2.ShowFlyoutMenu
  L2_2(L3_2, L4_2, L5_2)
  ::lbl_27::
  L2_2 = A0_2.wasActivatedByTabBar
  if not L2_2 then
    L2_2 = A0_2.audioHelper
    L3_2 = L2_2
    L2_2 = L2_2.PlaySound
    L4_2 = A0_2.audioHelper
    L4_2 = L4_2.MapIconOnHover
    L2_2(L3_2, L4_2)
  end
end

L0_1.OnHoverStart = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = _UPVALUE0_
  L3_2 = L2_2
  L2_2 = L2_2.StopHoverDetected
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  A0_2.wasActivatedByTabBar = false
end

L0_1.OnHoverEnd = L9_1

function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.flyoutClickBehaviorEnabled
  if not L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = A0_2.flyoutOnPressForGamepad
  if not L1_2 then
    L1_2 = LyShineManagerBus
    L1_2 = L1_2.Broadcast
    L1_2 = L1_2.GetLastActionInputDevice
    L1_2 = L1_2()
    L2_2 = eAID_AzPad
  end
  L1_2 = L1_2 == L2_2
  return L1_2
end

L0_1.ShouldHoverAffectFlyoutVisibility = L9_1

function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.flyoutClickBehaviorEnabled
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2.flyoutOnPressForGamepad
  if L1_2 then
    L1_2 = LyShineManagerBus
    L1_2 = L1_2.Broadcast
    L1_2 = L1_2.GetLastActionInputDevice
    L1_2 = L1_2()
    L2_2 = eAID_AzPad
  end
  L1_2 = L1_2 == L2_2
  return L1_2
end

L0_1.ShouldPressAffectFlyoutVisibility = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = DynamicBus
  L1_2 = L1_2.FlyoutMenuRequestsBus
  L1_2 = L1_2.Broadcast
  L1_2 = L1_2.GetOpeningContext
  L1_2 = L1_2()
  L2_2 = A0_2.FLYOUT_CONTEXT
  if L1_2 == L2_2 then
    L1_2 = DynamicBus
    L1_2 = L1_2.FlyoutMenuRequestsBus
    L1_2 = L1_2.Broadcast
    L1_2 = L1_2.ExitHover
    L1_2 = L1_2()
    if L1_2 then
      A0_2.wasActivatedByTabBar = false
      return
    end
  end
  L1_2 = ""
  L2_2 = ""
  L3_2 = ""
  L4_2 = nil
  L5_2 = nil
  L6_2 = A0_2.definitionData
  if L6_2 then
    L6_2 = A0_2.definitionData
    L6_2 = L6_2.tooltipBackground
    if L6_2 then
      L6_2 = A0_2.definitionData
      L3_2 = L6_2.tooltipBackground
    end
    L6_2 = A0_2.definitionData
    L6_2 = L6_2.nameLocalizationKey
    if L6_2 then
      L6_2 = A0_2.definitionData
      L6_2 = L6_2.nameLocalizationKey
      if L6_2 ~= "" then
        L6_2 = A0_2.definitionData
        L1_2 = L6_2.nameLocalizationKey
        L6_2 = L2_2
        L7_2 = A0_2.definitionData
        L7_2 = L7_2.nameLocalizationKey
        L8_2 = "_description \n"
        L2_2 = L6_2 .. L7_2 .. L8_2
      end
    end
    L6_2 = _UPVALUE0_
    L7_2 = L6_2
    L6_2 = L6_2.GetLevel
    L8_2 = A0_2.iconData
    L8_2 = L8_2.spawnerTag
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = A0_2.definitionData
    L7_2 = L7_2.recommendedLevel
    if L7_2 then
      L7_2 = A0_2.definitionData
      L7_2 = L7_2.recommendedLevel
      if 0 < L7_2 then
        L7_2 = A0_2.definitionData
        L6_2 = L7_2.recommendedLevel
      end
    end
    if L6_2 ~= 0 then
      L4_2 = L6_2
    end
    L7_2 = A0_2.definitionData
    L7_2 = L7_2.groupSize
    if L7_2 ~= 0 then
      L7_2 = _UPVALUE0_
      L8_2 = L7_2
      L7_2 = L7_2.GetGroupRange
      L9_2 = A0_2.definitionData
      L7_2 = L7_2(L8_2, L9_2)
      L5_2 = L7_2
    end
    L7_2 = ItemDescriptor
    L7_2 = L7_2()
    L8_2 = A0_2.definitionData
    L8_2 = L8_2.requiredItemId
    if L8_2 == 760197844 then
      L8_2 = _UPVALUE0_
      L9_2 = L8_2
      L8_2 = L8_2.GetRequiredItem
      L10_2 = A0_2.iconData
      L10_2 = L10_2.spawnerTag
      L8_2 = L8_2(L9_2, L10_2)
      L7_2.itemId = L8_2
    else
      L8_2 = A0_2.definitionData
      L8_2 = L8_2.requiredItemId
      L7_2.itemId = L8_2
    end
    L8_2 = _UPVALUE1_
    L9_2 = L8_2
    L8_2 = L8_2.GetItem
    L10_2 = L7_2.itemId
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      L9_2 = L8_2.tier
      L10_2 = L2_2
      L11_2 = "\n"
      L12_2 = GetLocalizedReplacementText
      L13_2 = "@objective_requiresitem"
      L14_2 = {}
      L16_2 = L7_2
      L15_2 = L7_2.GetDisplayName
      L15_2 = L15_2(L16_2)
      L14_2.itemName = L15_2
      L14_2.tier = L9_2
      L12_2 = L12_2(L13_2, L14_2)
      L2_2 = L10_2 .. L11_2 .. L12_2
    end
    L9_2 = A0_2.definitionData
    L10_2 = L9_2
    L9_2 = L9_2.HasPoiTag
    L11_2 = 33457530
    L9_2 = L9_2(L10_2, L11_2)
    if not L9_2 then
      L9_2 = A0_2.definitionData
      L10_2 = L9_2
      L9_2 = L9_2.HasPoiTag
      L11_2 = 3420744176
      L9_2 = L9_2(L10_2, L11_2)
      if not L9_2 then
        goto lbl_132
      end
    end
    L9_2 = 1671454800
    L10_2 = _UPVALUE2_
    L11_2 = L10_2
    L10_2 = L10_2.GetLocalizedServerTime
    L12_2 = L9_2
    L13_2 = true
    L14_2 = false
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
    L11_2 = GetLocalizedReplacementText
    L12_2 = L2_2
    L13_2 = {}
    L13_2.time = L10_2
    L11_2 = L11_2(L12_2, L13_2)
    L2_2 = L11_2
  end
  ::lbl_132::
  L6_2 = {}
  L7_2 = table
  L7_2 = L7_2.insert
  L8_2 = L6_2
  L9_2 = {}
  L10_2 = FlyoutMenuGlobals
  L10_2 = L10_2.ROW_TYPE_PointOfInterest
  L9_2.type = L10_2
  L9_2.header = L1_2
  L9_2.subtext = L2_2
  L9_2.recommendedLevel = L4_2
  L9_2.minimumPlayers = L5_2
  L9_2.tooltipBackground = L3_2
  L7_2(L8_2, L9_2)
  L7_2 = LyShineDataLayerBus
  L7_2 = L7_2.Broadcast
  L7_2 = L7_2.SetData
  L8_2 = "Hud.LocalPlayer.Flyout.IsVisible"
  L9_2 = false
  L7_2(L8_2, L9_2)
  L7_2 = DynamicBus
  L7_2 = L7_2.FlyoutMenuRequestsBus
  L7_2 = L7_2.Broadcast
  L7_2 = L7_2.SetSoundOnShow
  L8_2 = A0_2.audioHelper
  L8_2 = L8_2.MapFlyout_OnShow
  L7_2(L8_2)
  L7_2 = DynamicBus
  L7_2 = L7_2.FlyoutMenuRequestsBus
  L7_2 = L7_2.Broadcast
  L7_2 = L7_2.SetSoundOnHide
  L8_2 = A0_2.audioHelper
  L8_2 = L8_2.MapFlyout_OnHide
  L7_2(L8_2)
  L7_2 = DynamicBus
  L7_2 = L7_2.FlyoutMenuRequestsBus
  L7_2 = L7_2.Broadcast
  L7_2 = L7_2.SetOpenLocation
  L8_2 = A0_2.entityId
  L7_2(L8_2)
  L7_2 = A0_2.wasActivatedByTabBar
  L7_2 = not L7_2
  L8_2 = DynamicBus
  L8_2 = L8_2.FlyoutMenuRequestsBus
  L8_2 = L8_2.Broadcast
  L8_2 = L8_2.EnableFlyoutDelay
  L9_2 = L7_2
  L10_2 = A0_2.flyoutDelay
  L8_2(L9_2, L10_2)
  L8_2 = DynamicBus
  L8_2 = L8_2.FlyoutMenuRequestsBus
  L8_2 = L8_2.Broadcast
  L8_2 = L8_2.SetFadeInTime
  L9_2 = 0.05
  L8_2(L9_2)
  L8_2 = DynamicBus
  L8_2 = L8_2.FlyoutMenuRequestsBus
  L8_2 = L8_2.Broadcast
  L8_2 = L8_2.SetFadeOutTime
  L9_2 = 0.05
  L8_2(L9_2)
  L8_2 = DynamicBus
  L8_2 = L8_2.FlyoutMenuRequestsBus
  L8_2 = L8_2.Broadcast
  L8_2 = L8_2.SetRowData
  L9_2 = L6_2
  L8_2(L9_2)
  L8_2 = DynamicBus
  L8_2 = L8_2.FlyoutMenuRequestsBus
  L8_2 = L8_2.Broadcast
  L8_2 = L8_2.SetSourceHoverOnly
  L9_2 = true
  L8_2(L9_2)
  L9_2 = A0_2
  L8_2 = A0_2.StartListeningForFlyoutEvents
  L8_2(L9_2)
  A0_2.wasActivatedByTabBar = false
end

L0_1.ShowFlyoutMenu = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.ShouldPressAffectFlyoutVisibility
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = DynamicBus
    L1_2 = L1_2.FlyoutMenuRequestsBus
    L1_2 = L1_2.Broadcast
    L1_2 = L1_2.GetInvokingEntityId
    L1_2 = L1_2()
    L2_2 = A0_2.entityId
    if L1_2 == L2_2 then
      L1_2 = LyShineDataLayerBus
      L1_2 = L1_2.Broadcast
      L1_2 = L1_2.SetData
      L2_2 = "Hud.LocalPlayer.Flyout.IsVisible"
      L3_2 = false
      L1_2(L2_2, L3_2)
    else
      L2_2 = A0_2
      L1_2 = A0_2.ShowFlyoutMenu
      L1_2(L2_2)
    end
  end
end

L0_1.OnPress = L9_1

function L9_1(A0_2)
  local L1_2
  L1_2 = DynamicBus
  L1_2 = L1_2.MagicMap
  L1_2 = L1_2.Broadcast
  L1_2 = L1_2.MapRightClick
  L1_2()
end

L0_1.OnRightClick = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = UiElementBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetIsEnabled
  L3_2 = A0_2.entityId
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.dataManager
  L2_2 = L2_2.markersLayer
  A0_2.markersLayer = L2_2
  L2_2 = TerritoryDefinitionsDataManagerBus
  L2_2 = L2_2.Broadcast
  L2_2 = L2_2.GetTerritoryDefinition
  L3_2 = A1_2.territoryId
  L2_2 = L2_2(L3_2)
  A0_2.definitionData = L2_2
  A0_2.iconData = A1_2
  L2_2 = Color
  L3_2 = 1
  L4_2 = 1
  L5_2 = 1
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.pulseColor = L2_2
  L2_2 = A0_2.definitionData
  if L2_2 then
    L2_2 = Color
    L2_2 = L2_2.IsZero
    L3_2 = A0_2.definitionData
    L3_2 = L3_2.pulseColor
    L4_2 = 0
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L2_2 = A0_2.definitionData
      L2_2 = L2_2.pulseColor
      A0_2.pulseColor = L2_2
    end
  end
  L2_2 = A1_2.isActive
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.CreatePulse
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.ClearPulse
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.UpdateIconPath
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.OnPositionChanged
  L4_2 = A1_2.position
  L2_2(L3_2, L4_2)
  L2_2 = _UPVALUE0_
  L2_2 = L2_2.iconDrawOrder
  L2_2 = L2_2.Undefined
  A0_2.renderPriority = L2_2
  L2_2 = UiElementBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetRenderPriority
  L3_2 = A0_2.entityId
  L4_2 = A0_2.renderPriority
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.AddIconToMapClusteringData
  L2_2(L3_2)
end

L0_1.SetGlobalMapIconData = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.ClearPulse
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.RemoveIconFromMapClusteringData
  L2_2(L3_2)
  L2_2 = UiElementBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetIsEnabled
  L3_2 = A0_2.entityId
  L4_2 = false
  L2_2(L3_2, L4_2)
  A0_2.iconData = nil
end

L0_1.ClearIconData = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.definitionData
  if L1_2 then
    L1_2 = _UPVALUE0_
    L2_2 = L1_2
    L1_2 = L1_2.GetRecommendedIcons
    L3_2 = A0_2.iconData
    L3_2 = L3_2.spawnerTag
    L4_2 = A0_2.definitionData
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    if L1_2 then
      L2_2 = A0_2.iconData
      L2_2.mapIconPath = L1_2
    end
  end
  L1_2 = A0_2.lastIconPath
  L2_2 = A0_2.iconData
  L2_2 = L2_2.mapIconPath
  if L1_2 ~= L2_2 then
    L1_2 = UiImageBus
    L1_2 = L1_2.Event
    L1_2 = L1_2.SetSpritePathname
    L2_2 = A0_2.entityId
    L3_2 = A0_2.iconData
    L3_2 = L3_2.mapIconPath
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2.iconData
  L1_2 = L1_2.mapIconPath
  A0_2.lastIconPath = L1_2
end

L0_1.UpdateIconPath = L9_1

function L9_1(A0_2)
  local L1_2
  L1_2 = A0_2.iconData
  L1_2 = L1_2 ~= nil
  return L1_2
end

L0_1.IsEnabled = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.iconData
  L2_2.position = A1_2
  L2_2 = A0_2.iconData
  L2_2.worldPosition = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.AddIconToMapClusteringData
  L2_2(L3_2)
  L2_2 = A0_2.markersLayer
  L3_2 = L2_2
  L2_2 = L2_2.WorldPositionToAnchors
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = UiTransform2dBus
  L3_2 = L3_2.Event
  L3_2 = L3_2.SetAnchorsScript
  L4_2 = A0_2.entityId
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end

L0_1.OnPositionChanged = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 then
    L2_2 = A0_2.currentZoom
    if A1_2 ~= L2_2 then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  A0_2.currentZoom = A1_2
  L2_2 = A0_2.iconData
  L2_2 = L2_2.scaleModifier
  if not L2_2 then
    L2_2 = 1
  end
  L3_2 = A0_2.scaleAtZoom
  L4_2 = A0_2.currentZoom
  L3_2 = L3_2[L4_2]
  if not L3_2 then
    L3_2 = A0_2.scaleAtZoom
    L3_2 = L3_2.default
  end
  A0_2.scale = L3_2
  L3_2 = A0_2.scale
  L3_2 = L3_2 * L2_2
  A0_2.scale = L3_2
  L3_2 = UiTransformBus
  L3_2 = L3_2.Event
  L3_2 = L3_2.SetScale
  L4_2 = A0_2.entityId
  L5_2 = Vector2
  L6_2 = A0_2.scale
  L7_2 = A0_2.scale
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
end

L0_1.OnZoomLevelChanged = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = _UPVALUE0_
  L3_2 = L2_2
  L2_2 = L2_2.MapClusteringEligibilityPreCheck
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L2_2 = not A1_2
  A0_2.wasActivatedByTabBar = L2_2
  A0_2.skipMapClusteringUpdate = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.OnHoverStart
  L2_2(L3_2)
  L2_2 = DynamicBus
  L2_2 = L2_2.FlyoutMenuRequestsBus
  L2_2 = L2_2.Broadcast
  L2_2 = L2_2.SetOpeningContext
  L3_2 = "MapClustering"
  L2_2(L3_2)
end

L0_1.ShowFlyoutForMapClustering = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = _UPVALUE0_
  L2_2 = L1_2
  L1_2 = L1_2.MapClusteringEligibilityPreCheck
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    return
  end
  A0_2.wasActivatedByTabBar = true
  L2_2 = A0_2
  L1_2 = A0_2.OnHoverEnd
  L1_2(L2_2)
end

L0_1.HideFlyoutForMapClustering = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = _UPVALUE0_
  L2_2 = L1_2
  L1_2 = L1_2.MapClusteringEligibilityPreCheck
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    return
  end
  L1_2 = _UPVALUE0_
  L2_2 = L1_2
  L1_2 = L1_2.CheckIconClusteringEligibility
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.RemoveIconFromMapClusteringData
    L2_2(L3_2)
    return
  end
  L2_2 = A0_2.iconData
  L2_2 = L2_2.clusterIcon
  if not L2_2 then
    L2_2 = A0_2.iconData
    L2_2 = L2_2.mapIconPath
  end
  L3_2 = UiImageBus
  L3_2 = L3_2.Event
  L3_2 = L3_2.GetColor
  L4_2 = A0_2.entityId
  L3_2 = L3_2(L4_2)
  if L1_2 then
    L4_2 = DynamicBus
    L4_2 = L4_2.MagicMap
    L4_2 = L4_2.Broadcast
    L4_2 = L4_2.RegisterIconWithMapClustering
    L5_2 = A0_2.entityId
    L6_2 = L2_2
    L7_2 = A0_2.iconData
    L7_2 = L7_2.worldPosition
    L8_2 = A0_2.isHiddenFromMapClustering
    L9_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    if not L4_2 then
      L4_2 = A0_2.deferredAddTimer
      if L4_2 then
        L4_2 = _UPVALUE1_
        L5_2 = L4_2
        L4_2 = L4_2.StopDelay
        L6_2 = A0_2.deferredAddTimer
        L4_2(L5_2, L6_2)
      end
      L4_2 = _UPVALUE1_
      L5_2 = L4_2
      L4_2 = L4_2.Delay
      L6_2 = 3
      L7_2 = A0_2
      L8_2 = A0_2.AddIconToMapClusteringData
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
      A0_2.deferredAddTimer = L4_2
  end
  elseif L1_2 then
    L4_2 = A0_2.mapClusteringHandler
    if not L4_2 then
      L4_2 = DynamicBus
      L4_2 = L4_2.MapClustering
      L4_2 = L4_2.Connect
      L5_2 = A0_2.entityId
      L6_2 = A0_2
      L4_2 = L4_2(L5_2, L6_2)
      A0_2.mapClusteringHandler = L4_2
    end
  end
end

L0_1.AddIconToMapClusteringData = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = _UPVALUE0_
  L2_2 = L1_2
  L1_2 = L1_2.MapClusteringEligibilityPreCheck
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2.deferredAddTimer
  if L1_2 then
    L1_2 = _UPVALUE1_
    L2_2 = L1_2
    L1_2 = L1_2.StopDelay
    L3_2 = A0_2.deferredAddTimer
    L1_2(L2_2, L3_2)
    A0_2.deferredAddTimer = nil
  end
  L1_2 = DynamicBus
  L1_2 = L1_2.MagicMap
  L1_2 = L1_2.Broadcast
  L1_2 = L1_2.UnregisterIconWithMapClustering
  L2_2 = A0_2.entityId
  L1_2(L2_2)
  L1_2 = A0_2.mapClusteringHandler
  if L1_2 then
    L1_2 = DynamicBus
    L1_2 = L1_2.MapClustering
    L1_2 = L1_2.Disconnect
    L2_2 = A0_2.entityId
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
    A0_2.mapClusteringHandler = nil
  end
end

L0_1.RemoveIconFromMapClusteringData = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = _UPVALUE0_
  L3_2 = L2_2
  L2_2 = L2_2.MapClusteringEligibilityPreCheck
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.UpdateMapClusteringHiddenStatus
  L2_2(L3_2)
end

L0_1.OnUiElementEnabledChanged = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = _UPVALUE0_
  L2_2 = L1_2
  L1_2 = L1_2.MapClusteringEligibilityPreCheck
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    return
  end
  L1_2 = UiElementBus
  L1_2 = L1_2.Event
  L1_2 = L1_2.IsEnabled
  L2_2 = A0_2.entityId
  L1_2 = L1_2(L2_2)
  L1_2 = A0_2.isVisible
  L1_2 = A0_2.isVisible
  L1_2 = not L1_2 or L1_2
  A0_2.isHiddenFromMapClustering = L1_2
  L1_2 = DynamicBus
  L1_2 = L1_2.MagicMap
  L1_2 = L1_2.Broadcast
  L1_2 = L1_2.SetIconHiddenFromMapClustering
  L2_2 = A0_2.entityId
  L3_2 = A0_2.isHiddenFromMapClustering
  L1_2(L2_2, L3_2)
end

L0_1.UpdateMapClusteringHiddenStatus = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.mapBus
  if not L1_2 then
    L1_2 = DynamicBus
    L1_2 = L1_2.Map
    L1_2 = L1_2.Connect
    L2_2 = A0_2.entityId
    L3_2 = A0_2
    L1_2 = L1_2(L2_2, L3_2)
    A0_2.mapBus = L1_2
  end
  L1_2 = A0_2.isListeningForFlyoutVisibilityChanges
  if not L1_2 then
    L1_2 = A0_2.dataLayer
    L2_2 = L1_2
    L1_2 = L1_2.RegisterDataCallback
    L3_2 = A0_2
    L4_2 = "Hud.LocalPlayer.Flyout.IsVisible"
    L5_2 = A0_2.OnFlyoutVisibilityChanged
    L1_2(L2_2, L3_2, L4_2, L5_2)
    A0_2.isListeningForFlyoutVisibilityChanges = true
  end
end

L0_1.StartListeningForFlyoutEvents = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.isListeningForFlyoutVisibilityChanges
  if L1_2 then
    L1_2 = A0_2.dataLayer
    L2_2 = L1_2
    L1_2 = L1_2.UnregisterObserver
    L3_2 = A0_2
    L4_2 = "Hud.LocalPlayer.Flyout.IsVisible"
    L1_2(L2_2, L3_2, L4_2)
    A0_2.isListeningForFlyoutVisibilityChanges = false
  end
  L1_2 = A0_2.mapBus
  if L1_2 then
    L1_2 = DynamicBus
    L1_2 = L1_2.Map
    L1_2 = L1_2.Disconnect
    L2_2 = A0_2.entityId
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
    A0_2.mapBus = nil
    A0_2.isChangingZoomLevel = nil
  end
  L1_2 = A0_2.tickBus
  if L1_2 then
    L1_2 = A0_2.iconData
    if L1_2 then
      L1_2 = A0_2.iconData
      L1_2 = L1_2.isActive
      if L1_2 then
        goto lbl_35
      end
    end
    L2_2 = A0_2
    L1_2 = A0_2.BusDisconnect
    L3_2 = A0_2.tickBus
    L1_2(L2_2, L3_2)
    A0_2.tickBus = nil
  end
  ::lbl_35::
end

L0_1.StopListeningForFlyoutEvents = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 ~= nil and A1_2 == false then
    L3_2 = A0_2
    L2_2 = A0_2.StopListeningForFlyoutEvents
    L2_2(L3_2)
  end
end

L0_1.OnFlyoutVisibilityChanged = L9_1

function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2.isChangingZoomLevel = true
  L3_2 = A0_2.tickBus
  if not L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.BusConnect
    L5_2 = DynamicBus
    L5_2 = L5_2.UITickBus
    L3_2 = L3_2(L4_2, L5_2)
    A0_2.tickBus = L3_2
  end
end

L0_1.OnZoomStart = L9_1

function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2.isChangingZoomLevel = nil
  L3_2 = A0_2.tickBus
  if L3_2 then
    L3_2 = A0_2.iconData
    if L3_2 then
      L3_2 = A0_2.iconData
      L3_2 = L3_2.isActive
      if L3_2 then
        goto lbl_16
      end
    end
    L4_2 = A0_2
    L3_2 = A0_2.BusDisconnect
    L5_2 = A0_2.tickBus
    L3_2(L4_2, L5_2)
    A0_2.tickBus = nil
  end
  ::lbl_16::
  L3_2 = DynamicBus
  L3_2 = L3_2.FlyoutMenuRequestsBus
  L3_2 = L3_2.Broadcast
  L3_2 = L3_2.ExitHover
  L3_2 = L3_2()
  if not L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.StopListeningForFlyoutEvents
    L3_2(L4_2)
    L3_2 = LyShineDataLayerBus
    L3_2 = L3_2.Broadcast
    L3_2 = L3_2.SetData
    L4_2 = "Hud.LocalPlayer.Flyout.IsVisible"
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2.isListeningForFlyoutVisibilityChanges
  if L3_2 then
    L3_2 = DynamicBus
    L3_2 = L3_2.FlyoutMenuRequestsBus
    L3_2 = L3_2.Broadcast
    L3_2 = L3_2.SetOpenLocation
    L4_2 = A0_2.entityId
    L3_2(L4_2)
    L3_2 = DynamicBus
    L3_2 = L3_2.FlyoutMenuRequestsBus
    L3_2 = L3_2.Broadcast
    L3_2 = L3_2.PositionMenu
    L3_2()
  end
  L4_2 = A0_2
  L3_2 = A0_2.OnZoomLevelChanged
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end

L0_1.OnZoomEnd = L9_1
return L0_1
