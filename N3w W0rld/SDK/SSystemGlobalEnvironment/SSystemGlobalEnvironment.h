#ifndef SGE_H
#define SGE_H

#include <cstdint>
#include <cstdio>

namespace NewWorld {
    //https://github.com/aws/lumberyard/blob/413ecaf24d7a534801cac64f50272fe3191d278f/dev/Code/CryEngine/CrySystem/TestSystemLegacy.cpp#L255
    class SSystemGlobalEnviornment {
    public:
        enum VTableFunctions : size_t {
            ClassRegistry = 0xB8,
            PreCacheLevelEntity = 0xC0
        };

        IEntityClassRegistry* GetClassRegistry() const {
            printf("[GetClassRegistry] calling vfunc index %zu\n", ClassRegistry);
            using Fn = IEntityClassRegistry * (__fastcall*)(uintptr_t);
            return Memory::CallVFunc<Fn>(ClassRegistry, (uintptr_t)this);
        }

        bool CachedObjects() const {
            return *(bool*)((uintptr_t)this + Offsets::Enviroment::PreCachedFlags);
        }

        uintptr_t GetPreCacheLevelEntity() const {
            printf("[GetPreCacheLevelEntity] calling vfunc index %zu\n", PreCacheLevelEntity);
            using Fn = uintptr_t(__fastcall*)(uintptr_t, uintptr_t);
            uintptr_t cached_objects = *(uintptr_t*)((uintptr_t)this + Offsets::Enviroment::CachedWorld);
            if (!cached_objects) return 0;
            return Memory::CallVFunc<Fn>(PreCacheLevelEntity, (uintptr_t)this, cached_objects);
        }
    };

}

#endif
