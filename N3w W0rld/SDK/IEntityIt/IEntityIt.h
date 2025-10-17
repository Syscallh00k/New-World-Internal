#ifndef IEntityIT_H
#define IEntityIT_H

namespace NewWorld {
    //https://github.com/aws/lumberyard/blob/413ecaf24d7a534801cac64f50272fe3191d278f/dev/Code/CryEngine/CryCommon/IEntitySystem.h#L280
    class IEntityIt {
    public:
        enum VTableFunctions : size_t {
            CreateV = 0x00 / 8,
            MoveFirstV = 0x08 / 8,
            ReleaseV = 0x10 / 8,
            IsEndV = 0x18 / 8,
            NextV = 0x20 / 8,
            ThisV = 0x28 / 8
        };


        void MoveFirst() {
            using Fn = void(__fastcall*)(uintptr_t);
            Memory::CallVFunc<Fn>(MoveFirstV, (uintptr_t)this);
        }

        bool IsEnd() {
            using Fn = bool(__fastcall*)(uintptr_t);
            return Memory::CallVFunc<Fn>(IsEndV, (uintptr_t)this);
        }

        uintptr_t GetNext() {
            using Fn = uintptr_t(__fastcall*)(uintptr_t);
            return Memory::CallVFunc<Fn>(NextV, (uintptr_t)this);
        }

        uintptr_t GetCurrent() {
            using Fn = uintptr_t(__fastcall*)(uintptr_t);
            return Memory::CallVFunc<Fn>(ThisV, (uintptr_t)this);
        }

        void Release() {
            using Fn = void(__fastcall*)(uintptr_t);
            Memory::CallVFunc<Fn>(ReleaseV, (uintptr_t)this);
        }
    };
}

#endif
