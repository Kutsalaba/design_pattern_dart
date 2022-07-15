class SmartHomeApi {
  bool turnLightsOn() {
    print("turnLightsOn");
    return true;
  }

  bool turnLightsOff() {
    print("turnLightsOff");
    return false;
  }
}

class AudioApi {
  bool turnSpeakersOn() {
    print("turnSpeakersOn AudioApi");
    return true;
  }

  bool turnSpeakersOff() {
    print("turnSpeakersOff AudioApi");
    return false;
  }
}

class NetflixApi {
  bool connect() {
    print("connect to NetflixApi");
    return true;
  }

  bool disconnect() {
    print("disconnect to NetflixApi");
    return false;
  }

  void play(String title) {
    print("'$title' has started playing on Netflix.");
  }
}

class TvApi {
  bool turnOn() {
    print("turnOn TvApi");
    return true;
  }

  bool turnOff() {
    print("turnOff TvApi");
    return false;
  }
}

class PlaystationApi {
  bool turnOn() {
    print("turnOn PlaystationApi");
    return true;
  }

  bool turnOff() {
    print("turnOff PlaystationApi");
    return false;
  }
}

class CameraApi {
  bool turnCameraOn() {
    print("turnCameraOn");
    return true;
  }

  bool turnCameraOff() {
    print("turnCameraOff");
    return false;
  }
}
