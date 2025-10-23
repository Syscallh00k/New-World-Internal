#ifndef Eac_H
#define Eac_H

#include <random>

EXTERN_C typedef uint64_t EOS_NotificationId;

#define EOS_PASTE(...) __VA_ARGS__
#define EOS_STRUCT(struct_name, struct_def)           \
	EXTERN_C typedef struct _tag ## struct_name {     \
		EOS_PASTE struct_def                          \
	} struct_name

EOS_STRUCT(EOS_AntiCheatClient_OnMessageToServerCallbackInfo, (
	void* ClientData;
const void* MessageData;
uint32_t MessageDataSizeBytes;
));
EOS_STRUCT(EOS_AntiCheatClient_OnClientIntegrityViolatedCallbackInfo, (
	/** Caller-specified context data */
	void* ClientData;
/** Code describing the violation that occurred */
uint32_t ViolationType;
/** String describing the violation which should be displayed to the user */
const char* ViolationMessage;
));
namespace NewWorld {
	namespace Eac {
		using EOS_Mercury_Initialize_t = uintptr_t(__fastcall*)(uintptr_t);
		EOS_Mercury_Initialize_t EOS_Mercury_Initialize_original = nullptr;

		using EOS_Mercury_Tick_t = uintptr_t(*)();
		EOS_Mercury_Tick_t EOS_Mercury_Tick_o;

		using EOS_AntiCheatClient_AddNotifyClientIntegrityViolated_t = uintptr_t(*)(uintptr_t, uintptr_t, uintptr_t, uintptr_t);
		EOS_AntiCheatClient_AddNotifyClientIntegrityViolated_t EOS_AntiCheatClient_AddNotifyClientIntegrityViolated_o;

		using EOS_Auth_VerifyUserAuth_t = uintptr_t(__fastcall*)(uintptr_t, uintptr_t, uintptr_t);
		EOS_Auth_VerifyUserAuth_t EOS_Auth_VerifyUserAuth_o = nullptr;

		using EOS_AntiCheatServer_UnregisterClient_t = uintptr_t(__fastcall*)(uintptr_t, uintptr_t);
		EOS_AntiCheatServer_UnregisterClient_t EOS_AntiCheatServer_UnregisterClient_o = nullptr;

		using EOS_AntiCheatServer_RegisterClient_t = uintptr_t(__fastcall*)(uintptr_t, uintptr_t);
		EOS_AntiCheatServer_RegisterClient_t EOS_AntiCheatServer_RegisterClient_o = nullptr;

		using EOS_Initialize_t = uintptr_t(__fastcall*)(uintptr_t);
		EOS_Initialize_t EOS_Initialize_o = nullptr;

		using EOS_AntiCheatClient_BeginSession_t = uintptr_t(__fastcall*)(uintptr_t, uintptr_t);
		EOS_AntiCheatClient_BeginSession_t EOS_AntiCheatClient_BeginSession_o = nullptr;

		using EOS_P2P_CloseConnection_t = uintptr_t(__fastcall*)(uintptr_t, uintptr_t);
		EOS_P2P_CloseConnection_t EOS_P2P_CloseConnection_o = nullptr;

		using EOS_Platform_Tick_t = uintptr_t(__fastcall*)(uintptr_t);
		EOS_Platform_Tick_t EOS_Platform_Tick_o = nullptr;

		typedef MMRESULT(WINAPI* timeBeginPeriod_t)(UINT uPeriod);
		timeBeginPeriod_t pOriginalTimeBeginPeriod = nullptr;

		typedef BOOL(WINAPI* IsDebuggerPresent_t)();
		IsDebuggerPresent_t pOriginalIsDebuggerPresent = nullptr;

		typedef HRESULT(WINAPI* SetThreadDescription_t)(HANDLE hThread, PCWSTR lpThreadDescription);
		SetThreadDescription_t pOriginalSetThreadDescription = nullptr;
		HMODULE eac_dll;

		const char* tFunction_list[10] = {
			_("EOS_Auth_VerifyUserAuth"),
			_("EOS_AntiCheatServer_UnregisterClient"),
			_("EOS_AntiCheatServer_RegisterClient"),
			_("EOS_Initialize"),
			_("EOS_Mercury_Tick"),
			_("EOS_Mercury_Initialize"),
			_("EOS_AntiCheatClient_BeginSession"),
			_("EOS_P2P_CloseConnection"),
			_("EOS_Platform_Tick"),
			_("EOS_AntiCheatClient_AddNotifyClientIntegrityViolated")
		};

		struct Functions {
			void* EOS_Auth_VerifyUserAuth;
			void* EOS_AntiCheatServer_UnregisterClient;
			void* EOS_AntiCheatServer_RegisterClient;
			void* EOS_Initialize;
			void* EOS_Mercury_Tick;
			void* EOS_Mercury_Initialize;
			void* EOS_AntiCheatClient_BeginSession;
			void* EOS_P2P_CloseConnection;
			void* EOS_Platform_Tick;
			void* EOS_AntiCheatClient_AddNotifyClientIntegrityViolated;
		};

		Functions func;

		void Setup() {
			eac_dll = LoadLibraryA(_("EOSSDK-Win64-Shipping.dll"));
			if (!eac_dll) {
				printf(_("[/] Failed To Get Eac Module\n"));
				return;
			}
			printf(_("[/] Eac Module Found\n"));
			printf(_("[/] Fixing Eac Module\n"));

			for (int i = 0; i < sizeof(tFunction_list) / sizeof(tFunction_list[0]); i++) {
				((void**)&func)[i] = GetProcAddress(eac_dll, tFunction_list[i]);
			}
		}

		uintptr_t MercuryInitializeHook(uintptr_t param) {
			return NULL;
		}

		uintptr_t MercuryTickHook() {
			return NULL;
		}

		uintptr_t AuthVerifyUserAuthHook(uintptr_t a1, uintptr_t a2, uintptr_t a3) {
			return NULL;
		}

		uintptr_t AntiCheatServerUnregisterClientHook(uintptr_t a1, uintptr_t a2) {
			return NULL;
		}

		uintptr_t AntiCheatServerRegisterClientHook(uintptr_t a1, uintptr_t a2) {
			return NULL;
		}

		uintptr_t InitializeHook(uintptr_t param) {
			return NULL;
		}

		uintptr_t AntiCheatClientBeginSessionHook(uintptr_t a1, uintptr_t a2) {
			return NULL;
		}

		uintptr_t P2PCloseConnectionHook(uintptr_t a1, uintptr_t a2) {
			return NULL;
		}

		uintptr_t PlatformTickHook(uintptr_t param) {
			return NULL;
		}

		uintptr_t EOS_AntiCheatClient_AddNotifyClientIntegrityViolatedHook(uintptr_t a1, uintptr_t a2, uintptr_t a3, uintptr_t a4) {
			std::random_device dev;
			std::mt19937 rng(dev());
			std::uniform_int_distribution<std::mt19937::result_type> dist6(1, 199);
			return static_cast<EOS_NotificationId>(dist6(rng));
		}

		MMRESULT WINAPI timeBeginPeriod_Hook(UINT uPeriod)
		{
			return TIMERR_NOERROR;
		}

	
		BOOL WINAPI IsDebuggerPresent_Hook()
		{
			return FALSE;
		}

		HRESULT WINAPI SetThreadDescription_Hook(HANDLE hThread, PCWSTR lpThreadDescription)
		{
			if (lpThreadDescription)
			{
				return NULL;
			}

			return pOriginalSetThreadDescription(hThread, lpThreadDescription);
		}


