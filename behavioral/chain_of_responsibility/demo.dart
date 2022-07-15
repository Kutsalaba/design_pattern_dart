import 'log_level.dart';
import 'logger.dart';
import 'type_loggers.dart';

void main() {
  Logger logger = ConsoleLogger(Set.from(LogLevel.values));
  //print(Set.from(LogLevel.values));
  Logger eLog =
      EmailLogger({LogLevel.functionalMessage, LogLevel.functionalError});
  Logger fLog = FileLogger({LogLevel.warning, LogLevel.error});

  logger.next = eLog;
  eLog.next = fLog;

  logger.log(LogLevel.debug, "Debug message");
  logger.log(LogLevel.info, "Info message");

  logger.log(LogLevel.warning, "Warning message!");
  logger.log(LogLevel.error, "Error !");

  logger.log(LogLevel.functionalError, "Functional error!");
  logger.log(LogLevel.functionalMessage, "Functional message!");
}
