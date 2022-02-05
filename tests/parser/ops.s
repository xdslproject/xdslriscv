# RUN: riscv-parser %s | filecheck %s

loadbyte:
	lb	t0, t2
	lb	t0, t2, 0
	lb	t0, t2, 12
	lb	t0, t2, -34
	lb	t0, 0(t2)
	lb	t0, 56(t2)
	lb	t0, -78(t2)

# CHECK: loadbyte:
# CHECK-NEXT: 	lb	t0, t2
# CHECK-NEXT: 	lb	t0, t2
# CHECK-NEXT: 	lb	t0, t2, 12
# CHECK-NEXT: 	lb	t0, t2, -34
# CHECK-NEXT: 	lb	t0, t2
# CHECK-NEXT: 	lb	t0, t2, 56
# CHECK-NEXT: 	lb	t0, t2, -78


loadbyteunsigned:
	lbu	t0, t2
	lbu	t0, t2, 0
	lbu	t0, t2, 12
	lbu	t0, t2, -34
	lbu	t0, 0(t2)
	lbu	t0, 56(t2)
	lbu	t0, -78(t2)

# CHECK: loadbyteunsigned:
# CHECK-NEXT: 	lbu	t0, t2
# CHECK-NEXT: 	lbu	t0, t2
# CHECK-NEXT: 	lbu	t0, t2, 12
# CHECK-NEXT: 	lbu	t0, t2, -34
# CHECK-NEXT: 	lbu	t0, t2
# CHECK-NEXT: 	lbu	t0, t2, 56
# CHECK-NEXT: 	lbu	t0, t2, -78


loadhalf:
	lh	t0, t2
	lh	t0, t2, 0
	lh	t0, t2, 12
	lh	t0, t2, -34
	lh	t0, 0(t2)
	lh	t0, 56(t2)
	lh	t0, -78(t2)

# CHECK: loadhalf:
# CHECK-NEXT: 	lh	t0, t2
# CHECK-NEXT: 	lh	t0, t2
# CHECK-NEXT: 	lh	t0, t2, 12
# CHECK-NEXT: 	lh	t0, t2, -34
# CHECK-NEXT: 	lh	t0, t2
# CHECK-NEXT: 	lh	t0, t2, 56
# CHECK-NEXT: 	lh	t0, t2, -78


loadhalfunsigned:
	lhu	t0, t2
	lhu	t0, t2, 0
	lhu	t0, t2, 12
	lhu	t0, t2, -34
	lhu	t0, 0(t2)
	lhu	t0, 56(t2)
	lhu	t0, -78(t2)

# CHECK: loadhalfunsigned:
# CHECK-NEXT: 	lhu	t0, t2
# CHECK-NEXT: 	lhu	t0, t2
# CHECK-NEXT: 	lhu	t0, t2, 12
# CHECK-NEXT: 	lhu	t0, t2, -34
# CHECK-NEXT: 	lhu	t0, t2
# CHECK-NEXT: 	lhu	t0, t2, 56
# CHECK-NEXT: 	lhu	t0, t2, -78


loadword:
	lw	t0, t2
	lw	t0, t2, 0
	lw	t0, t2, 12
	lw	t0, t2, -34
	lw	t0, 0(t2)
	lw	t0, 56(t2)
	lw	t0, -78(t2)

# CHECK: loadword:
# CHECK-NEXT: 	lw	t0, t2
# CHECK-NEXT: 	lw	t0, t2
# CHECK-NEXT: 	lw	t0, t2, 12
# CHECK-NEXT: 	lw	t0, t2, -34
# CHECK-NEXT: 	lw	t0, t2
# CHECK-NEXT: 	lw	t0, t2, 56
# CHECK-NEXT: 	lw	t0, t2, -78

storebyte:
	sb	t0, t2
	sb	t0, t2, 0
	sb	t0, t2, 12
	sb	t0, t2, -34
	sb	t0, 0(t2)
	sb	t0, 56(t2)
	sb	t0, -78(t2)

# CHECK: storebyte:
# CHECK-NEXT: 	sb	t0, t2
# CHECK-NEXT: 	sb	t0, t2
# CHECK-NEXT: 	sb	t0, t2, 12
# CHECK-NEXT: 	sb	t0, t2, -34
# CHECK-NEXT: 	sb	t0, t2
# CHECK-NEXT: 	sb	t0, t2, 56
# CHECK-NEXT: 	sb	t0, t2, -78

storehalf:
	sh	t0, t2
	sh	t0, t2, 0
	sh	t0, t2, 12
	sh	t0, t2, -34
	sh	t0, 0(t2)
	sh	t0, 56(t2)
	sh	t0, -78(t2)

