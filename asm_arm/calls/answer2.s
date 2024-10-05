.text
.globl main
.extern printf

.macro push Xn
    sub sp, sp, 8
    str \Xn, [sp]
  .endm

  .macro pop Xn
    ldr \Xn, [sp]
    add sp, sp, 8
  .endm


main:
    # Prepare stack
    push x30
    push x29
    mov x29, sp

    # Prepare the format string
    # x0 = address of the message
    ldr x0, =msg
    bl printf

    pop x29
    pop x30
    mov x0, 0
    ret
msg:
    .asciz "Hi!\n"
