import 'device.dart';

class Tv implements Device {
  bool _onn = false;
  int _volume = 30;
  int _channel = 1;

  @override
  bool isEnabled() {
    return _onn;
  }

  @override
  void enable() {
    _onn = true;
  }

  @override
  void disable() {
    _onn = false;
  }

  @override
  int get getVolume => _volume;

  @override
  set setVolume(int volume) {
    if (volume > 100) {
        _volume = 100;
    } else if (volume < 0) {
        _volume = 0;
    } else {
        _volume = volume;
    }
  }

  @override
  int get getChannel => _channel;
  

  @override
  set setChannel(int channel) {
    _channel = channel;
  }

  @override
  void printStatus() {
    print("-" * 20);
    print("| I'm TV set.");
    print("| I'm " + (_onn ? "enabled" : "disabled"));
    print("| Current volume is $_volume %");
    print("| Current channel is $_channel");
    print("-" * 20 + "\n");
  }
}