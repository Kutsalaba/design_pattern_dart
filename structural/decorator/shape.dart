abstract class Shape {
  String draw();
}

class Square implements Shape {
  @override
  String draw() => "Square";
}

class Triangle implements Shape {
  @override
  String draw() => "Triangle";
}

abstract class ShapeDecorator implements Shape {
  final Shape shape;

  ShapeDecorator(this.shape);

  @override
  String draw();
}

class GreenShapeDecorator extends ShapeDecorator {
  GreenShapeDecorator(Shape shape) : super(shape);

  @override
  String draw() => "Green ${shape.draw()}";
}

class BlueShapeDecorator extends ShapeDecorator {
  BlueShapeDecorator(Shape shape) : super(shape);

  @override
  String draw() => "Blue ${shape.draw()}";
}

void main(List<String> args) {
  final square = Square();
  print(square.draw());

  final greenSquare = GreenShapeDecorator(square);
  print(greenSquare.draw());

  final blueGreenSquare = BlueShapeDecorator(greenSquare);
  print(blueGreenSquare.draw());
}
