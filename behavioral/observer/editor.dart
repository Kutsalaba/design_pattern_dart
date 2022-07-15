import 'dart:io';

import 'event_manager.dart';

class Editor {
  EventManager? events;
  File? _file;

  Editor() {
    events = EventManager(["open", "save"]);
  }

  void openFile(String filePath) {
    _file = File(filePath);
    events!.notify("open", _file!);
  }

  void saveFile() {
    if (_file != null) {
      events!.notify("save", _file!);
    } else {
      throw Exception("Please open a file first.");
    }
  }
}