
.section .text002D9700, "ax"

/* 0FE0B0 002D9700 27BDFF98 */  addiu $sp, $sp, -0x68
/* 0FE0B4 002D9704 AFBF0064 */  sw    $ra, 0x64($sp)
/* 0FE0B8 002D9708 AFBE0060 */  sw    $fp, 0x60($sp)
/* 0FE0BC 002D970C AFB7005C */  sw    $s7, 0x5c($sp)
/* 0FE0C0 002D9710 AFB60058 */  sw    $s6, 0x58($sp)
/* 0FE0C4 002D9714 AFB50054 */  sw    $s5, 0x54($sp)
/* 0FE0C8 002D9718 AFB40050 */  sw    $s4, 0x50($sp)
/* 0FE0CC 002D971C AFB3004C */  sw    $s3, 0x4c($sp)
/* 0FE0D0 002D9720 AFB20048 */  sw    $s2, 0x48($sp)
/* 0FE0D4 002D9724 AFB10044 */  sw    $s1, 0x44($sp)
/* 0FE0D8 002D9728 AFB00040 */  sw    $s0, 0x40($sp)
/* 0FE0DC 002D972C 8C82000C */  lw    $v0, 0xc($a0)
/* 0FE0E0 002D9730 0C0B1EAF */  jal   func_002C7ABC
/* 0FE0E4 002D9734 8C450000 */   lw    $a1, ($v0)
/* 0FE0E8 002D9738 00021C03 */  sra   $v1, $v0, 0x10
/* 0FE0EC 002D973C 000330C0 */  sll   $a2, $v1, 3
/* 0FE0F0 002D9740 3043FFFF */  andi  $v1, $v0, 0xffff
/* 0FE0F4 002D9744 00039080 */  sll   $s2, $v1, 2
/* 0FE0F8 002D9748 2403FFFF */  addiu $v1, $zero, -1
/* 0FE0FC 002D974C 104300AF */  beq   $v0, $v1, .L002D9A0C
/* 0FE100 002D9750 24020002 */   addiu $v0, $zero, 2
/* 0FE104 002D9754 3C100031 */  lui   $s0, 0x31
/* 0FE108 002D9758 26105B80 */  addiu $s0, $s0, 0x5b80
/* 0FE10C 002D975C 00D02021 */  addu  $a0, $a2, $s0
/* 0FE110 002D9760 26050008 */  addiu $a1, $s0, 8
/* 0FE114 002D9764 00C52821 */  addu  $a1, $a2, $a1
/* 0FE118 002D9768 3C11802E */  lui   $s1, 0x802e
/* 0FE11C 002D976C 2631BB60 */  addiu $s1, $s1, -0x44a0
/* 0FE120 002D9770 0C00A5CF */  jal   func_0002973C
/* 0FE124 002D9774 0220302D */   daddu $a2, $s1, $zero
/* 0FE128 002D9778 0220302D */  daddu $a2, $s1, $zero
/* 0FE12C 002D977C 8E240004 */  lw    $a0, 4($s1)
/* 0FE130 002D9780 02508021 */  addu  $s0, $s2, $s0
/* 0FE134 002D9784 00902021 */  addu  $a0, $a0, $s0
/* 0FE138 002D9788 8E300000 */  lw    $s0, ($s1)
/* 0FE13C 002D978C 0C00A5CF */  jal   func_0002973C
/* 0FE140 002D9790 24850004 */   addiu $a1, $a0, 4
/* 0FE144 002D9794 3C12802E */  lui   $s2, 0x802e
/* 0FE148 002D9798 2652BB68 */  addiu $s2, $s2, -0x4498
/* 0FE14C 002D979C 0240302D */  daddu $a2, $s2, $zero
/* 0FE150 002D97A0 8E220000 */  lw    $v0, ($s1)
/* 0FE154 002D97A4 3C030031 */  lui   $v1, 0x31
/* 0FE158 002D97A8 24635D50 */  addiu $v1, $v1, 0x5d50
/* 0FE15C 002D97AC 00431021 */  addu  $v0, $v0, $v1
/* 0FE160 002D97B0 02028021 */  addu  $s0, $s0, $v0
/* 0FE164 002D97B4 0200202D */  daddu $a0, $s0, $zero
/* 0FE168 002D97B8 0C00A5CF */  jal   func_0002973C
/* 0FE16C 002D97BC 24850100 */   addiu $a1, $a0, 0x100
/* 0FE170 002D97C0 3C058015 */  lui   $a1, 0x8015
/* 0FE174 002D97C4 24A51328 */  addiu $a1, $a1, 0x1328
/* 0FE178 002D97C8 92470000 */  lbu   $a3, ($s2)
/* 0FE17C 002D97CC 8CA30000 */  lw    $v1, ($a1)
/* 0FE180 002D97D0 92420002 */  lbu   $v0, 2($s2)
/* 0FE184 002D97D4 AFA70014 */  sw    $a3, 0x14($sp)
/* 0FE188 002D97D8 A06200AC */  sb    $v0, 0xac($v1)
/* 0FE18C 002D97DC 92420003 */  lbu   $v0, 3($s2)
/* 0FE190 002D97E0 A06200AD */  sb    $v0, 0xad($v1)
/* 0FE194 002D97E4 92420004 */  lbu   $v0, 4($s2)
/* 0FE198 002D97E8 A06200AE */  sb    $v0, 0xae($v1)
/* 0FE19C 002D97EC 92420005 */  lbu   $v0, 5($s2)
/* 0FE1A0 002D97F0 0000882D */  daddu $s1, $zero, $zero
/* 0FE1A4 002D97F4 10E0007F */  beqz  $a3, .L002D99F4
/* 0FE1A8 002D97F8 A06200AF */   sb    $v0, 0xaf($v1)
/* 0FE1AC 002D97FC 0240802D */  daddu $s0, $s2, $zero
/* 0FE1B0 002D9800 24070014 */  addiu $a3, $zero, 0x14
/* 0FE1B4 002D9804 AFA7002C */  sw    $a3, 0x2c($sp)
/* 0FE1B8 002D9808 24070010 */  addiu $a3, $zero, 0x10
/* 0FE1BC 002D980C 240B0011 */  addiu $t3, $zero, 0x11
/* 0FE1C0 002D9810 240C0012 */  addiu $t4, $zero, 0x12
/* 0FE1C4 002D9814 240D0013 */  addiu $t5, $zero, 0x13
/* 0FE1C8 002D9818 240E000F */  addiu $t6, $zero, 0xf
/* 0FE1CC 002D981C 240F000E */  addiu $t7, $zero, 0xe
/* 0FE1D0 002D9820 241E000D */  addiu $fp, $zero, 0xd
/* 0FE1D4 002D9824 2417000C */  addiu $s7, $zero, 0xc
/* 0FE1D8 002D9828 2416000B */  addiu $s6, $zero, 0xb
/* 0FE1DC 002D982C 2415000A */  addiu $s5, $zero, 0xa
/* 0FE1E0 002D9830 24140009 */  addiu $s4, $zero, 9
/* 0FE1E4 002D9834 24130008 */  addiu $s3, $zero, 8
/* 0FE1E8 002D9838 24190007 */  addiu $t9, $zero, 7
/* 0FE1EC 002D983C 24180006 */  addiu $t8, $zero, 6
/* 0FE1F0 002D9840 24120004 */  addiu $s2, $zero, 4
/* 0FE1F4 002D9844 AFA70030 */  sw    $a3, 0x30($sp)
.L002D9848:
/* 0FE1F8 002D9848 01D05021 */  addu  $t2, $t6, $s0
/* 0FE1FC 002D984C 25CE0010 */  addiu $t6, $t6, 0x10
/* 0FE200 002D9850 01F04821 */  addu  $t1, $t7, $s0
/* 0FE204 002D9854 25EF0010 */  addiu $t7, $t7, 0x10
/* 0FE208 002D9858 03D04021 */  addu  $t0, $fp, $s0
/* 0FE20C 002D985C 27DE0010 */  addiu $fp, $fp, 0x10
/* 0FE210 002D9860 02D03021 */  addu  $a2, $s6, $s0
/* 0FE214 002D9864 26D60010 */  addiu $s6, $s6, 0x10
/* 0FE218 002D9868 02B02021 */  addu  $a0, $s5, $s0
/* 0FE21C 002D986C 26B50010 */  addiu $s5, $s5, 0x10
/* 0FE220 002D9870 03101021 */  addu  $v0, $t8, $s0
/* 0FE224 002D9874 02901821 */  addu  $v1, $s4, $s0
/* 0FE228 002D9878 8FA7002C */  lw    $a3, 0x2c($sp)
/* 0FE22C 002D987C 26940010 */  addiu $s4, $s4, 0x10
/* 0FE230 002D9880 00F03821 */  addu  $a3, $a3, $s0
/* 0FE234 002D9884 AFA70028 */  sw    $a3, 0x28($sp)
/* 0FE238 002D9888 8FA7002C */  lw    $a3, 0x2c($sp)
/* 0FE23C 002D988C 27180010 */  addiu $t8, $t8, 0x10
/* 0FE240 002D9890 24E70010 */  addiu $a3, $a3, 0x10
/* 0FE244 002D9894 AFA7002C */  sw    $a3, 0x2c($sp)
/* 0FE248 002D9898 8FA70030 */  lw    $a3, 0x30($sp)
/* 0FE24C 002D989C 26310001 */  addiu $s1, $s1, 1
/* 0FE250 002D98A0 00F03821 */  addu  $a3, $a3, $s0
/* 0FE254 002D98A4 AFA70024 */  sw    $a3, 0x24($sp)
/* 0FE258 002D98A8 8FA70030 */  lw    $a3, 0x30($sp)
/* 0FE25C 002D98AC 3C058015 */  lui   $a1, 0x8015
/* 0FE260 002D98B0 8CA51328 */  lw    $a1, 0x1328($a1)
/* 0FE264 002D98B4 24E70010 */  addiu $a3, $a3, 0x10
/* 0FE268 002D98B8 AFA70030 */  sw    $a3, 0x30($sp)
/* 0FE26C 002D98BC 01703821 */  addu  $a3, $t3, $s0
/* 0FE270 002D98C0 AFA70020 */  sw    $a3, 0x20($sp)
/* 0FE274 002D98C4 01903821 */  addu  $a3, $t4, $s0
/* 0FE278 002D98C8 AFA7001C */  sw    $a3, 0x1c($sp)
/* 0FE27C 002D98CC 01B03821 */  addu  $a3, $t5, $s0
/* 0FE280 002D98D0 AFA70018 */  sw    $a3, 0x18($sp)
/* 0FE284 002D98D4 90420000 */  lbu   $v0, ($v0)
/* 0FE288 002D98D8 00B22821 */  addu  $a1, $a1, $s2
/* 0FE28C 002D98DC A0A20000 */  sb    $v0, ($a1)
/* 0FE290 002D98E0 03301021 */  addu  $v0, $t9, $s0
/* 0FE294 002D98E4 90420000 */  lbu   $v0, ($v0)
/* 0FE298 002D98E8 26520018 */  addiu $s2, $s2, 0x18
/* 0FE29C 002D98EC A0A20001 */  sb    $v0, 1($a1)
/* 0FE2A0 002D98F0 02701021 */  addu  $v0, $s3, $s0
/* 0FE2A4 002D98F4 90420000 */  lbu   $v0, ($v0)
/* 0FE2A8 002D98F8 256B0010 */  addiu $t3, $t3, 0x10
/* 0FE2AC 002D98FC A0A20002 */  sb    $v0, 2($a1)
/* 0FE2B0 002D9900 90620000 */  lbu   $v0, ($v1)
/* 0FE2B4 002D9904 02F03821 */  addu  $a3, $s7, $s0
/* 0FE2B8 002D9908 A0A20003 */  sb    $v0, 3($a1)
/* 0FE2BC 002D990C 90830000 */  lbu   $v1, ($a0)
/* 0FE2C0 002D9910 90C20000 */  lbu   $v0, ($a2)
/* 0FE2C4 002D9914 00031A00 */  sll   $v1, $v1, 8
/* 0FE2C8 002D9918 00431021 */  addu  $v0, $v0, $v1
/* 0FE2CC 002D991C 00021400 */  sll   $v0, $v0, 0x10
/* 0FE2D0 002D9920 00021403 */  sra   $v0, $v0, 0x10
/* 0FE2D4 002D9924 44820000 */  mtc1  $v0, $f0
/* 0FE2D8 002D9928 00000000 */  nop   
/* 0FE2DC 002D992C 46800020 */  cvt.s.w $f0, $f0
/* 0FE2E0 002D9930 E4A00004 */  swc1  $f0, 4($a1)
/* 0FE2E4 002D9934 90E30000 */  lbu   $v1, ($a3)
/* 0FE2E8 002D9938 91020000 */  lbu   $v0, ($t0)
/* 0FE2EC 002D993C 00031A00 */  sll   $v1, $v1, 8
/* 0FE2F0 002D9940 00431021 */  addu  $v0, $v0, $v1
/* 0FE2F4 002D9944 00021400 */  sll   $v0, $v0, 0x10
/* 0FE2F8 002D9948 00021403 */  sra   $v0, $v0, 0x10
/* 0FE2FC 002D994C 44820000 */  mtc1  $v0, $f0
/* 0FE300 002D9950 00000000 */  nop   
/* 0FE304 002D9954 46800020 */  cvt.s.w $f0, $f0
/* 0FE308 002D9958 E4A00008 */  swc1  $f0, 8($a1)
/* 0FE30C 002D995C 91230000 */  lbu   $v1, ($t1)
/* 0FE310 002D9960 91420000 */  lbu   $v0, ($t2)
/* 0FE314 002D9964 00031A00 */  sll   $v1, $v1, 8
/* 0FE318 002D9968 00431021 */  addu  $v0, $v0, $v1
/* 0FE31C 002D996C 00021400 */  sll   $v0, $v0, 0x10
/* 0FE320 002D9970 00021403 */  sra   $v0, $v0, 0x10
/* 0FE324 002D9974 44820000 */  mtc1  $v0, $f0
/* 0FE328 002D9978 00000000 */  nop   
/* 0FE32C 002D997C 46800020 */  cvt.s.w $f0, $f0
/* 0FE330 002D9980 E4A0000C */  swc1  $f0, 0xc($a1)
/* 0FE334 002D9984 8FA7001C */  lw    $a3, 0x1c($sp)
/* 0FE338 002D9988 258C0010 */  addiu $t4, $t4, 0x10
/* 0FE33C 002D998C 90E30000 */  lbu   $v1, ($a3)
/* 0FE340 002D9990 8FA70018 */  lw    $a3, 0x18($sp)
/* 0FE344 002D9994 00031A00 */  sll   $v1, $v1, 8
/* 0FE348 002D9998 90E20000 */  lbu   $v0, ($a3)
/* 0FE34C 002D999C 8FA70020 */  lw    $a3, 0x20($sp)
/* 0FE350 002D99A0 00431021 */  addu  $v0, $v0, $v1
/* 0FE354 002D99A4 90E40000 */  lbu   $a0, ($a3)
/* 0FE358 002D99A8 8FA70024 */  lw    $a3, 0x24($sp)
/* 0FE35C 002D99AC 00042400 */  sll   $a0, $a0, 0x10
/* 0FE360 002D99B0 90E30000 */  lbu   $v1, ($a3)
/* 0FE364 002D99B4 00441021 */  addu  $v0, $v0, $a0
/* 0FE368 002D99B8 00031E00 */  sll   $v1, $v1, 0x18
/* 0FE36C 002D99BC 00431021 */  addu  $v0, $v0, $v1
/* 0FE370 002D99C0 AFA20010 */  sw    $v0, 0x10($sp)
/* 0FE374 002D99C4 C7A00010 */  lwc1  $f0, 0x10($sp)
/* 0FE378 002D99C8 25AD0010 */  addiu $t5, $t5, 0x10
/* 0FE37C 002D99CC E4A00010 */  swc1  $f0, 0x10($a1)
/* 0FE380 002D99D0 8FA70028 */  lw    $a3, 0x28($sp)
/* 0FE384 002D99D4 26F70010 */  addiu $s7, $s7, 0x10
/* 0FE388 002D99D8 90E20000 */  lbu   $v0, ($a3)
/* 0FE38C 002D99DC 27390010 */  addiu $t9, $t9, 0x10
/* 0FE390 002D99E0 A0A20014 */  sb    $v0, 0x14($a1)
/* 0FE394 002D99E4 8FA70014 */  lw    $a3, 0x14($sp)
/* 0FE398 002D99E8 0227102A */  slt   $v0, $s1, $a3
/* 0FE39C 002D99EC 1440FF96 */  bnez  $v0, .L002D9848
/* 0FE3A0 002D99F0 26730010 */   addiu $s3, $s3, 0x10
.L002D99F4:
/* 0FE3A4 002D99F4 3C048015 */  lui   $a0, 0x8015
/* 0FE3A8 002D99F8 8C841328 */  lw    $a0, 0x1328($a0)
/* 0FE3AC 002D99FC 94830000 */  lhu   $v1, ($a0)
/* 0FE3B0 002D9A00 24020002 */  addiu $v0, $zero, 2
/* 0FE3B4 002D9A04 34630001 */  ori   $v1, $v1, 1
/* 0FE3B8 002D9A08 A4830000 */  sh    $v1, ($a0)
.L002D9A0C:
/* 0FE3BC 002D9A0C 8FBF0064 */  lw    $ra, 0x64($sp)
/* 0FE3C0 002D9A10 8FBE0060 */  lw    $fp, 0x60($sp)
/* 0FE3C4 002D9A14 8FB7005C */  lw    $s7, 0x5c($sp)
/* 0FE3C8 002D9A18 8FB60058 */  lw    $s6, 0x58($sp)
/* 0FE3CC 002D9A1C 8FB50054 */  lw    $s5, 0x54($sp)
/* 0FE3D0 002D9A20 8FB40050 */  lw    $s4, 0x50($sp)
/* 0FE3D4 002D9A24 8FB3004C */  lw    $s3, 0x4c($sp)
/* 0FE3D8 002D9A28 8FB20048 */  lw    $s2, 0x48($sp)
/* 0FE3DC 002D9A2C 8FB10044 */  lw    $s1, 0x44($sp)
/* 0FE3E0 002D9A30 8FB00040 */  lw    $s0, 0x40($sp)
/* 0FE3E4 002D9A34 03E00008 */  jr    $ra
/* 0FE3E8 002D9A38 27BD0068 */   addiu $sp, $sp, 0x68

