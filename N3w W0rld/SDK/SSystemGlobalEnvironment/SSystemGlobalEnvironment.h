#ifndef SGE_H
#define SGE_H

#include <cstdint>
#include <cstdio>

namespace NewWorld {

    class SSystemGlobalEnviornment {
    public:
        enum VTableFunctions : size_t {
            ClassRegistry = 0xB8,
            PreCacheLevelEntity = 0xC0
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

        IEntityClassRegistry* GetClassRegistry() const {
            uintptr_t funcAddr = GetVFuncPtr(ClassRegistry);
            printf("[GetClassRegistry] funcAddr = %p\n", (void*)funcAddr);
            if (!funcAddr) return 0;
            auto fn = reinterpret_cast<CallCast>(funcAddr);
            return (IEntityClassRegistry*)fn(reinterpret_cast<uintptr_t>(this));
        }

        bool CachedObjects() {
            return *(bool*)((uintptr_t)this + Offsets::Enviroment::PreCachedFlags);
        }

        uintptr_t GetPreCacheLevelEntity() const{
            uintptr_t funcAddr = GetVFuncPtr(PreCacheLevelEntity);
            printf("[GetPreCacheLevelEntity] funcAddr = %p\n", (void*)funcAddr);
            if (!funcAddr) return 0;
            auto fn = reinterpret_cast<CallCast>(funcAddr);
            uintptr_t cached_objects = *(uintptr_t*)((uintptr_t)this + Offsets::Enviroment::CachedWorld);
            if (!cached_objects)return 0;
            return fn(cached_objects);
        }
    };

}


#endif