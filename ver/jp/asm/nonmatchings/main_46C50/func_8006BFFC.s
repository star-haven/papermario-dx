.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8006BFFC
/* 473FC 8006BFFC 94A30000 */  lhu       $v1, ($a1)
/* 47400 8006C000 30627FF0 */  andi      $v0, $v1, 0x7ff0
/* 47404 8006C004 00023902 */  srl       $a3, $v0, 4
/* 47408 8006C008 00E03021 */  addu      $a2, $a3, $zero
/* 4740C 8006C00C 240207FF */  addiu     $v0, $zero, 0x7ff
/* 47410 8006C010 14C20011 */  bne       $a2, $v0, .L8006C058
/* 47414 8006C014 00A04021 */   addu     $t0, $a1, $zero
/* 47418 8006C018 A4800000 */  sh        $zero, ($a0)
/* 4741C 8006C01C 94A20000 */  lhu       $v0, ($a1)
/* 47420 8006C020 3042000F */  andi      $v0, $v0, 0xf
/* 47424 8006C024 14400019 */  bnez      $v0, .L8006C08C
/* 47428 8006C028 24020002 */   addiu    $v0, $zero, 2
/* 4742C 8006C02C 94A20002 */  lhu       $v0, 2($a1)
/* 47430 8006C030 14400016 */  bnez      $v0, .L8006C08C
/* 47434 8006C034 24020002 */   addiu    $v0, $zero, 2
/* 47438 8006C038 94A20004 */  lhu       $v0, 4($a1)
/* 4743C 8006C03C 14400013 */  bnez      $v0, .L8006C08C
/* 47440 8006C040 24020002 */   addiu    $v0, $zero, 2
/* 47444 8006C044 94A20006 */  lhu       $v0, 6($a1)
/* 47448 8006C048 14400010 */  bnez      $v0, .L8006C08C
/* 4744C 8006C04C 24020002 */   addiu    $v0, $zero, 2
/* 47450 8006C050 0801B023 */  j         .L8006C08C
/* 47454 8006C054 24020001 */   addiu    $v0, $zero, 1
.L8006C058:
/* 47458 8006C058 18C00007 */  blez      $a2, .L8006C078
/* 4745C 8006C05C 2402FFFF */   addiu    $v0, $zero, -1
/* 47460 8006C060 3063800F */  andi      $v1, $v1, 0x800f
/* 47464 8006C064 34633FF0 */  ori       $v1, $v1, 0x3ff0
/* 47468 8006C068 A5030000 */  sh        $v1, ($t0)
/* 4746C 8006C06C 24E3FC02 */  addiu     $v1, $a3, -0x3fe
/* 47470 8006C070 0801B023 */  j         .L8006C08C
/* 47474 8006C074 A4830000 */   sh       $v1, ($a0)
.L8006C078:
/* 47478 8006C078 04C00003 */  bltz      $a2, .L8006C088
/* 4747C 8006C07C 00001021 */   addu     $v0, $zero, $zero
/* 47480 8006C080 0801B023 */  j         .L8006C08C
/* 47484 8006C084 A4800000 */   sh       $zero, ($a0)
.L8006C088:
/* 47488 8006C088 24020002 */  addiu     $v0, $zero, 2
.L8006C08C:
/* 4748C 8006C08C 03E00008 */  jr        $ra
/* 47490 8006C090 00000000 */   nop