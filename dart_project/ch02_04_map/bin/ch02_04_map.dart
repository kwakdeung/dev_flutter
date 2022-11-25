// ch02_04_map
void main() {}

void basic1Map() {
  // Map : key, value pair(한쌍) 이뤄진 자료 구조
  // map 선언 방법
  // Map 변수명 = {key: value, key: value,}
  // map 특징
  // 1. key 값이 중복되면 안된다.
  Map<int, String> map = {
    22342: '홍길동',
    456: '민지',
    89: '지영',
  };
  print(map);
  // get [key]
  print(map['456']);
  print(map[456]);
  print('------');

  Map<String, dynamic> joinInputForm = {
    'name': 'Junyeong',
    'age': 30,
    'height': 173.5,
    'bool': true,
    'list': [true, true, true, true],
    'phone': '010 - 1234 - 1234',
  };
  print(joinInputForm['name']);
  print(joinInputForm['list']);
  print(joinInputForm);
}

void basic2MapCUD() {
  Map map = {
    'key1': 'value1',
    'key2': 'value2',
    'key3': 'value3',
  };
  map['key3'] = 'Junyeong';
  print(map);

// key 값 할당
// key 값 없다? = 선언 insert
  map['name'] = 'Junyeong';
  print(map);
  print(map['name']);

// key 값 있다? = update
  map['name'] = '민지';
  print(map);
  print(map['name']);

// delete
  map.remove('name');
  print(map);
  print(map['name']);
}

void basic3Operator() {
  Map<String, dynamic> joinInputForm = {
    'name': 'Junyeong',
    'age': 30,
    'height': 173.5,
    'phone': '010 - 1234 - 1234',
  };

  print('joinInputForm = $joinInputForm');
  // key 목록 .keys
  print('joinInputForm.keys.toList() ${joinInputForm.keys.toList()}');
  // map 길이, 개수
  print(joinInputForm.length);
  // value 목록 .values
  print(joinInputForm.values.toList());
  print('------');

  // 모든 요소를 다 지운다.
  // map 빈 map으로 바꾼다 (empty)
  joinInputForm.clear();
  print(joinInputForm);

  // 포함 여부 판단
  print(joinInputForm.containsKey('name'));
  print(joinInputForm.containsKey('width'));
}
