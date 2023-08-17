import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:OneApp/apps_screen.dart';
import 'package:OneApp/appscreens/ecommerce.dart';
import 'package:OneApp/appscreens/education.dart';
import 'package:OneApp/appscreens/entertainment.dart';
import 'package:OneApp/appscreens/finance.dart';
import 'package:OneApp/appscreens/fooddelivery.dart';
import 'package:OneApp/appscreens/health.dart';
import 'package:OneApp/appscreens/music.dart';
import 'package:OneApp/appscreens/news.dart';
import 'package:OneApp/appscreens/utilities.dart';
import 'package:OneApp/appscreens/socialmedia.dart';
import 'package:OneApp/appscreens/sports.dart';
import 'package:OneApp/appscreens/travel.dart';
import 'package:OneApp/constants.dart';

import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'catcard.dart';
import 'nointernet_screen.dart';

class cateogries_screen extends StatefulWidget {
  @override
  State<cateogries_screen> createState() => _cateogries_screenState();
}

class _cateogries_screenState extends State<cateogries_screen> {
  @override
  void initState() {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none) {
        // Redirect to NoInternetScreen immediately if there is no internet connection
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => nointernet_screen()));
      } else {
        Navigator.pop(context);
      }
    });

    super.initState();
    // initbannerad();
  }

  late BannerAd bannerAd;

  bool isAdloaded = false;
  var adunit = "ca-app-pub-3940256099942544/6300978111"; //testbannerid
  var ogadunit = "ca-app-pub-6244166341956934/9528597233"; //ogbannerid

  // initbannerad() {
  //   bannerAd = BannerAd(
  //       request: AdRequest(),
  //       size: AdSize.banner,
  //       //adUnitId: "ca-app-pub-6244166341956934/9528597233",
  //       adUnitId: ogadunit,
  //       listener: BannerAdListener(onAdLoaded: ((ad) {
  //         setState(() {
  //           isAdloaded = true;
  //         });
  //       }), onAdFailedToLoad: ((ad, error) {
  //         ad.dispose();
  //         print(error);
  //       })));
  //   bannerAd.load();
  // }

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
                    "Shopping", apps_screen(ecommerce_screen())),
                cateogries_card("lib/images/cateogries/socialmedia.png",
                    "Social Media", apps_screen(sociamedia_screen())),
              ],
            ),
            Row(
              children: [
                cateogries_card("lib/images/cateogries/food.png",
                    "Food & Groceries", apps_screen(fooddelivery_screen())),
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
                cateogries_card("lib/images/cateogries/health.png", "Health",
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
                    "Utilities", apps_screen(utilities_screen())),
                cateogries_card("lib/images/cateogries/finance.png",
                    "Finance & Banking", apps_screen(finance_screen())),
              ],
            )
          ],
        ),
      ),

      //     bottomNavigationBar: isAdloaded
      //         ? SizedBox(
      //             height: bannerAd.size.height.toDouble(),
      //             width: bannerAd.size.width.toDouble(),
      //             child: AdWidget(ad: bannerAd),
      //           )
      //         : SizedBox(),
    );
  }
}
