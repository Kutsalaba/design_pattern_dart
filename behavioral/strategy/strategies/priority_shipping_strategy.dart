import '../ishipping_costs_strategy.dart';
import '../order/order.dart';

class PriorityShippingStrategy implements IShippingCostsStrategy {
  @override
  String? label = 'Priority shipping';

  @override
  double calculate(Order order) {
    return 500.1;
  }
}