import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '현재 위치 미세먼지',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 16,
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Container(
                    color: Colors.yellow,
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const <Widget>[
                        Text('얼굴사진'),
                        Text(
                          '80',
                          style: TextStyle(fontSize: 40),
                        ),
                        Text(
                          '보통',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Row(
                          children: const [
                            Text('이미지'),
                            SizedBox(
                              width: 16,
                            ),
                            Text(
                              '11°',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        const Text('습도 100%'),
                        const Text('풍속 5.7m/s'),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  backgroundColor: Colors.orange,
                ),
                onPressed: () {},
                child: const Icon(
                  Icons.refresh,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
