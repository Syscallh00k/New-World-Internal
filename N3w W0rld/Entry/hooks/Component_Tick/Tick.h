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
                uintptr_t listHeadAddr = rcx + 0xF0;
                uintptr_t firstNode = 0;
                if (!Memory::SafeRead(listHeadAddr, firstNode) || firstNode == 0 || firstNode == listHeadAddr) {
                    if (ComponentApplicationTick_o) ComponentApplicationTick_o(rcx, delta_time);
                    return;
                }

                const size_t MAX_NODES = 250;
                size_t count = 0;
                uintptr_t currentNode = firstNode;
                std::vector<uintptr_t> temp_objs;
                temp_objs.reserve(250);

                do
                {
                    temp_objs.emplace_back(currentNode);
                    ++count;

                    if (count >= MAX_NODES) break;

                    uintptr_t nextNode = 0;
                    if (!Memory::SafeRead(currentNode, nextNode) || nextNode == 0)
                        break;

                    currentNode = nextNode;

                } while (currentNode != listHeadAddr);

                {
                    std::lock_guard<std::mutex> lock(Global::listMtx);
                    Global::EntityList.swap(temp_objs);
                }

                if (ComponentApplicationTick_o) ComponentApplicationTick_o(rcx, delta_time);
            }
		}
	}
}

#endif