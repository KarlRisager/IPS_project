	.text	0x00400000
	la	x3, d.heap
	jal	f.main
	jal	p.stop
# User functions
# Function main
f.main:
	sw	x1, -4(x2)
	sw	x18, -8(x2)
	addi	x2, x2, -8
	li	x10, 0
# was:	li	_and_L_17_, 0
	beq	x10, x0, l.false_19_
# was:	beq	_and_L_17_, x0, l.false_19_
	li	x10, 1
# was:	li	_and_R_18_, 1
	beq	x10, x0, l.false_19_
# was:	beq	_and_R_18_, x0, l.false_19_
	li	x10, 1
# was:	li	_not_16_, 1
	j	l.end_20_
l.false_19_:
	li	x10, 0
# was:	li	_not_16_, 0
l.end_20_:
	xori	x10, x10, 1
# was:	xori	_and_L_14_, _not_16_, 1
	beq	x10, x0, l.false_21_
# was:	beq	_and_L_14_, x0, l.false_21_
	li	x10, 1
# was:	li	_and_L_24_, 1
	beq	x10, x0, l.false_26_
# was:	beq	_and_L_24_, x0, l.false_26_
	li	x10, 0
# was:	li	_and_R_25_, 0
	beq	x10, x0, l.false_26_
# was:	beq	_and_R_25_, x0, l.false_26_
	li	x10, 1
# was:	li	_not_23_, 1
	j	l.end_27_
l.false_26_:
	li	x10, 0
# was:	li	_not_23_, 0
l.end_27_:
	xori	x10, x10, 1
# was:	xori	_and_R_15_, _not_23_, 1
	beq	x10, x0, l.false_21_
# was:	beq	_and_R_15_, x0, l.false_21_
	li	x10, 1
# was:	li	_and_L_12_, 1
	j	l.end_22_
l.false_21_:
	li	x10, 0
# was:	li	_and_L_12_, 0
l.end_22_:
	beq	x10, x0, l.false_28_
# was:	beq	_and_L_12_, x0, l.false_28_
	li	x10, 0
# was:	li	_and_L_31_, 0
	beq	x10, x0, l.false_33_
# was:	beq	_and_L_31_, x0, l.false_33_
	li	x10, 0
# was:	li	_and_R_32_, 0
	beq	x10, x0, l.false_33_
# was:	beq	_and_R_32_, x0, l.false_33_
	li	x10, 1
# was:	li	_not_30_, 1
	j	l.end_34_
l.false_33_:
	li	x10, 0
# was:	li	_not_30_, 0
l.end_34_:
	xori	x10, x10, 1
# was:	xori	_and_R_13_, _not_30_, 1
	beq	x10, x0, l.false_28_
# was:	beq	_and_R_13_, x0, l.false_28_
	li	x10, 1
# was:	li	_and_L_10_, 1
	j	l.end_29_
l.false_28_:
	li	x10, 0
# was:	li	_and_L_10_, 0
l.end_29_:
	beq	x10, x0, l.false_35_
# was:	beq	_and_L_10_, x0, l.false_35_
	li	x10, 1
# was:	li	_and_L_37_, 1
	beq	x10, x0, l.false_39_
# was:	beq	_and_L_37_, x0, l.false_39_
	li	x10, 1
# was:	li	_and_R_38_, 1
	beq	x10, x0, l.false_39_
# was:	beq	_and_R_38_, x0, l.false_39_
	li	x10, 1
# was:	li	_and_R_11_, 1
	j	l.end_40_
l.false_39_:
	li	x10, 0
# was:	li	_and_R_11_, 0
l.end_40_:
	beq	x10, x0, l.false_35_
# was:	beq	_and_R_11_, x0, l.false_35_
	li	x10, 1
# was:	li	_and_L_8_, 1
	j	l.end_36_
l.false_35_:
	li	x10, 0
# was:	li	_and_L_8_, 0
l.end_36_:
	beq	x10, x0, l.false_41_
# was:	beq	_and_L_8_, x0, l.false_41_
	li	x10, 0
# was:	li	_and_L_46_, 0
	beq	x10, x0, l.false_48_
# was:	beq	_and_L_46_, x0, l.false_48_
	li	x10, 1
# was:	li	_and_R_47_, 1
	beq	x10, x0, l.false_48_
# was:	beq	_and_R_47_, x0, l.false_48_
	li	x10, 1
# was:	li	_or_L_44_, 1
	j	l.end_49_
l.false_48_:
	li	x10, 0
# was:	li	_or_L_44_, 0
l.end_49_:
	bne	x10, x0, l.true_50_
# was:	bne	_or_L_44_, x0, l.true_50_
	li	x10, 0
# was:	li	_or_R_45_, 0
	bne	x10, x0, l.true_50_
# was:	bne	_or_R_45_, x0, l.true_50_
	li	x10, 0
# was:	li	_not_43_, 0
	j	l.end_51_
l.true_50_:
	li	x10, 1
# was:	li	_not_43_, 1
l.end_51_:
	xori	x10, x10, 1
