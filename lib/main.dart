import 'package:flutter/material.dart';
import 'SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "UI_Kit",
      theme: ThemeData(
        primarySwatch: Colors.orange
      ),
      home: SplashScreen(),
    );
  }
}

