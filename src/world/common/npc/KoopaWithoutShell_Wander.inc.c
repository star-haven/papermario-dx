#include "common.h"
#include "KoopaWithoutShell.h"

MobileAISettings N(AISettings_KoopaWithoutShell_Wander) = {
    .moveSpeed = 1.0f,
    .moveTime = 60,
    .waitTime = 30,
    .playerSearchInterval = -1,
    .unk_AI_2C = -1,
};

EvtScript N(EVS_NpcAI_KoopaWithoutShell_Wander) = {
    Call(BasicAI_Main, Ref(N(AISettings_KoopaWithoutShell_Wander)))
    Return
    End
};

NpcSettings N(NpcSettings_KoopaWithoutShell_Wander) = {
    .height = 36,
    .radius = 24,
    .level = ACTOR_LEVEL_NONE,
    .ai = &N(EVS_NpcAI_KoopaWithoutShell_Wander),
    .actionFlags = AI_ACTION_LOOK_AROUND_DURING_LOITER,
};
