// ch03_01_use_image_picker
// 갤러리에서 사진 불러오기

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  File? _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                final _picker = ImagePicker();
                // Pick an image
                final image =
                    await _picker.pickImage(source: ImageSource.gallery);
                if (image != null) {
                  setState(() {
                    _image = File(image.path);
                  });
                }
                print('image $image');
              },
              child: const Text('gallery 사진 가져오기'),
            ),
            _image == null ? Text('empty image') : Image.file(_image!),
            ElevatedButton(
              onPressed: () async {
                final _picker = ImagePicker();
                // Pick an image
                final image =
                    await _picker.pickImage(source: ImageSource.camera);
                if (image != null) {
                  setState(() {
                    _image = File(image.path);
                  });
                }
                print('image $image');
              },
              child: const Text('camera 사진 촬영하기'),
            ),
          ],
        ),
      ),
    );
  }
}
