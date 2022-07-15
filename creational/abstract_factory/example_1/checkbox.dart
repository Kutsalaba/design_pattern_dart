abstract class Checkbox {
  void paint();
}

class WinCheckbox implements Checkbox {
  @override
  void paint() {
    print("You created WindowsCheckbox.");
  }
}

class MacCheckbox implements Checkbox {
  @override
  void paint() {
    print("You created MacOSCheckbox.");
  }
}