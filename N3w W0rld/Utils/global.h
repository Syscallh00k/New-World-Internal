#ifndef GLOBAL_H
#define GLOBAL_H

#include <Windows.h>
#include <iostream>
#include <vector>
#include <thread>
#include <filesystem>


#include "memory.h"
#include "offsets.h"


namespace NewWorld {
	namespace Global {
		std::uintptr_t NewWorld;
		std::uintptr_t ISystem;
		std::uintptr_t IConsole;
		std::uintptr_t IEngine;
		std::uintptr_t IWorld;
		std::uintptr_t IRenderer;
		std::uintptr_t gEnv;
		std::uintptr_t IEntitySystem;
		std::uintptr_t ISky;
		std::uintptr_t IGame;
		std::uintptr_t IObjectManager;

	}
}

#endif