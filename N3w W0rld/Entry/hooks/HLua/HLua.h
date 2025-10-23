#ifndef HLua_H
#define HLua_H

namespace NewWorld {
    namespace Hooks {
        typedef const char* (__fastcall* reader_string_t)(uintptr_t L, void* ud, size_t* size);
        reader_string_t reader_string_original = nullptr;

        std::mutex g_mutex;
        std::map<void*, std::pair<std::ofstream, std::vector<char>>> g_openFiles;
        std::set<size_t> g_dumpedHashes;
        int g_scriptCount = 0;

        void FinalizeScript(void* ud)
        {
            std::lock_guard<std::mutex> lock(g_mutex);
            auto it = g_openFiles.find(ud);
            if (it != g_openFiles.end())
            {
                size_t hash = Memory::ComputeHash(it->second.second.data(), it->second.second.size());

                if (g_dumpedHashes.find(hash) == g_dumpedHashes.end())
                {
                    g_dumpedHashes.insert(hash);
                    if (it->second.first.is_open())
                    {
                        it->second.first.close();
                    }
                }
                else
                {
                    if (it->second.first.is_open())
                    {
                        std::filesystem::path filePath;
                        it->second.first.close();
                    }
                }

                g_openFiles.erase(it);
            }
        }

        const char* __fastcall reader_string_hook(uintptr_t L, void* ud, size_t* size)
        {
            static bool enabled = false;
            const char* ret = reader_string_original(L, ud, size);

            if(GetAsyncKeyState(VK_F2) & 0x1)
                enabled = !enabled;
			
            if (!enabled)
                return ret;

            if (!ret || !size || *size == 0)
            {
                FinalizeScript(ud);
                return ret;
            }

            std::lock_guard<std::mutex> lock(g_mutex);

            if (g_openFiles.find(ud) == g_openFiles.end())
            {
                g_openFiles[ud] = std::make_pair(std::ofstream(), std::vector<char>());
            }

            auto& fileEntry = g_openFiles[ud];

            fileEntry.second.insert(fileEntry.second.end(), ret, ret + *size);

            if (!fileEntry.first.is_open())
            {
                std::filesystem::path basePath = _("C:\\Dump\\GameScripts");
                std::filesystem::create_directories(basePath);

                char folderName[64];
                sprintf_s(folderName, _("%d"), g_scriptCount);
                std::filesystem::path filePath = basePath / folderName;
                std::filesystem::create_directories(filePath);
                filePath /= _("EncodedScript.luac");

                fileEntry.first.open(filePath, std::ios::binary | std::ios::out);
                g_scriptCount++;
            }

            fileEntry.first.write(ret, *size);
            fileEntry.first.flush();

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
                printf(_("Loading lua script\n"));

                lua->OpenLib();

                int a = lua->LoadFile(_("C:\\NW_LUA\\EBusChecker.lua"));
                if (a != 0) {
                    printf(_("LoadFile failed with error: %d\n"), a);
                    const char* error = lua->ToString(-1);
                    if (error) printf(_("Error: %s\n"), error);
                    return ret;
                }

                printf(_("lua script loaded in memory\n"));

                int b = lua->pCall(0, 0, 0);
                if (b != 0) {
                    printf(_("pCall failed with error: %d\n"), b);
                    const char* error = lua->ToString(L);
                    if (error) printf(_("Error: %s\n"), error);
                    return ret;
                }
                printf(_("lua script executed\n"));
                loaded_script = true;
            }

            return ret;
        }
    }
}

#endif