#ifndef Math_H
#define Math_H

#include <math.h>

namespace NewWorld{

	class Vector3 {
	public:
		float x, y, z;

		Vector3(float _x, float _y, float _z)
			: x(_x), y(_y), z(_z) {
		}
		Vector3 operator+(Vector3 value) {
			return Vector3(value.x + x, value.y + y, value.z + z);
		}
		Vector3 operator-(Vector3 value) {
			return Vector3(value.x - x, value.y - y, value.z + z);
		}
		Vector3 operator/(Vector3 value) {
			return Vector3(value.x / x, value.y / y, value.z + z);
		}
		Vector3 operator*(Vector3 value) {
			return Vector3(value.x * x, value.y * y, value.z);
		}

		float Dot(const Vector3& Vec2) {
			return this->x * Vec2.x + this->y * Vec2.y + this->z * Vec2.z;
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

	
}

#endif