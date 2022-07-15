import 'button.dart';
import 'checkbox.dart';

enum TypeOS { windows, mac }

abstract class GUIFactory {

  factory GUIFactory.factor(TypeOS typeOS) {
    switch (typeOS) {
      case TypeOS.mac:
        return MacFactory();
      case TypeOS.windows:
        return WinFactory();
      default:
        throw ArgumentError();
    }
  }
  Button createButton();
  Checkbox createCheckbox();
}

class WinFactory implements GUIFactory {
  @override
  Button createButton() {
    return WinButton();
  }

  @override
  Checkbox createCheckbox() {
    return WinCheckbox();
  }
}

class MacFactory implements GUIFactory {
  @override
  Button createButton() {
    return MacButton();
  }

  @override
  Checkbox createCheckbox() {
    return MacCheckbox();
  }
}

class Application {
  final GUIFactory guiFactory;

  Application(this.guiFactory);

  void paint() {
    guiFactory.createButton().paint();
    guiFactory.createCheckbox().paint();
  }
}

void main(List<String> args) {
  TypeOS typeOS = TypeOS.mac;
  Application app = Application(GUIFactory.factor(typeOS));
  app.paint();
}
