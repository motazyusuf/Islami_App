import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  static const String routeName = "settings";

  const SettingsView({super.key});

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
