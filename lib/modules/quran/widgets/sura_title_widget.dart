import 'package:flutter/material.dart';

class SuraTitleWidget extends StatelessWidget {
  SuraTitleWidget({super.key, required this.name, required this.number});

  String name, number;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
              child: Text(
            number,
            textAlign: TextAlign.center,
          )),
          VerticalDivider(
            thickness: 3,
            color: Theme.of(context).dividerTheme.color,
          ),
          Expanded(
              child: Text(
            name,
            textAlign: TextAlign.center,
          )),
        ],
      ),
    );
  }
}
