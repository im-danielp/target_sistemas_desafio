import 'package:flutter/material.dart';
import 'package:target/core/constants/colors_constants.dart';

abstract class ThemeService {
  static final theme = ThemeData(
    colorSchemeSeed: ColorsConstants.primaryColor,
    scaffoldBackgroundColor: ColorsConstants.screenBackgroundColor,
    dialogTheme: DialogThemeData(backgroundColor: ColorsConstants.screenBackgroundColor),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: ColorsConstants.fieldsBackgroundColor,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: ColorsConstants.fieldsBorderColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: ColorsConstants.fieldsBorderColor),
      ),
    ),
  );
}
