.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802A92F0_423F60
/* 423F60 802A92F0 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 423F64 802A92F4 AFB10014 */  sw        $s1, 0x14($sp)
/* 423F68 802A92F8 3C11802A */  lui       $s1, %hi(D_8029FBE0)
/* 423F6C 802A92FC 2631FBE0 */  addiu     $s1, $s1, %lo(D_8029FBE0)
/* 423F70 802A9300 AFBF001C */  sw        $ra, 0x1c($sp)
/* 423F74 802A9304 AFB20018 */  sw        $s2, 0x18($sp)
/* 423F78 802A9308 AFB00010 */  sw        $s0, 0x10($sp)
/* 423F7C 802A930C 8623004C */  lh        $v1, 0x4c($s1)
/* 423F80 802A9310 3C12800E */  lui       $s2, %hi(gBattleStatus)
/* 423F84 802A9314 2652C070 */  addiu     $s2, $s2, %lo(gBattleStatus)
/* 423F88 802A9318 2C62000D */  sltiu     $v0, $v1, 0xd
/* 423F8C 802A931C 10400103 */  beqz      $v0, L802A972C_42439C
/* 423F90 802A9320 00031080 */   sll      $v0, $v1, 2
/* 423F94 802A9324 3C01802B */  lui       $at, %hi(jtbl_802AA8E0_425550)
/* 423F98 802A9328 00220821 */  addu      $at, $at, $v0
/* 423F9C 802A932C 8C22A8E0 */  lw        $v0, %lo(jtbl_802AA8E0_425550)($at)
/* 423FA0 802A9330 00400008 */  jr        $v0
/* 423FA4 802A9334 00000000 */   nop
glabel L802A9338_423FA8
/* 423FA8 802A9338 0C093EB1 */  jal       btl_set_popup_duration
/* 423FAC 802A933C 24040063 */   addiu    $a0, $zero, 0x63
/* 423FB0 802A9340 82220061 */  lb        $v0, 0x61($s1)
/* 423FB4 802A9344 8E300004 */  lw        $s0, 4($s1)
/* 423FB8 802A9348 10400004 */  beqz      $v0, .L802A935C
/* 423FBC 802A934C 0200202D */   daddu    $a0, $s0, $zero
/* 423FC0 802A9350 0C05128B */  jal       clear_hud_element_flags
/* 423FC4 802A9354 24050002 */   addiu    $a1, $zero, 2
/* 423FC8 802A9358 0200202D */  daddu     $a0, $s0, $zero
.L802A935C:
/* 423FCC 802A935C 0C0513AC */  jal       set_hud_element_alpha
/* 423FD0 802A9360 240500FF */   addiu    $a1, $zero, 0xff
/* 423FD4 802A9364 8E300008 */  lw        $s0, 8($s1)
/* 423FD8 802A9368 240500FF */  addiu     $a1, $zero, 0xff
/* 423FDC 802A936C 0C0513AC */  jal       set_hud_element_alpha
/* 423FE0 802A9370 0200202D */   daddu    $a0, $s0, $zero
/* 423FE4 802A9374 82220061 */  lb        $v0, 0x61($s1)
/* 423FE8 802A9378 10400003 */  beqz      $v0, .L802A9388
/* 423FEC 802A937C 0200202D */   daddu    $a0, $s0, $zero
/* 423FF0 802A9380 0C05128B */  jal       clear_hud_element_flags
/* 423FF4 802A9384 24050002 */   addiu    $a1, $zero, 2
.L802A9388:
/* 423FF8 802A9388 8E30000C */  lw        $s0, 0xc($s1)
/* 423FFC 802A938C 240500FF */  addiu     $a1, $zero, 0xff
/* 424000 802A9390 0C0513AC */  jal       set_hud_element_alpha
/* 424004 802A9394 0200202D */   daddu    $a0, $s0, $zero
/* 424008 802A9398 82220061 */  lb        $v0, 0x61($s1)
/* 42400C 802A939C 10400003 */  beqz      $v0, .L802A93AC
/* 424010 802A93A0 0200202D */   daddu    $a0, $s0, $zero
/* 424014 802A93A4 0C05128B */  jal       clear_hud_element_flags
/* 424018 802A93A8 24050002 */   addiu    $a1, $zero, 2
.L802A93AC:
/* 42401C 802A93AC 8E300010 */  lw        $s0, 0x10($s1)
/* 424020 802A93B0 240500FF */  addiu     $a1, $zero, 0xff
/* 424024 802A93B4 0C0513AC */  jal       set_hud_element_alpha
/* 424028 802A93B8 0200202D */   daddu    $a0, $s0, $zero
/* 42402C 802A93BC 82220061 */  lb        $v0, 0x61($s1)
/* 424030 802A93C0 10400003 */  beqz      $v0, .L802A93D0
/* 424034 802A93C4 0200202D */   daddu    $a0, $s0, $zero
/* 424038 802A93C8 0C05128B */  jal       clear_hud_element_flags
/* 42403C 802A93CC 24050002 */   addiu    $a1, $zero, 2
.L802A93D0:
/* 424040 802A93D0 24020001 */  addiu     $v0, $zero, 1
/* 424044 802A93D4 080AA5CB */  j         L802A972C_42439C
/* 424048 802A93D8 A622004C */   sh       $v0, 0x4c($s1)
glabel L802A93DC_42404C
/* 42404C 802A93DC 0C093EB1 */  jal       btl_set_popup_duration
/* 424050 802A93E0 24040063 */   addiu    $a0, $zero, 0x63
/* 424054 802A93E4 96220056 */  lhu       $v0, 0x56($s1)
/* 424058 802A93E8 24420014 */  addiu     $v0, $v0, 0x14
/* 42405C 802A93EC A6220056 */  sh        $v0, 0x56($s1)
/* 424060 802A93F0 00021400 */  sll       $v0, $v0, 0x10
/* 424064 802A93F4 00021403 */  sra       $v0, $v0, 0x10
/* 424068 802A93F8 28420033 */  slti      $v0, $v0, 0x33
/* 42406C 802A93FC 14400002 */  bnez      $v0, .L802A9408
/* 424070 802A9400 24020032 */   addiu    $v0, $zero, 0x32
/* 424074 802A9404 A6220056 */  sh        $v0, 0x56($s1)
.L802A9408:
/* 424078 802A9408 8E240004 */  lw        $a0, 4($s1)
/* 42407C 802A940C 86250056 */  lh        $a1, 0x56($s1)
/* 424080 802A9410 0C051261 */  jal       set_hud_element_render_pos
/* 424084 802A9414 86260058 */   lh       $a2, 0x58($s1)
/* 424088 802A9418 8E240008 */  lw        $a0, 8($s1)
/* 42408C 802A941C 86260058 */  lh        $a2, 0x58($s1)
/* 424090 802A9420 86250056 */  lh        $a1, 0x56($s1)
/* 424094 802A9424 0C051261 */  jal       set_hud_element_render_pos
/* 424098 802A9428 24C6001C */   addiu    $a2, $a2, 0x1c
/* 42409C 802A942C 8E24000C */  lw        $a0, 0xc($s1)
/* 4240A0 802A9430 86250056 */  lh        $a1, 0x56($s1)
/* 4240A4 802A9434 86260058 */  lh        $a2, 0x58($s1)
/* 4240A8 802A9438 24A50036 */  addiu     $a1, $a1, 0x36
/* 4240AC 802A943C 0C051261 */  jal       set_hud_element_render_pos
/* 4240B0 802A9440 24C60017 */   addiu    $a2, $a2, 0x17
/* 4240B4 802A9444 8E240010 */  lw        $a0, 0x10($s1)
/* 4240B8 802A9448 86250056 */  lh        $a1, 0x56($s1)
/* 4240BC 802A944C 86260058 */  lh        $a2, 0x58($s1)
/* 4240C0 802A9450 24A5003C */  addiu     $a1, $a1, 0x3c
/* 4240C4 802A9454 0C051261 */  jal       set_hud_element_render_pos
/* 4240C8 802A9458 24C60017 */   addiu    $a2, $a2, 0x17
/* 4240CC 802A945C 080AA5CB */  j         L802A972C_42439C
/* 4240D0 802A9460 00000000 */   nop
glabel L802A9464_4240D4
/* 4240D4 802A9464 0C093EB1 */  jal       btl_set_popup_duration
/* 4240D8 802A9468 24040063 */   addiu    $a0, $zero, 0x63
/* 4240DC 802A946C 8622004E */  lh        $v0, 0x4e($s1)
/* 4240E0 802A9470 9623004E */  lhu       $v1, 0x4e($s1)
/* 4240E4 802A9474 10400003 */  beqz      $v0, .L802A9484
/* 4240E8 802A9478 2462FFFF */   addiu    $v0, $v1, -1
/* 4240EC 802A947C 080AA5CB */  j         L802A972C_42439C
/* 4240F0 802A9480 A622004E */   sh       $v0, 0x4e($s1)
.L802A9484:
/* 4240F4 802A9484 8E240004 */  lw        $a0, 4($s1)
/* 4240F8 802A9488 3C058011 */  lui       $a1, %hi(D_80108B80)
/* 4240FC 802A948C 24A58B80 */  addiu     $a1, $a1, %lo(D_80108B80)
/* 424100 802A9490 0C0511FF */  jal       set_hud_element_script
/* 424104 802A9494 00000000 */   nop
/* 424108 802A9498 96230052 */  lhu       $v1, 0x52($s1)
/* 42410C 802A949C 2402000B */  addiu     $v0, $zero, 0xb
/* 424110 802A94A0 A6200044 */  sh        $zero, 0x44($s1)
/* 424114 802A94A4 A622004C */  sh        $v0, 0x4c($s1)
/* 424118 802A94A8 A6230054 */  sh        $v1, 0x54($s1)
glabel L802A94AC_42411C
/* 42411C 802A94AC 0C093EB1 */  jal       btl_set_popup_duration
/* 424120 802A94B0 24040063 */   addiu    $a0, $zero, 0x63
/* 424124 802A94B4 82220080 */  lb        $v0, 0x80($s1)
/* 424128 802A94B8 00021040 */  sll       $v0, $v0, 1
/* 42412C 802A94BC 02221021 */  addu      $v0, $s1, $v0
/* 424130 802A94C0 84500074 */  lh        $s0, 0x74($v0)
/* 424134 802A94C4 86220044 */  lh        $v0, 0x44($s1)
/* 424138 802A94C8 86230064 */  lh        $v1, 0x64($s1)
/* 42413C 802A94CC 16000002 */  bnez      $s0, .L802A94D8
/* 424140 802A94D0 0050001A */   div      $zero, $v0, $s0
/* 424144 802A94D4 0007000D */  break     7
.L802A94D8:
/* 424148 802A94D8 2401FFFF */   addiu    $at, $zero, -1
/* 42414C 802A94DC 16010004 */  bne       $s0, $at, .L802A94F0
/* 424150 802A94E0 3C018000 */   lui      $at, 0x8000
/* 424154 802A94E4 14410002 */  bne       $v0, $at, .L802A94F0
/* 424158 802A94E8 00000000 */   nop
/* 42415C 802A94EC 0006000D */  break     6
.L802A94F0:
/* 424160 802A94F0 00002012 */   mflo     $a0
/* 424164 802A94F4 1460000C */  bnez      $v1, .L802A9528
/* 424168 802A94F8 3C026666 */   lui      $v0, 0x6666
/* 42416C 802A94FC 34426667 */  ori       $v0, $v0, 0x6667
/* 424170 802A9500 00820018 */  mult      $a0, $v0
/* 424174 802A9504 00041FC3 */  sra       $v1, $a0, 0x1f
/* 424178 802A9508 00003810 */  mfhi      $a3
/* 42417C 802A950C 000710C3 */  sra       $v0, $a3, 3
/* 424180 802A9510 00431023 */  subu      $v0, $v0, $v1
/* 424184 802A9514 00021080 */  sll       $v0, $v0, 2
/* 424188 802A9518 3C03802B */  lui       $v1, %hi(D_802AA844_4254B4)
/* 42418C 802A951C 00621821 */  addu      $v1, $v1, $v0
/* 424190 802A9520 080AA554 */  j         .L802A9550
/* 424194 802A9524 8C63A844 */   lw       $v1, %lo(D_802AA844_4254B4)($v1)
.L802A9528:
/* 424198 802A9528 34426667 */  ori       $v0, $v0, 0x6667
/* 42419C 802A952C 00820018 */  mult      $a0, $v0
/* 4241A0 802A9530 00041FC3 */  sra       $v1, $a0, 0x1f
/* 4241A4 802A9534 00003810 */  mfhi      $a3
/* 4241A8 802A9538 00071083 */  sra       $v0, $a3, 2
/* 4241AC 802A953C 00431023 */  subu      $v0, $v0, $v1
/* 4241B0 802A9540 00021080 */  sll       $v0, $v0, 2
/* 4241B4 802A9544 3C03802B */  lui       $v1, %hi(D_802AA85C_4254CC)
/* 4241B8 802A9548 00621821 */  addu      $v1, $v1, $v0
/* 4241BC 802A954C 8C63A85C */  lw        $v1, %lo(D_802AA85C_4254CC)($v1)
.L802A9550:
/* 4241C0 802A9550 96220044 */  lhu       $v0, 0x44($s1)
/* 4241C4 802A9554 00431023 */  subu      $v0, $v0, $v1
/* 4241C8 802A9558 A6220044 */  sh        $v0, 0x44($s1)
/* 4241CC 802A955C 00021400 */  sll       $v0, $v0, 0x10
/* 4241D0 802A9560 04420001 */  bltzl     $v0, .L802A9568
/* 4241D4 802A9564 A6200044 */   sh       $zero, 0x44($s1)
.L802A9568:
/* 4241D8 802A9568 8622006A */  lh        $v0, 0x6a($s1)
/* 4241DC 802A956C 1440001C */  bnez      $v0, .L802A95E0
/* 4241E0 802A9570 00000000 */   nop
/* 4241E4 802A9574 8E420214 */  lw        $v0, 0x214($s2)
/* 4241E8 802A9578 30428000 */  andi      $v0, $v0, 0x8000
/* 4241EC 802A957C 1040002F */  beqz      $v0, .L802A963C
/* 4241F0 802A9580 00000000 */   nop
/* 4241F4 802A9584 86220064 */  lh        $v0, 0x64($s1)
/* 4241F8 802A9588 14400009 */  bnez      $v0, .L802A95B0
/* 4241FC 802A958C 00000000 */   nop
/* 424200 802A9590 86220050 */  lh        $v0, 0x50($s1)
/* 424204 802A9594 8E430434 */  lw        $v1, 0x434($s2)
/* 424208 802A9598 00021080 */  sll       $v0, $v0, 2
/* 42420C 802A959C 00431021 */  addu      $v0, $v0, $v1
/* 424210 802A95A0 8C430000 */  lw        $v1, ($v0)
/* 424214 802A95A4 00031080 */  sll       $v0, $v1, 2
/* 424218 802A95A8 080AA574 */  j         .L802A95D0
/* 42421C 802A95AC 00431821 */   addu     $v1, $v0, $v1
.L802A95B0:
/* 424220 802A95B0 86220050 */  lh        $v0, 0x50($s1)
/* 424224 802A95B4 8E430434 */  lw        $v1, 0x434($s2)
/* 424228 802A95B8 00021080 */  sll       $v0, $v0, 2
/* 42422C 802A95BC 00431021 */  addu      $v0, $v0, $v1
/* 424230 802A95C0 8C430000 */  lw        $v1, ($v0)
/* 424234 802A95C4 00031040 */  sll       $v0, $v1, 1
/* 424238 802A95C8 00431021 */  addu      $v0, $v0, $v1
/* 42423C 802A95CC 00021840 */  sll       $v1, $v0, 1
.L802A95D0:
/* 424240 802A95D0 96220044 */  lhu       $v0, 0x44($s1)
/* 424244 802A95D4 00431021 */  addu      $v0, $v0, $v1
/* 424248 802A95D8 080AA58F */  j         .L802A963C
/* 42424C 802A95DC A6220044 */   sh       $v0, 0x44($s1)
.L802A95E0:
/* 424250 802A95E0 86220050 */  lh        $v0, 0x50($s1)
/* 424254 802A95E4 8E430434 */  lw        $v1, 0x434($s2)
/* 424258 802A95E8 00021080 */  sll       $v0, $v0, 2
/* 42425C 802A95EC 00431021 */  addu      $v0, $v0, $v1
/* 424260 802A95F0 8C430000 */  lw        $v1, ($v0)
/* 424264 802A95F4 04620001 */  bltzl     $v1, .L802A95FC
/* 424268 802A95F8 24630003 */   addiu    $v1, $v1, 3
.L802A95FC:
/* 42426C 802A95FC 96220044 */  lhu       $v0, 0x44($s1)
/* 424270 802A9600 00031883 */  sra       $v1, $v1, 2
/* 424274 802A9604 00431021 */  addu      $v0, $v0, $v1
/* 424278 802A9608 A6220044 */  sh        $v0, 0x44($s1)
/* 42427C 802A960C 86220050 */  lh        $v0, 0x50($s1)
/* 424280 802A9610 8E430434 */  lw        $v1, 0x434($s2)
/* 424284 802A9614 00021080 */  sll       $v0, $v0, 2
/* 424288 802A9618 00431021 */  addu      $v0, $v0, $v1
/* 42428C 802A961C 8C420000 */  lw        $v0, ($v0)
/* 424290 802A9620 04420001 */  bltzl     $v0, .L802A9628
/* 424294 802A9624 24420003 */   addiu    $v0, $v0, 3
.L802A9628:
/* 424298 802A9628 0C00A67F */  jal       rand_int
/* 42429C 802A962C 00022083 */   sra      $a0, $v0, 2
/* 4242A0 802A9630 96230044 */  lhu       $v1, 0x44($s1)
/* 4242A4 802A9634 00621821 */  addu      $v1, $v1, $v0
/* 4242A8 802A9638 A6230044 */  sh        $v1, 0x44($s1)
.L802A963C:
/* 4242AC 802A963C 86230044 */  lh        $v1, 0x44($s1)
/* 4242B0 802A9640 00101040 */  sll       $v0, $s0, 1
/* 4242B4 802A9644 00501021 */  addu      $v0, $v0, $s0
/* 4242B8 802A9648 000210C0 */  sll       $v0, $v0, 3
/* 4242BC 802A964C 00501021 */  addu      $v0, $v0, $s0
/* 4242C0 802A9650 00021080 */  sll       $v0, $v0, 2
/* 4242C4 802A9654 0043182A */  slt       $v1, $v0, $v1
/* 4242C8 802A9658 54600001 */  bnel      $v1, $zero, .L802A9660
/* 4242CC 802A965C A6220044 */   sh       $v0, 0x44($s1)
.L802A9660:
/* 4242D0 802A9660 86220064 */  lh        $v0, 0x64($s1)
/* 4242D4 802A9664 1440000B */  bnez      $v0, .L802A9694
/* 4242D8 802A9668 3C041062 */   lui      $a0, 0x1062
/* 4242DC 802A966C 96230044 */  lhu       $v1, 0x44($s1)
/* 4242E0 802A9670 34844DD3 */  ori       $a0, $a0, 0x4dd3
/* 4242E4 802A9674 00031C00 */  sll       $v1, $v1, 0x10
/* 4242E8 802A9678 00031403 */  sra       $v0, $v1, 0x10
/* 4242EC 802A967C 00440018 */  mult      $v0, $a0
/* 4242F0 802A9680 00031FC3 */  sra       $v1, $v1, 0x1f
/* 4242F4 802A9684 00003810 */  mfhi      $a3
/* 4242F8 802A9688 000711C3 */  sra       $v0, $a3, 7
/* 4242FC 802A968C 080AA5B3 */  j         .L802A96CC
/* 424300 802A9690 00431023 */   subu     $v0, $v0, $v1
.L802A9694:
/* 424304 802A9694 96230044 */  lhu       $v1, 0x44($s1)
/* 424308 802A9698 34844DD3 */  ori       $a0, $a0, 0x4dd3
/* 42430C 802A969C 00031C00 */  sll       $v1, $v1, 0x10
/* 424310 802A96A0 00031403 */  sra       $v0, $v1, 0x10
/* 424314 802A96A4 00440018 */  mult      $v0, $a0
/* 424318 802A96A8 00031FC3 */  sra       $v1, $v1, 0x1f
/* 42431C 802A96AC 00003810 */  mfhi      $a3
/* 424320 802A96B0 00071183 */  sra       $v0, $a3, 6
/* 424324 802A96B4 00431023 */  subu      $v0, $v0, $v1
/* 424328 802A96B8 00021400 */  sll       $v0, $v0, 0x10
/* 42432C 802A96BC 00021383 */  sra       $v0, $v0, 0xe
/* 424330 802A96C0 3C01802B */  lui       $at, %hi(D_802AA8B7_425527)
/* 424334 802A96C4 00220821 */  addu      $at, $at, $v0
/* 424338 802A96C8 9022A8B7 */  lbu       $v0, %lo(D_802AA8B7_425527)($at)
.L802A96CC:
/* 42433C 802A96CC A2420084 */  sb        $v0, 0x84($s2)
/* 424340 802A96D0 86220054 */  lh        $v0, 0x54($s1)
/* 424344 802A96D4 96230054 */  lhu       $v1, 0x54($s1)
/* 424348 802A96D8 14400010 */  bnez      $v0, .L802A971C
/* 42434C 802A96DC 2462FFFF */   addiu    $v0, $v1, -1
/* 424350 802A96E0 0000202D */  daddu     $a0, $zero, $zero
/* 424354 802A96E4 92430084 */  lbu       $v1, 0x84($s2)
/* 424358 802A96E8 2402007F */  addiu     $v0, $zero, 0x7f
/* 42435C 802A96EC A2420086 */  sb        $v0, 0x86($s2)
/* 424360 802A96F0 0C093EB1 */  jal       btl_set_popup_duration
/* 424364 802A96F4 A2430081 */   sb       $v1, 0x81($s2)
/* 424368 802A96F8 24020005 */  addiu     $v0, $zero, 5
/* 42436C 802A96FC A6220054 */  sh        $v0, 0x54($s1)
/* 424370 802A9700 2402000C */  addiu     $v0, $zero, 0xc
/* 424374 802A9704 080AA5CB */  j         L802A972C_42439C
/* 424378 802A9708 A622004C */   sh       $v0, 0x4c($s1)
glabel L802A970C_42437C
/* 42437C 802A970C 86220054 */  lh        $v0, 0x54($s1)
/* 424380 802A9710 96230054 */  lhu       $v1, 0x54($s1)
/* 424384 802A9714 10400003 */  beqz      $v0, .L802A9724
/* 424388 802A9718 2462FFFF */   addiu    $v0, $v1, -1
.L802A971C:
/* 42438C 802A971C 080AA5CB */  j         L802A972C_42439C
/* 424390 802A9720 A6220054 */   sh       $v0, 0x54($s1)
.L802A9724:
/* 424394 802A9724 0C09A327 */  jal       func_80268C9C
/* 424398 802A9728 00000000 */   nop
glabel L802A972C_42439C
/* 42439C 802A972C 8FBF001C */  lw        $ra, 0x1c($sp)
/* 4243A0 802A9730 8FB20018 */  lw        $s2, 0x18($sp)
/* 4243A4 802A9734 8FB10014 */  lw        $s1, 0x14($sp)
/* 4243A8 802A9738 8FB00010 */  lw        $s0, 0x10($sp)
/* 4243AC 802A973C 03E00008 */  jr        $ra
/* 4243B0 802A9740 27BD0020 */   addiu    $sp, $sp, 0x20