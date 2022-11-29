// ch02_06_control

void main() {}

void basic1if() {
  // 조건문
  // if: 만약 ~ 라면
  // 형태:
  // if (조건문) {
  //   실행문;
  // }
  print('start');
  int number = 454;
  // if-else 문
  if (number % 4 == 0) {
    // 참
    print('$number 값은 4의 배수입니다.');
  } else {
    // 거짓
    print('나머지값: ${number % 4}');
    print('$number 값은 4의 배수가 아닙니다.');
  }
  print('end');
}

void basic2ElseIf() {
  int number = 9;

  // else if 문
  if (number % 5 == 0) {
    print('5의 배수입니다.');
  } else if (number % 4 == 0) {
    print('4의 배수입니다.');
  } else if (number % 3 == 0) {
    print('3의 배수입니다.');
  } else if (number % 2 == 0) {
    print('2의 배수입니다.');
  } else {
    print('5, 4, 3, 2의 배수가 아닙니다.');
  }
}

void basic3Switch() {
  // switch
  // switch(변수) {
  //   case 값1:
  //     실행문1
  //     break;
  //   case 값2:
  //     실행문2
  //     break;
  //   default:
  //     실행문3
  // }
  int number = 37;
  switch (number % 10) {
    case 1:
      print('나머지값이 1입니다.');
      break;
    case 2:
      print('나머지값이 2입니다.');
      break;
    case 3:
      print('나머지값이 3입니다.');
      break;
    default:
      print('나머지값이 1,2,3이 아닙니다.');
  }
}
