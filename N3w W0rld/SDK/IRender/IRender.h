#ifndef IRender_H
#define IRender_H


namespace NewWorld {
    class IRender {
    public:
        void DrawText2D(float x, float y, float size, const float* color, bool centered, const char* text) {
            if (!(uintptr_t)this)return;
            auto DrawLabel = reinterpret_cast<void(*)(uintptr_t, float, float, float, const float*, bool, const char*)>(Global::NewWorld + Offsets::Functions::Render::DrawLabel2D);
            DrawLabel((uintptr_t)this, x, y, size, color, centered, text);
        }

        void DrawText3D(Vector3 pos, float size, bool centered, const char* text) {
            if (!(uintptr_t)this)return;
            auto DrawLabel = reinterpret_cast<void(*)(uintptr_t, Vector3, float, const char*)>(Global::NewWorld + Offsets::Functions::Render::DrawLabel3D);
            DrawLabel((uintptr_t)this, pos, size, text);
        }

    };
}

#endif

