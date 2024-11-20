.text
.main
	la $t1, number		#Loading the label 'number' in $t1
	jr $t1			#Then jumping to it
number:
	
	li $v0 4
	la $a0 input1		#Asking for the first integer 
	syscall
	
	li $v0 5
	syscall		
	move $t0 $v0
	
	li $v0 4
	la $a0 input2		#Asking for the second integer
	syscall
	
	li $v0 5
	syscall
	move $t1 $v0
	
	add $t4, $t1, $t0	#Adding them and then printing the result
	
	li $v0 4
	la $a0 output
	syscall
	
	li $v0 1
	move $a0 $t4		#And then exiting
	syscall

.data
	input1: .asciiz "Enter First Number: "
	input2: .asciiz "Enter Second Number: "
	output: .asciiz "Your Output Is: "