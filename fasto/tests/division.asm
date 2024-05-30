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
	li	x11, 10
# was:	li	_div_L_22_, 10
	li	x10, 5
# was:	li	_div_R_23_, 5
	div	x10, x11, x10
# was:	div	_eq_L_20_, _div_L_22_, _div_R_23_
	li	x11, 2
# was:	li	_eq_R_21_, 2
	li	x12, 0
# was:	li	_and_L_18_, 0
	bne	x10, x11, l.false_24_
# was:	bne	_eq_L_20_, _eq_R_21_, l.false_24_
	li	x12, 1
# was:	li	_and_L_18_, 1
l.false_24_:
	beq	x12, x0, l.false_25_
# was:	beq	_and_L_18_, x0, l.false_25_
	li	x10, 10
# was:	li	_negate_31_, 10
	sub	x10, x0, x10
# was:	sub	_div_L_29_, x0, _negate_31_
	li	x11, 5
# was:	li	_negate_32_, 5
	sub	x11, x0, x11
# was:	sub	_div_R_30_, x0, _negate_32_
	div	x10, x10, x11
# was:	div	_eq_L_27_, _div_L_29_, _div_R_30_
	li	x11, 2
# was:	li	_eq_R_28_, 2
	li	x12, 0
# was:	li	_and_R_19_, 0
	bne	x10, x11, l.false_33_
# was:	bne	_eq_L_27_, _eq_R_28_, l.false_33_
	li	x12, 1
# was:	li	_and_R_19_, 1
l.false_33_:
	beq	x12, x0, l.false_25_
# was:	beq	_and_R_19_, x0, l.false_25_
	li	x10, 1
# was:	li	_and_L_16_, 1
	j	l.end_26_
l.false_25_:
	li	x10, 0
# was:	li	_and_L_16_, 0
l.end_26_:
	beq	x10, x0, l.false_34_
# was:	beq	_and_L_16_, x0, l.false_34_
	li	x10, 10
# was:	li	_div_L_38_, 10
	li	x11, 5
# was:	li	_negate_40_, 5
	sub	x11, x0, x11
# was:	sub	_div_R_39_, x0, _negate_40_
	div	x12, x10, x11
# was:	div	_eq_L_36_, _div_L_38_, _div_R_39_
	li	x10, 2
# was:	li	_negate_41_, 2
	sub	x10, x0, x10
# was:	sub	_eq_R_37_, x0, _negate_41_
	li	x11, 0
# was:	li	_and_R_17_, 0
	bne	x12, x10, l.false_42_
# was:	bne	_eq_L_36_, _eq_R_37_, l.false_42_
	li	x11, 1
# was:	li	_and_R_17_, 1
l.false_42_:
	beq	x11, x0, l.false_34_
# was:	beq	_and_R_17_, x0, l.false_34_
	li	x10, 1
# was:	li	_and_L_14_, 1
	j	l.end_35_
l.false_34_:
	li	x10, 0
# was:	li	_and_L_14_, 0
l.end_35_:
	beq	x10, x0, l.false_43_
# was:	beq	_and_L_14_, x0, l.false_43_
	li	x11, 0
# was:	li	_div_L_47_, 0
	li	x10, 10
# was:	li	_div_R_48_, 10
	div	x12, x11, x10
# was:	div	_eq_L_45_, _div_L_47_, _div_R_48_
	li	x11, 0
# was:	li	_eq_R_46_, 0
	li	x10, 0
# was:	li	_and_R_15_, 0
	bne	x12, x11, l.false_49_
# was:	bne	_eq_L_45_, _eq_R_46_, l.false_49_
	li	x10, 1
# was:	li	_and_R_15_, 1
l.false_49_:
	beq	x10, x0, l.false_43_
# was:	beq	_and_R_15_, x0, l.false_43_
	li	x10, 1
# was:	li	_and_L_12_, 1
	j	l.end_44_
l.false_43_:
	li	x10, 0
# was:	li	_and_L_12_, 0
l.end_44_:
	beq	x10, x0, l.false_50_
# was:	beq	_and_L_12_, x0, l.false_50_
	li	x11, 3
# was:	li	_div_L_54_, 3
	li	x10, 1
# was:	li	_div_R_55_, 1
	div	x12, x11, x10
# was:	div	_eq_L_52_, _div_L_54_, _div_R_55_
	li	x10, 3
# was:	li	_eq_R_53_, 3
	li	x11, 0
# was:	li	_and_R_13_, 0
	bne	x12, x10, l.false_56_
# was:	bne	_eq_L_52_, _eq_R_53_, l.false_56_
	li	x11, 1
# was:	li	_and_R_13_, 1
l.false_56_:
	beq	x11, x0, l.false_50_
# was:	beq	_and_R_13_, x0, l.false_50_
	li	x10, 1
# was:	li	_and_L_10_, 1
	j	l.end_51_
l.false_50_:
	li	x10, 0
# was:	li	_and_L_10_, 0
l.end_51_:
	beq	x10, x0, l.false_57_
# was:	beq	_and_L_10_, x0, l.false_57_
	li	x11, 2
# was:	li	_div_L_63_, 2
	li	x10, 3
# was:	li	_div_R_64_, 3
	div	x11, x11, x10
# was:	div	_plus_L_61_, _div_L_63_, _div_R_64_
	li	x10, 4
