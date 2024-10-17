import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_training/core/assets_manger.dart';
import 'package:islamy_training/presentation/screens/home/quran/quran_details/widgets/verses_widgets.dart';
import 'package:islamy_training/presentation/screens/home/quran/quran_item.dart';

class QuranDetails extends StatefulWidget {
  QuranDetails({super.key});

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    QuranItem suraItem =
        ModalRoute.of(context)?.settings.arguments as QuranItem;
    if (verses.isEmpty) readSura(suraItem.index);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                AssetsManger.lightMainBg,
              ))),
      child: Scaffold(
          appBar: AppBar(
            title: Text(suraItem.suraName),
          ),
          body: Column(
            children: [
              Center(child: Text(suraItem.suraName)),
              verses.isEmpty
                  ? Center(child: CircularProgressIndicator())
                  : Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, index) =>
                            VersesWidgets(ayat: verses[index]),
                        itemCount: verses.length,
                      ),
                    ),
            ],
          )),
    );
  }

  void readSura(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    verses = fileContent.trim().split('\n');
    setState(() {});
  }
}
