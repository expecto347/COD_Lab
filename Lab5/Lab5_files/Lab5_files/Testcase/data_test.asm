# Author: 2023_COD_TA
# Last_edit: 20230503
# ============================== 流水线 CPU 正确性测试程序 ==============================
# 本测试为只存在数据冒险的测试
# 需要在通过了simple test的基础上进行
# 在测试结束后，寄存器堆应满足：
# x[i] = i 其中i = 10,11,12,13,14,15,16 (十进制)
# 其余寄存器作为临时寄存器
# 若有差异，不满足的最小 i 即指示出错的测试
# !!!!!!!!!!!!!!!! 请不要修改本测试程序的代码 !!!!!!!!!!!!!!!!!!!!!!!
# ======================================================================================

.text
# TEST 10 MEM forwarding
	addi x30, x0, 2
	addi x31, x0, 0
	addi x10, x30, 8

# TEST 11 WB forwarding
	addi x30, x0, -2
	addi x11, x30, 13
	
# TEST 12 both forwarding
	addi x12, x0, 4
	add x12, x12, x12
	addi x12, x12, 4
	
# TEST 13 more instructions
	lui x30, 1
	sw x30, 4(x0)
	lw x13, 4(x0)
	addi x31, x0, 0
	addi x31, x0, 0
	addi x13, x13, -2048
	addi x13, x13, -2035

# TEST 14 WB load use
	lui x30, 1
	sw x30, 4(x0)
	lw x14, 4(x0)
	lui x31, -1
	add x14, x14, x31
	addi x14, x14, 14
	
# TEST 15 x0 test
	addi x0, x0, 4
	addi x15, x0, 5
	add x15, x0, x15
	addi x15, x15, 10
	
# TEST 16 load use
	addi x30, x0, 12
	sw x30, 0(x30)
	lw x29, 12(x0)
	sw x29, 12(x29)
	lw x16, 24(x0)
	addi x16, x16, 4