import 'index.dart';

void main(List<String> args) {
  Rectangle rect = Rectangle.initial();
  CommandHistory historyCommand = CommandHistory();
  ICommand comm = ChangeWidthCommand(rect);
  print(rect.width);
  comm.execute();
  print(rect.width);
  comm.undo();
  print(rect.width);

  comm.execute();
  historyCommand.add(comm);
  comm.execute();
  comm.undo();
  historyCommand.add(comm);
  comm = ChangeHeightCommand(rect);
  comm.execute();
  historyCommand.add(comm);
  historyCommand.undo();
  print("*** Fancy IoT Switch Logs ***");
  for (String str in historyCommand.commandHistoryList) {
    print(str.toString());
  }
}
