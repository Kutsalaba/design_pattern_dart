import '../body.dart';
import '../body_part.dart';
import 'body_part_visitor.dart';

class BodyPartProdVisitor implements BodyPartVisitor {
  @override
  void visit(BodyPart bodyPart) {
    if (bodyPart is Body) {
      print("Poking my ${bodyPart.name} with an electrode.");
    }
    if (bodyPart is Face) {
      print("Prodding ${bodyPart.name}.");
    }
    if (bodyPart is Finger) {
      print("Pricking ${bodyPart.name}.");
    }
    if (bodyPart is Foot) {
      print("Tickling ${bodyPart.name}.");
    }
  }
}