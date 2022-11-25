import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:help_dory/components/dory_colors.dart';
import 'package:help_dory/components/dory_contants.dart';
import 'package:help_dory/components/dory_widgets.dart';
import 'package:intl/intl.dart';
import 'components/add_page_widget.dart';

class AddAlarmPage extends StatefulWidget {
  final File? medicineImage;
  final String medicineName;

  const AddAlarmPage(
      {super.key, required this.medicineImage, required this.medicineName});

  @override
  State<AddAlarmPage> createState() => _AddAlarmPageState();
}

class _AddAlarmPageState extends State<AddAlarmPage> {
  final _alarms = <String>{
    '08:00',
    '13:00',
    '19:00',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: AddPageBody(
        children: [
          Text(
            '매일 복약 잊지 말아요!',
            style: Theme.of(context).textTheme.headline4,
          ),
          const SizedBox(
            height: largeSpace,
          ),
          Expanded(
            child: ListView(
              children: alarmWidgets,
              // children: const [
              //   AlarmBox(),
              //   AlarmBox(),
              //   AlarmBox(),
              //   AddAlarmButton(),
              // ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomSubmitButton(
        onPressed: () {},
        text: '완료',
      ),
    );
  }

  List<Widget> get alarmWidgets {
    final children = <Widget>[];
    children.addAll(
      _alarms.map(
        (alarmTime) => AlarmBox(
          time: alarmTime,
          onPressedMinus: () {
            setState(() {
              _alarms.remove(alarmTime);
            });
          },
        ),
      ),
    );
    children.add(AddAlarmButton(
      onPressed: () {
        final now = DateTime.now();
        final nowTime = DateFormat('HH:mm').format(now);
        setState(() {
          _alarms.add(nowTime);
        });
      },
    ));
    return children;
  }
}

class AlarmBox extends StatelessWidget {
  final String time;
  final VoidCallback onPressedMinus;

  const AlarmBox({
    Key? key,
    required this.time,
    required this.onPressedMinus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final initTime = DateFormat('HH:mm').parse(time);

    return Row(
      children: [
        Expanded(
          flex: 1,
          child: IconButton(
            onPressed: onPressedMinus,
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
                  return TimePickerBottomSheet(
                    initialDateTime: initTime,
                  );
                },
              );
            },
            child: Text(time),
          ),
        ),
      ],
    );
  }
}

class TimePickerBottomSheet extends StatelessWidget {
  final DateTime initialDateTime;

  const TimePickerBottomSheet({
    Key? key,
    required this.initialDateTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomSheetBody(
      children: [
        SizedBox(
          height: 200,
          child: CupertinoDatePicker(
            onDateTimeChanged: (dateTime) {},
            mode: CupertinoDatePickerMode.time,
            initialDateTime: initialDateTime,
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
                        textStyle: Theme.of(context).textTheme.subtitle1,
                        backgroundColor: Colors.white,
                        foregroundColor: DoryColors.primaryColor,
                      ),
                      onPressed: () {},
                      child: Text('취소'))),
            ),
            const SizedBox(
              width: smallSpace,
            ),
            Expanded(
              child: SizedBox(
                  height: submitButtonHeight,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        textStyle: Theme.of(context).textTheme.subtitle1,
                      ),
                      onPressed: () {},
                      child: Text('선택'))),
            ),
          ],
        )
      ],
    );
  }
}

class AddAlarmButton extends StatelessWidget {
  final VoidCallback onPressed;

  const AddAlarmButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 6),
        textStyle: Theme.of(context).textTheme.subtitle1,
      ),
      onPressed: onPressed,
      child: Row(
        children: const [
          Expanded(
            flex: 1,
            child: Icon(CupertinoIcons.plus_circle_fill),
          ),
          Expanded(
            flex: 5,
            child: Center(child: Text('복용시간 추가')),
          ),
        ],
      ),
    );
  }
}
