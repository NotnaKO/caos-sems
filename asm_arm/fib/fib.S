.text
.globl fib

fib:
    # Base cases: fib(0) = 0, fib(1) = 1
    cmp x0, 1
    ble .base_case

    # Recursive case: fib(n) = fib(n-1) + fib(n-2)
    mov x1, 0
    mov x2, 1
iter:
    mov x3, x1
    mov x1, x2
    # fib(n-1) + fib(n-2) == fib(n)
    add x2, x2, x3
     # --n
    sub x0, x0, 1
    cbnz x0, iter
    mov x0, x2
    ret
.base_case:
    ret