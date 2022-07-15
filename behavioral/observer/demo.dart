import 'dart:io';

import 'editor.dart';
import 'listeners/email_notification_listener.dart';
import 'listeners/event_listener.dart';
import 'listeners/log_open_listener.dart';

void main() {
  Editor editor = Editor();
  EventListener lisLog = LogOpenListener("/path/to/log/file.txt");
  editor.events!.subscribe("open", lisLog);
  EventListener lisEmail = EmailNotificationListener("admin@example.com");
  editor.events!.subscribe("save", lisEmail);

  try {
    editor.openFile("test.txt");
    editor.saveFile();
  } on FileSystemException {
    print("File not found");
  }
  editor.events!.notify("open", File("type.txt"));
  editor.events!.unsubscribe("save", lisEmail);

  print("");
  print(editor.events!.listeners.values);
}
