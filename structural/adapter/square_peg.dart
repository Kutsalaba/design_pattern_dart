import 'dart:math';

class SquarePeg {
  late double _width;

  SquarePeg(double width) {
    _width = width;
  }

  double get getWidth => _width;

  double get getSquare => pow(_width, 2).toDouble();
}