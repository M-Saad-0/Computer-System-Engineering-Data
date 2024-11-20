.text
.main:
	li $v0 4
	la $a0 msg
	syscall
	
	li $v0 5
	syscall
	move $t0 $v0
	
	li $t1 10
	
	div $t0 $t1
	mfhi $t1
	
	li $v0 1
	move $a0 $t1
	syscall
	
	li $v0 10
	syscall
	
.data
	msg: .asciiz "Enter a number: "
	
	
