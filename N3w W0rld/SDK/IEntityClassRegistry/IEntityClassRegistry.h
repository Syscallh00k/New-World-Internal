#ifndef IEntityClassRegistry_H
#define IEntityClassRegistry_H

#include <cstdint>
#include <cstdio>

namespace NewWorld {

    class IEntityClassRegistry {
    public:
        enum VTableFunctions : size_t {
        };

        using CallCast = uintptr_t(__fastcall*)(uintptr_t);

        uintptr_t GetVFuncPtr(size_t index) const {
            if (!this) return 0;
            uintptr_t* vtable = *(uintptr_t**)this;
            if (!vtable) return 0;
            return vtable[index];
        }
        uintptr_t CallVFunc(size_t index) const {
            uintptr_t func = GetVFuncPtr(index);
            if (!func) {
                printf("[CallVFunc] Invalid vfunc index %zu\n", index);
                return 0;
            }
            auto fn = reinterpret_cast<CallCast>(func);
            return fn(reinterpret_cast<uintptr_t>(this));
        }

    };

}


#endif