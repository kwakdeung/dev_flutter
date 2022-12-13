// ch02_03_list_set 3번

void main() {}

void basic1List() {
  // list
  // <>제네릭 타입: eg. List<String> = List 안의 값들은 String 타입으로 제한함
  List<String> stringList = <String>[];
  print(stringList);
  print(stringList.length);

  // list안에 값을 더할 때 add()
  stringList.add('a');
  stringList.add('b');
  print(stringList);
  // list 길이 값 .length
  print(stringList.length);

  stringList.add('c');
  print(stringList);
  print(stringList.length);

  // list 안에 값을 get (index 기반)
  // index를 접근할 때는 0부터 시작한다.
  print(stringList[2]);

  // list는 순서가 보장된다.
  stringList.add('ㅎ');
  stringList.add('2');
  stringList.add('3');
  stringList.add('1');
  stringList.add('4');
  print(stringList);
}

void basic2Set() {
// set 선언방법
  Set<String> set = {};
  set.add('a');
  set.add('b');
  set.add('c');
  set.add('a');
  print(set);
  print(set.length);
  // set
  // 특징1. 순서 보장이 안되는 열거 타입이다.
  // 인덱스 접근 X
  // print(set[2]);

  // 특징2. 중복을 허용하지 않습니다.
  set.add('a');
  print(set);

  // 특징3. list보다 빠르다.
}

void basic3ListOperator() {
  List<String> list = [];
  list.add('a');
  print(list);
  list.addAll(['b', 'c', 'a']);
  print(list);
  print(list[0]);
  print(list[3]);

  print(list.length);

  // 포함 여부를 확인할 수 있는 연산자
  print(list.contains('a'));
  print(list.contains('4'));
  print(list.contains('b'));

  print(list.last);
  print(list.first);
  // index 기반으로 값을 수정할 때
  list[0] = 'a';
  list[1] = '나';
  list[2] = '다';
  list[3] = '라';
  print(list);

  print('------');
  // 삭제
  list.remove('라');
  print(list);
  list.remove('a');
  print(list);
  list.removeAt(0); // 순서
  print(list);
}
