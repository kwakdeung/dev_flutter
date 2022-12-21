import 'package:flutter/material.dart';
import '../widgets/app_text_field.dart';
import '../widgets/app_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const AppTextField(
            title: 'Enter your name',
            inputType: TextInputType.text,
            icon: Icon(Icons.person_pin),
          ),
          const AppTextField(
            title: 'Enter your email',
            inputType: TextInputType.emailAddress,
            icon: Icon(Icons.email),
          ),
          const AppTextField(
            title: 'Enter your phone number',
            inputType: TextInputType.phone,
            icon: Icon(Icons.phone_android),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              AppButton('Save'),
              AppButton('Clear'),
            ],
          )
        ],
      ),
    );
  }
}
