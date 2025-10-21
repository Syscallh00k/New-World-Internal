#ifndef HLua_H
#define HLua_H
#include <fstream>
#include <map>
namespace NewWorld {
    namespace Hooks {
        typedef const char* (__fastcall* reader_string_t)(uintptr_t L, void* ud, size_t* size);
        reader_string_t reader_string_original = nullptr;

        std::mutex g_mutex;
        std::map<void*, std::ofstream> g_openFiles;

        const char* __fastcall reader_string_hook(uintptr_t L, void* ud, size_t* size)
        {
            static int count = 0;
            const char* ret = reader_string_original(L, ud, size);
            if (!ret || !size || *size == 0) return ret;

            std::lock_guard<std::mutex> lock(g_mutex);

            if (g_openFiles.find(ud) == g_openFiles.end())
            {
                std::filesystem::path basePath = "C:\\Dump\\GameScripts";
                std::filesystem::create_directories(basePath);

                char folderName[64];
                sprintf_s(folderName, "%d", count);

                std::filesystem::path filePath = basePath / folderName;
                std::filesystem::create_directories(filePath);

                filePath /= "EncodedScript.luac";
                g_openFiles[ud].open(filePath, std::ios::binary | std::ios::out);
                count++;
            }

            g_openFiles[ud].write(ret, *size);
            g_openFiles[ud].flush();

            return ret;
        }

        using lua_pcall_t = int(__fastcall*)(uintptr_t, int, int, int);
        lua_pcall_t lua_pcall_original = nullptr;

        int __fastcall lua_pcall_hook(uintptr_t L, int nargs, int nresults, int errfunc) {
            static thread_local bool loaded_script = false;
            auto ret = lua_pcall_original(L, nargs, nresults, errfunc);

            if (IsBadReadPtr((void*)L, sizeof(uintptr_t)))
                return ret;

            if ((GetAsyncKeyState(VK_F1) & 0x1) && (ret == 0))
            {
                Lua* lua = reinterpret_cast<Lua*>(L);
                printf("Loading lua script\n");

                lua->OpenLib();

                int a = lua->LoadFile("C:\\NW_LUA\\EBusChecker.lua");
                if (a != 0) {
                    printf("LoadFile failed with error: %d\n", a);
                    const char* error = lua->ToString(-1);
                    if (error) printf("Error: %s\n", error);
                    return ret;
                }

                printf("lua script loaded in memory\n");

                int b = lua->pCall(0, 0, 0);
                if (b != 0) {
                    printf("pCall failed with error: %d\n", b);
                    const char* error = lua->ToString(L);
                    if (error) printf("Error: %s\n", error);
                    return ret;
                }
                printf("lua script executed\n");
                loaded_script = true;
            }

            return ret;
        }
    }
}

#endif