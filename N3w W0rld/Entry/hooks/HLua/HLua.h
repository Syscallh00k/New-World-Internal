#ifndef HLua_H
#define HLua_H

namespace NewWorld {
    namespace Hooks {
        using lua_newstate = uintptr_t(__fastcall*)(uintptr_t, uintptr_t);
        static lua_newstate NewState_original = nullptr;

        uintptr_t NewStateHook(uintptr_t alloc, uintptr_t a2) {
            auto lua_state = NewState_original(alloc, a2);

            if (lua_state == NULL)
                return NewState_original(alloc, a2);

            reinterpret_cast<Lua*>(lua_state)->OpenLib();

            return lua_state;
        }

        using lua_pcall_t = int(__fastcall*)(uintptr_t, int, int, int);
        lua_pcall_t lua_pcall_original = nullptr;

        int __fastcall lua_pcall_hook(uintptr_t L, int nargs, int nresults, int errfunc) {

            if (IsBadReadPtr((void*)L, sizeof(uintptr_t)))
                return lua_pcall_original(L, nargs, nresults, errfunc);

            if (GetAsyncKeyState(VK_F1) & 0x1)
            {
                Lua* lua = reinterpret_cast<Lua*>(L);
                printf("Loading lua script\n");

                lua->OpenLib();

                lua->LoadFile("C:\\NW_LUA\\DumpGame.lua");
               
                printf("lua script loaded in memory\n");

                lua->pCall(0,0,0);
                
                printf("lua script executed\n");
            }

            return lua_pcall_original(L, nargs, nresults, errfunc);
        }
    }
}

#endif