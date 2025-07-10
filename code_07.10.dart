void main() {
  List<int> digits = [0, 2, 3, 2]; // 예상 출력: [0, 2, 3, 3]
  print(addOne2(digits));
  List<int> digits2 = [3, 4, 8, 9]; // 예상 출력: [3, 4, 9, 0]
  print(addOne2(digits2));
  List<int> digits3 = [9, 9, 9, 9]; // 예상 출력: [1, 0, 0, 0, 0]
  print(addOne2(digits3));
}

List<int> addOne(List<int> digits) {
  for (int i = digits.length - 1; i >= 0; i--) {
    if (digits[i] < 9) {
      digits[i]++;
      return digits;
    }
    digits[i] = 0; // 현재 자리가 9인 경우, 0으로 설정하고 다음 자리로 이동
  }

  // 모든 자릿수가 9인 경우 맨 앞에 1 추가
  digits.insert(0, 1);
  return digits;
}

List<int> addOne2(List<int> digits) {
  for (var i = digits.length - 1; i >= 0; i--) {
    digits[i] += 1;
    if (digits[i] < 10) {
      return digits;
    }
    digits[i] = 0; // 현재 자리가 9인 경우, 0으로 설정하고 다음 자리로 이동
  }

  // 모든 자릿수가 9인 경우 맨 앞에 1 추가
  digits.insert(0, 1);
  return digits;
}
