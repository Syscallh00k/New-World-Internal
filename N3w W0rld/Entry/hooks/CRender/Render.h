#ifndef Render_H
#define Render_H

namespace NewWorld {
	namespace Hooks {
		namespace CRender {
			using RenderHook_S = uintptr_t(*)(uintptr_t, uintptr_t, uintptr_t);
			RenderHook_S RenderHook_original = nullptr;

			uintptr_t RenderHook(uintptr_t _IRender, uintptr_t a2, uintptr_t a3) {
				auto ret = RenderHook_original(_IRender, a2, a3);
				if (!_IRender)
					return ret;

				IRender* render = reinterpret_cast<IRender*>(_IRender);

				float color[4] = { 1,0,.5, 1 };
				float _color[4] = { 0,1,.5, 1 };
				render->DrawText2D(50, 10, 2.f, color, true, _("Legend"));
				render->DrawText2D(25, 35, 1.3f, _color, false, _("[F1] Load Script"));
				render->DrawText2D(25, 50, 1.3f, _color, false, _("[F2] Dump Game Scripts"));


				std::vector<Global::ObjectComponents> localList;

				{
					std::lock_guard<std::mutex> lock(Global::finalMtx);
					localList = Global::FinalList;
				}

				for (auto comp : localList) {
					if (!comp.PlayerComponent || !comp.GameTransformComponent) continue;

					float _x = *(float*)(comp.GameTransformComponent + 0x14C);
					float _y = *(float*)(comp.GameTransformComponent + 0x15C);
					float _z = *(float*)(comp.GameTransformComponent + 0x16C);
					Vector3 Position = Vector3(_x, _y, _z);

					render->DrawText3D(Position, 1.0f, false, comp.username);

				}
	
				return ret;
			}
		}
	}
}

#endif