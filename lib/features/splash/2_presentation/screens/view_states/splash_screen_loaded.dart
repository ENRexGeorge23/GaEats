import 'package:flutter/material.dart';
import 'package:ga_eats_app/core/resources/images.dart';
import 'package:go_router/go_router.dart';

class SplashScreenLoaded extends StatefulWidget {
  const SplashScreenLoaded({Key? key}) : super(key: key);

  @override
  SplashScreenLoadedState createState() => SplashScreenLoadedState();
}

class SplashScreenLoadedState extends State<SplashScreenLoaded>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true);
    _opacityAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    setState(() {
      // Wait for a short delay (e.g., 500 milliseconds) before navigating
      Future.delayed(const Duration(milliseconds: 3000), () {
        GoRouter.of(context).go('/login');
      });
    });
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
                Images.splashLogo,
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
