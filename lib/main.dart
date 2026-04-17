import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:target/core/constants/style_constants.dart';
import 'package:target/core/constants/keys_constants.dart';
import 'package:target/core/services/locator_service.dart';
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
      theme: ThemeData(
        colorSchemeSeed: StyleConstants.primaryColor,
        textTheme: GoogleFonts.dmSansTextTheme(ThemeData.light().textTheme).apply(
          bodyColor: Colors.black,
          displayColor: Colors.black,
        ),
        scaffoldBackgroundColor: StyleConstants.screenBackgroundColor,
        dialogTheme: DialogThemeData(
          backgroundColor: StyleConstants.screenBackgroundColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: StyleConstants.primaryColor),
            borderRadius: BorderRadiusGeometry.circular(10),
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: StyleConstants.screenBackgroundColor,
          surfaceTintColor: StyleConstants.screenBackgroundColor,
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            backgroundColor: StyleConstants.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(8),
              side: BorderSide(color: StyleConstants.outlineBorderColor),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: StyleConstants.fieldsBackgroundColor,
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          hintStyle: TextStyle(color: const Color.fromARGB(88, 0, 0, 0)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: StyleConstants.outlineBorderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: StyleConstants.outlineBorderColor),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
      ),
      home: LayoutBuilder(
        builder: (context, constraints) {
          getIt<DeviceStore>().updateScreenWidth(constraints.maxWidth);
          return LoginScreen();
        },
      ),
    );
  }
}
