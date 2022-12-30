void main() {
  _Idol blackPink = _Idol(
    '블랙핑크',
    ['지수', '제니', '리사', '로제'],
  );

  _Idol bts = _Idol.fromList([
    ['RM', '진', '슈가', '제이홉', '지민', '뷔', '정국'],
    'BTS',
  ]);

  print(blackPink._firstMember);
  print(bts._firstMember);

  print(blackPink._firstMember);
  print(bts._firstMember);
  print(blackPink.getFirstMember());
}

// getter / setter
// 데이터를 가져올 때 / 데이터를 설정할 때
class _Idol {
  final String name;
  final List<String> members;

  _Idol(this.name, this.members);

  _Idol.fromList(List values)
      : this.members = values[0],
        this.name = values[1];

  void sayHello() {
    print('안녕하세요 ${this.name}입니다.');
  }

  void introduce() {
    print('저희 멤버는 ${this.members}가 있습니다.');
  }

  String getFirstMember() {
    return this.members[0];
  }

  // getter
  String get _firstMember {
    return this.members[0];
  }
}
