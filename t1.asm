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


.globl _main_
.ent  _main_
_main_:

move $fp, $sp
subu $fp, $fp, 4
li $t0, 2
subu $sp, $sp, 4
sw $t0, ($sp)
label_22:
li $t0, 1
subu $sp, $sp, 4
sw $t0, ($sp)
label_26:
li $t0, 4
subu $sp, $sp, 4
sw $t0, ($sp)
label_30:
li $t0, 0
subu $sp, $sp, 40
sw $t0, ($sp)
sw $t0, 4($sp)
sw $t0, 8($sp)
sw $t0, 12($sp)
sw $t0, 16($sp)
sw $t0, 20($sp)
sw $t0, 24($sp)
sw $t0, 28($sp)
sw $t0, 32($sp)
sw $t0, 36($sp)
label_43:
li $t0, 1
bge $t0, 10, labelOutOfRange
blt $t0, 0, labelOutOfRange
li $t1, 3
addu $t1, $t1, $t0
mul $t1, $t1, 4
subu $t1, $fp, $t1
lw $t1, ($t1)
sw $t1, -8($fp)
label_53:
li $t1, 4
lw $t2, -8($fp)
beq $t2, 0, labelZeroDiv
div $t1, $t1, $t2
subu $sp, $sp, 4
sw $t1, ($sp)
label_60:
li $t1, 34
bge $t1, 10, labelOutOfRange
blt $t1, 0, labelOutOfRange
li $t2, 3
addu $t2, $t2, $t1
mul $t2, $t2, 4
subu $t2, $fp, $t2
lw $t2, ($t2)
subu $sp, $sp, 4
sw $t2, ($sp)
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
la $t2, errorZeroDiv
subu $sp, $sp, 4
sw $t2, ($sp)
jal _print_
li $v0,10
syscall

labelOutOfRange:
la $t2, errorOutOfBounds
subu $sp, $sp, 4
sw $t2, ($sp)
jal _print_
li $v0,10
syscall
