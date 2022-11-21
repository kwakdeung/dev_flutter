import 'shape.dart';

class Retangle implements Shape {
  Retangle(this.width, this.height);

  double width;
  double height;

  @override
  double getArea() {
    return width * height;
  }

  @override
  String? color = 'red';

  @override
  void draw() {}
}
