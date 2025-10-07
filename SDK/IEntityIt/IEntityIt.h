#ifndef IEntityIT_H
#define IEntityIT_H

#include <cstdint>
#include <cstdio>

namespace NewWorld {

    //https://github.com/aws/lumberyard/blob/413ecaf24d7a534801cac64f50272fe3191d278f/dev/Code/CryEngine/CryCommon/IEntitySystem.h#L280
    class IEntityIt {
    public:
        enum VTableFunctions : size_t {
          movFirst = 0x8
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

        uintptr_t MoveFirst() const {
            uintptr_t funcAddr = GetVFuncPtr(movFirst);
            printf("[MoveFirst] funcAddr = %p\n", (void*)funcAddr);
            if (!funcAddr) return 0;
            auto fn = reinterpret_cast<CallCast>(funcAddr);
            return fn(reinterpret_cast<uintptr_t>(this));
        }
    };

}

#endif
