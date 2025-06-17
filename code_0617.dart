int strStr(String s, String t) {
  if (t.isEmpty) {
    return 0;
  }
  return s.indexOf(t);
}

void main() {
  print(strStr("flutterworld hello", "flutterworld"));
  print(strStr("word", "post"));
}
