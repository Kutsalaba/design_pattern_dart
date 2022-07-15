import 'dart:io';

import 'facebook.dart';
import 'network.dart';
import 'twitter.dart';

void main(List<String> args) {
  Network? network;
  stdout.write("Input user name: ");
  String? userName = stdin.readLineSync();
  stdout.write("Input password: ");
  String? password = stdin.readLineSync();

  stdout.write("Input message: ");
  String? message = stdin.readLineSync();

  print("\nChoose social network for posting message.\n"
      "1 - Facebook\n"
      "2 - Twitter");
  stdout.write("Your choice: ");
  int choice = int.parse(stdin.readLineSync()!);
  

  if (choice == 1) {
    network = Facebook(userName!, password!);
  } else if (choice == 2) {
    network = Twitter(userName!, password!);
  }
  network!.post(message!);
}
