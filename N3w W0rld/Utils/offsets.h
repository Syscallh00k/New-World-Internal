#ifndef OFFSETS_H
#define OFFSETS_H

#include <Windows.h>

//https://obf-io.deobfuscate.io/
// global objs https://github.com/aws/lumberyard/blob/master/dev/Code/CryEngine/Cry3DEngine/3dEngine.cpp#L184

//global setup 48 89 5C 24 08 48 89 74 24 18 57 48 83 EC 50 48 8B DA 33

namespace NewWorld {
	namespace Offsets {
		namespace Global {
			const std::uint64_t MainSystem = 0xA516D38; // updated
			const std::uint64_t MainEnviorment = 0xA70E9E0; // updated
			
		}
		//Entity::DependencySortOutcome Entity::DependencySort(ComponentArrayType& inOutComponents)
		namespace Functions {
			const std::uint64_t ComponentTick = 0x147AEE0; // updated
			const std::uint64_t DependencySort = 0x13EA3F0; // updated https://github.com/aws/lumberyard/blob/413ecaf24d7a534801cac64f50272fe3191d278f/dev/Code/Framework/AzCore/AzCore/Component/Entity.cpp#L1069
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