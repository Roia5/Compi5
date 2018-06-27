regNameToIndex error - wanted name is 
regNameToIndex error - wanted name is 
.data
outOfBounds_errMsg: .asciiz "Error index out of bounds
"
ZeroDiv_errMsg: .asciiz "Error division by zero
"
input0:    .asciiz "\n"
input1:    .asciiz "true"
input2:    .asciiz "false"
input3:    .asciiz "\n"

.text

.globl main
.ent  main
main:

move $fp, $sp
jal _main_
label_7:
li $v0,10
syscall
.end main


.globl _printIntResult_
.ent  _printIntResult_
_printIntResult_:

move $fp, $sp
subu $fp, $fp, 4
lw $t0, 4($fp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
sw $t5, ($sp)
subu $sp, $sp, 4
sw $t6, ($sp)
subu $sp, $sp, 4
sw $t7, ($sp)
subu $sp, $sp, 4
sw $s0, ($sp)
subu $sp, $sp, 4
sw $s1, ($sp)
subu $sp, $sp, 4
sw $s2, ($sp)
subu $sp, $sp, 4
sw $s3, ($sp)
subu $sp, $sp, 4
sw $s4, ($sp)
subu $sp, $sp, 4
sw $s5, ($sp)
subu $sp, $sp, 4
sw $s6, ($sp)
subu $sp, $sp, 4
sw $s7, ($sp)
subu $sp, $sp, 4
sw $t8, ($sp)
subu $sp, $sp, 4
sw $t9, ($sp)
subu $sp, $sp, 4
sw $fp, ($sp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
jal _printi_
label_63:
lw $t0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $fp, ($sp)
addu $sp, $sp, 4
lw $t9, ($sp)
addu $sp, $sp, 4
lw $t8, ($sp)
addu $sp, $sp, 4
lw $s7, ($sp)
addu $sp, $sp, 4
lw $s6, ($sp)
addu $sp, $sp, 4
lw $s5, ($sp)
addu $sp, $sp, 4
lw $s4, ($sp)
addu $sp, $sp, 4
lw $s3, ($sp)
addu $sp, $sp, 4
lw $s2, ($sp)
addu $sp, $sp, 4
lw $s1, ($sp)
addu $sp, $sp, 4
lw $s0, ($sp)
addu $sp, $sp, 4
lw $t7, ($sp)
addu $sp, $sp, 4
lw $t6, ($sp)
addu $sp, $sp, 4
lw $t5, ($sp)
addu $sp, $sp, 4
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
label_106:
la $t0, input0
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
sw $t5, ($sp)
subu $sp, $sp, 4
sw $t6, ($sp)
subu $sp, $sp, 4
sw $t7, ($sp)
subu $sp, $sp, 4
sw $s0, ($sp)
subu $sp, $sp, 4
sw $s1, ($sp)
subu $sp, $sp, 4
sw $s2, ($sp)
subu $sp, $sp, 4
sw $s3, ($sp)
subu $sp, $sp, 4
sw $s4, ($sp)
subu $sp, $sp, 4
sw $s5, ($sp)
subu $sp, $sp, 4
sw $s6, ($sp)
subu $sp, $sp, 4
sw $s7, ($sp)
subu $sp, $sp, 4
sw $t8, ($sp)
subu $sp, $sp, 4
sw $t9, ($sp)
subu $sp, $sp, 4
sw $fp, ($sp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
jal _print_
label_151:
lw $t0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $fp, ($sp)
addu $sp, $sp, 4
lw $t9, ($sp)
addu $sp, $sp, 4
lw $t8, ($sp)
addu $sp, $sp, 4
lw $s7, ($sp)
addu $sp, $sp, 4
lw $s6, ($sp)
addu $sp, $sp, 4
lw $s5, ($sp)
addu $sp, $sp, 4
lw $s4, ($sp)
addu $sp, $sp, 4
lw $s3, ($sp)
addu $sp, $sp, 4
lw $s2, ($sp)
addu $sp, $sp, 4
lw $s1, ($sp)
addu $sp, $sp, 4
lw $s0, ($sp)
addu $sp, $sp, 4
lw $t7, ($sp)
addu $sp, $sp, 4
lw $t6, ($sp)
addu $sp, $sp, 4
lw $t5, ($sp)
addu $sp, $sp, 4
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
jr $ra
.end _printIntResult_


.globl _printBoolResult_
.ent  _printBoolResult_
_printBoolResult_:

move $fp, $sp
subu $fp, $fp, 4
lw $t0, 4($fp)
bne $t0, 0, label_207
j label_296
label_207:
la $t0, input1
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
sw $t5, ($sp)
subu $sp, $sp, 4
sw $t6, ($sp)
subu $sp, $sp, 4
sw $t7, ($sp)
subu $sp, $sp, 4
sw $s0, ($sp)
subu $sp, $sp, 4
sw $s1, ($sp)
subu $sp, $sp, 4
sw $s2, ($sp)
subu $sp, $sp, 4
sw $s3, ($sp)
subu $sp, $sp, 4
sw $s4, ($sp)
subu $sp, $sp, 4
sw $s5, ($sp)
subu $sp, $sp, 4
sw $s6, ($sp)
subu $sp, $sp, 4
sw $s7, ($sp)
subu $sp, $sp, 4
sw $t8, ($sp)
subu $sp, $sp, 4
sw $t9, ($sp)
subu $sp, $sp, 4
sw $fp, ($sp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
jal _print_
label_252:
lw $t0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $fp, ($sp)
addu $sp, $sp, 4
lw $t9, ($sp)
addu $sp, $sp, 4
lw $t8, ($sp)
addu $sp, $sp, 4
lw $s7, ($sp)
addu $sp, $sp, 4
lw $s6, ($sp)
addu $sp, $sp, 4
lw $s5, ($sp)
addu $sp, $sp, 4
lw $s4, ($sp)
addu $sp, $sp, 4
lw $s3, ($sp)
addu $sp, $sp, 4
lw $s2, ($sp)
addu $sp, $sp, 4
lw $s1, ($sp)
addu $sp, $sp, 4
lw $s0, ($sp)
addu $sp, $sp, 4
lw $t7, ($sp)
addu $sp, $sp, 4
lw $t6, ($sp)
addu $sp, $sp, 4
lw $t5, ($sp)
addu $sp, $sp, 4
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
j label_384
label_296:
la $t0, input2
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
sw $t5, ($sp)
subu $sp, $sp, 4
sw $t6, ($sp)
subu $sp, $sp, 4
sw $t7, ($sp)
subu $sp, $sp, 4
sw $s0, ($sp)
subu $sp, $sp, 4
sw $s1, ($sp)
subu $sp, $sp, 4
sw $s2, ($sp)
subu $sp, $sp, 4
sw $s3, ($sp)
subu $sp, $sp, 4
sw $s4, ($sp)
subu $sp, $sp, 4
sw $s5, ($sp)
subu $sp, $sp, 4
sw $s6, ($sp)
subu $sp, $sp, 4
sw $s7, ($sp)
subu $sp, $sp, 4
sw $t8, ($sp)
subu $sp, $sp, 4
sw $t9, ($sp)
subu $sp, $sp, 4
sw $fp, ($sp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
jal _print_
label_341:
lw $t0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $fp, ($sp)
addu $sp, $sp, 4
lw $t9, ($sp)
addu $sp, $sp, 4
lw $t8, ($sp)
addu $sp, $sp, 4
lw $s7, ($sp)
addu $sp, $sp, 4
lw $s6, ($sp)
addu $sp, $sp, 4
lw $s5, ($sp)
addu $sp, $sp, 4
lw $s4, ($sp)
addu $sp, $sp, 4
lw $s3, ($sp)
addu $sp, $sp, 4
lw $s2, ($sp)
addu $sp, $sp, 4
lw $s1, ($sp)
addu $sp, $sp, 4
lw $s0, ($sp)
addu $sp, $sp, 4
lw $t7, ($sp)
addu $sp, $sp, 4
lw $t6, ($sp)
addu $sp, $sp, 4
lw $t5, ($sp)
addu $sp, $sp, 4
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
label_384:
label_385:
la $t0, input3
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
sw $t5, ($sp)
subu $sp, $sp, 4
sw $t6, ($sp)
subu $sp, $sp, 4
sw $t7, ($sp)
subu $sp, $sp, 4
sw $s0, ($sp)
subu $sp, $sp, 4
sw $s1, ($sp)
subu $sp, $sp, 4
sw $s2, ($sp)
subu $sp, $sp, 4
sw $s3, ($sp)
subu $sp, $sp, 4
sw $s4, ($sp)
subu $sp, $sp, 4
sw $s5, ($sp)
subu $sp, $sp, 4
sw $s6, ($sp)
subu $sp, $sp, 4
sw $s7, ($sp)
subu $sp, $sp, 4
sw $t8, ($sp)
subu $sp, $sp, 4
sw $t9, ($sp)
subu $sp, $sp, 4
sw $fp, ($sp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
jal _print_
label_430:
lw $t0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $fp, ($sp)
addu $sp, $sp, 4
lw $t9, ($sp)
addu $sp, $sp, 4
lw $t8, ($sp)
addu $sp, $sp, 4
lw $s7, ($sp)
addu $sp, $sp, 4
lw $s6, ($sp)
addu $sp, $sp, 4
lw $s5, ($sp)
addu $sp, $sp, 4
lw $s4, ($sp)
addu $sp, $sp, 4
lw $s3, ($sp)
addu $sp, $sp, 4
lw $s2, ($sp)
addu $sp, $sp, 4
lw $s1, ($sp)
addu $sp, $sp, 4
lw $s0, ($sp)
addu $sp, $sp, 4
lw $t7, ($sp)
addu $sp, $sp, 4
lw $t6, ($sp)
addu $sp, $sp, 4
lw $t5, ($sp)
addu $sp, $sp, 4
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
jr $ra
.end _printBoolResult_


.globl _flipBool_
.ent  _flipBool_
_flipBool_:

move $fp, $sp
subu $fp, $fp, 4
lw $t0, 4($fp)
bne $t0, 0, label_489
j label_486
label_486:
li $t0, 1
j label_491
label_489:
li $t0, 0
label_491:
sw $t0, 4($fp)
label_493:
lw $t0, 4($fp)
bne $t0, 0, label_497
j label_500
label_497:
li $t0, 1
j label_502
label_500:
li $t0, 0
label_502:
move $v0, $t0
jr $ra
jr $ra
.end _flipBool_


.globl _increment_
.ent  _increment_
_increment_:

move $fp, $sp
subu $fp, $fp, 4
lw $t0, 4($fp)
li $t1, 1
addu $t0, $t0, $t1
sw $t0, 4($fp)
jr $ra
.end _increment_


.globl _updateElementAtIndex42_
.ent  _updateElementAtIndex42_
_updateElementAtIndex42_:

move $fp, $sp
subu $fp, $fp, 4
li $t0, 42
li $t1, 42
bge $t0, 70, labelOutOfRange
blt $t0, 0, labelOutOfRange
li $t2, -70
addu $t2, $t2, $t0
mul $t2, $t2, 4
subu $t2, $fp, $t2
sw $t1, ($t2)
jr $ra
.end _updateElementAtIndex42_


.globl _main_
.ent  _main_
_main_:

move $fp, $sp
subu $fp, $fp, 4
li $t2, 7
sw $t2, 0($fp)
subu $sp, $sp, 4
label_551:
lw $t2, 0($fp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
sw $t5, ($sp)
subu $sp, $sp, 4
sw $t6, ($sp)
subu $sp, $sp, 4
sw $t7, ($sp)
subu $sp, $sp, 4
sw $s0, ($sp)
subu $sp, $sp, 4
sw $s1, ($sp)
subu $sp, $sp, 4
sw $s2, ($sp)
subu $sp, $sp, 4
sw $s3, ($sp)
subu $sp, $sp, 4
sw $s4, ($sp)
subu $sp, $sp, 4
sw $s5, ($sp)
subu $sp, $sp, 4
sw $s6, ($sp)
subu $sp, $sp, 4
sw $s7, ($sp)
subu $sp, $sp, 4
sw $t8, ($sp)
subu $sp, $sp, 4
sw $t9, ($sp)
subu $sp, $sp, 4
sw $fp, ($sp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
jal _printIntResult_
label_596:
lw $t2, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $fp, ($sp)
addu $sp, $sp, 4
lw $t9, ($sp)
addu $sp, $sp, 4
lw $t8, ($sp)
addu $sp, $sp, 4
lw $s7, ($sp)
addu $sp, $sp, 4
lw $s6, ($sp)
addu $sp, $sp, 4
lw $s5, ($sp)
addu $sp, $sp, 4
lw $s4, ($sp)
addu $sp, $sp, 4
lw $s3, ($sp)
addu $sp, $sp, 4
lw $s2, ($sp)
addu $sp, $sp, 4
lw $s1, ($sp)
addu $sp, $sp, 4
lw $s0, ($sp)
addu $sp, $sp, 4
lw $t7, ($sp)
addu $sp, $sp, 4
lw $t6, ($sp)
addu $sp, $sp, 4
lw $t5, ($sp)
addu $sp, $sp, 4
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
label_639:
lw $t2, 0($fp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
sw $t5, ($sp)
subu $sp, $sp, 4
sw $t6, ($sp)
subu $sp, $sp, 4
sw $t7, ($sp)
subu $sp, $sp, 4
sw $s0, ($sp)
subu $sp, $sp, 4
sw $s1, ($sp)
subu $sp, $sp, 4
sw $s2, ($sp)
subu $sp, $sp, 4
sw $s3, ($sp)
subu $sp, $sp, 4
sw $s4, ($sp)
subu $sp, $sp, 4
sw $s5, ($sp)
subu $sp, $sp, 4
sw $s6, ($sp)
subu $sp, $sp, 4
sw $s7, ($sp)
subu $sp, $sp, 4
sw $t8, ($sp)
subu $sp, $sp, 4
sw $t9, ($sp)
subu $sp, $sp, 4
sw $fp, ($sp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
jal _increment_
label_684:
lw $t2, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $fp, ($sp)
addu $sp, $sp, 4
lw $t9, ($sp)
addu $sp, $sp, 4
lw $t8, ($sp)
addu $sp, $sp, 4
lw $s7, ($sp)
addu $sp, $sp, 4
lw $s6, ($sp)
addu $sp, $sp, 4
lw $s5, ($sp)
addu $sp, $sp, 4
lw $s4, ($sp)
addu $sp, $sp, 4
lw $s3, ($sp)
addu $sp, $sp, 4
lw $s2, ($sp)
addu $sp, $sp, 4
lw $s1, ($sp)
addu $sp, $sp, 4
lw $s0, ($sp)
addu $sp, $sp, 4
lw $t7, ($sp)
addu $sp, $sp, 4
lw $t6, ($sp)
addu $sp, $sp, 4
lw $t5, ($sp)
addu $sp, $sp, 4
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
label_727:
lw $t2, 0($fp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
sw $t5, ($sp)
subu $sp, $sp, 4
sw $t6, ($sp)
subu $sp, $sp, 4
sw $t7, ($sp)
subu $sp, $sp, 4
sw $s0, ($sp)
subu $sp, $sp, 4
sw $s1, ($sp)
subu $sp, $sp, 4
sw $s2, ($sp)
subu $sp, $sp, 4
sw $s3, ($sp)
subu $sp, $sp, 4
sw $s4, ($sp)
subu $sp, $sp, 4
sw $s5, ($sp)
subu $sp, $sp, 4
sw $s6, ($sp)
subu $sp, $sp, 4
sw $s7, ($sp)
subu $sp, $sp, 4
sw $t8, ($sp)
subu $sp, $sp, 4
sw $t9, ($sp)
subu $sp, $sp, 4
sw $fp, ($sp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
jal _printIntResult_
label_772:
lw $t2, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $fp, ($sp)
addu $sp, $sp, 4
lw $t9, ($sp)
addu $sp, $sp, 4
lw $t8, ($sp)
addu $sp, $sp, 4
lw $s7, ($sp)
addu $sp, $sp, 4
lw $s6, ($sp)
addu $sp, $sp, 4
lw $s5, ($sp)
addu $sp, $sp, 4
lw $s4, ($sp)
addu $sp, $sp, 4
lw $s3, ($sp)
addu $sp, $sp, 4
lw $s2, ($sp)
addu $sp, $sp, 4
lw $s1, ($sp)
addu $sp, $sp, 4
lw $s0, ($sp)
addu $sp, $sp, 4
lw $t7, ($sp)
addu $sp, $sp, 4
lw $t6, ($sp)
addu $sp, $sp, 4
lw $t5, ($sp)
addu $sp, $sp, 4
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
label_815:
j label_820
label_817:
li $t2, 1
j label_822
label_820:
li $t2, 0
label_822:
sw $t2, -4($fp)
subu $sp, $sp, 4
label_825:
lw $t2, -4($fp)
bne $t2, 0, label_829
j label_832
label_829:
li $t2, 1
j label_834
label_832:
li $t2, 0
label_834:
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
sw $t5, ($sp)
subu $sp, $sp, 4
sw $t6, ($sp)
subu $sp, $sp, 4
sw $t7, ($sp)
subu $sp, $sp, 4
sw $s0, ($sp)
subu $sp, $sp, 4
sw $s1, ($sp)
subu $sp, $sp, 4
sw $s2, ($sp)
subu $sp, $sp, 4
sw $s3, ($sp)
subu $sp, $sp, 4
sw $s4, ($sp)
subu $sp, $sp, 4
sw $s5, ($sp)
subu $sp, $sp, 4
sw $s6, ($sp)
subu $sp, $sp, 4
sw $s7, ($sp)
subu $sp, $sp, 4
sw $t8, ($sp)
subu $sp, $sp, 4
sw $t9, ($sp)
subu $sp, $sp, 4
sw $fp, ($sp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
jal _printBoolResult_
label_878:
lw $t2, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $fp, ($sp)
addu $sp, $sp, 4
lw $t9, ($sp)
addu $sp, $sp, 4
lw $t8, ($sp)
addu $sp, $sp, 4
lw $s7, ($sp)
addu $sp, $sp, 4
lw $s6, ($sp)
addu $sp, $sp, 4
lw $s5, ($sp)
addu $sp, $sp, 4
lw $s4, ($sp)
addu $sp, $sp, 4
lw $s3, ($sp)
addu $sp, $sp, 4
lw $s2, ($sp)
addu $sp, $sp, 4
lw $s1, ($sp)
addu $sp, $sp, 4
lw $s0, ($sp)
addu $sp, $sp, 4
lw $t7, ($sp)
addu $sp, $sp, 4
lw $t6, ($sp)
addu $sp, $sp, 4
lw $t5, ($sp)
addu $sp, $sp, 4
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
label_921:
lw $t2, -4($fp)
bne $t2, 0, label_925
j label_928
label_925:
li $t2, 1
j label_930
label_928:
li $t2, 0
label_930:
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
sw $t5, ($sp)
subu $sp, $sp, 4
sw $t6, ($sp)
subu $sp, $sp, 4
sw $t7, ($sp)
subu $sp, $sp, 4
sw $s0, ($sp)
subu $sp, $sp, 4
sw $s1, ($sp)
subu $sp, $sp, 4
sw $s2, ($sp)
subu $sp, $sp, 4
sw $s3, ($sp)
subu $sp, $sp, 4
sw $s4, ($sp)
subu $sp, $sp, 4
sw $s5, ($sp)
subu $sp, $sp, 4
sw $s6, ($sp)
subu $sp, $sp, 4
sw $s7, ($sp)
subu $sp, $sp, 4
sw $t8, ($sp)
subu $sp, $sp, 4
sw $t9, ($sp)
subu $sp, $sp, 4
sw $fp, ($sp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
jal _flipBool_
label_974:
lw $t2, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $fp, ($sp)
addu $sp, $sp, 4
lw $t9, ($sp)
addu $sp, $sp, 4
lw $t8, ($sp)
addu $sp, $sp, 4
lw $s7, ($sp)
addu $sp, $sp, 4
lw $s6, ($sp)
addu $sp, $sp, 4
lw $s5, ($sp)
addu $sp, $sp, 4
lw $s4, ($sp)
addu $sp, $sp, 4
lw $s3, ($sp)
addu $sp, $sp, 4
lw $s2, ($sp)
addu $sp, $sp, 4
lw $s1, ($sp)
addu $sp, $sp, 4
lw $s0, ($sp)
addu $sp, $sp, 4
lw $t7, ($sp)
addu $sp, $sp, 4
lw $t6, ($sp)
addu $sp, $sp, 4
lw $t5, ($sp)
addu $sp, $sp, 4
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
label_1017:
lw $t2, -4($fp)
bne $t2, 0, label_1021
j label_1024
label_1021:
li $t2, 1
j label_1026
label_1024:
li $t2, 0
label_1026:
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
sw $t5, ($sp)
subu $sp, $sp, 4
sw $t6, ($sp)
subu $sp, $sp, 4
sw $t7, ($sp)
subu $sp, $sp, 4
sw $s0, ($sp)
subu $sp, $sp, 4
sw $s1, ($sp)
subu $sp, $sp, 4
sw $s2, ($sp)
subu $sp, $sp, 4
sw $s3, ($sp)
subu $sp, $sp, 4
sw $s4, ($sp)
subu $sp, $sp, 4
sw $s5, ($sp)
subu $sp, $sp, 4
sw $s6, ($sp)
subu $sp, $sp, 4
sw $s7, ($sp)
subu $sp, $sp, 4
sw $t8, ($sp)
subu $sp, $sp, 4
sw $t9, ($sp)
subu $sp, $sp, 4
sw $fp, ($sp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
jal _printBoolResult_
label_1070:
lw $t2, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $fp, ($sp)
addu $sp, $sp, 4
lw $t9, ($sp)
addu $sp, $sp, 4
lw $t8, ($sp)
addu $sp, $sp, 4
lw $s7, ($sp)
addu $sp, $sp, 4
lw $s6, ($sp)
addu $sp, $sp, 4
lw $s5, ($sp)
addu $sp, $sp, 4
lw $s4, ($sp)
addu $sp, $sp, 4
lw $s3, ($sp)
addu $sp, $sp, 4
lw $s2, ($sp)
addu $sp, $sp, 4
lw $s1, ($sp)
addu $sp, $sp, 4
lw $s0, ($sp)
addu $sp, $sp, 4
lw $t7, ($sp)
addu $sp, $sp, 4
lw $t6, ($sp)
addu $sp, $sp, 4
lw $t5, ($sp)
addu $sp, $sp, 4
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
label_1113:
li $t2, 0
subu $sp, $sp, 280
sw $t2, ($sp)
sw $t2, 4($sp)
sw $t2, 8($sp)
sw $t2, 12($sp)
sw $t2, 16($sp)
sw $t2, 20($sp)
sw $t2, 24($sp)
sw $t2, 28($sp)
sw $t2, 32($sp)
sw $t2, 36($sp)
sw $t2, 40($sp)
sw $t2, 44($sp)
sw $t2, 48($sp)
sw $t2, 52($sp)
sw $t2, 56($sp)
sw $t2, 60($sp)
sw $t2, 64($sp)
sw $t2, 68($sp)
sw $t2, 72($sp)
sw $t2, 76($sp)
sw $t2, 80($sp)
sw $t2, 84($sp)
sw $t2, 88($sp)
sw $t2, 92($sp)
sw $t2, 96($sp)
sw $t2, 100($sp)
sw $t2, 104($sp)
sw $t2, 108($sp)
sw $t2, 112($sp)
sw $t2, 116($sp)
sw $t2, 120($sp)
sw $t2, 124($sp)
sw $t2, 128($sp)
sw $t2, 132($sp)
sw $t2, 136($sp)
sw $t2, 140($sp)
sw $t2, 144($sp)
sw $t2, 148($sp)
sw $t2, 152($sp)
sw $t2, 156($sp)
sw $t2, 160($sp)
sw $t2, 164($sp)
sw $t2, 168($sp)
sw $t2, 172($sp)
sw $t2, 176($sp)
sw $t2, 180($sp)
sw $t2, 184($sp)
sw $t2, 188($sp)
sw $t2, 192($sp)
sw $t2, 196($sp)
sw $t2, 200($sp)
sw $t2, 204($sp)
sw $t2, 208($sp)
sw $t2, 212($sp)
sw $t2, 216($sp)
sw $t2, 220($sp)
sw $t2, 224($sp)
sw $t2, 228($sp)
sw $t2, 232($sp)
sw $t2, 236($sp)
sw $t2, 240($sp)
sw $t2, 244($sp)
sw $t2, 248($sp)
sw $t2, 252($sp)
sw $t2, 256($sp)
sw $t2, 260($sp)
sw $t2, 264($sp)
sw $t2, 268($sp)
sw $t2, 272($sp)
sw $t2, 276($sp)
label_1186:
li $t2, 0
subu $sp, $sp, 280
sw $t2, ($sp)
sw $t2, 4($sp)
sw $t2, 8($sp)
sw $t2, 12($sp)
sw $t2, 16($sp)
sw $t2, 20($sp)
sw $t2, 24($sp)
sw $t2, 28($sp)
sw $t2, 32($sp)
sw $t2, 36($sp)
sw $t2, 40($sp)
sw $t2, 44($sp)
sw $t2, 48($sp)
sw $t2, 52($sp)
sw $t2, 56($sp)
sw $t2, 60($sp)
sw $t2, 64($sp)
sw $t2, 68($sp)
sw $t2, 72($sp)
sw $t2, 76($sp)
sw $t2, 80($sp)
sw $t2, 84($sp)
sw $t2, 88($sp)
sw $t2, 92($sp)
sw $t2, 96($sp)
sw $t2, 100($sp)
sw $t2, 104($sp)
sw $t2, 108($sp)
sw $t2, 112($sp)
sw $t2, 116($sp)
sw $t2, 120($sp)
sw $t2, 124($sp)
sw $t2, 128($sp)
sw $t2, 132($sp)
sw $t2, 136($sp)
sw $t2, 140($sp)
sw $t2, 144($sp)
sw $t2, 148($sp)
sw $t2, 152($sp)
sw $t2, 156($sp)
sw $t2, 160($sp)
sw $t2, 164($sp)
sw $t2, 168($sp)
sw $t2, 172($sp)
sw $t2, 176($sp)
sw $t2, 180($sp)
sw $t2, 184($sp)
sw $t2, 188($sp)
sw $t2, 192($sp)
sw $t2, 196($sp)
sw $t2, 200($sp)
sw $t2, 204($sp)
sw $t2, 208($sp)
sw $t2, 212($sp)
sw $t2, 216($sp)
sw $t2, 220($sp)
sw $t2, 224($sp)
sw $t2, 228($sp)
sw $t2, 232($sp)
sw $t2, 236($sp)
sw $t2, 240($sp)
sw $t2, 244($sp)
sw $t2, 248($sp)
sw $t2, 252($sp)
sw $t2, 256($sp)
sw $t2, 260($sp)
sw $t2, 264($sp)
sw $t2, 268($sp)
sw $t2, 272($sp)
sw $t2, 276($sp)
label_1259:
li $t2, 0
subu $sp, $sp, 280
sw $t2, ($sp)
sw $t2, 4($sp)
sw $t2, 8($sp)
sw $t2, 12($sp)
sw $t2, 16($sp)
sw $t2, 20($sp)
sw $t2, 24($sp)
sw $t2, 28($sp)
sw $t2, 32($sp)
sw $t2, 36($sp)
sw $t2, 40($sp)
sw $t2, 44($sp)
sw $t2, 48($sp)
sw $t2, 52($sp)
sw $t2, 56($sp)
sw $t2, 60($sp)
sw $t2, 64($sp)
sw $t2, 68($sp)
sw $t2, 72($sp)
sw $t2, 76($sp)
sw $t2, 80($sp)
sw $t2, 84($sp)
sw $t2, 88($sp)
sw $t2, 92($sp)
sw $t2, 96($sp)
sw $t2, 100($sp)
sw $t2, 104($sp)
sw $t2, 108($sp)
sw $t2, 112($sp)
sw $t2, 116($sp)
sw $t2, 120($sp)
sw $t2, 124($sp)
sw $t2, 128($sp)
sw $t2, 132($sp)
sw $t2, 136($sp)
sw $t2, 140($sp)
sw $t2, 144($sp)
sw $t2, 148($sp)
sw $t2, 152($sp)
sw $t2, 156($sp)
sw $t2, 160($sp)
sw $t2, 164($sp)
sw $t2, 168($sp)
sw $t2, 172($sp)
sw $t2, 176($sp)
sw $t2, 180($sp)
sw $t2, 184($sp)
sw $t2, 188($sp)
sw $t2, 192($sp)
sw $t2, 196($sp)
sw $t2, 200($sp)
sw $t2, 204($sp)
sw $t2, 208($sp)
sw $t2, 212($sp)
sw $t2, 216($sp)
sw $t2, 220($sp)
sw $t2, 224($sp)
sw $t2, 228($sp)
sw $t2, 232($sp)
sw $t2, 236($sp)
sw $t2, 240($sp)
sw $t2, 244($sp)
sw $t2, 248($sp)
sw $t2, 252($sp)
sw $t2, 256($sp)
sw $t2, 260($sp)
sw $t2, 264($sp)
sw $t2, 268($sp)
sw $t2, 272($sp)
sw $t2, 276($sp)
label_1332:
li $t2, 42
bge $t2, 70, labelOutOfRange
blt $t2, 0, labelOutOfRange
li $t1, 2
addu $t1, $t1, $t2
mul $t1, $t1, 4
subu $t1, $fp, $t1
lw $t1, ($t1)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
sw $t5, ($sp)
subu $sp, $sp, 4
sw $t6, ($sp)
subu $sp, $sp, 4
sw $t7, ($sp)
subu $sp, $sp, 4
sw $s0, ($sp)
subu $sp, $sp, 4
sw $s1, ($sp)
subu $sp, $sp, 4
sw $s2, ($sp)
subu $sp, $sp, 4
sw $s3, ($sp)
subu $sp, $sp, 4
sw $s4, ($sp)
subu $sp, $sp, 4
sw $s5, ($sp)
subu $sp, $sp, 4
sw $s6, ($sp)
subu $sp, $sp, 4
sw $s7, ($sp)
subu $sp, $sp, 4
sw $t8, ($sp)
subu $sp, $sp, 4
sw $t9, ($sp)
subu $sp, $sp, 4
sw $fp, ($sp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
jal _printIntResult_
label_1384:
lw $t1, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $fp, ($sp)
addu $sp, $sp, 4
lw $t9, ($sp)
addu $sp, $sp, 4
lw $t8, ($sp)
addu $sp, $sp, 4
lw $s7, ($sp)
addu $sp, $sp, 4
lw $s6, ($sp)
addu $sp, $sp, 4
lw $s5, ($sp)
addu $sp, $sp, 4
lw $s4, ($sp)
addu $sp, $sp, 4
lw $s3, ($sp)
addu $sp, $sp, 4
lw $s2, ($sp)
addu $sp, $sp, 4
lw $s1, ($sp)
addu $sp, $sp, 4
lw $s0, ($sp)
addu $sp, $sp, 4
lw $t7, ($sp)
addu $sp, $sp, 4
lw $t6, ($sp)
addu $sp, $sp, 4
lw $t5, ($sp)
addu $sp, $sp, 4
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
label_1427:
li $t1, 42
bge $t1, 70, labelOutOfRange
blt $t1, 0, labelOutOfRange
li $t2, 72
addu $t2, $t2, $t1
mul $t2, $t2, 4
subu $t2, $fp, $t2
lw $t2, ($t2)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
sw $t5, ($sp)
subu $sp, $sp, 4
sw $t6, ($sp)
subu $sp, $sp, 4
sw $t7, ($sp)
subu $sp, $sp, 4
sw $s0, ($sp)
subu $sp, $sp, 4
sw $s1, ($sp)
subu $sp, $sp, 4
sw $s2, ($sp)
subu $sp, $sp, 4
sw $s3, ($sp)
subu $sp, $sp, 4
sw $s4, ($sp)
subu $sp, $sp, 4
sw $s5, ($sp)
subu $sp, $sp, 4
sw $s6, ($sp)
subu $sp, $sp, 4
sw $s7, ($sp)
subu $sp, $sp, 4
sw $t8, ($sp)
subu $sp, $sp, 4
sw $t9, ($sp)
subu $sp, $sp, 4
sw $fp, ($sp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
jal _printIntResult_
label_1479:
lw $t2, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $fp, ($sp)
addu $sp, $sp, 4
lw $t9, ($sp)
addu $sp, $sp, 4
lw $t8, ($sp)
addu $sp, $sp, 4
lw $s7, ($sp)
addu $sp, $sp, 4
lw $s6, ($sp)
addu $sp, $sp, 4
lw $s5, ($sp)
addu $sp, $sp, 4
lw $s4, ($sp)
addu $sp, $sp, 4
lw $s3, ($sp)
addu $sp, $sp, 4
lw $s2, ($sp)
addu $sp, $sp, 4
lw $s1, ($sp)
addu $sp, $sp, 4
lw $s0, ($sp)
addu $sp, $sp, 4
lw $t7, ($sp)
addu $sp, $sp, 4
lw $t6, ($sp)
addu $sp, $sp, 4
lw $t5, ($sp)
addu $sp, $sp, 4
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
label_1522:
li $t2, 42
bge $t2, 70, labelOutOfRange
blt $t2, 0, labelOutOfRange
li $t1, 142
addu $t1, $t1, $t2
mul $t1, $t1, 4
subu $t1, $fp, $t1
lw $t1, ($t1)
bne $t1, 0, label_1533
j label_1536
label_1533:
li $t2, 1
j label_1538
label_1536:
li $t2, 0
label_1538:
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
sw $t5, ($sp)
subu $sp, $sp, 4
sw $t6, ($sp)
subu $sp, $sp, 4
sw $t7, ($sp)
subu $sp, $sp, 4
sw $s0, ($sp)
subu $sp, $sp, 4
sw $s1, ($sp)
subu $sp, $sp, 4
sw $s2, ($sp)
subu $sp, $sp, 4
sw $s3, ($sp)
subu $sp, $sp, 4
sw $s4, ($sp)
subu $sp, $sp, 4
sw $s5, ($sp)
subu $sp, $sp, 4
sw $s6, ($sp)
subu $sp, $sp, 4
sw $s7, ($sp)
subu $sp, $sp, 4
sw $t8, ($sp)
subu $sp, $sp, 4
sw $t9, ($sp)
subu $sp, $sp, 4
sw $fp, ($sp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
jal _printBoolResult_
label_1582:
lw $t2, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $fp, ($sp)
addu $sp, $sp, 4
lw $t9, ($sp)
addu $sp, $sp, 4
lw $t8, ($sp)
addu $sp, $sp, 4
lw $s7, ($sp)
addu $sp, $sp, 4
lw $s6, ($sp)
addu $sp, $sp, 4
lw $s5, ($sp)
addu $sp, $sp, 4
lw $s4, ($sp)
addu $sp, $sp, 4
lw $s3, ($sp)
addu $sp, $sp, 4
lw $s2, ($sp)
addu $sp, $sp, 4
lw $s1, ($sp)
addu $sp, $sp, 4
lw $s0, ($sp)
addu $sp, $sp, 4
lw $t7, ($sp)
addu $sp, $sp, 4
lw $t6, ($sp)
addu $sp, $sp, 4
lw $t5, ($sp)
addu $sp, $sp, 4
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
label_1625:
lw $t2, -8($fp)
lw $t1, -288($fp)
lw $t3, -568($fp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
sw $t5, ($sp)
subu $sp, $sp, 4
sw $t6, ($sp)
subu $sp, $sp, 4
sw $t7, ($sp)
subu $sp, $sp, 4
sw $s0, ($sp)
subu $sp, $sp, 4
sw $s1, ($sp)
subu $sp, $sp, 4
sw $s2, ($sp)
subu $sp, $sp, 4
sw $s3, ($sp)
subu $sp, $sp, 4
sw $s4, ($sp)
subu $sp, $sp, 4
sw $s5, ($sp)
subu $sp, $sp, 4
sw $s6, ($sp)
subu $sp, $sp, 4
sw $s7, ($sp)
subu $sp, $sp, 4
sw $t8, ($sp)
subu $sp, $sp, 4
sw $t9, ($sp)
subu $sp, $sp, 4
sw $fp, ($sp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw , ($sp)
subu $sp, $sp, 4
sw , ($sp)
lw $t4, ($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -4($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -8($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -12($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -16($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -20($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -24($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -28($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -32($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -36($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -40($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -44($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -48($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -52($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -56($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -60($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -64($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -68($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -72($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -76($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -80($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -84($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -88($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -92($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -96($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -100($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -104($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -108($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -112($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -116($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -120($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -124($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -128($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -132($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -136($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -140($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -144($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -148($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -152($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -156($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -160($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -164($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -168($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -172($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -176($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -180($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -184($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -188($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -192($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -196($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -200($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -204($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -208($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -212($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -216($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -220($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -224($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -228($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -232($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -236($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -240($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -244($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -248($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -252($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -256($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -260($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -264($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -268($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -272($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -276($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, ($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -4($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -8($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -12($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -16($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -20($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -24($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -28($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -32($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -36($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -40($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -44($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -48($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -52($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -56($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -60($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -64($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -68($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -72($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -76($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -80($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -84($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -88($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -92($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -96($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -100($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -104($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -108($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -112($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -116($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -120($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -124($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -128($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -132($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -136($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -140($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -144($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -148($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -152($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -156($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -160($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -164($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -168($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -172($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -176($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -180($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -184($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -188($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -192($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -196($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -200($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -204($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -208($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -212($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -216($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -220($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -224($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -228($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -232($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -236($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -240($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -244($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -248($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -252($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -256($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -260($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -264($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -268($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -272($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -276($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, ($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -4($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -8($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -12($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -16($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -20($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -24($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -28($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -32($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -36($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -40($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -44($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -48($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -52($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -56($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -60($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -64($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -68($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -72($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -76($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -80($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -84($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -88($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -92($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -96($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -100($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -104($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -108($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -112($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -116($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -120($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -124($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -128($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -132($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -136($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -140($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -144($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -148($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -152($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -156($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -160($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -164($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -168($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -172($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -176($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -180($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -184($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -188($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -192($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -196($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -200($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -204($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -208($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -212($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -216($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -220($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -224($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -228($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -232($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -236($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -240($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -244($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -248($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -252($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -256($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -260($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -264($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -268($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -272($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
lw $t4, -276($fp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal _updateElementAtIndex42_
label_2304:
addu $sp, $sp, 280
addu $sp, $sp, 280
addu $sp, $sp, 280
lw , ($sp)
addu $sp, $sp, 4
lw , ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $fp, ($sp)
addu $sp, $sp, 4
lw $t9, ($sp)
addu $sp, $sp, 4
lw $t8, ($sp)
addu $sp, $sp, 4
lw $s7, ($sp)
addu $sp, $sp, 4
lw $s6, ($sp)
addu $sp, $sp, 4
lw $s5, ($sp)
addu $sp, $sp, 4
lw $s4, ($sp)
addu $sp, $sp, 4
lw $s3, ($sp)
addu $sp, $sp, 4
lw $s2, ($sp)
addu $sp, $sp, 4
lw $s1, ($sp)
addu $sp, $sp, 4
lw $s0, ($sp)
addu $sp, $sp, 4
lw $t7, ($sp)
addu $sp, $sp, 4
lw $t6, ($sp)
addu $sp, $sp, 4
lw $t5, ($sp)
addu $sp, $sp, 4
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
label_2352:
li $t4, 42
bge $t4, 70, labelOutOfRange
blt $t4, 0, labelOutOfRange
li $t5, 2
addu $t5, $t5, $t4
mul $t5, $t5, 4
subu $t5, $fp, $t5
lw $t5, ($t5)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
sw $t5, ($sp)
subu $sp, $sp, 4
sw $t6, ($sp)
subu $sp, $sp, 4
sw $t7, ($sp)
subu $sp, $sp, 4
sw $s0, ($sp)
subu $sp, $sp, 4
sw $s1, ($sp)
subu $sp, $sp, 4
sw $s2, ($sp)
subu $sp, $sp, 4
sw $s3, ($sp)
subu $sp, $sp, 4
sw $s4, ($sp)
subu $sp, $sp, 4
sw $s5, ($sp)
subu $sp, $sp, 4
sw $s6, ($sp)
subu $sp, $sp, 4
sw $s7, ($sp)
subu $sp, $sp, 4
sw $t8, ($sp)
subu $sp, $sp, 4
sw $t9, ($sp)
subu $sp, $sp, 4
sw $fp, ($sp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $t5, ($sp)
jal _printIntResult_
label_2404:
lw $t5, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $fp, ($sp)
addu $sp, $sp, 4
lw $t9, ($sp)
addu $sp, $sp, 4
lw $t8, ($sp)
addu $sp, $sp, 4
lw $s7, ($sp)
addu $sp, $sp, 4
lw $s6, ($sp)
addu $sp, $sp, 4
lw $s5, ($sp)
addu $sp, $sp, 4
lw $s4, ($sp)
addu $sp, $sp, 4
lw $s3, ($sp)
addu $sp, $sp, 4
lw $s2, ($sp)
addu $sp, $sp, 4
lw $s1, ($sp)
addu $sp, $sp, 4
lw $s0, ($sp)
addu $sp, $sp, 4
lw $t7, ($sp)
addu $sp, $sp, 4
lw $t6, ($sp)
addu $sp, $sp, 4
lw $t5, ($sp)
addu $sp, $sp, 4
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
label_2447:
li $t5, 42
bge $t5, 70, labelOutOfRange
blt $t5, 0, labelOutOfRange
li $t4, 72
addu $t4, $t4, $t5
mul $t4, $t4, 4
subu $t4, $fp, $t4
lw $t4, ($t4)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
sw $t5, ($sp)
subu $sp, $sp, 4
sw $t6, ($sp)
subu $sp, $sp, 4
sw $t7, ($sp)
subu $sp, $sp, 4
sw $s0, ($sp)
subu $sp, $sp, 4
sw $s1, ($sp)
subu $sp, $sp, 4
sw $s2, ($sp)
subu $sp, $sp, 4
sw $s3, ($sp)
subu $sp, $sp, 4
sw $s4, ($sp)
subu $sp, $sp, 4
sw $s5, ($sp)
subu $sp, $sp, 4
sw $s6, ($sp)
subu $sp, $sp, 4
sw $s7, ($sp)
subu $sp, $sp, 4
sw $t8, ($sp)
subu $sp, $sp, 4
sw $t9, ($sp)
subu $sp, $sp, 4
sw $fp, ($sp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal _printIntResult_
label_2499:
lw $t4, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $fp, ($sp)
addu $sp, $sp, 4
lw $t9, ($sp)
addu $sp, $sp, 4
lw $t8, ($sp)
addu $sp, $sp, 4
lw $s7, ($sp)
addu $sp, $sp, 4
lw $s6, ($sp)
addu $sp, $sp, 4
lw $s5, ($sp)
addu $sp, $sp, 4
lw $s4, ($sp)
addu $sp, $sp, 4
lw $s3, ($sp)
addu $sp, $sp, 4
lw $s2, ($sp)
addu $sp, $sp, 4
lw $s1, ($sp)
addu $sp, $sp, 4
lw $s0, ($sp)
addu $sp, $sp, 4
lw $t7, ($sp)
addu $sp, $sp, 4
lw $t6, ($sp)
addu $sp, $sp, 4
lw $t5, ($sp)
addu $sp, $sp, 4
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
label_2542:
li $t4, 42
bge $t4, 70, labelOutOfRange
blt $t4, 0, labelOutOfRange
li $t5, 142
addu $t5, $t5, $t4
mul $t5, $t5, 4
subu $t5, $fp, $t5
lw $t5, ($t5)
bne $t5, 0, label_2553
j label_2556
label_2553:
li $t4, 1
j label_2558
label_2556:
li $t4, 0
label_2558:
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
sw $t5, ($sp)
subu $sp, $sp, 4
sw $t6, ($sp)
subu $sp, $sp, 4
sw $t7, ($sp)
subu $sp, $sp, 4
sw $s0, ($sp)
subu $sp, $sp, 4
sw $s1, ($sp)
subu $sp, $sp, 4
sw $s2, ($sp)
subu $sp, $sp, 4
sw $s3, ($sp)
subu $sp, $sp, 4
sw $s4, ($sp)
subu $sp, $sp, 4
sw $s5, ($sp)
subu $sp, $sp, 4
sw $s6, ($sp)
subu $sp, $sp, 4
sw $s7, ($sp)
subu $sp, $sp, 4
sw $t8, ($sp)
subu $sp, $sp, 4
sw $t9, ($sp)
subu $sp, $sp, 4
sw $fp, ($sp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal _printBoolResult_
label_2602:
lw $t4, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $fp, ($sp)
addu $sp, $sp, 4
lw $t9, ($sp)
addu $sp, $sp, 4
lw $t8, ($sp)
addu $sp, $sp, 4
lw $s7, ($sp)
addu $sp, $sp, 4
lw $s6, ($sp)
addu $sp, $sp, 4
lw $s5, ($sp)
addu $sp, $sp, 4
lw $s4, ($sp)
addu $sp, $sp, 4
lw $s3, ($sp)
addu $sp, $sp, 4
lw $s2, ($sp)
addu $sp, $sp, 4
lw $s1, ($sp)
addu $sp, $sp, 4
lw $s0, ($sp)
addu $sp, $sp, 4
lw $t7, ($sp)
addu $sp, $sp, 4
lw $t6, ($sp)
addu $sp, $sp, 4
lw $t5, ($sp)
addu $sp, $sp, 4
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
addu $sp, $sp, 848
jr $ra
.end _main_


.globl _print_
.ent  _print_
_print_:

move $fp, $sp
subu $fp, $fp, 4
lw $a0,0($sp)
li $v0,4
syscall
jr $ra
.end _print_


.globl _printi_
.ent  _printi_
_printi_:

move $fp, $sp
subu $fp, $fp, 4
lw $a0,0($sp)
li $v0,1
syscall
jr $ra
.end _printi_

labelZeroDiv:
la $t4, ZeroDiv_errMsg
subu $sp, $sp, 4
sw $t4, ($sp)
jal _print_
li $v0,10
syscall

labelOutOfRange:
la $t4, outOfBounds_errMsg
subu $sp, $sp, 4
sw $t4, ($sp)
jal _print_
li $v0,10
syscall
