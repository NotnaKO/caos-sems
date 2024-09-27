#include <assert.h>
#include <stdio.h>

int fib(int n);


int main() {
  assert(fib(5) == 8);
  assert(fib(19) + fib(20) == fib(21));
}