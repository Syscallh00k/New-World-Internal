#ifndef ENTRY_H
#define ENTRY_H
#include "../../../SDK/sdk.h"

#include "hooks/CRender/Render.h"
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
                std::uintptr_t render_hook = (uintptr_t)(Global::NewWorld + Offsets::Functions::Render::RenderHook);

                MH_CreateHook((void*)component_tick, &Hooks::Component::ComponentApplicationTickHook, reinterpret_cast<void**>(&Hooks::Component::ComponentApplicationTick_o));
                MH_CreateHook((void*)l_pcallfn, &Hooks::lua_pcall_hook, reinterpret_cast<void**>(&Hooks::lua_pcall_original)); // -- load lua scripts

                MH_CreateHook((void*)readStringFn, &Hooks::reader_string_hook, reinterpret_cast<void**>(&Hooks::reader_string_original));// -- dump lua scripts
                MH_CreateHook((void*)render_hook, &Hooks::CRender::RenderHook, reinterpret_cast<void**>(&Hooks::CRender::RenderHook_original));// -- Engine Rendering 

                printf(_("[/] Placed Hooks\n"));
                MH_EnableHook(MH_ALL_HOOKS);
                once = true;
            }
        }
    }

    void Entry() {
        while (true) {
            if (!Global::gEnv || !Global::ISystem)continue;

            ISystem* system = reinterpret_cast<ISystem*>(Global::ISystem);
            SSystemGlobalEnviornment* env = reinterpret_cast<SSystemGlobalEnviornment*>(Global::gEnv);

            std::vector<uintptr_t> localList;

            {
                std::lock_guard<std::mutex> lock(Global::listMtx);
                localList = Global::EntityList;
            }
            std::vector<Global::ObjectComponents> final_temp;
            for (size_t i = 0; i < localList.size(); i++)
            {
                uintptr_t entityPtr = localList[i];

                if (IsBadReadPtr((void*)entityPtr, sizeof(uintptr_t)))
                    continue;

                std::string entity_name(reinterpret_cast<char*>(entityPtr + 0x38));
                if (entity_name.empty())continue;
                if (entity_name.find("RootPlayer") != std::string::npos) {
                    for (uintptr_t* i = *(uintptr_t**)(entityPtr + 0x10); i != *(uintptr_t**)(entityPtr + 0x18); i++) { // TODO make classes 4 this shit

                        uintptr_t component = *i;
                        if (IsBadReadPtr((void*)component, sizeof(uintptr_t)))
                            continue;

                        Global::ObjectComponents _data;
                        using fn_name = const char* (*)(uintptr_t);
                        const char* component_name = Memory::CallVFunc<fn_name>(1, component);
                        if (strcmp(component_name, "GameTransformComponent") == 0) {   
                            _data.GameTransformComponent = component;
                        }
                       
                        if (strcmp(component_name, "PlayerComponent") == 0) {
                            _data.PlayerComponent = component;
                            _data.username = reinterpret_cast<const char*>(component + Offsets::PlayerComponent::PlayerName);
                        }

                        if(_data.PlayerComponent && _data.GameTransformComponent)
                            final_temp.push_back(_data);
                    }


                }

            }

            std::lock_guard<std::mutex> lock(Global::finalMtx);
            Global::FinalList.swap(final_temp);
        }
    }
}
#endif
