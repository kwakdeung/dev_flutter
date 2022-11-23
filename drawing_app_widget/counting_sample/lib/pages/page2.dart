import 'package:flutter/material.dart';

import 'page3.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('page2'),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            print('close button click');
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => const Page3()),
              ),
            );
          },
          child: const Text(
            'next page2',
          ),
        ),
      ),
    );
  }
}