/* 0FE3EC 002D9A3C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0FE3F0 002D9A40 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0FE3F4 002D9A44 8C82000C */  lw    $v0, 0xc($a0)
/* 0FE3F8 002D9A48 0C0B1EAF */  jal   func_002C7ABC
/* 0FE3FC 002D9A4C 8C450000 */   lw    $a1, ($v0)
/* 0FE400 002D9A50 10400006 */  beqz  $v0, .L002D9A6C
/* 0FE404 002D9A54 00000000 */   nop   
/* 0FE408 002D9A58 3C038015 */  lui   $v1, 0x8015
/* 0FE40C 002D9A5C 8C631328 */  lw    $v1, 0x1328($v1)
/* 0FE410 002D9A60 94620000 */  lhu   $v0, ($v1)
/* 0FE414 002D9A64 080B669F */  j     func_002D9A7C
/* 0FE418 002D9A68 34420001 */   ori   $v0, $v0, 1

.L002D9A6C:
/* 0FE41C 002D9A6C 3C038015 */  lui   $v1, 0x8015
/* 0FE420 002D9A70 8C631328 */  lw    $v1, 0x1328($v1)
/* 0FE424 002D9A74 94620000 */  lhu   $v0, ($v1)
/* 0FE428 002D9A78 3042FFFE */  andi  $v0, $v0, 0xfffe
func_002D9A7C:
/* 0FE42C 002D9A7C A4620000 */  sh    $v0, ($v1)
/* 0FE430 002D9A80 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0FE434 002D9A84 24020002 */  addiu $v0, $zero, 2
/* 0FE438 002D9A88 03E00008 */  jr    $ra
/* 0FE43C 002D9A8C 27BD0018 */   addiu $sp, $sp, 0x18

