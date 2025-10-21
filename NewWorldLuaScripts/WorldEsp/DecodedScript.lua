local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.WorldName = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.CharacterName = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.OnlineFriendCount = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.OnlineFriendIcon = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.QueueTime = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.QueueSize = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.Population = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.ButtonScrim = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.ListItemBg = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.TooltipSetter = L2_1
L0_1.Properties = L1_1
L0_1.POPULATION_LOW = 0
L0_1.POPULATION_MED = 1
L0_1.POPULATION_HIGH = 2
L0_1.worldInfo = nil
L0_1.isSelectable = false
L1_1 = RequireScript
L2_1 = "LyShineUI._Common.BaseElement"
L1_1 = L1_1(L2_1)
L3_1 = L1_1
L2_1 = L1_1.CreateNewElement
L4_1 = L0_1
L2_1(L3_1, L4_1)
L2_1 = RequireScript
L3_1 = "LyShineUI._Common.BitwiseHelpers"
L2_1 = L2_1(L3_1)
L3_1 = RequireScript
L4_1 = "LyShineUI._Common.TimeHelperFunctions"
L3_1 = L3_1(L4_1)
L4_1 = RequireScript
L5_1 = "LyShineUI._Common.WorldListCommon"
L4_1 = L4_1(L5_1)

function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = _UPVALUE0_
  L1_2 = L1_2.OnInit
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.OnInit = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2.worldInfo = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.UpdateWorldName
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.SetIsSelectable
  L4_2 = A1_2.isSelectable
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.UpdateStatusVisuals
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.GetPopulationTextAndColor
  L4_2 = A1_2.population
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  L4_2 = UiTextBus
  L4_2 = L4_2.Event
  L4_2 = L4_2.SetTextWithFlags
  L5_2 = A0_2.Properties
  L5_2 = L5_2.Population
  L6_2 = L2_2
  L7_2 = eUiTextSet_SetLocalized
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2.ScriptedEntityTweener
  L5_2 = L4_2
  L4_2 = L4_2.Set
  L6_2 = A0_2.Properties
  L6_2 = L6_2.Population
  L7_2 = {}
  L7_2.textColor = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2.UpdateQueueTime
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.UpdateQueueSize
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.UpdateCharacterName
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.UpdateOnlineFriendCount
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
end

L0_1.SetWorldInfo = L5_1

function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2.worldInfo
  if L1_2 then
    L1_2 = A0_2.worldInfo
    L1_2 = L1_2.worldData
    L1_2 = L1_2.worldId
    return L1_2
  else
    L1_2 = nil
    return L1_2
  end
end

L0_1.GetWorldId = L5_1

function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2.worldInfo
  if not L1_2 then
    L1_2 = nil
  end
  return L1_2
end

L0_1.GetWorldInfo = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2.Properties
  L2_2 = L2_2.QueueTime
  L3_2 = L2_2
  L2_2 = L2_2.IsValid
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = A0_2.dataLayer
  L3_2 = L2_2
  L2_2 = L2_2.RegisterAndExecuteDataObserver
  L4_2 = A0_2
  L5_2 = "UIFeatures.showQueueTimes"
  
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = UiElementBus
    L2_3 = L2_3.Event
    L2_3 = L2_3.SetIsEnabled
    L3_3 = A0_3.Properties
    L3_3 = L3_3.QueueTime
    L4_3 = A1_3
    L2_3(L3_3, L4_3)
  end
  
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A1_2.worldData
  L2_2 = L2_2.worldMetrics
  L2_2 = L2_2.queueWaitTimeSec
  L3_2 = L2_2 <= 0
  L4_2 = nil
  if 60 <= L2_2 then
    L5_2 = _UPVALUE0_
    L6_2 = L5_2
    L5_2 = L5_2.ConvertToShorthandString
    L7_2 = L2_2
    L8_2 = false
    L9_2 = true
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L4_2 = L5_2
  elseif 0 < L2_2 then
    L4_2 = "@ui_queue_soon_short"
  elseif L3_2 then
    L4_2 = "@ui_unknown"
  end
  L5_2 = UiTextBus
  L5_2 = L5_2.Event
  L5_2 = L5_2.SetTextWithFlags
  L6_2 = A0_2.Properties
  L6_2 = L6_2.QueueTime
  L7_2 = L4_2 or L7_2
  if not L4_2 then
    L7_2 = "-"
  end
  L8_2 = eUiTextSet_SetLocalized
  L5_2(L6_2, L7_2, L8_2)
