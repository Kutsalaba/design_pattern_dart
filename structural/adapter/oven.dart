abstract class IOven {
  double get getTemperature;
  set setTemperature(double t);
}

abstract class ICelsiousOven {
  double get getCelsiousTemperature;
  set setCelsiousTemperature(double t);
  double get getOriginalTemperature;
}

class OriginalOven implements IOven {
  double temperature;

  OriginalOven(this.temperature) {
    assert(temperature >= fahrenheitZero, "This isn`t a refigerator");
  }

  @override
  double get getTemperature => temperature;

  @override
  set setTemperature(double t) {
    assert(temperature >= fahrenheitZero, "Does the oven freeze?..");
    temperature = t;
  }
}

const celsiousToFahrenheit = 9.0 / 5.0;
const fahrenheitToCelsious = 5.0 / 9;
const fahrenheitZero = 32;

class OvenAdapter implements ICelsiousOven {
  IOven originalOven;
  double temperature = 0;

  OvenAdapter(this.originalOven) {
    temperature = _initTemperature();
  }

  double _initTemperature() {
    return (fahrenheitToCelsious *
        (originalOven.getTemperature - fahrenheitZero));
  }

  @override
  double get getOriginalTemperature => originalOven.getTemperature;

  @override
  double get getCelsiousTemperature => temperature;

  @override
  set setCelsiousTemperature(double t) {
    assert(t >= 0, "ooooo");
    originalOven.setTemperature = celsiousToFahrenheit * t + fahrenheitZero;
    temperature = t;
  }
}

void printTemperature(ICelsiousOven oven) {
  print("Original temperature = ${oven.getOriginalTemperature}");
  print("Celsius temperature = ${oven.getCelsiousTemperature}");
}

void main(List<String> args) {
  OriginalOven fahrenheitOven = OriginalOven(32);
  OvenAdapter celsiousOven = OvenAdapter(fahrenheitOven);
  printTemperature(celsiousOven);
  print('-' * 20);
  print("New temperature");
  print('-' * 20);
  celsiousOven.setCelsiousTemperature = 180;
  printTemperature(celsiousOven);
}
