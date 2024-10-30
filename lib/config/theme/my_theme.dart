import 'package:flutter/material.dart';
import 'package:islamy_training/core/colors_manger.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 30,
        color: ColorsManger.blackColor,
      ),
    ),
    textTheme: const TextTheme(
        titleMedium: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
        labelMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        displayMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
    dividerTheme: const DividerThemeData(
      color: ColorsManger.goldColor,
      thickness: 3,
    ),
    scaffoldBackgroundColor: ColorsManger.transparentColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: TextStyle(fontSize: 16),
      backgroundColor: ColorsManger.goldColor,
      selectedItemColor: ColorsManger.blackColor,
      selectedIconTheme: IconThemeData(
        size: 35,
      ),
      unselectedItemColor: ColorsManger.whiteColor,
      showSelectedLabels: true,
      showUnselectedLabels: false,
    ),
    cardTheme: CardTheme(
      color: ColorsManger.goldColor,
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 10,
    ),
  );
}
