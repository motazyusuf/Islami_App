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

  List<String> radioChannelsLink = [
    "https://stream-162.zeno.fm/ru2hqnplhk7uv?zt=eyJhbGciOiJIUzI1NiJ9.eyJzdHJlYW0iOiJydTJocW5wbGhrN3V2IiwiaG9zdCI6InN0cmVhbS0xNjIuemVuby5mbSIsInJ0dGwiOjUsImp0aSI6IlFSSFE2cDB1U2RTdUtNeUo3VmZIU2ciLCJpYXQiOjE3MjI2OTk0ODAsImV4cCI6MTcyMjY5OTU0MH0.ueNEnE07Ig2fO3zqebTlSL7E9WeB4E3x1PmR_tiMoH4",
    "https://3vh.liveradiu.com:8000/el-shaarawy.mp3",
  ];
  List<String> radioChannelsNames = [
    "اذاعة القرآن الكريم",
    "اذاعة الشيخ الشعراوي",
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    String currentChannelName = radioChannelsNames[index];
    String currentChannelLink = radioChannelsLink[index];
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            margin: EdgeInsetsDirectional.only(bottom: 15),
            child: Image.asset("assets/images/RadioViewImage.png")),
        Text(currentChannelName),
        const SizedBox(
          height: 90,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // next
            IconButton(
              color: Color.fromRGBO(250, 204, 29, 1),
              iconSize: 60,
              icon: const Icon(Icons.skip_next),
              onPressed: () async {
                if (index == 1)
                  index = 0;
                else
                  index++;

                await player.pause();
                currentChannelLink = radioChannelsLink[index];
                if (isPressed) await player.play(UrlSource(currentChannelLink));

                setState(() {});
              },
            ),
            // play
            IconButton(
              color: Color.fromRGBO(250, 204, 29, 1),
              iconSize: 100,
              icon: isPressed
                  ? const Icon(Icons.pause)
                  : const Icon(Icons.play_arrow),
              onPressed: () async {
                if (!isPressed) {
                  await player.play(UrlSource(currentChannelLink));
                  print("played");
                } else {
                  await player.pause();
                  print("paused");
                }
                isPressed = !isPressed;
                setState(() {});
              },
            ),
            // previous
            IconButton(
              color: Color.fromRGBO(250, 204, 29, 1),
              iconSize: 60,
              icon: const Icon(Icons.skip_previous),
              onPressed: () async {
                if (index == 0)
                  index = 1;
                else
                  index--;
                await player.pause();
                currentChannelLink = radioChannelsLink[index];
                if (isPressed) await player.play(UrlSource(currentChannelLink));
                setState(() {});
              },
            ),
          ],
        )
      ],
    );
  }
}
