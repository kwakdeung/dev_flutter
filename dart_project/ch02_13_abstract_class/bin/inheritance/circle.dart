import 'shape.dart';

class Circle implements Shape {
  Circle(this.radius);

  double radius;

  @override
  double getArea() {
    return radius * radius * 3.14;
  }

  @override
  String? color;

  @override
  void draw() {}
}
