import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:target/core/constants/assets_constants.dart';
import 'package:target/core/constants/colors_constants.dart';
import 'package:target/core/widgets/register_field.dart';
import 'package:target/modules/logon/controllers/logon_controller.dart';

class LogonScreen extends StatefulWidget {
  const LogonScreen({super.key});

  @override
  State<LogonScreen> createState() => _LogonScreenState();
}

class _LogonScreenState extends State<LogonScreen> {
  final logonController = LogonController();
  final formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final loginController = TextEditingController();
  final passController = TextEditingController();
  final pass2Controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    loginController.dispose();
    passController.dispose();
    pass2Controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Novo usuário', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: ColorsConstants.screenBackgroundColor,
        surfaceTintColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        reverse: true,
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
                label: 'Nome',
                icon: Icons.account_circle_outlined,
                isObscure: false,
                controller: nameController,
                textCapitalization: TextCapitalization.words,
              ),
              RegisterField(
                label: 'Usuário',
                icon: Icons.badge_outlined,
                isObscure: false,
                controller: loginController,
              ),
              RegisterField(
                label: 'Senha',
                icon: Icons.vpn_key_outlined,
                isObscure: true,
                controller: passController,
              ),
              RegisterField(
                label: 'Confirmar senha',
                icon: Icons.vpn_key_outlined,
                isObscure: true,
                controller: pass2Controller,
                valiador: (value) {
                  if (passController.text != pass2Controller.text) return 'Senhas diferentes';
                  return null;
                },
              ),
              Gap(10),
              SizedBox(
                height: 50,
                child: FilledButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      logonController.createAndAddUser(
                        context,
                        nameController.text,
                        loginController.text,
                        passController.text,
                      );
                    }
                  },
                  child: Text('Cadastrar', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
