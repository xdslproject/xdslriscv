# RUN: riscv-parser %s | filecheck %s

nop:
	nop

# CHECK:      nop:
# CHECK-NEXT:     nop

li:
	li	t0, 0
	li	t0, 12345
	li	t0, -67890

# CHECK: 	li:
# CHECK-NEXT: 		li	t0, 0
# CHECK-NEXT: 		li	t0, 12345
# CHECK-NEXT: 		li	t0, -67890

mv:
	mv	t0, t0

# CHECK: 	mv:
# CHECK-NEXT: 		mv	t0, t0

not:
	not	t0, t0

# CHECK: 	not:
# CHECK-NEXT: 		not	t0, t0

neg:
	neg	t0, t0

# CHECK: 	neg:
# CHECK-NEXT: 		neg	t0, t0

negw:
	negw	t0, t0

# CHECK: 	negw:
# CHECK-NEXT: 		negw	t0, t0

seqz:
	seqz	t0, t0

# CHECK: 	seqz:
# CHECK-NEXT: 		seqz	t0, t0

snez:
	snez	t0, t0

# CHECK: 	snez:
# CHECK-NEXT: 		snez	t0, t0

sltz:
	sltz	t0, t0

# CHECK: 	sltz:
# CHECK-NEXT: 		sltz	t0, t0

sgtz:
	sgtz	t0, t0

# CHECK: 	sgtz:
# CHECK-NEXT: 		sgtz	t0, t0

beqz:
	beqz	t0, 0
	beqz	t0, -1
	beqz	t0, 1
	beqz	t0, beqz

# CHECK: 	beqz:
# CHECK-NEXT: 		beqz	t0, 0
# CHECK-NEXT: 		beqz	t0, -1
# CHECK-NEXT: 		beqz	t0, 1
# CHECK-NEXT: 		beqz	t0, beqz

bnez:
	bnez	t0, 0
	bnez	t0, -1
	bnez	t0, 1
	bnez	t0, bnez

# CHECK: 	bnez:
# CHECK-NEXT: 		bnez	t0, 0
# CHECK-NEXT: 		bnez	t0, -1
# CHECK-NEXT: 		bnez	t0, 1
# CHECK-NEXT: 		bnez	t0, bnez

blez:
	blez	t0, 0
	blez	t0, -1
	blez	t0, 1
	blez	t0, blez

# CHECK: 	blez:
# CHECK-NEXT: 		blez	t0, 0
# CHECK-NEXT: 		blez	t0, -1
# CHECK-NEXT: 		blez	t0, 1
# CHECK-NEXT: 		blez	t0, blez

bgez:
	bgez	t0, 0
	bgez	t0, -1
	bgez	t0, 1
	bgez	t0, bgez

# CHECK: 	bgez:
# CHECK-NEXT: 		bgez	t0, 0
# CHECK-NEXT: 		bgez	t0, -1
# CHECK-NEXT: 		bgez	t0, 1
# CHECK-NEXT: 		bgez	t0, bgez

bltz:
	bltz	t0, 0
	bltz	t0, -1
	bltz	t0, 1
	bltz	t0, bltz

# CHECK: 	bltz:
# CHECK-NEXT: 		bltz	t0, 0
# CHECK-NEXT: 		bltz	t0, -1
# CHECK-NEXT: 		bltz	t0, 1
# CHECK-NEXT: 		bltz	t0, bltz

bgtz:
	bgtz	t0, 0
	bgtz	t0, -1
	bgtz	t0, 1
	bgtz	t0, bgtz

# CHECK: 	bgtz:
# CHECK-NEXT: 		bgtz	t0, 0
# CHECK-NEXT: 		bgtz	t0, -1
# CHECK-NEXT: 		bgtz	t0, 1
# CHECK-NEXT: 		bgtz	t0, bgtz

bgt:
	bgt	t0, t1, 0
	bgt	t0, t1, -1
	bgt	t0, t1, 1
	bgt	t0, t1, bgt

# CHECK: 	bgt:
# CHECK-NEXT: 		bgt	t0, t1, 0
# CHECK-NEXT: 		bgt	t0, t1, -1
# CHECK-NEXT: 		bgt	t0, t1, 1
# CHECK-NEXT: 		bgt	t0, t1, bgt

ble:
	ble	t0, t1, 0
	ble	t0, t1, -1
	ble	t0, t1, 1
	ble	t0, t1, ble

# CHECK: 	ble:
# CHECK-NEXT: 		ble	t0, t1, 0
# CHECK-NEXT: 		ble	t0, t1, -1
# CHECK-NEXT: 		ble	t0, t1, 1
# CHECK-NEXT: 		ble	t0, t1, ble

bgtu:
	bgtu	t0, t1, 0
	bgtu	t0, t1, -1
	bgtu	t0, t1, 1
	bgtu	t0, t1, bgtu

# CHECK: 	bgtu:
# CHECK-NEXT: 		bgtu	t0, t1, 0
# CHECK-NEXT: 		bgtu	t0, t1, -1
# CHECK-NEXT: 		bgtu	t0, t1, 1
# CHECK-NEXT: 		bgtu	t0, t1, bgtu

bleu:
	bleu	t0, t1, 0
	bleu	t0, t1, -1
	bleu	t0, t1, 1
	bleu	t0, t1, bleu

# CHECK: 	bleu:
# CHECK-NEXT: 		bleu	t0, t1, 0
# CHECK-NEXT: 		bleu	t0, t1, -1
# CHECK-NEXT: 		bleu	t0, t1, 1
# CHECK-NEXT: 		bleu	t0, t1, bleu

ret:
	ret

# CHECK:	ret:
# CHECK-NEXT:		ret
