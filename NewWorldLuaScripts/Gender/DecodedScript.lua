local L0_1, L1_1
L0_1 = {}

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = SequenceComponentNotificationBus
  L1_2 = L1_2.Connect
  L2_2 = A0_2
  L3_2 = A0_2.entityId
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.trackEventHandler = L1_2
  L1_2 = UiMainMenuBus
  L1_2 = L1_2.Connect
  L2_2 = A0_2
  L3_2 = A0_2.entityId
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.mainMenuBusHandler = L1_2
  L1_2 = UiMainMenuRequestBus
  L1_2 = L1_2.Broadcast
  L1_2 = L1_2.RequestCustomizableCharacterEntityId
  L1_2()
end

L0_1.OnActivate = L1_1

function L1_1(A0_2, A1_2)
  A0_2.characterEntityId = A1_2
  A0_2.playerGender = nil
end

L0_1.SetCustomizableCharacterEntityId = L1_1

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A1_2 ~= nil and A2_2 ~= nil and A1_2 ~= "Music_FTUE" then
    if A1_2 == "AudioQTE" then
      L3_2 = AudioTriggerComponentRequestBus
      L3_2 = L3_2.Event
      L3_2 = L3_2.ExecuteTrigger
      L4_2 = A0_2.entityId
      L5_2 = tostring
      L6_2 = A2_2
      L5_2, L6_2 = L5_2(L6_2)
      L3_2(L4_2, L5_2, L6_2)
    elseif A1_2 == "AudioStart" or A1_2 == "AudioStop" then
      L3_2 = A0_2.characterEntityId
      if L3_2 ~= nil then
        L3_2 = A0_2.playerGender
        if L3_2 == nil then
          L3_2 = CustomizableCharacterRequestBus
          L3_2 = L3_2.Event
          L3_2 = L3_2.GetGender
          L4_2 = A0_2.characterEntityId
          L3_2 = L3_2(L4_2)
          A0_2.playerGender = L3_2
          L3_2 = AudioUtilsBus
          L3_2 = L3_2.Broadcast
          L3_2 = L3_2.SetGlobalAudioSwitchState
          L4_2 = "Gender"
          L5_2 = A0_2.playerGender
          L3_2(L4_2, L5_2)
        end
      end
      L3_2 = AudioUtilsBus
      L3_2 = L3_2.Broadcast
      L3_2 = L3_2.ExecuteGlobalAudioTrigger
      L4_2 = tostring
      L5_2 = A2_2
      L4_2 = L4_2(L5_2)
      L5_2 = true
      L6_2 = EntityId
      L6_2 = L6_2()
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end

L0_1.OnTrackEventTriggered = L1_1

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.trackEventHandler
  if L1_2 ~= nil then
    L1_2 = A0_2.trackEventHandler
    L2_2 = L1_2
    L1_2 = L1_2.Disconnect
    L1_2(L2_2)
  end
  L1_2 = A0_2.mainMenuBusHandler
  if L1_2 then
    L1_2 = A0_2.mainMenuBusHandler
    L2_2 = L1_2
    L1_2 = L1_2.Disconnect
    L1_2(L2_2)
    A0_2.mainMenuBusHandler = nil
  end
end

L0_1.OnDeactivate = L1_1
return L0_1
