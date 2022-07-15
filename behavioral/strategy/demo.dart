import 'strategy.dart';

void randomm(Order order, int k) {
  for (int i = 0; i < k; i++) {
    order.addOrderItem(OrderItem.random());
  }
}

void main(List<String> args) {
  Order order = Order();
  randomm(order, 2);
  // order.items.forEach((element) {
  //   print(element.price);
  // });

  IShippingCostsStrategy strategy = ParcelTerminalShippingStrategy();
  print(strategy.label);
  print(strategy.calculate(order));

  strategy = PriorityShippingStrategy();
  print(strategy.label);
  print(strategy.calculate(order));

  strategy = InStorePickupStrategy();
  print(strategy.label);
  print(strategy.calculate(order));

  print(order.price);
}
