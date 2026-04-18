import 'package:flutter/cupertino.dart';

abstract class StyleConstants {
  static final primaryColor = Color(0XFFF93B00);
  static final darkPrimaryColor = Color(0XFFDD0000);
  static final secondaryColor = Color(0XFF9E20FF);
  static final tertiaryColor = Color(0XFF0089F9);
  static final quartaryColor = Color(0XFF2ADF5A);

  static final textColor = Color.fromARGB(255, 0, 0, 0);
  static final textLowOpacityColor = textColor.withValues(alpha: 0.3);

  static final screenBackgroundColor = Color(0xFFFFF5E6);
  static final fieldsBackgroundColor = Color.fromARGB(255, 255, 255, 255);
  static final outlineBorderColor = Color.fromARGB(255, 0, 0, 0);

  static final screenPadding = EdgeInsets.symmetric(horizontal: 16, vertical: 22);
}
