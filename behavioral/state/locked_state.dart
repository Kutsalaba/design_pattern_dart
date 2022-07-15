import 'audio_player.dart';
import 'ready_state.dart';
import 'state_au.dart';

class LockedState extends StateAu {
  LockedState(AudioPlayer? player) : super(player);

  @override
  void clickLock() {
    if (player!.isPlaying()) {
      player!.changeState(ReadyState(player));
      print("Stop playing");
    } else {
      print("Locked...");
    }
  }

  @override
  void clickPlay() {
    player!.changeState(ReadyState(player));
    print("Ready");
  }

  @override
  void clickNext() {
    print("Locked...");
  }

  @override
  void clickPrevious() {
    print("Locked...");
  }
  
}