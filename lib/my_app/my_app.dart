// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:islamy_training/config/theme/my_theme.dart';
import 'package:islamy_training/core/routes_manger.dart';
import 'package:islamy_training/presentation/screens/home/home.dart';
import 'package:islamy_training/presentation/screens/home/quran/quran_details/quran_details.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      routes: {
        RoutesManger.homeRoute: (_) => HomeScreen(),
        RoutesManger.quranDetailsRoute: (_) => QuranDetails(),
      },
      initialRoute: RoutesManger.homeRoute,
    );
  }
}
