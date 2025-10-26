#ifndef Render_H
#define Render_H

namespace NewWorld {
	namespace Hooks {
		namespace CRender {

			struct BoneArray {
				Matrix4x4* start;
				Matrix4x4* end;
			};


			struct SkinnedMeshComponent {
				char pad1[0x438];
				BoneArray bones;
				char pad2[0x470 - 0x438 - sizeof(BoneArray)];
				int64_t currentBoneIndex;
			};
			using RenderHook_S = uintptr_t(*)(uintptr_t, uintptr_t, uintptr_t);
			RenderHook_S RenderHook_original = nullptr;

			uintptr_t RenderHook(uintptr_t _IRender, uintptr_t a2, uintptr_t a3) {
				static bool render_world = false;
				static bool render_player = false;
				auto ret = RenderHook_original(_IRender, a2, a3);
				if (!_IRender)
					return ret;

				IRender* render = reinterpret_cast<IRender*>(_IRender);

				float color[4] = { 1,0,.5, 1 };
				float _color[4] = { 0,1,.5, 1 };
				float _toggled[4] = { 0,1,0, 1 };
				float _ntoggled[4] = { 1,0,.2, 1 };
				render->DrawText2D(50, 10, 2.f, color, true, _("Legend"));
				render->DrawText2D(25, 50, 1.3f, _color, false, _("[F1] Load Script"));
				render->DrawText2D(25, 65, 1.3f, _color, false, _("[F2] Dump Game Scripts"));
				render->DrawText2D(25, 80, 1.3f, render_player ? _toggled : _ntoggled, false, _("[F3] Render Players"));
				render->DrawText2D(25, 95, 1.3f, render_world ? _toggled : _ntoggled, false, _("[F4] Render World"));

				if (GetAsyncKeyState(VK_F3) & 0x1)
					render_player = !render_player;
				else if (GetAsyncKeyState(VK_F4) & 0x1)
					render_world = !render_world;

				std::vector<Global::ObjectComponents> localList;

				{
					std::lock_guard<std::mutex> lock(Global::finalMtx);
					localList = Global::FinalList;
				}

				std::vector<Global::LootComponent> loot_list;

				{
					std::lock_guard<std::mutex> lock(Global::lootMtx);
					loot_list = Global::LootList;
				}

				std::string count_text = std::string("player count -> " + std::to_string(int(localList.size())));

				render->DrawText2D(25, 35, 1.3f, color, false, count_text.c_str());

				Global::ObjectComponents local_player;

				//players
				for (auto comp : localList) {
					if (!comp.PlayerComponent || !comp.GameTransformComponent || comp.GameTransformComponent < 0xFFFFFFF) continue;

					if (strcmp(comp.username, "dfvdvf3") == 0 || strcmp(comp.username, "l4legend") == 0){
						local_player = comp;
						continue;
					}
					if (!local_player.PlayerComponent)continue;
					
					GameTransformComponent* local_trans = (GameTransformComponent*)(local_player.GameTransformComponent);
					GameTransformComponent* trans = (GameTransformComponent*)(comp.GameTransformComponent);
					Vector3 position = trans->GetPosition();
					Vector3 sec_pos = position;
					sec_pos.z -= .25;
					Vector3 local_position = local_trans->GetPosition();

					if(render_player)
						render->DrawText3D(position, 1.20f, comp.username);
				
				}

				//loot
				/*for (auto comp : loot_list) {
					if (!comp.GameTransformComponent || comp.GameTransformComponent < 0xFFFFFFF) continue;

					GameTransformComponent* trans = (GameTransformComponent*)(comp.GameTransformComponent);
					Vector3 position = trans->GetPosition();
				
					if(render_world)
						render->DrawText3D(position, 1.20f, comp.type);
				}*/
	
				return ret;
			}
		}
	}
}
#endif