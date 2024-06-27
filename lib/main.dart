import 'package:flutter/material.dart';
import 'package:project1/home.dart';
//import 'package:project1/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'todoapp',
      home: Home(),
    );
  }
}
