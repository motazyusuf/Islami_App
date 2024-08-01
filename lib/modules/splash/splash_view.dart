import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
          systemNavigationBarColor: Color.fromRGBO(213, 211, 211, 1)),
      child: Image.asset(
        "assets/images/splash.png",
        fit: BoxFit.cover,
      ),
    );
  }
}
