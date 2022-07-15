import 'package:faker/faker.dart';
import 'package:color/color.dart';

import '../icommand.dart';
import '../rectangle.dart';

class ChangeColorCommand implements ICommand {
  Rectangle shape;
  Color? previousColor;

  ChangeColorCommand(this.shape) {
    previousColor = shape.color;
  }

  @override
  void execute() {
    shape.color = Color.rgb(
        random.integer(255), random.integer(255), random.integer(255));
  }

  @override
  String getTitle() {
    return '[${DateTime.now()}] Change color';
  }

  @override
  void undo() {
    shape.color = previousColor!;
  }
}
