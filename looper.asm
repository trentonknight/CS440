.data
n: .word 15
sum: .word 0
.text
.globl main

main:

lw $t0, n #$t0 is now 15
li $t1, 1 #loop index (1... 15)
li $t2, 0 #sum during and after loop completes

sumLoop:

	mul $t3,$t1, $t1  #index^2
	add $t2, $t2, $t3 #sum of loop
	add $t1, $t1, 1   #increment index
	ble $t1, $t0, sumLoop  #check if $t1 is less than or equal to $t0 or 15, $t1 <= t0, if it is continue loop.
	
	sw $t2, sum
.text

li $v0, 10
syscall #all done!
.end main


