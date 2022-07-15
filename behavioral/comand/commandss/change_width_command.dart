import 'package:faker/faker.dart';

import '../icommand.dart';
import '../rectangle.dart';

class ChangeWidthCommand implements ICommand {
  Rectangle shape;
  double? previousWidth;

  ChangeWidthCommand(this.shape) {
    previousWidth = shape.width;
  }

  @override
  void execute() {
    shape.width = random.integer(150, min: 50).toDouble();
  }

  @override
  String getTitle() {
    return '[${DateTime.now()}] Change width';
  }

  @override
  void undo() {
    shape.width = previousWidth;
  }
}
