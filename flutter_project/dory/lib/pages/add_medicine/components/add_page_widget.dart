import 'package:flutter/material.dart';

import '../../../components/dory_constants.dart';

class AddPageBody extends StatelessWidget {
  final List<Widget> children;

  const AddPageBody({
    super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Padding(
        padding: pagePadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children,
        ),
      ),
    );
  }
}

class BottomSubmitButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  const BottomSubmitButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: submitButtonBoxPadding,
        child: SizedBox(
          height: submitButtonHeight,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              textStyle: Theme.of(context).textTheme.subtitle1,
            ),
            // onPressed: _nameController.text.isEmpty ? null : _onAddAlarmPage,
            onPressed: onPressed,
            child: Text(text),
          ),
        ),
      ),
    );
  }
}
