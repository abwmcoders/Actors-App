import 'package:flutter/material.dart';
import 'package:tasked/src/shared/shared.dart';


class AppTheme {
  static ThemeData themeData = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Palette.primaryColor,
    primaryColor: Palette.primaryColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: Palette.primaryColor,
      elevation: 0,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 0,
      selectedItemColor: Palette.secondaryColor,
      unselectedItemColor: Palette.secondaryColor,
      selectedLabelStyle: TextStyle(
        color: Palette.primaryColor,
        fontFamily: "Satoshi",
        fontSize: 13,
        fontWeight: FontWeight.bold,
      ),
      enableFeedback: true,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      unselectedLabelStyle: TextStyle(
        color: Palette.secondaryColor,
        fontFamily: "Satoshi",
        fontSize: 13,
        fontWeight: FontWeight.normal,
      ),
    ),
    buttonBarTheme: const ButtonBarThemeData(
      mainAxisSize: MainAxisSize.max,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Palette.primaryColor,
    ),
  );
}
