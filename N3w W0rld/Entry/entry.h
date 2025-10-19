#ifndef ENTRY_H
#define ENTRY_H

#include "hooks/Component_Tick/Tick.h"
#define LUA_MULTRET (-1)

namespace NewWorld {
	uintptr_t hijacked_lua_state = 0;
    namespace LuaHack {
        using lua_loadfile_t = int(__fastcall*)(uintptr_t, const char*);
        using lua_pcall_t = int(__fastcall*)(uintptr_t, int, int, int);
        using lua_tostring_t = const char* (__fastcall*)(uintptr_t, int);
        using lua_newstate = uintptr_t(__fastcall*)(uintptr_t, uintptr_t);
        using lua_pushglobaltable_t = void(__fastcall*)(uintptr_t);
        using lua_getfield_t = int(__fastcall*)(uintptr_t, int, const char*);
        using lua_isnil_t = int(__fastcall*)(uintptr_t, int);
        using lua_pop_t = void(__fastcall*)(uintptr_t, int);
        using luaL_openlibs_t = void(*)(uintptr_t);

        static lua_loadfile_t lua_loadfile_fn = nullptr;
        static lua_pcall_t lua_pcall_fn = nullptr;
        static lua_tostring_t lua_tostring_fn = nullptr;
        static lua_pushglobaltable_t lua_pushglobaltable_fn = nullptr;
        static lua_getfield_t lua_getfield_fn = nullptr;
        static lua_isnil_t lua_isnil_fn = nullptr;
        static lua_pop_t lua_pop_fn = nullptr;
        static luaL_openlibs_t luaL_openlibs_fn = nullptr;

        static lua_pcall_t lua_pcall_original = nullptr;
        static lua_newstate lua_newstate_original = nullptr;
        static bool dumped = false;
        static std::mutex dump_mutex;


        int __fastcall lua_pcall_hook(uintptr_t L, int nargs, int nresults, int errfunc) {
            auto ret = lua_pcall_original(L, nargs, nresults, errfunc);
          /*  static luaL_openlibs_t luaL_openlibs = reinterpret_cast<luaL_openlibs_t>(Global::NewWorld + Offsets::Functions::Lua::luaL_openlibs);

            std::lock_guard<std::mutex> lock(dump_mutex);

            if (!dumped) {
                dumped = true;
                printf("Loading dumper script...\n");
                luaL_openlibs(L);
                lua_loadfile_fn(L, "C:\\Users\\parke\\Desktop\\New-World-Internal\\N3w W0rld\\Lua Scripts\\ChatUtils.lua");
                lua_pcall_fn(L, 0, 0, 0);
                printf("Dumper executed\n");
            }*/

            return ret;
        }

        uintptr_t luaNewStateHook(uintptr_t alloc, uintptr_t a2) {
            static thread_local bool in_hook = false;
            static bool injected_once = false;
            static lua_loadfile_t lua_loadfile = reinterpret_cast<lua_loadfile_t>(Global::NewWorld + Offsets::Functions::Lua::lua_loadfile);
            static lua_pcall_t lua_pcall = reinterpret_cast<lua_pcall_t>(Global::NewWorld + Offsets::Functions::Lua::lua_pcall);
            static luaL_openlibs_t luaL_openlibs = reinterpret_cast<luaL_openlibs_t>(Global::NewWorld + Offsets::Functions::Lua::luaL_openlibs);
            static lua_tostring_t lua_tostring = reinterpret_cast<lua_tostring_t>(Global::NewWorld + Offsets::Functions::Lua::lua_tostring);

            auto lua_state = lua_newstate_original(alloc, a2);

            if (in_hook || lua_state == NULL) {
                return lua_newstate_original(alloc, a2);
            }

            in_hook = true;

            if (lua_state && !injected_once) {
                printf("stolen lua state %p\n", lua_state);
                printf("waiting for lua state to build...\n");
                hijacked_lua_state = lua_state;
                luaL_openlibs(lua_state);

                injected_once = true;
            }

            in_hook = false;
            return lua_state;
        }

        }


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
                LuaHack::lua_loadfile_fn = reinterpret_cast<LuaHack::lua_loadfile_t>(Global::NewWorld + 0x078BA7C0);
                LuaHack::lua_pcall_fn = reinterpret_cast<LuaHack::lua_pcall_t>(Global::NewWorld + Offsets::Functions::Lua::lua_pcall);
                LuaHack::lua_tostring_fn = reinterpret_cast<LuaHack::lua_tostring_t>(Global::NewWorld + 0x078B82D0);
                LuaHack::lua_pushglobaltable_fn = reinterpret_cast<LuaHack::lua_pushglobaltable_t>(Global::NewWorld + 0x078B7B70);
                LuaHack::lua_getfield_fn = reinterpret_cast<LuaHack::lua_getfield_t>(Global::NewWorld + 0x78B7310);
                LuaHack::lua_isnil_fn = reinterpret_cast<LuaHack::lua_isnil_t>(Global::NewWorld + 0x78B7310 + 0x50); // Approximate offset
                LuaHack::lua_pop_fn = reinterpret_cast<LuaHack::lua_pop_t>(Global::NewWorld + 0x078B8100);
                LuaHack::luaL_openlibs_fn = reinterpret_cast<LuaHack::luaL_openlibs_t>(Global::NewWorld + 0x078B9800);

