import 'class/student.dart';

void main() {
  print('class 공부');
  // instance 인스턴스: object(객체) 생성
  Student girlStudent = Student(
    name: '나연',
    age: 22,
  );
  girlStudent.printInfo();

  girlStudent.age = 24;
  girlStudent.printInfo();
}
