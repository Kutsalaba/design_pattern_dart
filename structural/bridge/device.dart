abstract class Device {
  bool isEnabled();

  void enable();

  void disable();

  int get getVolume;

  set setVolume(int percent);

  int get getChannel;

  set setChannel(int channel);

  void printStatus();
}