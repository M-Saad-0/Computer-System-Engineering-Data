.text
main:
    li $v0, 5
    syscall
    move $t0, $v0
    la $t5, fibonacci
    la $t6, fibonacci
    li $t1, 1
    li $t2, 0
    li $t3, 1
    li $t4, 1
    j floop
floop:
    sw $t3, ($t5)
    bge $t1, $t0 print
    move $t2, $t3
    move $t3, $t4
    add $t4, $t3, $t2
    addi $t5, $t5, 4
    add $t1, $t1, 1
    j floop

print:
    lw $t7, ($t6)
    li $v0, 1
    move $a0, $t7
    syscall
    li $v0, 4
    la $a0, space
    syscall
    beq $t7, $t3, exit
    addi $t6, $t6, 4
    j print

exit:
    li $v0, 10
    syscall

.data
    fibonacci: .word 0
    space: .asciiz "LOL"
