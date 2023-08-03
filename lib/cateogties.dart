import 'package:flutter/material.dart';
import 'package:oneapp/apps_screen.dart';
import 'package:oneapp/appscreens/ecommerce.dart';
import 'package:oneapp/appscreens/education.dart';
import 'package:oneapp/appscreens/entertainment.dart';
import 'package:oneapp/appscreens/finance.dart';
import 'package:oneapp/appscreens/fooddelivery.dart';
import 'package:oneapp/appscreens/health.dart';
import 'package:oneapp/appscreens/music.dart';
import 'package:oneapp/appscreens/news.dart';
import 'package:oneapp/appscreens/productivity.dart';
import 'package:oneapp/appscreens/socialmedia.dart';
import 'package:oneapp/appscreens/sports.dart';
import 'package:oneapp/appscreens/travel.dart';
import 'package:oneapp/constants.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'catcard.dart';

class cateogries_screen extends StatefulWidget {
  @override
  State<cateogries_screen> createState() => _cateogries_screenState();
}

class _cateogries_screenState extends State<cateogries_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initbannerad();
  }

  late BannerAd bannerAd;

  bool isAdloaded = false;
  var adunit = "ca-app-pub-3940256099942544/6300978111";
  var ogadunit = "ca-app-pub-6244166341956934/7648361744"; //testid

  initbannerad() {
    bannerAd = BannerAd(
        request: AdRequest(),
        size: AdSize.banner,
        adUnitId: adunit,
        listener: BannerAdListener(onAdLoaded: ((ad) {
          setState(() {
            isAdloaded = true;
          });
        }), onAdFailedToLoad: ((ad, error) {
          ad.dispose();
          print(error);
        })));
    bannerAd.load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(kdarkcolor),
      appBar: AppBar(
          backgroundColor: Color(kcardcolor),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child:
                    Hero(tag: "one", child: Image.asset('lib/images/ONE.png')),
                width: 54,
              ),
              Icon(Icons.search)
            ],
          )),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Row(
              children: [
                cateogries_card("lib/images/cateogries/shopping.png",
                    "E-Commerce", apps_screen(ecommerce_screen())),
                cateogries_card("lib/images/cateogries/socialmedia.png",
                    "Social Media", apps_screen(sociamedia_screen())),
              ],
            ),
            Row(
              children: [
                cateogries_card("lib/images/cateogries/food.png",
                    "FoodDelivery", apps_screen(fooddelivery_screen())),
                cateogries_card("lib/images/cateogries/news.png", "News",
                    apps_screen(news_screen())),
              ],
            ),
            Row(
              children: [
                cateogries_card("lib/images/cateogries/travel.png", "Travel",
                    apps_screen(travel_screen())),
                cateogries_card("lib/images/cateogries/ott.png",
                    "Entertainment", apps_screen(entertainment_screen())),
              ],
            ),
            Row(
              children: [
                cateogries_card("lib/images/cateogries/health.png", "health",
                    apps_screen(health_screen())),
                cateogries_card("lib/images/cateogries/sports.png", "Sports",
                    apps_screen(sports_screen())),
              ],
            ),
            Row(
              children: [
                cateogries_card("lib/images/cateogries/music.png", "Music",
                    apps_screen(music_screen())),
                cateogries_card("lib/images/cateogries/education.png",
                    "Education", apps_screen(education_screen())),
              ],
            ),
            Row(
              children: [
                cateogries_card("lib/images/cateogries/utilities.png",
                    "Productivity", apps_screen(productivity_screen())),
                cateogries_card("lib/images/cateogries/finance.png", "Finance",
                    apps_screen(finance_screen())),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: isAdloaded
          ? SizedBox(
              height: bannerAd.size.height.toDouble(),
              width: bannerAd.size.width.toDouble(),
              child: AdWidget(ad: bannerAd),
            )
          : SizedBox(),
    );
  }
}
