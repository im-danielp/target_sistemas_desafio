import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:target/core/constants/keys_constants.dart';
import 'package:target/core/constants/style_constants.dart';
import 'package:target/modules/logon/logon_screen.dart';

class LoginNewAccount extends StatelessWidget {
  const LoginNewAccount({super.key});

  void goToLogon(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();
    KeysConstants.scaffolMainKey.currentState?.clearSnackBars();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LogonScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Ainda não tem uma conta? ',
            style: TextStyle(fontWeight: FontWeight.normal),
          ),

          TextSpan(
            text: 'Cadastre-se',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: StyleConstants.primaryColor,
              decoration: TextDecoration.underline,
              decorationColor: StyleConstants.primaryColor,
              decorationThickness: 2,
            ),
            recognizer: TapGestureRecognizer()..onTap = () => goToLogon(context),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
