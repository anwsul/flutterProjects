import 'package:flutter/material.dart';
import 'data.dart' as data;
import 'customer_widget.dart';
import 'models.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  void navigateToCustomer(BuildContext context, Customer customer) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CustomerWidget(customer)),
    );
  }

  ListTile createCustomerWidget(BuildContext context, Customer customer) {
    return ListTile(
      title: Text(customer.name),
      subtitle: Text(customer.location),
      trailing: const Icon(Icons.arrow_forward),
      onTap: () => navigateToCustomer(context, customer),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> customerList = List.from(data.customerList
        .map((Customer customer) => createCustomerWidget(context, customer)));

    return Scaffold(
      appBar: AppBar(
        title: const Text("Customers"),
      ),
      body: Center(
        child: ListView(
          children: customerList,
        ),
      ),
    );
  }
}
