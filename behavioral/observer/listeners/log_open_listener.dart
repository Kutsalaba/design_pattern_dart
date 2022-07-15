import 'dart:io';

import 'event_listener.dart';

class LogOpenListener implements EventListener {
    File? _log;

    LogOpenListener(String fileName) {
      _log = File(fileName);
    }

    @override
    void update(String eventType, File file) {
      print("Save to log " + _log.toString() + 
      ": Someone has performed " + eventType + 
      " operation with the following file: " + 
      file.path.split('/').last);
    }
}