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

            if (!once)
            {
                std::uintptr_t l_pcallfn = (uintptr_t)(Global::NewWorld + Offsets::Functions::Lua::lua_pcall);
                std::uintptr_t readStringFn = (uintptr_t)(Global::NewWorld + Offsets::Functions::Lua::lua_readerString);
                std::uintptr_t component_tick = (uintptr_t)(Global::NewWorld + Offsets::Functions::ComponentTick);

                MH_CreateHook((void*)component_tick, &Hooks::Component::ComponentApplicationTickHook, reinterpret_cast<void**>(&Hooks::Component::ComponentApplicationTick_o));
                MH_CreateHook((void*)l_pcallfn, &Hooks::lua_pcall_hook, reinterpret_cast<void**>(&Hooks::lua_pcall_original)); // -- load lua scripts

                MH_CreateHook((void*)readStringFn, &Hooks::reader_string_hook, reinterpret_cast<void**>(&Hooks::reader_string_original));// -- dump lua scripts

                printf(_("[/] Placed Hooks\n"));
                MH_EnableHook(MH_ALL_HOOKS);
                once = true;
            }
        }
    }

    void Entry() {
        while (true) {
            if (!Global::gEnv)continue;

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
                if (!Memory::SafeRead(node + 0x18, entity_ptr) || IsBadReadPtr((void*)entity_ptr, sizeof(uintptr_t)))
                    continue;

                Player* player = reinterpret_cast<Player*>(entity_ptr);
                
                uintptr_t container_name_ptr = 0;
                if (!Memory::SafeRead<uintptr_t>(entity_ptr + 0x38, container_name_ptr) || container_name_ptr == 0)
                    continue;

                std::string containerName;
                if (!Memory::ReadStringSafe(container_name_ptr, containerName, sizeof(std::string)))
                    continue;

                printf("container %p %s\n", reinterpret_cast<void*>(entity_ptr), containerName.c_str());
            }
        }
    }
}

#endif
