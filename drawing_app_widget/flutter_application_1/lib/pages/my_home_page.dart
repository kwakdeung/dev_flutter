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
      // 4. Stack
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            color: Colors.red,
            alignment: Alignment.center,
            width: 100,
            height: 200,
            child: const Text(
              '1',
            ),
          ),
          Container(
            color: Colors.green,
            alignment: Alignment.center,
            width: 100,
            height: 100,
            child: const Text(
              '3',
            ),
          ),
          Container(
            color: Colors.yellow,
            alignment: Alignment.center,
            width: 100,
            height: 50,
            child: const Text(
              '2',
            ),
          ),
        ],
      ),
      // 1. Column
      // Column(
      //   children: [
      //     Container(
      //       color: Colors.yellow,
      //       height: 300,
      //       child: const Text(
      //         'Flutter My Home page',
      //       ),
      //     ),
      //     Container(
      //       color: Colors.green,
      //       height: 300,
      //       child: const Text(
      //         'Flutter My Home page',
      //       ),
      //     ),
      //   ],
      // ),
      // 2. Row
      // Row(
      //   children: [
      //     Container(
      //       color: Colors.red,
      //       height: 100,
      //       child: const Text(
      //         'Flutter My Home page',
      //       ),
      //     ),
      //     Container(
      //       color: Colors.yellow,
      //       height: 40,
      //       child: const Text(
      //         'Flutter My Home page',
      //       ),
      //     ),
      //     Container(
      //       color: Colors.green,
      //       height: 100,
      //       child: const Text(
      //         'Flutter My Home page',
      //       ),
      //     ),
      //   ],
      // ),
      // 3. Wrap
      // Wrap(
      //   direction: Axis.vertical,
      //   children: [
      //     Container(
      //       color: Colors.red,
      //       width: 100,
      //       height: 300,
      //       child: const Text(
      //         '1',
      //       ),
      //     ),
      //     Container(
      //       color: Colors.yellow,
      //       width: 100,
      //       height: 300,
      //       child: const Text(
      //         '2',
      //       ),
      //     ),
      //     Container(
      //       color: Colors.green,
      //       width: 100,
      //       height: 300,
      //       child: const Text(
      //         '3',
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