end

L0_1.UpdateQueueTime = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.Properties
  L2_2 = L2_2.QueueSize
  L3_2 = L2_2
  L2_2 = L2_2.IsValid
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = A1_2.worldData
  L2_2 = L2_2.worldMetrics
  L2_2 = L2_2.queueSize
  L3_2 = UiTextBus
  L3_2 = L3_2.Event
  L3_2 = L3_2.SetTextWithFlags
  L4_2 = A0_2.Properties
  L4_2 = L4_2.QueueSize
  L5_2 = L2_2 or L5_2
  if not (0 < L2_2) or not L2_2 then
    L5_2 = 0
  end
  L6_2 = eUiTextSet_SetLocalized
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.UpdateQueueSize = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.Properties
  L2_2 = L2_2.CharacterName
  L3_2 = L2_2
  L2_2 = L2_2.IsValid
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = UiTextBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetTextWithFlags
  L3_2 = A0_2.Properties
  L3_2 = L3_2.CharacterName
  L4_2 = A1_2.characterName
  if not L4_2 then
    L4_2 = "-"
  end
  L5_2 = eUiTextSet_SetLocalized
  L2_2(L3_2, L4_2, L5_2)
end

L0_1.UpdateCharacterName = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.Properties
  L2_2 = L2_2.OnlineFriendCount
  L3_2 = L2_2
  L2_2 = L2_2.IsValid
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = _UPVALUE0_
  L3_2 = L2_2
  L2_2 = L2_2.ShouldHideOnlineFriendCount
  L2_2 = L2_2(L3_2)
  L2_2 = not L2_2
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L3_2 = A1_2.numFriends
    if L3_2 then
      L3_2 = A1_2.numFriends
      L3_2 = 0 < L3_2
    end
  end
  L4_2 = UiElementBus
  L4_2 = L4_2.Event
  L4_2 = L4_2.SetIsEnabled
  L5_2 = A0_2.Properties
  L5_2 = L5_2.OnlineFriendCount
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = UiElementBus
  L4_2 = L4_2.Event
  L4_2 = L4_2.SetIsEnabled
  L5_2 = A0_2.Properties
  L5_2 = L5_2.OnlineFriendIcon
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = UiTextBus
  L4_2 = L4_2.Event
  L4_2 = L4_2.SetTextWithFlags
  L5_2 = A0_2.Properties
  L5_2 = L5_2.OnlineFriendCount
  L6_2 = A1_2.numFriends
  if not L6_2 then
    L6_2 = "-"
  end
  L7_2 = eUiTextSet_SetLocalized
  L4_2(L5_2, L6_2, L7_2)
end

L0_1.UpdateOnlineFriendCount = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.POPULATION_MED
  if A1_2 == L2_2 then
    L2_2 = "@ui_population_med"
    L3_2 = A0_2.UIStyle
    L3_2 = L3_2.COLOR_POPULATION_MEDIUM
    return L2_2, L3_2
  else
    L2_2 = A0_2.POPULATION_HIGH
    if A1_2 == L2_2 then
      L2_2 = "@ui_population_high"
      L3_2 = A0_2.UIStyle
      L3_2 = L3_2.COLOR_POPULATION_HIGH
      return L2_2, L3_2
    end
  end
  L2_2 = "@ui_population_low"
  L3_2 = A0_2.UIStyle
  L3_2 = L3_2.COLOR_POPULATION_LOW
  return L2_2, L3_2
end

L0_1.GetPopulationTextAndColor = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2.regions = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.UpdateWorldName
  L2_2(L3_2)
end

