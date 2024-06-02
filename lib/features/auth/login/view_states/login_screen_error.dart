import 'package:flutter/material.dart';

class LoginScreenError extends StatelessWidget {
  const LoginScreenError({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Card(
        child: Text('Error, please try again'),
      ),
    );
  }
}
