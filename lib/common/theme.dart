import 'package:flutter/material.dart';

class AppColor {
  static final primary = const Color(0xFF5a10c2);
  static Color leading = const Color(0xFF2ff7f1);
  static Color leading2 = const Color(0xFFf731d0);
  static Color accent = const Color(0xFFe5ff00);
  static Color hint = const Color(0xFFb8b6b6);
}

final appTheme = ThemeData(
  primaryColor: AppColor.primary,
  scaffoldBackgroundColor: AppColor.primary,
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.orange.shade50,
  )
);