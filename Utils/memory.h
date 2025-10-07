#ifndef MEMORY_H
#define MEMORY_H

#include <Windows.h>


namespace NewWorld {
	namespace Memory {

		bool IsValid(uintptr_t address) {
			if (IsBadReadPtr((void*)address, sizeof(uintptr_t)) || address <= 0xFFFFF || address >= 0xFFFFFFFFFFFFFF)
				return false;

			return true;
		}

		template <typename T>
		inline T Read(std::uintptr_t address) {
			if (!IsValid(address))
				return T();

			return *(T*)(address);
		}
	}
}

#endif