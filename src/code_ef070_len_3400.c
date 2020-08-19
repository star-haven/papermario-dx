#include "common.h"

INCLUDE_API_ASM(code_ef070_len_3400, SetCamEnabled);
/*
ApiStatus SetCamEnabled(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* ptrReadPos = script->ptrReadPos;
    Bytecode cameraID = get_variable(script, *ptrReadPos++);
    Bytecode cameraEnable = get_variable(script, *ptrReadPos++);
    Camera* cameraPtr = &gCameras[cameraID];

    if (cameraEnable == 0) {
        cameraPtr->flags |= 0x2;
    } else {
        cameraPtr->flags &= ~0x2;
    }
    return ApiStatus_DONE2;
    /*
    s32 temp_a1;
    s32 temp_s0;
    s32 temp_v0;
    void *temp_s1;
    u16 phi_v1;
    void *phi_v0;

    temp_s1 = arg0->unkC;
    temp_a1 = *temp_s1;
    temp_s1 = temp_s1 + 4;
    temp_s0 = get_variable(temp_a1);
    if (get_variable(arg0, *temp_s1) == 0) {
        temp_v0 = (temp_s0 * 0x558) + 0x800B1D80;
        phi_v1 = *temp_v0 | 2;
        phi_v0 = (void *) temp_v0;
    } else {
        temp_v0 = (temp_s0 * 0x558) + 0x800B1D80;
        phi_v1 = *temp_v0 & 0xFFFD;
        phi_v0 = (void *) temp_v0;
    }
    *phi_v0 = phi_v1;
    return 2;
}
*/

INCLUDE_API_ASM(code_ef070_len_3400, SetCamFlag80);

INCLUDE_API_ASM(code_ef070_len_3400, SetCamPerspective);

INCLUDE_API_ASM(code_ef070_len_3400, SetCamViewport);

INCLUDE_API_ASM(code_ef070_len_3400, SetCamBGColor);

INCLUDE_API_ASM(code_ef070_len_3400, SetCamTarget);

INCLUDE_API_ASM(code_ef070_len_3400, ShakeCam);

INCLUDE_ASM(code_ef070_len_3400, exec_ShakeCam1);

INCLUDE_ASM(code_ef070_len_3400, exec_ShakeCamX);

INCLUDE_API_ASM(code_ef070_len_3400, SetCamLeadPlayer);

INCLUDE_API_ASM(code_ef070_len_3400, PanToTarget);

INCLUDE_API_ASM(code_ef070_len_3400, UseSettingsFrom);

INCLUDE_API_ASM(code_ef070_len_3400, LoadSettings);

INCLUDE_API_ASM(code_ef070_len_3400, SetCamType);

INCLUDE_API_ASM(code_ef070_len_3400, SetCamPitch);

INCLUDE_API_ASM(code_ef070_len_3400, SetCamDistance);

INCLUDE_API_ASM(code_ef070_len_3400, SetCamPosA);

INCLUDE_API_ASM(code_ef070_len_3400, SetCamPosB);

INCLUDE_API_ASM(code_ef070_len_3400, SetCamPosC);

INCLUDE_API_ASM(code_ef070_len_3400, SetPanTarget);

INCLUDE_API_ASM(code_ef070_len_3400, SetCamSpeed);

INCLUDE_API_ASM(code_ef070_len_3400, GetCamType);

INCLUDE_API_ASM(code_ef070_len_3400, GetCamPitch);

INCLUDE_API_ASM(code_ef070_len_3400, GetCamDistance);

INCLUDE_API_ASM(code_ef070_len_3400, GetCamPosA);

INCLUDE_API_ASM(code_ef070_len_3400, GetCamPosB);

INCLUDE_API_ASM(code_ef070_len_3400, GetCamPosC);

INCLUDE_API_ASM(code_ef070_len_3400, GetCamPosition);

INCLUDE_API_ASM(code_ef070_len_3400, WaitForCam);

INCLUDE_API_ASM(code_ef070_len_3400, SetCamProperties);

INCLUDE_API_ASM(code_ef070_len_3400, AdjustCam);

INCLUDE_API_ASM(code_ef070_len_3400, ResetCam);

INCLUDE_ASM(code_ef070_len_3400, draw_anim_models);

INCLUDE_API_ASM(code_ef070_len_3400, LoadModelAnimation);

INCLUDE_API_ASM(code_ef070_len_3400, PlayModelAnimation);

INCLUDE_API_ASM(code_ef070_len_3400, ChangeModelAnimation);

INCLUDE_API_ASM(code_ef070_len_3400, SetAnimModelPosition);

INCLUDE_API_ASM(code_ef070_len_3400, GetAnimModelPosition);

INCLUDE_API_ASM(code_ef070_len_3400, AddAnimModelPosition);

INCLUDE_API_ASM(code_ef070_len_3400, SetAnimModelRotation);

INCLUDE_API_ASM(code_ef070_len_3400, SetAnimModelScale);

INCLUDE_ASM(code_ef070_len_3400, func_802CD4B4);

INCLUDE_ASM(code_ef070_len_3400, func_802CD57C);
