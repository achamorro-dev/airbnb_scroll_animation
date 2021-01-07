import 'package:airbnb_scroll_animation/ui/home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Airbnb scroll animation',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
