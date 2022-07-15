import 'coumpound_product.dart';

class Burger extends CompoundProduct {
  Burger(String name) : super(name);

  @override
  int cost() {
    int costProducts = 0;
    productList.forEach((it) {
      int currentCost = it.cost();
      print('Cost ${it.name()} = $currentCost \$');
      costProducts += it.cost();
    });
    print('Cost ${name()} = $costProducts \$');
    return costProducts;
  }
}
