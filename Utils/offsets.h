#ifndef OFFSETS_H
#define OFFSETS_H

#include <Windows.h>

// global objs https://github.com/aws/lumberyard/blob/master/dev/Code/CryEngine/Cry3DEngine/3dEngine.cpp#L184
// gEnv https://github.com/aws/lumberyard/blob/413ecaf24d7a534801cac64f50272fe3191d278f/dev/Code/CryEngine/CrySystem/TestSystemLegacy.cpp#L255
//g_pI3DEngine = (*(__int64 (__fastcall **)(__int64))(*(_QWORD *)g_ISystem + 0x1D8LL))(g_ISystem);
namespace NewWorld {
	namespace Offsets {
		namespace Global {
			inline const std::uint64_t MainSystem = 0xA2D6498;
			inline const std::uint64_t MainEnviorment = 0xA4CE0A0;
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