import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:target/core/constants/colors_constants.dart';
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
        colorSchemeSeed: ColorsConstants.primaryColor,
        textTheme: GoogleFonts.dmSansTextTheme(ThemeData.light().textTheme).apply(
          bodyColor: Colors.black,
          displayColor: Colors.black,
        ),
        scaffoldBackgroundColor: ColorsConstants.screenBackgroundColor,
        dialogTheme: DialogThemeData(backgroundColor: ColorsConstants.screenBackgroundColor),
        appBarTheme: AppBarTheme(backgroundColor: ColorsConstants.screenBackgroundColor),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            backgroundColor: ColorsConstants.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(8),
              side: BorderSide(color: ColorsConstants.buttonBorderColor),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: ColorsConstants.fieldsBackgroundColor,
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: ColorsConstants.fieldsBorderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: ColorsConstants.fieldsBorderColor),
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
