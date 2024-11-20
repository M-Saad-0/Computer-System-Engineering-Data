.text
.main:
	li $v0 4
	la $a0 message1
	syscall
	
	li $v0 5
	syscall
	move $t0 $v0

	li $v0 4
	la $a0 op
	syscall
	
	li $v0 5
	syscall
	move $t1 $v0

	li $v0 4
	la $a0 message2
	syscall
	
	li $v0 5
	syscall
	move $t2 $v0

	li $t6 1
	li $t7 2
	li $t8 3
	li $t9 4
	beq $t1, $t6, Add
	beq $t1, $t7, Subtract
	beq $t1, $t8, Multiply
	beq $t1, $t9, Divide

Add:
	add $t3, $t0, $t2
	li $v0 4
	la $a0 message
	syscall
	li $v0 1
	move $a0 $t3
	syscall
	li $v0 10
	syscall

Subtract:
	sub $t3, $t0, $t2
	li $v0 4
	la $a0 message
	syscall
	li $v0 1
	move $a0 $t3
	syscall
	li $v0 10
	syscall
Multiply:
	mul $t3 $t0, $t2
	li $v0 4
	la $a0 message
	syscall
	li $v0 1
	move $a0 $t3
	syscall
	li $v0 10
	syscall
Divide:
	div $t0, $t2
	mfhi $t4
	mflo $t5
	li $v0 4
	la $a0 message
	syscall
	li $v0 1
	move $a0 $t5
	syscall
	li $v0 4
	la $a0 message4
	syscall
	li $v0 1
	move $a0 $t4
	syscall
	li $v0 10
	syscall
.data
	message1: .asciiz "Enter the first number: " 	
	op: .asciiz "Enter the operation 1)Add  2)Subtract  3)Multiply  4)Divide: "
	message2: .asciiz "Enter the second number: "
	message: .asciiz "Answer: "
	message4: .asciiz "  The remainder is: "
