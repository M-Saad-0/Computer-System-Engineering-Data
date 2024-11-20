.text
.main:
	li $v0, 4
	la $a0, msg
	syscall
	
.data
msg: .asciiz "This is a string."