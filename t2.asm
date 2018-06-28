.data
outOfBounds_errMsg: .asciiz "Error index out of bounds
"
ZeroDiv_errMsg: .asciiz "Error division by zero
"

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


.globl _foo_
.ent  _foo_
_foo_:

move $fp, $sp
subu $fp, $fp, 4
lw $t0, 4($fp)
lw $t1, 4($fp)
addu $t0, $t0, $t1
lw $t1, 4($fp)
lw $t2, 8($fp)
beq $t2, 0, labelZeroDiv
div $t1, $t1, $t2
addu $t0, $t0, $t1
lw $t1, 8($fp)
subu $t0, $t0, $t1
lw $t1, 8($fp)
subu $t0, $t0, $t1
move $v0, $t0
jr $ra
jr $ra
.end _foo_


.globl _main_
.ent  _main_
_main_:

move $fp, $sp
subu $fp, $fp, 4
li $t0, 0
sw $t0, 0($fp)
subu $sp, $sp, 4
label_46:
li $t0, 2
li $t1, 3
li $t2, 4
beq $t2, 0, labelZeroDiv
div $t1, $t1, $t2
addu $t0, $t0, $t1
li $t1, 2
lw $t2, 0($fp)
addu $t1, $t1, $t2
li $t2, 3
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
sw $t1, ($sp)
jal _foo_
label_102:
lw $t1, ($sp)
addu $sp, $sp, 4
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
move $t2, $v0
addu $t0, $t0, $t2
li $t2, 8
ble $t0, $t2, label_152
j label_155
label_152:
li $t2, 1
j label_157
label_155:
li $t2, 0
label_157:
sw $t2, -4($fp)
subu $sp, $sp, 4
label_160:
label_161:
j label_163
label_163:
lw $t2, 0($fp)
li $t0, 1
addu $t2, $t2, $t0
sw $t2, 0($fp)
label_168:
li $t2, 255
sw $t2, -8($fp)
subu $sp, $sp, 4
addu $sp, $sp, 4
j label_161
label_174:
addu $sp, $sp, 4
label_176:
addu $sp, $sp, 8
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
la $t2, ZeroDiv_errMsg
subu $sp, $sp, 4
sw $t2, ($sp)
jal _print_
li $v0,10
syscall

labelOutOfRange:
la $t2, outOfBounds_errMsg
subu $sp, $sp, 4
sw $t2, ($sp)
jal _print_
li $v0,10
syscall
