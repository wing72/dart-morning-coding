void main() {
  //위에서 호출
  print('2 ${isPrime(2)}'); //true
  print('4 ${isPrime(4)}'); //false, 1,2,4
  print('6 ${isPrime(6)}'); //false
  print('7 ${isPrime(7)}'); //true
  print('9 ${isPrime(9)}'); //false
  print('13 ${isPrime(13)}'); //true
}
// 소수인지 판매별하는 함수
// 1과 자기자신으로만 나누어지는 수면 true 리턴
// 아니라면 false 리턴
// 함수 반환타입 bool
// 함수 이름  isPrime
// 함수 인지 int number
//아래에서 구현

bool isPrime(int number) {
  final harf = number ~/ 2;
  for (var i = 2; i < harf; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

// bool isPrime(int number) {
//   for (var i = 2; i < number; i++) {
//     if (number % i == 0) {
//       return false;
//     }
//   }
//   return true;
// }
