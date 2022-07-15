import '../buttons/buttons.dart';

abstract class Dialog {
  void renderWindow() {
    Button okButton = createButton();
    okButton.onClick();
    okButton.render();
  }

  Button createButton();
}

class WindowsDialog extends Dialog {
  @override
  Button createButton() {
    return WindowsButton();
  }
}

class HTMLDialog extends Dialog {
  @override
  Button createButton() {
    return HTMLButton();
  }
}
