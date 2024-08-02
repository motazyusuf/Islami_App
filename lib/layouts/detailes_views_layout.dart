import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DetailesViewsLayout extends StatelessWidget {
  DetailesViewsLayout({super.key, required this.child});

  Widget? child;

  @override
  Widget build(BuildContext context) {
    var localization = AppLocalizations.of(context);
    var darkNavigationColor = Color.fromRGBO(9, 13, 25, 1);
    var lightNavigationColor = Color.fromRGBO(213, 211, 211, 1);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value:
          SystemUiOverlayStyle(systemNavigationBarColor: darkNavigationColor),
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/IslamiBackground_dark.png"),
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.white),
            title: Text(localization!.islami,
                style: Theme.of(context).textTheme.titleLarge),
          ),
          body: Container(
            padding: const EdgeInsetsDirectional.only(
                top: 10, start: 20, end: 20, bottom: 10),
            margin: const EdgeInsetsDirectional.only(
                top: 10, start: 20, end: 20, bottom: 80),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color.fromRGBO(20, 26, 46, 0.8),
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
