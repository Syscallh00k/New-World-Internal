#ifndef OFFSETS_H
#define OFFSETS_H

namespace NewWorld {
	namespace Offsets {
		namespace Global {
			const std::uint64_t MainSystem = 0xA516DB8; // updated
			const std::uint64_t MainEnviorment = 0xA70EA60; // updated
			const std::uint64_t Console = 0xA244448; // updated
		}
		namespace Functions {
			const std::uint64_t ComponentTick = 0x147AF30; // updated
			namespace Eac {
				const std::uint64_t ThrowHeartbeat = 0x4462860; // char __fastcall ThrowError(__int64 a1, __int64 a2) [ERROR] 0xCCC5000", "[ERROR] 0xCCC7000", "[ERROR] 0xCCC80000", "[ERROR] 0xCCC6000"
				const std::uint64_t ThrowHeatbeatTwo = 0x4464F50;
				const std::uint64_t ThrowHeatbeatThree = 0x44670D0;
				const std::uint64_t EacSetup = 0x4464120;
			}
			//0x7FF6D62B0000
			//https://github.com/aws/lumberyard/blob/413ecaf24d7a534801cac64f50272fe3191d278f/dev/Gems/CryLegacy/Code/Source/CryAnimation/Command_Buffer.cpp#L427
			namespace Render {
				const std::uint64_t DrawLabel3D = 0x6BFD5A0; //w %.2f a: %.2f\nmin %.2f\nmax %.2f\n
				const std::uint64_t DrawLabel2D = 0x6B38F0; //"SampleAddAnimFull: w:%f t:%f %s", "SampleBlendAnimPart: w:%f t:%f
				const std::uint64_t RenderHook = 0x5F32290; // some random fucntion that gives us access to draw without crashing, anyfunction that gets looped will work 
			}
			namespace Lua {
				const std::uint64_t luaL_openlibs = 0x78B9C40; // updated
				const std::uint64_t lua_pushglobaltable = 0x78B7FB0; // updated
				const std::uint64_t lua_newstate = 0x78B6FA0; //updated
				const std::uint64_t lua_pop = 0x78B8540; //updated
				const std::uint64_t lua_pushstring = 0x78B7EE0; // updated
				const std::uint64_t lua_tostring = 0x78B8710; //  updated
				const std::uint64_t lua_loadfile = 0x78BAC00; // updated  =stdin
				const std::uint64_t lua_pcall = 0x78B7C20; //[Debug Lib Error]:call_lua_function Call 
				const std::uint64_t lua_gettop = 0x78B7850; // updated 
				const std::uint64_t lua_readerString = 0x1421A60; // updated Failed to load script %s.
				const std::uint64_t lua_getfield = 0x78B7750; // updated
			}
		}
		namespace PlayerComponent {
			const std::uint64_t PlayerName = 0x198;
			const std::uint64_t WorldPosition = 0x14c;
		}
		namespace Enviroment {
			const std::uint64_t EntitySystem = 0x70;
		}
	}
}

#endif 