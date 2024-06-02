import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ga_eats_app/core/theme/theme_config.dart';
import 'package:ga_eats_app/features/auth/login/bloc/login_bloc.dart';
import 'package:ga_eats_app/features/auth/login/view_states/login_screen_error.dart';
import 'package:ga_eats_app/features/auth/login/view_states/login_screen_loaded.dart';

class LoginScreenProvider extends StatelessWidget {
  static const routeName = '/login';
  const LoginScreenProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
    context.read<LoginBloc>().add(LoginRequestedEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context)
          .copyWith(
              scaffoldBackgroundColor:
                  AppTheme.lightTheme.scaffoldBackgroundColor)
          .scaffoldBackgroundColor,
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          if (state is LoginLoadingState) {
            return const CircularProgressIndicator.adaptive();
          } else if (state is LoginLoadedState) {
            return const LoginScreenLoaded();
          } else {
            return const LoginScreenError();
          }
        },
      ),
    );
  }
}
