import 'package:flutter/material.dart';
import '../card.dart';
import '../constants.dart';

class utilities_screen extends StatelessWidget {
  const utilities_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.vertical, children: [
      Row(
        children: [
          card(
            "lib/images/utils/chatgpt.png",
            "ChatGPT",
            "https://chat.openai.com/auth/login",
            kcardcolor,
          ),
          card("lib/images/utils/bard.jpg", "Bard", "https://bard.google.com/",
              kcardcolor),
          card("lib/images/utils/git.png", "Github", "https://github.com/",
              kwhitecolor),
        ],
      ),
      Row(
        children: [
          card("lib/images/utils/freelancer.jpg", "Freelancer",
              "https://www.freelancer.in/", kcardcolor),
          card(
              "lib/images/utils/fiverr.png",
              "Fiverr",
              "https://www.fiverr.com/?gclid=CjwKCAjwxOymBhAFEiwAnodBLOaMeeald4Q3BoA62HzTyNztkU9BmYrdcsbBgWojhbTmnRonL6UnRBoCkvcQAvD_BwE",
              kcardcolor),
          card("lib/images/utils/upwork.png", "Upwork",
              "https://www.upwork.com/", kcardcolor),
        ],
      ),
      Row(
        children: [
          card("lib/images/utils/digilocker.png", "Digilocker",
              "https://www.digilocker.gov.in/", kcardcolor),
          card("lib/images/utils/canva.png", "Canva",
              "https://www.canva.com/en_in/", kcardcolor),
          card("lib/images/utils/drive.png", "Drive", "https://g.co/kgs/YiD6F3",
              kcardcolor),
        ],
      )
    ]);
  }
}
