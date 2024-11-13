import 'package:flutter/material.dart';
import 'models.dart';
import 'order_widget.dart';

class CustomerWidget extends StatelessWidget {
  const CustomerWidget(this._customer, {super.key});
  final Customer _customer;

  void navigateToOrder(BuildContext context, Customer customer, Order order) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => OrderWidget(customer, order)),
    );
  }

  ListTile createOrderListWidget(
      BuildContext context, Customer customer, Order order) {
    return ListTile(
        title: Text(order.description),
        subtitle: Text("${order.dt.month}/${order.dt.day}/${order.dt.year}: "
            "\$${order.total}"),
        trailing: const Icon(Icons.arrow_right),
        onTap: () => navigateToOrder(context, customer, order));
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = List.from(_customer.orders.map(
        (Order order) => createOrderListWidget(context, _customer, order)));

    widgetList.insert(
        0,
        Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Text(
                  _customer.name,
                  style: const TextStyle(
                      fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  _customer.location,
                  style: const TextStyle(
                      fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "${_customer.orders.length} Orders",
                  style: const TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.bold),
                )
              ],
            )));

    return Scaffold(
        appBar: AppBar(
          title: const Text("Customer Info"),
        ),
        body: Center(
          child: ListView(
            children: widgetList,
          ),
        ));
  }
}
