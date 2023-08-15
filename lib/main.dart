import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'package:OneApp/constants.dart';
import 'package:OneApp/splashscreen.dart';

import 'nointernet_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  MobileAds.instance.initialize();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Color(kdarkcolor),
    statusBarColor: Color(kdarkcolor),
  ));
  runApp(const oneapp());
}

class oneapp extends StatefulWidget {
  const oneapp({super.key});

  @override
  State<oneapp> createState() => _oneappState();
}

class _oneappState extends State<oneapp> {
  @override
  void initState() {
    super.initState();
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none) {
        // Redirect to NoInternetScreen immediately if there is no internet connection
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => nointernet_screen()));
      } else {
        Navigator.pop(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(color: Color(kpinkcolor)),
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: SplashScreen(),
    );
  }
}
