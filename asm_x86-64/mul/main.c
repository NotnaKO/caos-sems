#include <assert.h>

int mul_2(int x);
int mul_3(int x);

int main() {
  assert(mul_2(3) == mul_3(2));
  assert(mul_2(mul_2(mul_2(1))) == 8);
}