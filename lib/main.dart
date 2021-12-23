import 'package:flutter/material.dart';
import 'package:rent_it/screen/home/HomePage.dart';
import 'package:rent_it/screen/welcome/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.white,
        primaryColor: Colors.deepPurple,
        accentColor: Colors.brown,
        textTheme: TextTheme(
          headline1: TextStyle(color: Colors.black),
          bodyText1: TextStyle(color: Colors.black38)
        ),
      ),
      home: Welcome(),
    );
  }
}


