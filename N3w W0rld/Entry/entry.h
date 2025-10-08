#ifndef ENTRY_H
#define ENTRY_H
#include <MinHook.h>
#include <set>
#include "../SDK/sdk.h"

struct ServerCommands{
    const char* crashServer = "rcon_stopserver";
    const char* disconnect = "rcon_disconnect";
};

typedef void(*DrawDome_s)(uintptr_t);
DrawDome_s DrawDome_o;


void DrawDomeHook(uintptr_t thiz) {
    //DrawDome_o(thiz);
}

//IGame https://github.com/aws/lumberyard/blob/413ecaf24d7a534801cac64f50272fe3191d278f/dev/Code/CryEngine/CryCommon/IGame.h#L46

namespace NewWorld {

    struct Set {
        uintptr_t cached_ptr; // 0x0
        char padding[0x14];   // 0x8
        int size;             // 0x18
        char pad2[0x4];       // 0x1C
    }; static_assert(sizeof(Set) == 40, "Size of Set is incorrect");


	inline void Entry() {
		printf("[/] Hit Entry\n");
        Offsets::Global::MainSystem = Memory::sig_scan(Global::NewWorld, Offsets::Global::MainSystem_Sig);
        printf("[SIG] Main System Offset %p\n", *(uintptr_t*)Offsets::Global::MainSystem);

        Offsets::Global::MainEnviorment = Memory::sig_scan(Global::NewWorld, Offsets::Global::MainEnviorment_Sig);
        printf("[SIG] Main Enviorment Offset %p\n", Offsets::Global::MainEnviorment);
        Sleep(5023400);

		while (true) {
            printf("________________________________________________\n");
            printf("              GLOBAL INSTANCES                  \n");

            Global::ISystem = *(uintptr_t*)(Global::NewWorld + Offsets::Global::MainSystem);
            printf("ISystem Instance 0x%p\n", (void*)Global::ISystem);

            Global::gEnv = *(uintptr_t*)(Global::NewWorld + Offsets::Global::MainEnviorment);
            printf("gEnv Instance 0x%p\n", (void*)Global::gEnv);

            if (!Global::ISystem || !Global::gEnv)continue;

            ISystem* system = reinterpret_cast<ISystem*>(Global::ISystem);

            Global::IGame = *(uintptr_t*)(Global::NewWorld + Offsets::Global::GameManager);
            printf("IGameManager Instance 0x%p\n", (void*)Global::IGame);

            Global::IObjectManager = *(uintptr_t*)(Global::NewWorld + Offsets::Global::ObjectManager);
            printf("IObjectManager Instance 0x%p\n", (void*)Global::IObjectManager);

            Global::ISky = *(uintptr_t*)(Global::NewWorld + Offsets::Global::SkyManager);
            printf("ISkyLightManager Instance 0x%p\n", (void*)Global::ISky);

            Global::IConsole = *(uintptr_t*)(Global::gEnv + 0xF); // execute command 0x120
            printf("IConsole Instance 0x%p\n", (void*)Global::IConsole);

            const char* local_user = system->GetLocalUser();
            printf("[/] Local User %s\n", local_user);

            Global::IEngine = system->GetI3DEngine();
            printf("I3DEngine = %p\n", (void*)Global::IEngine);

            Global::IRenderer = system->GetRenderer();
            printf("IRenderer = %p\n", (void*)Global::IRenderer);
            printf("             --------------                  \n");
            if (!Global::IRenderer || !Global::IEngine)continue;

            {
                IObjectManager* object_manager = reinterpret_cast<IObjectManager*>(Global::IGame);

                uintptr_t raw_tree = *(uintptr_t*)(object_manager + 0x70);
                
                printf("loaded object tree 0x%p\n", raw_tree);// .cached_ptr, loaded_objects.size);
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
