import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oslob_app/2_application/core/theme.dart';
import 'package:oslob_app/2_application/screens/splash/bloc/splash_bloc.dart';
import 'package:oslob_app/2_application/screens/splash/view_states/splash_screen_error.dart';
import 'package:oslob_app/2_application/screens/splash/view_states/splash_screen_loaded.dart';
import 'package:oslob_app/2_application/screens/splash/view_states/splash_screen_loading.dart';

class SplashScreenProvider extends StatelessWidget {
  const SplashScreenProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashScreenBloc(),
      child: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    context.read<SplashScreenBloc>().add(SplashRequestedEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: BlocBuilder<SplashScreenBloc, SplashState>(
        builder: (context, state) {
          if (state is SplashLoadingState) {
            return const SplashScreenLoading();
          } else if (state is SplashLoadedState) {
            return const SplashScreenLoaded();
          } else {
            return const SplashScreenError();
          }
        },
      ),
    );
  }
}
