abstract class Button {
  void render();
  void onClick();
}

class WindowsButton implements Button {
  @override
  void onClick() {
    print("You click on the WindowsButton");
  }

  @override
  void render() {
    print("Rendering WindowsButton");
  }
}

class HTMLButton implements Button {
  @override
  void onClick() {
    print("You click on the HTMLButton");
  }

  @override
  void render() {
    print("Rendering HTMLButton");
  }
}