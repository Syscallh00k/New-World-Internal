#ifndef ENTRY_H
#define ENTRY_H
#include "../../../SDK/sdk.h"

#include "hooks/Component_Tick/Tick.h"
#include "hooks/Lua_NewState/NewState.h"

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

            // script system execute file - https://github.com/aws/lumberyard/blob/413ecaf24d7a534801cac64f50272fe3191d278f/dev/Code/CryEngine/CrySystem/LevelSystem/LevelSystem.cpp#L803
            uintptr_t script = env->GetIScriptSystem();
            auto vtable = *reinterpret_cast<uintptr_t**>(script);
            uintptr_t func = vtable[0x138 / 8];
            printf("execute file func %p\n", func);

            if (!once)
            {
                printf("ISystem = %p\n", Global::ISystem);
                printf("gEnv = %p\n", Global::gEnv);

                std::uintptr_t lua_newstate = (uintptr_t)(Global::NewWorld + Offsets::Functions::Lua::lua_newstate);
                printf("[/] Lua New State Function %p\n", lua_newstate);

                std::uintptr_t component_tick = (uintptr_t)(Global::NewWorld + Offsets::Functions::ComponentTick);
                printf("[/] Component Tick Function %p\n", component_tick);

                MH_Initialize();
                MH_CreateHook((void*)component_tick, &Hooks::Component::ComponentApplicationTickHook, reinterpret_cast<void**>(&Hooks::Component::ComponentApplicationTick_o));
                MH_CreateHook((void*)lua_newstate, &Hooks::NewStateHook, reinterpret_cast<void**>(&Hooks::NewState_original));


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

				printf("[%zu] Object: %s %p \n", i++, player->GetObjectName(), entity_ptr);
            }

		}
	}
}

#endif
