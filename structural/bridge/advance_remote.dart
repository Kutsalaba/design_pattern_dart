import 'basic_remote.dart';
import 'device.dart';

class AdvancedRemote extends BasicRemote {
  AdvancedRemote(Device device) : super(device);

  void mute() {
    print("Remote: mute");
    super.device.setVolume = 0;
  }
}
