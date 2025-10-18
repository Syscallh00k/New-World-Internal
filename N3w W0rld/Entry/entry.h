#ifndef ENTRY_H
#define ENTRY_H
#include <MinHook.h>
#include "hooks/Component_Tick/Tick.h"

namespace NewWorld {

    void Update() {

        Global::NewWorld = (std::uintptr_t)(GetModuleHandle(NULL));
        if (!Global::NewWorld)
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

                std::uintptr_t component_tick = (uintptr_t)(Global::NewWorld + Offsets::Functions::ComponentTick);
                printf("[/] Component Tick Function = %p\n", component_tick);

                MH_Initialize();
                MH_CreateHook((void*)component_tick, &Hooks::Component::ComponentApplicationTickHook, reinterpret_cast<void**>(&Hooks::Component::ComponentApplicationTick_o));
                MH_EnableHook((void*)component_tick);
                printf("[/] Component Tick Hook Placed\n");

                once = true;
            }
        }   
    }

	void Entry() {
		while (true) {
            if (!Global::ISystem || !Global::gEnv)continue;

            ISystem* system = reinterpret_cast<ISystem*>(Global::ISystem);

            Global::CCamera = system->GetCamera();

            Global::IConsole = system->GetIConsole();

            const char* local_user = system->GetLocalUser();

            std::vector<std::uintptr_t> list;
            {
                std::lock_guard<std::mutex> lock(Global::listMtx);
                list = Global::EntityList;
            }

            size_t i = 0;
            for (auto node : list)
            {
                if (!node) continue;

                uintptr_t entity_ptr = 0;
                if (!Hooks::Component::SafeRead(node + 0x18, entity_ptr) || !entity_ptr)
                    continue;

                Player* player = reinterpret_cast<Player*>(entity_ptr);

                //https://github.com/aws/lumberyard/blob/413ecaf24d7a534801cac64f50272fe3191d278f/dev/Code/Framework/AzCore/AzCore/Component/Entity.cpp#L1069
               // uintptr_t out_components = 0;
                
				//uintptr_t out_come = dependency_sort(entity_ptr, (uintptr_t)&out_components);

				printf("[%zu] Object: %s %p \n", i++, player->GetObjectName(), entity_ptr);
            }

            Sleep(5000);
		}
	}
}



#endif
//13EA3F0

/*
[00] 00007FF60C986C50  module=00007FF605820000  prot=0x20
[01] 00007FF606C75240  module=00007FF605820000  prot=0x20
[02] 00007FF606CA18A0  module=00007FF605820000  prot=0x20
[03] 00007FF605C8B060  module=00007FF605820000  prot=0x20
[04] 00007FF606B95EB0  module=00007FF605820000  prot=0x20
[05] 00007FF606C79860  module=00007FF605820000  prot=0x20
[06] 00007FF606C0A1F0  module=00007FF605820000  prot=0x20
[07] 00007FF606C18800  module=00007FF605820000  prot=0x20
[08] 00007FF606C23C80  module=00007FF605820000  prot=0x20
[09] 00007FF606C153B0  module=00007FF605820000  prot=0x20
[10] 00007FF606C2E890  module=00007FF605820000  prot=0x20
[11] 00007FF606C1FE00  module=00007FF605820000  prot=0x20
[12] 00007FF60B8B6E30  module=00007FF605820000  prot=0x20
[13] 00007FF606C23D70  module=00007FF605820000  prot=0x20
[14] 00007FF606C1FE70  module=00007FF605820000  prot=0x20
[15] 00007FF606C23540  module=00007FF605820000  prot=0x20
[16] 00007FF60BB27180  module=00007FF605820000  prot=0x20
[17] 00007FF60B8B7330  module=00007FF605820000  prot=0x20
[18] 00007FF60B8B7350  module=00007FF605820000  prot=0x20
[19] 00007FF60B8B7370  module=00007FF605820000  prot=0x20
[20] 00007FF60B8B7270  module=00007FF605820000  prot=0x20
[21] 00007FF60B8B70F0  module=00007FF605820000  prot=0x20
[22] 00007FF60B8B70F0  module=00007FF605820000  prot=0x20
[23] 00007FF606BF4300  module=00007FF605820000  prot=0x20
[24] 00007FF606BF4870  module=00007FF605820000  prot=0x20

*/