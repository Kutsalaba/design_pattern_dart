class RainbowIterator implements Iterator {
  final _colors = [
    "Red",
    "Orange",
    "Yellow",
    "Green",
    "Blue",
    "Indigo",
    "Violet"
  ];
  int _index = 0;
  @override
  String get current => _colors[_index++];
  @override
  bool moveNext() => _index < _colors.length;
}

void main() {
  Iterator rainbowColors = RainbowIterator();
  while (rainbowColors.moveNext()) {
    print(rainbowColors.current);
  }
}
