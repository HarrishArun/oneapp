import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:OneApp/constants.dart';

class cateogries_card extends StatefulWidget {
  final String imagepath;
  final String name;
  final Widget screenname;

  cateogries_card(this.imagepath, this.name, this.screenname);

  @override
  State<cateogries_card> createState() => _cateogries_cardState();
}

class _cateogries_cardState extends State<cateogries_card> {
  @override
  void initState() {
    initinterstialad();

    showad();

    super.initState();
  }

  late InterstitialAd interstitialAd;
  bool isadloaded = false;
  var intaddid = "ca-app-pub-6244166341956934/3816588638";

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
          showad();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => widget.screenname,
            ),
          );
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
