import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:target/core/constants/assets_constants.dart';
import 'package:target/core/widgets/register_field.dart';
import 'package:target/modules/login/controllers/login_controller.dart';
import 'package:target/modules/login/widgets/login_new_account.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  static final loginController = LoginController();

  final userController = TextEditingController();
  final passController = TextEditingController();

  void handleLogin() {
    if (formKey.currentState!.validate()) {
      loginController.login(
        context,
        userController.text,
        passController.text,
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
    userController.dispose();
    passController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: formKey,
            child: Column(
              spacing: 15,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  AssetsConstants.kTargetFullLogo,
                  height: 140,
                ),
                RegisterField(
                  label: 'Usuário',
                  icon: Icons.account_circle_outlined,
                  isObscure: false,
                  controller: userController,
                ),
                RegisterField(
                  label: 'Senha',
                  icon: Icons.vpn_key_outlined,
                  isObscure: true,
                  controller: passController,
                ),
                Text('Esqueci minha senha', textAlign: TextAlign.right),
                Gap(15),
                SizedBox(
                  height: 50,
                  child: FilledButton(
                    onPressed: () => handleLogin(),
                    child: Text('Entrar', style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
                Gap(1),
                LoginNewAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
