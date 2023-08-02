import 'package:flutter/material.dart';
import 'package:oneapp/constants.dart';
import 'package:oneapp/webview_screen.dart';

class card extends StatelessWidget {
  final String imagepath;
  final String name;
  final int logocolor;
  final String url;

  card(this.imagepath, this.name, this.url, this.logocolor);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebViewScreen(url),
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
                  imagepath,
                  fit: BoxFit.contain,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(logocolor),
                ),
                height: 55,
                width: 60,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                name,
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
