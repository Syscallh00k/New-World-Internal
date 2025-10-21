local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = g_Reflect
L1_1 = L0_1
L0_1 = L0_1.RequireReflectionCategory
L2_1 = eReflectionCategory_Items_Crafting_Trade
L0_1(L1_1, L2_1)
L0_1 = g_Reflect
L1_1 = L0_1
L0_1 = L0_1.RequireReflectionCategory
L2_1 = eReflectionCategory_LocalPlayerCharacter_Progression
L0_1(L1_1, L2_1)
L0_1 = RequireScript
L1_1 = "LyShineUI.UiDataLayer"
L0_1 = L0_1(L1_1)
L1_1 = {}
L1_1.eTooltipActionAddTo = 1
L1_1.eTooltipActionAddFrom = 2
L1_1.ePopupActionSwitchLoadout = 3
L2_1 = {}
L3_1 = ePaperDollSlotTypes_MainHandOption1
L2_1["main-hand-option-1"] = L3_1
L3_1 = ePaperDollSlotTypes_MainHandOption2
L2_1["main-hand-option-2"] = L3_1
L3_1 = ePaperDollSlotTypes_OffHandOption1
L2_1["off-hand-option-1"] = L3_1
L3_1 = ePaperDollSlotTypes_OffHandOption2
L2_1["off-hand-option-2"] = L3_1
L3_1 = ePaperDollSlotTypes_QuickSlot1
L2_1["quickslot-1"] = L3_1
L3_1 = ePaperDollSlotTypes_QuickSlot2
L2_1["quickslot-2"] = L3_1
L3_1 = ePaperDollSlotTypes_QuickSlot3
L2_1["quickslot-3"] = L3_1
L3_1 = ePaperDollSlotTypes_QuickSlot4
L2_1["quickslot-4"] = L3_1
L3_1 = ePaperDollSlotTypes_BagSlot1
L2_1["bag-slot-1"] = L3_1
L3_1 = ePaperDollSlotTypes_BagSlot2
L2_1["bag-slot-2"] = L3_1
L3_1 = ePaperDollSlotTypes_BagSlot3
L2_1["bag-slot-3"] = L3_1
L3_1 = ePaperDollSlotTypes_Arrow
L2_1["arrow-ammo"] = L3_1
L3_1 = ePaperDollSlotTypes_Cartridge
L2_1["cartridge-ammo"] = L3_1
L3_1 = ePaperDollSlotTypes_Head
L2_1.head = L3_1
L3_1 = ePaperDollSlotTypes_Chest
L2_1.chest = L3_1
L3_1 = ePaperDollSlotTypes_Hands
L2_1.hands = L3_1
L3_1 = ePaperDollSlotTypes_Legs
L2_1.legs = L3_1
L3_1 = ePaperDollSlotTypes_Feet
L2_1.feet = L3_1
L3_1 = ePaperDollSlotTypes_Amulet
L2_1.amulet = L3_1
L3_1 = ePaperDollSlotTypes_Token
L2_1.token = L3_1
L3_1 = ePaperDollSlotTypes_Ring
L2_1.ring = L3_1
L3_1 = ePaperDollSlotTypes_Cartridge
L2_1["cartridge-ammo1"] = L3_1
L3_1 = ePaperDollSlotTypes_Cartridge
L2_1["cartridge-ammo2"] = L3_1
L3_1 = ePaperDollSlotTypes_Cartridge
L2_1["cartridge-ammo3"] = L3_1
L3_1 = ePaperDollSlotTypes_Cartridge
L2_1["arrow-ammo1"] = L3_1
L3_1 = ePaperDollSlotTypes_Arrow
L2_1["arrow-ammo2"] = L3_1
L3_1 = ePaperDollSlotTypes_Arrow
L2_1["arrow-ammo3"] = L3_1
L3_1 = ePaperDollSlotTypes_Chopping
L2_1["chopping-slot"] = L3_1
L3_1 = ePaperDollSlotTypes_Cutting
L2_1["cutting-slot"] = L3_1
L3_1 = ePaperDollSlotTypes_Dressing
L2_1["dressing-slot"] = L3_1
L3_1 = ePaperDollSlotTypes_Mining
L2_1["mining-slot"] = L3_1
L3_1 = ePaperDollSlotTypes_AzothStaff
L2_1["azothstaff-slot"] = L3_1
L3_1 = ePaperDollSlotTypes_Fishing
L2_1["fishing-slot"] = L3_1
L3_1 = ePaperDollSlotTypes_InstrumentFlute
L2_1["instrument-flute-slot"] = L3_1
L3_1 = ePaperDollSlotTypes_InstrumentGuitar
L2_1["instrument-guitar-slot"] = L3_1
L3_1 = ePaperDollSlotTypes_InstrumentMandolin
L2_1["instrument-mandolin-slot"] = L3_1
L3_1 = ePaperDollSlotTypes_InstrumentUprightBass
L2_1["instrument-uprightbass-slot"] = L3_1
L3_1 = ePaperDollSlotTypes_InstrumentDrums
L2_1["instrument-drums-slot"] = L3_1
L3_1 = ePaperDollSlotTypes_HeartGem
L2_1["heart-gem-slot"] = L3_1
L3_1 = ePaperDollSlotTypes_Mount_Buff1
L2_1["mount-buff-slot-1"] = L3_1
L3_1 = ePaperDollSlotTypes_Mount_Buff2
L2_1["mount-buff-slot-2"] = L3_1
L3_1 = ePaperDollSlotTypes_Mount_Attachment1
L2_1["mount-attachment-slot-1"] = L3_1
L3_1 = ePaperDollSlotTypes_Mount_Attachment2
L2_1["mount-attachment-slot-2"] = L3_1
L3_1 = ePaperDollSlotTypes_GatherableHand
L2_1["main-hand"] = L3_1
L1_1.nameToPaperdollSlotMap = L2_1
L2_1 = {}
L2_1["chopping-slot"] = "LyShineUI/Images/Inventory/Button_PrimaryTool_Wood_c.png"
L2_1["cutting-slot"] = "LyShineUI/Images/Inventory/Button_PrimaryTool_Plant_c.png"
L2_1["dressing-slot"] = "LyShineUI/Images/Inventory/Button_PrimaryTool_Skinning_c.png"
L2_1["mining-slot"] = "LyShineUI/Images/Inventory/Button_PrimaryTool_Stone_c.png"
L2_1["azothstaff-slot"] = "LyShineUI/Images/Inventory/Button_PrimaryTool_AzothStaff_a.png"
L2_1["fishing-slot"] = "LyShineUI/Images/Inventory/Button_PrimaryTool_Fishing_a.png"
L1_1.toolTypeIcons = L2_1
L2_1 = {}
L2_1[2972535350] = true
L2_1[3349343259] = true
L2_1[2552344588] = true
L2_1[3548394217] = true
L2_1[3679666240] = true
L2_1[4283914359] = true
L1_1.loadoutStatesSet = L2_1
L2_1 = RequireScript
L3_1 = "LyShineUI.Popup.PopupRequestWrapper"
L2_1 = L2_1(L3_1)
L3_1 = RequireScript
L4_1 = "LyShineUI._Common.StaticItemDataManager"
L3_1 = L3_1(L4_1)
L4_1 = {}
L5_1 = "main-hand-option-1"
L6_1 = "main-hand-option-2"
L4_1[1] = L5_1
L4_1[2] = L6_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = pairs
  L3_2 = A0_2.nameToPaperdollSlotMap
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 == A1_2 then
      return L5_2
    end
  end
  L2_2 = nil
  return L2_2
