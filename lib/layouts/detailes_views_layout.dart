import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DetailesViewsLayout extends StatelessWidget {
  DetailesViewsLayout({super.key, required this.child});

  Widget? child;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
          systemNavigationBarColor: Color.fromRGBO(213, 211, 211, 1)),
      child: Container(
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
            padding: const EdgeInsetsDirectional.only(
                top: 10, start: 20, end: 20, bottom: 10),
            margin: const EdgeInsetsDirectional.only(
                top: 10, start: 20, end: 20, bottom: 80),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0XFFF8F8F8).withOpacity(0.8),
            ),
            width: 354,
            height: 652,
            child: child,
          ),
        ),
      ),
    );
    ;
  }
}
