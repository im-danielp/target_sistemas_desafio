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
  final userController = TextEditingController();
  final passController = TextEditingController();
  final pass2Controller = TextEditingController();

  void handleAddUser() {
    if (formKey.currentState!.validate()) {
      FocusManager.instance.primaryFocus?.unfocus();
      logonController.addUser(
        context,
        nameController.text,
        userController.text,
        passController.text,
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    userController.dispose();
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
                icon: Icons.badge_outlined,
                isObscure: false,
                controller: nameController,
                textCapitalization: TextCapitalization.words,
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
              RegisterField(
                label: 'Confirmar senha',
                icon: Icons.vpn_key_outlined,
                isObscure: true,
                controller: pass2Controller,
                valiador: (value) {
                  if (value!.isEmpty) return 'Confirme sua senha';
                  if (passController.text != pass2Controller.text) return 'Senhas diferentes';
                  return null;
                },
              ),
              Gap(10),
              SizedBox(
                height: 50,
                child: FilledButton(
                  onPressed: () => handleAddUser(),
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
