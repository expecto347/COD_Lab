# Author: 2023_COD_TA
# Last_edit: 20230503
# ============================== 流水线 CPU 正确性测试程序 ==============================
# 本测试为只存在控制冒险的测试
# 需要在通过了simple test的基础上进行
# 指示寄存器 为 x25 与 x26 寄存器
# 若连续运行后 x26 的值为 0xffffffff ，代表FAIL，这时 x25 指示第一个未通过的测试
# 若连续运行后 x26 的值为 1，代表全部测试通过
# !!!!!!!!!!!!!!!! 请不要修改本测试程序的代码 !!!!!!!!!!!!!!!!!!!!!!!
# ======================================================================================

.text
# CTRL 1 B unjump
	addi x25, x0, 1
	addi x1, x0, 1
	addi x2, x0, 2
	addi x3, x0, -1
	addi x4, x0, -2
	beq x1, x2, FAIL
	beq x1, x3, FAIL
	blt x2, x1, FAIL
	blt x3, x4, FAIL

# CTRL 2 B jump
	addi x25, x0, 2
	beq x0, x0, L1
FAIL:	
	addi x26, x0, -1
	beq x0, x0, FAIL
L1:	
	blt x4, x3, L2
	beq x0, x0, FAIL

# CTRL 3 jal
# 若做选做1，此测试可以检测跳转优先级设定是否正确
L2:	addi x25, x0, 3
	jal x1, L3
	beq x0, x0, FAIL
L3:	auipc x2, 0
	addi x31, x0, 0
	addi x1, x1, 4
	addi x31, x0, 0
	addi x31, x0, 0
	blt x1, x2, FAIL
	blt x2, x1, FAIL

# CTRL 4 jalr
	addi x25, x0, 4
	auipc x2, 0
	addi x31, x0, 0
	addi x31, x0, 0
	jalr x1, 20(x2)
	beq x0, x0, FAIL
	jal x3, L4
	beq x0, x0, FAIL
L4:	addi x4, x3, -8
	addi x31, x0, 0
	addi x31, x0, 0
	blt x4, x1, FAIL
	blt x1, x4, FAIL
	
WIN:	
	addi x26, x0, 1
	beq x0, x0, WIN
