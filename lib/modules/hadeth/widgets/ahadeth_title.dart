import 'package:flutter/material.dart';

class AhadethTitle extends StatelessWidget {
  const AhadethTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: Theme.of(context).dividerTheme.color,
          thickness: 3,
        ),
        const Text("الأحاديث"),
        Divider(
          color: Theme.of(context).dividerTheme.color,
          thickness: 3,
        ),
      ],
    );
  }
}
