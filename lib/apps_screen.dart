import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:OneApp/constants.dart';
import 'package:connectivity/connectivity.dart';
import 'package:OneApp/nointernet_screen.dart';

class apps_screen extends StatefulWidget {
  final Widget? elements;
  apps_screen(this.elements);

  @override
  State<apps_screen> createState() => _apps_screenState();
}

class _apps_screenState extends State<apps_screen> {
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

    // initinterstialad();
    initbannerad();

    super.initState();
    showad();
  }

  late InterstitialAd interstitialAd;
  bool isadloaded = false;
  var intaddid = "ca-app-pub-6244166341956934/3816588638"; //interstital ad id
  late BannerAd bannerAd;

  bool isAdloaded = false;
  var adunit = "ca-app-pub-3940256099942544/6300978111"; //testbannerid
  var ogadunit = "ca-app-pub-6244166341956934/9528597233"; //ogbannerid
  initbannerad() {
    bannerAd = BannerAd(
        request: AdRequest(),
        size: AdSize.banner,
        adUnitId: ogadunit,
        // adUnitId: "ca-app-pub-6244166341956934/9528597233",
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
      body: WillPopScope(
        onWillPop: showad(),
        child: Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: widget.elements),
      ),
      //  floatingActionButton: FloatingActionButton(onPressed: showad),
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
