import 'coumpound_product.dart';
import 'product.dart';
import 'burger.dart';

void main(List<String> args) {

  CompoundProduct buns = CompoundProduct('Buns');
  buns.addProduct(Product('eggs', 4));
  buns.addProduct(Product('flour', 20));
  buns.addProduct(Product('salt', 1));

  // CompoundProduct milk = CompoundProduct('Milk');
  // milk.addProduct(Product('milk2', 99));
  // buns.addProduct(milk);

  CompoundProduct sause = CompoundProduct('Ketchup');
  sause.addProduct(Product('tomatoes', 5));
  sause.addProduct(Product('salt', 1));

  Product beefPatty = Product('Beef Patty', 40);
  Product cheese = Product('Cheese', 10);
  CompoundProduct salat = CompoundProduct('Salat');
  salat.addProduct(Product('salt', 1));
  salat.addProduct(Product('onion', 3));
  salat.addProduct(Product('cucumber', 7));
  salat.addProduct(Product('cabbage', 4));

  Burger burger = Burger('Hamburger');
  burger.addProduct(buns);
  burger.addProduct(sause);
  burger.addProduct(beefPatty);
  burger.addProduct(cheese);
  burger.addProduct(salat);

  burger.cost();
}
