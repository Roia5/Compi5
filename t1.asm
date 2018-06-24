.data
errorOutOfBounds: .asciiz "Error index out of bounds
"
errorZeroDiv: .asciiz "Error division by zero
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


.globl _fun_
.ent  _fun_
_fun_:

move $fp, $sp
subu $fp, $fp, 4
li $t0, 0
subu $fp, $fp, 8
sw $t0, ($fp)
sw $t0, 4($fp)
label_23:
li $t0, 1
li $t1, 2
bge $t0, 2, labelOutOfRange
blt $t0, 0, labelOutOfRange
li $t2, 0
addu $t2, $t2, $t0
mul $t2, $t2, 4
subu $t2, $fp, $t2
sw $t1, ($t2)
label_33:
li $t2, 1
bge $t2, 2, labelOutOfRange
blt $t2, 0, labelOutOfRange
li $t3, 0
addu $t3, $t3, $t2
mul $t3, $t3, 4
subu $t3, $fp, $t3
lw $t3, ($t3)
move $v0, $t3
jr $ra
jr $ra
.end _fun_


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
jal _fun_
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
move $t3, $v0
sw $t3, 0($fp)
label_137:
lw $t3, 0($fp)
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
sw $t3, ($sp)
jal _printi_
lw $t3, ($sp)
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
la $t4, errorZeroDiv
subu $sp, $sp, 4
sw $t4, ($sp)
jal _print_
li $v0,10
syscall

labelOutOfRange:
la $t4, errorOutOfBounds
subu $sp, $sp, 4
sw $t4, ($sp)
jal _print_
li $v0,10
syscall
