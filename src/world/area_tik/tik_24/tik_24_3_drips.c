#include "tik_24.h"

#define DROPLET_MODEL MODEL_sizuku
#include "../common/DripVolumes.inc.c"

DripVolumeList N(DripVolumes) = {
    .count = 1,
    .volumes = {
        {
            .minPos = { -233, -117 },
            .maxPos = {  545,  187 },
            .startY = 200,
            .endY   = -10,
            .duration = 60,
            .density  = 4,
        }
    }
};

EvtScript N(EVS_SetupDrips) = {
    Set(LVar0, Ref(N(DripVolumes)))
    Exec(N(EVS_CreateDripVolumes))
    Return
    End
};
