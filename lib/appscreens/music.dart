import 'package:flutter/material.dart';
import '../card.dart';
import '../constants.dart';

class music_screen extends StatelessWidget {
  const music_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.vertical, children: [
      Row(
        children: [
          card(
            "lib/images/music/spotify.png",
            "Spotify",
            "https://open.spotify.com/",
            kcardcolor,
          ),
          card("lib/images/music/amazonmusic.png", "AmazonMusic",
              "https://music.amazon.in/", kcardcolor),
          card("lib/images/music/wynk.png", "Wynk", "https://wynk.in/music",
              kcardcolor),
        ],
      ),
      Row(
        children: [
          card("lib/images/music/ganna.png", "Gaana", "https://gaana.com/",
              kcardcolor),
          card("lib/images/music/jiosaavan.png", "Jiosavaavn",
              "https://www.jiosaavn.com/", kwhitecolor),
          card("lib/images/music/ytmusic.png", "YT Music",
              "https://music.youtube.com/", kcardcolor),
        ],
      ),
      Row(
        children: [
          card("lib/images/music/resso.jpg", "Resso",
              "https://www.resso.com/in/", kcardcolor),
          card("lib/images/music/tamilradios.png", "TamilRadios",
              "https://www.tamilradios.com/", kcardcolor),
          card("lib/images/shopping/apple.png", "AppleMusic",
              "https://music.apple.com/us/browse", kcardcolor),
        ],
      )
    ]);
  }
}
