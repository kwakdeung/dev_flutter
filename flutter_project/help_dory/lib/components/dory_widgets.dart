import 'package:flutter/material.dart';

import 'dory_contants.dart';

class BottomSheetBody extends StatelessWidget {
  final List<Widget> children;

  const BottomSheetBody({
    super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: pagePadding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: children,
        ),
      ),
    );
  }
}
