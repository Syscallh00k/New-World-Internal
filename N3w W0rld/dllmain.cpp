#include "Entry/entry.h"


DWORD WINAPI MainThread(LPVOID lpReserved) {

    NewWorld::Entry();

    return TRUE;
}

BOOL APIENTRY DllMain(HMODULE hModule, DWORD  ul_reason_for_call, LPVOID lpReserved)
{
    if (ul_reason_for_call == DLL_PROCESS_ATTACH)
    {
        DisableThreadLibraryCalls(hModule);
        AllocConsole();
        freopen_s(reinterpret_cast<FILE**>(stdin), "CONIN$", "r", stdin);
        freopen_s(reinterpret_cast<FILE**>(stdout), "CONOUT$", "w", stdout);

        NewWorld::Global::NewWorld = (std::uintptr_t)(GetModuleHandle(NULL));
        printf("process base 0x%p\n", NewWorld::Global::NewWorld);

        printf("I Love New World uwu\n");
        printf("Fixing Eac Heart Beat :)\n");
       
		MH_Initialize();
        NewWorld::Eac::Setup();
        NewWorld::Eac::CreateHooks();
	

        CreateThread(0, 0, (LPTHREAD_START_ROUTINE)NewWorld::Update, 0, 0, 0);
        CreateThread(0, 0, MainThread, lpReserved, 0, 0);
    }

    return TRUE;
}