# was:	li	_plus_R_62_, 4
	add	x10, x11, x10
# was:	add	_eq_L_59_, _plus_L_61_, _plus_R_62_
	li	x12, 2
# was:	li	_div_L_67_, 2
	li	x11, 3
# was:	li	_div_R_68_, 3
	div	x12, x12, x11
# was:	div	_plus_L_65_, _div_L_67_, _div_R_68_
	li	x11, 4
# was:	li	_plus_R_66_, 4
	add	x11, x12, x11
# was:	add	_eq_R_60_, _plus_L_65_, _plus_R_66_
	li	x12, 0
# was:	li	_and_R_11_, 0
	bne	x10, x11, l.false_69_
# was:	bne	_eq_L_59_, _eq_R_60_, l.false_69_
	li	x12, 1
# was:	li	_and_R_11_, 1
l.false_69_:
	beq	x12, x0, l.false_57_
# was:	beq	_and_R_11_, x0, l.false_57_
	li	x10, 1
# was:	li	_and_L_8_, 1
	j	l.end_58_
l.false_57_:
	li	x10, 0
# was:	li	_and_L_8_, 0
l.end_58_:
	beq	x10, x0, l.false_70_
# was:	beq	_and_L_8_, x0, l.false_70_
	li	x11, 2
# was:	li	_times_L_76_, 2
	li	x10, 3
# was:	li	_times_R_77_, 3
	mul	x10, x11, x10
# was:	mul	_div_L_74_, _times_L_76_, _times_R_77_
	li	x11, 4
# was:	li	_div_R_75_, 4
	div	x11, x10, x11
# was:	div	_eq_L_72_, _div_L_74_, _div_R_75_
	li	x12, 2
# was:	li	_times_L_80_, 2
	li	x10, 3
# was:	li	_times_R_81_, 3
	mul	x10, x12, x10
# was:	mul	_div_L_78_, _times_L_80_, _times_R_81_
	li	x12, 4
# was:	li	_div_R_79_, 4
	div	x12, x10, x12
# was:	div	_eq_R_73_, _div_L_78_, _div_R_79_
	li	x10, 0
# was:	li	_and_R_9_, 0
	bne	x11, x12, l.false_82_
# was:	bne	_eq_L_72_, _eq_R_73_, l.false_82_
	li	x10, 1
# was:	li	_and_R_9_, 1
l.false_82_:
	beq	x10, x0, l.false_70_
# was:	beq	_and_R_9_, x0, l.false_70_
	li	x10, 1
# was:	li	_and_L_6_, 1
	j	l.end_71_
l.false_70_:
	li	x10, 0
# was:	li	_and_L_6_, 0
l.end_71_:
	beq	x10, x0, l.false_83_
# was:	beq	_and_L_6_, x0, l.false_83_
	li	x11, 2
# was:	li	_div_L_89_, 2
	li	x10, 3
# was:	li	_div_R_90_, 3
	div	x11, x11, x10
# was:	div	_lt_L_87_, _div_L_89_, _div_R_90_
	li	x10, 3
# was:	li	_lt_R_88_, 3
	slt	x11, x11, x10
# was:	slt	_eq_L_85_, _lt_L_87_, _lt_R_88_
	li	x12, 2
# was:	li	_div_L_93_, 2
	li	x10, 3
# was:	li	_div_R_94_, 3
	div	x12, x12, x10
# was:	div	_lt_L_91_, _div_L_93_, _div_R_94_
	li	x10, 3
# was:	li	_lt_R_92_, 3
	slt	x12, x12, x10
# was:	slt	_eq_R_86_, _lt_L_91_, _lt_R_92_
	li	x10, 0
# was:	li	_and_R_7_, 0
	bne	x11, x12, l.false_95_
# was:	bne	_eq_L_85_, _eq_R_86_, l.false_95_
	li	x10, 1
# was:	li	_and_R_7_, 1
l.false_95_:
	beq	x10, x0, l.false_83_
# was:	beq	_and_R_7_, x0, l.false_83_
	li	x10, 1
# was:	li	_cond_5_, 1
	j	l.end_84_
l.false_83_:
	li	x10, 0
# was:	li	_cond_5_, 0
l.end_84_:
	bne	x10, x0, l.then_2_
# was:	bne	_cond_5_, x0, l.then_2_
	j	l.else_3_
l.then_2_:
	li	x18, 1
# was:	li	_tmp_96_, 1
# 	mv	_mainres_1_,_tmp_96_
	la	x10, s.true
# was:	la	x10, s.true
	bne	x18, x0, l.wBoolF_97_
# was:	bne	_mainres_1_, x0, l.wBoolF_97_
	la	x10, s.false
# was:	la	x10, s.false
l.wBoolF_97_:
	jal	p.putstring
# was:	jal	p.putstring, x10
	j	l.endif_4_
l.else_3_:
	li	x18, 0
# was:	li	_tmp_98_, 0
# 	mv	_mainres_1_,_tmp_98_
	la	x10, s.true
# was:	la	x10, s.true
	bne	x18, x0, l.wBoolF_99_
# was:	bne	_mainres_1_, x0, l.wBoolF_99_
	la	x10, s.false
# was:	la	x10, s.false
l.wBoolF_99_:
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