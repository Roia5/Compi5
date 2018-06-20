.data
errorOutOfBounds: .ascii "Error index out of bounds
"
errorZeroDiv: .ascii "Error division by zero
"

.text
li $t0, 5
li $t1, 5
addu $t0, $t0, $t1
subu $sp, $sp, 4
sw $t0, ($sp)
print:
lw $a0,0($sp)
li $v0,4
syscall
jr $ra
labelZeroDiv:
la $t2, errorZeroDiv
subu $sp, $sp, 4
sw $t2, ($sp)
jal print
li $v0,10
syscall
labelOutOfRange:
la $t2, errorOutOfBounds
subu $sp, $sp, 4
sw $t2, ($sp)
jal print
li $v0,10
syscall