L0_1.SetRegionList = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if not A1_2 then
    L2_2 = ""
    return L2_2
  end
  L2_2 = A0_2.regions
  if L2_2 ~= nil then
    L2_2 = 1
    L3_2 = A0_2.regions
    L3_2 = #L3_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A0_2.regions
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.awsRegion
      if L6_2 == A1_2 then
        L6_2 = A0_2.regions
        L6_2 = L6_2[L5_2]
        L6_2 = L6_2.name
        return L6_2
      end
    end
  end
  L2_2 = ""
  return L2_2
end

L0_1.GetAwsRegionNameTag = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.worldInfo
  L1_2 = L1_2.worldData
  L1_2 = L1_2.transferToRegion
  L3_2 = A0_2
  L2_2 = A0_2.GetAwsRegionNameTag
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = GetLocalizedReplacementText
  L4_2 = "@mm_transferworldname"
  L5_2 = {}
  L6_2 = L2_2 or L6_2
  if L2_2 == "" or not L2_2 then
    L6_2 = L1_2
  end
  L5_2.regionName = L6_2
  return L3_2(L4_2, L5_2)
end

L0_1.CreateRegionTransferWorldName = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.worldInfo
  if L1_2 == nil then
    L1_2 = ""
    return L1_2
  end
  L1_2 = _UPVALUE0_
  L2_2 = L1_2
  L1_2 = L1_2.IsTransferWorld
  L3_2 = A0_2.worldInfo
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.CreateRegionTransferWorldName
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_21
    end
  end
  L1_2 = _UPVALUE0_
  L2_2 = L1_2
  L1_2 = L1_2.GetWorldNameFromWorldData
  L3_2 = A0_2.worldInfo
  L3_2 = L3_2.worldData
  L1_2 = L1_2(L2_2, L3_2)
  ::lbl_21::
  L2_2 = A0_2.worldInfo
  L2_2 = L2_2.worldData
  L2_2 = L2_2.status
  if L2_2 == "ACTIVE" then
    L2_2 = _UPVALUE1_
    L3_2 = L2_2
    L2_2 = L2_2.TestFlag
    L4_2 = A0_2.worldInfo
    L4_2 = L4_2.worldData
    L4_2 = L4_2.publicStatusCode
    L5_2 = _UPVALUE1_
    L5_2 = L5_2.SERVERSTATUS_DISABLED
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    if not L2_2 then
      goto lbl_45
    end
  end
  L2_2 = LyShineScriptBindRequestBus
  L2_2 = L2_2.Broadcast
  L2_2 = L2_2.LocalizeText
  L3_2 = L1_2
  L4_2 = " (@mm_serverdisabled)"
  L3_2 = L3_2 .. L4_2
  do return L2_2(L3_2) end
  goto lbl_59
  ::lbl_45::
  L2_2 = _UPVALUE0_
  L3_2 = L2_2
  L2_2 = L2_2.IsWorldInMaintenanceMode
  L4_2 = A0_2.worldInfo
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = LyShineScriptBindRequestBus
    L2_2 = L2_2.Broadcast
    L2_2 = L2_2.LocalizeText
    L3_2 = L1_2
    L4_2 = " (@mm_serverdown)"
    L3_2 = L3_2 .. L4_2
    return L2_2(L3_2)
  end
  ::lbl_59::
  L2_2 = LyShineScriptBindRequestBus
  L2_2 = L2_2.Broadcast
  L2_2 = L2_2.LocalizeText
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = _UPVALUE0_
  L3_2 = L3_2.GetWorldIconTextTag
  L4_2 = A0_2.worldInfo
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 .. L3_2
  return L2_2
end

L0_1.GetWorldName = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = UiTextBus
  L1_2 = L1_2.Event
  L1_2 = L1_2.SetTextWithFlags
  L2_2 = A0_2.Properties
  L2_2 = L2_2.WorldName
  L4_2 = A0_2
  L3_2 = A0_2.GetWorldName
  L3_2 = L3_2(L4_2)
  L4_2 = eUiTextSet_SetLocalized
  L1_2(L2_2, L3_2, L4_2)
end

