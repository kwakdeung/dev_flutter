// ch02_02_material_android_style_widget_explanation
// 머터리얼 안드로이드 스타일 위젯 설명

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
      appBar: AppBar(
        title: Text('${_text.text}'),
      ),
      body: Center(
        child: TextField(
          controller: _text,
        ),
      ),
    );
  }
  // 머터리얼 안드로이드 스타일 위젯 설명
  // 1. bottomNavigationBar
  // int _index = 2;
  //
  // bottomNavigationBar: BottomNavigationBar(
  //       currentIndex: _index,
  //       onTap: (value) => setState(() {
  //         _index = value;
  //       }),
  //       items: const <BottomNavigationBarItem>[
  //         BottomNavigationBarItem(icon: Icon(Icons.star), label: 'star'),
  //         BottomNavigationBarItem(
  //             icon: Icon(Icons.access_alarm), label: 'access_alarm'),
  //         BottomNavigationBarItem(
  //             icon: Icon(Icons.settings), label: 'settings'),
  //       ],
  //     ),
  //
  // 2. Slider
  // double _slider = 0.3;
  //
  // Slider(
  //         value: _slider,
  //         onChanged: ((value) => setState(() {
  //               _slider = value;
  //             })),
  //       ),
  //
  // 3. TextField
  // Scaffold(
  //     appBar: AppBar(
  //       title: Text('${_text.text}'),
  //     ),
  //     body: Center(
  //       child: TextField(
  //         controller: _text,
  //       ),
  //     ),
  //   );
}
