.text

mian:
	li $v0 4
	la $a0 msg
	syscall
	
	li $v0 5
	syscall
	
	move $t0 $v0
	
	li $t1 1
	li $t2 1
	
repeat:
	j incriment
	
incriment:
	beq $t0, $zero, printandexit
	add $t1, $t0, $t1
	move $t2 $t0
	li $v0 1
	move $a0 $t1
	syscall
	j repeat

	

printandexit:
	li $v0 4
	la $a0 msg1
	syscall
	
	li $v0 1
	move $a0 $t1
	syscall
	
	li $v0 10
	syscall
.data
	msg: .asciiz "Enter a number: "
	msg1: .asciiz "The answer is: "