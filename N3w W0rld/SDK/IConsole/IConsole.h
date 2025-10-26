#ifndef IConsole_H
#define IConsole_H

namespace NewWorld {
    class IConsole {
    public:
        enum VTableFunctions : size_t {
            GetAndSetCVar = 0x18 / sizeof(uintptr_t),

        };

        template <typename T>
        uintptr_t GSCvar(const char* _str, T type, int unknown_one, const char* str_, int unknown_two) {
            using Fn = uintptr_t(__fastcall*)(uintptr_t, const char*, T, int, const char*, int);
            return Memory::CallVFunc<Fn>(GetAndSetCVar, (uintptr_t)this, _str, type, unknown_one, str_, unknown_two);
        }

    };
}

#endif
