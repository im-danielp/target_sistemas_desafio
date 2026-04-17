import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:target/core/constants/colors_constants.dart';

class LoginLogon extends StatelessWidget {
  const LoginLogon({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Ainda não tem uma conta?',
            style: TextStyle(fontWeight: FontWeight.normal),
          ),

          TextSpan(
            text: ' Cadastre-se',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: ColorsConstants.primaryColor,
            ),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
