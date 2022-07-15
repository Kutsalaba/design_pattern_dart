import 'shape.dart';

class Rectangle extends Shape {
  late double height;
  late double width;

  Rectangle(String color, this.height, this.width) : super(color);

  Rectangle.initial() : super("black") {
    height = 100.0;
    width = 100.0;
  }

  Rectangle._clone(Rectangle source) : super.clone(source) {
    height = source.height;
    width = source.width;
  }

  @override
  Shape clone() {
    return Rectangle._clone(this);
  }

  @override
  void showFields() {
    print("The color of the Rectangle: $color");
    print("Height: $height, width: $width");
  }
}
