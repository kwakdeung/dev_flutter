// ch02_05_nullable_final_const 3번

void main() {}

void basic1VarDynamicType() {
  // var = 타입 추론 가능한 타입
  // 타입 추론이 아닌 타입을 명시를 권장
  String name = 'Voyager I'; // 문자열 값
  int year = 1977; // 정수값
  name = '';
  name = 'dsfdf';
  name = 'sdfsdf';

  // dynamic = 여러 타입을 받을 수 있는 변수 타입
  dynamic varTest = 'Junyeong';
  varTest = 3;
  varTest = 3.2;
  varTest = true;
  print(varTest);
}

void basic2EmptyNull() {
  // non-nullable: null 값 허용되지 않음
  String? nonNullable = '';
  print('nonNullable = $nonNullable');
  print('------');
  // nullable: null 값 허용
  // (작성법)
  // 변수타입?
  String? name; // 빈값
  print(name);

  name = 'Junyeong';
  print(name);

  name = null; // 널값 Null
  print(name);
}

void basic3FinalConst() {
  // final 상수 : 변치 않는 데이터 (run-time 때 값이 할당)
  // const 상수 : 변치 않는 데이터 (compile-time 때 값이 할당)
  const String name = 'Junyeong';
  print(name);

  final DateTime now1 = DateTime.now();
  print(now1);

  Future.delayed(Duration(seconds: 1), () {
    final DateTime now2 = DateTime.now();
    print('--------');
    print(now1);
    print(now2);
  });
}
