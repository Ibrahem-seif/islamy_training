import 'package:flutter/material.dart';
import 'package:islamy_training/core/assets_manger.dart';
import 'package:islamy_training/presentation/screens/home/hadith/hadith_item.dart';

class HadithDetails extends StatelessWidget {
  const HadithDetails({super.key});

  @override
  Widget build(BuildContext context) {
    HadithItem ahadithItem =
        ModalRoute.of(context)?.settings.arguments as HadithItem;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(AssetsManger.lightMainBg),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(ahadithItem.title),
        ),
        body: Card(
            child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 8,
          ),
          child: Text(
            ahadithItem.content,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
          ),
        )),
      ),
    );
  }
}