# was:	xori	_and_R_9_, _not_43_, 1
	beq	x10, x0, l.false_41_
# was:	beq	_and_R_9_, x0, l.false_41_
	li	x10, 1
# was:	li	_and_L_6_, 1
	j	l.end_42_
l.false_41_:
	li	x10, 0
# was:	li	_and_L_6_, 0
l.end_42_:
	beq	x10, x0, l.false_52_
# was:	beq	_and_L_6_, x0, l.false_52_
	li	x10, 1
# was:	li	_and_L_55_, 1
	beq	x10, x0, l.false_57_
# was:	beq	_and_L_55_, x0, l.false_57_
	li	x12, 1
# was:	li	_eq_L_59_, 1
	li	x11, 0
# was:	li	_eq_R_60_, 0
	li	x10, 0
# was:	li	_and_R_56_, 0
	bne	x12, x11, l.false_61_
# was:	bne	_eq_L_59_, _eq_R_60_, l.false_61_
	li	x10, 1
# was:	li	_and_R_56_, 1
l.false_61_:
	beq	x10, x0, l.false_57_
# was:	beq	_and_R_56_, x0, l.false_57_
	li	x10, 1
# was:	li	_not_54_, 1
	j	l.end_58_
l.false_57_:
	li	x10, 0
# was:	li	_not_54_, 0
l.end_58_:
	xori	x10, x10, 1
# was:	xori	_and_R_7_, _not_54_, 1
	beq	x10, x0, l.false_52_
# was:	beq	_and_R_7_, x0, l.false_52_
	li	x10, 1
# was:	li	_cond_5_, 1
	j	l.end_53_
l.false_52_:
	li	x10, 0
# was:	li	_cond_5_, 0
l.end_53_:
	bne	x10, x0, l.then_2_
# was:	bne	_cond_5_, x0, l.then_2_
	j	l.else_3_
l.then_2_:
	li	x18, 1
# was:	li	_tmp_62_, 1
# 	mv	_mainres_1_,_tmp_62_
	la	x10, s.true
# was:	la	x10, s.true
	bne	x18, x0, l.wBoolF_63_
# was:	bne	_mainres_1_, x0, l.wBoolF_63_
	la	x10, s.false
# was:	la	x10, s.false
l.wBoolF_63_:
	jal	p.putstring
# was:	jal	p.putstring, x10
	j	l.endif_4_
l.else_3_:
	li	x18, 0
# was:	li	_tmp_64_, 0
# 	mv	_mainres_1_,_tmp_64_
	la	x10, s.true
# was:	la	x10, s.true
	bne	x18, x0, l.wBoolF_65_
# was:	bne	_mainres_1_, x0, l.wBoolF_65_
	la	x10, s.false
# was:	la	x10, s.false
l.wBoolF_65_:
	jal	p.putstring
# was:	jal	p.putstring, x10
l.endif_4_:
	mv	x10, x18
# was:	mv	x10, _mainres_1_
	addi	x2, x2, 8
	lw	x18, -8(x2)
	lw	x1, -4(x2)
	jr	x1
# Library functions in Fasto namespace
f.ord:
	mv	x10, x10
	jr	x1
f.chr:
	andi	x10, x10, 255
	jr	x1
# Internal procedures (for syscalls, etc.)
p.putint:
	li	x17, 1
	ecall
	li	x17, 4
	la	x10, m.space
	ecall
	jr	x1
p.getint:
	li	x17, 5
	ecall
	jr	x1
p.putchar:
	li	x17, 11
	ecall
	li	x17, 4
	la	x10, m.space
	ecall
	jr	x1
p.getchar:
	li	x17, 12
	ecall
	jr	x1
p.putstring:
	lw	x7, 0(x10)
	addi	x6, x10, 4
	add	x7, x6, x7
	li	x17, 11
l.ps_begin:
	bge	x6, x7, l.ps_done
	lbu	x10, 0(x6)
	ecall
	addi	x6, x6, 1
	j	l.ps_begin
l.ps_done:
	jr	x1
p.stop:
	li	x17, 93
	li	x10, 0
	ecall
p.RuntimeError:
	mv	x6, x10
	li	x17, 4
	la	x10, m.RunErr
	ecall
	li	x17, 1
	mv	x10, x6
	ecall
	li	x17, 4
	la	x10, m.colon_space
	ecall
	mv	x10, x11
	ecall
	la	x10, m.nl
	ecall
	jal	p.stop
	.data	
# Fixed strings for runtime I/O
m.RunErr:
	.asciz	"Runtime error at line "
m.colon_space:
	.asciz	": "
m.nl:
	.asciz	"\n"
m.space:
	.asciz	" "
# Message strings for specific errors
m.BadSize:
	.asciz	"negative array size"
m.BadIndex:
	.asciz	"array index out of bounds"
m.DivZero:
	.asciz	"division by zero"
# String literals (including lengths) from program
	.align	2
s.true:
	.word	4
	.ascii	"true"
	.align	2
s.false:
	.word	5
	.ascii	"false"
	.align	2
# Space for Fasto heap
d.heap:
	.space	100000