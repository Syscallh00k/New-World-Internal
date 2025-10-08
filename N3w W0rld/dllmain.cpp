#include "Entry/entry.h"

DWORD WINAPI MainThread(LPVOID lpReserved) {

    NewWorld::Global::NewWorld = (std::uintptr_t)(GetModuleHandle(NULL));
    if (!NewWorld::Global::NewWorld)
    {
        printf("[/] Failed To Get Process Image\n");
        return FALSE;
    }

    printf("[/] Found NewWorld.exe 0x%p\n", NewWorld::Global::NewWorld);

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
        printf("[/] New World Internal\n");
        printf("[/] Creating Main Thread\n");
        CreateThread(0, 0, MainThread, lpReserved, 0, 0);
    }

    return TRUE;
}

