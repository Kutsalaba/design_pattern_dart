import 'log_level.dart';
import 'logger.dart';

class ConsoleLogger extends Logger {
  
  ConsoleLogger(Set<LogLevel> levels) : super(levels);

  @override
  void writeMessage(String msg) => print("[Console]: $msg");
}

class EmailLogger extends Logger {

  EmailLogger(Set<LogLevel> levels) : super(levels);
  
  @override
  void writeMessage(String msg) => print("[Email]: $msg");
}

class FileLogger extends Logger {
  
  FileLogger(Set<LogLevel> levels) : super(levels);

  @override
  void writeMessage(String msg) => print("[File]: $msg");
}