/* 0FE440 002D9A90 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0FE444 002D9A94 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0FE448 002D9A98 8C82000C */  lw    $v0, 0xc($a0)
/* 0FE44C 002D9A9C 3C038007 */  lui   $v1, 0x8007
/* 0FE450 002D9AA0 8C63419C */  lw    $v1, 0x419c($v1)
/* 0FE454 002D9AA4 8C450000 */  lw    $a1, ($v0)
/* 0FE458 002D9AA8 0C0B2026 */  jal   func_002C8098
/* 0FE45C 002D9AAC 80660071 */   lb    $a2, 0x71($v1)
/* 0FE460 002D9AB0 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0FE464 002D9AB4 24020002 */  addiu $v0, $zero, 2
/* 0FE468 002D9AB8 03E00008 */  jr    $ra
/* 0FE46C 002D9ABC 27BD0018 */   addiu $sp, $sp, 0x18

/* 0FE470 002D9AC0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0FE474 002D9AC4 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0FE478 002D9AC8 8C82000C */  lw    $v0, 0xc($a0)
/* 0FE47C 002D9ACC 0C0B1EAF */  jal   func_002C7ABC
/* 0FE480 002D9AD0 8C450000 */   lw    $a1, ($v0)
/* 0FE484 002D9AD4 3C048007 */  lui   $a0, 0x8007
/* 0FE488 002D9AD8 8C84419C */  lw    $a0, 0x419c($a0)
/* 0FE48C 002D9ADC 94830068 */  lhu   $v1, 0x68($a0)
/* 0FE490 002D9AE0 00621825 */  or    $v1, $v1, $v0
/* 0FE494 002D9AE4 A4830068 */  sh    $v1, 0x68($a0)
/* 0FE498 002D9AE8 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0FE49C 002D9AEC 24020002 */  addiu $v0, $zero, 2
/* 0FE4A0 002D9AF0 03E00008 */  jr    $ra
/* 0FE4A4 002D9AF4 27BD0018 */   addiu $sp, $sp, 0x18

