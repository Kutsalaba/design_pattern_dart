import 'square_peg.dart';
import 'round_hole.dart';
import 'round_peg.dart';
import 'square_peg_adapter.dart';

void main(List<String> args) {
  RoundHole hole = RoundHole(5);
  RoundPeg rpeg = RoundPeg(5);
  if (hole.fits(rpeg)) {
    print("Round peg r5 fits round hole r5.");
  }
  SquarePeg smallSqPeg = SquarePeg(5);
  SquarePeg largeSqPeg = SquarePeg(10);
  
  // Adapter solves the problem.  
  SquarePegAdapter smallSqPegAdapter = SquarePegAdapter(smallSqPeg);
  SquarePegAdapter largeSqPegAdapter = SquarePegAdapter(largeSqPeg);
  if (hole.fits(smallSqPegAdapter)) {
    print("Square peg w2 fits round hole r5.");
  }
  if (!hole.fits(largeSqPegAdapter)) {
    print("Square peg w20 does not fit into round hole r5.");
  }
}
