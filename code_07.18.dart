void main() {
  String str = 'hrllo world';
  Map<String, int> result = example(str);
  print(result); //
}

Map<String, int> example(String str) {
  final example = <String, int>{};
  for (var i = 0; i < str.length; i++) {
    String char = str[i];
    example[char] = (example[char] ?? 0) + 1;
  }
  return example;
}

//문자열 str을 전달받아서
//각 글자가 몇번 포함 되어이있는지 맵에 저장 후 반환
//'hrllo world' => {"h" : , "e" : 1,"l" : 3 ,"o" : 2, "d" : 1, " " : 1}
//반환타입 Map<String, Int>
//함수이름 example
//함수문자 String str
