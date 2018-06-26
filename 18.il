.data
outOfBounds_errMsg: .asciiz "Error index out of bounds
"
ZeroDiv_errMsg: .asciiz "Error division by zero
"
input0:    .asciiz "yes x\n"
input1:    .asciiz "no x\n"
input2:    .asciiz "yes y\n"
input3:    .asciiz "no y\n"

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


.globl _bar_
.ent  _bar_
_bar_:

move $fp, $sp
subu $fp, $fp, 4
lw $t0, 4($fp)
bne $t0, 0, label_22
j label_111
label_22:
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
label_67:
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
j label_199
label_111:
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
label_156:
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
label_199:
label_200:
lw $t0, 8($fp)
bne $t0, 0, label_204
j label_293
label_204:
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
label_249:
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
j label_381
label_293:
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
label_338:
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
label_381:
jr $ra
.end _bar_


.globl _main_
.ent  _main_
_main_:

move $fp, $sp
subu $fp, $fp, 4
li $t0, 1
li $t1, 1
beq $t0, $t1, label_396
j label_399
label_396:
li $t2, 1
j label_401
label_399:
li $t2, 0
label_401:
li $t3, 1
li $t4, 1
bne $t3, $t4, label_406
j label_409
label_406:
li $t5, 1
j label_411
label_409:
li $t5, 0
label_411:
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
subu $sp, $sp, 4
sw $t5, ($sp)
jal _bar_
label_457:
lw $t2, ($sp)
addu $sp, $sp, 4
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
la $t5, ZeroDiv_errMsg
subu $sp, $sp, 4
sw $t5, ($sp)
jal _print_
li $v0,10
syscall

labelOutOfRange:
la $t5, outOfBounds_errMsg
subu $sp, $sp, 4
sw $t5, ($sp)
jal _print_
li $v0,10
syscall
