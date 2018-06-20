.data
errorOutOfBounds: .asciiz "Error index out of bounds
"
errorZeroDiv: .asciiz "Error division by zero
"

.text
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
li $v0,10
syscall
.end main
