abstract class Shape {
  late String color;

  Shape(this.color);

  Shape.clone(Shape source) {
    color = source.color;
  }

  Shape clone();
  void showFields();
}
