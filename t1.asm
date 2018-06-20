.data
errorOutOfBounds: .ascii "Error index out of bounds
"
errorZeroDiv: .ascii "Error division by zero
"

.text
li $t0, 0
subu $sp, $sp, 4
sw $t0, ($sp)
li $t1, 5
subu $sp, $sp, 4
sw $t1, ($sp)
lw $t2, 0($fp)
li $t3, 2
addu $t2, $t2, $t3
subu $sp, $sp, 4
sw $t2, ($sp)
lw $t4, -8($fp)
li $t5, 0
beq $t5, 0, labelZeroDiv
div $t4, $t4, $t5
subu $sp, $sp, 4
sw $t4, ($sp)
print:
lw $a0,0($sp)
li $v0,4
syscall
jr $ra
labelZeroDiv:
la $t6, errorZeroDiv
subu $sp, $sp, 4
sw $t6, ($sp)
jal print
li $v0,10
syscall
labelOutOfRange:
la $t6, errorOutOfBounds
subu $sp, $sp, 4
sw $t6, ($sp)
jal print
li $v0,10
syscall
