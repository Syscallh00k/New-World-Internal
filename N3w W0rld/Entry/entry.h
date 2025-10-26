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
            std::vector<Global::LootComponent> loot_temp;

            struct LootObjectInfo {
                const char* class_name;
                const char* display_name;
            };

            LootObjectInfo loot_objects[] = {
                {"Master_Tree", "Tree"},
                {"Poplar", "Tree"},
                {"poplar", "Tree Stump"},
                {"Master_Bush", "Bush"},
                {"CutStone_mining", "Stone"},
                {"chest", "Chest"},
                {"Supply_Box_col", "Supply Box"},
                {"Supply_Boxes", "Supply Box"},
                {"Shopbarrels", "Barrel"},
                {"firewoodpile", "Firewood"},
                {"Basket (copy)", "Basket"}
            };

            for (size_t i = 0; i < localList.size(); i++)
            {
                uintptr_t entityPtr = localList[i];
                if (IsBadReadPtr((void*)entityPtr, sizeof(uintptr_t)))
                    continue;

                char* object_class = reinterpret_cast<char*>(entityPtr + 0x38);

                bool is_loot_object = false;
                const char* display_name = nullptr;
                for (const auto& loot_obj : loot_objects)
                {
                    if (strcmp(object_class, loot_obj.class_name) == 0)
                    {
                        is_loot_object = true;
                        display_name = loot_obj.display_name;
                        break;
                    }
                }

                if (is_loot_object)
                {
                    Global::LootComponent _lootdata = {};
                    _lootdata.type = display_name;

                    uintptr_t* comp_start = *(uintptr_t**)(entityPtr + 0x10);
                    uintptr_t* comp_end = *(uintptr_t**)(entityPtr + 0x18);

                    for (uintptr_t* comp_ptr = comp_start; comp_ptr != comp_end; ++comp_ptr)
                    {
                        uintptr_t component = *comp_ptr;

                        if (IsBadReadPtr((void*)component, sizeof(uintptr_t)) || component < 0xFFFFFFF)
                            continue;

                        using fn_name = const char* (*)(uintptr_t);
                        const char* component_name = Memory::CallVFunc<fn_name>(1, component);

                        if (strcmp(component_name, _("GameTransformComponent")) == 0) {
                            _lootdata.GameTransformComponent = component;
                        }
                    }

                    if (_lootdata.GameTransformComponent)
                    {
                        loot_temp.push_back(_lootdata);
                    }
                }

                if (strcmp(object_class, _("RootPlayer")) != 0)
                    continue;

                Global::ObjectComponents _data = {};

                uintptr_t* comp_start = *(uintptr_t**)(entityPtr + 0x10);
                uintptr_t* comp_end = *(uintptr_t**)(entityPtr + 0x18);

                for (uintptr_t* comp_ptr = comp_start; comp_ptr != comp_end; ++comp_ptr)
                {
                    uintptr_t component = *comp_ptr;
                    if (IsBadReadPtr((void*)component, sizeof(uintptr_t)) || component < 0xFFFFFFF)
                        continue;

                    using fn_name = const char* (*)(uintptr_t);
                    const char* component_name = Memory::CallVFunc<fn_name>(1, component);

                    if (strcmp(component_name, _("GameTransformComponent")) == 0) {
                        _data.GameTransformComponent = component;
                    }
                    else if (strcmp(component_name, _("PlayerComponent")) == 0) {
                        _data.PlayerComponent = component;
                        _data.username = reinterpret_cast<const char*>(component + Offsets::PlayerComponent::PlayerName);
                    }
                    else if (strcmp(component_name, _("CharacterComponent")) == 0) {
                        _data.CharacterComponent = component;
                    }
                    else if (strcmp(component_name, _("InterestComponent")) == 0) {
                        _data.InterestComponent = component;
                    }
                    else if (strcmp(component_name, _("SkinnedMeshComponent")) == 0) {
                        _data.SkinnedMeshComponent = component;
                    }

                    if (_data.PlayerComponent && _data.GameTransformComponent &&
                        _data.SkinnedMeshComponent && _data.InterestComponent &&
                        _data.CharacterComponent)
                    {
                        break;
                    }
                }

                if (_data.PlayerComponent && _data.GameTransformComponent &&
                    _data.SkinnedMeshComponent && _data.InterestComponent &&
                    _data.CharacterComponent)
                {
                    final_temp.push_back(_data);
                }
            }

            {
                std::lock_guard<std::mutex> lock(Global::finalMtx);
                Global::FinalList.swap(final_temp);
            }

            {
                std::lock_guard<std::mutex> lock(Global::lootMtx);
                Global::LootList.swap(loot_temp);
            }
        }
    }
}
#endif
