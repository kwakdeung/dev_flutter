// ch02_11_getter_setter_restricted_access 3번

import 'class/student.dart';

void main() {
  print('class 공부');
  // instance 인스턴스: object(객체) 생성
  Student boyStudent = Student(
    name: '준영',
    age: 30,
  );
  boyStudent.printInfo();

  boyStudent.age = 24;
  boyStudent.printInfo();
}
