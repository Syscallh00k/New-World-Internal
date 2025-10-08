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
          ClassRegistry = 0x60,
          GetEntityByName = 0x128LL
        };

        using CallCast = uintptr_t(__fastcall*)(uintptr_t);

        uintptr_t GetVFuncPtr(size_t index){
            if (!this) return 0;
            uintptr_t* vtable = *(uintptr_t**)this;
            if (!vtable) return 0;
            return vtable[index];
        }

        uintptr_t CallVFunc(size_t index){
            uintptr_t func = GetVFuncPtr(index);
            if (!func) {
                printf("[CallVFunc] Invalid vfunc index %zu\n", index);
                return 0;
            }
            auto fn = reinterpret_cast<CallCast>(func);
            return fn(reinterpret_cast<uintptr_t>(this));
        }
        
        IEntityIt* GetEntityIterator() {

            auto vtable = *reinterpret_cast<uint64_t*>(this);
            return reinterpret_cast<IEntityIt * (__fastcall*)(void*)>(
                *reinterpret_cast<uint64_t*>(vtable + VTableFunctions::EntityIterator)
                )(this);
        }

        uintptr_t FindEntityByName(const char* name) {
            uintptr_t func = GetVFuncPtr(GetEntityByName);
            if (!func) {
                return 0;
            }
            auto fn = reinterpret_cast<uintptr_t(*)(uintptr_t, uintptr_t)>(func);
            return fn((uintptr_t)this, *name);

        }

    };

}

#endif
