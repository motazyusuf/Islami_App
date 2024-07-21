import 'package:flutter/material.dart';

import '../../layouts/layout_view.dart';

class HadethView extends StatelessWidget {
  static const String routeName = "hadeth";

  const HadethView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "This is $routeName",
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
