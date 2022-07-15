import '../ishipping_costs_strategy.dart';
import '../order/order.dart';
import '../order/order_item.dart';
import '../order/package_size.dart';

class ParcelTerminalShippingStrategy implements IShippingCostsStrategy {
  @override
  String? label = 'Parcel terminal shipping';

  @override
  double calculate(Order order) {
    return order.items.fold<double>(
      0.0,
      (sum, item) => sum + _getOrderItemShippingPrice(item),
    );
  }

  double _getOrderItemShippingPrice(OrderItem orderItem) {
    switch (orderItem.packageSize) {
      case PackageSize.s:
        return 40.5;
      case PackageSize.m:
        return 60.5;
      case PackageSize.el:
        return 130.5;
      case PackageSize.xL:
        return 200.5;
      default:
        throw Exception(
            "Unknown shipping price for the package of size '${orderItem.packageSize}'.");
    }
  }
}
