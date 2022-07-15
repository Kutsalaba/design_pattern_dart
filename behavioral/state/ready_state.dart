import 'audio_player.dart';
import 'locked_state.dart';
import 'playing_state.dart';
import 'state_au.dart';

class ReadyState extends StateAu {
  ReadyState(AudioPlayer? player) : super(player);

  @override
  void clickLock() {
    player!.changeState(LockedState(player));
  }

  @override
  void clickPlay() {
    String action = player!.startPlayback();
    player!.changeState(PlayingState(player));
    print(action);
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
