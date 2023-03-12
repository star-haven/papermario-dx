.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.11.1 */

glabel guMtxF2L
/* 40EC0 80065AC0 3C014780 */  lui       $at, (0x47800000 >> 16)
/* 40EC4 80065AC4 44810000 */  mtc1      $at, $f0
/* 40EC8 80065AC8 3C19FFFF */  lui       $t9, (0xFFFF0000 >> 16)
/* 40ECC 80065ACC 24B80020 */  addiu     $t8, $a1, 0x20
.LIQUE_80065AD0:
/* 40ED0 80065AD0 C4840000 */  lwc1      $f4, 0x0($a0)
/* 40ED4 80065AD4 46002182 */  mul.s     $f6, $f4, $f0
/* 40ED8 80065AD8 4600320D */  trunc.w.s $f8, $f6
/* 40EDC 80065ADC C48A0004 */  lwc1      $f10, 0x4($a0)
/* 40EE0 80065AE0 46005402 */  mul.s     $f16, $f10, $f0
/* 40EE4 80065AE4 4600848D */  trunc.w.s $f18, $f16
/* 40EE8 80065AE8 44084000 */  mfc1      $t0, $f8
/* 40EEC 80065AEC 44099000 */  mfc1      $t1, $f18
/* 40EF0 80065AF0 01195024 */  and       $t2, $t0, $t9
/* 40EF4 80065AF4 00095C02 */  srl       $t3, $t1, 16
/* 40EF8 80065AF8 014B6025 */  or        $t4, $t2, $t3
/* 40EFC 80065AFC ACAC0000 */  sw        $t4, 0x0($a1)
/* 40F00 80065B00 00086C00 */  sll       $t5, $t0, 16
/* 40F04 80065B04 312EFFFF */  andi      $t6, $t1, 0xFFFF
/* 40F08 80065B08 01AE7825 */  or        $t7, $t5, $t6
/* 40F0C 80065B0C ACAF0020 */  sw        $t7, 0x20($a1)
/* 40F10 80065B10 24A50004 */  addiu     $a1, $a1, 0x4
/* 40F14 80065B14 14B8FFEE */  bne       $a1, $t8, .LIQUE_80065AD0
/* 40F18 80065B18 24840008 */   addiu    $a0, $a0, 0x8
/* 40F1C 80065B1C 03E00008 */  jr        $ra
/* 40F20 80065B20 00000000 */   nop
/* 40F24 80065B24 00000000 */  nop
/* 40F28 80065B28 00000000 */  nop
/* 40F2C 80065B2C 00000000 */  nop
/* 40F30 80065B30 00000000 */  nop
/* 40F34 80065B34 00000000 */  nop
/* 40F38 80065B38 00000000 */  nop
/* 40F3C 80065B3C 00000000 */  nop