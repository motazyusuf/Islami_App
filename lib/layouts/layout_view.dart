import 'package:flutter/material.dart';
import 'package:islami_app/modules/hadeth/hadeth_view.dart';
import 'package:islami_app/modules/quran/quran_view.dart';
import 'package:islami_app/modules/radio/radio_view.dart';
import 'package:islami_app/modules/settings/settings_view.dart';
import 'package:islami_app/modules/tasbeh/tasbeh_view.dart';

class LayoutView extends StatefulWidget {
  static const String routeName = "layout";

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  List<Widget> views = [
    RadioView(),
    TasbehView(),
    HadethView(),
    QuranView(),
    SettingsView()
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/IslamiBackground.png"))),
      child: Scaffold(
        appBar: AppBar(
            title:
                Text("اسلامي", style: Theme.of(context).textTheme.titleLarge)),
        body: views[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/icons/radio.png")),
                  label: "Radio"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/icons/sebha.png")),
                  label: "Sebeha"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/icons/hadeth.png")),
                  label: "Hadeth"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/icons/quran.png")),
                  label: "Quran"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings_suggest_rounded), label: "Settings")
            ]),
      ),
    );
  }
}
