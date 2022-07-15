import 'command_for_ex/icommand.dart';
import 'command_for_ex/randomise_properties_command.dart';
import 'originator.dart';

void main(List<String> args) {
 
  Originator originator = Originator();
  ICommand command = RandomisePropertiesCommand(originator);
  print(originator.state.toString());
  command.execute();
  print(originator.state.toString());
  command.undo();
  print(originator.state.toString());

}
