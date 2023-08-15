import 'dart:async';
import 'package:flutter/material.dart';
import 'package:OneApp/cateogties.dart';
import 'package:OneApp/constants.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> loadAssetsAndNavigate() async {
    // Simulate loading assets or other data here
    await Future.delayed(
        Duration(seconds: 2)); // Add any other loading logic if needed

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => cateogries_screen()),
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      loadAssetsAndNavigate();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(kdarkcolor),
      body: Container(
        padding: EdgeInsets.all(25),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                child:
                    Hero(tag: "one", child: Image.asset('lib/images/ONE.png')),
              ),
              SizedBox(height: 20),
              LinearProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Color(kpinkcolor)),
                backgroundColor: Colors.grey[300],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
