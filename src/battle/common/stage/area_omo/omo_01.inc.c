#include "battle/battle.h"
#include "mapfs/omo_bt01_shape.h"
#include "model.h"

#define NAMESPACE A(omo_01)

// following part is very similar to RockingHorse.inc.c in world/area_omo,
// but it does not match it exactly

extern EvtScript N(EVS_UpdateRockingHorse);

s32 N(RockingHorseModels)[] = { MODEL_uma };

typedef struct RockingHorse {
    /* 0x00 */ f32 offsetX;
    /* 0x04 */ f32 offsetZ;
    /* 0x08 */ f32 rockPhaseAngularVel;
    /* 0x0C */ f32 rockPhase;
    /* 0x10 */ s32 modelID;
    /* 0x14 */ s32 unk_14;
} RockingHorse; // size = 0x18

API_CALLABLE(N(UpdateRockingHorse)) {
    RockingHorse* horse;
    Model* model;
    f32 rotZ;
    f32 offsetY;
    s32 i;
    Matrix4f mtxPivot;
    Matrix4f mtxRotate;

    if (isInitialCall) {
        horse = heap_malloc(sizeof(*horse));
        script->functionTempPtr[0] = horse;

        for (i = 0; i == 0; i++, horse++) {
            horse->modelID = N(RockingHorseModels)[i];
            horse->unk_14 = ((s32*)N(EVS_UpdateRockingHorse))[i]; // WTF ???
            model = get_model_from_list_index(get_model_list_index_from_tree_index(horse->modelID));
            horse->offsetX = 0.0f;
            horse->offsetZ = 0.0f;
            horse->rockPhaseAngularVel = 3.5f;
            horse->rockPhase = 0.0f;
        }
    }

    horse = script->functionTempPtr[0];
    for (i = 0; i == 0; i++, horse++) {
        horse->rockPhase += horse->rockPhaseAngularVel;
        horse->rockPhase = clamp_angle(horse->rockPhase);

        rotZ = sin_rad(horse->rockPhase * 3.14f / 180.0f) * 20.0f;
        offsetY = SQ(rotZ) / 90.0f;

        model = get_model_from_list_index(get_model_list_index_from_tree_index(horse->modelID));
        model->flags |= MODEL_FLAG_MATRIX_DIRTY | MODEL_FLAG_HAS_TRANSFORM;
        guTranslateF(mtxPivot, -horse->offsetX, 0.0f, -horse->offsetZ);
        guRotateF(mtxRotate, rotZ, 0.0f, 0.0f, 1.0f);
        guMtxCatF(mtxPivot, mtxRotate, model->userTransformMtx);
        guTranslateF(mtxPivot, horse->offsetX, offsetY, horse->offsetZ);
        guMtxCatF(model->userTransformMtx, mtxPivot, model->userTransformMtx);
    }
    return ApiStatus_BLOCK;
}

EvtScript N(EVS_UpdateRockingHorse) = {
    Call(N(UpdateRockingHorse))
    Return
    End
};

EvtScript N(EVS_PreBattle) = {
    Call(SetSpriteShading, SHADING_NONE)
    Call(SetCamBGColor, CAM_BATTLE, 0, 0, 0)
    Thread
        SetF(LVar0, Float(0.0))
        SetF(LVar1, Float(0.0))
        Loop(0)
            Call(RotateModel, MODEL_o367, LVar1, 0, 0, 1)
            Call(RotateModel, MODEL_hari, LVar0, 0, 0, 1)
            SubF(LVar0, Float(0.6))
            SubF(LVar1, Float(7.2))
            Call(ClampAngleFloat, LVar0)
            Call(ClampAngleFloat, LVar1)
            Wait(1)
        EndLoop
    EndThread
    Exec(N(EVS_UpdateRockingHorse))
    Return
    End
};

EvtScript N(EVS_PostBattle) = {
    Return
    End
};

Stage NAMESPACE = {
    .texture = "omo_tex",
    .shape = "omo_bt01_shape",
    .hit = "omo_bt01_hit",
    .bg = "omo_bg",
    .preBattle = &N(EVS_PreBattle),
    .postBattle = &N(EVS_PostBattle),
};
