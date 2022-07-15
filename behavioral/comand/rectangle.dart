import 'package:color/color.dart';

class Rectangle {
  Color? color;
  double? height;
  double? width;

  Rectangle.initial() {
    color = Color.rgb(0, 0, 0);
    height = 150.0;
    width = 150.0;
  }
}