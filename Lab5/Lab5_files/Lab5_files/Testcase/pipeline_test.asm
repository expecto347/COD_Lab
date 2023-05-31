# Author: 2023_COD_TA
# Last_edit: 20230503
# ============================== 流水线 CPU 正确性测试程序 ==============================
# 指示寄存器 为 x25 与 x26 寄存器
# 若连续运行后 x26 的值为 0xffffffff ，代表FAIL，这时 x25 指示第一个未通过的测试
# 上板可以看到 led[1] 亮起，此时程序执行异常
# 在文件中 x25[5] 指示当前进行的测试阶段
# x25 为 0x10 代表 part 1 simple test
# x25 为 0x20 代表 part 2 data test
# 这时 x1 到 x16 中 第一个满足 x[i] != i 的 i 是第一个未通过的测试
# x25 为 0x3X 代表 part 3 control test
# x25 为 0x4X 代表 part 4 hazard test
# 这时 x25 的后四位指示第一个未通过的测试
# x25 为 0x40 代表 final test
# 若连续运行后 x26 的值为 1，代表全部测试通过
# 上板可以看到 led[0] 亮起，此时程序执行正常

# !!!!!!!!!!!!!!!! 请不要修改本测试程序的代码 !!!!!!!!!!!!!!!!!!!!!!!
# ======================================================================================

.text
# PART I 无冒险测试
# TEST k 的结果是寄存器 x[i] = i，其中 i = 1到9
# 其余寄存器作为临时寄存器

# TEST 1 addi test
	addi x30, x0, 2
	addi x31, x0, 0
	# addi x31, x0, 0为本测试的气泡，不会产生冒险
	addi x31, x0, 0
	addi x31, x0, 0
	addi x30, x30, -3
	addi x31, x0, 0
	addi x31, x0, 0
	addi x31, x0, 0
	addi x1, x30, 2

# TEST 2 add test
	addi x30, x0, -3
	addi x29, x0, 4
	addi x31, x0, 0
	addi x31, x0, 0
	addi x31, x0, 0
	add x2, x29, x30
	addi x31, x0, 0
	addi x31, x0, 0
	addi x31, x0, 0
	add x2, x2, x2

# TEST 3 write first test
	addi x30, x0, 2
	addi x31, x0, 0
	addi x31, x0, 0
	addi x3, x30, 1
	
# TEST 4 write first x0 test
	addi x0, x0, 1
	addi x31, x0, 0
	addi x31, x0, 0
	addi x4, x0, 4

# TEST 5 lui test I
	lui x5, 1		# x5 = 4096
	addi x31, x0, 0
	addi x31, x0, 0
	addi x5, x5, -2048	# x5 = 2048
	addi x31, x0, 0
	addi x31, x0, 0
	addi x5, x5, -2043	# x5 = 5
	
# TEST 6 lui test II
	lui x6, -1		# x6 = -4096
	addi x31, x0, 0
	addi x31, x0, 0
	addi x6, x6, 2047	# x6 = -2049
	addi x31, x0, 0
	addi x31, x0, 0
	addi x6, x6, 2047	# x6 = -2
	addi x31, x0, 0
	addi x31, x0, 0
	addi x6, x6, 8		# x6 = 6

# TEST 7 auipc test
	auipc x7, 1		# x7 = 0x000040b0
	lui x30, -4		# x30 = 0xffffc000
	addi x31, x0, 0
	addi x31, x0, 0
	add x7, x7, x30		# x7 = 0x0b0
	addi x31, x0, 0
	addi x31, x0, 0
	addi x7, x7, -169	# x7 = 7
	
# TEST 8 lw sw test I
	addi x30, x0, 8
	addi x31, x0, 0
	addi x31, x0, 0
	sw x30, 4(x0)
	addi x31, x0, 0
	addi x31, x0, 0
	lw x8, -4(x30)
	
# TEST 9 lw sw test II
	addi x30, x0, 8
	addi x31, x0, 0
	sw x30, 12(x0)
	lw x9, 4(x30)
	addi x31, x0, 0
	addi x31, x0, 0
	addi x9, x9, 1

# PART I 检测部分
	addi x25, x0, 0x10
	add x10, x0, x1
	add x11, x2, x3
	add x12, x4, x5
	add x13, x6, x7
	add x14, x8, x9
	add x10, x10, x11
	add x12, x12, x13
	addi x31, x0, 0
	add x15, x10, x12
	addi x31, x0, 0
	addi x31, x0, 0
	add x15, x15, x14
	addi x16, x0, 45
	addi x31, x0, 0
	addi x31, x0, 0
	beq x15, x16, PART2
	
