import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App Bar'),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 100),
        color: Colors.green,
      ),
      // 1. padding
      // Padding(
      //   padding: const EdgeInsets.all(100.0),
      //   child: Container(
      //     color: Colors.yellow,
      //   ),
      // ),
      // 2. margin
      // 3. EdgeInsetsGeometry type
      // 여백 값을 없애고 싶을 때
      // margin: EdgeInsets.zero,

      // left, top, right, bottom 동일한 여백값을 주고 싶을 때
      // margin: const EdgeInsets.all(40),

      // left, top, right, bottom 각기 다른 값을 주고 싶을 때
      // margin: const EdgeInsets.fromLTRB(10, 70, 80, 100),

      // left, top, right, bottom 원하는 값만 여백을 주고 싶을 때
      // margin: const EdgeInsets.only(bottom: 100),
      // margin: const EdgeInsets.only(bottom: 100, top: 20),

      // 가로, 세로 별로 여백을 주고 싶을 때
      // margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 100),
    );
  }
}
