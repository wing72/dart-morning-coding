bool isAnagram(String s, String t) {
  List<String> sSplited = s.split('');
  List<String> tSplited = t.split('');

  sSplited.sort();
  tSplited.sort();

  for (int i = 0; i < sSplited.length; i++) {
    if (sSplited[i] != tSplited[i]) {
      return false;
    }
  }
  return true;
}
// String s = "cat";
// String t = "dog";

// print(isAnagram(s, t)); // 예상 출력: false

void main() {
  String s = "anagram";
  String t = "nagaram";

  String s1 = "eve";
  String t1 = "kain";

  String s2 = "cass";
  String t2 = "ashe";

  print(isAnagram(s, t)); // 예상 출력: true
  print(isAnagram(s1, t1)); // 예상 출력: false
  print(isAnagram(s2, t2)); // 예상 출력: false
}
