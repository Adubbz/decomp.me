.include "macros.inc"

.section .text  # 0x0 - 0x70

.global foo
foo:
/* 00000000 00000000  4E 80 00 20 */	blr 

.global test
test:
/* 00000004 00000004  7C 08 02 A6 */	mflr r0
/* 00000008 00000008  90 01 00 04 */	stw r0, 4(r1)
/* 0000000C 0000000C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000010 00000010  80 00 00 00 */	lwz r0, $$22@sda21(r13)
/* 00000014 00000014  38 61 00 08 */	addi r3, r1, 8
/* 00000018 00000018  A0 80 00 00 */	lhz r4, $$22@sda21(r13)
/* 0000001C 0000001C  90 01 00 08 */	stw r0, 8(r1)
/* 00000020 00000020  88 00 00 00 */	lbz r0, $$22@sda21(r13)
/* 00000024 00000024  B0 81 00 0C */	sth r4, 0xc(r1)
/* 00000028 00000028  98 01 00 0E */	stb r0, 0xe(r1)
/* 0000002C 0000002C  48 00 00 01 */	bl foo
/* 00000030 00000030  38 60 00 00 */	li r3, a2@sda21(r2)
/* 00000034 00000034  80 03 00 01 */	lwz r0, 1(r3)
/* 00000038 00000038  38 80 00 00 */	li r4, a1@sda21(r2)
/* 0000003C 0000003C  3C 60 00 00 */	lis r3, buf@ha
/* 00000040 00000040  90 04 00 01 */	stw r0, 1(r4)
/* 00000044 00000044  38 63 00 00 */	addi r3, r3, buf@l
/* 00000048 00000048  38 80 00 00 */	li r4, $$24@sda21(r2)
/* 0000004C 0000004C  80 A0 00 00 */	lwz r5, a1@sda21(r2)
/* 00000050 00000050  88 00 00 00 */	lbz r0, a1@sda21(r2)
/* 00000054 00000054  90 A0 00 00 */	stw r5, a3@sda21(r2)
/* 00000058 00000058  98 00 00 00 */	stb r0, a3@sda21(r2)
/* 0000005C 0000005C  48 00 00 01 */	bl strcpy
/* 00000060 00000060  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000064 00000064  38 21 00 10 */	addi r1, r1, 0x10
/* 00000068 00000068  7C 08 03 A6 */	mtlr r0
/* 0000006C 0000006C  4E 80 00 20 */	blr 

.section .bss  # 0x0 - 0x64

.global buf
buf:
	.word 0x00000000
	.word 0x00000000
	.word 0x00000000
	.word 0x00000000
	.word 0x00000000
	.word 0x00000000
	.word 0x00000000
	.word 0x00000000
	.word 0x00000000
	.word 0x00000000
	.word 0x00000000
	.word 0x00000000
	.word 0x00000000
	.word 0x00000000
	.word 0x00000000
	.word 0x00000000
	.word 0x00000000
	.word 0x00000000
	.word 0x00000000
	.word 0x00000000
	.word 0x00000000
	.word 0x00000000
	.word 0x00000000
	.word 0x00000000
	.word 0x00000000

.section .sdata  # 0x0 - 0x4

.global $$24
$$24:
	.word 0x67686900

.section .sbss  # 0x0 - 0x15

.global a3
a3:
	.word 0x00000000
	.word 0x00000000

.global a2
a2:
	.word 0x00000000
	.word 0x00000000

.global a1
a1:
	.word 0x00000000
	.bytes 0x0

.section .sdata2  # 0x0 - 0x7

.global $$22
$$22:
	.word 0x61626364
	.bytes 0x65, 0x66, 0x0

