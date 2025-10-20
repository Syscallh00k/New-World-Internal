#pragma once

#ifndef Lua_H
#define Lua_H

namespace NewWorld {

    // lua compiler - https://github.com/aws/lumberyard/blob/413ecaf24d7a534801cac64f50272fe3191d278f/dev/Code/Tools/RC/ResourceCompilerPC/LuaCompiler.cpp#L186
    // lua script - https://github.com/aws/lumberyard/blob/413ecaf24d7a534801cac64f50272fe3191d278f/dev/Code/Framework/AzCore/AzCore/Script/ScriptContext.cpp#L4989

    class Lua {
    public:
        void OpenLib() {
            using fn = void(*)(uintptr_t);
            auto call = reinterpret_cast<fn>(Global::NewWorld + Offsets::Functions::Lua::luaL_openlibs);
            call((uintptr_t)this);
        }

        void PushGlobalTable() {
            using fn = void(__fastcall*)(uintptr_t);
            auto call = reinterpret_cast<fn>(Global::NewWorld + Offsets::Functions::Lua::lua_pushglobaltable);
            call((uintptr_t)this);
		}

        void GetField(int index , const char* key) {
            using fn = void(__fastcall*)(uintptr_t, int, const char*);
            auto call = reinterpret_cast<fn>(Global::NewWorld + Offsets::Functions::Lua::lua_getfield);
            call((uintptr_t)this, index, key);
		}

        void Pop(int amount) {
            using fn = void(__fastcall*)(uintptr_t, int);
            auto call = reinterpret_cast<fn>(Global::NewWorld + Offsets::Functions::Lua::lua_pop);
            call((uintptr_t)this, amount);
		}
        int GetTop() {
            using fn = int(__fastcall*)(uintptr_t);
            auto call = reinterpret_cast<fn>(Global::NewWorld + Offsets::Functions::Lua::lua_gettop);
            return call((uintptr_t)this);
		}
        int LoadFile(const char* file_path) {
            using fn = int(__fastcall*)(uintptr_t, const char*);
            auto call = reinterpret_cast<fn>(Global::NewWorld + Offsets::Functions::Lua::lua_loadfile);
            return call((uintptr_t)this, file_path);
        }

        const char* ToString(int code) {
            using fn = const char*(__fastcall*)(uintptr_t, int);
            auto call = reinterpret_cast<fn>(Global::NewWorld + Offsets::Functions::Lua::lua_tostring);
            return call((uintptr_t)this, code);
        }

        int pCall(int nargs = 0, int nresults = 0, int errfunc = 0) {
            using fn = int(__fastcall*)(uintptr_t, int, int, int);
            auto call = reinterpret_cast<fn>(Global::NewWorld + Offsets::Functions::Lua::lua_pcall);
            return call((uintptr_t)this, nargs, nresults, errfunc);
        }
    };
}

#endif


