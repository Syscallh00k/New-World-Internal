local L0_1, L1_1, L2_1
L0_1 = g_Reflect
L1_1 = L0_1
L0_1 = L0_1.RequireReflectionCategory
L2_1 = eReflectionCategory_TutorialMessage
L0_1(L1_1, L2_1)
L0_1 = {}
L1_1 = {}
L2_1 = {}
L2_1.moveforward = true
L2_1.moveforward_onpress = true
L2_1.moveback = true
L2_1.moveback_onpress = true
L2_1.moveleft = true
L2_1.moveleft_onpress = true
L2_1.moveright = true
L2_1.moveright_onpress = true
L2_1.crouch_toggle = true
L1_1.movement = L2_1
L2_1 = {}
L2_1.camera_lock_toggle = true
L1_1.combat = L2_1
L2_1 = {}
L2_1.sheathe = true
L2_1.block = true
L2_1.attack_primary = true
L2_1.attack_primary_hold = true
L2_1.dodge = true
L1_1.player = L2_1
L2_1 = {}
L2_1.ui_interact = true
L2_1.toggleInventoryWindow = true
L2_1["quickslot-consumable-1"] = true
L2_1["quickslot-consumable-2"] = true
L2_1.toggleSkillsComponent = true
L1_1.ui = L2_1
L0_1.RequiredKeybinds = L1_1
L1_1 = LyShineScriptBindRequestBus
L1_1 = L1_1.Broadcast
L1_1 = L1_1.IsEditor
L1_1 = L1_1()
if not L1_1 then
  L1_1 = {}
  L2_1 = eTutorialType_Invalid
  L1_1[L2_1] = "eTutorialType_Invalid"
  L2_1 = eTutorialType_Prompt
  L1_1[L2_1] = "eTutorialType_Prompt"
  L2_1 = eTutorialType_Dialogue
  L1_1[L2_1] = "eTutorialType_Dialogue"
  L2_1 = eTutorialType_Both
  L1_1[L2_1] = "eTutorialType_Both"
  L0_1.TutorialTypes = L1_1
  L1_1 = {}
  L2_1 = eTutorialClassification_All
  L1_1[L2_1] = "eTutorialClassification_All"
  L2_1 = eTutorialClassification_Core
  L1_1[L2_1] = "eTutorialClassification_Core"
  L2_1 = eTutorialClassification_Mandatory
  L1_1[L2_1] = "eTutorialClassification_Mandatory"
  L0_1.TutorialClassifications = L1_1
  L1_1 = {}
  L2_1 = eTutorialPromptStyle_None
  L1_1[L2_1] = "eTutorialPromptStyle_None"
  L2_1 = eTutorialPromptStyle_MandatoryActionCenter
  L1_1[L2_1] = "eTutorialPromptStyle_MandatoryActionCenter"
  L2_1 = eTutorialPromptStyle_MandatoryActionSide
  L1_1[L2_1] = "eTutorialPromptStyle_MandatoryActionSide"
  L2_1 = eTutorialPromptStyle_VoluntaryAction
  L1_1[L2_1] = "eTutorialPromptStyle_VoluntaryAction"
  L2_1 = eTutorialPromptStyle_InformationalHint
  L1_1[L2_1] = "eTutorialPromptStyle_InformationalHint"
  L2_1 = eTutorialPromptStyle_ContextualReminder
  L1_1[L2_1] = "eTutorialPromptStyle_ContextualReminder"
  L2_1 = eTutorialPromptStyle_NewFeature
  L1_1[L2_1] = "eTutorialPromptStyle_NewFeature"
  L0_1.TutorialPromptStyles = L1_1
  L1_1 = {}
  L2_1 = eTutorialPromptExitDuration_None
  L1_1[L2_1] = "eTutorialPromptExitDuration_None"
  L2_1 = eTutorialPromptExitDuration_Short
  L1_1[L2_1] = "eTutorialPromptExitDuration_Short"
  L2_1 = eTutorialPromptExitDuration_Medium
  L1_1[L2_1] = "eTutorialPromptExitDuration_Medium"
  L2_1 = eTutorialPromptExitDuration_Long
  L1_1[L2_1] = "eTutorialPromptExitDuration_Long"
  L0_1.TutorialPromptExitDurations = L1_1
  L1_1 = {}
  L2_1 = eTutorialConditionType_Invalid
  L1_1[L2_1] = "eTutorialConditionType_Invalid"
  L2_1 = eTutorialConditionType_PlayerLevel
  L1_1[L2_1] = "eTutorialConditionType_PlayerLevel"
  L2_1 = eTutorialConditionType_GameEvent
  L1_1[L2_1] = "eTutorialConditionType_GameEvent"
  L2_1 = eTutorialConditionType_CategoricalProgression
  L1_1[L2_1] = "eTutorialConditionType_CategoricalProgression"
  L2_1 = eTutorialConditionType_Achievement
  L1_1[L2_1] = "eTutorialConditionType_Achievement"
  L2_1 = eTutorialConditionType_Entitlement
  L1_1[L2_1] = "eTutorialConditionType_Entitlement"
  L2_1 = eTutorialConditionType_UIEvent
  L1_1[L2_1] = "eTutorialConditionType_UIEvent"
  L2_1 = eTutorialConditionType_EquipItemInSlot
  L1_1[L2_1] = "eTutorialConditionType_EquipItemInSlot"
  L2_1 = eTutorialConditionType_EquipItemClasses
  L1_1[L2_1] = "eTutorialConditionType_EquipItemClasses"
  L2_1 = eTutorialConditionType_ReceiveItemClasses
  L1_1[L2_1] = "eTutorialConditionType_ReceiveItemClasses"
  L2_1 = eTutorialConditionType_ReceiveItemId
  L1_1[L2_1] = "eTutorialConditionType_ReceiveItemId"
  L0_1.TutorialConditionTypes = L1_1
  L1_1 = {}
  L2_1 = eTutorialConditionOperation_Equals
  L1_1[L2_1] = "eTutorialConditionOperation_Equals"
  L2_1 = eTutorialConditionOperation_GreaterThan
  L1_1[L2_1] = "eTutorialConditionOperation_GreaterThan"
  L2_1 = eTutorialConditionOperation_LessThan
  L1_1[L2_1] = "eTutorialConditionOperation_LessThan"
  L2_1 = eTutorialConditionOperation_HasUnlocked
  L1_1[L2_1] = "eTutorialConditionOperation_HasUnlocked"
  L2_1 = eTutorialConditionOperation_HasNotUnlocked
  L1_1[L2_1] = "eTutorialConditionOperation_HasNotUnlocked"
  L2_1 = eTutorialConditionOperation_EquipItemInAnySlot
  L1_1[L2_1] = "eTutorialConditionOperation_EquipItemInAnySlot"
  L2_1 = eTutorialConditionOperation_EquipItemClassAny
  L1_1[L2_1] = "eTutorialConditionOperation_EquipItemClassAny"
  L2_1 = eTutorialConditionOperation_EquipItemClassAll
  L1_1[L2_1] = "eTutorialConditionOperation_EquipItemClassAll"
  L2_1 = eTutorialConditionOperation_EquipItemClassNone
  L1_1[L2_1] = "eTutorialConditionOperation_EquipItemClassNone"
  L2_1 = eTutorialConditionOperation_ReceiveItemClassAny
  L1_1[L2_1] = "eTutorialConditionOperation_ReceiveItemClassAny"
  L2_1 = eTutorialConditionOperation_ReceiveItemClassAll
  L1_1[L2_1] = "eTutorialConditionOperation_ReceiveItemClassAll"
  L2_1 = eTutorialConditionOperation_ReceiveItemClassNone
  L1_1[L2_1] = "eTutorialConditionOperation_ReceiveItemClassNone"
  L2_1 = eTutorialConditionOperation_ReceiveItemAnyId
  L1_1[L2_1] = "eTutorialConditionOperation_ReceiveItemAnyId"
  L0_1.TutorialConditionOperations = L1_1
  
  function L1_1(A0_2, A1_2)
    local L2_2
    if not A1_2 then
      L2_2 = ""
      return L2_2
    end
    L2_2 = A0_2.TutorialTypes
    L2_2 = L2_2[A1_2]
    if not L2_2 then
      L2_2 = ""
    end
    return L2_2
  end
  
  L0_1.TutorialTypeToString = L1_1
  
  function L1_1(A0_2, A1_2)
    local L2_2
    if not A1_2 then
      L2_2 = ""
      return L2_2
    end
    L2_2 = A0_2.TutorialClassifications
    L2_2 = L2_2[A1_2]
    if not L2_2 then
      L2_2 = ""
    end
    return L2_2
  end
  
  L0_1.TutorialClassificationToString = L1_1
  
  function L1_1(A0_2, A1_2)
    local L2_2
    if not A1_2 then
      L2_2 = ""
      return L2_2
    end
    L2_2 = A0_2.TutorialPromptStyles
    L2_2 = L2_2[A1_2]
    if not L2_2 then
      L2_2 = ""
    end
    return L2_2
  end
  
  L0_1.TutorialPromptStyleToString = L1_1
  
  function L1_1(A0_2, A1_2)
    local L2_2
    if not A1_2 then
      L2_2 = ""
      return L2_2
    end
    L2_2 = A0_2.TutorialPromptExitDurations
    L2_2 = L2_2[A1_2]
    if not L2_2 then
      L2_2 = ""
    end
    return L2_2
  end
  
  L0_1.TutorialPromptExitDurationToString = L1_1
  
  function L1_1(A0_2, A1_2)
    local L2_2
    if not A1_2 then
      L2_2 = ""
      return L2_2
    end
    L2_2 = A0_2.TutorialConditionTypes
    L2_2 = L2_2[A1_2]
    if not L2_2 then
      L2_2 = ""
    end
    return L2_2
  end
  
  L0_1.TutorialConditionTypeToString = L1_1
  
  function L1_1(A0_2, A1_2)
    local L2_2
    if not A1_2 then
      L2_2 = ""
      return L2_2
    end
    L2_2 = A0_2.TutorialConditionOperations
    L2_2 = L2_2[A1_2]
    if not L2_2 then
      L2_2 = ""
    end
    return L2_2
  end
  
  L0_1.TutorialConditionOperationToString = L1_1
end

function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.RequiredKeybinds
  L3_2 = L3_2[A2_2]
  if L3_2 then
    L3_2 = A0_2.RequiredKeybinds
    L3_2 = L3_2[A2_2]
    L3_2 = L3_2[A1_2]
  end
  return L3_2
end

L0_1.IsKeybindRequiredForFtue = L1_1
return L0_1
