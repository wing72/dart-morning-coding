String findTheDifference(String s, String t) {
  // 두 문자열의 모든 문자를 더한 후 차이를 구함
  int charSumS = s.runes.fold(0, (sum, char) => sum + char);
  int charSumT = t.runes.fold(0, (sum, char) => sum + char);
  
  // t에서 추가된 문자의 유니코드 값을 반환
  return String.fromCharCode(charSumT - charSumS);
}

class solution{
  
  List<String>;
  
  List<String>;
  
}

void main({
  list result = substract

})
