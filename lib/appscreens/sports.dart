import 'package:flutter/material.dart';
import '../card.dart';
import '../constants.dart';

class sports_screen extends StatelessWidget {
  const sports_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.vertical, children: [
      Row(
        children: [
          card(
            "lib/images/sports/cb.png",
            "Cricbuzz",
            "https://m.cricbuzz.com/",
            kcardcolor,
          ),
          card("lib/images/sports/espn.png", "ESPN", "https://www.espn.in/",
              kcardcolor),
          card("lib/images/sports/fox.png", "Foxsports",
              "https://www.foxsports.com/", kcardcolor),
        ],
      ),
      Row(
        children: [
          card("lib/images/sports/fifa.png", "FIFA",
              "https://www.fifa.com/fifaplus/en", kcardcolor),
          card("lib/images/sports/ipl.png", "IPL", "https://www.iplt20.com/",
              kcardcolor),
          card(
              "lib/images/sports/onefootball.png",
              "One",
              "https://www.google.com/search?q=one+foot+ball&oq=one+foot+ball&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIVCAEQLhgKGIMBGMcBGLEDGNEDGIAEMgkIAhAAGAoYgAQyCQgDEAAYChiABDIJCAQQABgKGIAEMgkIBRAAGAoYgAQyCQgGEAAYChiABDIJCAcQABgKGIAEMgkICBAAGAoYgAQyCQgJEAAYChiABDIJCAoQABgKGIAEMgkICxAAGAoYgAQyCQgMEAAYChiABDIJCA0QABgKGIAE0gEIMjIyNWowajSoAgCwAgA&client=ms-android-vivo-rvo3&sourceid=chrome-mobile&ie=UTF-8",
              kcardcolor),
        ],
      ),
      Row(
        children: [
          card("lib/images/sports/sn.png", "Sportingnews",
              "https://www.sportingnews.com/in/nba?gr=www", kcardcolor),
          card("lib/images/sports/sk.jpg", "Sportskeeda",
              "https://www.sportskeeda.com/", kcardcolor),
          card("lib/images/sports/f1.png", "Formula1",
              "https://www.formula1.com/", kcardcolor),
        ],
      )
    ]);
  }
}
