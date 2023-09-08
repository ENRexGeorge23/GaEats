import 'package:flutter/material.dart';

class SplashScreenLoaded extends StatefulWidget {
  const SplashScreenLoaded({Key? key}) : super(key: key);

  @override
  _SplashScreenLoadedState createState() => _SplashScreenLoadedState();
}

class _SplashScreenLoadedState extends State<SplashScreenLoaded>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    )..repeat(reverse: true);
    _opacityAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return AnimatedOpacity(
            opacity: _opacityAnimation.value,
            duration: const Duration(milliseconds: 500),
            child: Center(
              child: Image.asset(
                'assets/images/logo.png',
                width: 350,
                height: 350,
              ),
            ),
          );
        },
      ),
    );
  }
}
