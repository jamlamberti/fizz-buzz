.data
fizz:   .asciiz "Fizz"
buzz:   .asciiz "Buzz"

.text
main:
        li $t0, 1               # Loop counter is stored in $t0
        li $t1, 3
        li $t2, 5   

loop:
        li $v0, 4
        li $t3, -1
        beq $t0, 101, exit
        
        div $t0, $t1
        mfhi $t4
        bne $t4, 0, next
        xor $t3, $t3, $t3
        la $a0, fizz
        syscall

next:                           # Check for mod 3
        div $t0, $t2
        mfhi $t4
        bne $t4, 0, num
        xor $t3, $t3, $t3
        la $a0, buzz
        syscall

num:                            # Check for mod 5
        beq $t3, 0, fin
        li $v0, 1
        addiu $a0, $t0, 0
        syscall

fin:                            # Check for not mod 3 or mod 5
        li $v0, 11
        li $a0, '\n'
        syscall
        
        add $t0, $t0, 1
        j loop

exit:                           # Exit the program
    li $v0, 10
    syscall
