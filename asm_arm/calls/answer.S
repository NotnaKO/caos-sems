.text
.globl main

main:
    # syscall number for write
    mov x8, 64
    # file descriptor 1 (stdout)
    mov x0, 1
    # address of the message
    ldr x1, =msg
    # length of the message
    mov x2, 3
    svc 0

    mov x0, 0
    ret

msg:
    .ascii "Hi!"