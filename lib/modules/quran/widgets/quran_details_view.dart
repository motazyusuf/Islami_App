import 'package:flutter/material.dart';
import 'package:islami_app/modules/quran/widgets/sura_title_widget.dart';

class QuranDetailsView extends StatelessWidget {
  const QuranDetailsView({super.key});

  static const String routeName = "quranDetails";

  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)?.settings.arguments as SuraTitleWidget;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/IslamiBackground.png"),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("اسلامي"),
        ),
        body: Container(
          padding: const EdgeInsetsDirectional.only(
              top: 10, start: 20, end: 20, bottom: 10),
          margin: const EdgeInsetsDirectional.only(
              top: 10, start: 20, end: 20, bottom: 80),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color(0XFFF8F8F8).withOpacity(0.8),
          ),
          width: 354,
          height: 652,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(" سورة ${data.name}"),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(Icons.play_circle_fill_rounded)
                ],
              ),
              const Divider(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
