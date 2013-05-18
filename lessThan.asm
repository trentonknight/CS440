.data
numOne: .word 0

.globl main
.text
main:

li $8, 0
li $16, 1
li $17, 3

Loop: 
	slt $8, $16, $17
	bne $8, $0, Next
	add $16, $16, 1
	j Loop
Next:


li $v0, 10
syscall
.end main
