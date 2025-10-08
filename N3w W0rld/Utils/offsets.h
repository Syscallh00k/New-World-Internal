#ifndef OFFSETS_H
#define OFFSETS_H

#include <Windows.h>

// global objs https://github.com/aws/lumberyard/blob/master/dev/Code/CryEngine/Cry3DEngine/3dEngine.cpp#L184
// gEnv https://github.com/aws/lumberyard/blob/413ecaf24d7a534801cac64f50272fe3191d278f/dev/Code/CryEngine/CrySystem/TestSystemLegacy.cpp#L255

//0x7FF6E6AA0000
namespace NewWorld {
	namespace Offsets {
		namespace Global {
			inline const char* MainSystem_Sig = "48 89 35 3D BC 70 03 48 8B 0D 3E 38 90 03";
			inline const char* MainEnviorment_Sig = "48 89 05 A1 BF 53 03 48 89 05 A1 BF 53 03";
			inline std::uint64_t MainSystem = 0;
			inline std::uint64_t MainEnviorment = 0;
			inline const std::uint64_t ObjectManager = 0xA2A4158; 
			inline const std::uint64_t SkyManager = 0xA2A4168;
			inline const std::uint64_t GameManager = 0xA2A4178;
			
		}
		namespace Functions {
			inline const std::uint64_t ProcessPlayer = 0x5BBB960;
		}
		namespace Engine {
			inline const std::uint64_t Renderer = 0x138;
		}
		namespace Enviroment {
			inline const std::uint64_t EntitySystem = 0xE;
			inline const std::uint64_t PreCachedFlags = 0x247;
			inline const std::uint64_t CachedWorld = 0xF;
		}

	}
}

// EntitySystem -> https://github.com/aws/lumberyard/blob/413ecaf24d7a534801cac64f50272fe3191d278f/dev/Code/CryEngine/CryCommon/IEntitySystem.h#L422

#endif 