import 'body.dart';
import 'visitors/body_part_prod_visitor.dart';
import 'visitors/body_part_stitch_visitor.dart';


void main() {
  Body body = Body();
  body.accept(BodyPartStitchVisitor());
  body.accept(BodyPartProdVisitor());

  /*
    Stitching together my Face.
    Stitching together my Index Finger.
    Stitching together my Thumb.
    Gluing on my Left Foot.
    Gluing on my Right Foot.
    Gluing on my Third Foot?.
    Reanimating my Body.
    Prodding Face.
    Pricking Index Finger.
    Pricking Thumb.
    Tickling Left Foot.
    Tickling Right Foot.
    Tickling Third Foot?.
    Poking my Body with an electrode.
  */
}
