import 'package:flutter/material.dart';

import '../../layouts/layout_view.dart';

class RadioView extends StatelessWidget {
  static const String routeName = "radio";

  const RadioView({super.key});

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
