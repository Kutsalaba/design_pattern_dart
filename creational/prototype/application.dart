import 'circle.dart';
import 'shape.dart';
import 'rectangle.dart';

void main(List<String> args) {
  List<Shape> lsShape = [];

  Circle shA = Circle("red", 23.5);
  Circle shC = Circle.initial();
  Shape shD = shA.clone();
  shD.color = "black";
  lsShape.add(shD);
  lsShape.add(shA);
  lsShape.add(shC);
  lsShape.add(shA);

  lsShape.forEach((element) {
    element.showFields();
  });
}
