#ifndef ISystem_H
#define ISYSTEM_H

namespace NewWorld {

    //https://github.com/aws/lumberyard/blob/413ecaf24d7a534801cac64f50272fe3191d278f/dev/Code/CryEngine/CryCommon/ISystem.h#L962
    class ISystem {
    public:
        enum VTableFunctions : size_t {
            Renderer = 0x230 / sizeof(uintptr_t),
            PhysicalWorld = 0x1D0 / sizeof(uintptr_t),
            I3DEngine = 0x1D8 / sizeof(uintptr_t),
            UserName = 0x78 / sizeof(uintptr_t),
            Unknown = 0x190L / sizeof(uintptr_t),
            aIConsole = 0x1A0L / sizeof(uintptr_t),
			MainCamera = 0x318 / sizeof(uintptr_t)
        };

        uintptr_t GetI3DEngine() {
            using Fn = uintptr_t(__fastcall*)(uintptr_t);
            return Memory::CallVFunc<Fn>(I3DEngine, (uintptr_t)this);
        }

        uintptr_t GetUnknown() {
            using Fn = uintptr_t(__fastcall*)(uintptr_t);
            return Memory::CallVFunc<Fn>(Unknown, (uintptr_t)this);
        }

        uintptr_t GetCamera() {
            using Fn = uintptr_t(__fastcall*)(uintptr_t);
            return Memory::CallVFunc<Fn>(MainCamera, (uintptr_t)this);
        }

        IConsole* GetIConsole() {
            using Fn = uintptr_t(__fastcall*)(uintptr_t);
            return (IConsole*)Memory::CallVFunc<Fn>(aIConsole, (uintptr_t)this);
        }

        const char* GetLocalUser() {
            using Fn = uintptr_t(__fastcall*)(uintptr_t);

            uintptr_t namePtr = Memory::CallVFunc<Fn>(UserName, (uintptr_t)this);
            if (!namePtr) return "";

            const char* src = reinterpret_cast<const char*>(namePtr);
            size_t len = strlen(src) + 1;
            char* name = new char[len];
            memcpy(name, src, len);
            return name;
        }

        uintptr_t GetPhysicalWorld() {
            using Fn = uintptr_t(__fastcall*)(uintptr_t);
            return Memory::CallVFunc<Fn>(PhysicalWorld, (uintptr_t)this);
        }

        IRender* GetRenderer() {
            using Fn = uintptr_t(__fastcall*)(uintptr_t);
            return (IRender*)Memory::CallVFunc<Fn>(Renderer, (uintptr_t)this);
        }
    };

}

#endif