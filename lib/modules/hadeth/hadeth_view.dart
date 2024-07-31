import 'package:flutter/material.dart';
import 'package:islami_app/modules/hadeth/widgets/ahadeth_title.dart';
import 'package:islami_app/modules/hadeth/widgets/hadeth_details_view.dart';

class HadethView extends StatelessWidget {
  static const String routeName = "hadeth";

  List<String> ahadith = [
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
    "حديث رقم",
  ];

  HadethView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/HadithViewImage.png"),
        const AhadethTitle(),
        Expanded(
            child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, HadethDetailsView.routeName);
          },
          child: ListView.builder(
            itemBuilder: (context, index) => Text(
              "${ahadith[index]} ${index + 1}",
              textAlign: TextAlign.center,
            ),
            itemCount: ahadith.length,
          ),
        ))
      ],
    );
  }
}
