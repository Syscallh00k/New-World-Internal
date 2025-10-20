#ifndef ENTRY_H
#define ENTRY_H
#include "../../../SDK/sdk.h"

#include "hooks/HLua/HLua.h"
#include "hooks/Component_Tick/Tick.h"

namespace NewWorld {
    void Update() {
        bool once = false;

        while (true) {

            if (!Global::NewWorld)continue;

            Global::ISystem = *(uintptr_t*)(Global::NewWorld + Offsets::Global::MainSystem);

            Global::gEnv = *(uintptr_t*)(Global::NewWorld + Offsets::Global::MainEnviorment);

            ISystem* system = reinterpret_cast<ISystem*>(Global::ISystem);
            SSystemGlobalEnviornment* env = reinterpret_cast<SSystemGlobalEnviornment*>(Global::gEnv);

            Global::CCamera = system->GetCamera();

            Global::IConsole = system->GetIConsole();

            if (!once)
            {
                printf("ISystem = %p\n", Global::ISystem);
                printf("gEnv = %p\n", Global::gEnv);

                std::uintptr_t l_pcallfn = (uintptr_t)(Global::NewWorld + Offsets::Functions::Lua::lua_pcall);
                std::uintptr_t l_newstatefn = (uintptr_t)(Global::NewWorld + Offsets::Functions::Lua::lua_newstate);

                std::uintptr_t component_tick = (uintptr_t)(Global::NewWorld + Offsets::Functions::ComponentTick);
                printf("[/] Component Tick Function %p\n", component_tick);

                MH_Initialize();
                MH_CreateHook((void*)component_tick, &Hooks::Component::ComponentApplicationTickHook, reinterpret_cast<void**>(&Hooks::Component::ComponentApplicationTick_o));
                MH_CreateHook((void*)l_pcallfn, &Hooks::lua_pcall_hook, reinterpret_cast<void**>(&Hooks::lua_pcall_original));
                //MH_CreateHook((void*)l_newstatefn, &Hooks::NewStateHook, reinterpret_cast<void**>(&Hooks::NewState_original));

                printf("[/] Placed Hooks\n");
                MH_EnableHook(MH_ALL_HOOKS);
                once = true;
            }
        }
    }

    void Entry() {
        while (true) {
            if (!Global::ISystem || !Global::gEnv)continue;

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

                //printf("[%zu] Object: %s %p \n", i++, player->GetObjectName(), entity_ptr);
            }
        }
    }
}

#endif