# CHECK: storehalf:
# CHECK-NEXT: 	sh	t0, t2
# CHECK-NEXT: 	sh	t0, t2
# CHECK-NEXT: 	sh	t0, t2, 12
# CHECK-NEXT: 	sh	t0, t2, -34
# CHECK-NEXT: 	sh	t0, t2
# CHECK-NEXT: 	sh	t0, t2, 56
# CHECK-NEXT: 	sh	t0, t2, -78

storeword:
	sw	t0, t2
	sw	t0, t2, 0
	sw	t0, t2, 12
	sw	t0, t2, -34
	sw	t0, 0(t2)
	sw	t0, 56(t2)
	sw	t0, -78(t2)

# CHECK: storeword:
# CHECK-NEXT: 	sw	t0, t2
# CHECK-NEXT: 	sw	t0, t2
# CHECK-NEXT: 	sw	t0, t2, 12
# CHECK-NEXT: 	sw	t0, t2, -34
# CHECK-NEXT: 	sw	t0, t2
# CHECK-NEXT: 	sw	t0, t2, 56
# CHECK-NEXT: 	sw	t0, t2, -78


branches:
	beq	t0, t2, 0
	beq	t0, t2, 12
	beq	t0, t2, -34
	beq	t0, t2, branches
	bne	t0, t2, 0
	bne	t0, t2, 56
	bne	t0, t2, -78
	bne	t0, t2, branches
	blt	t0, t2, 0
	blt	t0, t2, 91
	blt	t0, t2, -23
	blt	t0, t2, branches
	bge	t0, t2, 0
	bge	t0, t2, 45
	bge	t0, t2, -67
	bge	t0, t2, branches
	bltu	t0, t2, 0
	bltu	t0, t2, 89
	bltu	t0, t2, -12
	bltu	t0, t2, branches
	bgeu	t0, t2, 0
	bgeu	t0, t2, 34
	bgeu	t0, t2, -56
	bgeu	t0, t2, branches

# CHECK: branches
# CHECK-NEXT	beq	t0, t2, 0
# CHECK-NEXT	beq	t0, t2, 12
# CHECK-NEXT	beq	t0, t2, -34
# CHECK-NEXT	beq	t0, t2, branches
# CHECK-NEXT	bne	t0, t2, 0
# CHECK-NEXT	bne	t0, t2, 56
# CHECK-NEXT	bne	t0, t2, -78
# CHECK-NEXT	bne	t0, t2, branches
# CHECK-NEXT	blt	t0, t2, 0
# CHECK-NEXT	blt	t0, t2, 91
# CHECK-NEXT	blt	t0, t2, -23
# CHECK-NEXT	blt	t0, t2, branches
# CHECK-NEXT	bge	t0, t2, 0
# CHECK-NEXT	bge	t0, t2, 45
# CHECK-NEXT	bge	t0, t2, -67
# CHECK-NEXT	bge	t0, t2, branches
# CHECK-NEXT	bltu	t0, t2, 0
# CHECK-NEXT	bltu	t0, t2, 89
# CHECK-NEXT	bltu	t0, t2, -12
# CHECK-NEXT	bltu	t0, t2, branches
# CHECK-NEXT	bgeu	t0, t2, 0
# CHECK-NEXT	bgeu	t0, t2, 34
# CHECK-NEXT	bgeu	t0, t2, -56
# CHECK-NEXT	bgeu	t0, t2, branches

shifts:
	sll 	t0, t1, t2
	slli 	t0, t1, 0
	slli 	t0, t1, 1
	slli 	t0, t1, 2
	srl 	t0, t1, t2
	srli 	t0, t1, 0
	srli 	t0, t1, 1
	srli 	t0, t1, 2
	sra 	t0, t1, t2
	srai 	t0, t1, 0
	srai 	t0, t1, 1
	srai 	t0, t1, 2

# CHECK: shifts:
# CHECK-NEXT: 	sll 	t0, t1, t2
# CHECK-NEXT: 	slli 	t0, t1, 0
# CHECK-NEXT: 	slli 	t0, t1, 1
# CHECK-NEXT: 	slli 	t0, t1, 2
# CHECK-NEXT: 	srl 	t0, t1, t2
# CHECK-NEXT: 	srli 	t0, t1, 0
# CHECK-NEXT: 	srli 	t0, t1, 1
# CHECK-NEXT: 	srli 	t0, t1, 2
# CHECK-NEXT: 	sra 	t0, t1, t2
# CHECK-NEXT: 	srai 	t0, t1, 0
# CHECK-NEXT: 	srai 	t0, t1, 1
# CHECK-NEXT: 	srai 	t0, t1, 2

