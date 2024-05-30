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
	li	x11, 3
# was:	li	_times_L_26_, 3
	li	x10, 5
# was:	li	_times_R_27_, 5
	mul	x11, x11, x10
# was:	mul	_eq_L_24_, _times_L_26_, _times_R_27_
	li	x10, 15
# was:	li	_eq_R_25_, 15
	li	x12, 0
# was:	li	_and_L_22_, 0
	bne	x11, x10, l.false_28_
# was:	bne	_eq_L_24_, _eq_R_25_, l.false_28_
	li	x12, 1
# was:	li	_and_L_22_, 1
l.false_28_:
	beq	x12, x0, l.false_29_
# was:	beq	_and_L_22_, x0, l.false_29_
	li	x10, 3
# was:	li	_negate_35_, 3
	sub	x10, x0, x10
# was:	sub	_times_L_33_, x0, _negate_35_
	li	x11, 5
# was:	li	_negate_36_, 5
	sub	x11, x0, x11
# was:	sub	_times_R_34_, x0, _negate_36_
	mul	x10, x10, x11
# was:	mul	_eq_L_31_, _times_L_33_, _times_R_34_
	li	x11, 15
# was:	li	_eq_R_32_, 15
	li	x12, 0
# was:	li	_and_R_23_, 0
	bne	x10, x11, l.false_37_
# was:	bne	_eq_L_31_, _eq_R_32_, l.false_37_
	li	x12, 1
# was:	li	_and_R_23_, 1
l.false_37_:
	beq	x12, x0, l.false_29_
# was:	beq	_and_R_23_, x0, l.false_29_
	li	x10, 1
# was:	li	_and_L_20_, 1
	j	l.end_30_
l.false_29_:
	li	x10, 0
# was:	li	_and_L_20_, 0
l.end_30_:
	beq	x10, x0, l.false_38_
# was:	beq	_and_L_20_, x0, l.false_38_
	li	x10, 3
# was:	li	_times_L_42_, 3
	li	x11, 5
# was:	li	_negate_44_, 5
	sub	x11, x0, x11
# was:	sub	_times_R_43_, x0, _negate_44_
	mul	x10, x10, x11
# was:	mul	_eq_L_40_, _times_L_42_, _times_R_43_
	li	x11, 15
# was:	li	_negate_45_, 15
	sub	x11, x0, x11
# was:	sub	_eq_R_41_, x0, _negate_45_
	li	x12, 0
# was:	li	_and_R_21_, 0
	bne	x10, x11, l.false_46_
# was:	bne	_eq_L_40_, _eq_R_41_, l.false_46_
	li	x12, 1
# was:	li	_and_R_21_, 1
l.false_46_:
	beq	x12, x0, l.false_38_
# was:	beq	_and_R_21_, x0, l.false_38_
	li	x10, 1
# was:	li	_and_L_18_, 1
	j	l.end_39_
l.false_38_:
	li	x10, 0
# was:	li	_and_L_18_, 0
l.end_39_:
	beq	x10, x0, l.false_47_
# was:	beq	_and_L_18_, x0, l.false_47_
	li	x11, 3
# was:	li	_times_L_51_, 3
	li	x10, 0
# was:	li	_times_R_52_, 0
	mul	x10, x11, x10
# was:	mul	_eq_L_49_, _times_L_51_, _times_R_52_
	li	x11, 0
# was:	li	_eq_R_50_, 0
	li	x12, 0
# was:	li	_and_R_19_, 0
	bne	x10, x11, l.false_53_
# was:	bne	_eq_L_49_, _eq_R_50_, l.false_53_
	li	x12, 1
# was:	li	_and_R_19_, 1
l.false_53_:
	beq	x12, x0, l.false_47_
# was:	beq	_and_R_19_, x0, l.false_47_
	li	x10, 1
# was:	li	_and_L_16_, 1
	j	l.end_48_
l.false_47_:
	li	x10, 0
# was:	li	_and_L_16_, 0
l.end_48_:
	beq	x10, x0, l.false_54_
# was:	beq	_and_L_16_, x0, l.false_54_
	li	x11, 3
# was:	li	_times_L_58_, 3
	li	x10, 1
# was:	li	_times_R_59_, 1
	mul	x10, x11, x10
# was:	mul	_eq_L_56_, _times_L_58_, _times_R_59_
	li	x11, 3
# was:	li	_eq_R_57_, 3
	li	x12, 0
