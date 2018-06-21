.data
errorOutOfBounds: .asciiz "Error index out of bounds
"
errorZeroDiv: .asciiz "Error division by zero
"

.text
<<<<<<< HEAD

.globl main
.ent  main
main:

move $fp, $sp
jal _main_
li $v0,10
syscall
.end main


.globl _f_
.ent  _f_
_f_:

move $fp, $sp
subu $fp, $fp, 4
li $t0, 5
move $v0, $t0
jr $ra
.end _f_


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
jal _f_
subu $sp, $sp, 4
sw $v0, ($sp)
lw $t1, 0($fp)
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
jal _printi_
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
=======
.globl labelZeroDiv
.ent  labelZeroDiv
labelZeroDiv:
la $t0, errorZeroDiv
subu $sp, $sp, 4
sw $t0, ($sp)
jal print
li $v0,10
syscall
jr $ra
.end labelZeroDiv
.globl labelOutOfRange
.ent  labelOutOfRange
labelOutOfRange:
la $t0, errorOutOfBounds
subu $sp, $sp, 4
sw $t0, ($sp)
jal print
li $v0,10
syscall
jr $ra
.end labelOutOfRange
.globl print
.ent  print
print:
lw $a0,0($sp)
li $v0,4
syscall
jr $ra
.end print
.globl main
.ent  main
main:
li $t0, 5
li $t1, 5
addu $t0, $t0, $t1
subu $sp, $sp, 4
sw $t0, ($sp)
li $t2, 4
subu $sp, $sp, 4
sw $t2, ($sp)
li $t3, 0
subu $sp, $sp, 20
sw $t3, ($sp)
sw $t3, 4($sp)
sw $t3, 8($sp)
sw $t3, 12($sp)
sw $t3, 16($sp)
li $t4, 2
li $t5, 2
bge $t4, 5, labelOutOfRange
blt $t4, 0, labelOutOfRange
li $t6, 1
li $t7, 1
bge $t6, 5, labelOutOfRange
blt $t6, 0, labelOutOfRange
li $s0, 0
li $s1, 0
bge $s0, 5, labelOutOfRange
blt $s0, 0, labelOutOfRange
li $s2, 7
li $s3, 4
bge $s2, 5, labelOutOfRange
blt $s2, 0, labelOutOfRange
>>>>>>> 52a4f6f10dca1c5330bf5f29e691768fc85b179f
li $v0,10
syscall
.end main
