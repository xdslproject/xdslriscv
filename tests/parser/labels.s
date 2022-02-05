# RUN: riscv-parser %s | filecheck %s

foo:
	add a0, a0, a0

# CHECK: foo:
# CHECK-NEXT: add a0, a0, a0

bar:
	add a0, a0, a0

# CHECK: bar:
# CHECK-NEXT: add a0, a0, a0
