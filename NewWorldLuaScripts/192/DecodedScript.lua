local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Scripts.Utils.TimingUtils"
L0_1(L1_1)
L0_1 = {}
L1_1 = {}
L2_1 = {}
L2_1.default = true
L2_1.description = "This will set the camera_state once the script is active. If unchecked it will stay as Default"
L2_1.order = 1
L1_1.shouldChangeToIGCMixState = L2_1
L2_1 = {}
L2_1.default = ""
L2_1.description = "Keys are the name of the Soundbank, Switch, wwus - this should be correct to load and playback audio on the IGC slice. eg. 'IGC_MSQ_GracesFarewell'"
L2_1.order = 2
L1_1.IGC_Key = L2_1
L2_1 = {}
L2_1.default = true
L2_1.description = "Start/ Stop events - 'Play_' + IGC_KEY - used for 2D audio - on activate and deactive of the slice"
L2_1.order = 3
L1_1.usesCustomAudio = L2_1
L2_1 = {}
L2_1.default = true
L2_1.description = "Should we duck all non-degetic MX? If the Key exists in the MX Hierarchy, it will play the assigned music, otherwise, you will mute ambient zone MX"
L2_1.order = 4
L1_1.usesCustomMusic = L2_1
L2_1 = {}
L2_1.default = false
L2_1.description = "If true, the camera_state will be set to Vignette instead of IGC"
L2_1.order = 5
L1_1.isVignette = L2_1
L2_1 = {}
L2_1.default = false
L2_1.description = "If true, audio listener will stay at the player position. If false (default), it will follow the player as usual."
L2_1.order = 6
L1_1.dontMoveAudioListener = L2_1
L0_1.Properties = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.entityId
  A0_2.entityIdOverride = L1_2
  L1_2 = EntityId
  L1_2 = L1_2()
  A0_2.localPlayerEntityId = L1_2
  L1_2 = RequireScript
  L2_2 = "LyShineUI.UiDataLayer"
  L1_2 = L1_2(L2_2)
  dataLayer = L1_2
  L1_2 = dataLayer
  L2_2 = L1_2
  L1_2 = L1_2.RegisterAndExecuteDataObserver
  L3_2 = A0_2
  L4_2 = "Hud.LocalPlayer.HudComponent.PlayerEntityId"
  
  function L5_2(A0_3, A1_3)
    if A1_3 ~= nil then
      A0_3.playerEntityId = A1_3
    end
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.Properties
  L1_2 = L1_2.IGC_Key
  if L1_2 ~= nil then
    L1_2 = A0_2.Properties
    L1_2 = L1_2.IGC_Key
    if L1_2 ~= "" then
      L1_2 = AudioPreloadComponentRequestBus
      L1_2 = L1_2.Event
      L1_2 = L1_2.LoadPreload
      L2_2 = A0_2.playerEntityId
      L3_2 = A0_2.Properties
      L3_2 = L3_2.IGC_Key
      L1_2(L2_2, L3_2)
      L1_2 = AudioSwitchComponentRequestBus
      L1_2 = L1_2.Event
      L1_2 = L1_2.SetSwitchState
      L2_2 = A0_2.playerEntityId
      L3_2 = "IGC"
      L4_2 = A0_2.Properties
      L4_2 = L4_2.IGC_Key
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = A0_2.Properties
      L1_2 = L1_2.usesCustomMusic
      if L1_2 then
        L1_2 = AudioTriggerComponentRequestBus
        L1_2 = L1_2.Event
        L1_2 = L1_2.ExecuteTrigger
        L2_2 = A0_2.playerEntityId
        L3_2 = "Play_MX_IGC"
        L1_2(L2_2, L3_2)
        L1_2 = TimingUtils
        L2_2 = L1_2
        L1_2 = L1_2.Delay
        L3_2 = A0_2.entityIdOverride
        L4_2 = 0.2
        
        function L5_2()
          local L0_3, L1_3, L2_3
          L0_3 = AudioTriggerComponentRequestBus
          L0_3 = L0_3.Event
          L0_3 = L0_3.ExecuteTrigger
          L1_3 = A0_2
          L1_3 = L1_3.playerEntityId
          L2_3 = "Pause_MX_Gameplay_For_IGC"
          L0_3(L1_3, L2_3)
        end
        
        L1_2(L2_2, L3_2, L4_2, L5_2)
      end
      L1_2 = A0_2.Properties
      L1_2 = L1_2.usesCustomAudio
      if L1_2 then
        L1_2 = "Play_"
        L2_2 = A0_2.Properties
        L2_2 = L2_2.IGC_Key
        L1_2 = L1_2 .. L2_2
        L2_2 = AudioTriggerComponentRequestBus
        L2_2 = L2_2.Event
        L2_2 = L2_2.ExecuteTriggerUnloadSoundbankOnCompletion
        L3_2 = A0_2.playerEntityId
        L4_2 = L1_2
        L2_2(L3_2, L4_2)
      end
    end
  end
  L1_2 = A0_2.Properties
  L1_2 = L1_2.shouldChangeToIGCMixState
  if L1_2 then
    L1_2 = A0_2.Properties
    L1_2 = L1_2.isVignette
    if L1_2 then
      L1_2 = "Vignette"
      if L1_2 then
        goto lbl_82
      end
    end
    L1_2 = "IGC"
    ::lbl_82::
    L2_2 = AudioSwitchComponentRequestBus
    L2_2 = L2_2.Event
    L2_2 = L2_2.SetSwitchState
    L3_2 = A0_2.playerEntityId
    L4_2 = "Camera_State"
    L5_2 = L1_2
    L2_2(L3_2, L4_2, L5_2)
  end
  L1_2 = A0_2.Properties
  L1_2 = L1_2.dontMoveAudioListener
  if L1_2 then
    L1_2 = dataLayer
    L2_2 = L1_2
    L1_2 = L1_2.RegisterAndExecuteDataObserver
    L3_2 = A0_2
    L4_2 = "Hud.LocalPlayer.HudComponent.LocalPlayerEntityId"
    
    function L5_2(A0_3, A1_3)
      if A1_3 ~= nil then
        A0_3.localPlayerEntityId = A1_3
      end
    end
    
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = AudioListenerComponentRequestBus
    L1_2 = L1_2.Event
    L1_2 = L1_2.PauseListenerUpdates
    L2_2 = A0_2.localPlayerEntityId
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end

