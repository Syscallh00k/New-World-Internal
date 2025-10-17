#ifndef IEntityClassRegistry_H
#define IEntityClassRegistry_H

namespace NewWorld {
    class IEntityClassRegistry {
    public:
        enum VTableFunctions : size_t {
            FindClass = 0x18 / sizeof(uintptr_t),
          
        };

        uintptr_t FindClassObject(const char* class_name) {
            using Fn = uintptr_t(__fastcall*)(uintptr_t, const char*);
            return Memory::CallVFunc<Fn>(FindClass, (uintptr_t)this, class_name);
        }

    };
}

#endif
