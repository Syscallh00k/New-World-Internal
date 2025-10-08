#ifndef IOBJECTMANAGER_H
#define IOBJECTMANAGER_H

#include <cstdint>
#include <cstdio>

namespace NewWorld {
    //https://github.com/aws/lumberyard/blob/413ecaf24d7a534801cac64f50272fe3191d278f/dev/Code/CryEngine/Cry3DEngine/ObjMan.h#L101
    class IObjectManager {
    public:
        //0x60
        enum VTableFunctions : size_t {
            LoadedObjects = 0x58 / sizeof(uintptr_t),
        };

        using CallCast = uintptr_t*(__fastcall*)(uintptr_t);

        uintptr_t GetVFuncPtr(size_t index) const {
            if (!this) return 0;
            uintptr_t* vtable = *(uintptr_t**)this;
            if (!vtable) return 0;
            return vtable[index];
        }

        uintptr_t* CallVFunc(size_t index) const {
            uintptr_t func = GetVFuncPtr(index);
            if (!func) {
                printf("[CallVFunc] Invalid vfunc index %zu\n", index);
                return 0;
            }
            auto fn = reinterpret_cast<CallCast>(func);
            return fn(reinterpret_cast<uintptr_t>(this));
        }

        uintptr_t* GetLoadedObjects() const {
            uintptr_t funcAddr = GetVFuncPtr(LoadedObjects);
            printf("[GetLoadedObjects] funcAddr = %p\n", (void*)funcAddr);
            if (!funcAddr) return 0;
            auto fn = reinterpret_cast<CallCast>(funcAddr);
            return fn(reinterpret_cast<uintptr_t>(this));
        }
        

      
    };

}

#endif