end

L1_1.GetNameFromPaperDollSlot = L5_1

function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.nameToPaperdollSlotMap
  L2_2 = L2_2[A1_2]
  return L2_2
end

L1_1.GetPaperDollSlotFromName = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetDataFromNode
  L3_2 = "Hud.LocalPlayer.HudComponent.PaperdollEntityId"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2.nameToPaperdollSlotMap
  L2_2 = L2_2["mount-attachment-slot-1"]
  L3_2 = PaperdollRequestBus
  L3_2 = L3_2.Event
  L3_2 = L3_2.HasLevelRequirementForSlot
  L4_2 = L1_2
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L3_2 = PaperdollRequestBus
  L3_2 = L3_2.Event
  L3_2 = L3_2.HasAchievementRequirementForSlot
  L4_2 = L1_2
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L3_2 = PaperdollRequestBus
  L3_2 = L3_2.Event
  L3_2 = L3_2.HasTradeskillRankRequirementForSlot
  L4_2 = L1_2
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L3_2 = not L3_2 or L3_2
  L4_2 = A0_2.nameToPaperdollSlotMap
  L4_2 = L4_2["mount-attachment-slot-2"]
  L5_2 = PaperdollRequestBus
  L5_2 = L5_2.Event
  L5_2 = L5_2.HasLevelRequirementForSlot
  L6_2 = L1_2
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  L5_2 = PaperdollRequestBus
  L5_2 = L5_2.Event
  L5_2 = L5_2.HasAchievementRequirementForSlot
  L6_2 = L1_2
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  L5_2 = PaperdollRequestBus
  L5_2 = L5_2.Event
  L5_2 = L5_2.HasTradeskillRankRequirementForSlot
  L6_2 = L1_2
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  L5_2 = not L5_2 or L5_2
  if not L3_2 and not L5_2 then
    L6_2 = true
    return L6_2
  end
  L6_2 = false
  return L6_2
end

L1_1.isMountAttachmentSelectionAvailable = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetDataFromNode
  L4_2 = "Hud.LocalPlayer.HudComponent.PaperdollEntityId"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = PaperdollRequestBus
  L3_2 = L3_2.Event
  L3_2 = L3_2.HasLevelRequirementForSlot
  L4_2 = L2_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = PaperdollRequestBus
    L3_2 = L3_2.Event
    L3_2 = L3_2.HasAchievementRequirementForSlot
    L4_2 = L2_2
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = PaperdollRequestBus
      L3_2 = L3_2.Event
      L3_2 = L3_2.HasTradeskillRankRequirementForSlot
      L4_2 = L2_2
      L5_2 = A1_2
      L3_2 = L3_2(L4_2, L5_2)
    end
  end
  return L3_2
end

L1_1.IsBagSlotSelectionAvailable = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetDataFromNode
  L4_2 = "Hud.LocalPlayer.HudComponent.PaperdollEntityId"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = PaperdollRequestBus
  L3_2 = L3_2.Event
  L3_2 = L3_2.HasLevelRequirementForSlot
  L4_2 = L2_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  return L3_2
end

L1_1.isConsumableSelectionAvailable = L5_1

function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L3_2 = L0_1
  L4_2 = L3_2
  L3_2 = L3_2.GetDataFromNode
  L5_2 = "Hud.LocalPlayer.HudComponent.PaperdollEntityId"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = ContainerRequestBus
  L4_2 = L4_2.Event
  L4_2 = L4_2.GetSlot
  L5_2 = A2_2
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = _UPVALUE1_
  L6_2 = L5_2
  L5_2 = L5_2.GetTooltipDisplayInfo
  L8_2 = L4_2
  L7_2 = L4_2.GetItemDescriptor
  L7_2 = L7_2(L8_2)
  L8_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = nil
  L7_2 = {}
  L8_2 = ipairs
  L9_2 = _UPVALUE2_
  L8_2, L9_2, L10_2 = L8_2(L9_2)
  for L11_2, L12_2 in L8_2, L9_2, L10_2 do
    L13_2 = A0_2.nameToPaperdollSlotMap
    L13_2 = L13_2[L12_2]
    L14_2 = PaperdollRequestBus
    L14_2 = L14_2.Event
    L14_2 = L14_2.GetSlot
    L15_2 = L3_2
    L16_2 = L13_2
    L14_2 = L14_2(L15_2, L16_2)
    L15_2 = _UPVALUE1_
    L16_2 = L15_2
    L15_2 = L15_2.ShouldTooltipCompare
    L17_2 = L5_2
    L18_2 = L14_2
    L15_2, L16_2 = L15_2(L16_2, L17_2, L18_2)
    if L15_2 then
      L17_2 = table
      L17_2 = L17_2.insert
      L18_2 = L7_2
      L19_2 = {}
      L19_2.tdi = L16_2
      L19_2.equipSlot = L12_2
      L17_2(L18_2, L19_2)
    end
  end
  L8_2 = ipairs
  L9_2 = L7_2
  L8_2, L9_2, L10_2 = L8_2(L9_2)
  for L11_2, L12_2 in L8_2, L9_2, L10_2 do
    if L6_2 then
      L13_2 = L6_2.tdi
      L13_2 = L13_2.gearScore
      L14_2 = L12_2.tdi
      L14_2 = L14_2.gearScore
      if not (L13_2 < L14_2) then
        goto lbl_60
      end
    end
    L6_2 = L12_2
    ::lbl_60::
  end
  if L6_2 then
    L8_2 = false
    return L8_2
  end
  L8_2 = A0_2.nameToPaperdollSlotMap
  L9_2 = _UPVALUE2_
  L9_2 = L9_2[2]
  L8_2 = L8_2[L9_2]
  L9_2 = PaperdollRequestBus
  L9_2 = L9_2.Event
  L9_2 = L9_2.HasLevelRequirementForSlot
  L10_2 = L3_2
  L11_2 = L8_2
  L9_2 = L9_2(L10_2, L11_2)
  L9_2 = PaperdollRequestBus
  L9_2 = L9_2.Event
  L9_2 = L9_2.HasAchievementRequirementForSlot
  L10_2 = L3_2
  L11_2 = L8_2
  L9_2 = L9_2(L10_2, L11_2)
  L9_2 = PaperdollRequestBus
  L9_2 = L9_2.Event
  L9_2 = L9_2.HasTradeskillRankRequirementForSlot
  L10_2 = L3_2
  L11_2 = L8_2
  L9_2 = L9_2(L10_2, L11_2)
  L9_2 = not L9_2 or L9_2
  if not L9_2 then
    L10_2 = true
    return L10_2
  else
    L10_2 = false
    return L10_2
  end
