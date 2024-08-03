import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class RadioView extends StatefulWidget {
  static const String routeName = "radio";

  RadioView({super.key});

  @override
  State<RadioView> createState() => _RadioViewState();
}

class _RadioViewState extends State<RadioView> {
  bool isPressed = false;
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            margin: EdgeInsetsDirectional.only(bottom: 15),
            child: Image.asset("assets/images/RadioViewImage.png")),
        Text("اذاعة القرآن الكريم"),
        SizedBox(
          height: 90,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              color: Color.fromRGBO(250, 204, 29, 1),
              iconSize: 60,
              icon: const Icon(Icons.skip_next),
              onPressed: () {
                // ...
              },
            ),
            IconButton(
              color: Color.fromRGBO(250, 204, 29, 1),
              iconSize: 100,
              icon: isPressed
                  ? const Icon(Icons.pause)
                  : const Icon(Icons.play_arrow),
              onPressed: () async {
                if (!isPressed) {
                  await player.play(UrlSource(
                      "https://n09.radiojar.com/8s5u5tpdtwzuv?rj-ttl=5&rj-tok=AAABkRitlmwAA7wcmMrZVaDRnw"));
                } else {
                  await player.pause();
                }
                isPressed = !isPressed;
                setState(() {});
              },
            ),
            IconButton(
              color: Color.fromRGBO(250, 204, 29, 1),
              iconSize: 60,
              icon: const Icon(Icons.skip_previous),
              onPressed: () {
                // ...
              },
            ),
          ],
        )
      ],
    );
  }
}
