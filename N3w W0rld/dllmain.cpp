#include "Entry/entry.h"

DWORD WINAPI MainThread(LPVOID lpReserved) {
    NewWorld::Entry();

    return TRUE;
}

BOOL APIENTRY DllMain(HMODULE hModule, DWORD  ul_reason_for_call, LPVOID lpReserved)
{
    if (ul_reason_for_call == DLL_PROCESS_ATTACH)
    {
        DWORD dwOldProtectFlag_text;
        VirtualProtect((int*)0x0401000, 0x5F0FFF - 0x0401000, 0x40, &dwOldProtectFlag_text);

        DisableThreadLibraryCalls(hModule);
        AllocConsole();
        freopen_s(reinterpret_cast<FILE**>(stdin), "CONIN$", "r", stdin);
        freopen_s(reinterpret_cast<FILE**>(stdout), "CONOUT$", "w", stdout);

        printf("[/] New World Internal\n");
        printf("[/] Creating Main Thread\n");

        CreateThread(0, 0, (LPTHREAD_START_ROUTINE)NewWorld::Update, 0, 0, 0);
        CreateThread(0, 0, MainThread, lpReserved, 0, 0);

        VirtualProtect((int*)0x0401000, 0x5F0FFF - 0x0401000, dwOldProtectFlag_text, &dwOldProtectFlag_text);
    }

    return TRUE;
}

