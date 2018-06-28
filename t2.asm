no available register
no available register
no available register
no available register
no available register
no available register
no available register
regNameToIndex error - wanted name is 
no available register
regNameToIndex error - wanted name is 
.data
outOfBounds_errMsg: .asciiz "Error index out of bounds
"
ZeroDiv_errMsg: .asciiz "Error division by zero
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
li $t0, 0
subu $sp, $sp, 28
sw $t0, ($sp)
sw $t0, 4($sp)
sw $t0, 8($sp)
sw $t0, 12($sp)
sw $t0, 16($sp)
sw $t0, 20($sp)
sw $t0, 24($sp)
label_28:
li $t0, 0
subu $sp, $sp, 28
sw $t0, ($sp)
sw $t0, 4($sp)
sw $t0, 8($sp)
sw $t0, 12($sp)
sw $t0, 16($sp)
sw $t0, 20($sp)
sw $t0, 24($sp)
label_38:
li $t0, 3
li $t1, 5
bge $t0, 7, labelOutOfRange
blt $t0, 0, labelOutOfRange
li $t2, 7
addu $t2, $t2, $t0
mul $t2, $t2, 4
subu $t2, $fp, $t2
sw $t1, ($t2)
label_48:
lw $t0, -28($fp)
li $t0, 7
mul $t0, $t0, 4
subu $t0, $fp, $t0
li $t1, 0
mul $t1, $t1, 4
subu $t1, $fp, $t1
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
label_84:
lw $t2, -28($fp)
li $t2, 7
mul $t2, $t2, 4
subu $t2, $fp, $t2
li $t1, 0
mul $t1, $t1, 4
subu $t1, $fp, $t1
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
label_120:
lw $t1, -28($fp)
li $t0, 7
mul $t0, $t0, 4
subu $t0, $fp, $t0
li $t1, 0
mul $t1, $t1, 4
subu $t1, $fp, $t1
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
label_156:
lw $t3, -28($fp)
li $t2, 7
mul $t2, $t2, 4
subu $t2, $fp, $t2
li $t1, 0
mul $t1, $t1, 4
subu $t1, $fp, $t1
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
label_192:
lw $t4, -28($fp)
li $t0, 7
mul $t0, $t0, 4
subu $t0, $fp, $t0
li $t1, 0
mul $t1, $t1, 4
subu $t1, $fp, $t1
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
label_228:
lw $t5, -28($fp)
li $t2, 7
mul $t2, $t2, 4
subu $t2, $fp, $t2
li $t1, 0
mul $t1, $t1, 4
subu $t1, $fp, $t1
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
label_264:
lw $t6, -28($fp)
li $t0, 7
mul $t0, $t0, 4
subu $t0, $fp, $t0
li $t1, 0
mul $t1, $t1, 4
subu $t1, $fp, $t1
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
label_300:
lw $t7, -28($fp)
li $t2, 7
mul $t2, $t2, 4
subu $t2, $fp, $t2
li $t1, 0
mul $t1, $t1, 4
subu $t1, $fp, $t1
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
label_336:
lw $s0, -28($fp)
li $t0, 7
mul $t0, $t0, 4
subu $t0, $fp, $t0
li $t1, 0
mul $t1, $t1, 4
subu $t1, $fp, $t1
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
label_372:
lw $s1, -28($fp)
li $t2, 7
mul $t2, $t2, 4
subu $t2, $fp, $t2
li $t1, 0
mul $t1, $t1, 4
subu $t1, $fp, $t1
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
label_408:
lw $s2, -28($fp)
li $t0, 7
mul $t0, $t0, 4
subu $t0, $fp, $t0
li $t1, 0
mul $t1, $t1, 4
subu $t1, $fp, $t1
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
label_444:
lw $s3, -28($fp)
li $t2, 7
mul $t2, $t2, 4
subu $t2, $fp, $t2
li $t1, 0
mul $t1, $t1, 4
subu $t1, $fp, $t1
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
label_480:
lw $s4, -28($fp)
li $t0, 7
mul $t0, $t0, 4
subu $t0, $fp, $t0
li $t1, 0
mul $t1, $t1, 4
subu $t1, $fp, $t1
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
label_516:
lw $s5, -28($fp)
li $t2, 7
mul $t2, $t2, 4
subu $t2, $fp, $t2
li $t1, 0
mul $t1, $t1, 4
subu $t1, $fp, $t1
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
label_552:
lw $s6, -28($fp)
li $t0, 7
mul $t0, $t0, 4
subu $t0, $fp, $t0
li $t1, 0
mul $t1, $t1, 4
subu $t1, $fp, $t1
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
label_588:
lw $s7, -28($fp)
li $t2, 7
mul $t2, $t2, 4
subu $t2, $fp, $t2
li $t1, 0
mul $t1, $t1, 4
subu $t1, $fp, $t1
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
label_624:
lw $t8, -28($fp)
li $t0, 7
mul $t0, $t0, 4
subu $t0, $fp, $t0
li $t1, 0
mul $t1, $t1, 4
subu $t1, $fp, $t1
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
label_660:
lw $t9, -28($fp)
li $t2, 7
mul $t2, $t2, 4
subu $t2, $fp, $t2
li $t1, 0
mul $t1, $t1, 4
subu $t1, $fp, $t1
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
label_696:
lw , -28($fp)
li $t0, 7
mul $t0, $t0, 4
subu $t0, $fp, $t0
li $t1, 0
mul $t1, $t1, 4
subu $t1, $fp, $t1
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
label_732:
lw , -28($fp)
li $t2, 7
mul $t2, $t2, 4
subu $t2, $fp, $t2
li $t1, 0
mul $t1, $t1, 4
subu $t1, $fp, $t1
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
label_768:
lw , -28($fp)
li $t0, 7
mul $t0, $t0, 4
subu $t0, $fp, $t0
li $t1, 0
mul $t1, $t1, 4
subu $t1, $fp, $t1
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
label_804:
lw , -28($fp)
li $t2, 7
mul $t2, $t2, 4
subu $t2, $fp, $t2
li $t1, 0
mul $t1, $t1, 4
subu $t1, $fp, $t1
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
label_840:
lw , -28($fp)
li $t0, 7
mul $t0, $t0, 4
subu $t0, $fp, $t0
li $t1, 0
mul $t1, $t1, 4
subu $t1, $fp, $t1
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
lw $t2, ($t0)
sw $t2, ($t1)
subu $t0, $t0, 4
subu $t1, $t1, 4
label_876:
lw , -28($fp)
li $t2, 7
mul $t2, $t2, 4
subu $t2, $fp, $t2
li $t1, 0
mul $t1, $t1, 4
subu $t1, $fp, $t1
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
lw $t0, ($t2)
sw $t0, ($t1)
subu $t2, $t2, 4
subu $t1, $t1, 4
label_912:
addu $sp, $sp, 56
jr $ra
addu $sp, $sp, 56
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
la , ZeroDiv_errMsg
subu $sp, $sp, 4
sw , ($sp)
jal _print_
li $v0,10
syscall

labelOutOfRange:
la , outOfBounds_errMsg
subu $sp, $sp, 4
sw , ($sp)
jal _print_
li $v0,10
syscall
