import 'package:flutter/material.dart';
import '../card.dart';
import '../constants.dart';

class news_screen extends StatelessWidget {
  const news_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.vertical, children: [
      Row(
        children: [
          card(
            "lib/images/news/quora.jpg",
            "Quora",
            "https://www.quora.com/",
            kcardcolor,
          ),
          card(
              "lib/images/news/googlenews.png",
              "GoogleNews",
              "https://news.google.com/topstories?hl=en-US&gl=US&ceid=US:en",
              kwhitecolor),
          card("lib/images/news/bbc.png", "BBC", "https://www.bbc.com/news",
              kcardcolor),
        ],
      ),
      Row(
        children: [
          card("lib/images/news/timesofindia.png", "TimesofIndia",
              "https://m.timesofindia.com/amp_home", kcardcolor),
          card("lib/images/news/opera.png", "Operanews",
              "https://operanews.com/", kcardcolor),
          card("lib/images/news/ET.jpg", "EconomicTimes",
              "https://m.economictimes.com/", kcardcolor),
        ],
      ),
      Row(
        children: [
          card("lib/images/news/jionews.png", "JioNews", "https://jionews.com/",
              kcardcolor),
          card("lib/images/social/wiki.png", "WikiPedia",
              "https://www.wikipedia.org/", kcardcolor),
          card("lib/images/news/indianexpress.jpg", "IndianExpress",
              "https://indianexpress.com/", kcardcolor),
        ],
      ),
      Row(
        children: [
          card("lib/images/news/dc.jpg", "DC",
              "https://www.deccanchronicle.com/amp", kcardcolor),
          card("lib/images/news/dinamalar.png", "Dinmalar",
              "https://m.dinamalar.com/index.php", kcardcolor),
          card("lib/images/news/dailythandi.png", "DailyThandhi",
              "https://www.dailythanthi.com/", kcardcolor),
        ],
      ),
      Row(
        children: [
          card("lib/images/news/ndtv.png", "NDTV", "https://www.ndtv.com/amp",
              kcardcolor),
          card("lib/images/news/vikatan.jpg", "Vikatan",
              "https://www.vikatan.com/", kcardcolor),
          card("lib/images/news/indiatoday.jpg", "IndiaToday",
              "https://www.indiatoday.in/", kcardcolor),
        ],
      )
    ]);
  }
}
