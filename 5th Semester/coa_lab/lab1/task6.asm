.data
    operand1: .word 0x0A    # Operand 1 (change as needed)
    operand2: .word 0x05    # Operand 2 (change as needed)
    result_and: .space 4    # Variable to store the result of AND
    result_or: .space 4     # Variable to store the result of OR
    result_not: .space 4    # Variable to store the result of NOT

.text
    main:
        # Load values from memory into registers
        lw $t0, operand1      # Load operand1 into $t0
        lw $t1, operand2      # Load operand2 into $t1

        # AND operation
        and $t2, $t0, $t1     # $t2 = $t0 AND $t1
        sw $t2, result_and    # Store the result of AND

        # OR operation
        or $t3, $t0, $t1      # $t3 = $t0 OR $t1
        sw $t3, result_or     # Store the result of OR

        # NOT operation
        nor $t4, $t0, $zero   # $t4 = NOT $t0
        sw $t4, result_not    # Store the result of NOT

        # Your code continues here...

        # Exit the program
        li $v0, 10             # syscall: exit
        syscall               # Call kernel

