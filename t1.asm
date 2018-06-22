.data
errorOutOfBounds: .ascii "Error index out of bounds
"
errorZeroDiv: .ascii "Error division by zero
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
<<<<<<< HEAD
li $t0, 4
li $t1, 5
blt $t0, $t1, label_22
goto label_109
label_22:
li $t2, 10
=======
li $t0, 10
>>>>>>> 5704539ef250a751d7f3375fa7febfe206e2032b
subu $sp, $sp, 4
sw $t0, ($sp)
li $t1, 4
subu $sp, $sp, 4
sw $t1, ($sp)
<<<<<<< HEAD
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
jal _printi_
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
label_109:
li $t3, 4
subu $sp, $sp, 4
sw $t3, ($sp)
=======
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
>>>>>>> 5704539ef250a751d7f3375fa7febfe206e2032b
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
<<<<<<< HEAD
la $t4, errorZeroDiv
subu $sp, $sp, 4
sw $t4, ($sp)
=======
la $s1, errorZeroDiv
subu $sp, $sp, 4
sw $s1, ($sp)
>>>>>>> 5704539ef250a751d7f3375fa7febfe206e2032b
jal _print_
li $v0,10
syscall

labelOutOfRange:
<<<<<<< HEAD
la $t4, errorOutOfBounds
subu $sp, $sp, 4
sw $t4, ($sp)
=======
la $s1, errorOutOfBounds
subu $sp, $sp, 4
sw $s1, ($sp)
>>>>>>> 5704539ef250a751d7f3375fa7febfe206e2032b
jal _print_
li $v0,10
syscall
