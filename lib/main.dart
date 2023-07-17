import 'package:flutter/material.dart';
import 'package:myntra/scenes/insider.dart';

import 'scenes/myntra_homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Myntra',
      theme: ThemeData(
        primaryColor: Colors.pinkAccent,
        accentColor: Colors.white,
      ),
      home: MyntraHomePage(),
      
    );
  }
}

