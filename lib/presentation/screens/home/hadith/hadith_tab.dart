import 'package:flutter/material.dart';
import 'package:islamy_training/core/assets_manger.dart';

class HadithTab extends StatelessWidget {
  const HadithTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(child: Image.asset(AssetsManger.hadithHeader)),
          Divider(),
          Text('الاحاديث',
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center),
          Divider()
        ],
      ),
    );
  }
}
