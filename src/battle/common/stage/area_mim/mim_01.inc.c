#include "battle/battle.h"
#include "mapfs/mim_bt01_shape.h"

#define NAMESPACE A(mim_01)

API_CALLABLE(N(SetupFog)) {
    enable_world_fog();
    set_world_fog_dist(950, 1000);
    set_world_fog_color(16, 16, 16, 255);
    gCameras[CAM_BATTLE].bgColor[0] = 20;
    gCameras[CAM_BATTLE].bgColor[1] = 20;
    gCameras[CAM_BATTLE].bgColor[2] = 28;

    return ApiStatus_DONE2;
}

EvtScript N(EVS_PreBattle) = {
    Call(SetSpriteShading, SHADING_NONE)
    Call(N(SetupFog))
    Return
    End
};

EvtScript N(EVS_PostBattle) = {
    Return
    End
};

Stage NAMESPACE = {
    .texture = "mim_tex",
    .shape = "mim_bt01_shape",
    .hit = "mim_bt01_hit",
    .preBattle = &N(EVS_PreBattle),
    .postBattle = &N(EVS_PostBattle),
};