/* 0FE4A8 002D9AF8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0FE4AC 002D9AFC AFBF0010 */  sw    $ra, 0x10($sp)
/* 0FE4B0 002D9B00 8C82000C */  lw    $v0, 0xc($a0)
/* 0FE4B4 002D9B04 0C0B1EAF */  jal   func_002C7ABC
/* 0FE4B8 002D9B08 8C450000 */   lw    $a1, ($v0)
/* 0FE4BC 002D9B0C 3C058007 */  lui   $a1, 0x8007
/* 0FE4C0 002D9B10 8CA5419C */  lw    $a1, 0x419c($a1)
/* 0FE4C4 002D9B14 94A30068 */  lhu   $v1, 0x68($a1)
/* 0FE4C8 002D9B18 00022027 */  nor   $a0, $zero, $v0
/* 0FE4CC 002D9B1C 00641824 */  and   $v1, $v1, $a0
/* 0FE4D0 002D9B20 A4A30068 */  sh    $v1, 0x68($a1)
/* 0FE4D4 002D9B24 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0FE4D8 002D9B28 24020002 */  addiu $v0, $zero, 2
/* 0FE4DC 002D9B2C 03E00008 */  jr    $ra
/* 0FE4E0 002D9B30 27BD0018 */   addiu $sp, $sp, 0x18

