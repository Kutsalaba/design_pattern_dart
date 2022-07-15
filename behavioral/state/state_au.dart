import 'audio_player.dart';

abstract class StateAu {
  AudioPlayer? player;

  StateAu(this.player);

  void clickLock();
  void clickPlay();
  void clickNext();
  void clickPrevious();
}
