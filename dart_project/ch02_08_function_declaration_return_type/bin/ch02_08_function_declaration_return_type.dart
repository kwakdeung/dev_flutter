// ch02_08_function_declaration_return_type 3번

void main() {
  print('여기서 작성');
  basic19forIn();
  String message = functionStudyReturnType();
  print(message);
  print(plus(1, 2));

  plus(3, 5);

  plus(10, 2);
}

// 반환타입 함수명(매개변수) {
//  실행문;
// }
int plus(int a, int b) {
  print('$a+$b = ${a + b}');
  int sum = a + b;
  return sum;
}

String functionStudyReturnType() {
  print('functionStudyReturnType1');
  print('functionStudyReturnType2');
  return '완료';
}

void basic19forIn() {
  print('basic19forIn');
}
