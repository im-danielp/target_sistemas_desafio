import 'package:flutter/material.dart';
import 'package:target/core/collections/user_collection.dart';
import 'package:target/core/models/user_model.dart';
import 'package:target/core/services/locator_service.dart';
import 'package:target/core/widgets/custom_snackbar.dart';

class LogonController {
  static final userCollection = getIt<UserCollection>();

  void addUser(
    BuildContext context,
    String name,
    String login,
    String password,
  ) {
    final newUser = UserModel(
      name: name.trim(),
      login: login.trim(),
      password: password.trim(),
    );

    if (userCollection.isUserRegistered(newUser.login)) {
      ScaffoldMessenger.of(context).showSnackBar(
        CustomSnackbars.error(message: 'Usuário já cadastrado!'),
      );
    } else {
      userCollection.addUser(newUser);
      ScaffoldMessenger.of(context).showSnackBar(
        CustomSnackbars.success(message: 'Usuário criado com sucesso'),
      );
      Navigator.pop(context);
    }
  }
}
