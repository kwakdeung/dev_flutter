// ch02_12_super_override

import 'inheritance/person.dart';

void main() {
  print('inheritance study');

  Person mom = Person(name: '엄마');
  mom.speak();
  mom.walk();

  print(mom.name);

  Hero child = Hero('자식');
  print(child.name);
  child.speak();
  child.walk();
  child.fly();

  Person child2 = Hero('자식2');
  child2.speak();
  child2.walk();

  speakName(mom);
  speakName(child);
  speakName(child2);
}

void speakName(Person person) {
  print('이름: ${person.name}');
}
