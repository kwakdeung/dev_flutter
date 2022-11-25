import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:help_dory/components/dory_page_route.dart';
import 'package:help_dory/pages/add_medicine/add_alarm_page.dart';
import 'package:image_picker/image_picker.dart';

import '../../components/dory_contants.dart';
import 'components/add_page_widget.dart';

class AddMedicinePage extends StatefulWidget {
  const AddMedicinePage({super.key});

  @override
  State<AddMedicinePage> createState() => _AddMedicinePageState();
}

class _AddMedicinePageState extends State<AddMedicinePage> {
  final TextEditingController _nameController = TextEditingController();
  File? _medicineImage;

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
      body: SingleChildScrollView(
        child: AddPageBody(
          children: [
            Text(
              '어떤 약이에요?',
              style: Theme.of(context).textTheme.headline4,
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: largeSpace, bottom: largeSpace + regularSpace),
              child: Center(
                child: MedicineImageButton(
                  changeImageFile: (File? value) {
                    _medicineImage = value;
                  },
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
              onChanged: (_) {
                setState(() {});
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomSubmitButton(
        onPressed: _nameController.text.isEmpty ? null : _onAddAlarmPage,
        text: '다음',
      ),
    );
  }

  void _onAddAlarmPage() {
    Navigator.push(
      context,
      FadePageRoute(
        page: AddAlarmPage(
          medicineImage: _medicineImage,
          medicineName: _nameController.text,
        ),
      ),
    );
  }
}

class MedicineImageButton extends StatefulWidget {
  final ValueChanged<File?> changeImageFile;

  const MedicineImageButton({
    super.key,
    required this.changeImageFile,
  });

  @override
  State<MedicineImageButton> createState() => _MedicineImageButtonState();
}

class _MedicineImageButtonState extends State<MedicineImageButton> {
  File? _pickImage;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      child: CupertinoButton(
        padding: _pickImage == null ? null : EdgeInsets.zero,
        onPressed: _showBottomSheet,
        child: _pickImage == null
            ? const Icon(CupertinoIcons.photo_camera_solid,
                size: 30, color: Colors.white)
            : CircleAvatar(
                foregroundImage: FileImage(_pickImage!),
                radius: 40,
              ),
      ),
    );
  }

  void _showBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return PickImageBottomSheet(
            onPressedCamera: () {
              _onPressed(ImageSource.camera);
            },
            onPressedGallery: () {
              _onPressed(ImageSource.gallery);
            },
          );
        });
  }

  void _onPressed(ImageSource source) {
    ImagePicker().pickImage(source: source).then((xfile) {
      if (xfile != null) {
        setState(() {
          _pickImage = File(xfile.path);
          widget.changeImageFile(_pickImage);
        });
      }
      Navigator.maybePop(context);
    });
  }
}

class PickImageBottomSheet extends StatelessWidget {
  final VoidCallback onPressedCamera;
  final VoidCallback onPressedGallery;

  const PickImageBottomSheet({
    super.key,
    required this.onPressedCamera,
    required this.onPressedGallery,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: pagePadding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: onPressedCamera,
              child: const Text('카메라로 촬영'),
            ),
            TextButton(
              onPressed: onPressedGallery,
              child: const Text('앨범에서 가져오기'),
            ),
          ],
        ),
      ),
    );
  }
}
