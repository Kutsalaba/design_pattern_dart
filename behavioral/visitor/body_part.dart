import 'visitors/body_part_visitor.dart';

abstract class BodyPart {
  void accept(BodyPartVisitor visitor) => visitor.visit(this);
}

class Face extends BodyPart {
  final String name = "Face";
}

class Finger extends BodyPart {
  String name = "Finger";
  Finger(this.name);
}

class Foot extends BodyPart {
  String name = "Foot";
  Foot(this.name);
}