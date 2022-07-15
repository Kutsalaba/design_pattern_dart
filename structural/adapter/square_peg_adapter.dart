import 'dart:math';
import 'square_peg.dart';
import 'round_peg.dart';

class SquarePegAdapter extends RoundPeg {
  late SquarePeg _peg;

  SquarePegAdapter(SquarePeg peg) : super(0.0) {
    _peg = peg;
  }

  @override
  double get getRadius => _peg.getWidth/sqrt(2);
}