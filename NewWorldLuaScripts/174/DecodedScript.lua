local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = g_Reflect
L1_1 = L0_1
L0_1 = L0_1.RequireReflectionCategory
L2_1 = eReflectionCategory_Factions_GameModes
L0_1(L1_1, L2_1)
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.VoipSpeakerMarker = L2_1
L2_1 = {}
L3_1 = EntityId
L3_1 = L3_1()
L2_1.default = L3_1
L1_1.ChatBubbleMarker = L2_1
L0_1.Properties = L1_1
L0_1.voipPoolSize = 5
L0_1.chatPoolSize = 10
L1_1 = RequireScript
L2_1 = "LyShineUI._Common.BaseScreen"
L1_1 = L1_1(L2_1)
L3_1 = L1_1
L2_1 = L1_1.CreateNewScreen
L4_1 = L0_1
L2_1(L3_1, L4_1)
L2_1 = RequireScript
L3_1 = "LyShineUI.Markers.MarkerCommon"
L2_1 = L2_1(L3_1)

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = _UPVALUE0_
  L1_2 = L1_2.OnInit
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = _UPVALUE1_
  L1_2 = L1_2.screenStatesToDisable
  A0_2.screenStatesToDisable = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.CreatePool
  L3_2 = A0_2.voipPoolSize
  L4_2 = A0_2.Properties
  L4_2 = L4_2.VoipSpeakerMarker
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.voipMarkers = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.CreatePool
  L3_2 = A0_2.chatPoolSize
  L4_2 = A0_2.Properties
  L4_2 = L4_2.ChatBubbleMarker
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.chatMarkers = L1_2
  L1_2 = A0_2.dataLayer
  L2_2 = L1_2
  L1_2 = L1_2.RegisterAndExecuteDataCallback
  L3_2 = A0_2
  L4_2 = "Hud.LocalPlayer.Voip.OtherSpeakerUpdate.IsSpeaking"
  L5_2 = A0_2.OnOtherSpeakerUpdate
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.dataLayer
  L2_2 = L1_2
  L1_2 = L1_2.RegisterAndExecuteDataCallback
  L3_2 = A0_2
  L4_2 = "Hud.LocalPlayer.Voip.Disconnected"
  
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L2_3 = UiElementBus
    L2_3 = L2_3.Event
    L2_3 = L2_3.GetParent
    L3_3 = A0_3.Properties
    L3_3 = L3_3.VoipSpeakerMarker
    L2_3 = L2_3(L3_3)
    L3_3 = UiElementBus
    L3_3 = L3_3.Event
    L3_3 = L3_3.SetIsEnabled
    L4_3 = L2_3
    L5_3 = not A1_3
    L3_3(L4_3, L5_3)
    if A1_3 then
      L3_3 = pairs
      L4_3 = A0_3.voipMarkers
      L3_3, L4_3, L5_3 = L3_3(L4_3)
      for L6_3, L7_3 in L3_3, L4_3, L5_3 do
        L9_3 = L7_3
        L8_3 = L7_3.SetIsSpeaking
        L10_3 = false
        L8_3(L9_3, L10_3)
      end
    end
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.dataLayer
  L2_2 = L1_2
  L1_2 = L1_2.RegisterAndExecuteDataCallback
  L3_2 = A0_2
  L4_2 = "Hud.LocalPlayer.OnOtherPlayerChat.EntityId"
  
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L2_3 = A0_3.dataLayer
    L3_3 = L2_3
    L2_3 = L2_3.GetDataFromNode
    L4_3 = "Hud.LocalPlayer.OnOtherPlayerChat.ChatMessage"
    L2_3 = L2_3(L3_3, L4_3)
    if L2_3 and A1_3 then
      L4_3 = A0_3
      L3_3 = A0_3.GetAvailablePlayerMarker
      L5_3 = A1_3
      L3_3 = L3_3(L4_3, L5_3)
      if L3_3 then
        L4_3 = A0_3.dataLayer
        L5_3 = L4_3
        L4_3 = L4_3.GetDataFromNode
        L6_3 = "Hud.LocalPlayer.OnOtherPlayerChat.MarkerEntityId"
        L4_3 = L4_3(L5_3, L6_3)
        L5_3 = A0_3.dataLayer
        L6_3 = L5_3
        L5_3 = L5_3.GetDataFromNode
        L7_3 = "Hud.LocalPlayer.OnOtherPlayerChat.IsMarkerVisible"
        L5_3 = L5_3(L6_3, L7_3)
        L6_3 = A0_3.dataLayer
        L7_3 = L6_3
        L6_3 = L6_3.GetDataFromNode
        L8_3 = "Hud.LocalPlayer.OnOtherPlayerChat.IsMarkupEnabled"
        L6_3 = L6_3(L7_3, L8_3)
        L8_3 = L3_3
        L7_3 = L3_3.SetIsChatting
        L9_3 = true
        L10_3 = L2_3
        L11_3 = L6_3
        L12_3 = A1_3
        L13_3 = L4_3
        L14_3 = L5_3
        L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
      end
    end
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.dataLayer
  L2_2 = L1_2
  L1_2 = L1_2.RegisterAndExecuteDataCallback
  L3_2 = A0_2
  L4_2 = "Hud.LocalPlayer.OnOtherPlayerChatState.EntityId"
  
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    L2_3 = A0_3.dataLayer
    L3_3 = L2_3
    L2_3 = L2_3.GetDataFromNode
    L4_3 = "Hud.LocalPlayer.OnOtherPlayerChatState.State"
    L2_3 = L2_3(L3_3, L4_3)
    if L2_3 and A1_3 then
      L4_3 = A0_3
      L3_3 = A0_3.GetAvailablePlayerMarker
      L5_3 = A1_3
      L3_3 = L3_3(L4_3, L5_3)
      if L3_3 then
        L4_3 = eSocialChattingState_Text
        L4_3 = L2_3 == L4_3
        L5_3 = not L4_3 and L5_3
        if L5_3 then
          return
        end
        L6_3 = A0_3.dataLayer
        L7_3 = L6_3
        L6_3 = L6_3.GetDataFromNode
        L8_3 = "Hud.LocalPlayer.OnOtherPlayerChatState.MarkerEntityId"
        L6_3 = L6_3(L7_3, L8_3)
        L7_3 = A0_3.dataLayer
        L8_3 = L7_3
        L7_3 = L7_3.GetDataFromNode
        L9_3 = "Hud.LocalPlayer.OnOtherPlayerChatState.IsMarkerVisible"
        L7_3 = L7_3(L8_3, L9_3)
        L9_3 = L3_3
        L8_3 = L3_3.SetIsChatting
        L10_3 = L4_3
        L11_3 = nil
        L12_3 = false
        L13_3 = A1_3
        L14_3 = L6_3
        L15_3 = L7_3
        L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
      end
    end
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2)
end

