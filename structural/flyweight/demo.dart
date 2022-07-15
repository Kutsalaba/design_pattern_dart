import 'package:emojis/emoji.dart';
import 'package:emojis/emojis.dart';

import 'forest.dart';

void main(List<String> args) {
  const int treesToDraw = 100000;

  Forest forest = Forest();
  for (int i = 1; i < treesToDraw; i++) {
    if (i % 5 == 0) {
      forest.plantTree(
          x: -i,
          y: -i,
          name: "christmasTree",
          color: "Light",
          otherTreeData: Emoji.byChar(Emojis.christmasTree)!);
    } else {
      forest.plantTree(
          x: i,
          y: i,
          name: "evergreenTree",
          color: "Green",
          otherTreeData: Emoji.byChar(Emojis.evergreenTree)!);
    }
  }
  forest.paint();
  // Emoji blondyBlackLady = Emoji.byChar(Emojis.christmasTree)!;
  // print(blondyBlackLady);
  // blondyBlackLady = Emoji.byChar(Emojis.evergreenTree)!;
  // print(blondyBlackLady);
}
