import 'dart:io';

import 'event_listener.dart';

class EmailNotificationListener implements EventListener {
    String? _email;

    EmailNotificationListener(String email) {
      _email = email;
    }

    @override
    void update(String eventType, File file) {
      print("Email to " + _email! +
        ": Someone has performed " + eventType +
        " operation with the following file: " +
        file.path.split('/').last);
    }
}