// 1. 사용자께서 작성하신 함수를 여기에 둡니다.
int findWithLinearSearch(String haystack, String needle) {
  if (needle.isEmpty) return 0;

  int m = haystack.length;
  int n = needle.length;

  for (int i = 0; i <= m - n; i++) {
    // Dart에서는 '=='로 문자열 내용을 비교할 수 있습니다.
    if (haystack.substring(i, i + n) == needle) {
      return i; // 일치하면 즉시 반환
    }
  }

  return -1;
}

// 2. 프로그램의 시작점인 main 함수입니다.
void main() {
  // ★★★ 바로 여기에 원하는 문자열을 입력합니다. ★★★
  String mainString = "hello flutter world"; // 검색 대상이 되는 전체 문자열
  String searchString = "flutter"; // 찾고 싶은 특정 문자열

  // 3. 위에서 정의한 문자열 변수를 함수에 전달하여 '호출'합니다.
  int foundIndex = findWithLinearSearch(mainString, searchString);

  // 4. 결과를 출력해서 확인합니다.
  if (foundIndex != -1) {
    print("1");
  } else {
    print("-0");
  }
  // 실행 결과: 'flutter'을(를) 인덱스 6에서 찾았습니다.
}
