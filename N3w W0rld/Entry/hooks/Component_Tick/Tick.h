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
                uintptr_t entityMapPtr = rcx + 0xF0;

                int64_t elementCount = *reinterpret_cast<int64_t*>(entityMapPtr + 0x10);
                uintptr_t bucketsPtr = *reinterpret_cast<uintptr_t*>(entityMapPtr + 0x58);
                int64_t bucketCount = *reinterpret_cast<int64_t*>(entityMapPtr + 0x60);

                if (bucketsPtr > 0x10000 && elementCount > 0 && elementCount < 1000000 && bucketCount > 0)
                {
                    std::vector<uintptr_t> temp_entities;
                    temp_entities.reserve(static_cast<size_t>(elementCount));

                    for (int64_t i = 0; i < bucketCount && temp_entities.size() < elementCount; i++)
                    {
                        uintptr_t bucketAddr = bucketsPtr + (i * 16);

                        int64_t nodeCount = *reinterpret_cast<int64_t*>(bucketAddr);
                        uintptr_t firstNode = *reinterpret_cast<uintptr_t*>(bucketAddr + 8);

                        if (nodeCount > 0 && firstNode > 0x10000)
                        {
                            uintptr_t currentNode = firstNode;

                            for (int64_t j = 0; j < nodeCount && currentNode > 0x10000; j++)
                            {
                                uintptr_t entityPtr = *reinterpret_cast<uintptr_t*>(currentNode + 0x18);

                                if (entityPtr > 0x10000)
                                {
                                    temp_entities.push_back(entityPtr);
                                }

                                uintptr_t nextNode = *reinterpret_cast<uintptr_t*>(currentNode);
                                if (nextNode == currentNode || nextNode == 0 || nextNode < 0x10000)
                                    break;
                                currentNode = nextNode;
                            }
                        }
                    }

                    if (!temp_entities.empty())
                    {
                        std::lock_guard<std::mutex> lock(Global::listMtx);
                        Global::EntityList.swap(temp_entities);
                    }

                }
                if (ComponentApplicationTick_o)
                    ComponentApplicationTick_o(rcx, delta_time);
            }
        }
	}
}

#endif