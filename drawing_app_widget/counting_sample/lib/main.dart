// ch02_01_remainder_existing_widget_explanation
// 나머지 기존 위젯 설명

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

class _ImageHomePage extends StatelessWidget {
  const _ImageHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('title'),
      ),
      body: const Center(
        child: Placeholder(),
      ),
    );
  }
  // AppBar
  // appBar: AppBar(
  //   title: const Text('AppBar Demo'),
  //   actions: <Widget>[
  //     IconButton(
  //       icon: const Icon(Icons.add_alert),
  //       tooltip: 'Show Snackbar',
  //       onPressed: () {
  //         ScaffoldMessenger.of(context).showSnackBar(
  //             const SnackBar(content: Text('This is a snackbar')));
  //       },
  //     ),
  //     IconButton(
  //       icon: const Icon(Icons.navigate_next),
  //       tooltip: 'Go to the next page',
  //       onPressed: () {
  //         Navigator.push(context, MaterialPageRoute<void>(
  //           builder: (BuildContext context) {
  //             return Scaffold(
  //               appBar: AppBar(
  //                 title: const Text('Next page'),
  //               ),
  //               body: const Center(
  //                 child: Text(
  //                   'This is the next page',
  //                   style: TextStyle(fontSize: 24),
  //                 ),
  //               ),
  //             );
  //           },
  //         ));
  //       },
  //     ),
  //   ],
  // ),
  //
  // FlutterLogo
  // FlutterLogo(
  //   size: 300,
  // ),
  // Icon
  // Icon(
  //         Icons.star,
  //         size: 200,
  //       ),
  //
  // Image
  // Image(
  //  image: AssetImage(),
  // )
  // Image(
  //  image: NetworkImage(),
  // )
  //
  // Placeholder
  // 다른 위젯이 언젠가 추가될 위치를 나타내는 상자를 그리는 위젯
  // 개발 중에 인터페이스가 아직 완료되지 않았음을 나타내는 데 유용함.
  // Placeholder(),
  //
  // Scaffold: 머터리얼 디자인 시각적 레이아웃 구조
}
