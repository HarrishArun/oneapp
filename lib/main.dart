import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oneapp/constants.dart';
import 'cateogries_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Color(kdarkcolor),
    statusBarColor: Color(kdarkcolor),
  ));
  runApp(const oneapp());
}

class oneapp extends StatelessWidget {
  const oneapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(color: Color(kpinkcolor)),
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: cateogries_screen(),
    );
  }
}
