import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'بازیابی پسورد',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