L0_1.OnInit = L3_1

function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = pairs
  L4_2 = A0_2.chatMarkers
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.playerEntityId
    if L8_2 == A1_2 then
      return L7_2
    end
    if L2_2 == nil then
      L8_2 = L7_2.playerEntityId
      if L8_2 == nil then
        L2_2 = L7_2
      end
    end
  end
  return L2_2
end

L0_1.GetAvailablePlayerMarker = L3_1

function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2
  L5_2 = A0_2.screenStatesToDisable
  L5_2 = L5_2[A3_2]
  if L5_2 then
    L5_2 = A0_2.canvasId
    if L5_2 then
      A0_2.screenStateDesiredVisibility = false
      L6_2 = A0_2
      L5_2 = A0_2.UpdateCanvasVisibility
      L5_2(L6_2)
    end
  end
end

L0_1.OnTransitionIn = L3_1

function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2
  L5_2 = A0_2.screenStatesToDisable
  L5_2 = L5_2[A1_2]
  if L5_2 then
    L5_2 = A0_2.canvasId
    if L5_2 then
      A0_2.screenStateDesiredVisibility = true
      L6_2 = A0_2
      L5_2 = A0_2.UpdateCanvasVisibility
      L5_2(L6_2)
    end
  end
  L5_2 = LyShineManagerBus
  L5_2 = L5_2.Broadcast
  L5_2 = L5_2.TransitionOutComplete
  L5_2()
end

L0_1.OnTransitionOut = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = UiCanvasBus
  L1_2 = L1_2.Event
  L1_2 = L1_2.SetEnabled
  L2_2 = A0_2.canvasId
  L3_2 = A0_2.screenStateDesiredVisibility
  L1_2(L2_2, L3_2)
end

L0_1.UpdateCanvasVisibility = L3_1

function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = UiElementBus
  L3_2 = L3_2.Event
  L3_2 = L3_2.SetIsEnabled
  L4_2 = A2_2
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = {}
  L4_2 = 1
  L5_2 = A1_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = CloneUiElement
    L9_2 = A0_2.canvasId
    L10_2 = A0_2.registrar
    L11_2 = A2_2
    L12_2 = UiElementBus
    L12_2 = L12_2.Event
    L12_2 = L12_2.GetParent
    L13_2 = A2_2
    L12_2 = L12_2(L13_2)
    L13_2 = false
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L3_2
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  return L3_2
end

L0_1.CreatePool = L3_1

function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2.dataLayer
  L3_2 = L2_2
  L2_2 = L2_2.GetDataFromNode
  L4_2 = "Hud.LocalPlayer.Voip.OtherSpeakerUpdate.AccountId"
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  if A1_2 then
    L3_2 = pairs
    L4_2 = A0_2.voipMarkers
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = L7_2.playerId
      if L8_2 == nil then
        L9_2 = L7_2
        L8_2 = L7_2.SetIsSpeaking
        L10_2 = true
        L11_2 = L2_2
        L8_2(L9_2, L10_2, L11_2)
        break
      end
    end
  else
    L3_2 = pairs
    L4_2 = A0_2.voipMarkers
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = L7_2.playerId
      if L8_2 == L2_2 then
        L9_2 = L7_2
        L8_2 = L7_2.SetIsSpeaking
        L10_2 = false
        L8_2(L9_2, L10_2)
        break
      end
    end
  end
end

L0_1.OnOtherSpeakerUpdate = L3_1
return L0_1
