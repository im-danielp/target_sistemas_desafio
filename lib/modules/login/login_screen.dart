import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:target/core/constants/assets_constants.dart';
import 'package:target/modules/login/widgets/login_field.dart';
import 'package:target/modules/login/widgets/login_logon.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final userController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          spacing: 15,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              AssetsConstants.kTargetFullLogo,
              height: 140,
            ),
            LoginField(
              label: 'Usuário',
              icon: Icons.account_circle_outlined,
              isObscure: false,
              controller: userController,
            ),
            LoginField(
              label: 'Senha',
              icon: Icons.vpn_key_outlined,
              isObscure: true,
              controller: passController,
            ),
            Text(
              'Esqueci minha senha',
              textAlign: TextAlign.right,
            ),
            Gap(15),
            SizedBox(
              height: 50,
              child: FilledButton(
                onPressed: () {},
                child: Text('Entrar'),
              ),
            ),
            LoginLogon(),
          ],
        ),
      ),
    );
  }
}
