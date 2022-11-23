// ch01_09_elevatedbutton_outlinedbutton_textbutton_gesturedetector
// 자주 사용되는 버튼 작성

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
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              print("ElevatedButton");
            },
            onLongPress: () {
              print("ElevatedButton onLongPress");
            },
            child: const Text('ElevatedButton'),
          ),
          GestureDetector(
            onTap: () {
              print("GestureDetector");
            },
            onTapDown: (detail) {
              print(
                  "GestureDetector ${detail.kind} | ${detail.globalPosition}");
            },
            child: Container(
              color: Colors.yellow,
              height: 100,
            ),
          ),
          // 1. ElevatedButton, OutlinedButton, TextButton
          // (1) 생성자 형태(속성값)가 동일합니다.
          // (2) styleFrom
          // (3) disable
          // Column(
          //         children: [
          //           ElevatedButton(
          //             onPressed: () {
          //               print("ElevatedButton");
          //             },
          //             onLongPress: () {
          //               print("ElevatedButton onLongPress");
          //             },
          //             child: const Text('ElevatedButton'),
          //           ),
          //           Row(
          //             children: [
          //               ElevatedButton(
          //                 onPressed: () {
          //                   print("ElevatedButton2");
          //                 },
          //                 style: ElevatedButton.styleFrom(
          //                   backgroundColor: Colors.blue,
          //                   foregroundColor: Colors.white,
          //                 ),
          //                 child: const Text('ElevatedButton2 blue'),
          //               ),
          //               ElevatedButton(
          //                 onPressed: null,
          //                 style: ElevatedButton.styleFrom(
          //                   backgroundColor: Colors.blue,
          //                   foregroundColor: Colors.white,
          //                   disabledForegroundColor: Colors.blue.withOpacity(0.38),
          //                   disabledBackgroundColor: Colors.blue.withOpacity(0.12),
          //                 ),
          //                 child: const Text('ElevatedButton2 blue'),
          //               ),
          //             ],
          //           ),
          //           Row(
          //             children: [
          //               OutlinedButton(
          //                 onPressed: () {
          //                   print("OutlinedButton");
          //                 },
          //                 style: OutlinedButton.styleFrom(
          //                   backgroundColor: Colors.white,
          //                   foregroundColor: Colors.blue,
          //                   side: const BorderSide(color: Colors.blue),
          //                 ),
          //                 child: const Text('OutlinedButton'),
          //               ),
          //               OutlinedButton(
          //                 onPressed: null,
          //                 style: OutlinedButton.styleFrom(
          //                   backgroundColor: Colors.white,
          //                   foregroundColor: Colors.blue,
          //                   disabledForegroundColor: Colors.blue.withOpacity(0.38),
          //                 ),
          //                 child: const Text('OutlinedButton'),
          //               ),
          //             ],
          //           ),
          //           Row(
          //             children: [
          //               TextButton(
          //                 onPressed: () {
          //                   print("TextButton");
          //                 },
          //                 style: TextButton.styleFrom(
          //                   backgroundColor: Colors.white,
          //                   foregroundColor: Colors.blue,
          //                 ),
          //                 child: const Text('TextButton'),
          //               ),
          //               TextButton(
          //                 onPressed: null,
          //                 style: TextButton.styleFrom(
          //                   backgroundColor: Colors.white,
          //                   foregroundColor: Colors.blue,
          //                   disabledForegroundColor: Colors.blue.withOpacity(0.38),
          //                 ),
          //                 child: const Text('TextButton'),
          //               ),
          //             ],
          //           ),

          // 2. GestureDetector
          // Column(
          //   children: [
          //     ElevatedButton(
          //       onPressed: () {
          //         print("ElevatedButton");
          //       },
          //       onLongPress: () {
          //         print("ElevatedButton onLongPress");
          //       },
          //       child: const Text('ElevatedButton'),
          //     ),
          //     GestureDetector(
          //       onTap: () {
          //         print("GestureDetector");
          //       },
          //       onTapDown: (detail) {
          //         print(
          //             "GestureDetector ${detail.kind} | ${detail.globalPosition}");
          //       },
          //       child: Container(
          //         color: Colors.yellow,
          //         height: 100,
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
