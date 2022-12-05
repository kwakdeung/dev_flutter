import 'dart:io';

import 'package:flutter/material.dart';

class ImageDetailPage extends StatelessWidget {
  final String imagePath;

  const ImageDetailPage({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CloseButton(),
      ),
      body: Center(
        child: Image.file(
          File(imagePath),
        ),
      ),
    );
  }
}
