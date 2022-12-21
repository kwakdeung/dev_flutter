void main() {
  List<int> numbers = [1, 3, 5, 7, 9];

  final result = numbers.reduce((prev, next) => prev + next);

  print(result);

  List<String> words = [
    '안녕하세요 ',
    '저는 ',
    '곽준영입니다.',
  ];

  final sentence = words.fold<String>('', (prev, next) => prev + next);

  print(sentence);

  final count = words.fold<int>(0, (prev, next) => prev + next.length);

  print(count);
}
