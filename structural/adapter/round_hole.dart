import 'round_peg.dart';

class RoundHole {
  late final double _radius;

  RoundHole(double radius) {
    _radius = radius;
  }

  double get getRadius => _radius;

  bool fits(RoundPeg peg) {
    return getRadius >= peg.getRadius;
  }
}