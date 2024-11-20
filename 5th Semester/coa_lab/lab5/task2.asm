.data
	message: .asciiz "Enter a number: "
	message1: .asciiz " is the second biggest prime number\n"
	message2: .asciiz " is the first biggest prime number\n"
	
.text
	li $v0 4
	la $a0 message
	syscall
	
	li $v0 5
	syscall		#Taking a number from user and moving to $t1
	move $t1 $v0
		
	
	li $t3 1	#$t3 starts from 1 and goes to $t1 register 
			#and check if each number is prime or not
	li $t4 1	#$t4 is what runs a loop and break when reaches $t3

checkPrime:
	addi $t4, $t4, 1		#incrementing loop variable
	bge $t4, $t3, isPrimeNumber	#if loop variable reaches $t3 (n) it will break
	div $t3, $t4			
	mfhi $t7
	beq $t7, $zero, isNotPrimeNumber   #Checking if remainder is zer0 or not and if it then breaks
	j checkPrime

isPrimeNumber:
	move $t5 $t6
	move $t6 $t3	#Here we store the last two prime number closer to input 
	j iterate
	
isNotPrimeNumber:
	j iterate	#If number is not prime program will come here and jump to iterate
	
iterate:	#This is like the outer loop of nested loops
	addi $t3, $t3, 1		#This increment numbers
	li $t4 1			#Starts the loop varible from 1
	blt $t3, $t1, checkPrime  	#And checks if the number has reached the input
	
	j printAndExit			#If it it has then print result and exits

printAndExit:
	li $v0 1
	move $a0 $t5			#Here we just print the last 2 prime number closer to the input
	syscall
	li $v0 4
	la $a0 message1
	syscall
	li $v0 1
	move $a0 $t6
	syscall
	li $v0 4
	la $a0 message2
	syscall
	li $v0 10
	syscall
