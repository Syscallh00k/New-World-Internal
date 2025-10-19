#ifndef NewState_H
#define NewSate_H

namespace NewWorld {
	namespace Hooks {
        using lua_newstate = uintptr_t(__fastcall*)(uintptr_t, uintptr_t);
        static lua_newstate NewState_original = nullptr;

        //TODO switch to ExecuteFile, having an instance of a lua state thats unpredictable is not reliable right now
        uintptr_t NewStateHook(uintptr_t alloc, uintptr_t a2) {
            static bool _once = false;

            auto lua_state = NewState_original(alloc, a2);

            if (lua_state == NULL)
                return NewState_original(alloc, a2);

            Lua* lua = (Lua*)lua_state;

            if (!_once) {
                printf("stolen lua state %p\n", lua_state);
                printf("waiting for lua state to build...\n");

                lua->OpenLib();

                printf("scripts good enough ;)\n");

                printf("script loading\n");

                int load_result = lua->LoadFile("C:\\Users\\parke\\Desktop\\New-World-Internal\\N3w W0rld\\Lua Scripts\\DumpGame.lua");
                printf("lua_loadfile result: %d\n", load_result);

                if (load_result != 0) {
                    const char* error = lua->ToString(-1);
                    printf("Load error: %s\n", error);
                }

                int pcall_result = lua->pCall();
                printf("lua_pcall result: %d\n", pcall_result);

                if (pcall_result != 0) {
                    const char* error = lua->ToString(-1);
                    printf("Execution error: %s\n", error);
                }

                printf("script loaded\n");

                _once = true;
            }

            return lua_state;
        }
	}
}

#endif