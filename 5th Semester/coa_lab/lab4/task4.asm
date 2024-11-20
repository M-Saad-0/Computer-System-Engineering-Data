.text

.main:
	li $v0 4
	la $a0 ask	
	syscall
			#asking user ot input the limit for the series
	li $v0 5
	syscall
	move $t1, $v0
	
	move $t8, $t1	#Just making a copy of user's input to be used in loop
	
	li $t2 1	#Register for storing the firstTerm of fibonacci
	li $t3 1	#Register for storing the secondTerm of fibonacci
	li $t4 1	#Register for storing the nextTerm of fibonacci
	
	li $t7 0	#It will be used to increment the output array
	
	la $t5 array	#It is a pointer for input loop
	la $t9 array	#It is a pointer for output loop


loop:					#This loop adds the previous two and store it in array
	beq $t8 $zero printAndExit	#Condition to break the loop
	move $t2, $t3			
	move $t3, $t4			#Shifting the number from one register to another
	add $t4, $t2, $t3		#Then adding them
	addi $t8, $t8, -1		#Decrementing the loop
	sw $t2 ($t5)			#Saving a value each iteration
	addi $t5, $t5, 4		#Chinging the address
	j loop				#Repeating the loop

printAndExit:
	
	blt $t7, $t1, print	#Checks if $t7 register has reached the user's input
	li $v0 10		#And exits if it has
	syscall

print:

	addi $t7, $t7, 1
	
	lw $t6 ($t9)
	
	li $v0 1
	move $a0, $t6		#This function is just to print the output of the array stored
	syscall
				
	li $v0 4
	la $a0 space
	syscall
	addi $t9, $t9, 4	#Going through the array and printing it
	j printAndExit
	
.data
	ask: .asciiz "Enter a limit for fibonchi series: "
	space: .asciiz "  "
	debug: .asciiz "I was here."
	array: .word 0
