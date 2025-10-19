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
        int pCall() {
            using fn = int(__fastcall*)(uintptr_t, int, int, int);
            auto call = reinterpret_cast<fn>(Global::NewWorld + Offsets::Functions::Lua::lua_tostring);
            return call((uintptr_t)this, 0,0,0);
        }


    };
}

#endif


