.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80056EE8
/* 322E8 80056EE8 308400FF */  andi      $a0, $a0, 0xff
/* 322EC 80056EEC 00041140 */  sll       $v0, $a0, 5
/* 322F0 80056EF0 00441023 */  subu      $v0, $v0, $a0
/* 322F4 80056EF4 3C038008 */  lui       $v1, %hi(D_80078E54)
/* 322F8 80056EF8 8C638E54 */  lw        $v1, %lo(D_80078E54)($v1)
/* 322FC 80056EFC 00021080 */  sll       $v0, $v0, 2
/* 32300 80056F00 8C63001C */  lw        $v1, 0x1c($v1)
/* 32304 80056F04 24050001 */  addiu     $a1, $zero, 1
/* 32308 80056F08 00621821 */  addu      $v1, $v1, $v0
/* 3230C 80056F0C 8C620018 */  lw        $v0, 0x18($v1)
/* 32310 80056F10 24640004 */  addiu     $a0, $v1, 4
/* 32314 80056F14 AC600070 */  sw        $zero, 0x70($v1)
/* 32318 80056F18 AC65006C */  sw        $a1, 0x6c($v1)
/* 3231C 80056F1C A465004E */  sh        $a1, 0x4e($v1)
/* 32320 80056F20 AC600040 */  sw        $zero, 0x40($v1)
/* 32324 80056F24 AC650044 */  sw        $a1, 0x44($v1)
/* 32328 80056F28 AC60002C */  sw        $zero, 0x2c($v1)
/* 3232C 80056F2C AC650030 */  sw        $a1, 0x30($v1)
/* 32330 80056F30 1040000F */  beqz      $v0, .L80056F70
/* 32334 80056F34 AC600028 */   sw       $zero, 0x28($v1)
/* 32338 80056F38 8C820014 */  lw        $v0, 0x14($a0)
/* 3233C 80056F3C 8C420000 */  lw        $v0, ($v0)
/* 32340 80056F40 AC620034 */  sw        $v0, 0x34($v1)
/* 32344 80056F44 8C840014 */  lw        $a0, 0x14($a0)
/* 32348 80056F48 90820024 */  lbu       $v0, 0x24($a0)
/* 3234C 80056F4C 10400003 */  beqz      $v0, .L80056F5C
/* 32350 80056F50 00000000 */   nop      
/* 32354 80056F54 14450006 */  bne       $v0, $a1, .L80056F70
/* 32358 80056F58 00000000 */   nop      
.L80056F5C:
/* 3235C 80056F5C 8C820010 */  lw        $v0, 0x10($a0)
/* 32360 80056F60 10400003 */  beqz      $v0, .L80056F70
/* 32364 80056F64 00000000 */   nop      
/* 32368 80056F68 8C820014 */  lw        $v0, 0x14($a0)
/* 3236C 80056F6C AC620014 */  sw        $v0, 0x14($v1)
.L80056F70:
/* 32370 80056F70 03E00008 */  jr        $ra
/* 32374 80056F74 00000000 */   nop      