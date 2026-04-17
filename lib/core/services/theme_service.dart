import 'package:flutter/material.dart';
import 'package:target/core/constants/style_constants.dart';

abstract class ThemeService {
  static final theme = ThemeData(
    colorSchemeSeed: StyleConstants.primaryColor,
    scaffoldBackgroundColor: StyleConstants.screenBackgroundColor,
    dialogTheme: DialogThemeData(backgroundColor: StyleConstants.screenBackgroundColor),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: StyleConstants.fieldsBackgroundColor,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: StyleConstants.outlineBorderColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: StyleConstants.outlineBorderColor),
      ),
    ),
  );
}
