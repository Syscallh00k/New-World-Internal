#ifndef ENTRY_H
#define ENTRY_H

#include "../SDK/sdk.h"

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

            Global::ISystem = *(uintptr_t*)(Global::NewWorld + Offsets::Global::MainSystem); //Memory::sig_scan(Global::NewWorld, Offsets::Global::MainSystem_Sig);

            Global::gEnv = *(uintptr_t*)(Global::NewWorld + Offsets::Global::MainEnviorment);


            if (!once)
            {
                printf("ISystem = %p\n", Global::ISystem);
                printf("gEnv = %p\n", Global::gEnv);


                once = true;
            }
        }   
    }
    //Player
	void Entry() {
		printf("[/] Hit Entry\n");

		while (true) {
            if (!Global::ISystem || !Global::gEnv)continue;
            printf("________________________________________________\n");
            printf("              GLOBAL INSTANCES                  \n");


            ISystem* system = reinterpret_cast<ISystem*>(Global::ISystem);

            Global::IEngine = system->GetI3DEngine();
            printf("I3DEngine = %p\n", Global::IEngine);

            Global::IRenderer = system->GetRenderer();
            printf("IRenderer = %p\n", Global::IRenderer);

            Global::CCamera = system->GetCamera();
            printf("CCamera = %p\n", Global::CCamera);

            Global::IConsole = system->GetIConsole();
            printf("IConsole = %p\n", Global::IConsole);

            Global::IEntitySystem = *(uintptr_t*)(Global::gEnv + Offsets::Enviroment::EntitySystem);
            printf("IEntitySystem = %p\n", Global::IEntitySystem);

            const char* local_user = system->GetLocalUser();
            printf("[/] Local User %s\n", local_user);

            printf("             --------------                  \n");
            if (!Global::IRenderer || !Global::IEngine)continue;
          

            //https://github.com/aws/lumberyard/blob/413ecaf24d7a534801cac64f50272fe3191d278f/dev/Code/CryEngine/CrySystem/LevelSystem/LevelSystem.cpp#L919  - sub_7FF677D40D50
            IEntitySystem* entity_system = reinterpret_cast<IEntitySystem*>(Global::IEntitySystem);

            IEntityClassRegistry* entity_class_reg = entity_system->GetClassRegistry();

            IEntityIt* iterator = entity_system->GetEntityIterator();

		    uintptr_t player_class = entity_class_reg->FindClassObject("ActorEntity");
            printf("IEntityClassRegistry = %p\n", entity_class_reg);
            printf("IEntityIt = %p\n", iterator);
            printf("player class = %p\n", player_class);


            printf("________________________________________________\n");
            Sleep(5000);
		}
	}
}



#endif
