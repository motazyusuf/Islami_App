import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/layouts/detailes_views_layout.dart';
import 'package:islami_app/modules/quran/widgets/sura_title_widget.dart';
import 'package:provider/provider.dart';

import '../../../core/settings_provider.dart';

class QuranDetailsView extends StatefulWidget {
  const QuranDetailsView({super.key});

  static const String routeName = "quranDetails";

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)?.settings.arguments as SuraTitleWidget;
    var provider = Provider.of<SettingsProvider>(context);

    if (content.isEmpty) loadData(data.number);

    return DetailesViewsLayout(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(" سورة ${data.name}"),
            const SizedBox(
              width: 10,
            ),
            const Icon(
              Icons.play_circle_fill_rounded,
              color: Color.fromRGBO(250, 204, 29, 1),
            )
          ],
        ),
        const Divider(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => Text(
              "(${index + 1}) ${versesList[index]} ",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  height: 1.8, color: provider.currentQuranHadithTextColor),
              textAlign: TextAlign.center,
            ),
            itemCount: versesList.length,
          ),
        )
      ],
    ));
  }

  String content = "";
  List<String> versesList = [];

  Future<void> loadData(String suraNumber) async {
    content = await rootBundle.loadString("assets/files/$suraNumber.txt");
    versesList = content.split("\n");
    print(content);
    setState(() {});
  }
}
