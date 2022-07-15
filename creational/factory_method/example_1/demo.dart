import '../example_1/dialog/dialog.dart';
import '../example_1/typeos/typeos.dart';

class Demo {
  static Dialog? dialog;

  static void initialize(OSType type) {
    if (type == OSType.windows) {
      dialog = WindowsDialog();
    } else if (type == OSType.html) {
      dialog = HTMLDialog();
    } else {
      throw Exception("Error! Unknown operating system.");
    }
  }

  static void creater(OSType type) {
    initialize(type);
    runBusinessLogic();
  }

  static void runBusinessLogic() {
    dialog!.renderWindow();
  }
}

void main(List<String> args) {
  Demo.creater(OSType.windows);
  print(Demo.dialog.runtimeType);
}
