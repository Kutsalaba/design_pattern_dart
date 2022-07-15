import 'apis.dart';
import 'smart_home_state.dart';

class GamingFacade {
  final PlaystationApi _playstationApi = PlaystationApi();
  final CameraApi _cameraApi = CameraApi();

  void startGaming(SmartHomeState smartHomeState) {
    smartHomeState.gamingConsoleOn = _playstationApi.turnOn();
  }

  void stopGaming(SmartHomeState smartHomeState) {
    smartHomeState.gamingConsoleOn = _playstationApi.turnOff();
  }

  void startStreaming(SmartHomeState smartHomeState) {
    smartHomeState.streamingCameraOn = _cameraApi.turnCameraOn();
    startGaming(smartHomeState);
    print('-' * 20);
  }

  void stopStreaming(SmartHomeState smartHomeState) {
    smartHomeState.streamingCameraOn = _cameraApi.turnCameraOff();
    stopGaming(smartHomeState);
    print('-' * 20);
  }
}
