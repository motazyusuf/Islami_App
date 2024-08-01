import 'package:flutter/material.dart';
import 'package:islami_app/layouts/detailes_views_layout.dart';

class HadethDetailsView extends StatefulWidget {
  HadethDetailsView({super.key});

  static const String routeName = "hadethDetailsView";

  @override
  State<HadethDetailsView> createState() => _HadethDetailsViewState();
}

class _HadethDetailsViewState extends State<HadethDetailsView> {
  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)?.settings.arguments as Text;

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
