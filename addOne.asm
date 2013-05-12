.data
numOne: .word 10
numTwo: .word 25
storeIt: .word 0

.globl main
.text
main:

lw $t0, numOne
lw $t1, numTwo

#multiply arriving at product 250
mul $t3, $t0, $t1
#add product times 10 arriving at 260
add $t4, $t0, $t3
#store data from $t4 = 260 
sw $t4, storeIt

li $v0, 10
syscall
.end main
