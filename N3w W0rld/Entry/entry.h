#ifndef ENTRY_H
#define ENTRY_H
#include <MinHook.h>
#include <set>
#include "../SDK/sdk.h"

typedef void(*DrawDome_s)(uintptr_t);
DrawDome_s DrawDome_o;
void DrawDomeHook(uintptr_t thiz) {
    //DrawDome_o(thiz);
}

/*
7FF68C0320F9
7FF68BF2E938
7FF68BD3F138
7FF68BC8302A
7FF68BC8436D
*/
namespace NewWorld {

    void Update() {

        NewWorld::Global::NewWorld = (std::uintptr_t)(GetModuleHandle(NULL));
        if (!NewWorld::Global::NewWorld)
        {
            printf("[/] Failed To Get Process Image\n");
            return;
        }

        while (true) {
            static bool once = false;
            if (!Global::NewWorld)continue;

            Global::ISystem = *(uintptr_t*)(Global::NewWorld + Offsets::Global::MainSystem);//Memory::sig_scan(Global::NewWorld, Offsets::Global::MainSystem_Sig);

            Global::gEnv = *(uintptr_t*)(Global::NewWorld + Offsets::Global::MainEnviorment);

            Global::IGame = *(uintptr_t*)(Global::NewWorld + Offsets::Global::GameManager);

            Global::IObjectManager = *(uintptr_t*)(Global::NewWorld + Offsets::Global::ObjectManager);

            Global::ISky = *(uintptr_t*)(Global::NewWorld + Offsets::Global::SkyManager);

            if (!once)
            {
                printf("ISystem = %p\n", (void*)Global::ISystem);
                printf("gEnv = %p\n", (void*)Global::gEnv);
                printf("IGame = %p\n", (void*)Global::IGame);
                printf("IObjectManager = %p\n", (void*)Global::IObjectManager);
                printf("ISky = %p\n", (void*)Global::ISky);

                once = true;
            }
        }   
    }

	void Entry() {
		printf("[/] Hit Entry\n");

		while (true) {
            if (!Global::ISystem || !Global::gEnv)continue;
            printf("________________________________________________\n");
            printf("              GLOBAL INSTANCES                  \n");


            ISystem* system = reinterpret_cast<ISystem*>(Global::ISystem);

            Global::IEngine = system->GetI3DEngine();
            printf("I3DEngine = %p\n", (void*)Global::IEngine);

            Global::IRenderer = system->GetRenderer();
            printf("IRenderer = %p\n", (void*)Global::IRenderer);

            Global::IConsole = system->GetIConsole();
            printf("IConsole = %p\n", (void*)Global::IConsole);

            Global::IEntitySystem = *(uintptr_t*)(Global::gEnv + Offsets::Enviroment::EntitySystem);
            printf("IEntitySystem = %p\n", (void*)Global::IEntitySystem);

            const char* local_user = system->GetLocalUser();
            printf("[/] Local User %s\n", local_user);

            printf("             --------------                  \n");
            if (!Global::IRenderer || !Global::IEngine)continue;

            {
                IEntitySystem* EntitySytem = reinterpret_cast<IEntitySystem*>(Global::IEntitySystem);
                //uintptr_t EntityIterator = EntitySytem->GetEntityIterator();
               // Memory::DumpVTable((void*)EntityIterator);
            }

            static bool place_hook = false;
            if (!place_hook) {
                MH_Initialize();
                uintptr_t* vtable = *(uintptr_t**)(Global::ISky);
                auto DomeFunc = vtable[27];
                if (DomeFunc) {
                    MH_CreateHook((PVOID*)DomeFunc, &DrawDomeHook, reinterpret_cast<void**>(&DrawDome_o));
                    printf("[/] Hooked Placed On SkyDome\n");
                }

                MH_EnableHook(MH_ALL_HOOKS);
                place_hook = true;
            }



            printf("________________________________________________\n");
            Sleep(5000);
		}
	}
}

#endif
