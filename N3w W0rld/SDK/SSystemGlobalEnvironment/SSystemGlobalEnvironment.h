#ifndef SGE_H
#define SGE_H

// Description:
//   Global environment.
//   Contains pointers to all global often needed interfaces.
//    This is a faster way to get interface pointer then calling ISystem interface to retrieve one.
// Notes:
//   Some pointers can be NULL, use with care.
// See also:
//   ISystem

namespace NewWorld {
    //https://github.com/aws/lumberyard/blob/413ecaf24d7a534801cac64f50272fe3191d278f/dev/Code/CryEngine/CrySystem/TestSystemLegacy.cpp#L255
    class SSystemGlobalEnviornment {
    public:
        enum VTableFunctions : size_t {
            ClassRegistry = 0xB8,
            PreCacheLevelEntity = 0xC0,
            IScriptSystem = 0xF0 / 8
        };

        IEntityClassRegistry* GetClassRegistry() const {
            using Fn = IEntityClassRegistry * (__fastcall*)(uintptr_t);
            return Memory::CallVFunc<Fn>(ClassRegistry, (uintptr_t)this);
        }

     
        uintptr_t GetIScriptSystem() const {

            uintptr_t cache = reinterpret_cast<const uintptr_t*>(this)[12];

            if (!cache)
                return 0;

            using Fn = uintptr_t(__fastcall*)(uintptr_t);
            return Memory::CallVFunc<Fn>(IScriptSystem, cache);
		}
        
    };

}

#endif
