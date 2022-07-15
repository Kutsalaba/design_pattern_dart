import 'shape.dart';

class Circle extends Shape {
  late double radius;

  Circle(String color, this.radius) : super(color);

  Circle.initial() : super("black") {
    radius = 50.0;
  }

  Circle.clone(Circle source) : super.clone(source) {
    radius = source.radius;
  }

  @override
  Shape clone() {
    return Circle.clone(this);
  }

  @override
  void showFields() {
    print("The color of the Circle: $color");
    print("Radius: $radius");
  }
}
