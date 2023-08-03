import 'package:flutter/material.dart';
import 'package:oneapp/apps_screen.dart';
import 'package:oneapp/constants.dart';
import 'package:oneapp/shopping.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'catcard.dart';
import 'card.dart';

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
                cateogries_card("lib/images/shopping/ajio.png", "Ajio",
                    apps_screen(shopping_list_elements())),
                cateogries_card("lib/images/shopping/ajio.png", "Ajio",
                    apps_screen(shopping_list_elements())),
              ],
            ),
            Row(
              children: [
                cateogries_card("lib/images/shopping/ajio.png", "Ajio",
                    apps_screen(shopping_list_elements())),
                cateogries_card("lib/images/shopping/ajio.png", "Ajio",
                    apps_screen(shopping_list_elements())),
              ],
            ),
            Row(
              children: [
                cateogries_card("lib/images/shopping/ajio.png", "Ajio",
                    apps_screen(shopping_list_elements())),
                cateogries_card("lib/images/shopping/ajio.png", "Ajio",
                    apps_screen(shopping_list_elements())),
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
