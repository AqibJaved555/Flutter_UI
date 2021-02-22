import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ui/Login_Screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Route route =
        MaterialPageRoute(builder: (BuildContext Context) => LogIn_Screen());
    Timer(Duration(seconds: 3), () => Navigator.push(context, route));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xffE69900),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage("images/logo_black.png"),
                width: MediaQuery.of(context).size.width,
                height: 150,
                fit: BoxFit.cover,
              ),
              Text(
                "UI Design",
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w500),
              )
            ],
          )),
    );
  }
}
