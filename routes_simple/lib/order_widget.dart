import 'package:flutter/material.dart';
import 'models.dart';

class OrderWidget extends StatelessWidget {
  final Customer _customer;
  final Order _order;

  const OrderWidget(this._customer, this._order, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Order Info"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: <Widget>[
              Text(_customer.name,
                  style: const TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center),
              Text(_customer.location,
                  style: const TextStyle(
                      fontSize: 24.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
              const Text(""),
              Text(_order.description,
                  style: const TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
              Text(
                  "${_order.dt.month}/${_order.dt.day}/${_order.dt.year}: "
                  "\$${_order.total}",
                  style: const TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center)
            ],
          ),
        ));
  }
}
