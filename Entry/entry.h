#ifndef ENTRY_H
#define ENTRY_H

#include "../SDK/sdk.h"


namespace NewWorld {
	inline void Entry() {
		printf("[/] Hit Entry\n");
		while (true) {
            printf("________________________________________________\n");
            Global::ISystem = *(uintptr_t*)(Global::NewWorld + Offsets::Global::MainSystem);
            printf("ISystem Instance 0x%p\n", (void*)Global::ISystem);

            Global::gEnv = *(uintptr_t*)(Global::NewWorld + Offsets::Global::MainEnviorment);
            printf("gEnv Instance 0x%p\n", (void*)Global::gEnv);

            ISystem* system = reinterpret_cast<ISystem*>(Global::ISystem);

            if (Global::ISystem && Global::gEnv) {

                uintptr_t pEntitySystem = *(uintptr_t*)(Global::gEnv + Offsets::Enviroment::EntitySystem);
                printf("pEntitySystem Instance 0x%p\n", pEntitySystem);
                if (pEntitySystem) {
                    IEntitySystem* entity_system = reinterpret_cast<IEntitySystem*>(pEntitySystem);

                  
                }
              
            }

            Global::IEngine = system->GetI3DEngine();
            printf("I3DEngine = %p\n", (void*)Global::IEngine);

            Global::IRenderer = system->GetRenderer();
            printf("IRenderer = %p\n", (void*)Global::IRenderer);
            printf("________________________________________________\n");
		}
	}
}

#endif
