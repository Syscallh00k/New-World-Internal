#ifndef Player_H
#define Player_H

namespace NewWorld {
    class Player {
    public:
        enum VTableFunctions : size_t {
            WorldPosition = 0xB,
            IsActive = 0x3A,
            ClassName = 0x1
        };

        bool ActiveObject() {
            using Fn = bool(__fastcall*)(uintptr_t);
            return Memory::CallVFunc<Fn>(IsActive, (uintptr_t)this);
		}

        Vector3 GetWorldPosition()
        {
            using Fn = uintptr_t(__fastcall*)(uintptr_t);
            uintptr_t vecPtr = Memory::CallVFunc<Fn>(WorldPosition, (uintptr_t)this);

            if (!vecPtr)
                return Vector3{};

            return *reinterpret_cast<Vector3*>(vecPtr);
        }


        const char* GetObjectName()
        {
            using Fn = const char* (__fastcall*)(uintptr_t);
            return Memory::CallVFunc<Fn>(ClassName, (uintptr_t)this);
        }

    };

}

#endif
