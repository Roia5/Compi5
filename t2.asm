.data
outOfBounds_errMsg: .asciiz "Error index out of bounds
"
ZeroDiv_errMsg: .asciiz "Error division by zero
"
input0:    .asciiz "If you got here without crashing, you passed :)\n"

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


.globl _foo11_
.ent  _foo11_
_foo11_:

move $fp, $sp
subu $fp, $fp, 4
label_19:
j label_21
label_21:
li $t0, 0
subu $sp, $sp, 4
sw $t0, ($sp)
label_25:
j label_29
addu $sp, $sp, 4
j label_19
label_29:
jr $ra
.end _foo11_


.globl _foo12_
.ent  _foo12_
_foo12_:

move $fp, $sp
subu $fp, $fp, 4
label_40:
j label_42
label_42:
li $t0, 0
subu $sp, $sp, 4
sw $t0, ($sp)
label_46:
addu $sp, $sp, 4
jr $ra
addu $sp, $sp, 4
j label_40
label_51:
jr $ra
.end _foo12_


.globl _foo13_
.ent  _foo13_
_foo13_:

move $fp, $sp
subu $fp, $fp, 4
label_62:
j label_64
label_64:
li $t0, 0
subu $sp, $sp, 4
sw $t0, ($sp)
label_68:
li $t0, 0
move $v0, $t0
addu $sp, $sp, 4
jr $ra
addu $sp, $sp, 4
j label_62
label_75:
jr $ra
.end _foo13_


.globl _foo14_
.ent  _foo14_
_foo14_:

move $fp, $sp
subu $fp, $fp, 4
li $t0, 0
subu $sp, $sp, 4
sw $t0, ($sp)
addu $sp, $sp, 4
jr $ra
.end _foo14_


.globl _foo15_
.ent  _foo15_
_foo15_:

move $fp, $sp
subu $fp, $fp, 4
li $t0, 0
subu $sp, $sp, 4
sw $t0, ($sp)
label_103:
li $t0, 0
subu $sp, $sp, 4
sw $t0, ($sp)
addu $sp, $sp, 4
label_108:
li $t0, 5
sw $t0, 0($fp)
addu $sp, $sp, 4
jr $ra
.end _foo15_


.globl _main_
.ent  _main_
_main_:

move $fp, $sp
subu $fp, $fp, 4
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
jal _foo11_
label_163:
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
label_204:
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
la $t0, ZeroDiv_errMsg
subu $sp, $sp, 4
sw $t0, ($sp)
jal _print_
li $v0,10
syscall

labelOutOfRange:
la $t0, outOfBounds_errMsg
subu $sp, $sp, 4
sw $t0, ($sp)
jal _print_
li $v0,10
syscall
