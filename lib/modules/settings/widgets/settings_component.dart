import 'dart:developer';

import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/core/settings_provider.dart';
import 'package:provider/provider.dart';

class SettingsComponent extends StatefulWidget {
  SettingsComponent(
      {super.key, required this.options, required this.optionsName});

  List<String> options;
  String optionsName;

  @override
  State<SettingsComponent> createState() => _SettingsComponentState();
}

class _SettingsComponentState extends State<SettingsComponent> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    var provider = Provider.of<SettingsProvider>(context);

    return Padding(
      padding: EdgeInsets.only(top: height / 8, left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${widget.optionsName}: ",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomDropdown<String>(
              decoration: CustomDropdownDecoration(
                  closedFillColor: provider.currentContainersBackgroundColor,
                  expandedFillColor: provider.currentContainersBackgroundColor),
              items: widget.options,
              initialItem: widget.optionsName == "Language" ||
                      widget.optionsName == "اللغة"
                  ? provider.currentLanguage == "ar"
                      ? widget.options[1]
                      : widget.options[0]
                  : provider.currentMode == ThemeMode.dark
                      ? widget.options[1]
                      : widget.options[0],
              onChanged: (value) {
                if (value == "الانجليزية" || value == "English") {
                  provider.changeLanguage("en");
                } else if (value == "العربية" || value == "Arabic") {
                  provider.changeLanguage("ar");
                }

                if (value == "داكن" || value == "Dark") {
                  provider.changeMode(ThemeMode.dark);
                  provider.changeBackground(
                      "assets/images/IslamiBackground_dark.png");
                  provider.changeSystemNavigationColor(
                      const Color.fromRGBO(9, 13, 25, 1),
                      const Color.fromRGBO(20, 26, 46, 1));
                  provider.changeContainerBackgroundColor(
                      const Color.fromRGBO(20, 26, 46, 0.8));
                  provider.changeQuranHadithTextColor(
                      const Color.fromRGBO(250, 204, 29, 1));
                } else if (value == "مضيئ" || value == "Light") {
                  provider.changeMode(ThemeMode.light);
                  provider
                      .changeBackground("assets/images/IslamiBackground.png");
                  provider.changeSystemNavigationColor(
                      const Color.fromRGBO(213, 211, 211, 1),
                      const Color.fromRGBO(183, 147, 95, 1));
                  provider.changeContainerBackgroundColor(
                      const Color.fromRGBO(248, 248, 248, 0.8));
                  provider.changeQuranHadithTextColor(Colors.white);
                }

                log('changing value to: $value');
              })
        ],
      ),
    );
  }
}
