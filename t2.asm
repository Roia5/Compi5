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
label_19:
label_20:
label_21:
label_22:
label_23:
label_24:
label_25:
label_26:
label_27:
label_28:
label_29:
label_30:
label_31:
label_32:
label_33:
label_34:
label_35:
label_36:
label_37:
label_38:
label_39:
label_40:
label_41:
label_42:
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
la $t0, errorZeroDiv
subu $sp, $sp, 4
sw $t0, ($sp)
jal _print_
li $v0,10
syscall

labelOutOfRange:
la $t0, errorOutOfBounds
subu $sp, $sp, 4
sw $t0, ($sp)
jal _print_
li $v0,10
syscall
