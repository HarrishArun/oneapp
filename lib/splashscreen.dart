import 'dart:async';
import 'package:flutter/material.dart';
import 'package:OneApp/cateogties.dart';
import 'package:OneApp/constants.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the other screen after 4 seconds
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => cateogries_screen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color(kdarkcolor), // Set the background color of your splash screen
      body: Container(
        padding: EdgeInsets.all(25),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                // width: 150,
                child:
                    Hero(tag: "one", child: Image.asset('lib/images/ONE.png')),
              ), // Replace 'splash.png' with your image asset
              SizedBox(height: 20),
              LinearProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                    Color(kpinkcolor)), // Set your custom color here
                backgroundColor: Colors
                    .grey[300], // Set the background color of the progress bar
              ),
            ],
          ),
        ),
      ),
    );
  }
}
