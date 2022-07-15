import 'audio_player.dart';
import 'locked_state.dart';
import 'playing_state.dart';
import 'ready_state.dart';
import 'state_au.dart';


void main(List<String> args) {
  AudioPlayer audioPlayer = AudioPlayer();
  StateAu playingState = PlayingState(audioPlayer);
  StateAu readyState = ReadyState(audioPlayer);
  StateAu lockedState = LockedState(audioPlayer);
  playingState.clickLock();
  playingState.clickPlay();
  playingState.clickNext();
  playingState.clickNext();
  playingState.clickNext();
  playingState.clickPrevious();
  playingState.clickLock();
  playingState.clickNext();
  //audioPlayer.isPlaying();
  print("-" * 20);
  readyState.clickPlay();
  readyState.clickPrevious();
  readyState.clickNext();

  print("-" * 20);
  lockedState.clickLock();
  lockedState.clickPlay();
}
