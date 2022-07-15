enum ShapeType { triangle, rectangle, circle }

abstract class Shape {
  String? color;

  factory Shape(ShapeType type, String color) {
    switch (type) {
      case ShapeType.triangle:
        return Triangle(color);
      case ShapeType.rectangle:
        return Rectangle(color);
      case ShapeType.circle:
        return Circle(color);
      default:
        throw '>>>Can\'t create $type.';
    }
  }

  void draw();
}

class Triangle implements Shape {
  Triangle(this.color);

  @override
  String? color;

  @override
  void draw() {
    print("This shape is TRIANGLE, color $color");
  }
}

class Rectangle implements Shape {
  Rectangle(this.color);

  @override
  String? color;

  @override
  void draw() {
    print("This shape is RECTANGLE, color $color");
  }
}

class Circle implements Shape {
  Circle(this.color);

  @override
  String? color;

  @override
  void draw() {
    print("This shape is CIRCLE, color $color");
  }
}

void main(List<String> args) {
  final Shape shape1 = Shape(ShapeType.triangle, "blue");
  final Shape shape2 = Shape(ShapeType.circle, "black");

  shape1.draw();
  shape2.draw();
}