/* 0FE4E4 002D9B34 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0FE4E8 002D9B38 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0FE4EC 002D9B3C 8C82000C */  lw    $v0, 0xc($a0)
/* 0FE4F0 002D9B40 0C0B1EAF */  jal   func_002C7ABC
/* 0FE4F4 002D9B44 8C450000 */   lw    $a1, ($v0)
/* 0FE4F8 002D9B48 3C038007 */  lui   $v1, 0x8007
/* 0FE4FC 002D9B4C 8C63419C */  lw    $v1, 0x419c($v1)
/* 0FE500 002D9B50 A4620068 */  sh    $v0, 0x68($v1)
/* 0FE504 002D9B54 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0FE508 002D9B58 24020002 */  addiu $v0, $zero, 2
/* 0FE50C 002D9B5C 03E00008 */  jr    $ra
/* 0FE510 002D9B60 27BD0018 */   addiu $sp, $sp, 0x18

/* 0FE514 002D9B64 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0FE518 002D9B68 AFB10014 */  sw    $s1, 0x14($sp)
/* 0FE51C 002D9B6C 0080882D */  daddu $s1, $a0, $zero
/* 0FE520 002D9B70 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0FE524 002D9B74 AFB00010 */  sw    $s0, 0x10($sp)
/* 0FE528 002D9B78 F7B60028 */  sdc1  $f22, 0x28($sp)
/* 0FE52C 002D9B7C F7B40020 */  sdc1  $f20, 0x20($sp)
/* 0FE530 002D9B80 8E30000C */  lw    $s0, 0xc($s1)
/* 0FE534 002D9B84 8E050000 */  lw    $a1, ($s0)
/* 0FE538 002D9B88 0C0B210B */  jal   func_002C842C
/* 0FE53C 002D9B8C 26100004 */   addiu $s0, $s0, 4
/* 0FE540 002D9B90 0220202D */  daddu $a0, $s1, $zero
/* 0FE544 002D9B94 8E050000 */  lw    $a1, ($s0)
/* 0FE548 002D9B98 0C0B210B */  jal   func_002C842C
/* 0FE54C 002D9B9C 46000586 */   mov.s $f22, $f0
/* 0FE550 002D9BA0 46000506 */  mov.s $f20, $f0
/* 0FE554 002D9BA4 0C00A8BB */  jal   func_0002A2EC
/* 0FE558 002D9BA8 4600A306 */   mov.s $f12, $f20
/* 0FE55C 002D9BAC 4600B002 */  mul.s $f0, $f22, $f0
/* 0FE560 002D9BB0 00000000 */  nop   
/* 0FE564 002D9BB4 4600A306 */  mov.s $f12, $f20
/* 0FE568 002D9BB8 3C108007 */  lui   $s0, 0x8007
/* 0FE56C 002D9BBC 2610419C */  addiu $s0, $s0, 0x419c
/* 0FE570 002D9BC0 8E030000 */  lw    $v1, ($s0)
/* 0FE574 002D9BC4 4600008D */  trunc.w.s $f2, $f0
/* 0FE578 002D9BC8 44021000 */  mfc1  $v0, $f2
/* 0FE57C 002D9BCC 0C00A8D4 */  jal   func_0002A350
/* 0FE580 002D9BD0 A062006A */   sb    $v0, 0x6a($v1)
/* 0FE584 002D9BD4 4600B582 */  mul.s $f22, $f22, $f0
/* 0FE588 002D9BD8 00000000 */  nop   
/* 0FE58C 002D9BDC 8E030000 */  lw    $v1, ($s0)
/* 0FE590 002D9BE0 4600B08D */  trunc.w.s $f2, $f22
/* 0FE594 002D9BE4 44021000 */  mfc1  $v0, $f2
/* 0FE598 002D9BE8 00000000 */  nop   
/* 0FE59C 002D9BEC A062006B */  sb    $v0, 0x6b($v1)
/* 0FE5A0 002D9BF0 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0FE5A4 002D9BF4 8FB10014 */  lw    $s1, 0x14($sp)
/* 0FE5A8 002D9BF8 8FB00010 */  lw    $s0, 0x10($sp)
/* 0FE5AC 002D9BFC D7B60028 */  ldc1  $f22, 0x28($sp)
/* 0FE5B0 002D9C00 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 0FE5B4 002D9C04 24020002 */  addiu $v0, $zero, 2
/* 0FE5B8 002D9C08 03E00008 */  jr    $ra
/* 0FE5BC 002D9C0C 27BD0030 */   addiu $sp, $sp, 0x30

