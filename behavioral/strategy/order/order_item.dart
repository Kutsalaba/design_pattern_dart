import 'package:faker/faker.dart';

import 'package_size.dart';

class OrderItem {
  String? title;
  double? price;
  PackageSize? packageSize;

  OrderItem.random() {
    const packageSizeList = PackageSize.values;
    

    title = faker.lorem.word();
    price = random.integer(220, min: 30) - 0.5;
    packageSize = packageSizeList[random.integer(packageSizeList.length)];
    print(packageSize);
  }
}
