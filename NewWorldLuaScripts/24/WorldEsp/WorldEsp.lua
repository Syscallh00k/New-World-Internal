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

  if A1_2.players then
    for i, player in ipairs(A1_2.players) do
      L3_2 = A0_2
      L2_2 = A0_2.UpdatePlayerData
      L4_2 = player
      L2_2(L3_2, L4_2)
    end
  end
end

L0_1.SetWorldInfo = L5_1

function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.Properties
  L2_2 = L2_2.QueueTime
  L3_2 = L2_2
  L2_2 = L2_2.IsValid
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = A1_2.queueTimeSec
  local queueText = nil
  if 60 <= L2_2 then
    queueText = _UPVALUE0_.ConvertToShorthandString(L2_2, false, true)
  elseif 0 < L2_2 then
    queueText = "@ui_queue_soon_short"
  else
    queueText = "@ui_unknown"
  end
  UiTextBus.Event.SetTextWithFlags(A0_2.Properties.QueueTime, queueText or "-", eUiTextSet_SetLocalized)
end

L0_1.UpdateQueueTime = L5_1

function L5_1(A0_2, A1_2)
  local L2_2 = A1_2.queueSize or 0
  UiTextBus.Event.SetTextWithFlags(A0_2.Properties.QueueSize, L2_2, eUiTextSet_SetLocalized)
end

L0_1.UpdateQueueSize = L5_1

function L5_1(A0_2, A1_2)
  UiTextBus.Event.SetTextWithFlags(A0_2.Properties.CharacterName, A1_2.characterName or "-", eUiTextSet_SetLocalized)
  UiTextBus.Event.SetTextWithFlags(A0_2.Properties.OnlineFriendCount, A1_2.numFriends or "-", eUiTextSet_SetLocalized)
  A0_2:UpdateQueueTime(A1_2)
  A0_2:UpdateQueueSize(A1_2)
  local popText, popColor = A0_2:GetPopulationTextAndColor(A1_2.population)
  UiTextBus.Event.SetTextWithFlags(A0_2.Properties.Population, popText, eUiTextSet_SetLocalized)
  A0_2.ScriptedEntityTweener:Set(A0_2.Properties.Population, { textColor = popColor })
end

L0_1.UpdatePlayerData = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2.regions = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.UpdateWorldName
  L2_2(L3_2)
end

L0_1.SetRegionList = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.regions
  if L2_2 ~= nil then
    for i, region in ipairs(A0_2.regions) do
      if region.awsRegion == A1_2 then
        return region.name
      end
    end
  end
  return ""
end

L0_1.GetAwsRegionNameTag = L5_1

function L5_1(A0_2)
  local L1_2 = A0_2.worldInfo.worldData.transferToRegion
  local regionName = A0_2:GetAwsRegionNameTag(L1_2)
  if regionName == "" then
    regionName = L1_2
  end
  return GetLocalizedReplacementText("@mm_transferworldname", { regionName = regionName })
end

L0_1.CreateRegionTransferWorldName = L5_1

function L5_1(A0_2)
  local name = _UPVALUE0_.IsTransferWorld(A0_2.worldInfo) and A0_2:CreateRegionTransferWorldName() or _UPVALUE0_.GetWorldNameFromWorldData(A0_2.worldInfo.worldData)
  local status = A0_2.worldInfo.worldData.status
  if status == "ACTIVE" and _UPVALUE1_.TestFlag(A0_2.worldInfo.worldData.publicStatusCode, _UPVALUE1_.SERVERSTATUS_DISABLED) then
    return LyShineScriptBindRequestBus.Broadcast.LocalizeText(name .. " (@mm_serverdisabled)")
  end
  if _UPVALUE0_.IsWorldInMaintenanceMode(A0_2.worldInfo) then
    return LyShineScriptBindRequestBus.Broadcast.LocalizeText(name .. " (@mm_serverdown)")
  end
  return LyShineScriptBindRequestBus.Broadcast.LocalizeText(name .. _UPVALUE0_.GetWorldIconTextTag(A0_2.worldInfo))