/* 0FE5C0 002D9C10 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0FE5C4 002D9C14 AFB10014 */  sw    $s1, 0x14($sp)
/* 0FE5C8 002D9C18 0080882D */  daddu $s1, $a0, $zero
/* 0FE5CC 002D9C1C AFBF0018 */  sw    $ra, 0x18($sp)
/* 0FE5D0 002D9C20 AFB00010 */  sw    $s0, 0x10($sp)
/* 0FE5D4 002D9C24 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 0FE5D8 002D9C28 8E30000C */  lw    $s0, 0xc($s1)
/* 0FE5DC 002D9C2C 8E050000 */  lw    $a1, ($s0)
/* 0FE5E0 002D9C30 0C0B210B */  jal   func_002C842C
/* 0FE5E4 002D9C34 26100004 */   addiu $s0, $s0, 4
/* 0FE5E8 002D9C38 0220202D */  daddu $a0, $s1, $zero
/* 0FE5EC 002D9C3C 8E050000 */  lw    $a1, ($s0)
/* 0FE5F0 002D9C40 0C0B210B */  jal   func_002C842C
/* 0FE5F4 002D9C44 46000506 */   mov.s $f20, $f0
/* 0FE5F8 002D9C48 3C048007 */  lui   $a0, 0x8007
/* 0FE5FC 002D9C4C 2484419C */  addiu $a0, $a0, 0x419c
/* 0FE600 002D9C50 8C830000 */  lw    $v1, ($a0)
/* 0FE604 002D9C54 4600A08D */  trunc.w.s $f2, $f20
/* 0FE608 002D9C58 44021000 */  mfc1  $v0, $f2
/* 0FE60C 002D9C5C 00000000 */  nop   
/* 0FE610 002D9C60 A062006A */  sb    $v0, 0x6a($v1)
/* 0FE614 002D9C64 8C830000 */  lw    $v1, ($a0)
/* 0FE618 002D9C68 4600008D */  trunc.w.s $f2, $f0
/* 0FE61C 002D9C6C 44021000 */  mfc1  $v0, $f2
/* 0FE620 002D9C70 00000000 */  nop   
/* 0FE624 002D9C74 A062006B */  sb    $v0, 0x6b($v1)
/* 0FE628 002D9C78 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0FE62C 002D9C7C 8FB10014 */  lw    $s1, 0x14($sp)
/* 0FE630 002D9C80 8FB00010 */  lw    $s0, 0x10($sp)
/* 0FE634 002D9C84 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 0FE638 002D9C88 24020002 */  addiu $v0, $zero, 2
/* 0FE63C 002D9C8C 03E00008 */  jr    $ra
/* 0FE640 002D9C90 27BD0028 */   addiu $sp, $sp, 0x28

/* 0FE644 002D9C94 00000000 */  nop   
/* 0FE648 002D9C98 00000000 */  nop   
/* 0FE64C 002D9C9C 00000000 */  nop   