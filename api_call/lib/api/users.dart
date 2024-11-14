import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user.dart';

Future<List<User>> fetchUsers(String urlString) async {
  final url = Uri.parse(urlString);
  List<User> users = [];

  try {
    final response = await http.get(url);

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      users = data.map((var user) => User.fromJson(user)).toList();
    } else {
      print('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (err) {
    print("Error: $err");
  }

  return users;
}
