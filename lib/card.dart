import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:OneApp/constants.dart';
import 'package:OneApp/webview_screen.dart';

class card extends StatefulWidget {
  final String imagepath;
  final String name;
  final int logocolor;
  final String url;

  card(this.imagepath, this.name, this.url, this.logocolor);

  @override
  State<card> createState() => _cardState();
}

class _cardState extends State<card> {
  @override
  void initState() {
    initinterstialad();

    showad();

    super.initState();
  }

  late InterstitialAd interstitialAd;
  bool isadloaded = false;
  var intaddid = "ca-app-pub-3940256099942544/1033173712";

  initinterstialad() {
    InterstitialAd.load(
        adUnitId: intaddid,
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(onAdLoaded: (ad) {
          interstitialAd = ad;
          setState(() {
            isadloaded = true;
          });
        }, onAdFailedToLoad: ((error) {
          interstitialAd.dispose();
        })));
  }

  showad() {
    if (isadloaded) {
      interstitialAd.show();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          // isadloaded
          //     ? interstitialAd.show()
          //     :
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebViewScreen(widget.url),
            ),
          );
          print("tap");
        },
        child: Container(
          margin: EdgeInsets.all(7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color(kcardcolor),
          ),
          height: 100,
          //width: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(
                  widget.imagepath,
                  fit: BoxFit.contain,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(widget.logocolor),
                ),
                height: 55,
                width: 60,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                widget.name,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}
