import 'package:flutter/material.dart';
import 'api/users.dart';
import 'models/user.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  final url = "https://jsonplaceholder.typicode.com/users";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "List of Users",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          backgroundColor: Colors.purple,
        ),
        body: FutureBuilder(
            future: fetchUsers(url),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text('Error: ${snapshot.error}'),
                ); // Error state
              } else {
                List<User> users = snapshot.data!;
                if (users.isEmpty) {
                  return const Center(
                    child: Text('No users available'),
                  ); // Empty list message
                }
                return ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    User user = users[index];
                    return ListTile(
                      title: Text(user.name),
                      subtitle: Text(user.email),
                      leading: CircleAvatar(child: Text(user.name[0])),
                    );
                  },
                );
              }
            }),
      ),
    );
  }
}