L0_1.OnActivate = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.Properties
  L1_2 = L1_2.IGC_Key
  if L1_2 ~= nil then
    L1_2 = A0_2.Properties
    L1_2 = L1_2.IGC_Key
    if L1_2 ~= "" then
      L1_2 = AudioSwitchComponentRequestBus
      L1_2 = L1_2.Event
      L1_2 = L1_2.SetSwitchState
      L2_2 = A0_2.playerEntityId
      L3_2 = "IGC"
      L4_2 = "none"
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = A0_2.Properties
      L1_2 = L1_2.usesCustomMusic
      if L1_2 then
        L1_2 = AudioTriggerComponentRequestBus
        L1_2 = L1_2.Event
        L1_2 = L1_2.ExecuteTrigger
        L2_2 = A0_2.playerEntityId
        L3_2 = "Resume_MX_Gameplay_For_IGC"
        L1_2(L2_2, L3_2)
        L1_2 = AudioTriggerComponentRequestBus
        L1_2 = L1_2.Event
        L1_2 = L1_2.ExecuteTrigger
        L2_2 = A0_2.playerEntityId
        L3_2 = "Stop_MX_IGC"
        L1_2(L2_2, L3_2)
      end
      L1_2 = A0_2.Properties
      L1_2 = L1_2.usesCustomAudio
      if L1_2 then
        L1_2 = "Stop_"
        L2_2 = A0_2.Properties
        L2_2 = L2_2.IGC_Key
        L1_2 = L1_2 .. L2_2
        L2_2 = AudioTriggerComponentRequestBus
        L2_2 = L2_2.Event
        L2_2 = L2_2.ExecuteTrigger
        L3_2 = A0_2.playerEntityId
        L4_2 = L1_2
        L2_2(L3_2, L4_2)
        L2_2 = AudioPreloadComponentRequestBus
        L2_2 = L2_2.Event
        L2_2 = L2_2.UnloadPreload
        L3_2 = A0_2.playerEntityId
        L4_2 = A0_2.Properties
        L4_2 = L4_2.IGC_Key
        L2_2(L3_2, L4_2)
      end
    end
  end
  L1_2 = AudioListenerComponentRequestBus
  L1_2 = L1_2.Event
  L1_2 = L1_2.PauseListenerUpdates
  L2_2 = A0_2.localPlayerEntityId
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = AudioSwitchComponentRequestBus
  L1_2 = L1_2.Event
  L1_2 = L1_2.SetSwitchState
  L2_2 = A0_2.playerEntityId
  L3_2 = "Camera_State"
  L4_2 = "Default"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = dataLayer
  L2_2 = L1_2
  L1_2 = L1_2.UnregisterObservers
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end

L0_1.OnDeactivate = L1_1
return L0_1
