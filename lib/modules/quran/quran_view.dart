import 'package:flutter/material.dart';

class QuranView extends StatelessWidget {
  static const String routeName = "quran";

  const QuranView({super.key});

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
            IntrinsicHeight(
              child: Row(
                children: [
                  const Expanded(
                      child: Text(
                    "رقم السورة",
                    textAlign: TextAlign.center,
                  )),
                  VerticalDivider(
                    thickness: 3,
                    color: Theme.of(context).dividerTheme.color,
                  ),
                  const Expanded(
                      child: Text(
                    "اسم السورة",
                    textAlign: TextAlign.center,
                  )),
                ],
              ),
            ),
            Divider(
              color: Theme.of(context).dividerTheme.color,
              thickness: 3,
            )
          ],
        ),
      ],
    );
  }
}