L0_1.UpdateWorldName = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2
  L2_2 = A0_2.SetTooltip
  L4_2 = A1_2.notSelectableReason
  L2_2(L3_2, L4_2)
  L2_2 = _UPVALUE0_
  L3_2 = L2_2
  L2_2 = L2_2.IsTransferWorld
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = UiElementBus
  L3_2 = L3_2.Event
  L3_2 = L3_2.SetIsEnabled
  L4_2 = A0_2.Properties
  L4_2 = L4_2.CharacterName
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = UiElementBus
  L3_2 = L3_2.Event
  L3_2 = L3_2.SetIsEnabled
  L4_2 = A0_2.Properties
  L4_2 = L4_2.OnlineFriendCount
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = UiElementBus
  L3_2 = L3_2.Event
  L3_2 = L3_2.SetIsEnabled
  L4_2 = A0_2.Properties
  L4_2 = L4_2.QueueTime
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = UiElementBus
  L3_2 = L3_2.Event
  L3_2 = L3_2.SetIsEnabled
  L4_2 = A0_2.Properties
  L4_2 = L4_2.QueueSize
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = UiElementBus
  L3_2 = L3_2.Event
  L3_2 = L3_2.SetIsEnabled
  L4_2 = A0_2.Properties
  L4_2 = L4_2.Population
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A1_2.isSelectable
  if L3_2 then
    L3_2 = 0
    if L3_2 then
      goto lbl_50
    end
  end
  L3_2 = 0.5
  ::lbl_50::
  L4_2 = A0_2.ScriptedEntityTweener
  L5_2 = L4_2
  L4_2 = L4_2.Set
  L6_2 = A0_2.Properties
  L6_2 = L6_2.ButtonScrim
  L7_2 = {}
  L7_2.opacity = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2.UIStyle
  L4_2 = L4_2.FONT_FAMILY_NIMBUS_MEDIUM
  L5_2 = A0_2.UIStyle
  L5_2 = L5_2.COLOR_WHITE
  L6_2 = A0_2.UIStyle
  L6_2 = L6_2.COLOR_WHITE
  L7_2 = A1_2.warning
  L8_2 = _UPVALUE0_
  L8_2 = L8_2.WorldWarningLevel
  L8_2 = L8_2.NoWarning
  if L7_2 ~= L8_2 then
    L7_2 = A0_2.UIStyle
    L4_2 = L7_2.FONT_FAMILY_NIMBUS_REGULAR
    L7_2 = A1_2.warning
    L8_2 = _UPVALUE0_
    L8_2 = L8_2.WorldWarningLevel
    L8_2 = L8_2.TemporarilyUnavailable
    if L7_2 == L8_2 then
      L7_2 = A0_2.UIStyle
      L5_2 = L7_2.COLOR_YELLOW
      L7_2 = A0_2.UIStyle
      L6_2 = L7_2.COLOR_YELLOW
    else
      L7_2 = A1_2.warning
      L8_2 = _UPVALUE0_
      L8_2 = L8_2.WorldWarningLevel
      L8_2 = L8_2.Unavailable
      if L7_2 == L8_2 then
        L7_2 = A0_2.UIStyle
        L5_2 = L7_2.COLOR_GRAY_70
        L7_2 = A0_2.UIStyle
        L6_2 = L7_2.COLOR_GRAY_70
      end
    end
  end
  L7_2 = UiTextBus
  L7_2 = L7_2.Event
  L7_2 = L7_2.SetColor
  L8_2 = A0_2.Properties
  L8_2 = L8_2.WorldName
  L9_2 = L5_2
  L7_2(L8_2, L9_2)
  L7_2 = UiTextBus
  L7_2 = L7_2.Event
  L7_2 = L7_2.SetColor
  L8_2 = A0_2.Properties
  L8_2 = L8_2.CharacterName
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = UiTextBus
  L7_2 = L7_2.Event
  L7_2 = L7_2.SetFont
  L8_2 = A0_2.Properties
  L8_2 = L8_2.WorldName
  L9_2 = L4_2
  L7_2(L8_2, L9_2)
  L7_2 = UiTextBus
  L7_2 = L7_2.Event
  L7_2 = L7_2.SetFont
  L8_2 = A0_2.Properties
  L8_2 = L8_2.CharacterName
  L9_2 = L4_2
  L7_2(L8_2, L9_2)
