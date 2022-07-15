import 'body_part.dart';
import 'visitors/body_part_visitor.dart';

class Body extends BodyPart {
  String name = "Body";
  List<BodyPart>? bodyParts;

  Body() {
    bodyParts = List.from([
      Face(),
      Finger("Index Finger"),
      Finger("Thumb"),
      Foot("Left Foot"),
      Foot("Right Foot"),
      Foot("Third Foot?"),
    ]);
  }

  @override
  void accept(BodyPartVisitor visitor) {
    for (BodyPart bodyPart in bodyParts!) {
      bodyPart.accept(visitor);
    }
    visitor.visit(this);
  }
}
