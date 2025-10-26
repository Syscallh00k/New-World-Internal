#ifndef GLOBAL_H
#define GLOBAL_H

#include <Windows.h>
#include <iostream>
#include <vector>
#include <thread>
#include <filesystem>
#include <mutex>
#include <MinHook.h>
#include <fstream>
#include <map>
#include <set>

#include "../Hooks/kiero.h"
#include "xor.h"
#include "memory.h"
#include "offsets.h"
#include "math.h"
#include "../Eac/Eac.h"

namespace NewWorld {

  
	namespace Global {
        struct ObjectComponents {
            uintptr_t PlayerComponent;
            uintptr_t GameTransformComponent;
			uintptr_t CharacterComponent;
			uintptr_t SkinnedMeshComponent;
			uintptr_t InterestComponent;
            const char* username;
        };
		struct LootComponent {
			uintptr_t GameTransformComponent;
			uintptr_t PrefabSpawnerComponent;
			const char* type;
		};
		std::uintptr_t NewWorld;
		std::uintptr_t ISystem;
		std::uintptr_t IConsole;
		std::uintptr_t gEnv;
		std::uintptr_t IEntitySystem;
		std::uintptr_t CCamera;
		std::uintptr_t IGame;

		std::mutex listMtx;
		std::vector<std::uintptr_t> EntityList;

        std::mutex finalMtx;
        std::vector<ObjectComponents> FinalList;

		std::mutex lootMtx;
        std::vector<LootComponent> LootList;
	}
}

#endif