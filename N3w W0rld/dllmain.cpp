#define WIN32_LEAN_AND_MEAN
#include <winsock2.h>
#include <ws2spi.h>
#include <windows.h>

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
        freopen_s(reinterpret_cast<FILE**>(stdin), _("CONIN$"), _("r"), stdin);
        freopen_s(reinterpret_cast<FILE**>(stdout), _("CONOUT$"), _("w"), stdout);

        NewWorld::Global::NewWorld = (std::uintptr_t)(GetModuleHandle(NULL));
        printf(_("process base 0x%p\n"), NewWorld::Global::NewWorld);

        printf(_("I Love New World uwu\n"));
        printf(_("Fixing Eac Heart Beat :)\n"));
       
		MH_Initialize();
       // NewWorld::Eac::Setup();
        //NewWorld::Eac::CreateHooks();
        
        CreateThread(0, 0, (LPTHREAD_START_ROUTINE)NewWorld::Update, 0, 0, 0);
        CreateThread(0, 0, MainThread, lpReserved, 0, 0);
    }

    return TRUE;
}


/*
DumpVTable for obj=0000020A96510100
vtable = 00007FF77E573F50
[00] 00007FF776F82980  module=00007FF7766C0000  prot=0x20 -- name table
[01] 00007FF77C5F2290  module=00007FF7766C0000  prot=0x20 -- this is a good hook i think
[02] 00007FF776952400  module=00007FF7766C0000  prot=0x20
[03] 00007FF776F69B40  module=00007FF7766C0000  prot=0x20
[04] 00007FF776952350  module=00007FF7766C0000  prot=0x20
[05] 00007FF776F83BA0  module=00007FF7766C0000  prot=0x20
[06] 00007FF776F89550  module=00007FF7766C0000  prot=0x20
[07] 00007FF776F69420  module=00007FF7766C0000  prot=0x20
[08] 00007FF776F77960  module=00007FF7766C0000  prot=0x20
[09] 00007FF776F6A550  module=00007FF7766C0000  prot=0x20
[10] 00007FF776F76E80  module=00007FF7766C0000  prot=0x20
[11] 00007FF776F912C0  module=00007FF7766C0000  prot=0x20
[12] 00007FF776F912B0  module=00007FF7766C0000  prot=0x20
[13] 00007FF77C4B8F20  module=00007FF7766C0000  prot=0x20
[14] 00007FF776F656C0  module=00007FF7766C0000  prot=0x20
[15] 00007FF77C4976D0  module=00007FF7766C0000  prot=0x20
[16] 00007FF77C5D0B60  module=00007FF7766C0000  prot=0x20
[17] 00007FF7769B0C00  module=00007FF7766C0000  prot=0x20
[18] 00007FF776F7FAB0  module=00007FF7766C0000  prot=0x20
[19] 00007FF77C595D40  module=00007FF7766C0000  prot=0x20
[20] 00007FF77C571B70  module=00007FF7766C0000  prot=0x20
[21] 00007FF776F7CB50  module=00007FF7766C0000  prot=0x20
[22] 00007FF776F7E470  module=00007FF7766C0000  prot=0x20
[23] 00007FF776952340  module=00007FF7766C0000  prot=0x20
[24] 00007FF776952340  module=00007FF7766C0000  prot=0x20
[25] 00007FF776952340  module=00007FF7766C0000  prot=0x20
[26] 00007FF776952350  module=00007FF7766C0000  prot=0x20
[27] 00007FF776952340  module=00007FF7766C0000  prot=0x20
[28] 00007FF776952340  module=00007FF7766C0000  prot=0x20
[29] 00007FF776D847F0  module=00007FF7766C0000  prot=0x20
[30] 00007FF776F917F0  module=00007FF7766C0000  prot=0x20
[31] 00007FF776F84F40  module=00007FF7766C0000  prot=0x20
*/
