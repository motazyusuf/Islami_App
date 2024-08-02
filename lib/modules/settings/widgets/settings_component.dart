import 'dart:developer';

import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';

class SettingsComponent extends StatelessWidget {
  SettingsComponent(
      {super.key, required this.options, required this.optionsName});

  List<String> options;
  String optionsName;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;

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
              hintText: 'Select job role',
              items: options,
              initialItem: options[0],
              onChanged: (value) {
                log('changing value to: $value');
              })
        ],
      ),
    );
  }
}
