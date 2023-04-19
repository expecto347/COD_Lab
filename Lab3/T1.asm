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