		void CreateHooks() {

			MH_CreateHook(NewWorld::Eac::func.EOS_Mercury_Initialize, &NewWorld::Eac::MercuryInitializeHook, reinterpret_cast<LPVOID*>(&NewWorld::Eac::EOS_Mercury_Initialize_original));
			MH_EnableHook(NewWorld::Eac::func.EOS_Mercury_Initialize);

			MH_CreateHook(NewWorld::Eac::func.EOS_Mercury_Tick, &NewWorld::Eac::MercuryTickHook, reinterpret_cast<LPVOID*>(&NewWorld::Eac::EOS_Mercury_Tick_o));
			MH_EnableHook(NewWorld::Eac::func.EOS_Mercury_Tick);

			MH_CreateHook(NewWorld::Eac::func.EOS_Auth_VerifyUserAuth, &NewWorld::Eac::AuthVerifyUserAuthHook, reinterpret_cast<LPVOID*>(&NewWorld::Eac::EOS_Auth_VerifyUserAuth_o));
			MH_EnableHook(NewWorld::Eac::func.EOS_Auth_VerifyUserAuth);

			MH_CreateHook(NewWorld::Eac::func.EOS_AntiCheatClient_AddNotifyClientIntegrityViolated, &NewWorld::Eac::EOS_AntiCheatClient_AddNotifyClientIntegrityViolatedHook, reinterpret_cast<LPVOID*>(&NewWorld::Eac::EOS_AntiCheatClient_AddNotifyClientIntegrityViolated_o));
			
			MH_CreateHook(NewWorld::Eac::func.EOS_AntiCheatServer_UnregisterClient, &NewWorld::Eac::AntiCheatServerUnregisterClientHook, reinterpret_cast<LPVOID*>(&NewWorld::Eac::EOS_AntiCheatServer_UnregisterClient_o));
			MH_EnableHook(NewWorld::Eac::func.EOS_AntiCheatServer_UnregisterClient);

			MH_CreateHook(NewWorld::Eac::func.EOS_AntiCheatServer_RegisterClient, &NewWorld::Eac::AntiCheatServerRegisterClientHook, reinterpret_cast<LPVOID*>(&NewWorld::Eac::EOS_AntiCheatServer_RegisterClient_o));
			MH_EnableHook(NewWorld::Eac::func.EOS_AntiCheatServer_RegisterClient);

			MH_CreateHook(NewWorld::Eac::func.EOS_Initialize, &NewWorld::Eac::InitializeHook, reinterpret_cast<LPVOID*>(&NewWorld::Eac::EOS_Initialize_o));
			MH_EnableHook(NewWorld::Eac::func.EOS_Initialize);

			MH_CreateHook(NewWorld::Eac::func.EOS_AntiCheatClient_BeginSession, &NewWorld::Eac::AntiCheatClientBeginSessionHook, reinterpret_cast<LPVOID*>(&NewWorld::Eac::EOS_AntiCheatClient_BeginSession_o));
			MH_EnableHook(NewWorld::Eac::func.EOS_AntiCheatClient_BeginSession);

			MH_CreateHook(NewWorld::Eac::func.EOS_P2P_CloseConnection, &NewWorld::Eac::P2PCloseConnectionHook, reinterpret_cast<LPVOID*>(&NewWorld::Eac::EOS_P2P_CloseConnection_o));
			MH_EnableHook(NewWorld::Eac::func.EOS_P2P_CloseConnection);

			MH_CreateHook(NewWorld::Eac::func.EOS_Platform_Tick, &NewWorld::Eac::PlatformTickHook, reinterpret_cast<LPVOID*>(&NewWorld::Eac::EOS_Platform_Tick_o));
			MH_EnableHook(NewWorld::Eac::func.EOS_Platform_Tick);

			MH_CreateHook(GetProcAddress(GetModuleHandleA("KERNEL32.DLL"), "IsDebuggerPresent"),
				&IsDebuggerPresent_Hook,
				reinterpret_cast<LPVOID*>(&pOriginalIsDebuggerPresent));
			MH_EnableHook((void*)GetProcAddress(GetModuleHandleA("KERNEL32.DLL"), "IsDebuggerPresent"));

			MH_CreateHook(GetProcAddress(GetModuleHandleA("KERNEL32.DLL"), "SetThreadDescription"),
				&SetThreadDescription_Hook,
				reinterpret_cast<LPVOID*>(&pOriginalSetThreadDescription));
			MH_EnableHook((void*)GetProcAddress(GetModuleHandleA("KERNEL32.DLL"), "SetThreadDescription"));

			MH_CreateHook(GetProcAddress(GetModuleHandleA("winmm.dll"), "timeBeginPeriod"),
				&timeBeginPeriod_Hook,
				reinterpret_cast<LPVOID*>(&pOriginalTimeBeginPeriod));
			MH_EnableHook((void*)GetProcAddress(GetModuleHandleA("winmm.dll"), "timeBeginPeriod"));
		}
	}
}

#endif