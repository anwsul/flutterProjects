class Order {
  final DateTime dt;
  final String description;
  final double total;

  Order(this.dt, this.description, this.total);
}

class Customer {
  final String name;
  final String location;
  final List<Order> orders;

  Customer(this.name, this.location, this.orders);
}
