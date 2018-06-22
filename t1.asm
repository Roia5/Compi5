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
li $v0,10
syscall
.end main


.globl _main_
.ent  _main_
_main_:

move $fp, $sp
subu $fp, $fp, 4
li $t0, 10
subu $sp, $sp, 4
sw $t0, ($sp)
li $t1, 4
subu $sp, $sp, 4
sw $t1, ($sp)
li $t2, 0
subu $sp, $sp, 20
sw $t2, ($sp)
sw $t2, 4($sp)
sw $t2, 8($sp)
sw $t2, 12($sp)
sw $t2, 16($sp)
li $t2, 2
bge $t2, 5, labelOutOfRange
blt $t2, 0, labelOutOfRange
la $t3, 2($sp)
subu $t3, $t3, $t2
subu $t3, $t3, $t2
subu $t3, $t3, $t2
subu $t3, $t3, $t2
subu $sp, $sp, 4
sw $t3, ($sp)
lw $t4, -4($fp)
lw $t5, -28($fp)
beq $t5, 0, labelZeroDiv
div $t4, $t4, $t5
li $t6, 3
li $t7, 7
bge $t7, 5, labelOutOfRange
blt $t7, 0, labelOutOfRange
la $s0, 2($sp)
subu $s0, $s0, $t7
subu $s0, $s0, $t7
subu $s0, $s0, $t7
subu $s0, $s0, $t7
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
la $s1, errorZeroDiv
subu $sp, $sp, 4
sw $s1, ($sp)
jal _print_
li $v0,10
syscall

labelOutOfRange:
la $s1, errorOutOfBounds
subu $sp, $sp, 4
sw $s1, ($sp)
jal _print_
li $v0,10
syscall
