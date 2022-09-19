import 'package:flutter/material.dart';
import 'package:news/screens/add_content_screen.dart';
import 'package:news/screens/home_screen.dart';
import 'package:news/screens/home_screen.dart';
import 'package:news/screens/homepage.dart';
import 'package:news/screens/main_screen.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
