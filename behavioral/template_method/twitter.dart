import 'dart:io' show sleep, stdout;

import 'network.dart';

class Twitter extends Network {
  Twitter(String userName, String password) {
    super.userName = userName;
    super.password = password;
  }

  @override
  bool logIn(String userName, String password) {
    print("\nChecking user's parameters");
    print("Name: ${this.userName!}");
    stdout.write("Password: ");
    for (int i = 0; i < this.password!.length; i++) {
      stdout.write('*');
    }
    _simulateNetworkLatency();
    print("\n\nLogIn success on Twitter");
    return true;
  }

  @override
  bool sendData(String data) {
    print("Message: $data was posted on Twitter");
    return true;
  }

  @override
  void logOut() {
    print("User: $userName was logged out from Twitter");
  }

  void _simulateNetworkLatency() {
    int i = 0;
    print('');
    while (i < 7) {
      stdout.write('.');
      sleep(Duration(seconds: 1));
      i++;
    }
  }
}
