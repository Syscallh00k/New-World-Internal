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
end

L0_1.OnActivate = L1_1

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.trackEventHandler
  if L1_2 ~= nil then
    L1_2 = A0_2.trackEventHandler
    L2_2 = L1_2
    L1_2 = L1_2.Disconnect
    L1_2(L2_2)
  end
end

L0_1.OnDeactivate = L1_1

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A1_2 ~= nil and A2_2 ~= nil then
    L3_2 = AudioUtilsBus
    L3_2 = L3_2.Broadcast
    L3_2 = L3_2.SetGlobalAudioSwitchState
    L4_2 = tostring
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    L5_2 = tostring
    L6_2 = A2_2
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
  end
end

L0_1.OnTrackEventTriggered = L1_1
return L0_1
