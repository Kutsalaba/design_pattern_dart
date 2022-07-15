class Database {
  static Database? _instance;

  factory Database() {
    return _instance ??= Database._();
  }

  void open() => print("Open Db");

  Database._();
}

void main(List<String> args) {
  Database db1 = Database();
  Database db2 = Database();
  print(identical(db1, db2));
}
