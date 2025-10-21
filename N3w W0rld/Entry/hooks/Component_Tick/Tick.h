#ifndef Tick_H
#define Tick_H

namespace NewWorld {
	namespace Hooks {
		namespace Component
		{
            typedef void(*ComponentApplicationTick_s) (uintptr_t, float);
            ComponentApplicationTick_s ComponentApplicationTick_o = nullptr;
            static bool dumped = false;
            static uintptr_t best_state = 0;
            void __fastcall ComponentApplicationTickHook(uintptr_t rcx, float delta_time)
            {
               
                const uintptr_t shead_slot = rcx + 0xF0;
                uintptr_t listHead = 0;
                if (!Memory::SafeRead(shead_slot, listHead) || listHead == 0 || listHead == shead_slot) {
                    if (ComponentApplicationTick_o) ComponentApplicationTick_o(rcx, delta_time);
                    return;
                }

                const size_t MAX_NODES = 250;
                size_t count = 0;
                uintptr_t node = listHead;
                uintptr_t slot_value = listHead;
                std::vector<uintptr_t> temp_objs;
                temp_objs.reserve(250);

                if (!Memory::SafeRead(shead_slot, slot_value)) slot_value = listHead;

                do
                {
                    uintptr_t next = 0;
                    if (!Memory::SafeRead(node, next)) break;

                    temp_objs.emplace_back(node);

                    ++count;
                    if (count >= MAX_NODES) break;
                    if (next == 0) break;

                    node = next;
                    Memory::SafeRead(shead_slot, slot_value);

                } while (node != slot_value);

                {
                    std::lock_guard<std::mutex> lock(Global::listMtx);
                    Global::EntityList.swap(temp_objs);
                    temp_objs.clear();
                }

                delta_time += 0.009f;
                if (ComponentApplicationTick_o) ComponentApplicationTick_o(rcx, delta_time);
            }
		}
	}
}

#endif