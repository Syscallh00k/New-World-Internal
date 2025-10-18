#ifndef ENTRY_H
#define ENTRY_H

#include "hooks/Component_Tick/Tick.h"

namespace NewWorld {

    void Update() {

        bool once = false;

        Global::NewWorld = (std::uintptr_t)(GetModuleHandle(NULL));
        if (!Global::NewWorld)
        {
            printf("[/] Failed To Get Process Image\n");
            return;
        }


        while (true) {

            if (!Global::NewWorld)continue;

            Global::ISystem = *(uintptr_t*)(Global::NewWorld + Offsets::Global::MainSystem); 

            Global::gEnv = *(uintptr_t*)(Global::NewWorld + Offsets::Global::MainEnviorment);

            if (!once)
            {
                printf("ISystem = %p\n", Global::ISystem);
                printf("gEnv = %p\n", Global::gEnv);

                std::uintptr_t component_tick = (uintptr_t)(Global::NewWorld + Offsets::Functions::ComponentTick);
                printf("[/] Component Tick Function %p\n", component_tick);

                MH_Initialize();
                MH_CreateHook((void*)component_tick, &Hooks::Component::ComponentApplicationTickHook, reinterpret_cast<void**>(&Hooks::Component::ComponentApplicationTick_o));

                MH_EnableHook((void*)component_tick);

                printf("[/] Component Tick Hook Placed\n");

                once = true;
            }
        }   
    }

	void Entry() {
		while (true) {
            if (!Global::ISystem || !Global::gEnv)continue;

            ISystem* system = reinterpret_cast<ISystem*>(Global::ISystem);

            Global::CCamera = system->GetCamera();

            Global::IConsole = system->GetIConsole();

            const char* local_user = system->GetLocalUser();

            std::vector<std::uintptr_t> list;
            {
                std::lock_guard<std::mutex> lock(Global::listMtx);
                list = Global::EntityList;
            }

            size_t i = 0;
            for (auto node : list)
            {
                if (!node) continue;

                uintptr_t entity_ptr = 0;
                if (!Memory::SafeRead(node + 0x18, entity_ptr) || !entity_ptr)
                    continue;

                Player* player = reinterpret_cast<Player*>(entity_ptr);

				printf("[%zu] Object: %s %p \n", i++, player->GetObjectName(), entity_ptr);
            }

            Sleep(5000);
		}
	}
}

#endif
