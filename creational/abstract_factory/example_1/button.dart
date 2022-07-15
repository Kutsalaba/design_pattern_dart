abstract class Button {
  void paint();
}

class WinButton implements Button {
  @override
  void paint() {
    print("You created WindowsButton.");
  }
}

class MacButton implements Button {
  @override
  void paint() {
    print("You created MacOSButton.");
  }
}