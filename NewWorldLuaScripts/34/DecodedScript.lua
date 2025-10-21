local L0_1, L1_1, L2_1
L0_1 = g_Reflect
L1_1 = L0_1
L0_1 = L0_1.RequireReflectionCategory
L2_1 = eReflectionCategory_LocalPlayerCharacter_Progression
L0_1(L1_1, L2_1)
L0_1 = {}
L1_1 = {}
L0_1.tutorials = L1_1
L0_1.tickHandler = nil
L0_1.unboundKey = " "
L1_1 = RequireScript
L2_1 = "LyShineUI._Common.TutorialCommon"
L1_1 = L1_1(L2_1)

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  A0_2.requiredKeybinds = L1_2
  L1_2 = pairs
  L2_2 = _UPVALUE0_
  L2_2 = L2_2.RequiredKeybinds
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = pairs
    L7_2 = _UPVALUE0_
    L7_2 = L7_2.RequiredKeybinds
    L7_2 = L7_2[L4_2]
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      L11_2 = table
      L11_2 = L11_2.insert
      L12_2 = A0_2.requiredKeybinds
      L13_2 = {}
      L13_2.bindingName = L9_2
      L13_2.actionMapName = L4_2
      L11_2(L12_2, L13_2)
    end
  end
  L1_2 = LyShineManagerBus
  L1_2 = L1_2.Broadcast
  L1_2 = L1_2.GetLastActionInputDevice
  L1_2 = L1_2()
  A0_2.lastInputDevice = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.CheckRequiredKeybinds
  L1_2(L2_2)
end

L0_1.OnInit = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = RequireScript
  L3_2 = "LyShineUI.Tutorial.Tutorial_"
  L4_2 = A1_2
  L3_2 = L3_2 .. L4_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = Debug
    L3_2 = L3_2.Log
    L4_2 = "Loaded Tutorial_"
    L5_2 = A1_2
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
    L4_2 = L2_2
    L3_2 = L2_2.OnInit
    L3_2(L4_2)
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2.tutorials
    L5_2 = {}
    L5_2.table = L2_2
    L5_2.step = 1
    L3_2(L4_2, L5_2)
  else
    L3_2 = Debug
    L3_2 = L3_2.Log
    L4_2 = "Failed to Load Tutorial file: Tutorial_"
    L5_2 = A1_2
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
  end
  L3_2 = A0_2.tickHandler
  if not L3_2 then
    L3_2 = TickBus
    L3_2 = L3_2.Connect
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    A0_2.tickHandler = L3_2
  end
end

L0_1.LoadTutorial = L2_1

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = ipairs
  L4_2 = A0_2.tutorials
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.table
    L8_2 = L8_2.steps
    L9_2 = L7_2.step
    L8_2 = L8_2[L9_2]
    L9_2 = L7_2.table
    L10_2 = A1_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      L8_2 = L7_2.step
      L8_2 = L8_2 + 1
      L7_2.step = L8_2
      L8_2 = L7_2.step
      L9_2 = L7_2.table
      L9_2 = L9_2.steps
      L9_2 = #L9_2
      if L8_2 > L9_2 then
        L8_2 = table
        L8_2 = L8_2.remove
        L9_2 = A0_2.tutorials
        L10_2 = L6_2
        L8_2(L9_2, L10_2)
      end
    end
  end
end

L0_1.OnTick = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.tickHandler
  if L1_2 then
    L1_2 = A0_2.tickHandler
    L2_2 = L1_2
    L1_2 = L1_2.Disconnect
    L1_2(L2_2)
    A0_2.tickHandler = nil
  end
  L1_2 = ipairs
  L2_2 = A0_2.tutorials
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.table
    L7_2 = L6_2
    L6_2 = L6_2.OnShutdown
    L6_2(L7_2)
  end
  L1_2 = ClearTable
  L2_2 = A0_2.tutorials
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.ResetRequiredKeybinds
  L1_2(L2_2)
end

L0_1.OnShutdown = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = A0_2.requiredKeybinds
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2.requiredKeybinds
    L5_2 = L5_2[L4_2]
    L6_2 = LyShineManagerBus
    L6_2 = L6_2.Broadcast
    L6_2 = L6_2.IsKeybindBound
    L7_2 = L5_2.bindingName
    L8_2 = L5_2.actionMapName
    L6_2 = L6_2(L7_2, L8_2)
    if not L6_2 then
      L6_2 = GameRequestsBus
      L6_2 = L6_2.Broadcast
      L6_2 = L6_2.ResetActionMapAction
      L7_2 = L5_2.bindingName
      L8_2 = L5_2.actionMapName
      L6_2(L7_2, L8_2)
      L5_2.needsReset = true
    else
      L5_2.needsReset = nil
    end
  end
end

L0_1.CheckRequiredKeybinds = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = 1
  L2_2 = A0_2.requiredKeybinds
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2.requiredKeybinds
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2.needsReset
    if L6_2 then
      L6_2 = GameRequestsBus
      L6_2 = L6_2.Broadcast
      L6_2 = L6_2.RebindAction
      L7_2 = L5_2.bindingName
      L8_2 = L5_2.actionMapName
      L9_2 = A0_2.unboundKey
      L10_2 = A0_2.lastInputDevice
      L6_2(L7_2, L8_2, L9_2, L10_2)
      L5_2.needsReset = nil
    end
  end
end

L0_1.ResetRequiredKeybinds = L2_1
return L0_1
