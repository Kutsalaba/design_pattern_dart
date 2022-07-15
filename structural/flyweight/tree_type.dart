import 'package:emojis/emoji.dart';

class TreeType {
  String? _name;
  String? _color;
  Emoji? _otherTreeData;

  TreeType(
      {required String name,
      required String color,
      required Emoji otherTreeData}) {
    _color = color;
    _name = name;
    _otherTreeData = otherTreeData;
  }

  void draw(int x, int y) {
    print("($x;$y)$_otherTreeData");
  }
}
