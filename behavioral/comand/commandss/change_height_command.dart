import 'package:faker/faker.dart';

import '../icommand.dart';
import '../rectangle.dart';

class ChangeHeightCommand implements ICommand {
  Rectangle shape;
  double? previousHeight;

  ChangeHeightCommand(this.shape) {
    previousHeight = shape.height;
  }

  @override
  void execute() {
    shape.height = random.integer(150, min: 50).toDouble();
  }

  @override
  String getTitle() {
    return '[${DateTime.now()}] Change height';
  }

  @override
  void undo() {
    shape.height = previousHeight;
  }
}
