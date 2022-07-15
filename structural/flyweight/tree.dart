import 'package:emojis/emoji.dart';

import 'tree_type.dart';

class Tree {
  int _x;
  int _y;
  TreeType _type;

  Tree(this._x, this._y, this._type);

  void draw() {
    _type.draw(_x, _y);
  }
}
