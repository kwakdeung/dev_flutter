import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String title;
  const AppButton(this.title, {super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.secondary,
        ),
        onPressed: () {},
        child: Text(title),
      ),
    );
  }
}
