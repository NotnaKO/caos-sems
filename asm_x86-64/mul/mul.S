.intel_syntax noprefix
.text
.globl mul_2, mul_3

mul_2:
    mov rax, rdi
    imul rax, 2
    ret

mul_3:
    mov rax, rdi
    imul rax, 3
    ret
