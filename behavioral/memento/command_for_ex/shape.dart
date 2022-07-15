class Shape {
  String? color;
  double? height;
  double? width;

  Shape(this.color, this.height, this.width);

  Shape.initial() {
    color = "black";
    height = 150.0;
    width = 150.0;
  }

  Shape.copy(Shape shape) : this(shape.color, shape.height, shape.width);

  @override
  String toString() {
    return 
      "Color: $color\n"
      "Height: $height\n"
      "Width: $width\n"
      "--------------------"
    ;
  }
}