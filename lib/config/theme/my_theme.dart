// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:islamy_training/core/colors_manger.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 30,
        color: ColorsManger.blackColor,
      ),
    ),
    textTheme: TextTheme(
      titleMedium: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
      labelMedium: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
    ),
    dividerTheme: DividerThemeData(
      color: ColorsManger.goldColor,
      thickness: 3,
    ),
    scaffoldBackgroundColor: ColorsManger.transparentColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
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
  );
}
