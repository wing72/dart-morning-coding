void main() {
  print('AbcaBC : ${swapCase("AbcaBC")}');
  print('bbsDAAdaa : ${swapCase("bbsDAAdaa")}');
  print('A*&2bc52a1B1AC : ${swapCase("A*&2bc52a1B1AC")}');
}

String swapCase(String str) {
  List<int> codeUnits = str.codeUnits;
  List<int> swapCodeUnits = [];
  int length = codeUnits.length;
  for (var i = 0; i < length; i++) {
    int codeUnit = codeUnits[i];
    if (65 <= codeUnit && codeUnit <= 90) {
      codeUnit += 32;
    } else if (97 <= codeUnit && codeUnit <= 122) {
      // 소문자 => 대문자 : -32
      codeUnit -= 32;
    }
    swapCodeUnits.add(codeUnit);
  }
  return String.fromCharCodes(swapCodeUnits);
}



//문자열을 반환하는 함수
//문자열을 함의 인자로 전달받아서
//문자열 내의 소문자를 대문자를, 대문자는 소문자로 변경한후 새로운 문자열 변환
// 함수 이름은 swapCase
//아스키 코드표


