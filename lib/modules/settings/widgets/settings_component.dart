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
    var color = Color.fromRGBO(20, 26, 46, 1);

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
                  closedFillColor: color, expandedFillColor: color),
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
                if (value == "الانجليزية" || value == "English")
                  provider.changeLanguage("en");
                else if (value == "العربية" || value == "Arabic")
                  provider.changeLanguage("ar");

                if (value == "داكن" || value == "Dark") {
                  provider.changeMode(ThemeMode.dark);
                  provider.changeBackground(
                      "assets/images/IslamiBackground_dark.png");
                } else if (value == "مضيئ" || value == "Light") {
                  provider.changeMode(ThemeMode.light);
                  provider
                      .changeBackground("assets/images/IslamiBackground.png");
                }

                log('changing value to: $value');
              })
        ],
      ),
    );
  }
}
