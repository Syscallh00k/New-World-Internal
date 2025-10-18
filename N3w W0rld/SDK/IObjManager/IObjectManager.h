#ifndef IObjectManager_H
#define IObjectManager_H

namespace NewWorld {
    //https://github.com/aws/lumberyard/blob/413ecaf24d7a534801cac64f50272fe3191d278f/dev/Code/CryEngine/Cry3DEngine/ObjMan.h#L101
    class IObjectManager {
    public:
        enum VTableFunctions : size_t {
            LoadedObjects = 0x58 / sizeof(uintptr_t),
        };

        uintptr_t* GetLoadedObjects() {
            using Fn = uintptr_t * (__fastcall*)(uintptr_t);
            printf("[GetLoadedObjects] calling vfunc index %zu\n", LoadedObjects);
            return Memory::CallVFunc<Fn>(LoadedObjects, (uintptr_t)this);
        }
    };
}

#endif
