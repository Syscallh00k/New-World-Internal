#ifndef ISYSTEM_H
#define ISYSTEM_H

#include <cstdint>
#include <cstdio>

namespace NewWorld {
    //https://github.com/aws/lumberyard/blob/413ecaf24d7a534801cac64f50272fe3191d278f/dev/Code/CryEngine/CryCommon/ISystem.h#L962
    class ISystem {
    public:
        enum VTableFunctions : size_t {
            Renderer = 0x230 / sizeof(uintptr_t),
            PhysicalWorld = 0x1D0 / sizeof(uintptr_t),
            I3DEngine = 0x1D8 / sizeof(uintptr_t),
            UserName = 0x78 / sizeof(uintptr_t)
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

        uintptr_t GetI3DEngine() const {
            uintptr_t funcAddr = GetVFuncPtr(I3DEngine);
            printf("[GetI3DEngine] funcAddr = %p\n", (void*)funcAddr);
            if (!funcAddr) return 0;
            auto fn = reinterpret_cast<CallCast>(funcAddr);
            return fn(reinterpret_cast<uintptr_t>(this));
        }
        const char* GetLocalUser() {
            uintptr_t funcAddr = GetVFuncPtr(UserName);
            printf("[GetI3DEngine] funcAddr = %p\n", (void*)funcAddr);
            if (!funcAddr) return "";

            auto fn = reinterpret_cast<CallCast>(funcAddr);
            uintptr_t namePointer = fn((uintptr_t)this);
            if (!namePointer) return "";

            const char* src = reinterpret_cast<const char*>(namePointer);
            size_t len = strlen(src) + 1;

            char* name = new char[len];
            memcpy(name, src, len);

            return name;
        }

        uintptr_t GetPhysicalWorld() const {
            uintptr_t funcAddr = GetVFuncPtr(PhysicalWorld);
            printf("[GetPhysicalWorld] funcAddr = %p\n", (void*)funcAddr);
            if (!funcAddr) return 0;
            auto fn = reinterpret_cast<CallCast>(funcAddr);
            return fn(reinterpret_cast<uintptr_t>(this));
        }

        uintptr_t GetRenderer() const {
            uintptr_t funcAddr = GetVFuncPtr(Renderer);
            printf("[GetRenderer] funcAddr = %p\n", (void*)funcAddr);
            if (!funcAddr) return 0;
            auto fn = reinterpret_cast<CallCast>(funcAddr);
            return fn(reinterpret_cast<uintptr_t>(this));
        }
    };

}

#endif
