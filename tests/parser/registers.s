# RUN: riscv-parser %s | filecheck %s

registers:
# CHECK: registers:
	jal	x0, 0
# CHECK-NEXT: jal zero, 0
	jal	x1, 0
# CHECK-NEXT: jal ra, 0
	jal	x2, 0
# CHECK-NEXT: jal sp, 0
	jal	x3, 0
# CHECK-NEXT: jal gp, 0
	jal	x4, 0
# CHECK-NEXT: jal tp, 0
	jal	x5, 0
# CHECK-NEXT: jal t0, 0
	jal	x6, 0
# CHECK-NEXT: jal t1, 0
	jal	x7, 0
# CHECK-NEXT: jal t2, 0
	jal	x8, 0
# CHECK-NEXT: jal fp, 0
	jal	x9, 0
# CHECK-NEXT: jal s1, 0
	jal	x10, 0
# CHECK-NEXT: jal a0, 0
	jal	x11, 0
# CHECK-NEXT: jal a1, 0
	jal	x12, 0
# CHECK-NEXT: jal a2, 0
	jal	x13, 0
# CHECK-NEXT: jal a3, 0
	jal	x14, 0
# CHECK-NEXT: jal a4, 0
	jal	x15, 0
# CHECK-NEXT: jal a5, 0
	jal	x16, 0
# CHECK-NEXT: jal a6, 0
	jal	x17, 0
# CHECK-NEXT: jal a7, 0
	jal	x18, 0
# CHECK-NEXT: jal s2, 0
	jal	x19, 0
# CHECK-NEXT: jal s3, 0
	jal	x20, 0
# CHECK-NEXT: jal s4, 0
	jal	x21, 0
# CHECK-NEXT: jal s5, 0
	jal	x22, 0
# CHECK-NEXT: jal s6, 0
	jal	x23, 0
# CHECK-NEXT: jal s7, 0
	jal	x24, 0
# CHECK-NEXT: jal s8, 0
	jal	x25, 0
# CHECK-NEXT: jal s9, 0
	jal	x26, 0
# CHECK-NEXT: jal s10, 0
	jal	x27, 0
# CHECK-NEXT: jal s11, 0
	jal	x28, 0
# CHECK-NEXT: jal t3, 0
	jal	x29, 0
# CHECK-NEXT: jal t4, 0
	jal	x30, 0
# CHECK-NEXT: jal t5, 0
	jal	x31, 0
# CHECK-NEXT: jal t6, 0


abinames:
# CHECK-NEXT: abinames:
	jal	zero, 0
# CHECK-NEXT: jal zero, 0
	jal	ra, 0
# CHECK-NEXT: jal ra, 0
	jal	sp, 0
# CHECK-NEXT: jal sp, 0
	jal	gp, 0
# CHECK-NEXT: jal gp, 0
	jal	tp, 0
# CHECK-NEXT: jal tp, 0
	jal	t0, 0
# CHECK-NEXT: jal t0, 0
	jal	t1, 0
# CHECK-NEXT: jal t1, 0
	jal	t2, 0
# CHECK-NEXT: jal t2, 0
	jal	fp, 0
# CHECK-NEXT: jal fp, 0
	jal	s0, 0
# CHECK-NEXT: jal fp, 0
	jal	s1, 0
# CHECK-NEXT: jal s1, 0
	jal	a0, 0
# CHECK-NEXT: jal a0, 0
	jal	a1, 0
# CHECK-NEXT: jal a1, 0
	jal	a2, 0
# CHECK-NEXT: jal a2, 0
	jal	a3, 0
# CHECK-NEXT: jal a3, 0
	jal	a4, 0
# CHECK-NEXT: jal a4, 0
	jal	a5, 0
# CHECK-NEXT: jal a5, 0
	jal	a6, 0
# CHECK-NEXT: jal a6, 0
	jal	a7, 0
# CHECK-NEXT: jal a7, 0
	jal	s2, 0
# CHECK-NEXT: jal s2, 0
	jal	s3, 0
# CHECK-NEXT: jal s3, 0
	jal	s4, 0
# CHECK-NEXT: jal s4, 0
	jal	s5, 0
# CHECK-NEXT: jal s5, 0
	jal	s6, 0
# CHECK-NEXT: jal s6, 0
	jal	s7, 0
# CHECK-NEXT: jal s7, 0
	jal	s8, 0
# CHECK-NEXT: jal s8, 0
	jal	s9, 0
# CHECK-NEXT: jal s9, 0
	jal	s10, 0
# CHECK-NEXT: jal s10, 0
	jal	s11, 0
# CHECK-NEXT: jal s11, 0
	jal	t3, 0
# CHECK-NEXT: jal t3, 0
	jal	t4, 0
# CHECK-NEXT: jal t4, 0
	jal	t5, 0
# CHECK-NEXT: jal t5, 0
	jal	t6, 0
# CHECK-NEXT: jal t6, 0
