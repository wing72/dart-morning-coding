int findWithLinearSearch(String haystack, String needle) {
  if (needle.isEmpty) return 0;
  
  int m = haystack.length;
  int n = needle.length;

  for (int i = 0; i <= m - n; i++) {
    // haystack의 i번째부터 n개의 문자를 잘라내어 needle과 통째로 비교
    if (haystack.substring(i, i + n) == needle) {
      return i; // 일치하면 즉시 반환
    }
  }

  return -1;
}
