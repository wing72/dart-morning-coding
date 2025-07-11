import 'dart:math';

List<int> lotto() {
  List<int> lottoList = [];

  var lottoNum;

  for (int i = 0; i < 6; i++) {
    lottoNum = Random().nextInt(45) + 1; //0이 나오면 안되서 +1; 1~45까지 의 랜덤 숫자 생성
    lottoList.add(lottoNum); // 랜덤 숫자 6개를 리스트에 추가
  }

  print('오늘의 당첨번호는?');
  print(lottoList); // 로또 번호 출력
  return lottoList;
}

List<int> lottoNumber() {
  List<int> lottoList = [];

  var num;

  for (int i = 0; i < 6; i++) {
    num = Random().nextInt(45) + 1; //0이 나오면 안되서 +1; 1~45까지 의 랜덤 숫자 생성
    lottoList.add(num); // 랜덤 숫자 6개를 리스트에 추가
  }

  print('당첨번호');
  print(lottoList); // 로또 당첨 번호 출력
  return lottoList;
}

List<int> myNumber() {
  List<int> myList = []; // 나의 번호를 저장할 리스트

  var num;

  for (int i = 0; i < 6; i++) {
    num = Random().nextInt(45) + 1; // 나의 번호 6개의 숫자를 생성
    myList.add(num); // 랜덤 숫자 6개를 리스트에 추가
  }

  print('내 번호'); // 내 번호 출력
  print(myList);
  return myList;
}

void checkNumber(lottoList, myList) {
  int match = 0;
  for (int lotto in lottoList) {
    for (int me in myList) {
      if (lotto == me) {
        match++;
        print('당첨 번호 $lotto'); // 내 번호중 당첨 번호와 일치하는 숫자 출력
      }
    }
  }
  print('당첨 번호와 일치하는 숫자는 $match 개 입니다.'); // 당첨 번호와 일치하는 숫자의 개수 출력
}

void main() {
  List<int> lottoFinal = lottoNumber();
  List<int> myFinal = myNumber();
  checkNumber(lottoFinal, myFinal);
}
