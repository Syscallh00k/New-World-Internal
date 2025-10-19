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
		namespace Functions {
			const std::uint64_t ComponentTick = 0x147AEE0; // updated
			const std::uint64_t DependencySort = 0x13EA3F0; // updated https://github.com/aws/lumberyard/blob/413ecaf24d7a534801cac64f50272fe3191d278f/dev/Code/Framework/AzCore/AzCore/Component/Entity.cpp#L1069

			//0x7FF671020000
			namespace Lua {
				const std::uint64_t lua_getmetatable = 0x078B7380;
				const std::uint64_t lua_createtable = 0x078B6FA0;
				const std::uint64_t lua_pushliteral = 0x0ABF07D0; //OnActivate
				const std::uint64_t lua_pushcclosure = 0x078B7890;
				const std::uint64_t lua_rawset = 0x078B7CC0;
				const std::uint64_t lua_atpanic = 0x078B6EB0;
				const std::uint64_t luaL_openlibs = 0x078B9800;
				const std::uint64_t lua_pushglobaltable = 0x078B7B70;
				const std::uint64_t lua_newstate = 0x078B6B60;
				const std::uint64_t lua_pop = 0x078B8100;
				const std::uint64_t lua_pushstring = 0x078B7AA0;
				const std::uint64_t lua_pushlightuserdata = 0x078B79D0;
				const std::uint64_t lua_pushboolean = 0x078B7870;
				const std::uint64_t lua_tostring = 0x078B82D0;
				const std::uint64_t lua_loadfile = 0x078BA7C0;
				const std::uint64_t lua_cpcall = 0x078CBDB0; // =(debug command)
				const std::uint64_t lua_pcall = 0x78B77E0; // [Debug Lib Error]:call_lua_function Call '%s' error. ErrorCode: %d, ErrorMessage: %s.\n
				const std::uint64_t lua_rawget = 0x78B7C40;
				const std::uint64_t lua_isfunction = 0x78B8480;
				const std::uint64_t lua_rawgeti = 0x78B7C80;
				const std::uint64_t LuaSafeCall = 0x1421880; //AZ::Internal::LuaSafeCall
				const std::uint64_t lua_gettop = 0x78B7410;
				const std::uint64_t luaL_ref = 0x78BACC0;
				const std::uint64_t lua_getfield = 0x78B7310;
			}

			
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