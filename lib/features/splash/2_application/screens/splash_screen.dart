import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ga_eats_app/core/theme/theme_config.dart';
import 'package:ga_eats_app/features/splash/2_application/bloc/splash_bloc.dart';
import 'package:ga_eats_app/features/splash/2_application/screens/view_states/splash_screen_error.dart';
import 'package:ga_eats_app/features/splash/2_application/screens/view_states/splash_screen_loaded.dart';
import 'package:ga_eats_app/features/splash/2_application/screens/view_states/splash_screen_loading.dart';

class SplashScreenProvider extends StatelessWidget {
  static const routeName = '/splash';
  const SplashScreenProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashBloc(),
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
    context.read<SplashBloc>().add(SplashRequestedEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context)
          .copyWith(splashColor: AppTheme.lightTheme.splashColor)
          .splashColor,
      child: BlocBuilder<SplashBloc, SplashState>(
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
