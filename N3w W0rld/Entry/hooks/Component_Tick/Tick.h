#ifndef Tick_H
#define Tick_H

#include "../../../SDK/sdk.h"

namespace NewWorld {
	namespace Hooks {

		namespace Component
		{
            template<typename T>
            static bool SafeRead(uintptr_t addr, T& out)
            {
                SIZE_T bytesRead = 0;
                return ReadProcessMemory(GetCurrentProcess(), (LPCVOID)addr, &out, sizeof(T), &bytesRead) && bytesRead == sizeof(T);
            }

            typedef void(*ComponentApplicationTick_s) (uintptr_t, float);
            ComponentApplicationTick_s ComponentApplicationTick_o = nullptr;

            void __fastcall ComponentApplicationTickHook(uintptr_t rcx, float deltaTime)
            {
                const uintptr_t headSlotAddr = rcx + 0xF0;
                uintptr_t listHead = 0;
                if (!SafeRead(headSlotAddr, listHead) || listHead == 0 || listHead == headSlotAddr) {
                    if (ComponentApplicationTick_o) ComponentApplicationTick_o(rcx, deltaTime);
                    return;
                }

                const size_t MAX_NODES = 5000;
                size_t count = 0;
                uintptr_t node = listHead;
                uintptr_t slotValue = listHead;
                std::vector<uintptr_t> tempEntities;
                tempEntities.reserve(4000);

                if (!SafeRead(headSlotAddr, slotValue)) slotValue = listHead;

                do
                {
                    uintptr_t next = 0;
                    if (!SafeRead(node, next)) break;

                    tempEntities.emplace_back(node);

                    ++count;
                    if (count >= MAX_NODES) break;
                    if (next == 0) break;

                    node = next;
                    SafeRead(headSlotAddr, slotValue);

                } while (node != slotValue);

                {
                    std::lock_guard<std::mutex> lock(Global::listMtx);
                    Global::EntityList.swap(tempEntities);
                }

                deltaTime += 0.009f;
                if (ComponentApplicationTick_o) ComponentApplicationTick_o(rcx, deltaTime);
            }

		}
	}
}

#endif