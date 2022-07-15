import 'advance_remote.dart';
import 'device.dart';
import 'basic_remote.dart';
import 'tv.dart';
import 'radio.dart';

class Demo {

  static void testDevice(Device device) {
    print("Tests with basic remote.");
    BasicRemote basicRemote = BasicRemote(device);
    basicRemote.power();
    device.printStatus();

    print("Tests with advanced remote.");
    AdvancedRemote advancedRemote = AdvancedRemote(device);
    advancedRemote.mute();
    advancedRemote.power();
    device.printStatus();
  }
}

void main(List<String> args) {
  Demo.testDevice(Tv());
  Demo.testDevice(Radio());
}
