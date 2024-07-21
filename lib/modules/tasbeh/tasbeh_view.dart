import 'package:flutter/material.dart';
import 'package:islami_app/layouts/layout_view.dart';

class TasbehView extends StatelessWidget {
  static const String routeName = "tasbeh";

  const TasbehView({super.key});

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
