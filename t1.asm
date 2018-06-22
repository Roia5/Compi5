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
li $t3, 4
li $t4, 0
bge $t3, 5, labelOutOfRange
blt $t3, 0, labelOutOfRange
la , 2
addu , , $t3
addu , , $t3
addu , , $t3
addu , , $t3
lw , $t4
li $t5, 4
bge $t5, 5, labelOutOfRange
blt $t5, 0, labelOutOfRange
la $t6, 2
addu $t6, $t6, $t5
addu $t6, $t6, $t5
addu $t6, $t6, $t5
addu $t6, $t6, $t5
lw , $t6
lw $t6, -4($fp)
lw $t7, 0($fp)
beq $t7, 0, labelZeroDiv
div $t6, $t6, $t7
subu $sp, $sp, 4
sw $t6, ($sp)
li $s0, 2
subu $sp, $sp, 4
sw $s0, ($sp)
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
