import 'package:emojis/emoji.dart';

import 'tree_type.dart';

class TreeFactory {
  static final Map<String, TreeType> _treeTypes = <String, TreeType>{};

  static TreeType getTreeType({
    required String name,
    required String color,
    required Emoji otherTreeData,
  }) {
    TreeType? result = _treeTypes[name];
    //print(result);

    if (result == null) {
      result = TreeType(
        name: name,
        color: color,
        otherTreeData: otherTreeData,
      );
      _treeTypes[name] = result;
    }
    return result;
  }
}
