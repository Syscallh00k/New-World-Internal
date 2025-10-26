#ifndef PlayerComponent_H
#define PlayerComponent_H

namespace NewWorld {

    class GameTransformComponent {
    public:

        struct Position {
            float x;
            char padding1[0xC];
            float y;
            char padding2[0xC];
            float z;
        };

        Vector3 GetPosition() {
            if (!this || (uintptr_t)this < 0x10000 || (uintptr_t)this > 0x7FFFFFFFFFFF) {
                return Vector3(0, 0, 0);
            }

            uintptr_t posAddress = (uintptr_t)this + Offsets::PlayerComponent::WorldPosition;

            if (posAddress < 0x100000 || posAddress > 0x7FFFFFFFFFF) {
                return Vector3(0, 0, 0);
            }
          Position pos = *(Position*)(posAddress);
          return Vector3(pos.x, pos.y, pos.z);
        }

    };
}

#endif
