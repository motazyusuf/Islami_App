import 'package:flutter/material.dart';
import 'package:islami_app/core/settings_provider.dart';
import 'package:islami_app/layouts/detailes_views_layout.dart';
import 'package:provider/provider.dart';

import '../hadeth_view.dart';

class HadethDetailsView extends StatefulWidget {
  HadethDetailsView({super.key});

  static const String routeName = "hadethDetailsView";

  @override
  State<HadethDetailsView> createState() => _HadethDetailsViewState();
}

class _HadethDetailsViewState extends State<HadethDetailsView> {
  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)?.settings.arguments as Hadith;
    List<String> hadithBody = data.body.split("\n");
    var provider = Provider.of<SettingsProvider>(context);

    return DetailesViewsLayout(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(data.title),
          ],
        ),
        const Divider(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                hadithBody[index],
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    height: 1.8, color: provider.currentQuranHadithTextColor),
              ),
            ),
            itemCount: hadithBody.length,
          ),
        )
      ],
    ));
  }
}