end

L1_1.IsWeaponSlotSelectionAvailable = L5_1

function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L4_2 = L0_1
  L5_2 = L4_2
  L4_2 = L4_2.GetDataFromNode
  L6_2 = "Hud.LocalPlayer.HudComponent.PaperdollEntityId"
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = nil
  if A3_2 == 0 then
    L6_2 = PaperdollRequestBus
    L6_2 = L6_2.Event
    L6_2 = L6_2.GetSlot
    L7_2 = L4_2
    L8_2 = tonumber
    L9_2 = A1_2
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L8_2(L9_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    L5_2 = L6_2
  else
    L6_2 = PaperdollRequestBus
    L6_2 = L6_2.Event
    L6_2 = L6_2.GetLoadoutItemByKey
    L7_2 = L4_2
    L8_2 = tonumber
    L9_2 = A1_2
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L8_2(L9_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    L5_2 = L6_2
  end
  if L5_2 then
    L7_2 = L5_2
    L6_2 = L5_2.IsValid
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L7_2 = L5_2
      L6_2 = L5_2.GetEquipSlots
      L6_2 = L6_2(L7_2)
      L7_2 = L6_2[A2_2]
      L8_2 = A0_2.nameToPaperdollSlotMap
      L8_2 = L8_2[L7_2]
      if L8_2 then
        L9_2 = PaperdollRequestBus
        L9_2 = L9_2.Event
        L9_2 = L9_2.HasLevelRequirementForSlot
        L10_2 = L4_2
        L11_2 = L8_2
        L9_2 = L9_2(L10_2, L11_2)
        L9_2 = PaperdollRequestBus
        L9_2 = L9_2.Event
        L9_2 = L9_2.HasAchievementRequirementForSlot
        L10_2 = L4_2
        L11_2 = L8_2
        L9_2 = L9_2(L10_2, L11_2)
        L9_2 = PaperdollRequestBus
        L9_2 = L9_2.Event
        L9_2 = L9_2.HasTradeskillRankRequirementForSlot
        L10_2 = L4_2
        L11_2 = L8_2
        L9_2 = L9_2(L10_2, L11_2)
        L9_2 = not L9_2 or L9_2
        L10_2 = PaperdollRequestBus
        L10_2 = L10_2.Event
        L10_2 = L10_2.GetSlot
        L11_2 = L4_2
        L12_2 = L8_2
        L10_2 = L10_2(L11_2, L12_2)
        if not L9_2 then
          L12_2 = A0_2
          L11_2 = A0_2.EquipItem
          L13_2 = A1_2
          L14_2 = L7_2
          L15_2 = 1
          L16_2 = nil
          L17_2 = 0
          L18_2 = nil
          L19_2 = true
          L20_2 = A3_2
          L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
        end
      end
    end
  end
end

L1_1.SwapEquippedWeapons = L5_1

function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L0_1
  L4_2 = L3_2
  L3_2 = L3_2.GetDataFromNode
  L5_2 = "Hud.LocalPlayer.HudComponent.InventoryEntityId"
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.inventoryId = L3_2
  L4_2 = A0_2
  L3_2 = A0_2.EquipItemtoWeaponSlot
  L5_2 = A1_2
  L6_2 = A0_2.inventoryId
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end

L1_1.EquipWeaponSlotFromInventory = L5_1

function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L6_2 = L0_1
  L7_2 = L6_2
  L6_2 = L6_2.GetDataFromNode
  L8_2 = "Hud.LocalPlayer.HudComponent.PaperdollEntityId"
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = nil
  if A4_2 ~= nil then
    L8_2 = PaperdollRequestBus
    L8_2 = L8_2.Event
    L8_2 = L8_2.GetLoadoutItemByKey
    L9_2 = L6_2
    L10_2 = A1_2
    L8_2 = L8_2(L9_2, L10_2)
    L7_2 = L8_2
  else
    L8_2 = ContainerRequestBus
    L8_2 = L8_2.Event
    L8_2 = L8_2.GetSlot
    L9_2 = A2_2
    L10_2 = A1_2
    L8_2 = L8_2(L9_2, L10_2)
    L7_2 = L8_2
  end
  if L7_2 then
    L9_2 = L7_2
    L8_2 = L7_2.IsValid
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L9_2 = L7_2
      L8_2 = L7_2.GetEquipSlots
      L8_2 = L8_2(L9_2)
      L9_2 = L8_2[A3_2]
      L10_2 = A0_2.nameToPaperdollSlotMap
      L10_2 = L10_2[L9_2]
      if L10_2 then
        L11_2 = PaperdollRequestBus
        L11_2 = L11_2.Event
        L11_2 = L11_2.HasLevelRequirementForSlot
        L12_2 = L6_2
        L13_2 = L10_2
        L11_2 = L11_2(L12_2, L13_2)
        L11_2 = PaperdollRequestBus
        L11_2 = L11_2.Event
        L11_2 = L11_2.HasAchievementRequirementForSlot
        L12_2 = L6_2
        L13_2 = L10_2
        L11_2 = L11_2(L12_2, L13_2)
        L11_2 = PaperdollRequestBus
        L11_2 = L11_2.Event
        L11_2 = L11_2.HasTradeskillRankRequirementForSlot
        L12_2 = L6_2
        L13_2 = L10_2
        L11_2 = L11_2(L12_2, L13_2)
        L11_2 = not L11_2 or L11_2
        L12_2 = PaperdollRequestBus
        L12_2 = L12_2.Event
        L12_2 = L12_2.GetSlot
        L13_2 = L6_2
        L14_2 = L10_2
        L12_2 = L12_2(L13_2, L14_2)
        if not L11_2 then
          L14_2 = L7_2
          L13_2 = L7_2.GetStackSize
          L13_2 = L13_2(L14_2)
          L15_2 = A0_2
          L14_2 = A0_2.EquipItem
          L16_2 = A1_2
          L17_2 = L9_2
          L18_2 = L13_2
          L19_2 = A2_2
          L20_2 = A4_2
          L21_2 = A5_2
          L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
        end
      end
    end
  end
end

L1_1.EquipItemtoWeaponSlot = L5_1

function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = L0_1
  L4_2 = L3_2
  L3_2 = L3_2.GetDataFromNode
  L5_2 = "Hud.LocalPlayer.HudComponent.InventoryEntityId"
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.inventoryId = L3_2
  L4_2 = A0_2
  L3_2 = A0_2.EquipItemToBestSlot
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2.inventoryId
  L8_2 = nil
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end

L1_1.EquipItemFromInventory = L5_1

function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2
  L7_2 = L0_1
  L8_2 = L7_2
  L7_2 = L7_2.GetDataFromNode
  L9_2 = "Hud.LocalPlayer.HudComponent.PaperdollEntityId"
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = nil
  if A5_2 ~= nil then
    L9_2 = PaperdollRequestBus
    L9_2 = L9_2.Event
    L9_2 = L9_2.GetLoadoutItemByKey
    L10_2 = L7_2
    L11_2 = A1_2
    L9_2 = L9_2(L10_2, L11_2)
    L8_2 = L9_2
  else
    L9_2 = ContainerRequestBus
    L9_2 = L9_2.Event
    L9_2 = L9_2.GetSlot
    L10_2 = A3_2
    L11_2 = A1_2
    L9_2 = L9_2(L10_2, L11_2)
    L8_2 = L9_2
  end
  if L8_2 then
    L10_2 = L8_2
    L9_2 = L8_2.IsValid
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L10_2 = L8_2
      L9_2 = L8_2.GetItemType
      L9_2 = L9_2(L10_2)
      L11_2 = L8_2
      L10_2 = L8_2.HasItemClass
      L12_2 = eItemClass_UI_Tools
      L10_2 = L10_2(L11_2, L12_2)
      if not L10_2 then
        L11_2 = L8_2
        L10_2 = L8_2.HasItemClass
        L12_2 = eItemClass_UI_Instruments
        L10_2 = L10_2(L11_2, L12_2)
      end
      L12_2 = L8_2
      L11_2 = L8_2.HasItemClass
      L13_2 = eItemClass_MountAttachment
      L11_2 = L11_2(L12_2, L13_2)
      L12_2 = _UPVALUE1_
      L13_2 = L12_2
      L12_2 = L12_2.GetItem
      L15_2 = L8_2
      L14_2 = L8_2.GetItemId
      L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2 = L14_2(L15_2)
      L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
      L13_2 = ItemDataManagerBus
      L13_2 = L13_2.Broadcast
      L13_2 = L13_2.GetWeaponGatheringType
      L15_2 = L8_2
      L14_2 = L8_2.GetItemId
      L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2 = L14_2(L15_2)
      L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
      L14_2 = L9_2 == "Weapon" and L14_2
      if A2_2 and not L14_2 then
        return
      end
      L15_2 = A4_2
      if not L15_2 or L15_2 <= 0 then
        L17_2 = L8_2
        L16_2 = L8_2.GetStackSize
        L16_2 = L16_2(L17_2)
        L15_2 = L16_2
      end
      L17_2 = L8_2
      L16_2 = L8_2.GetEquipSlots
      L16_2 = L16_2(L17_2)
      L17_2 = L0_1
      L18_2 = L17_2
      L17_2 = L17_2.GetDataFromNode
      L19_2 = "Hud.LocalPlayer.HudComponent.GDERootEntityId"
      L17_2 = L17_2(L18_2, L19_2)
      L19_2 = L8_2
      L18_2 = L8_2.CanEquipItem
      L20_2 = L17_2
      L18_2 = L18_2(L19_2, L20_2)
      if not L18_2 then
        L20_2 = L8_2
        L19_2 = L8_2.IsEquippable
        L19_2 = L19_2(L20_2)
        if L19_2 then
          L20_2 = A0_2
          L19_2 = A0_2.ShowCannotEquipNotification
          L21_2 = L8_2
          L19_2(L20_2, L21_2)
          return
        end
      end
      if L10_2 then
        L19_2 = 1
        L20_2 = #L16_2
        L21_2 = 1
        for L22_2 = L19_2, L20_2, L21_2 do
          L23_2 = L16_2[L22_2]
          if L23_2 == "chopping-slot" or L23_2 == "cutting-slot" or L23_2 == "fishing-slot" or L23_2 == "instrument-flute-slot" or L23_2 == "instrument-guitar-slot" or L23_2 == "instrument-mandolin-slot" or L23_2 == "instrument-uprightbass-slot" or L23_2 == "instrument-drums-slot" or L23_2 == "mining-slot" or L23_2 == "dressing-slot" or L23_2 == "azothstaff-slot" then
            L25_2 = A0_2
            L24_2 = A0_2.EquipItem
            L26_2 = A1_2
            L27_2 = L23_2
            L28_2 = L15_2
            L29_2 = A3_2
            L30_2 = A5_2
            L31_2 = A6_2
            L24_2(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
            return
          end
        end
      end
      L20_2 = L8_2
      L19_2 = L8_2.HasItemClass
      L21_2 = eItemClass_UI_Runes
      L19_2 = L19_2(L20_2, L21_2)
      if L19_2 then
        L21_2 = A0_2
        L20_2 = A0_2.EquipItem
        L22_2 = A1_2
        L23_2 = "heart-gem-slot"
        L24_2 = 1
        L25_2 = A3_2
        L26_2 = A5_2
        L27_2 = A6_2
        L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
      end
      L21_2 = L8_2
      L20_2 = L8_2.GetMaxStackSize
      L20_2 = L20_2(L21_2)
      if 1 < L20_2 then
        L20_2 = 1
        L21_2 = #L16_2
        L22_2 = 1
        for L23_2 = L20_2, L21_2, L22_2 do
          L24_2 = L16_2[L23_2]
          L25_2 = A0_2.nameToPaperdollSlotMap
          L25_2 = L25_2[L24_2]
          if L25_2 then
            L26_2 = PaperdollRequestBus
            L26_2 = L26_2.Event
            L26_2 = L26_2.GetSlot
            L27_2 = L7_2
            L28_2 = L25_2
            L26_2 = L26_2(L27_2, L28_2)
            if L26_2 then
              L28_2 = L26_2
              L27_2 = L26_2.IsValid
              L27_2 = L27_2(L28_2)
              if L27_2 then
                L28_2 = L26_2
                L27_2 = L26_2.GetItemDescriptor
                L27_2 = L27_2(L28_2)
                L29_2 = L8_2
                L28_2 = L8_2.GetItemDescriptor
                L28_2 = L28_2(L29_2)
                L30_2 = L27_2
                L29_2 = L27_2.MatchesDescriptorExactly
                L31_2 = L28_2
                L32_2 = false
                L33_2 = false
                L34_2 = false
                L29_2 = L29_2(L30_2, L31_2, L32_2, L33_2, L34_2)
                if L29_2 then
                  L30_2 = L26_2
                  L29_2 = L26_2.GetStackSize
                  L29_2 = L29_2(L30_2)
                  L31_2 = L26_2
                  L30_2 = L26_2.GetMaxStackSize
                  L30_2 = L30_2(L31_2)
                  if L29_2 < L30_2 then
                    L30_2 = A0_2
                    L29_2 = A0_2.EquipItem
                    L31_2 = A1_2
                    L32_2 = L24_2
                    L33_2 = L15_2
                    L34_2 = A3_2
                    L35_2 = A5_2
                    L36_2 = A6_2
                    L29_2(L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
                    return
                  end
                end
              end
            end
          end
        end
      end
      if L14_2 then
        L20_2 = _UPVALUE1_
        L21_2 = L20_2
        L20_2 = L20_2.GetTooltipDisplayInfo
        L23_2 = L8_2
        L22_2 = L8_2.GetItemDescriptor
        L22_2 = L22_2(L23_2)
        L23_2 = L8_2
        L20_2 = L20_2(L21_2, L22_2, L23_2)
        L21_2 = nil
        L22_2 = {}
        L23_2 = ipairs
        L24_2 = _UPVALUE2_
        L23_2, L24_2, L25_2 = L23_2(L24_2)
        for L26_2, L27_2 in L23_2, L24_2, L25_2 do
          L28_2 = A0_2.nameToPaperdollSlotMap
          L28_2 = L28_2[L27_2]
          L29_2 = PaperdollRequestBus
          L29_2 = L29_2.Event
          L29_2 = L29_2.GetSlot
          L30_2 = L7_2
          L31_2 = L28_2
          L29_2 = L29_2(L30_2, L31_2)
          L30_2 = _UPVALUE1_
          L31_2 = L30_2
          L30_2 = L30_2.ShouldTooltipCompare
          L32_2 = L20_2
          L33_2 = L29_2
          L30_2, L31_2 = L30_2(L31_2, L32_2, L33_2)
          if L30_2 then
            L32_2 = table
            L32_2 = L32_2.insert
            L33_2 = L22_2
            L34_2 = {}
            L34_2.tdi = L31_2
            L34_2.equipSlot = L27_2
            L32_2(L33_2, L34_2)
          end
        end
        L23_2 = ipairs
        L24_2 = L22_2
        L23_2, L24_2, L25_2 = L23_2(L24_2)
        for L26_2, L27_2 in L23_2, L24_2, L25_2 do
          if L21_2 then
            L28_2 = L21_2.tdi
            L28_2 = L28_2.gearScore
            L29_2 = L27_2.tdi
            L29_2 = L29_2.gearScore
            if not (L28_2 < L29_2) then
              goto lbl_247
            end
          end
          L21_2 = L27_2
          ::lbl_247::
        end
        if L21_2 then
          L24_2 = A0_2
          L23_2 = A0_2.EquipItem
          L25_2 = A1_2
          L26_2 = L21_2.equipSlot
          L27_2 = L15_2
          L28_2 = A3_2
          L29_2 = A5_2
          L30_2 = A6_2
          L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
          return
        end
      end
      L20_2 = nil
      L21_2 = 1
      L22_2 = #L16_2
      L23_2 = 1
      for L24_2 = L21_2, L22_2, L23_2 do
        L25_2 = L16_2[L24_2]
        L26_2 = A0_2.nameToPaperdollSlotMap
        L26_2 = L26_2[L25_2]
        if L26_2 then
          L27_2 = PaperdollRequestBus
          L27_2 = L27_2.Event
          L27_2 = L27_2.HasLevelRequirementForSlot
          L28_2 = L7_2
          L29_2 = L26_2
          L27_2 = L27_2(L28_2, L29_2)
          L27_2 = PaperdollRequestBus
          L27_2 = L27_2.Event
          L27_2 = L27_2.HasAchievementRequirementForSlot
          L28_2 = L7_2
          L29_2 = L26_2
          L27_2 = L27_2(L28_2, L29_2)
          L27_2 = PaperdollRequestBus
          L27_2 = L27_2.Event
          L27_2 = L27_2.HasTradeskillRankRequirementForSlot
          L28_2 = L7_2
          L29_2 = L26_2
          L27_2 = L27_2(L28_2, L29_2)
          L27_2 = not L27_2 or L27_2
          L28_2 = PaperdollRequestBus
          L28_2 = L28_2.Event
          L28_2 = L28_2.GetSlot
          L29_2 = L7_2
          L30_2 = L26_2
          L28_2 = L28_2(L29_2, L30_2)
          if not L27_2 then
            if L28_2 then
              L30_2 = L28_2
              L29_2 = L28_2.IsValid
              L29_2 = L29_2(L30_2)
              if L29_2 then
                goto lbl_319
              end
            end
            L30_2 = A0_2
            L29_2 = A0_2.EquipItem
            L31_2 = A1_2
            L32_2 = L25_2
            L33_2 = L15_2
            L34_2 = A3_2
            L35_2 = A5_2
            L36_2 = A6_2
            L29_2(L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
            do return end
            ::lbl_319::
            L20_2 = L25_2
          end
        end
      end
      if L14_2 then
        L22_2 = L8_2
        L21_2 = L8_2.HasItemClass
        L23_2 = eItemClass_EquippableOffHand
        L21_2 = L21_2(L22_2, L23_2)
        if L21_2 then
          L21_2 = #L16_2
          if 0 < L21_2 then
            L22_2 = A0_2
            L21_2 = A0_2.EquipItem
            L23_2 = A1_2
            L24_2 = L16_2[1]
            L25_2 = L15_2
            L26_2 = A3_2
            L27_2 = A5_2
            L28_2 = A6_2
            L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
          end
        else
          L21_2 = LocalPlayerUIRequestsBus
          L21_2 = L21_2.Broadcast
          L21_2 = L21_2.PaperdollGetWeaponAutoEquipSlot
          L21_2 = L21_2()
          L22_2 = 1
          L23_2 = #L16_2
          L24_2 = 1
          for L25_2 = L22_2, L23_2, L24_2 do
            L26_2 = L16_2[L25_2]
            if L26_2 == L21_2 then
              L27_2 = A0_2
              L26_2 = A0_2.EquipItem
              L28_2 = A1_2
              L29_2 = L21_2
              L30_2 = L15_2
              L31_2 = A3_2
              L32_2 = A5_2
              L33_2 = A6_2
              L26_2(L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
              break
            end
          end
        end
      elseif L20_2 then
        L22_2 = L20_2
        L21_2 = L20_2.find
        L23_2 = "bag-slot"
        L24_2 = 1
        L25_2 = true
        L21_2 = L21_2(L22_2, L23_2, L24_2, L25_2)
        if L21_2 then
          L21_2 = nil
          L22_2 = 1
          L23_2 = #L16_2
          L24_2 = 1
          for L25_2 = L22_2, L23_2, L24_2 do
            L26_2 = L16_2[L25_2]
            L27_2 = A0_2.nameToPaperdollSlotMap
            L27_2 = L27_2[L26_2]
            if L27_2 then
              L28_2 = PaperdollRequestBus
              L28_2 = L28_2.Event
              L28_2 = L28_2.HasLevelRequirementForSlot
              L29_2 = L7_2
              L30_2 = L27_2
              L28_2 = L28_2(L29_2, L30_2)
              L28_2 = not L28_2
              L29_2 = PaperdollRequestBus
              L29_2 = L29_2.Event
              L29_2 = L29_2.GetSlot
              L30_2 = L7_2
              L31_2 = L27_2
              L29_2 = L29_2(L30_2, L31_2)
              if not L28_2 and L29_2 then
                L31_2 = L29_2
                L30_2 = L29_2.IsValid
                L30_2 = L30_2(L31_2)
                if L30_2 then
                  L31_2 = L29_2
                  L30_2 = L29_2.GetGearScore
                  L30_2 = L30_2(L31_2)
                  if L21_2 == nil or L21_2 > L30_2 then
                    L20_2 = L26_2
                    L21_2 = L30_2
                  end
                end
              end
            end
          end
        end
        L22_2 = A0_2
        L21_2 = A0_2.EquipItem
        L23_2 = A1_2
        L24_2 = L20_2
        L25_2 = L15_2
        L26_2 = A3_2
        L27_2 = A5_2
        L28_2 = A6_2
        L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
      end
    end
  end
end

L1_1.EquipItemToBestSlot = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A1_2
  L2_2 = A1_2.GetItemId
  L2_2 = L2_2(L3_2)
  L3_2 = L0_1
  L4_2 = L3_2
  L3_2 = L3_2.GetDataFromNode
  L5_2 = "Hud.LocalPlayer.HudComponent.GDERootEntityId"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = NotificationData
  L4_2 = L4_2()
  L4_2.type = "Minor"
  L5_2 = _UPVALUE1_
  L6_2 = L5_2
  L5_2 = L5_2.GetItem
  L7_2 = L2_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2.requiredExpansionId
  L7_2 = eExpansionId_None
  if L6_2 ~= L7_2 then
    L6_2 = PlayerComponentRequestsBus
    L6_2 = L6_2.Event
    L6_2 = L6_2.GetExpansionData
    L7_2 = L3_2
    L8_2 = L5_2.requiredExpansionId
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = PlayerComponentRequestsBus
    L7_2 = L7_2.Event
    L7_2 = L7_2.IsExpansionOwnerScript
    L8_2 = L3_2
    L9_2 = L5_2.requiredExpansionId
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L4_2.text = "@inv_cannotequip"
    else
      L8_2 = GetLocalizedReplacementText
      L9_2 = "@inv_cannotequipversion"
      L10_2 = {}
      L11_2 = L6_2.name
      L10_2.expansionName = L11_2
      L8_2 = L8_2(L9_2, L10_2)
      L4_2.text = L8_2
    end
  else
    L6_2 = PlayerComponentRequestsBus
    L6_2 = L6_2.Event
    L6_2 = L6_2.GetOwnedExpansionData
    L7_2 = L3_2
    L6_2 = L6_2(L7_2)
    L7_2 = PlayerComponentRequestsBus
    L7_2 = L7_2.Event
    L7_2 = L7_2.IsExpansionOwnerScript
    L8_2 = L3_2
    L9_2 = eExpansionId_Expansion2023
    L7_2 = L7_2(L8_2, L9_2)
    if not L7_2 then
      L9_2 = A1_2
      L8_2 = A1_2.GetGearScore
      L8_2 = L8_2(L9_2)
      L9_2 = L6_2.maxEquipGS
      if L8_2 > L9_2 then
        L8_2 = PlayerComponentRequestsBus
        L8_2 = L8_2.Event
        L8_2 = L8_2.GetExpansionData
        L9_2 = L3_2
        L10_2 = eExpansionId_Expansion2023
        L8_2 = L8_2(L9_2, L10_2)
        L9_2 = GetLocalizedReplacementText
        L10_2 = "@inv_cannotequipversionlevel"
        L11_2 = {}
        L12_2 = L8_2.name
        L11_2.expansionName = L12_2
        L12_2 = L6_2.maxEquipGS
        L11_2.expansionMaxEquipGS = L12_2
        L9_2 = L9_2(L10_2, L11_2)
        L4_2.text = L9_2
    end
    else
      L4_2.text = "@inv_cannotequip"
    end
  end
  L6_2 = UiNotificationsBus
  L6_2 = L6_2.Broadcast
  L6_2 = L6_2.EnqueueNotification
  L7_2 = L4_2
  L6_2(L7_2)
end

L1_1.ShowCannotEquipNotification = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = eItemClass_Weapon
  if A1_2 == L3_2 then
    L2_2 = "@ui_weapon"
  else
    L3_2 = eItemClass_Armor
    if A1_2 == L3_2 then
      L2_2 = "@ui_armor"
    else
      L3_2 = eItemClass_Jewelry
      if A1_2 == L3_2 then
        L2_2 = "@ui_trinket"
      end
    end
  end
  if L2_2 then
    L3_2 = GetLocalizedReplacementText
    L4_2 = "@ui_artifact_already_equipped"
    L5_2 = {}
    L5_2.type = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    L5_2 = A0_2
    L4_2 = A0_2.TriggerEquipErrorNotification
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end

L1_1.ShowArtifactAlreadyEquippedNotification = L5_1

function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2)
  local L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L9_2 = L0_1
  L10_2 = L9_2
  L9_2 = L9_2.GetDataFromNode
  L11_2 = "Hud.LocalPlayer.HudComponent.PaperdollEntityId"
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = A0_2.nameToPaperdollSlotMap
  L10_2 = L10_2[A2_2]
  if A7_2 then
    L11_2 = A1_2
    if A8_2 ~= 0 then
      L12_2 = PaperdollRequestBus
      L12_2 = L12_2.Event
      L12_2 = L12_2.GetSlotTypeByItemKey
      L13_2 = L9_2
      L14_2 = A8_2
      L15_2 = A1_2
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      L11_2 = L12_2
    end
    L12_2 = LocalPlayerUIRequestsBus
    L12_2 = L12_2.Broadcast
    L12_2 = L12_2.PaperdollSwapItems
    L13_2 = tonumber
    L14_2 = L11_2
    L13_2 = L13_2(L14_2)
    L14_2 = A2_2
    L15_2 = A8_2
    L12_2(L13_2, L14_2, L15_2)
  elseif A5_2 ~= nil then
    L11_2 = ItemLocation
    L11_2 = L11_2()
    L12_2 = tonumber
    L13_2 = A1_2
    L12_2 = L12_2(L13_2)
    L11_2.containerSlotId = L12_2
    L12_2 = eItemContainerType_GearSetStorage
    L11_2.containerType = L12_2
    L11_2.quantity = A3_2
    if A6_2 ~= nil then
      L12_2 = PaperdollRequestBus
      L12_2 = L12_2.Event
      L12_2 = L12_2.RequestAddItemToLoadout
      L13_2 = L9_2
      L14_2 = L11_2
      L15_2 = L10_2
      L16_2 = A6_2
      L12_2(L13_2, L14_2, L15_2, L16_2)
    else
      L12_2 = PaperdollRequestBus
      L12_2 = L12_2.Event
      L12_2 = L12_2.RequestAddItemToLoadout
      L13_2 = L9_2
      L14_2 = L11_2
      L15_2 = L10_2
      L16_2 = 0
      L12_2(L13_2, L14_2, L15_2, L16_2)
    end
  elseif A6_2 ~= nil then
    L11_2 = ItemLocation
    L11_2 = L11_2()
    L12_2 = tonumber
    L13_2 = A1_2
    L12_2 = L12_2(L13_2)
    L11_2.containerSlotId = L12_2
    L12_2 = eItemContainerType_Container
    L11_2.containerType = L12_2
    L11_2.quantity = A3_2
    L12_2 = PaperdollRequestBus
    L12_2 = L12_2.Event
    L12_2 = L12_2.RequestAddItemToLoadout
    L13_2 = L9_2
    L14_2 = L11_2
    L15_2 = L10_2
    L16_2 = A6_2
    L12_2(L13_2, L14_2, L15_2, L16_2)
  else
    L11_2 = LocalPlayerUIRequestsBus
    L11_2 = L11_2.Broadcast
    L11_2 = L11_2.EquipItem
    L12_2 = tonumber
    L13_2 = A1_2
    L12_2 = L12_2(L13_2)
    L13_2 = A2_2
    L14_2 = A3_2
    L15_2 = A4_2
    L11_2(L12_2, L13_2, L14_2, L15_2)
  end
end

L1_1.OnPopupResult_Internal = L5_1

function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A2_2 == "bind_on_equip" then
    L3_2 = ePopupResult_Yes
    if A1_2 == L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2.OnPopupResult_Internal
      L5_2 = A0_2.bindOnEquipPopupData
      L5_2 = L5_2.slotName
      L6_2 = A0_2.bindOnEquipPopupData
      L6_2 = L6_2.equipSlot
      L7_2 = A0_2.bindOnEquipPopupData
      L7_2 = L7_2.stackSize
      L8_2 = A0_2.bindOnEquipPopupData
      L8_2 = L8_2.sourceContainerId
      L9_2 = A0_2.bindOnEquipPopupData
      L9_2 = L9_2.sourceContainerIndex
      L10_2 = A0_2.bindOnEquipPopupData
      L10_2 = L10_2.targetContainerIndex
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    end
  end
end

L1_1.OnPopupResult = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = LyShineDataLayerBus
  L2_2 = L2_2.Broadcast
  L2_2 = L2_2.SetData
  L3_2 = "Hud.LocalPlayer.Flyout.IsVisible"
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = NotificationData
  L2_2 = L2_2()
  L2_2.type = "Minor"
  L2_2.text = A1_2
  L3_2 = UiNotificationsBus
  L3_2 = L3_2.Broadcast
  L3_2 = L3_2.EnqueueNotification
  L4_2 = L2_2
  L3_2(L4_2)
end

L1_1.TriggerEquipErrorNotification = L5_1

function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = L0_1
  L4_2 = L3_2
  L3_2 = L3_2.GetDataFromNode
  L5_2 = "Hud.LocalPlayer.HudComponent.PlayerEntityId"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = GameModeParticipantComponentRequestBus
  L4_2 = L4_2.Event
  L4_2 = L4_2.IsInCanEquipInCombatGameMode
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L5_2 = false
    return L5_2
  end
  L5_2 = L0_1
  L6_2 = L5_2
  L5_2 = L5_2.GetDataFromNode
  L7_2 = "Hud.LocalPlayer.CombatStatus.IsInCombat"
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L6_2 = PaperdollRequestBus
    L6_2 = L6_2.Event
    L6_2 = L6_2.IsSlotLockedInCombat
    L7_2 = A1_2
    L8_2 = A2_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L7_2 = true
      return L7_2
    end
  end
  L6_2 = false
  return L6_2
end

L1_1.IsInCombatAndSlotIsLocked = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.TriggerEquipErrorNotification
  L4_2 = "@ui_equipment_combat_locked_error"
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.GetNameFromPaperDollSlot
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L3_2 = LyShineDataLayerBus
  L3_2 = L3_2.Broadcast
  L3_2 = L3_2.SetData
  L4_2 = "Hud.LocalPlayer.Paperdoll.PulseEquipmentSlotError"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end

L1_1.TriggerEquipmentSlotCombatLockedNotifications = L5_1

function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2)
  local L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L9_2 = A0_2.nameToPaperdollSlotMap
  L9_2 = L9_2[A2_2]
  L10_2 = L0_1
  L11_2 = L10_2
  L10_2 = L10_2.GetDataFromNode
  L12_2 = "Hud.LocalPlayer.HudComponent.PaperdollEntityId"
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = nil
  if A5_2 ~= nil and not A7_2 then
    L12_2 = PaperdollRequestBus
    L12_2 = L12_2.Event
    L12_2 = L12_2.GetLoadoutItemByKey
    L13_2 = L10_2
    L14_2 = A1_2
    L12_2 = L12_2(L13_2, L14_2)
    L11_2 = L12_2
  elseif A7_2 then
    if A8_2 == 0 then
      L12_2 = PaperdollRequestBus
      L12_2 = L12_2.Event
      L12_2 = L12_2.GetSlot
      L13_2 = L10_2
      L14_2 = tonumber
      L15_2 = A1_2
      L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L14_2(L15_2)
      L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
      L11_2 = L12_2
    else
      L12_2 = PaperdollRequestBus
      L12_2 = L12_2.Event
      L12_2 = L12_2.GetLoadoutItemByKey
      L13_2 = L10_2
      L14_2 = tonumber
      L15_2 = A1_2
      L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L14_2(L15_2)
      L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
      L11_2 = L12_2
    end
  else
    L12_2 = ContainerRequestBus
    L12_2 = L12_2.Event
    L12_2 = L12_2.GetSlot
    L13_2 = A4_2
    L14_2 = A1_2
    L12_2 = L12_2(L13_2, L14_2)
    L11_2 = L12_2
  end
  if L9_2 then
    L12_2 = PaperdollRequestBus
    L12_2 = L12_2.Event
    L12_2 = L12_2.SlotBlockedByCooldown
    L13_2 = L10_2
    L14_2 = L9_2
    L12_2 = L12_2(L13_2, L14_2)
    if L12_2 then
      L14_2 = A0_2
      L13_2 = A0_2.TriggerEquipErrorNotification
      L15_2 = "@ui_equipment_cooldown_error"
      L13_2(L14_2, L15_2)
      return
    end
    L14_2 = A0_2
    L13_2 = A0_2.IsInCombatAndSlotIsLocked
    L15_2 = L10_2
    L16_2 = L9_2
    L13_2 = L13_2(L14_2, L15_2, L16_2)
    if L13_2 then
      L14_2 = A0_2
      L13_2 = A0_2.TriggerEquipmentSlotCombatLockedNotifications
      L15_2 = L9_2
      L13_2(L14_2, L15_2)
      return
    end
    L13_2 = tostring
    L14_2 = ePaperDollSlotTypes_MainHandOption1
    L13_2 = L13_2(L14_2)
    if A1_2 == L13_2 then
      L13_2 = ePaperDollSlotTypes_MainHandOption2
    end
    L13_2 = L9_2 == L13_2
    L14_2 = PaperdollRequestBus
    L14_2 = L14_2.Event
    L14_2 = L14_2.CanEquipItemFromSlot
    L15_2 = L10_2
    L16_2 = L11_2
    L17_2 = L9_2
    L18_2 = L13_2
    L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
    if not L14_2 then
      L15_2 = L11_2
      L14_2 = L11_2.HasItemClass
      L16_2 = eItemClass_Artifact
      L14_2 = L14_2(L15_2, L16_2)
      if L14_2 then
        L15_2 = L11_2
        L14_2 = L11_2.GetItemDescriptor
        L14_2 = L14_2(L15_2)
        L15_2 = DynamicBus
        L15_2 = L15_2.EquipmentBus
        L15_2 = L15_2.Broadcast
        L15_2 = L15_2.GetArtifactOfTypeEquipped
        L16_2 = L14_2
        L15_2 = L15_2(L16_2)
        if L15_2 then
          L17_2 = A0_2
          L16_2 = A0_2.ShowArtifactAlreadyEquippedNotification
          L18_2 = L15_2
          L16_2(L17_2, L18_2)
          return
        end
      end
      L14_2 = PaperdollRequestBus
      L14_2 = L14_2.Event
      L14_2 = L14_2.HasAchievementRequirementForSlot
      L15_2 = L10_2
      L16_2 = L9_2
      L14_2 = L14_2(L15_2, L16_2)
      if not L14_2 then
        L15_2 = A0_2
        L14_2 = A0_2.TriggerEquipErrorNotification
        L16_2 = "@inv_cannotequip"
        L14_2(L15_2, L16_2)
      else
        L15_2 = A0_2
        L14_2 = A0_2.TriggerEquipErrorNotification
        L16_2 = "@inv_cannotequipinslot"
        L14_2(L15_2, L16_2)
      end
      return
    end
  end
  L13_2 = L11_2
  L12_2 = L11_2.IsEquippable
  L12_2 = L12_2(L13_2)
  if not L12_2 then
    L13_2 = A0_2
    L12_2 = A0_2.TriggerEquipErrorNotification
    L14_2 = "@inv_cannotequipitem"
    L12_2(L13_2, L14_2)
    return
  end
  L13_2 = L11_2
  L12_2 = L11_2.CanEquipInSlot
  L14_2 = L9_2
  L12_2 = L12_2(L13_2, L14_2)
  if not L12_2 then
    L14_2 = A0_2
    L13_2 = A0_2.TriggerEquipErrorNotification
    L15_2 = "@inv_cannotequipinslot"
    L13_2(L14_2, L15_2)
    return
  end
  L13_2 = L0_1
  L14_2 = L13_2
  L13_2 = L13_2.GetDataFromNode
  L15_2 = "Hud.LocalPlayer.HudComponent.GDERootEntityId"
  L13_2 = L13_2(L14_2, L15_2)
  L15_2 = L11_2
  L14_2 = L11_2.CanEquipItem
  L16_2 = L13_2
  L14_2 = L14_2(L15_2, L16_2)
  if not L14_2 then
    L16_2 = L11_2
    L15_2 = L11_2.IsEquippable
    L15_2 = L15_2(L16_2)
    if L15_2 then
      L16_2 = A0_2
      L15_2 = A0_2.ShowCannotEquipNotification
      L17_2 = L11_2
      L15_2(L16_2, L17_2)
      return
    end
  end
  L15_2 = L0_1
  L16_2 = L15_2
  L15_2 = L15_2.GetDataFromNode
  L17_2 = "Hud.LocalPlayer.HudComponent.PlayerEntityId"
  L15_2 = L15_2(L16_2, L17_2)
  L16_2 = PlayerComponentRequestsBus
  L16_2 = L16_2.Event
  L16_2 = L16_2.GetGlobalStorageEntityId
  L17_2 = L15_2
  L16_2 = L16_2(L17_2)
  L17_2 = L16_2 == A4_2
  if L17_2 then
    L18_2 = DynamicBus
    L18_2 = L18_2.CatContainer
    L18_2 = L18_2.Broadcast
    L18_2 = L18_2.SetStorageTransferAndEquipItemInfo
    L19_2 = A4_2
    L20_2 = A2_2
    L22_2 = L11_2
    L21_2 = L11_2.GetItemInstanceId
    L21_2 = L21_2(L22_2)
    L22_2 = A3_2
    L18_2(L19_2, L20_2, L21_2, L22_2)
  end
  L19_2 = L11_2
  L18_2 = L11_2.IsBindOnEquip
  L18_2 = L18_2(L19_2)
  if L18_2 then
    L19_2 = L11_2
    L18_2 = L11_2.IsBoundToPlayer
    L18_2 = L18_2(L19_2)
    if not L18_2 then
      L18_2 = {}
      L18_2.slotName = A1_2
      L18_2.equipSlot = A2_2
      L18_2.stackSize = A3_2
      L18_2.sourceContainerId = A4_2
      L18_2.sourceContainerIndex = A5_2
      L18_2.targetContainerIndex = A6_2
      A0_2.bindOnEquipPopupData = L18_2
      L18_2 = _UPVALUE1_
      L19_2 = L18_2
      L18_2 = L18_2.RequestPopup
      L20_2 = ePopupButtons_YesNo
      L21_2 = "@ui_bindOnEquip_title"
      L22_2 = "@ui_bindOnEquip_body"
      L23_2 = "bind_on_equip"
      L24_2 = A0_2
      L25_2 = A0_2.OnPopupResult
      L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
  end
  else
    L19_2 = A0_2
    L18_2 = A0_2.OnPopupResult_Internal
    L20_2 = A1_2
    L21_2 = A2_2
    L22_2 = A3_2
    L23_2 = A4_2
    L24_2 = A5_2
    L25_2 = A6_2
    L26_2 = A7_2
    L27_2 = A8_2
    L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  end
end

L1_1.EquipItem = L5_1
return L1_1
