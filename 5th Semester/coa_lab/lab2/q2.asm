main:

	li $v0 4
	la $a0 msg
	syscall
	
	li $v0 5
	syscall
	move $t0 $v0
	
	bgt $t0, $zero, positive
	blt $t0, $zero, negative
	beq $t0, $zero, equal
	
	
	
positive:

	li $v0 4
	la $a0 pos
	syscall
	li $v0 10
	syscall

negative:

	li $v0 4
	la $a0 nega
	syscall
	li $v0 10
	syscall
				
equal:

	li $v0 4
	la $a0 eq
	syscall
	li $v0 10
	syscall
.data
	msg: .asciiz "Enter a number: "
	pos: .asciiz "The number is positive. "
	nega: .asciiz "The number is negative. "
	eq: .asciiz "The number is equal to 0. "