# was:	li	_and_R_17_, 0
	bne	x10, x11, l.false_60_
# was:	bne	_eq_L_56_, _eq_R_57_, l.false_60_
	li	x12, 1
# was:	li	_and_R_17_, 1
l.false_60_:
	beq	x12, x0, l.false_54_
# was:	beq	_and_R_17_, x0, l.false_54_
	li	x10, 1
# was:	li	_and_L_14_, 1
	j	l.end_55_
l.false_54_:
	li	x10, 0
# was:	li	_and_L_14_, 0
l.end_55_:
	beq	x10, x0, l.false_61_
# was:	beq	_and_L_14_, x0, l.false_61_
	li	x11, 3
# was:	li	_times_L_65_, 3
	li	x10, 5
# was:	li	_times_R_66_, 5
	mul	x11, x11, x10
# was:	mul	_eq_L_63_, _times_L_65_, _times_R_66_
	li	x12, 5
# was:	li	_times_L_67_, 5
	li	x10, 3
# was:	li	_times_R_68_, 3
	mul	x10, x12, x10
# was:	mul	_eq_R_64_, _times_L_67_, _times_R_68_
	li	x12, 0
# was:	li	_and_R_15_, 0
	bne	x11, x10, l.false_69_
# was:	bne	_eq_L_63_, _eq_R_64_, l.false_69_
	li	x12, 1
# was:	li	_and_R_15_, 1
l.false_69_:
	beq	x12, x0, l.false_61_
# was:	beq	_and_R_15_, x0, l.false_61_
	li	x10, 1
# was:	li	_and_L_12_, 1
	j	l.end_62_
l.false_61_:
	li	x10, 0
# was:	li	_and_L_12_, 0
l.end_62_:
	beq	x10, x0, l.false_70_
# was:	beq	_and_L_12_, x0, l.false_70_
	li	x11, 2
# was:	li	_times_L_76_, 2
	li	x10, 3
# was:	li	_times_R_77_, 3
	mul	x11, x11, x10
# was:	mul	_times_L_74_, _times_L_76_, _times_R_77_
	li	x10, 4
# was:	li	_times_R_75_, 4
	mul	x11, x11, x10
# was:	mul	_eq_L_72_, _times_L_74_, _times_R_75_
	li	x10, 2
# was:	li	_times_L_78_, 2
	li	x12, 3
# was:	li	_times_L_80_, 3
	li	x13, 4
# was:	li	_times_R_81_, 4
	mul	x12, x12, x13
# was:	mul	_times_R_79_, _times_L_80_, _times_R_81_
	mul	x10, x10, x12
# was:	mul	_eq_R_73_, _times_L_78_, _times_R_79_
	li	x12, 0
# was:	li	_and_R_13_, 0
	bne	x11, x10, l.false_82_
# was:	bne	_eq_L_72_, _eq_R_73_, l.false_82_
	li	x12, 1
# was:	li	_and_R_13_, 1
l.false_82_:
	beq	x12, x0, l.false_70_
# was:	beq	_and_R_13_, x0, l.false_70_
	li	x10, 1
# was:	li	_and_L_10_, 1
	j	l.end_71_
l.false_70_:
	li	x10, 0
# was:	li	_and_L_10_, 0
l.end_71_:
	beq	x10, x0, l.false_83_
# was:	beq	_and_L_10_, x0, l.false_83_
	li	x11, 2
# was:	li	_times_L_89_, 2
	li	x10, 3
# was:	li	_times_R_90_, 3
	mul	x11, x11, x10
# was:	mul	_plus_L_87_, _times_L_89_, _times_R_90_
	li	x10, 4
# was:	li	_plus_R_88_, 4
	add	x11, x11, x10
# was:	add	_eq_L_85_, _plus_L_87_, _plus_R_88_
	li	x12, 2
# was:	li	_times_L_93_, 2
	li	x10, 3
# was:	li	_times_R_94_, 3
	mul	x10, x12, x10
# was:	mul	_plus_L_91_, _times_L_93_, _times_R_94_
	li	x12, 4
# was:	li	_plus_R_92_, 4
	add	x10, x10, x12
# was:	add	_eq_R_86_, _plus_L_91_, _plus_R_92_
	li	x12, 0
# was:	li	_and_R_11_, 0
	bne	x11, x10, l.false_95_
# was:	bne	_eq_L_85_, _eq_R_86_, l.false_95_
	li	x12, 1
