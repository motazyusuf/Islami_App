import 'dart:developer';

import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/core/settings_provider.dart';
import 'package:provider/provider.dart';

class SettingsComponent extends StatelessWidget {
  SettingsComponent(
      {super.key, required this.options, required this.optionsName});

  List<String> options;
  String optionsName;

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
            "$optionsName: ",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomDropdown<String>(
              decoration: const CustomDropdownDecoration(
                  closedFillColor: Color.fromRGBO(20, 26, 46, 1),
                  expandedFillColor: Color.fromRGBO(20, 26, 46, 1)),
              items: options,
              initialItem: optionsName == "Language" || optionsName == "اللغة"
                  ? provider.currentLanguage == "ar"
                      ? options[1]
                      : options[0]
                  : options[1],
              onChanged: (value) {
                if (value == "الانجليزية" || value == "English")
                  provider.changeLanguage("en");
                else if (value == "العربية" || value == "Arabic")
                  provider.changeLanguage("ar");
                log('changing value to: $value');
              })
        ],
      ),
    );
  }
}
