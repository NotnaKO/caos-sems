.intel_syntax noprefix
.text
.global main
.extern printf

main:
    # Prepare the format string
    lea rdi, [rip+msg] # rdi = address of the message
    xor eax, eax  # Clear the EAX register (required for variadic functions)
    call printf

    xor eax, eax
    ret

msg:
    .asciz "Hi!\n"