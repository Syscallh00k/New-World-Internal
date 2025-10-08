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
		inline std::uintptr_t NewWorld;
		inline std::uintptr_t ISystem;
		inline std::uintptr_t IConsole;
		inline std::uintptr_t IEngine;
		inline std::uintptr_t IWorld;
		inline std::uintptr_t IRenderer;
		inline std::uintptr_t gEnv;
		inline std::uintptr_t ISky;
		inline std::uintptr_t IGame;
		inline std::uintptr_t IObjectManager;

	}
}

#endif