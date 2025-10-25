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

#include "../Hooks/kiero.h"
#include "xor.h"
#include "memory.h"
#include "offsets.h"
#include "math.h"
#include "../Eac/Eac.h"
#include <d3d9.h>

#define PI 3.14159265359 

namespace NewWorld {

    D3DMATRIX GetMatrix(Vector3 rot)
    {
        auto origin = Vector3(0, 0, 0);
        rot.z = 0;
        float radPitch = (rot.x * PI / 180.f);
        float radYaw = (rot.y * PI / 180.f);
        float radRoll = (rot.z * PI / 180.f);

        float SP = sinf(radPitch);
        float CP = cosf(radPitch);
        float SY = sinf(radYaw);
        float CY = cosf(radYaw);
        float SR = sinf(radRoll);
        float CR = cosf(radRoll);

        D3DMATRIX matrix;
        matrix.m[0][0] = CP * CY;
        matrix.m[0][1] = CP * SY;
        matrix.m[0][2] = SP;
        matrix.m[0][3] = 0.f;

        matrix.m[1][0] = SR * SP * CY - CR * SY;
        matrix.m[1][1] = SR * SP * SY + CR * CY;
        matrix.m[1][2] = -SR * CP;
        matrix.m[1][3] = 0.f;

        matrix.m[2][0] = -(CR * SP * CY + SR * SY);
        matrix.m[2][1] = CY * SR - CR * SP * SY;
        matrix.m[2][2] = CR * CP;
        matrix.m[2][3] = 0.f;

        matrix.m[3][0] = origin.x;
        matrix.m[3][1] = origin.y;
        matrix.m[3][2] = origin.z;
        matrix.m[3][3] = 1.f;

        return matrix;
    }


    Vector2 WorldToScreenNW(Vector3 WorldLocation, Vector3 cameraLocation, Vector3 cameraRotation,
        float   fieldOfView)
    {
        D3DMATRIX tempMatrix = GetMatrix(cameraRotation);

        auto vAxisX = Vector3(tempMatrix.m[0][0], tempMatrix.m[0][1], tempMatrix.m[0][2]);
        auto vAxisY = Vector3(tempMatrix.m[1][0], tempMatrix.m[1][1], tempMatrix.m[1][2]);
        auto vAxisZ = Vector3(tempMatrix.m[2][0], tempMatrix.m[2][1], tempMatrix.m[2][2]);


        Vector3 vDelta = WorldLocation - cameraLocation;
        auto    vTransformed = Vector3(vDelta.Dot(vAxisY), vDelta.Dot(vAxisZ), vDelta.Dot(vAxisX));
        if (vTransformed.z < 1.f)
            vTransformed.z = 1.f;

        static float screen_X = (float)GetSystemMetrics(0);
        static float screen_Y = (float)GetSystemMetrics(1);
        float ScreenCenterX = screen_X / 2;
        float ScreenCenterY = screen_Y / 2;


        return Vector2(ScreenCenterX - vTransformed.x * (ScreenCenterX / tanf(fieldOfView * PI / 360.f)) / vTransformed.z,
            ScreenCenterY - vTransformed.z * (ScreenCenterX / tanf(fieldOfView * PI / 360.f)) / vTransformed.z);
    }

	namespace Global {
        struct ObjectComponents {
            uintptr_t PlayerComponent;
            uintptr_t GameTransformComponent;
            const char* username;
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
	}
}

#endif