import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/settings_provider.dart';
import 'package:provider/provider.dart';

import '../../layouts/layout_view.dart';

class SplashView extends StatefulWidget {
  static const String routeName = "/";

  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, LayoutView.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
          systemNavigationBarColor:
              provider.currentSystemNavigationColorForBackground),
      child: Image.asset(
        "assets/images/splash_dark.png",
        fit: BoxFit.cover,
      ),
    );
  }
}
