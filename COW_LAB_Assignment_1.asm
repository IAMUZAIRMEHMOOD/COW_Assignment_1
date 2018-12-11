.data
arg1:  .asciiz "Enter total no disk you want to move = "
arg2: .asciiz "Number of disks you need to move is  = "
.text
la $t0, 2
la $t2, 0
la $t4, 1
la $a0, arg1
li $v0, 4
syscall
li $v0, 5
syscall
move $t1, $v0
return:
mul $t2, $t4, $t0
addi $t4, $t2, 0
subi $t1, $t1, 1
bnez $t1, return
subi $t4, $t4, 1
la $a0, arg2
li $v0, 4
syscall
move $a0, $t4
li $v0, 1
syscall
