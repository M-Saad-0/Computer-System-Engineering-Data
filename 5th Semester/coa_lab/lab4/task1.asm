.text
	
.main:
	la $t0 numberData		#Here we are loading address of data from ram to register
	
	lw $t1 ($t0)			#Here we are taking data from that address
	
	la $v0 1			
	move $a0 $t1			#Printing it
	syscall
	
	la $v0 4
	la $a0 print
	syscall
	
	addi $t1, $t1, 10		#Adding 10 to it
	
	la $v0 1
	move $a0 $t1
	syscall
	
	sw $t1 ($t0)			#And then saving it to RAM and closing the program
	
	li $v0 10
	syscall
	
	
.data
	numberData: .word 67
	print: .asciiz " was loaded from the memory and you stored: "
