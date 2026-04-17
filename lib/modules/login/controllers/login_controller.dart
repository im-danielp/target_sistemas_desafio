import 'package:flutter/material.dart';
import 'package:target/core/collections/user_collection.dart';
import 'package:target/core/services/locator_service.dart';
import 'package:target/core/widgets/custom_snackbar.dart';
import 'package:target/modules/home/home_screen.dart';

class LoginController {
  static final userCollection = getIt<UserCollection>();

  void login(BuildContext context, String user, String password) {
    FocusManager.instance.primaryFocus?.unfocus();

    if (userCollection.isUserRegistered(user)) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        CustomSnackbars.error(message: 'Usuário não cadastrado'),
      );
    }
  }
}
