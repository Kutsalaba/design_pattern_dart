import '../singelton/example_1/database.dart';

void main(List<String> args) {
  Database db = Database();
  db.open();
}
