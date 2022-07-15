import 'command_for_ex/shape.dart';
import 'imemento.dart';

class Memento extends IMemento {
  Shape? _state;

  Memento(Shape shape) {
    _state = Shape.copy(shape);
  }

  @override
  Shape getState() {
    return _state!;
  }

}
