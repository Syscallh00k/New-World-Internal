#ifndef IEntitySystem_H
#define IEntitySystem_H

#include <cstdint>
#include <cstdio>

namespace NewWorld {
    //https://github.com/aws/lumberyard/blob/413ecaf24d7a534801cac64f50272fe3191d278f/dev/Code/CryEngine/CryCommon/IEntitySystem.h#L422
    class IEntitySystem {
    public:
        enum VTableFunctions : size_t {
          EntityIterator = 0xB8LL,
          ClassRegistry = 0x60
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

        uintptr_t GetEntityIterator() const {
            if (!this) return 0;

            return (*(__int64(__fastcall**)(__int64))(
                *(DWORD*)this + VTableFunctions::EntityIterator))(reinterpret_cast<__int64>(this));
        }

    };

}

#endif