end

L0_1.GetWorldName = L5_1

function L5_1(A0_2)
  UiTextBus.Event.SetTextWithFlags(A0_2.Properties.WorldName, A0_2:GetWorldName(), eUiTextSet_SetLocalized)
end

L0_1.UpdateWorldName = L5_1

function L5_1(A0_2, A1_2)
  A0_2:SetTooltip(A1_2.notSelectableReason)
  local isTransfer = _UPVALUE0_.IsTransferWorld(A1_2)
  UiElementBus.Event.SetIsEnabled(A0_2.Properties.CharacterName, not isTransfer)
  UiElementBus.Event.SetIsEnabled(A0_2.Properties.OnlineFriendCount, not isTransfer)
  UiElementBus.Event.SetIsEnabled(A0_2.Properties.QueueTime, not isTransfer)
  UiElementBus.Event.SetIsEnabled(A0_2.Properties.QueueSize, not isTransfer)
  UiElementBus.Event.SetIsEnabled(A0_2.Properties.Population, not isTransfer)
  local opacity = (A1_2.isSelectable and 0 or 0.5)
  A0_2.ScriptedEntityTweener:Set(A0_2.Properties.ButtonScrim, { opacity = opacity })
end

L0_1.UpdateStatusVisuals = L5_1

function L5_1(A0_2, A1_2)
  if A1_2 == nil or A1_2 == "" then
    A0_2.isUsingTooltip = false
    UiElementBus.Event.SetIsEnabled(A0_2.Properties.TooltipSetter, false)
  else
    A0_2.isUsingTooltip = true
    A0_2.TooltipSetter:SetSimpleTooltip(A1_2)
    UiElementBus.Event.SetIsEnabled(A0_2.Properties.TooltipSetter, true)
  end
end

L0_1.SetTooltip = L5_1

function L5_1(A0_2)
  if A0_2.isUsingTooltip then
    A0_2.TooltipSetter:OnTooltipSetterHoverStart()
  end
  A0_2.ListItemBg:OnFocus(true)
  A0_2.audioHelper:PlaySound(A0_2.audioHelper.FrontEnd_OnServerSelectHover)
end

L0_1.OnFocus = L5_1

function L5_1(A0_2)
  if A0_2.isSelectable then
    A0_2:OnUnfocus()
  end
end

L0_1.OnRadioOff = L5_1

function L5_1(A0_2)
  if A0_2.isUsingTooltip then
    A0_2.TooltipSetter:OnTooltipSetterHoverEnd()
  end
  if UiRadioButtonBus.Event.GetState(A0_2.entityId) == true and A0_2.isSelectable then
    A0_2:OnSelected(nil, true)
  else
    A0_2:OnUnselected()
  end
end

L0_1.OnUnfocus = L5_1

function L5_1(A0_2, A1_2, A2_2)
  if A0_2.isSelectable then
    A0_2.ListItemBg:OnFocus()
  end
  if A2_2 ~= true and A0_2.onSelectedCallerTable then
    A0_2.onSelectedCallback(A0_2.onSelectedCallerTable, A0_2)
  end
end

L0_1.OnSelected = L5_1

function L5_1(A0_2, A1_2, A2_2)
  A0_2.onSelectedCallerTable = A1_2
  A0_2.onSelectedCallback = A2_2
end

L0_1.SetSelectedCallback = L5_1

function L5_1(A0_2)
  A0_2.ListItemBg:OnUnfocus()
end

L0_1.OnUnselected = L5_1

function L5_1(A0_2)
  return A0_2.isSelectable
end

L0_1.GetIsSelectable = L5_1

function L5_1(A0_2, A1_2)
  A0_2.isSelectable = A1_2
  UiInteractableBus.Event.SetIsHandlingEvents(A0_2.entityId, A1_2)
  UiInteractableBus.Event.SetIsHandlingEvents(A0_2.Properties.TooltipSetter, not A1_2)
  A0_2:OnUnfocus()
end

L0_1.SetIsSelectable = L5_1
return L0_1
