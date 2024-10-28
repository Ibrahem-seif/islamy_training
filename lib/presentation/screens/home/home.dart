import 'package:flutter/material.dart';
import 'package:islamy_training/core/assets_manger.dart';
import 'package:islamy_training/core/strings_manger.dart';
import 'package:islamy_training/presentation/screens/home/hadith/hadith_tab.dart';
import 'package:islamy_training/presentation/screens/home/quran/quran_tab.dart';
import 'package:islamy_training/presentation/screens/home/radio/radio_tab.dart';
import 'package:islamy_training/presentation/screens/home/sebha/sebha_tab.dart';
import 'package:islamy_training/presentation/screens/home/settings/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                AssetsManger.lightMainBg,
              ))),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(StringsManger.appTitle),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssetsManger.quranIcon)),
                  label: StringsManger.quranLable),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssetsManger.hadithIcon)),
                  label: StringsManger.hadithLable),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssetsManger.sebhaIcon)),
                  label: StringsManger.sebhaLable),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssetsManger.radioIcon)),
                  label: StringsManger.radioLable),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: StringsManger.settingsLable,
              )
            ]),
        body: tabs[selectedIndex],
      ),
    );
  }
}
