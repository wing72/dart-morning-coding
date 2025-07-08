void main() {
  String s = 'abcabc';
  bool repeate(String s) {
    int len = s.length;

    ///6

    for (int i = 1; i <= len ~/ 2; i++) {
      //
      if (len % i == 0) {
        String pattenrn = s.substring(0, i);
        String repeatedPattern = pattenrn * (len ~/ i);
        if (repeatedPattern == s) {
          return true;
        }
      }
    }
    return false;
  }

  print(repeate(s)); // 예상 출력:true
}
