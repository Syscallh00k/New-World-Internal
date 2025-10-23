#include "Render/Render.h"


DWORD WINAPI MainThread(LPVOID lpReserved) {

    bool init_hook = false;
    do
    {
        if (kiero::init(kiero::RenderType::D3D11) == kiero::Status::Success)
        {
            printf("placed render hook\n");
            kiero::bind(8, (void**)&oPresent, hkPresent);
            init_hook = true;
        }
    } while (!init_hook);
    return TRUE;
}

BOOL APIENTRY DllMain(HMODULE hModule, DWORD  ul_reason_for_call, LPVOID lpReserved)
{
    if (ul_reason_for_call == DLL_PROCESS_ATTACH)
    {
        DisableThreadLibraryCalls(hModule);
        AllocConsole();
        freopen_s(reinterpret_cast<FILE**>(stdin), _("CONIN$"), _("r"), stdin);
        freopen_s(reinterpret_cast<FILE**>(stdout), _("CONOUT$"), _("w"), stdout);

        NewWorld::Global::NewWorld = (std::uintptr_t)(GetModuleHandle(NULL));
        printf(_("process base 0x%p\n"), NewWorld::Global::NewWorld);

        printf(_("I Love New World uwu\n"));
        printf(_("Fixing Eac Heart Beat :)\n"));
       
		//MH_Initialize();
        //NewWorld::Eac::Setup();
       // NewWorld::Eac::CreateHooks();

        //CreateThread(0, 0, (LPTHREAD_START_ROUTINE)NewWorld::Update, 0, 0, 0);
        CreateThread(0, 0, MainThread, lpReserved, 0, 0);
    }

    return TRUE;
}

