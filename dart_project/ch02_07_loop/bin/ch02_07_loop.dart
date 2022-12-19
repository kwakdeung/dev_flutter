// ch02_07_loop 3번

import 'dart:math';

void main() {}

void basic1while() {
  // 반복문
  // while(반복 횟수 중요X), for(반복 횟수 중요O)
  // 반복 횟수가 중요한가?
  // while (조건문이 참일 경우) {
  //   실행문이 반복합니다.
  // }
  double weight = 65;
  int count = 0;

  while (weight > 50) {
    print('총 몸무게:$weight');
    count++;
    print('줄넘기 횟수: $count');

    var removeWeight = Random().nextInt(2);
    weight = weight - removeWeight;
    print('감량 무게:$removeWeight kg');
    print('총 몸무게:$weight kg');
    print('-----');
  }
}

void basic2for() {
  // 반복문
  // while(반복 횟수 중요X), for(반복 횟수 중요O)
  // 반복 횟수가 중요한가?

  final scoreList = [42, 52, 68, 50, 90, 30, 100, 88, 90];

  int i = 1;
  for (var score in scoreList) {
    if (score >= 60) {
      print(' 합격입니다. 점수:$score');
    } else {
      print(' 불합격입니다. 점수:$score');
    }
    i++;
  }

  for (var i = 0; i < scoreList.length; i++) {
    if (scoreList[i] >= 60) {
      print('${i + 1}번째 합격입니다. 점수:${scoreList[i]}');
    } else {
      print('${i + 1}번째 불합격입니다. 점수:${scoreList[i]}');
    }
  }

  // for loop
  final count = 3;
  for (var i = 0; i < count; i++) {
    print(i);
  }
}
