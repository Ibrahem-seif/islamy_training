import 'package:flutter/material.dart';
import 'package:islamy_training/core/assets_manger.dart';
import 'package:islamy_training/core/strings_manger.dart';

class QuranDetails extends StatelessWidget {
  const QuranDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                AssetsManger.lightMainBg,
              ))),
      child: Scaffold(
        appBar: AppBar(
          title: Text(StringsManger.appTitle),
        ),
        body: Text(
          '${StringsManger.suraName}',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
