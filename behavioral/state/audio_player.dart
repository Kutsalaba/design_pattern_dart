import 'ready_state.dart';
import 'state_au.dart';

class AudioPlayer {
  StateAu? _state;
  bool _playing = false;
  final List<String>? _playlist = [];
  int _currentTrack = 0;

  AudioPlayer() {
    _state = ReadyState(this);
    setPlaying(true);
    for (int i = 1; i <= 12; i++) {
      _playlist!.add("Track $i");
    }
  }

  void changeState(StateAu state) {
    _state = state;
  }

  StateAu getState() {
    return _state!;
  }

  void setPlaying(bool playing) {
    _playing = playing;
  }

  bool isPlaying() {
    return _playing;
  }

  String startPlayback() {
    return "Playing ${_playlist!.elementAt(_currentTrack)}";
  }

  String nextTrack() {
    _currentTrack++;
    if (_currentTrack > _playlist!.length - 1) {
      _currentTrack = 0;
    }
    return "Playing ${_playlist!.elementAt(_currentTrack)}";
  }

  String previousTrack() {
    _currentTrack--;
    if (_currentTrack < 0) {
      _currentTrack = _playlist!.length - 1;
    }
    return "Playing ${_playlist!.elementAt(_currentTrack)}";
  }

  void setCurrentTrackAfterStop() {
    _currentTrack = 0;
  }
}
