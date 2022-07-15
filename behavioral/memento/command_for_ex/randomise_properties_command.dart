import 'package:faker/faker.dart';

import '../imemento.dart';
import '../originator.dart';
import 'icommand.dart';

class RandomisePropertiesCommand implements ICommand {
  final Originator originator;
  IMemento? _backup;

  RandomisePropertiesCommand(this.originator) {
    _backup = originator.createMemento();
  }

  @override
  void execute() {
    final shape = originator.state;

    shape!.color = random.string(5);
    shape.height = random.integer(150, min: 50).toDouble();
    shape.width = random.integer(150, min: 50).toDouble();
  }

  @override
  void undo() {
    originator.restore(_backup!);
  }
}
