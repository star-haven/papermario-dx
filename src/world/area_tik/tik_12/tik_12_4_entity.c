#include "tik_12.h"
#include "entity.h"

#define SUPER_BLOCK_MAPVAR MV_SuperBlock
#define SUPER_BLOCK_GAMEFLAG GF_TIK02_SuperBlock
#include "world/common/entity/SuperBlock.inc.c"

EvtScript N(EVS_SmashBlockA) = {
    Set(GF_TIK12_Hammer3BlockA, TRUE)
    Return
    End
};

EvtScript N(EVS_SmashBlockB) = {
    Set(GF_TIK12_Hammer3BlockB, TRUE)
    Return
    End
};

EvtScript N(EVS_MakeEntities) = {
    EVT_MAKE_SUPER_BLOCK(240, 0, -40, 0)
    IfEq(GF_TIK12_Hammer3BlockA, FALSE)
        Call(MakeEntity, Ref(Entity_Hammer3Block), 140, -135, 55, 0, MAKE_ENTITY_END)
        Call(AssignScript, Ref(N(EVS_SmashBlockA)))
    EndIf
    IfEq(GF_TIK12_Hammer3BlockB, FALSE)
        Call(MakeEntity, Ref(Entity_Hammer3Block), 140, -135, 105, 0, MAKE_ENTITY_END)
        Call(AssignScript, Ref(N(EVS_SmashBlockB)))
    EndIf
    Return
    End
};