arithmetic:
	add t0, t1, t2
	addi t0, t1, 0
	addi t0, t1, -12
	addi t0, t1, -34
	sub t0, t1, t2
	lui t0, 12
	lui t0, -34
	auipc t0, 12
	auipc t0, -34

# CHECK: arithmetic:
# CHECK-NEXT: 	add t0, t1, t2
# CHECK-NEXT: 	addi t0, t1, 0
# CHECK-NEXT: 	addi t0, t1, -12
# CHECK-NEXT: 	addi t0, t1, -34
# CHECK-NEXT: 	sub t0, t1, t2
# CHECK-NEXT: 	lui t0, 12
# CHECK-NEXT: 	lui t0, -34
# CHECK-NEXT: 	auipc t0, 12
# CHECK-NEXT: 	auipc t0, -34

logical:
	xor t0, t1, t2
	xori t0, t1, 0
	xori t0, t1, -12
	xori t0, t1, -34
	or t0, t1, t2
	ori t0, t1, 0
	ori t0, t1, -12
	ori t0, t1, -34
	and t0, t1, t2
	andi t0, t1, 0
	andi t0, t1, -12
	andi t0, t1, -34

# CHECK: logical:
# CHECK-NEXT: 	xor t0, t1, t2
# CHECK-NEXT: 	xori t0, t1, 0
# CHECK-NEXT: 	xori t0, t1, -12
# CHECK-NEXT: 	xori t0, t1, -34
# CHECK-NEXT: 	or t0, t1, t2
# CHECK-NEXT: 	ori t0, t1, 0
# CHECK-NEXT: 	ori t0, t1, -12
# CHECK-NEXT: 	ori t0, t1, -34
# CHECK-NEXT: 	and t0, t1, t2
# CHECK-NEXT: 	andi t0, t1, 0
# CHECK-NEXT: 	andi t0, t1, -12
# CHECK-NEXT: 	andi t0, t1, -34

compare:
	slt t0, t1, t2
	slti t0, t1, 0
	slti t0, t1, -12
	slti t0, t1, -34
	sltu t0, t1, t2
	sltui t0, t1, 0
	sltui t0, t1, -12
	sltui t0, t1, -34

# CHECK: compare:
# CHECK-NEXT: 	slt t0, t1, t2
# CHECK-NEXT: 	slti t0, t1, 0
# CHECK-NEXT: 	slti t0, t1, -12
# CHECK-NEXT: 	slti t0, t1, -34
# CHECK-NEXT: 	sltu t0, t1, t2
# CHECK-NEXT: 	sltui t0, t1, 0
# CHECK-NEXT: 	sltui t0, t1, -12
# CHECK-NEXT: 	sltui t0, t1, -34

jumpandlink:
	jal	t0, 0
	jal	t0, -12
	jal	t0, 32
	jal	t0, jumpandlink
	jalr	t0, t1, 0
	jalr	t0, t1, -12
	jalr	t0, t1, 32
	jalr	t0, t1, jumpandlink

# CHECK: jumpandlink:
# CHECK-NEXT: 	jal	t0, 0
# CHECK-NEXT: 	jal	t0, -12
# CHECK-NEXT: 	jal	t0, 32
# CHECK-NEXT: 	jal	t0, jumpandlink
# CHECK-NEXT: 	jalr	t0, t1, 0
# CHECK-NEXT: 	jalr	t0, t1, -12
# CHECK-NEXT: 	jalr	t0, t1, 32
# CHECK-NEXT: 	jalr	t0, t1, jumpandlink

multiplicative:
	mul 	t0, t1, t2
	mulh 	t0, t1, t2
	mulhsu 	t0, t1, t2
	mulhu 	t0, t1, t2
	mulhu 	t0, t1, t2
	div	t0, t1, t2
	divu	t0, t1, t2
	rem	t0, t1, t2
	remu	t0, t1, t2

# CHECK: 	multiplicative:
# CHECK-NEXT: 		mul 	t0, t1, t2
# CHECK-NEXT: 		mulh 	t0, t1, t2
# CHECK-NEXT: 		mulhsu 	t0, t1, t2
# CHECK-NEXT: 		mulhu 	t0, t1, t2
# CHECK-NEXT: 		mulhu 	t0, t1, t2
# CHECK-NEXT: 		div	t0, t1, t2
# CHECK-NEXT: 		divu	t0, t1, t2
# CHECK-NEXT: 		rem	t0, t1, t2
# CHECK-NEXT: 		remu	t0, t1, t2

system:
	scall
	sbreak

# CHECK: system:
# CHECK-NEXT: 	scall
# CHECK-NEXT: 	sbreak
