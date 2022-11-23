// ch01_10_stateful_widget
// 정적인 화면 말고 동적인 화면 그리기

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App Bar'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                count++;
              });
              print(count);
            },
            child: const Text('Plus'),
          ),
          Center(
            child: Text('$count'),
          ),
          Junyeong(),
        ],
      ),
    );
  }
}

class Junyeong extends StatefulWidget {
  const Junyeong({super.key});

  @override
  State<Junyeong> createState() => _JunyeongState();
}

class _JunyeongState extends State<Junyeong> {
  @override
  Widget build(BuildContext context) {
    return Text('dd');
  }
}
