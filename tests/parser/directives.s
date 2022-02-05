# RUN: riscv-parser %s | filecheck %s

.asciz "somestring"
# CHECK: .asciz "somestring"

.section .text
# CHECK: .section .text

.global getasm
# CHECK: .global getasm

