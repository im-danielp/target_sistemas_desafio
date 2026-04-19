import 'package:flutter/material.dart';
import 'package:target/core/constants/keys_constants.dart';
import 'package:target/core/services/locator_service.dart';
import 'package:target/core/services/theme_service.dart';
import 'package:target/core/stores/device_store.dart';
import 'package:target/modules/login/login_screen.dart';

void main() {
  initLocator();
  runApp(const DesafioTarget());
}

class DesafioTarget extends StatelessWidget {
  const DesafioTarget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Target Sistemas Desafio',
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: KeysConstants.snackbarKey,
      theme: ThemeService.theme,
      home: LayoutBuilder(
        builder: (context, constraints) {
          getIt<DeviceStore>().updateScreenSize(constraints.maxWidth, constraints.maxHeight);
          return LoginScreen();
        },
      ),
    );
  }
}
