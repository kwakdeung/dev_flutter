// ch01_14_assetimage_networkimage
// 이미지 출력 위젯 작성

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
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/image.jpeg',
              width: 300,
              height: 300,
              fit: BoxFit.none,
            ),
          ],
        ),
      ),
    );
    // 1. asset(로컬 이미지 표시)
    // - pub.yaml 파일 입력
    // - 단일 파일 인식, 폴더 인식하는 것 차이 설명
    // Image.asset('assets/images/image.jpeg'),
    // Image.asset('assets/images/image3.jpeg'),
    // Image.asset('assets/images/image2.gif'),
    //
    // 2. network(네트워크 이미지 표시)
    // - 플러터가 이미지 파일을 다운로드해서 캐시에 저장하고 화면에 띄움
    // asset 이미지보다 로딩이 느림
    // 인터넷 연결 필요
    // Image.network(
    //             'https://thumbs.gfycat.com/ArcticSameGoldenmantledgroundsquirrel-size_restricted.gif'),
    // Image.network(
    //             'https://storage.googleapis.com/jjalbot/2021/12/h-ckJpdv5/h-ckJpdv5.jpeg'),
    //
    // 3. file(파일 이미지 표시)
    // - 외부 폴더나 갤러리에 있는 이미지를 가져올 땐 File type
    // Image.file(file),
    // # 공통된 속성
    // - width, height
    // - BoxFit
  }
}
