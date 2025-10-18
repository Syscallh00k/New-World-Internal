#ifndef IEntitySystem_H
#define IEntitySystem_H

namespace NewWorld {
    //https://github.com/aws/lumberyard/blob/413ecaf24d7a534801cac64f50272fe3191d278f/dev/Code/CryEngine/CryCommon/IEntitySystem.h#L422
    // IDA | EntitySystemClass
    //ent list https://github.com/aws/lumberyard/blob/413ecaf24d7a534801cac64f50272fe3191d278f/dev/Gems/CryLegacy/Code/Source/CryEntitySystem/EntitySystem.cpp#L1840
    class IEntitySystem {
    public:
        enum VTableFunctions : size_t {
            EntityIterator = 0xB8LL / sizeof(uintptr_t),
            ClassRegistry = 0x60 / sizeof(uintptr_t),
            GetEntityByName = 0x128 / sizeof(uintptr_t)
        };

        IEntityIt* GetEntityIterator() {
            using Fn = uintptr_t(__fastcall*)(uintptr_t);
            return (IEntityIt*)Memory::CallVFunc<Fn>(EntityIterator, (uintptr_t)this);
        }

        IEntityClassRegistry* GetClassRegistry() {
            using Fn = uintptr_t(__fastcall*)(uintptr_t);
            return (IEntityClassRegistry*)Memory::CallVFunc<Fn>(ClassRegistry, (uintptr_t)this);
        }

        uintptr_t FindEntityByName(const char* name) {
            using Fn = uintptr_t(__fastcall*)(uintptr_t, const char*);
            return Memory::CallVFunc<Fn>(GetEntityByName, (uintptr_t)this, name);
        }
    };
}

#endif
