import 'package:flutter/material.dart';

class QuranDetailsView extends StatelessWidget {
  const QuranDetailsView({super.key});

  static const String routeName = "quranDetails";

  @override
  Widget build(BuildContext context) {
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
          margin: const EdgeInsetsDirectional.only(
              top: 10, start: 30, end: 30, bottom: 80),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color(0XFFF8F8F8).withOpacity(0.8),
          ),
          width: 354,
          height: 652,
        ),
      ),
    );
  }
}
