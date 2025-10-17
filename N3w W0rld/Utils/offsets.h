#ifndef OFFSETS_H
#define OFFSETS_H

#include <Windows.h>
//https://obf-io.deobfuscate.io/
// global objs https://github.com/aws/lumberyard/blob/master/dev/Code/CryEngine/Cry3DEngine/3dEngine.cpp#L184

//global setup 48 89 5C 24 08 48 89 74 24 18 57 48 83 EC 50 48 8B DA 33
namespace NewWorld {
	namespace Offsets {
		namespace Global {
			const char* MainSystem_Sig = "48 89 35 3D BC 70 03 48 8B 0D 3E 38 90 03";
			const char* MainEnviorment_Sig = "48 89 05 A1 BF 53 03 48 89 05 A1 BF 53 03";
			const std::uint64_t MainSystem = 0xA516D38;
			const std::uint64_t MainEnviorment = 0xA70E9E0;
			const std::uint64_t ObjectManager = 0xA2A4158; 
			const std::uint64_t SkyManager = 0xA2A4168;
			const std::uint64_t GameManager = 0xA2A4178;
			
		}
		namespace Functions {
			const std::uint64_t ProcessPlayer = 0x5BBB960;
		}
		namespace Engine {
			const std::uint64_t Renderer = 0x138;
		}
		namespace Enviroment {
			const std::uint64_t EntitySystem = 0x70;
			const std::uint64_t PreCachedFlags = 0x247;
			const std::uint64_t CachedWorld = 0xF * 8;
		}

	}
}

#endif 