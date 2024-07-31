import 'package:flutter/material.dart';
import 'package:islami_app/layouts/detailes_views_layout.dart';

class HadethDetailsView extends StatelessWidget {
  HadethDetailsView({super.key});

  static const String routeName = "hadethDetailsView";

  @override
  Widget build(BuildContext context) {
    return DetailesViewsLayout(
        child: const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("حديث رقم"),
          ],
        ),
        Divider(
          height: 10,
        ),
      ],
    ));
  }
}
