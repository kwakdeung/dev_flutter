// ch01_08_align_spacer_expanded
// 배치 및 공간 제어 위젯 작성

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
      body: Row(
        children: [
          Container(
            color: Colors.yellow,
            height: 40,
            width: 40,
          ),
          Container(
            color: Colors.green,
            height: 40,
            width: 40,
          ),
          Container(
            color: Colors.blue,
            height: 40,
            width: 40,
          ),
          Container(
            color: Colors.pink,
            child: const Text('어떤 값이 들어올지 몰라'),
          ),
          const Expanded(
            child: Text('fdafdsfsdadfdsfsdafadsfaddsfasdf'),
          ),
          Container(
            color: Colors.purple,
            height: 40,
            width: 40,
          ),
        ],
      ),
      // 1. Align
      // 아래 3개 코드는 다 동일(아래로 내려갈수록 자율성이 높다.)
      // Center(
      //   child: Container(
      //     color: Colors.yellow,
      //     height: 200,
      //     width: 200,
      //   ),
      // ),
      //  Align(
      //   alignment: const Alignment(0, 0),
      //   alignment: Alignment.center,
      //   child: Container(
      //     color: Colors.yellow,
      //     height: 200,
      //     width: 200,
      //   ),
      // ),
      // 2. Spacer(여백)
      // (1)
      // Row(
      //   children: [
      //     Container(
      //       color: Colors.yellow,
      //       height: 40,
      //       width: 40,
      //     ),
      //     Container(
      //       color: Colors.green,
      //       height: 40,
      //       width: 40,
      //     ),
      //     const Spacer(),
      //     Container(
      //       color: Colors.blue,
      //       height: 40,
      //       width: 40,
      //     ),
      //     const Spacer(),
      //     Container(
      //       color: Colors.pink,
      //       height: 40,
      //       width: 40,
      //     ),
      //     const Spacer(),
      //     Container(
      //       color: Colors.purple,
      //       height: 40,
      //       width: 40,
      //     ),
      //   ],
      // ),
      // 2. (2) flex
      // = flex값 / flex 총합
      // Row(
      //   children: [
      //     Container(
      //       color: Colors.yellow,
      //       height: 40,
      //       width: 40,
      //     ),
      //     Container(
      //       color: Colors.green,
      //       height: 40,
      //       width: 40,
      //     ),
      //     const Spacer(
      //       flex: 1,
      //     ),
      //     Container(
      //       color: Colors.blue,
      //       height: 40,
      //       width: 40,
      //     ),
      //     const Spacer(
      //       flex: 1,
      //     ),
      //     Container(
      //       color: Colors.pink,
      //       height: 40,
      //       width: 40,
      //     ),
      //     const Spacer(
      //       flex: 3,
      //     ),
      //     Container(
      //       color: Colors.purple,
      //       height: 40,
      //       width: 40,
      //     ),
      //   ],
      // ),
      // 3. Expanded(나머지 영역 안에서 위젯을 그리고 싶을 때)
      // Row(
      //   children: [
      //     Container(
      //       color: Colors.yellow,
      //       height: 40,
      //       width: 40,
      //     ),
      //     Container(
      //       color: Colors.green,
      //       height: 40,
      //       width: 40,
      //     ),
      //     Container(
      //       color: Colors.blue,
      //       height: 40,
      //       width: 40,
      //     ),
      //     Container(
      //       color: Colors.pink,
      //       child: const Text('어떤 값이 들어올지 몰라'),
      //     ),
      //     const Expanded(
      //       child: Text('fdafdsfsdadfdsfsdafadsfaddsfasdf'),
      //     ),
      //     Container(
      //       color: Colors.purple,
      //       height: 40,
      //       width: 40,
      //     ),
      //   ],
      // ),
    );
  }
}
