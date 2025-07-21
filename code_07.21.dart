void main() {
  print('myProject : ${camelToSnakeCase("myProject")}');
  print('thisIsDart : ${camelToSnakeCase("thisIsDart")}');
  print('hi : ${camelToSnakeCase("hi")}');
}

String camelToSnakeCase(String camelStr) {
  List<int> codeUits = camelStr.codeUnits;
  List<int> newCodeUnits = [];
  for (var i = 0; i < codeUits.length; i++) {
    int codeCode = codeUits[i];
    //대문자일 때 => 언더스코어 + 소문자 변환
    if (65 <= codeCode && codeCode <= 90) {
      //대문자 인경우
      newCodeUnits.add(95);
      newCodeUnits.add(codeCode + 32);
    } else {
      newCodeUnits.add(codeCode);
    }
  }
  return String.fromCharCodes(newCodeUnits);
}

//카멜케이스를 입력해서 스네이크 케이스로 변환
// 변환타입 : String
// 함수명 : camelToSnakeCase
// 함수인지 : String camelStr
// 예시1 : myProject => my_project
// 예시2 : thisIsDart => this_is_dart
