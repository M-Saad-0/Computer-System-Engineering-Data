.text
main:
	li $v0, 4
	la $a0, msg1
	syscall

	li $v0, 5
	syscall
	move $t0, $v0

	li $t1, 2
	li $t3, 1
	
	and $t5 $t0 $t3
	beq $t5, $zero, even_number
	bne $t5, $zero, odd_number

even_number:
	li $v0, 4
	la $a0, msg2
	syscall
	j end

odd_number:
	li $v0, 4
	la $a0, msg3
	syscall
	j end

end: 
	li $v0, 10
	syscall

.data
msg1: .asciiz"Enter a number:  "
msg2: .asciiz"The number is Even."
msg3: .asciiz"The number is Odd."
