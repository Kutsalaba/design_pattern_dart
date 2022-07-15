abstract class Network {
  String? userName;
  String? password;

  bool post(String message) {
    if (logIn(userName!, password!)) {
      bool result = sendData(message);
      logOut();
      return result;
    }
    return false;
  }

  bool logIn(String userName, String password);
  bool sendData(String data);
  void logOut();
}
