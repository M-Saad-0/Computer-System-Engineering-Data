.text
.globl main
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	li $t1, 8
	li $t3, 1
	
	and $t2, $t1, $t0
	beq $t2, $t3, equal
	beq $t2, $zero, not_equal
	
equal:	
	li $v0, 4
	la $a0, msg2
	syscall
	xor $t4, $t1, $t0
	li $v0, 1
	move $a0, $t4
	syscall
	j end

not_equal:
	li $v0, 4
	la $a0, msg2
	syscall
	xor $t4, $t1, $t0
	li $v0, 1
	move $a0, $t4
	syscall
	j end
	
end:
	li $v0, 10
	syscall
		
.data
msg1: .asciiz"Enter a number:  "
msg2: .asciiz"The fliped bit is: "

	
	
