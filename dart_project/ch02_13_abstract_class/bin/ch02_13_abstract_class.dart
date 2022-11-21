import 'inheritance/circle.dart';
import 'inheritance/retangle.dart';
import 'inheritance/shape.dart';

void main(List<String> arguments) {
  Circle circle = Circle(3);
  Retangle retangle = Retangle(5, 10.3);
  circle.getArea();
  retangle.getArea();

  printArea(circle);
  printArea(retangle);
}

void printArea(Shape shape) {
  print('면적: ${shape.getArea()}');
}
