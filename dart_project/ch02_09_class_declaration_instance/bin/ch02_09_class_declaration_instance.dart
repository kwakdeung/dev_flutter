// ch02_09_class_declaration_instance 3번

void main() {
  print('class 공부');
  // instance 인스턴스: object(객체) 생성
  Student boyStudent = Student();
  print(boyStudent.name);
  print(boyStudent.age);
  boyStudent.printInfo();

  boyStudent.name = '준영';
  boyStudent.age = 30;
  print(boyStudent.name);
  print(boyStudent.age);
  boyStudent.printInfo();
}

// Class(클래스): 객체지향프로그래밍(OOP)에서 특정 object(객체)를 생성하기 위해 정의하는 일종의 틀
// - class는 변수와 함수를 정의할 수 있다.
// - 비슷한 성격을 가진 연관있는 변수와 함수들을 한 class에 정의합니다.

// class 클래스명 {}
class Student {
  String name = 'Junyeong';
  int? age;

  void printInfo() {
    print('-----');
    print('name: $name');
    print('age: $age');
  }
}
