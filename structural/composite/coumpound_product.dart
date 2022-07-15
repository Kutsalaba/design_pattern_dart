import 'iproduct.dart';

class CompoundProduct implements IProduct {
  final String _name;
  List<IProduct> productList = <IProduct>[];

  CompoundProduct(this._name);

  @override
  int cost() {
    int costProducts = 0;
    productList.forEach((it) {
      costProducts += it.cost();
    });
    return costProducts;
  }

  void addProduct(IProduct product) {
    productList.add(product);
  }

  void removeProduct(IProduct product) {
    productList.remove(product);
  }

  @override
  String name() => _name;

}
