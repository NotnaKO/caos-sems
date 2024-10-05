.intel_syntax noprefix
.text
.global main
.extern printf

main:
    push rbx
    # Prepare the format string
    lea rdi, [rip+msg] # rdi = address of the message
    xor eax, eax  # Clear the EAX register (required for variadic functions)
    call printf
    pop rbx
    xor eax, eax
    ret

msg:
    .asciz "Hi!\n"