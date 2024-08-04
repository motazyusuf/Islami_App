import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/core/settings_provider.dart';
import 'package:provider/provider.dart';

class TasbehView extends StatefulWidget {
  static const String routeName = "tasbeh";

  const TasbehView({super.key});

  @override
  State<TasbehView> createState() => _TasbehViewState();
}

int counter = 1;
int index = 0;
double rotation = 0.0;

class _TasbehViewState extends State<TasbehView> {
  @override
  Widget build(BuildContext context) {
    var localization = AppLocalizations.of(context);
    var provider = Provider.of<SettingsProvider>(context);
    List<String> tasbeh = [
      localization!.subnhanallah,
      localization!.alhamduleallah,
      localization!.astghfrullah,
      localization!.nogodexceptallah
    ];
    String zekr = tasbeh[index];
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 10),
          Image.asset(
            provider.currentSebhaHead,
          ),
          InkWell(
              onTap: () {
                if (counter == 30) {
                  counter = 1;
                  if (index == 3) {
                    index = 0;
                  } else {
                    index++;
                  }
                  zekr = tasbeh[index];
                  setState(() {});
                  return;
                }

                counter++;
                rotation += 1 / 30;
                setState(() {});
              },
              child: AnimatedRotation(
                  turns: rotation,
                  duration: Duration(seconds: 1),
                  child: Image.asset(provider.currentSebhaBody))),
          const SizedBox(height: 30),
          Text(localization!.tasbehcount),
          const SizedBox(height: 20),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColorDark,
                borderRadius: BorderRadius.circular(20)),
            child: Center(child: Text(counter.toString())),
          ),
          const SizedBox(height: 10),
          Container(
              width: 190,
              height: 50,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: FittedBox(
                    child: Text(zekr,
                        style: Theme.of(context).textTheme.titleMedium)),
              )),
        ],
      ),
    );
  }
}
