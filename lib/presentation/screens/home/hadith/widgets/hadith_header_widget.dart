import 'package:flutter/material.dart';
import 'package:islamy_training/presentation/screens/home/hadith/hadith_tab.dart';

class HadithHeaderWidget extends StatelessWidget {
  HadithHeaderWidget({super.key, required this.hadith});

  final HadithItem hadith;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Text(
        hadith.title,
        style: Theme.of(context).textTheme.titleMedium,
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
      ),
    );
  }
}
