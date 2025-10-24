#ifndef Tick_H
#define Tick_H
/*
* calls 
* 7FF649BFE13C - pointer 7FF649D8DB50
* 7FF65074CDD5 
* 7FF6503B1090 
* 7FF649BFE17C - pointer  Command Data
* 7FF64992C19C  - pointer to draw
DumpVTable for obj=00000008F4AFD210
vtable = 00007FF651BEA840
[00] 00007FF6507F7090  module=00007FF649690000  prot=0x20
[01] 00007FF64AAE5290  module=00007FF649690000  prot=0x20
[02] 00007FF64AB118F0  module=00007FF649690000  prot=0x20
[03] 00007FF649AFB060  module=00007FF649690000  prot=0x20
[04] 00007FF64AA05F00 sad  module=00007FF649690000  prot=0x20
[05] 00007FF64AAE98B0  module=00007FF649690000  prot=0x20
[06] 00007FF64AA7A240  module=00007FF649690000  prot=0x20
[07] 00007FF64AA88850  module=00007FF649690000  prot=0x20
[08] 00007FF64AA93CD0  module=00007FF649690000  prot=0x20
[09] 00007FF64AA85400 maybe ent  module=00007FF649690000  prot=0x20
[10] 00007FF64AA9E8E0  module=00007FF649690000  prot=0x20
[11] 00007FF64AA8FE50  module=00007FF649690000  prot=0x20
[12] 00007FF64F7271A0  module=00007FF649690000  prot=0x20
[13] 00007FF64AA93DC0  module=00007FF649690000  prot=0x20
[14] 00007FF64AA8FEC0  module=00007FF649690000  prot=0x20
[15] 00007FF64AA93590  module=00007FF649690000  prot=0x20
[16] 00007FF64F9974F0  module=00007FF649690000  prot=0x20
[17] 00007FF64F7276A0  module=00007FF649690000  prot=0x20
[18] 00007FF64F7276C0  module=00007FF649690000  prot=0x20
[19] 00007FF64F7276E0  module=00007FF649690000  prot=0x20
[20] 00007FF64F7275E0  module=00007FF649690000  prot=0x20
[21] 00007FF64F727460  module=00007FF649690000  prot=0x20
[22] 00007FF64F727460  module=00007FF649690000  prot=0x20
[23] 00007FF64AA64350  module=00007FF649690000  prot=0x20
[24] 00007FF64AA648C0  module=00007FF649690000  prot=0x20
[25] 00007FF64AA7BA80  module=00007FF649690000  prot=0x20
[26] 00007FF64AB0AF30  module=00007FF649690000  prot=0x20
[27] 00007FF64AB0B080  module=00007FF649690000  prot=0x20
[28] 00007FF6507FB080  module=00007FF649690000  prot=0x20
[29] 00007FF64F93C7B0  module=00007FF649690000  prot=0x20
[30] 00007FF64F726F00  module=00007FF649690000  prot=0x20
[31] 00007FF64F967B50  module=00007FF649690000  prot=0x20*/
namespace NewWorld {
	namespace Hooks {
		namespace Component
		{
            typedef void(*ComponentApplicationTick_s) (uintptr_t, float);
            ComponentApplicationTick_s ComponentApplicationTick_o = nullptr;
            static bool dumped = false;
            static uintptr_t best_state = 0;
            void __fastcall ComponentApplicationTickHook(uintptr_t rcx, float delta_time)
            {
            
                uintptr_t listHeadAddr = rcx + 0xF0;
                uintptr_t firstNode = 0;
                if (!Memory::SafeRead(listHeadAddr, firstNode) || firstNode == 0 || firstNode == listHeadAddr) {
                    if (ComponentApplicationTick_o) ComponentApplicationTick_o(rcx, delta_time);
                    return;
                }

                const size_t MAX_NODES = 250;
                size_t count = 0;
                uintptr_t currentNode = firstNode;
                std::vector<uintptr_t> temp_objs;
                temp_objs.reserve(250);

                do
                {
                    temp_objs.emplace_back(currentNode);
                    ++count;

                    if (count >= MAX_NODES) break;

                    uintptr_t nextNode = 0;
                    if (!Memory::SafeRead(currentNode, nextNode) || nextNode == 0)
                        break;

                    currentNode = nextNode;

                } while (currentNode != listHeadAddr);

                {
                    std::lock_guard<std::mutex> lock(Global::listMtx);
                    Global::EntityList.swap(temp_objs);
                }

                if (ComponentApplicationTick_o) ComponentApplicationTick_o(rcx, delta_time);
            }
		}
	}
}

#endif