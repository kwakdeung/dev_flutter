// Class(클래스): 객체지향프로그래밍(OOP)에서 특정 object(객체)를 생성하기 위해 정의하는 일종의 틀
// - class는 변수와 함수를 정의할 수 있다.
// - 비슷한 성격을 가진 연관있는 변수와 함수들을 한 class에 정의합니다.

// class 클래스명 {}
class Student {
  // 생성자 contructor
  // Student();
  Student({required String name, this.age}) : _name = '$name 학생';

  // private
  String _name;
  // public
  int? age;

  set name(String value) {
    _name = '$value 학생';
  }

  String get name => _name;

  void printInfo() {
    print('-----');
    print('name: $_name');
    print('age: $age');
    print('-----');
  }
}
