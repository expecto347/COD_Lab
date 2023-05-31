# win: 0x3150 ~ 0x3168
.text
TEST0:	# bne test
	addi gp, x0, 0		# gp = 0 检测addi实现与x0设为0
	addi x5, x0, -1
	addi x6, x0, -1
	addi x7, x0, 1
	addi x8, x0, 2
	bne x5, x6, FAIL	# 不应跳转
	bne x8, x7, TEST1	# 应跳转
	
FAIL:	
	lui x7 7
	addi x7 x7 0x700
	addi x7 x7 0x700
	addi x7 x7 0x100	# x7 = 7f00
	addi x8 x0 1
	sw x8 16(x7)		# led[1] = 0
	beq x0, x0, FAIL	# 失败时会在此处死循环
	
TEST1:	# sub test	
	addi gp, x0, 1		# gp = 1
	addi x5, x0, 2		# x5 = 2
	addi x6, x0, 4		# x6 = 4
	sub x6, x5, x6		# x6 = -2
	sub x6, x6, x6		# x6 = 0
	addi x7, x0, 0		# x7 = 0
	beq x7, x7, TEST2
	beq x0, x0, FAIL
	
TEST2:  # sll test
	addi gp, x0, 2		# gp = 2
	addi x5, x0, 2		# x5 = 2
	addi x6, x0, -134	# x6 = 0xf7a
	sll x6, x6, x5		# x6 = 0xde8
	addi x7, x0, -536	# x7 = 0xde8
	beq x7, x7, TEST3
	beq x0, x0, FAIL
	
TEST3:	# srl test
	addi gp, x0, 3		# gp = 3
	addi x5, x0, 3		# x5 = 3
	addi x6, x0, -134	# x6 = 0xffffff7a
	srl x6, x6, x5		# x6 = 0x1fffffef
	li x7, 0x1fffffef
	beq x7, x7, TEST4
	beq x0, x0, FAIL
	
TEST4:	# and test
	addi gp, x0, 4
	addi x5, x0, -9		# x5 = 0xfff7
	addi x6, x0, -24	# x6 = 0xffe8
	and x6, x5, x6
	addi x7, x0, -32	# x7 = 0xffe0
	beq x7, x7, TEST5
	beq x0, x0, FAIL
	
TEST5:	# or test
	addi gp, x0, 5
	addi x5, x0, 7		# x5 = 0x0007
	addi x6, x0, -24	# x6 = 0xffe8
	or x6, x5, x6
	addi x7, x0, -17	# x7 = 0xffef
	beq x7, x7, TEST6
	beq x0, x0, FAIL
	
TEST6:	# slli test
	addi gp, x0, 6
	addi x5, x0, 0x07a
	slli x6, x5, 2
	addi x7, x0, 0x1e8	# x7 = 0x1e8
	beq x7, x7, TEST7
	beq x0, x0, FAIL
	
TEST7:	# srli test
	addi gp, x0, 7		# gp = 7
	addi x5, x0, -134	# x5 = 0xffffff7a
	srli x6, x5, 3		# x6 = 0x1fffffef
	li x7, 0x1fffffef
	beq x7, x7, TEST8
	beq x0, x0, FAIL
	
TEST8:	# bge test	
	addi gp, x0, 8		# gp = 8
	addi x5, x0, 1		# x5 = 1
	addi, x6, x0, 2		# x6 = 2
	addi x28, x0, 1 	# x28 = 1 可通过x28确定哪个分测试时失败
	bge x5, x6, FAIL
	addi x7, x0, -1		# x7 = 0xffffffff
	addi x8, x0, -2		# x8 = 0xfffffffe
	addi x28, x0, 2 	# x28 = 2
	bge x8, x7, FAIL
	addi x9, x0, 0		# x9 = 0
	addi x28, x0, 3 	# x28 = 3
	bge x7, x9, FAIL
	addi x7, x7, 1
	addi x28, x0, 4 	# x28 = 4
	bge x9, x9, TEST9
	beq x0, x0, FAIL
	
TEST9: 	# bltu test
	addi gp, x0, 9		# gp = 9
	addi x5, x0, -1
	addi x6, x0, 0
	beq x0, x0, WIN
	
WIN:	
	lui x7 7
	addi x7 x7 0x700
	addi x7 x7 0x700
	addi x7 x7 0x100	# x7 = 7f00
	addi x8 x0 1
	sw x8 12(x7)		# led[0] = 0
	beq x0, x0, WIN
	
