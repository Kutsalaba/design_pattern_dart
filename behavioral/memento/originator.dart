import 'command_for_ex/shape.dart';
import 'imemento.dart';
import 'memento.dart';

class Originator {
  Shape? state;

  Originator() {
    state = Shape.initial();
  }

  IMemento createMemento() {
    return Memento(state!);
  }

  void restore(IMemento memento) {
    state = memento.getState();
  }
}