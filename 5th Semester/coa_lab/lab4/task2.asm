.data
	wd: .word 45
	p: .asciiz " was initial and the output is: "
.text
.main:
	la $t0 wd
	lw $t1 ($t0)	#Here we load data from ram
	
	li $v0 1
	move $a0 $t1
	syscall
	
	sll $t1, $t1, 1	#Here we double it
	
	li $v0 4
	la $a0 p		#Just to print a string
	syscall 
	
	sw $t1 ($t0)		#And saving it
	
	lw $t2 ($t0)		#Here we load it again from that address to check
	
	li $v0 1
	move $a0 $t2		#And then printing it and exiting
	syscall
	
	li $v0 10
	syscall
