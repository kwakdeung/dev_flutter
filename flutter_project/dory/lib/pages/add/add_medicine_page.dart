import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../components/dory_constants.dart';

class AddMedicinePage extends StatefulWidget {
  const AddMedicinePage({super.key});

  @override
  State<AddMedicinePage> createState() => _AddMedicinePageState();
}

class _AddMedicinePageState extends State<AddMedicinePage> {
  final _nameController = TextEditingController();
  File? _pickedImage;

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CloseButton(),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Padding(
          padding: pagePadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '어떤 약이에요?',
                style: Theme.of(context).textTheme.headline4,
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: largeSpace, bottom: largeSpace + regularSpace),
                child: Center(
                  child: CircleAvatar(
                    radius: 40,
                    child: CupertinoButton(
                      padding: _pickedImage == null ? null : EdgeInsets.zero,
                      onPressed: () {
                        ImagePicker()
                            .pickImage(source: ImageSource.gallery)
                            .then((xfile) {
                          if (xfile == null) return;
                          setState(() {
                            _pickedImage = File(xfile.path);
                          });
                        });
                      },
                      child: _pickedImage == null
                          ? const Icon(
                              CupertinoIcons.photo_camera_solid,
                              size: 30,
                              color: Colors.white,
                            )
                          : CircleAvatar(
                              foregroundImage: FileImage(_pickedImage!),
                              radius: 40,
                            ),
                    ),
                  ),
                ),
              ),
              Text(
                '약 이름',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              TextFormField(
                controller: _nameController,
                maxLength: 20,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                style: Theme.of(context).textTheme.bodyText1,
                decoration: InputDecoration(
                  hintText: '복용할 약 이름을 기입해주세요.',
                  hintStyle: Theme.of(context).textTheme.bodyText2,
                  contentPadding: textFieldContentPadding,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: submitButtonBoxPadding,
          child: SizedBox(
            height: submitButtonHeight,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: Theme.of(context).textTheme.subtitle1,
              ),
              onPressed: () {},
              child: Text(
                '다음',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
