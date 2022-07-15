abstract class Shape {
  String draw();
}

class Square implements Shape {
  String draw() => "Square";
}

class Triangle implements Shape {
  String draw() => "Triangle";
}

mixin Coloring {
  void coloring(String color);
}

class ShapeDecorator extends Shape with Coloring {
  final Shape shape;

  ShapeDecorator(this.shape);

  @override
  String draw() {
    return "$shape";
  }

  @override
  void coloring(String color) {
    print("Color: ${shape.draw()}");
  }
}

void main(List<String> args) {
  final square = Square();
  print(square.draw());

  final greenSquare = ShapeDecorator(square);
  print(greenSquare.draw());
  greenSquare.coloring("Green");

  final blueGreenSquare = ShapeDecorator(greenSquare);
  print(blueGreenSquare.draw());
  blueGreenSquare.coloring("Green");
}
