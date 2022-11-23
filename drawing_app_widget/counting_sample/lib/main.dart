// ch02_03_cupertino_ios_style_widget_explanation
// 쿠퍼티노 iOS 스타일 위젯 설명

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      home: const _ImageHomePage(),
    );
  }
}

class _ImageHomePage extends StatefulWidget {
  const _ImageHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<_ImageHomePage> createState() => _ImageHomePageState();
}

class _ImageHomePageState extends State<_ImageHomePage> {
  final TextEditingController _text = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(middle: Text('hi')),
      body: Center(
        child: CupertinoSearchTextField(
          prefixIcon: Icon(CupertinoIcons.add),
        ),
      ),
    );
  }
  // 1. CupertinoActivityIndicator
  // CupertinoActivityIndicator(),
  //
  // 2. CupertinoNavigationBar
  // appBar: CupertinoNavigationBar(middle: Text('hi')),
  //
  // 3. CupertinoSearchTextField
  // CupertinoSearchTextField(controller: ,
  //  prefixIcon: Icon(CupertinoIcons.add),
  // ),
}
