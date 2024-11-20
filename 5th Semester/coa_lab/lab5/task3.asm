.data
	lowerLimit: .asciiz "Enter the lower number: "
	upperLimit: .asciiz "Enter the upper number: "
	message2: .asciiz " is a prime number\n"
	message3: .asciiz " is not a prime number\n"
.text
	li $v0 4
	la $a0 lowerLimit	
	syscall
	
	li $v0 5
	syscall		#Taking the lower limit from the user
	move $t0 $v0
		
	li $v0 4
	la $a0 upperLimit
	syscall
	
	li $v0 5
	syscall		#Taking the upper limit from the user
	move $t1 $v0
	
	li $t4 1
	move $t3 $t0	#Making a copy of lowerLimit
	ble $t0, $t4, isNotPrimeNumber	#If lower is 1 or less than it is not prime

checkPrime:
	addi $t4, $t4, 1		#Incrementing the loop
	bge $t4, $t3, isPrimeNumber	#Checking if we have reached the number
	div $t3, $t4			#Checking the remainder here
	mfhi $t5
	beq $t5, $zero, isNotPrimeNumber
	j checkPrime			#Restarting the loop if the remainder is not zero

isPrimeNumber:
	li $v0 1
	move $a0 $t3			#If a number is prime then print it
	syscall
	
	li $v0 4
	la $a0 message2
	syscall
	
	j iterate
	
isNotPrimeNumber:
	j iterate			#If it is not prime then keep going
	
iterate:
	addi $t3, $t3, 1
	li $t4 1
	ble $t3, $t1, checkPrime	#This loop is to increment from lower to upper limit
	j exit

exit:
	li $v0 10			#Exiting the program
	syscall
