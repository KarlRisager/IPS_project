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
# was:	li	_or_L_14_, 0
	bne	x10, x0, l.true_16_
# was:	bne	_or_L_14_, x0, l.true_16_
	li	x10, 1
# was:	li	_or_R_15_, 1
	bne	x10, x0, l.true_16_
# was:	bne	_or_R_15_, x0, l.true_16_
	li	x10, 0
# was:	li	_and_L_12_, 0
	j	l.end_17_
l.true_16_:
	li	x10, 1
# was:	li	_and_L_12_, 1
l.end_17_:
	beq	x10, x0, l.false_18_
# was:	beq	_and_L_12_, x0, l.false_18_
	li	x10, 1
# was:	li	_or_L_20_, 1
	bne	x10, x0, l.true_22_
# was:	bne	_or_L_20_, x0, l.true_22_
	li	x10, 0
# was:	li	_or_R_21_, 0
	bne	x10, x0, l.true_22_
# was:	bne	_or_R_21_, x0, l.true_22_
	li	x10, 0
# was:	li	_and_R_13_, 0
	j	l.end_23_
l.true_22_:
	li	x10, 1
# was:	li	_and_R_13_, 1
l.end_23_:
	beq	x10, x0, l.false_18_
# was:	beq	_and_R_13_, x0, l.false_18_
	li	x10, 1
# was:	li	_and_L_10_, 1
	j	l.end_19_
l.false_18_:
	li	x10, 0
# was:	li	_and_L_10_, 0
l.end_19_:
	beq	x10, x0, l.false_24_
# was:	beq	_and_L_10_, x0, l.false_24_
	li	x10, 0
# was:	li	_or_L_27_, 0
	bne	x10, x0, l.true_29_
# was:	bne	_or_L_27_, x0, l.true_29_
	li	x10, 0
# was:	li	_or_R_28_, 0
	bne	x10, x0, l.true_29_
# was:	bne	_or_R_28_, x0, l.true_29_
	li	x10, 0
# was:	li	_not_26_, 0
	j	l.end_30_
l.true_29_:
	li	x10, 1
# was:	li	_not_26_, 1
l.end_30_:
	xori	x10, x10, 1
# was:	xori	_and_R_11_, _not_26_, 1
	beq	x10, x0, l.false_24_
# was:	beq	_and_R_11_, x0, l.false_24_
	li	x10, 1
# was:	li	_and_L_8_, 1
	j	l.end_25_
l.false_24_:
	li	x10, 0
# was:	li	_and_L_8_, 0
l.end_25_:
	beq	x10, x0, l.false_31_
# was:	beq	_and_L_8_, x0, l.false_31_
	li	x10, 1
# was:	li	_or_L_33_, 1
	bne	x10, x0, l.true_35_
# was:	bne	_or_L_33_, x0, l.true_35_
	li	x10, 1
# was:	li	_or_R_34_, 1
	bne	x10, x0, l.true_35_
# was:	bne	_or_R_34_, x0, l.true_35_
	li	x10, 0
# was:	li	_and_R_9_, 0
	j	l.end_36_
l.true_35_:
	li	x10, 1
# was:	li	_and_R_9_, 1
l.end_36_:
	beq	x10, x0, l.false_31_
# was:	beq	_and_R_9_, x0, l.false_31_
	li	x10, 1
# was:	li	_and_L_6_, 1
	j	l.end_32_
l.false_31_:
	li	x10, 0
# was:	li	_and_L_6_, 0
l.end_32_:
	beq	x10, x0, l.false_37_
# was:	beq	_and_L_6_, x0, l.false_37_
	li	x10, 0
# was:	li	_and_L_42_, 0
	beq	x10, x0, l.false_44_
# was:	beq	_and_L_42_, x0, l.false_44_
	li	x10, 1
# was:	li	_and_R_43_, 1
	beq	x10, x0, l.false_44_
# was:	beq	_and_R_43_, x0, l.false_44_
	li	x10, 1
# was:	li	_or_L_40_, 1
	j	l.end_45_
l.false_44_:
	li	x10, 0
# was:	li	_or_L_40_, 0
l.end_45_:
	bne	x10, x0, l.true_46_
# was:	bne	_or_L_40_, x0, l.true_46_
	li	x10, 0
# was:	li	_or_R_41_, 0
	bne	x10, x0, l.true_46_
# was:	bne	_or_R_41_, x0, l.true_46_
	li	x10, 0
# was:	li	_not_39_, 0
	j	l.end_47_
l.true_46_:
	li	x10, 1
# was:	li	_not_39_, 1
l.end_47_:
	xori	x10, x10, 1
# was:	xori	_and_R_7_, _not_39_, 1
	beq	x10, x0, l.false_37_
# was:	beq	_and_R_7_, x0, l.false_37_
	li	x10, 1
# was:	li	_cond_5_, 1
	j	l.end_38_
l.false_37_:
	li	x10, 0
# was:	li	_cond_5_, 0
l.end_38_:
	bne	x10, x0, l.then_2_
# was:	bne	_cond_5_, x0, l.then_2_
	j	l.else_3_
l.then_2_:
	li	x18, 1
# was:	li	_tmp_48_, 1
# 	mv	_mainres_1_,_tmp_48_
	la	x10, s.true
# was:	la	x10, s.true
	bne	x18, x0, l.wBoolF_49_
# was:	bne	_mainres_1_, x0, l.wBoolF_49_
	la	x10, s.false
# was:	la	x10, s.false
l.wBoolF_49_:
	jal	p.putstring
# was:	jal	p.putstring, x10
	j	l.endif_4_
l.else_3_:
	li	x18, 0
# was:	li	_tmp_50_, 0
# 	mv	_mainres_1_,_tmp_50_
	la	x10, s.true
# was:	la	x10, s.true
	bne	x18, x0, l.wBoolF_51_
# was:	bne	_mainres_1_, x0, l.wBoolF_51_
	la	x10, s.false
# was:	la	x10, s.false
l.wBoolF_51_:
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