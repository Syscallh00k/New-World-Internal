#ifndef IEntityIT_H
#define IEntityIT_H

#include <cstdint>
#include <cstdio>

namespace NewWorld {
    //https://github.com/aws/lumberyard/blob/413ecaf24d7a534801cac64f50272fe3191d278f/dev/Code/CryEngine/CryCommon/IEntitySystem.h#L280
    class IEntityIt {
    public:
        enum VTableFunctions : size_t {
            First = 0x8 / sizeof(uintptr_t),
            Next = 2,
            thiz = 3,
            Active = 0x1D0 / sizeof(uintptr_t)
        };

        uintptr_t GetFirst() {
            using Fn = uintptr_t(__fastcall*)(uintptr_t);
            return Memory::CallVFunc<Fn>(First, (uintptr_t)this);
        }

        uintptr_t GetNext(uintptr_t lastObject) {
            using Fn = uintptr_t(__fastcall*)(uintptr_t, uintptr_t);
            return Memory::CallVFunc<Fn>(Next, (uintptr_t)this, lastObject);
        }

        uintptr_t GetActive() {
            using Fn = uintptr_t(__fastcall*)(uintptr_t);
            return Memory::CallVFunc<Fn>(Active, (uintptr_t)this);
        }
    };
}

#endif
