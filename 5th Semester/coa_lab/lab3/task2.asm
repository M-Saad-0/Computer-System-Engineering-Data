.text 
.main:
	li $v0 4
	la $a0 input
	syscall

	
	li $v0 5
	syscall
	move $t0 $a0
	
	li $t1 8
	li $t2 1
	and $t3 $t0 $t1
	
	beq $t3 $t2 equal
	bne $t3 $t2 not_equal
	
equal:
	li $v0 4
	la $a0 output
	syscall
	
	li $v0 1
	li $a0 1
	syscall
	
	li $v0 10
	syscall

not_equal:
	li $v0 4
	la $a0 output
	syscall
	
	li $v0 1
	li $a0 0
	syscall
	
	li $v0 10
	syscall	
.data
	input: .asciiz "Enter a number: "
	output: .asciiz "4th bit is: "
