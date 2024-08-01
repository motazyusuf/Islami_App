import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/modules/hadeth/widgets/ahadeth_title.dart';
import 'package:islami_app/modules/hadeth/widgets/hadeth_details_view.dart';

class HadethView extends StatefulWidget {
  static const String routeName = "hadeth";

  HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  @override
  Widget build(BuildContext context) {
    if (content.isEmpty) loadData();
    return Column(
      children: [
        Image.asset(
          "assets/images/HadithViewImage.png",
          scale: 3,
        ),
        const AhadethTitle(),
        Expanded(
            child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, HadethDetailsView.routeName);
          },
          child: ListView.builder(
            itemBuilder: (context, index) => Container(
              padding: EdgeInsetsDirectional.only(top: 5),
              child: Text(
                "${ahadithFinalList[index].title}",
                textAlign: TextAlign.center,
              ),
            ),
            itemCount: ahadithFinalList.length,
          ),
        ))
      ],
    );
  }

  List<Hadith> ahadithFinalList = [];
  String content = "";

  Future<void> loadData() async {
    content = await rootBundle.loadString("assets/files/ahadeth.txt");

    List<String> ahadithList = content.split("#");

    for (int i = 0; i < ahadithList.length; i++) {
      String hadithInstance = ahadithList[i].trim();
      int titleLength = hadithInstance.indexOf("\n");
      String title = hadithInstance.substring(0, titleLength);
      String body = hadithInstance.substring(titleLength + 1);
      Hadith hadith = Hadith(title: title, body: body);
      ahadithFinalList.add(hadith);
      setState(() {});
    }
  }
}

class Hadith {
  String title, body;

  Hadith({required this.title, required this.body});
}
