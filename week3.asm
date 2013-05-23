.data
numOne: .word 17

.globl main
.text
main:

la $s3, numOne
sw $s1, 0($s3) 


li $v0, 10
syscall
.end main
