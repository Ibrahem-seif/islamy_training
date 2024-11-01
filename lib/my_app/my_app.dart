import 'package:flutter/material.dart';
import 'package:islamy_training/config/theme/my_theme.dart';
import 'package:islamy_training/core/routes_manger.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('en'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      theme: MyTheme.light,
      darkTheme: MyTheme.dark,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      routes: RoutesManger.routes,
      initialRoute: RoutesManger.homeRoute,
    );
  }
}