end

L0_1.UpdateStatusVisuals = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil or A1_2 == "" then
    A0_2.isUsingTooltip = false
    L2_2 = UiElementBus
    L2_2 = L2_2.Event
    L2_2 = L2_2.SetIsEnabled
    L3_2 = A0_2.Properties
    L3_2 = L3_2.TooltipSetter
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    A0_2.isUsingTooltip = true
    L2_2 = A0_2.TooltipSetter
    L3_2 = L2_2
    L2_2 = L2_2.SetSimpleTooltip
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L2_2 = UiElementBus
    L2_2 = L2_2.Event
    L2_2 = L2_2.SetIsEnabled
    L3_2 = A0_2.Properties
    L3_2 = L3_2.TooltipSetter
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end

L0_1.SetTooltip = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.isUsingTooltip
  if L1_2 then
    L1_2 = A0_2.TooltipSetter
    L2_2 = L1_2
    L1_2 = L1_2.OnTooltipSetterHoverStart
    L1_2(L2_2)
  end
  L1_2 = A0_2.ListItemBg
  L2_2 = L1_2
  L1_2 = L1_2.OnFocus
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.audioHelper
  L2_2 = L1_2
  L1_2 = L1_2.PlaySound
  L3_2 = A0_2.audioHelper
  L3_2 = L3_2.FrontEnd_OnServerSelectHover
  L1_2(L2_2, L3_2)
end

L0_1.OnFocus = L5_1

function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.isSelectable
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.OnUnfocus
    L1_2(L2_2)
  end
end

L0_1.OnRadioOff = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.isUsingTooltip
  if L1_2 then
    L1_2 = A0_2.TooltipSetter
    L2_2 = L1_2
    L1_2 = L1_2.OnTooltipSetterHoverEnd
    L1_2(L2_2)
  end
  L1_2 = UiRadioButtonBus
  L1_2 = L1_2.Event
  L1_2 = L1_2.GetState
  L2_2 = A0_2.entityId
  L1_2 = L1_2(L2_2)
  if L1_2 == true then
    L2_2 = A0_2.isSelectable
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.OnSelected
      L4_2 = nil
      L5_2 = true
      L2_2(L3_2, L4_2, L5_2)
  end
  else
    L3_2 = A0_2
    L2_2 = A0_2.OnUnselected
    L2_2(L3_2)
  end
end

L0_1.OnUnfocus = L5_1

function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2.isSelectable
  if L3_2 then
    L3_2 = A0_2.ListItemBg
    L4_2 = L3_2
    L3_2 = L3_2.OnFocus
    L3_2(L4_2)
  end
  if A2_2 ~= true then
    L3_2 = A0_2.onSelectedCallerTable
    if L3_2 then
      L3_2 = A0_2.onSelectedCallback
      L4_2 = A0_2.onSelectedCallerTable
      L5_2 = A0_2
      L3_2(L4_2, L5_2)
    end
  end
end

L0_1.OnSelected = L5_1

function L5_1(A0_2, A1_2, A2_2)
  A0_2.onSelectedCallerTable = A1_2
  A0_2.onSelectedCallback = A2_2
end

L0_1.SetSelectedCallback = L5_1

function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.ListItemBg
  L2_2 = L1_2
  L1_2 = L1_2.OnUnfocus
  L1_2(L2_2)
end

L0_1.OnUnselected = L5_1

function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2.isSelectable
  return L1_2
end

L0_1.GetIsSelectable = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2.isSelectable = A1_2
  L2_2 = UiInteractableBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetIsHandlingEvents
  L3_2 = A0_2.entityId
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = UiInteractableBus
  L2_2 = L2_2.Event
  L2_2 = L2_2.SetIsHandlingEvents
  L3_2 = A0_2.Properties
  L3_2 = L3_2.TooltipSetter
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.OnUnfocus
  L2_2(L3_2)
end

L0_1.SetIsSelectable = L5_1
return L0_1
