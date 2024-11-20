.text

main:
	li $v0 4
	la $a0 m
	syscall
	
	li $v0 5
	syscall
	move $t0 $v0
	
	li $t1 18
	
	bge $t0, $t1, eligible
	blt $t0, $t1, ineligible
	
eligible:
	li $v0 4
	la $a0 m1
	syscall
	
	li $v0 10
	syscall

ineligible:
	li $v0 4
	la $a0 m2
	syscall
	li $v0 10
	syscall

.data

	m: .asciiz "Enter Your age: "
	m1: .asciiz "You can apply for CNIC"
	m2: .asciiz "You cannot apply for CNIC"