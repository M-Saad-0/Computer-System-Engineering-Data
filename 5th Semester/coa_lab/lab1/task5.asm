.data
    num1: .word 5       # First number (change as needed)
    num2: .word 3       # Second number (change as needed)
    result: .space 4    # Variable to store the result
    high_bits: .space 4 # Variable to store the high bits
    low_bits: .space 4  # Variable to store the low bits

.text
    main:
        # Load values from memory into registers
        lw $t0, num1       # Load num1 into $t0
        lw $t1, num2       # Load num2 into $t1

        # Multiply num1 and num2
        mult $t0, $t1
        mflo $t2           # Load the low bits of the result into $t2
        mfhi $t3           # Load the high bits of the result into $t3

        # Store results in memory
        sw $t2, result     # Store the low bits in result
        sw $t3, high_bits  # Store the high bits in high_bits

        # Your code continues here...

        # Exit the program
        li $v0, 10          # syscall: exit
        syscall             # Call kernel

