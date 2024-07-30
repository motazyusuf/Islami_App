import 'package:flutter/material.dart';
import 'package:islami_app/modules/quran/widgets/sura_title_widget.dart';

class QuranView extends StatelessWidget {
  static const String routeName = "quran";
  List<String> suraName = [
    "Sura",
    "Sura",
    "Sura",
    "Sura",
    "Sura",
    "Sura",
    "Sura",
    "Sura",
    "Sura",
    "Sura",
    "Sura",
    "Sura",
    "Sura",
    "Sura",
    "Sura",
    "Sura",
    "Sura",
    "Sura",
    "Sura",
    "Sura",
    "Sura",
    "Sura",
    "Sura",
    "Sura"
  ];

  QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image.asset("assets/images/QuranViewImage.png")),
        const SizedBox(
          height: 10,
        ),
        Column(
          children: [
            Divider(
              color: Theme.of(context).dividerTheme.color,
              thickness: 3,
            ),
            SuraTitleWidget(
              name: "اسم السورة",
              number: "رقم السورة",
            ),
            Divider(
              color: Theme.of(context).dividerTheme.color,
              thickness: 3,
            ),
          ],
        ),
        Expanded(
          child: ListView.builder(
              itemCount: suraName.length,
              itemBuilder: (context, index) => SuraTitleWidget(
                  name: suraName[index], number: "${index + 1}")),
        )
      ],
    );
  }
}
