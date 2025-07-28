void main() {
  DateTime target1 = DateTime(2025, 07, 28, 09, 10);
  print(formatDate(target1));
  DateTime target2 = DateTime(2025, 07, 28, 08, 30);
  print(formatDate(target2));
  DateTime target3 = DateTime(2025, 07, 28, 01, 10);
  print(formatDate(target3));
  DateTime target4 = DateTime(2025, 07, 27, 01, 10);
  print(formatDate(target4));
  DateTime target5 = DateTime(2025, 06, 28, 01, 10);
  print(formatDate(target5));
  DateTime now = DateTime.now();

  print(now.year);
  print(now.month);
  print(now.day);
  print(now.hour);
  print(now.minute);
  print(now.second);
}

/// 날짜를 문자열로 변환
/// (1시간 이내라면 00분전,
/// 24시간 이내라면 00 시간전,
/// 7일 이내라면 00알전,
/// 아니라면 0000년 00월 00일

///*시간관련 함수들?
/// now.toUtc();//표준시 서버시간등으로 사용
/// now.toLocal();
/// target.toIso8601String();//국제 표준시

String formatDate(DateTime target) {
  DateTime now = DateTime.now();

  final gapSecond =
      (now.millisecondsSinceEpoch - target.millisecondsSinceEpoch) / 1000;
  //int hour = 60 + 60;
  if (gapSecond <= 3600) {
    // 00분전
    return "${gapSecond ~/ 60}분경";
  } else if (gapSecond <= 86400) {
    // 00시간전 24시간전 => 3600초 (60초 + 60분)) + 24
    // 00시간전
    return "${gapSecond ~/ 60 ~/ 60}시간전";
    // return
  } else if (gapSecond <= 604800) {
    // 00일전
    return "${gapSecond ~/ 60 ~/ 60 ~/ 24}일전";
  }
  return "${target.year}년 ${target.month}월 ${target.day}일";
}
