import 'dart:io';

import 'package:dory/components/dory_colors.dart';
import 'package:dory/components/dory_constants.dart';
import 'package:dory/components/dory_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/add_page_widget.dart';

class AddAlarmPage extends StatelessWidget {
  final File? medicineImage;
  final String medicineName;

  const AddAlarmPage({
    super.key,
    required this.medicineImage,
    required this.medicineName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: AddPageBody(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: largeSpace),
            child: Text(
              '매일 복약 잊지 말아요!',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          Expanded(
            child: ListView(
              children: const [
                AlarmBox(),
                AlarmBox(),
                AlarmBox(),
                AlarmBox(),
                AddAlarmButton(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomSubmitButton(
        onPressed: () {},
        text: "완료",
      ),
    );
  }
}

class AlarmBox extends StatelessWidget {
  const AlarmBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.minus_circle),
          ),
        ),
        Expanded(
          flex: 5,
          child: TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.subtitle2,
            ),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return BottomSheetBody(children: [
                    SizedBox(
                      height: 200,
                      child: CupertinoDatePicker(
                        onDateTimeChanged: (dateTime) {},
                        mode: CupertinoDatePickerMode.time,
                      ),
                    ),
                    const SizedBox(
                      height: regularSpace,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: submitButtonHeight,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  textStyle:
                                      Theme.of(context).textTheme.subtitle1,
                                  backgroundColor: Colors.white,
                                  foregroundColor: DoryColors.primaryColor),
                              onPressed: () {},
                              child: Text('취소'),
                            ),
                          ),
                        ),
                        const SizedBox(width: smallSpace),
                        Expanded(
                          child: SizedBox(
                            height: submitButtonHeight,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                textStyle:
                                    Theme.of(context).textTheme.subtitle1,
                              ),
                              onPressed: () {},
                              child: Text('선택'),
                            ),
                          ),
                        ),
                      ],
                    )
                  ]);
                },
              );
            },
            child: const Text('20:00'),
          ),
        )
      ],
    );
  }
}

class AddAlarmButton extends StatelessWidget {
  const AddAlarmButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 6),
        textStyle: Theme.of(context).textTheme.subtitle1,
      ),
      onPressed: () {},
      child: Row(
        children: const [
          Expanded(
            flex: 1,
            child: Icon(CupertinoIcons.plus_circle_fill),
          ),
          Expanded(
            flex: 5,
            child: Center(child: Text('복용시간 추가')),
          )
        ],
      ),
    );
  }
}
