int factorial1(int n) {
  var result = n;
  var plusNumber = 1;
  for (int i = 1; i <= result; i++) {
    plusNumber = plusNumber * i;
  }
  return plusNumber;
}

int factorial2(int n) {
  if (n <= 1) {
    return 1;
  } else {
    return n * factorial2(n - 1);
  }
}

void main() {
  const n = 10;
  final fact = factorial2(n);
  print(factorial2(n));
  print(factorial1(n));
}

///펙토리얼 계산 함수
///n 입력받았을떄 n* (n-1) * (n-2) * ... * 1
///10 => 10* 9 * 8 *7*6*5*4*3*2*1
///반환타입 int
///함수 이름 factorial
///함수 인자 int n
///방범 두가지
///1. 반복문 -> 함수이름 factorial1
///2. 재귀함수 => 함수이름 factorial2

void re(int n) {
  // 특정한 조건이 도달하면 호출 X
  if (n > 0) {
    re(n);
  }
}
