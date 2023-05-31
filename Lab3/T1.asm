# 读取n存储到t0中
# li t0, 0
# li t2, 0x0A
# li a0, 0x7f00

# LOOP1:
# lw t0, 0(a0)
# beq t0, x0, LOOP1

# addi a0, a0, 4
# lw t0, 0(a0)
# addi t0, t0, -48
# addi a0, a0, -4

# LOOP2:
# lw t1, 0(a0)
# beq t1, x0, LOOP2

# addi a0, a0, 4
# lw t1, 0(a0)
# beq t1, t2, EXIT

# addi t1, t1, -48
# slli t0, t0, 4
# add t0, t0, t1
# addi a0, a0, -4

# LOOP3:
# lw t1, 0(a0)
# beq t1, x0, LOOP3

# EXIT:
addi t0 x0 10

li t4, 0
li t1, 1
sw t1, 0(t4)
addi t4, t4, 4
addi t0, t0, -1
li t2, 1
sw t2, 0(t4)
addi t4, t4, 4
addi t0, t0, -1

LOOP:
add t3, t2, t1
sw t3, 0(t4)
addi t4, t4, 4
addi t0, t0, -1
beq t0, x0, END
add t1, t2, t3
sw t1, 0(t4)
addi t4, t4, 4
addi t0, t0, -1
beq t0, x0, END
add t2, t3, t1
sw t2, 0(t4)
addi t4, t4, 4
addi t0, t0, -1
beq t0, x0, END
j LOOP

END: