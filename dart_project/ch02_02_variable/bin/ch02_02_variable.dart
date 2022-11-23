// ch02_02_variable

void main() {}

void basic1Variable() {
// 변수
  // 1. 선언법
  // var 변수타입 변수명 = 값;
  var name = 'Voyager I'; // 문자열 값
  var year = 1977; // 정수값
  var antennaDiameter = 3.7; // 실수값
  var flybyObjects = [
    'Jupiter',
    'Saturn',
    'Uranus',
    'Neptune',
  ]; // 문자열이 담긴 list 값
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg'
  }; // Map 값

  print(name);
  print(year);
  print(antennaDiameter);
  print(flybyObjects);
  print(image);
}

void basic2String() {
  // 2. 변수 타입
  // 문자열 값 = String
  String name = 'Bora';
  String nickname = 'Dabo';

  print(name);
  print(nickname);
  print('name: $name');
  print('nickname: $nickname');
}

void basic3NumberType() {
  // 2. 변수 타입
  // 숫자값 = 정수(int), 실수(double, 소수점 0)

  int num1 = 3;
  int num2 = 2;
  print(num1 + num2);
  print(num1 - num2);
  print(num1 * num2);
  print(num1 / num2);
  print(num1 % num2);

  int age = 24;
  double width = 30; // 30.0
  double height = 170.3;
  print(age);
  print(height);
  print('--------');
  // 값 변경
  // 변수명 = 변경될 값
  age = age + 1;
  age++;
  ++age;
  age++;
  age--;
  --age;
  age--;
  print(age);

  // age = age + 1.1; 정수 값에 실수 값을 담지 못한다.
  height = height + 1; // 실수 값에 정수 값을 담을 수 있다.
  print(height);

  width = width + 3;
  print(width);

  width = width + 3.4;
  print(width);
}

void basic4Boolean() {
  // 2. 변수 타입
  // boolean값 = bool
  bool isShow = false;
  print('isShow = $isShow');

  bool isTrue = 4 > 10;
  print('isTrue = 4 > 10 => $isTrue');

  bool isTrue2 = (4 == 10);
  print('isTrue2 = 4 > 10 => $isTrue2');
  // 변수 규칙 1. 기존 선언되었던 이름으로 중복해서 선언할 수 없다.(unique)
  // 변수 규칙 2. 변수명은 소문자로 시작, 띄어쓰기가 안된다.  카멜 표기법으로 작성한다.
  // 띄어쓰기가 필요하다면 첫단어 대문자로 표기 = 카멜 표기법 (eg. isShowTrue)
  isTrue2 = (4 == 4);
  print('isTrue2 = 4 == 4 => $isTrue2');

  isTrue2 = (4 == 4.0);
  print('isTrue2 = 4 == 4.0 => $isTrue2');
  // AND 조건
  isTrue2 = (4 == 4.0) && (2 == 2.0);
  print('isTrue2 = (4 == 4.0) && (2 == 2.0) => $isTrue2');
  // AND 조건
  isTrue2 = (4 == 4.0) && (2 == 2.2);
  print('isTrue2 = (4 == 4.0) && (2 == 2.2) => $isTrue2');
  // OR 조건
  isTrue2 = (4 == 4.0) || (2 == 2.2);
  print('isTrue2 = (4 == 4.0) || (2 == 2.2) => $isTrue2');
  // OR 조건
  isTrue2 = (4 == 4.2) || (2 == 2.2);
  print('isTrue2 = (4 == 4.2) || (2 == 2.2) => $isTrue2');
}
