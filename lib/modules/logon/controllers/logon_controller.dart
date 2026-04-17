import 'package:flutter/material.dart';
import 'package:target/core/collections/user_collection.dart';
import 'package:target/core/models/user_model.dart';

class LogonController {
  static final userCollection = UserCollection();

  void createAndAddUser(
    BuildContext context,
    String name,
    String login,
    String password,
  ) {
    final user = UserModel(
      name: name,
      login: login,
      password: password,
    );
    userCollection.addUser(user);

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(
      SnackBar(
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Usuário criado com sucesso!', style: TextStyle(fontWeight: FontWeight.bold)),
            Icon(Icons.check_circle, color: Colors.white),
          ],
        ),
        backgroundColor: Colors.green,
      ),
    );

    Navigator.pop(context);
  }
}