# was:	li	_and_R_11_, 1
l.false_95_:
	beq	x12, x0, l.false_83_
# was:	beq	_and_R_11_, x0, l.false_83_
	li	x10, 1
# was:	li	_and_L_8_, 1
	j	l.end_84_
l.false_83_:
	li	x10, 0
# was:	li	_and_L_8_, 0
l.end_84_:
	beq	x10, x0, l.false_96_
# was:	beq	_and_L_8_, x0, l.false_96_
	li	x11, 2
# was:	li	_times_L_102_, 2
	li	x10, 3
# was:	li	_times_R_103_, 3
	mul	x10, x11, x10
# was:	mul	_div_L_100_, _times_L_102_, _times_R_103_
	li	x11, 4
# was:	li	_div_R_101_, 4
	div	x10, x10, x11
# was:	div	_eq_L_98_, _div_L_100_, _div_R_101_
	li	x12, 2
# was:	li	_times_L_106_, 2
	li	x11, 3
# was:	li	_times_R_107_, 3
	mul	x11, x12, x11
# was:	mul	_div_L_104_, _times_L_106_, _times_R_107_
	li	x12, 4
# was:	li	_div_R_105_, 4
	div	x11, x11, x12
# was:	div	_eq_R_99_, _div_L_104_, _div_R_105_
	li	x12, 0
# was:	li	_and_R_9_, 0
	bne	x10, x11, l.false_108_
# was:	bne	_eq_L_98_, _eq_R_99_, l.false_108_
	li	x12, 1
# was:	li	_and_R_9_, 1
l.false_108_:
	beq	x12, x0, l.false_96_
# was:	beq	_and_R_9_, x0, l.false_96_
	li	x10, 1
# was:	li	_and_L_6_, 1
	j	l.end_97_
l.false_96_:
	li	x10, 0
# was:	li	_and_L_6_, 0
l.end_97_:
	beq	x10, x0, l.false_109_
# was:	beq	_and_L_6_, x0, l.false_109_
	li	x10, 2
# was:	li	_times_L_115_, 2
	li	x11, 2
# was:	li	_times_R_116_, 2
	mul	x11, x10, x11
# was:	mul	_lt_L_113_, _times_L_115_, _times_R_116_
	li	x10, 3
# was:	li	_lt_R_114_, 3
	slt	x10, x11, x10
# was:	slt	_eq_L_111_, _lt_L_113_, _lt_R_114_
	li	x11, 2
# was:	li	_times_L_119_, 2
	li	x12, 2
# was:	li	_times_R_120_, 2
	mul	x12, x11, x12
# was:	mul	_lt_L_117_, _times_L_119_, _times_R_120_
	li	x11, 3
# was:	li	_lt_R_118_, 3
	slt	x11, x12, x11
# was:	slt	_eq_R_112_, _lt_L_117_, _lt_R_118_
	li	x12, 0
# was:	li	_and_R_7_, 0
	bne	x10, x11, l.false_121_
# was:	bne	_eq_L_111_, _eq_R_112_, l.false_121_
	li	x12, 1
# was:	li	_and_R_7_, 1
l.false_121_:
	beq	x12, x0, l.false_109_
# was:	beq	_and_R_7_, x0, l.false_109_
	li	x10, 1
# was:	li	_cond_5_, 1
	j	l.end_110_
l.false_109_:
	li	x10, 0
# was:	li	_cond_5_, 0
l.end_110_:
	bne	x10, x0, l.then_2_
# was:	bne	_cond_5_, x0, l.then_2_
	j	l.else_3_
l.then_2_:
	li	x18, 1
# was:	li	_tmp_122_, 1
# 	mv	_mainres_1_,_tmp_122_
	la	x10, s.true
# was:	la	x10, s.true
	bne	x18, x0, l.wBoolF_123_
# was:	bne	_mainres_1_, x0, l.wBoolF_123_
	la	x10, s.false
# was:	la	x10, s.false
l.wBoolF_123_:
	jal	p.putstring
# was:	jal	p.putstring, x10
	j	l.endif_4_
l.else_3_:
	li	x18, 0
# was:	li	_tmp_124_, 0
# 	mv	_mainres_1_,_tmp_124_
	la	x10, s.true
# was:	la	x10, s.true
	bne	x18, x0, l.wBoolF_125_
# was:	bne	_mainres_1_, x0, l.wBoolF_125_
	la	x10, s.false
# was:	la	x10, s.false
l.wBoolF_125_:
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