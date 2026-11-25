import 'package:flutter/material.dart';

import 'color_manager.dart';

class ThemeManager {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: ColorManager.primaryBackground,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: ColorManager.darkGrey,
      unselectedItemColor: ColorManager.white,
      selectedItemColor: ColorManager.primaryYellow,
    ),
  );
}
