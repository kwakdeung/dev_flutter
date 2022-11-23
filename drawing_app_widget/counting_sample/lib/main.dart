// ch02_05_Navigator
// Navigator 이용헤 화면 전환 해보기

import 'package:flutter/material.dart';

import 'pages/page1.dart';
import 'pages/page2.dart';
import 'pages/page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const Page1(),
    );
  }
}
