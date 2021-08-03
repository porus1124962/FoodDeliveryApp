import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/screen/mainScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food Application By Aqib",
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: MainScreen()
    );
  }
}