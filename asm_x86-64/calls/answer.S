.intel_syntax noprefix
.text
.global main

main:
    mov rax, 1          # syscall number for write
    mov rdi, 1          # file descriptor 1 (stdout)
    lea rsi, [rip+msg]  # address of the message
    mov rdx, 3          # length of the message
    syscall

    xor rax, rax
    ret

msg:
    .ascii "Hi!"