FAIL:	
	addi x26, x0, -1
	lui x7 7
	addi x7, x7, 0x700
	addi x7, x7, 0x700
	addi x7, x7, 0x100	# x7 = 7f00
	addi x8, x0, 1
	sw x8, 16(x7)		# led[1] = 1
	beq x0, x0, FAIL	# 失败时会在此处死循环
	
PART2:
# PART II 数据冒险测试
# TEST k 的结果是寄存器 x[i] = i，其中 i = 10到16
# 其余寄存器作为临时寄存器

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

# PART II 检测部分
	addi x25, x0, 0x20
	add x17, x10, x11
	add x18, x12, x13
	add x19, x14, x15
	add x20, x17, x18
	add x21, x19, x20
	addi x22, x0, 75
	beq x21, x22, PART3
	beq x0, x0, FAIL
	
PART3:
# PART III 控制冒险测试
# x25 的后四位代表未通过的测试

# CTRL 1 B unjump
	addi x25, x0, 0x31
	addi x1, x0, 1
	addi x2, x0, 2
	addi x3, x0, -1
	addi x4, x0, -2
	beq x1, x2, FAIL
	beq x1, x3, FAIL
	blt x2, x1, FAIL
	blt x3, x4, FAIL

# CTRL 2 B jump
	addi x25, x0, 0x32
	beq x0, x0, L1
L1:	
	blt x4, x3, L2
	beq x0, x0, FAIL

# CTRL 3 jal
# 若做选做1，此测试可以检测跳转优先级设定是否正确
L2:	addi x25, x0, 0x33
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
	addi x25, x0, 0x34
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

# PART IV 综合测试
# CTRL 5 jal与数据冒险
	addi x25, x0, 0x45
	jal x1, L5
	beq x0, x0, FAIL
L5:	auipc x2, 0
	addi x31, x0, 0
	addi x1, x1, 4
	addi x31, x0, 0
	addi x31, x0, 0
	blt x1, x2, FAIL
	blt x2, x1, FAIL

# CTRL 6 jalr与数据冒险
	addi x25, x0, 0x46
	auipc x2, 0
	jalr x1, 12(x2)
	beq x0, x0, FAIL
	jal x3, L6
	beq x0, x0, FAIL
L6:	addi x4, x3, -8
	blt x4, x1, FAIL
	blt x1, x4, FAIL
	
# CTRL 7 jal, jalr与x0
	addi x25, x0, 0x47
	addi x6, x0, 0
	auipc x2, 0
	jalr x0, 12(x2)
	beq x0, x0, FAIL
	blt x6, x0, FAIL
	jal x0, L7
L7:	blt x6, x0, FAIL

FINAL:	# final test	
	addi x25, x0, 0x50
	addi x8, x0, 100	# x8 = 100
	addi x5, x0, 0		# x5 = 0
	addi x30, x0, 0		# x30 = 0
LOOP:	beq x5, x8, JMP
	add x6, x5, x5
	add x6, x6, x6		# x6 = 4 * x5
	sw x5, 0(x6)	
	addi x5, x5, 1		# 数据段前100个位置存0到99
	jal x7, LOOP		
	beq x0, x0, FAIL
JMP:	jalr x0, x7, 12		# 跳至COUNT前一句
	beq x0, x0, FAIL
	addi x10, x0, 0
COUNT:	add x11, x10, x10
	add x11, x11, x11	# x11 = 4 * x10
	lw x12, 0(x11)
	add x30, x30, x12
	addi x10, x10, 1
	blt x10, x8, COUNT	# x30 储存0到99的和 0x1356
	auipc x31, 0		# x31 = 0x3358
	lui x29, -2		# x29 = 0xffffe000
	add x28, x29, x31	# x28 = 0x1358
	addi x27, x28, -2	# x27 = 0x1356
	beq x27, x30, WIN
	beq x0, x0, FAIL

WIN:	
	addi x26, x0, 1
	lui x7 7
	addi x7 x7 0x700
	addi x7 x7 0x700
	addi x7 x7 0x100	# x7 = 7f00
	addi x8 x0 1
	sw x8 12(x7)		# led[0] = 1
	beq x0, x0, WIN
