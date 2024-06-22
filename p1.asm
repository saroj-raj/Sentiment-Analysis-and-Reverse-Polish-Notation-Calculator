.data
prompt: .asciiz "Please enter a string: "
result_str: .asciiz "Total: "

.text
.globl main

main:
    # Print prompt
    li $v0, 4
    la $a0, prompt
    syscall
    
    # Read input string
    li $v0, 8
    la $a0, buffer
    li $a1, 100
    syscall

    # Initialize total to 0
    li $t0, 0 # total in $t0
    la $t1, buffer # address of buffer in $t1

parse_loop:
    lb $t2, 0($t1) # load next byte from buffer to $t2
    beqz $t2, print_result # if zero (end of string), go to print_result

    # Check if character is '(' or ')'
    beq $t2, '(', skip_char
    beq $t2, ')', skip_char

    # Check if character is digit
    li $t3, '0'
    li $t4, '9'
    blt $t2, $t3, check_operator
    bgt $t2, $t4, check_operator

    # If we are here, character is a digit.
    # Add or subtract it to/from total.
    sub $t2, $t2, '0' # convert ASCII to integer
    bnez $t5, subtract
    add $t0, $t0, $t2
    j update_pointer

subtract:
    sub $t0, $t0, $t2

update_pointer:
    # Move to the next character
    addi $t1, $t1, 1
    j parse_loop

check_operator:
    # Check if character is '+' or '-'
    beq $t2, '+', set_add
    beq $t2, '-', set_subtract
    j update_pointer

set_add:
    li $t5, 0 # clear subtraction flag
    j update_pointer

set_subtract:
    li $t5, 1 # set subtraction flag
    j update_pointer

skip_char:
    # Skip this character
    addi $t1, $t1, 1
    j parse_loop

print_result:
    # Print the result string
    li $v0, 4
    la $a0, result_str
    syscall

    # Print the total
    move $a0, $t0
    li $v0, 1
    syscall

    # Exit the program
    li $v0, 10
    syscall

    .data
    buffer: .space 100
