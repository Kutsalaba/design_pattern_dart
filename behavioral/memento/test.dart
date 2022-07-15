// class Memento {
//   final String _state;

//   Memento(this._state) {
//     print("[Memento] State \"$_state\" has been saved!");
//   }

//   String get state {
//     print("[Memento] Providing saved state \"$_state\"...");
//     return _state;
//   }
// }

// class Originator {
//   String _state;

//   // NOTE: This uses the state setter on init to get a handy print
//   Originator(this._state);

//   String get state => _state;
//   set state(String newState) {
//     _state = newState;
//     print("[Originator] Set state to $newState");
//   }

//   Memento saveToMemento() {
//     print("[Originator] Saving to memento...");
//     return Memento(_state);
//   }

//   void restoreFromMemento(Memento m) {
//     print("[Originator] Restoring from memento...");
//     _state = m.state;
//     print("[Originator] Restored to $state.");
//   }
// }

// class CareTaker {
//   Memento? memento;
// }

// void main() {
//   Originator me = Originator("Returned from store");
//   me.state = "Placing car keys down";

//   Memento locationOfKeys = me.saveToMemento();
//   CareTaker memory = CareTaker();
//   memory.memento = locationOfKeys;

//   me.state = "Putting away groceries";
//   me.state = "Noticed missing pickles";
//   me.state = "Looking for car keys...";

//   me.restoreFromMemento(memory.memento!);
//   me.state = "Going back to store for pickles";
// }