                printf("ISystem = %p\n", Global::ISystem);
                printf("gEnv = %p\n", Global::gEnv);

                std::uintptr_t luafn = (uintptr_t)(Global::NewWorld + 0x078B6B60);
                std::uintptr_t lua_pcallfn = (uintptr_t)(Global::NewWorld + Offsets::Functions::Lua::lua_pcall);

                std::uintptr_t component_tick = (uintptr_t)(Global::NewWorld + Offsets::Functions::ComponentTick);
                printf("[/] Component Tick Function %p\n", component_tick);

                MH_Initialize();
                MH_CreateHook((void*)component_tick, &Hooks::Component::ComponentApplicationTickHook, reinterpret_cast<void**>(&Hooks::Component::ComponentApplicationTick_o));
                MH_CreateHook((void*)luafn, &LuaHack::luaNewStateHook, reinterpret_cast<void**>(&LuaHack::lua_newstate_original));
               // MH_CreateHook((void*)lua_pcallfn, &LuaHack::lua_pcall_hook, reinterpret_cast<void**>(&LuaHack::lua_pcall_original));

                MH_EnableHook((void*)luafn);
                MH_EnableHook((void*)component_tick);
                MH_EnableHook((void*)lua_pcallfn);


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

    //        std::vector<std::uintptr_t> list;
    //        {
    //            std::lock_guard<std::mutex> lock(Global::listMtx);
    //            list = Global::EntityList;
    //        }

    //        size_t i = 0;
    //        for (auto node : list)
    //        {
    //            if (!node) continue;

    //            uintptr_t entity_ptr = 0;
    //            if (!Memory::SafeRead(node + 0x18, entity_ptr) || !entity_ptr)
    //                continue;

    //            Player* player = reinterpret_cast<Player*>(entity_ptr);

				////printf("[%zu] Object: %s %p \n", i++, player->GetObjectName(), entity_ptr);
    //        }

            if (GetAsyncKeyState(VK_UP) & 0x1) {

                static LuaHack::lua_loadfile_t lua_loadfile = reinterpret_cast<LuaHack::lua_loadfile_t>(Global::NewWorld + Offsets::Functions::Lua::lua_loadfile);
                static LuaHack::lua_pcall_t lua_pcall = reinterpret_cast<LuaHack::lua_pcall_t>(Global::NewWorld + Offsets::Functions::Lua::lua_pcall);
                static LuaHack::luaL_openlibs_t luaL_openlibs = reinterpret_cast<LuaHack::luaL_openlibs_t>(Global::NewWorld + Offsets::Functions::Lua::luaL_openlibs);
                static LuaHack::lua_tostring_t lua_tostring = reinterpret_cast<LuaHack::lua_tostring_t>(Global::NewWorld + Offsets::Functions::Lua::lua_tostring);
                printf("scripts good enough ;)\n");

                printf("script loading\n");
                int load_result = lua_loadfile(hijacked_lua_state, "C:\\Users\\parke\\Desktop\\New-World-Internal\\N3w W0rld\\Lua Scripts\\DumpGame.lua");
                printf("lua_loadfile result: %d\n", load_result);

                   if (load_result != 0) {
                    const char* error = lua_tostring(hijacked_lua_state, -1);
                    printf("Load error: %s\n", error);
                   }

                int pcall_result = lua_pcall(hijacked_lua_state, 0, 0, 0);
                printf("lua_pcall result: %d\n", pcall_result);

                if (pcall_result != 0) {
                    const char* error = lua_tostring(hijacked_lua_state, -1);
                    printf("Execution error: %s\n", error);
                }

                printf("script loaded\n");
            }
		}
	}
}

#endif
