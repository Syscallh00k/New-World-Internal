#ifndef Math_H
#define Math_H

#include <math.h>
#include <d3d11.h>
#include <dxgi.h>
#include <d3d9.h>

#define PI 3.14159265359 

namespace NewWorld{

    

	class Vector3 {
	public:
		float x, y, z;

		Vector3(float _x, float _y, float _z)
			: x(_x), y(_y), z(_z) {
		}
        Vector3 operator+(const Vector3& value) const {
            return Vector3(x + value.x, y + value.y, z + value.z);
        }
        Vector3 operator-(const Vector3& value) const {
            return Vector3(x - value.x, y - value.y, z - value.z);
        }
        Vector3 operator/(const Vector3& value) const {
            return Vector3(x / value.x, y / value.y, z / value.z);
        }
        Vector3 operator*(const Vector3& value) const {
            return Vector3(x * value.x, y * value.y, z * value.z);
        }

		float Dot(const Vector3& Vec2) {
			return this->x * Vec2.x + this->y * Vec2.y + this->z * Vec2.z;
		}
		float DistTo(Vector3 ape)
		{
			return (*this - ape).Length();
		}
		bool IsEmpty() {
			if (x == 0 && y == 0 && z == 0)
				return true;

			return false;
		}
		float Length() const {
			return sqrtf(x * x + y * y + z * z);
		}

	};

	class Vector2 {
	public:
		float x, y;

		Vector2(float _x, float _y) {
			_x = x;
			_y = y;
		}
		Vector2 operator+(Vector2 value) {
			return Vector2(value.x + x, value.y + y);
		}
		Vector2 operator-(Vector2 value) {
			return Vector2(value.x - x, value.y - y);
		}
		Vector2 operator/(Vector2 value) {
			return Vector2(value.x / x, value.y / y);
		}
		Vector2 operator*(Vector2 value) {
			return Vector2(value.x * x, value.y * y);
		}
	};
    struct Matrix4x4 {
        float m[4][4];

        Vector3 GetPosition() const {
            return Vector3(m[3][0], m[3][1], m[3][2]);
        }

        Vector3 GetPositionRowMajor() const {
            return Vector3(m[0][3], m[1][3], m[2][3]);
        }
    };
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

}

#endif