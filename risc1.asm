.data
numOne: .word 0

.globl main
.text
main:

lw $s0, numOne

Loop: 
	slti $t0, $s0, 5
	beq $t0, $0, Next
	addi $s0, $s0, 2
	j Loop
Next:


li $v0, 10
syscall
.end main
