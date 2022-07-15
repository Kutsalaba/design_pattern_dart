import 'package:emojis/emoji.dart';

import 'tree.dart';
import 'tree_factory.dart';
import 'tree_type.dart';

class Forest {
  List<Tree> trees = <Tree>[];

  void plantTree({
    required int x,
    required int y,
    required String name,
    required String color,
    required Emoji otherTreeData,
  }) {
    TreeType type = TreeFactory.getTreeType(
      name: name,
      color: color,
      otherTreeData: otherTreeData,
    );
    Tree tree = Tree(x, y, type);
    trees.add(tree);
  }

  void paint() {
    for (Tree tree in trees) {
      tree.draw();
    }
  }
}
