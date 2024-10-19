import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_training/core/assets_manger.dart';
import 'package:islamy_training/presentation/screens/home/hadith/widgets/hadith_header_widget.dart';

class HadithTab extends StatefulWidget {
  HadithTab({super.key});

  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  List<HadithItem> hadiths = [];

  @override
  Widget build(BuildContext context) {
    if (hadiths.isEmpty) readHadith();
    return Scaffold(
      body: Column(
        children: [
          Expanded(flex: 2, child: Image.asset(AssetsManger.hadithHeader)),
          const Divider(),
          Text(
            'الاحاديث',
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
          ),
          const Divider(),
          Expanded(
            flex: 3,
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(),
              itemBuilder: (context, index) =>
                  HadithHeaderWidget(hadith: hadiths[index]),
              itemCount: hadiths.length,
            ),
          )
        ],
      ),
    );
  }

  void readHadith() async {
    String ahadithContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> ahadith = ahadithContent.split('#');
    for (int i = 0; i < ahadith.length; i++) {
      List<String> hadithLines = ahadith[i].trim().split('\n');
      String hadithTitle = hadithLines[0];
      String hadithContent = hadithLines.removeAt(0);
      HadithItem hadith =
          HadithItem(title: hadithTitle, content: hadithContent);
      hadiths.add(hadith);
    }
    setState(() {});
  }
}

class HadithItem {
  String title;
  String content;

  HadithItem({required this.title, required this.content});
}
