import 'iproduct.dart';

class Product extends IProduct {
  final String _name;
  final int _cost;

  Product(this._name, this._cost);

  @override
  int cost() {
    return _cost;
  }

  @override
  String name() {
    return _name;
  }
}
