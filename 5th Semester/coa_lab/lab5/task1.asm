.text
.main:
	li $v0 4
	la $a0 message		#Asking for an integer
	syscall
	
	li $v0 5
	syscall			#Storing integer in $t0
	move $t0 $v0

	li $t3 2
	div $t0, $t3		#Dividing by 2 to make it efficient
	mflo $t5
	
	li $t1 2		#Starting Loop variable from 2
	
	beq $t0, $t1, isPrimeAndExit	#To check if input is equal to 2
	ble $t0, $t1, isNotPrimeAndExit	#To check if input is less than 2
loop:

	beq $t1, $t5, isPrimeAndExit	#If loop variable reaches half of input then it is prime
	div $t0, $t1
	mfhi $t3
	beq $t3, $zero, isNotPrimeAndExit	#And if the input is divisible loop will break
	addi $t1, $t1, 1
	j loop
	
isPrimeAndExit:
	li $v0 1
	move $a0 $t0
	syscall			#Here we print the results if number is prime
	li $v0 4
	la $a0 message1
	syscall
	
	j exit

isNotPrimeAndExit:
	li $v0 1
	move $a0 $t0
	syscall			#Here we print the results if number is not prime
	li $v0 4
	la $a0 message2
	syscall
	
	j exit	
	
exit:
	li $v0 10
	syscall
	
.data
message: .asciiz "Enter a number: "
message1: .asciiz " is a prime number"
message2: .asciiz " is not a prime number"
