import 'audio_player.dart';
import 'locked_state.dart';
import 'ready_state.dart';
import 'state_au.dart';

class PlayingState extends StateAu {
  PlayingState(AudioPlayer? player) : super(player);

  @override
  void clickLock() {
    player!.changeState(LockedState(player));
    print("Stop playing");
  }

  @override
  void clickPlay() {
    player!.changeState(ReadyState(player));
    print("Paused...");
  }

  @override
  void clickNext() {
    print(player!.nextTrack());
  }

  @override
  void clickPrevious() {
    print(player!.previousTrack());
  }
}
