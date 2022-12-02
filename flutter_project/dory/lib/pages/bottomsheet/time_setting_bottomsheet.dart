import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../components/dory_colors.dart';
import '../../components/dory_constants.dart';
import '../../components/dory_widgets.dart';

class TimeSettingBottomSheet extends StatelessWidget {
  final String initialTime;

  final Widget? bottomWidget;
  final String submitTitle;

  const TimeSettingBottomSheet({
    Key? key,
    required this.initialTime,
    this.bottomWidget,
    required this.submitTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final initialDateTime = DateFormat('HH:mm').parse(initialTime);
    DateTime setDateTime = initialDateTime;
    return BottomSheetBody(children: [
      SizedBox(
        height: 200,
        child: CupertinoDatePicker(
          onDateTimeChanged: (dateTime) {
            setDateTime = dateTime;
          },
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
                    foregroundColor: DoryColors.primaryColor),
                onPressed: () => Navigator.pop(context),
                child: const Text('취소'),
              ),
            ),
          ),
          const SizedBox(width: smallSpace),
          Expanded(
            child: SizedBox(
              height: submitButtonHeight,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.subtitle1,
                ),
                onPressed: () => Navigator.pop(context, setDateTime),
                child: const Text('선택'),
              ),
            ),
          ),
        ],
      )
    ]);
  }
}
