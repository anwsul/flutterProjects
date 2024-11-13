import 'models.dart';

var customerList = [
  Customer("Bike Corp", "Atlanta", [
    Order(DateTime(2018, 11, 17), "Bicycle parts", 197.02),
    Order(DateTime(2018, 12, 1), "Bicycle parts", 107.45),
  ]),
  Customer("Trust Corp", "Atlanta", [
    Order(DateTime(2017, 1, 3), "Shredder parts", 97.02),
    Order(DateTime(2018, 3, 13), "Shredder blade", 7.45),
    Order(DateTime(2018, 5, 2), "Shredder blade", 7.45),
  ]),
  Customer("Jilly Boutique", "Birmingham", [
    Order(DateTime(2018, 1, 3), "Display unit", 97.01),
    Order(DateTime(2018, 3, 3), "Desk unit", 12.25),
    Order(DateTime(2018, 3, 21), "Clothes rack", 97.15),
  ]),
];
