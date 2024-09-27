.intel_syntax noprefix
.text
.global fib

fib:
    # Base cases: fib(0) = 0, fib(1) = 1
    cmp rdi, 1 # if n <= 1
    jle .base_case

    # Recursive case: fib(n) = fib(n-1) + fib(n-2)
    mov rsi, 0
    mov rdx, 1
iter:
    mov rax, rsi # rax = fib(n-2)
    mov rsi, rdx # rsi = fib(n-1)
    add rdx, rax # rdx = fib(n-1) + fib(n-2) == fib(n)
    dec rdi # --n
    jnz iter
    mov rax, rdx # return fib(n)
    ret
.base_case:
    mov rax, rdi # return n
    ret