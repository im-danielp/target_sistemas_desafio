import 'package:flutter/material.dart';
import 'package:target/core/locator/locator.dart';
import 'package:target/core/stores/device_store.dart';
import 'package:target/modules/infos/infos_screen.dart';

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
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        dialogTheme: DialogThemeData(backgroundColor: Colors.white),
      ),
      home: LayoutBuilder(
        builder: (context, constraints) {
          getIt<DeviceStore>().updateScreenWidth(constraints.maxWidth);
          return InfosScreen();
        },
      ),
    );
  }
}
