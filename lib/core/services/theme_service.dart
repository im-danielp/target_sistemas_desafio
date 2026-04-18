import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:target/core/constants/style_constants.dart';

abstract class ThemeService {
  static final theme = ThemeData(
    colorSchemeSeed: StyleConstants.primaryColor,
    textTheme: GoogleFonts.dmSansTextTheme(ThemeData.light().textTheme).apply(
      bodyColor: StyleConstants.textColor,
      displayColor: StyleConstants.textColor,
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
  );
}
