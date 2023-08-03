import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:oneapp/constants.dart';

class nointernet_screen extends StatefulWidget {
  const nointernet_screen({super.key});

  @override
  State<nointernet_screen> createState() => _nointernet_screenState();
}

class _nointernet_screenState extends State<nointernet_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(kdarkcolor),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Lottie.asset("lib/images/nointernet.json"),
              height: 300,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "No Internet!",
              style: TextStyle(
                  color: Color(kpinkcolor),
                  fontSize: 25,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
