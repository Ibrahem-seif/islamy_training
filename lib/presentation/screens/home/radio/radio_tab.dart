import 'package:flutter/material.dart';
import 'package:islamy_training/core/assets_manger.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(
          height: size.height * 0.06,
        ),
        Image.asset(AssetsManger.radio),
        SizedBox(
          height: size.height * 0.05,
        ),
        Text(
          'إذاعة القرآن الكريم',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        Image.asset(
          AssetsManger.player,
          width: size.width * 0.47,
        ),
      ]),
    );
  }
}
