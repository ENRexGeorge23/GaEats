import 'package:flutter/material.dart';

class SplashScreenLoading extends StatelessWidget {
  const SplashScreenLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }
}
