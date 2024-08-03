// import 'package:flutter/material.dart';
//
// class RadioButtonComponent extends StatelessWidget {
//   const RadioButtonComponent({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return             IconButton(
//       color: Color.fromRGBO(250, 204, 29, 1),
//       iconSize: 60,
//       icon: const Icon(Icons.skip_next),
//       onPressed: () async {
//         if (index == 1)
//           index = 0;
//         else
//           index++;
//
//         await player.pause();
//         currentChannelLink = radioChannelsLink[index];
//         if (isPressed) await player.play(UrlSource(currentChannelLink));
//
//         setState(() {});
//       },
//     );
//   }
// }
