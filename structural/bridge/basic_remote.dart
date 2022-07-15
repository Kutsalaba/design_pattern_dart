import 'device.dart';
import 'remote.dart';

class BasicRemote implements Remote {
  Device device;

  BasicRemote(this.device);


  @override
  void power() {
    print("Remote: power toggle");
    if (device.isEnabled()) {
      device.disable();
    } else {
      device.enable();
    }
  }

  @override
  void volumeDown() {
    print("Remote: volume down");
    device.setVolume = device.getVolume - 10;
  }

  @override
  void volumeUp() {
    print("Remote: volume up");
    device.setVolume = device.getVolume + 10;
  }

  @override
  void channelDown() {
    print("Remote: channel down");
    device.setChannel = device.getChannel - 1;
  }

  @override
  void channelUp() {
    print("Remote: channel up");
    device.setChannel = device.getChannel + 1;
  }
}
