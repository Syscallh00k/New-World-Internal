#ifndef GLOBAL_H
#define GLOBAL_H

#include <Windows.h>
#include <iostream>
#include <vector>
#include <thread>
#include <filesystem>
#include <mutex>
#include <MinHook.h>
#include <d3d11.h>
#include <dxgi.h>
#include <fstream>
#include <map>
#include <set>

//imgui
#include "../imgui/imgui.h"
#include "../imgui/imgui_impl_dx11.h"
#include "../imgui/imgui_impl_win32.h"

#include "../Hooks/kiero.h"
#include "xor.h"
#include "memory.h"
#include "offsets.h"
#include "math.h"
#include "../Eac/Eac.h"

namespace NewWorld {
	namespace Global {
		std::uintptr_t NewWorld;
		std::uintptr_t ISystem;
		std::uintptr_t IConsole;
		std::uintptr_t gEnv;
		std::uintptr_t IEntitySystem;
		std::uintptr_t CCamera;
		std::uintptr_t IGame;

		std::mutex listMtx;
		std::vector<std::uintptr_t> EntityList;
	}
}

#endif