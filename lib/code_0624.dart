void main() {
  // 구구단 출력
  for (int x = 2; x <= 9; x++) {
    print("$x단");
    for (int y = 1; y <= 9; y++) {
      print("$x * $y = ${x * y}");
    }
  }
}
