#ifndef IEntitySystem_H
#define IEntitySystem_H

#include <cstdint>
#include <cstdio>

namespace NewWorld {
    //https://github.com/aws/lumberyard/blob/413ecaf24d7a534801cac64f50272fe3191d278f/dev/Code/CryEngine/CryCommon/IEntitySystem.h#L422
    // IDA | EntitySystemClass
    //ent list https://github.com/aws/lumberyard/blob/413ecaf24d7a534801cac64f50272fe3191d278f/dev/Gems/CryLegacy/Code/Source/CryEntitySystem/EntitySystem.cpp#L1840
    class IEntitySystem {
    public:
        enum VTableFunctions : size_t {
            EntityIterator = 0x0B8 / sizeof(uintptr_t),
            ClassRegistry = 0x60 / sizeof(uintptr_t),
            GetEntityByName = 0x128 / sizeof(uintptr_t)
        };

        uintptr_t GetEntityIterator() {
            using Fn =   uintptr_t(__fastcall*)(uintptr_t);
            return Memory::CallVFunc<Fn>(EntityIterator, (uintptr_t)this);
        }

        uintptr_t FindEntityByName(const char* name) {
            using Fn = uintptr_t(__fastcall*)(uintptr_t, const char*);
            return Memory::CallVFunc<Fn>(GetEntityByName, (uintptr_t)this, name);
        }
    };
}

#endif
